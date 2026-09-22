import type { SupabaseClient } from "@supabase/supabase-js";
import { getServiceSupabase } from "@/lib/server-supabase";
import { AiProviderError, type AiFailureKind } from "@/lib/ai";

function readEnv(name: string) {
  return import.meta.env[name] ?? process.env[name];
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Provider configuration
/* ────────────────────────────────────────────────────────────────────────── */

const GEMINI_MODEL = "gemini-1.5-flash-latest";
const GROQ_MODEL = "llama-3.3-70b-versatile";
const CEREBRAS_MODEL = "qwen-3.8-27b";

const PROVIDER_ORDER: string[] = ["gemini", "groq", "cerebras", "openrouter"];

function getProviderConfig(name: string) {
  switch (name) {
    case "gemini":
      return {
        name: "gemini",
        apiKey: readEnv("GEMINI_API_KEY"),
        dailyCap: Number(readEnv("GEMINI_DAILY_CAP") ?? 1500),
        baseUrl: "https://generativelanguage.googleapis.com/v1beta",
        model: GEMINI_MODEL,
      };
    case "groq":
      return {
        name: "groq",
        apiKey: readEnv("GROQ_API_KEY"),
        dailyCap: Number(readEnv("GROQ_DAILY_CAP") ?? 1000),
        baseUrl: "https://api.groq.com/openai/v1",
        model: GROQ_MODEL,
      };
    case "cerebras":
      return {
        name: "cerebras",
        apiKey: readEnv("CEREBRAS_API_KEY"),
        dailyCap: Number(readEnv("CEREBRAS_DAILY_CAP") ?? 5000),
        baseUrl: "https://api.cerebras.ai/v1",
        model: CEREBRAS_MODEL,
      };
    case "openrouter": {
      const openRouterKey = readEnv("OPENROUTER_API_KEY") ?? readEnv("AI_API_KEY");
      return {
        name: "openrouter",
        apiKey: openRouterKey,
        dailyCap: Number(readEnv("OPENROUTER_DAILY_CAP") ?? 200),
        baseUrl: readEnv("AI_BASE_URL") ?? "https://openrouter.ai/api/v1",
        model: readEnv("AI_MODEL") ?? "openrouter/free",
      };
    }
    default:
      return null;
  }
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Quota tracking (persistent, server-side only)
/* ────────────────────────────────────────────────────────────────────────── */

async function getUsage(supabase: SupabaseClient, provider: string): Promise<number> {
  try {
    const { data, error } = await supabase.rpc("get_ai_usage", { provider_name: provider });
    if (error) {
      console.warn(`[AI Quota] Failed to read usage for ${provider}:`, error.message);
      return 0;
    }
    return Number(data ?? 0);
  } catch {
    return 0;
  }
}

async function incrementUsage(supabase: SupabaseClient, provider: string): Promise<void> {
  try {
    await supabase.rpc("increment_ai_usage", { provider_name: provider });
  } catch (error) {
    console.warn(`[AI Quota] Failed to increment usage for ${provider}:`, error);
  }
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Response normalisation helpers
/* ────────────────────────────────────────────────────────────────────────── */

function extractOpenAiContent(payload: unknown): string | null {
  if (!payload || typeof payload !== "object") return null;
  const p = payload as Record<string, unknown>;
  const choices = p.choices;
  if (!Array.isArray(choices) || choices.length === 0) return null;
  const first = choices[0] as Record<string, unknown>;
  const message = first?.message as Record<string, unknown> | undefined;
  const text = typeof message?.content === "string" ? message.content : null;
  return text;
}

function extractGeminiContent(payload: unknown): string | null {
  if (!payload || typeof payload !== "object") return null;
  const p = payload as Record<string, unknown>;
  const candidates = p.candidates;
  if (!Array.isArray(candidates) || candidates.length === 0) return null;
  const first = candidates[0] as Record<string, unknown>;
  const content = first?.content as Record<string, unknown> | undefined;
  const parts = content?.parts;
  if (!Array.isArray(parts) || parts.length === 0) return null;
  const firstPart = parts[0] as Record<string, unknown>;
  const text = typeof firstPart?.text === "string" ? firstPart.text : null;
  return text;
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Error classification: is this a quota / rate-limit error?
/* ────────────────────────────────────────────────────────────────────────── */

function isQuotaError(status: number, payload: unknown): boolean {
  if (status === 429) return true;

  // Google Gemini returns 429 with status RESOURCE_EXHAUSTED
  if (status === 429 || status === 403) {
    const p = payload as Record<string, unknown> | null;
    const error = p?.error as Record<string, unknown> | undefined;
    const statusText = typeof error?.status === "string" ? error.status : "";
    const message = typeof error?.message === "string" ? error.message : "";
    if (
      statusText === "RESOURCE_EXHAUSTED" ||
      /quota|rate.limit|exhausted|too.many.requests/i.test(message)
    ) {
      return true;
    }
  }

  return false;
}

function isRetryableError(status: number): boolean {
  return status === 429 || status >= 500 || status === 0;
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Provider callers
/* ────────────────────────────────────────────────────────────────────────── */

interface AiCallInput {
  system: string;
  prompt: string;
  maxTokens?: number;
}

interface AiCallResult {
  content: string;
  provider: string;
}

async function callGemini(
  config: NonNullable<ReturnType<typeof getProviderConfig>>,
  input: AiCallInput,
): Promise<AiCallResult> {
  const apiKey = config.apiKey;
  if (!apiKey) {
    throw new AiProviderError("missing_config", "Gemini API key is missing.", { retryable: false });
  }

  const controller = new AbortController();
  const timeoutMs = Number(readEnv("AI_TIMEOUT_MS") ?? 25000);
  const timeout = setTimeout(() => controller.abort(), timeoutMs);

  try {
    const response = await fetch(
      `${config.baseUrl}/models/${config.model}:generateContent?key=${apiKey}`,
      {
        method: "POST",
        signal: controller.signal,
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          contents: [
            {
              role: "user",
              parts: [{ text: `${input.system}\n\n${input.prompt}` }],
            },
          ],
          generationConfig: {
            maxOutputTokens: input.maxTokens ?? 700,
            temperature: 0.25,
          },
        }),
      },
    );

    const payload = (await response.json().catch(() => null)) as unknown;

    if (!response.ok) {
      const p = payload as Record<string, unknown> | null;
      const error = p?.error as Record<string, unknown> | undefined;
      const message =
        typeof error?.message === "string"
          ? error.message
          : `Gemini returned HTTP ${response.status}.`;
      throw new AiProviderError(
        isQuotaError(response.status, payload) ? "provider_http" : "provider_http",
        message,
        {
          status: response.status,
          retryable: isRetryableError(response.status),
        },
      );
    }

    const content = extractGeminiContent(payload);
    if (!content) {
      throw new AiProviderError("empty_response", "Gemini returned an empty response.", {
        retryable: true,
      });
    }
    return { content, provider: "gemini" };
  } catch (error) {
    if (error instanceof AiProviderError) throw error;
    if (error instanceof Error && error.name === "AbortError") {
      throw new AiProviderError("timeout", "Gemini request timed out.", { retryable: true });
    }
    throw new AiProviderError(
      "network",
      error instanceof Error ? error.message : "Gemini request failed.",
      { retryable: true },
    );
  } finally {
    clearTimeout(timeout);
  }
}

async function callOpenAiCompatible(
  config: NonNullable<ReturnType<typeof getProviderConfig>>,
  input: AiCallInput,
): Promise<AiCallResult> {
  const apiKey = config.apiKey;
  if (!apiKey) {
    throw new AiProviderError("missing_config", `${config.name} API key is missing.`, {
      retryable: false,
    });
  }

  const controller = new AbortController();
  const timeoutMs = Number(readEnv("AI_TIMEOUT_MS") ?? 25000);
  const timeout = setTimeout(() => controller.abort(), timeoutMs);

  try {
    const response = await fetch(`${config.baseUrl.replace(/\/$/, "")}/chat/completions`, {
      method: "POST",
      signal: controller.signal,
      headers: {
        Authorization: `Bearer ${apiKey}`,
        "Content-Type": "application/json",
        ...(config.name === "groq"
          ? {}
          : { "HTTP-Referer": readEnv("APP_PUBLIC_URL") ?? "http://127.0.0.1:8082" }),
        ...(config.name === "openrouter" ? { "X-Title": "StudySpark" } : {}),
      },
      body: JSON.stringify({
        model: config.model,
        messages: [
          { role: "system", content: input.system },
          { role: "user", content: input.prompt },
        ],
        temperature: 0.25,
        max_tokens: input.maxTokens ?? 700,
      }),
    });

    const payload = (await response.json().catch(() => null)) as unknown;

    if (!response.ok) {
      const p = payload as Record<string, unknown> | null;
      const error = p?.error as Record<string, unknown> | undefined;
      const message =
        typeof error?.message === "string"
          ? error.message
          : `${config.name} returned HTTP ${response.status}.`;
      throw new AiProviderError("provider_http", message, {
        status: response.status,
        retryable: isRetryableError(response.status),
      });
    }

    const content = extractOpenAiContent(payload);
    if (!content) {
      throw new AiProviderError("empty_response", `${config.name} returned an empty response.`, {
        retryable: true,
      });
    }
    return { content, provider: config.name };
  } catch (error) {
    if (error instanceof AiProviderError) throw error;
    if (error instanceof Error && error.name === "AbortError") {
      throw new AiProviderError("timeout", `${config.name} request timed out.`, {
        retryable: true,
      });
    }
    throw new AiProviderError(
      "network",
      error instanceof Error ? error.message : `${config.name} request failed.`,
      { retryable: true },
    );
  } finally {
    clearTimeout(timeout);
  }
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Single-provider call with optional retry
/* ────────────────────────────────────────────────────────────────────────── */

async function tryProvider(providerName: string, input: AiCallInput): Promise<AiCallResult> {
  const config = getProviderConfig(providerName);
  if (!config) {
    throw new AiProviderError("invalid_config", `Unknown provider: ${providerName}.`, {
      retryable: false,
    });
  }

  const isGemini = providerName === "gemini";
  const caller = isGemini ? callGemini : callOpenAiCompatible;

  // Try once, then retry once on retryable errors (rate-limit / transient)
  for (let attempt = 1; attempt <= 2; attempt++) {
    try {
      return await caller(config, input);
    } catch (error) {
      const isRetryable =
        error instanceof AiProviderError && (error.retryable || error.status === 429);
      if (attempt === 1 && isRetryable) {
        // Exponential backoff: 1.5s then 3s
        await new Promise((resolve) => setTimeout(resolve, 1500 * attempt));
        continue;
      }
      throw error;
    }
  }

  // Unreachable — loop always returns or throws
  throw new AiProviderError("provider_http", `${providerName} failed after retry.`);
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Public API: askAI with provider fallback
/* ────────────────────────────────────────────────────────────────────────── */

export async function askAI(input: {
  system: string;
  prompt: string;
  maxTokens?: number;
}): Promise<{ content: string; provider: string }> {
  const supabase = getServiceSupabase();

  for (const providerName of PROVIDER_ORDER) {
    const config = getProviderConfig(providerName);
    if (!config || !config.apiKey) {
      console.log(`[AI] Skipping ${providerName}: not configured.`);
      continue;
    }

    // Pre-flight quota check
    const usage = await getUsage(supabase, providerName);
    if (usage >= config.dailyCap) {
      console.log(
        `[AI] Skipping ${providerName}: daily cap reached (${usage}/${config.dailyCap}).`,
      );
      continue;
    }

    try {
      const result = await tryProvider(providerName, input);
      await incrementUsage(supabase, providerName);
      console.log(
        `[AI] Request served by ${providerName}. Usage: ${usage + 1}/${config.dailyCap}.`,
      );
      return result;
    } catch (error) {
      const aiError =
        error instanceof AiProviderError
          ? error
          : new AiProviderError(
              "network",
              error instanceof Error ? error.message : "Unknown error",
            );

      // Only fall back on quota / rate-limit / transient errors.
      // Missing-config, invalid-key, bad-request => stop immediately.
      const shouldFallback =
        aiError.status === 429 ||
        aiError.kind === "timeout" ||
        aiError.kind === "network" ||
        (aiError.kind === "provider_http" && aiError.retryable);

      if (!shouldFallback) {
        throw aiError;
      }

      console.warn(
        `[AI] ${providerName} failed (kind=${aiError.kind}, status=${aiError.status}, retryable=${aiError.retryable}). Falling back...`,
      );
      // Continue to next provider
    }
  }

  throw new AiProviderError(
    "quota_exhausted",
    "AI tutor is at capacity right now. Try again in a few minutes.",
    { retryable: true },
  );
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Config status (for health check & UI visibility)
/* ────────────────────────────────────────────────────────────────────────── */

export function getMultiAiConfigStatus() {
  const geminiKey = Boolean(readEnv("GEMINI_API_KEY"));
  const groqKey = Boolean(readEnv("GROQ_API_KEY"));
  const cerebrasKey = Boolean(readEnv("CEREBRAS_API_KEY"));
  const openRouterKey = Boolean(readEnv("OPENROUTER_API_KEY") || readEnv("AI_API_KEY"));

  return {
    configured: geminiKey || groqKey || cerebrasKey || openRouterKey,
    providers: {
      gemini: {
        configured: geminiKey,
        dailyCap: Number(readEnv("GEMINI_DAILY_CAP") ?? 1500),
        model: GEMINI_MODEL,
      },
      groq: {
        configured: groqKey,
        dailyCap: Number(readEnv("GROQ_DAILY_CAP") ?? 1000),
        model: GROQ_MODEL,
      },
      cerebras: {
        configured: cerebrasKey,
        dailyCap: Number(readEnv("CEREBRAS_DAILY_CAP") ?? 5000),
        model: CEREBRAS_MODEL,
      },
      openrouter: {
        configured: openRouterKey,
        dailyCap: Number(readEnv("OPENROUTER_DAILY_CAP") ?? 200),
        model: readEnv("AI_MODEL") ?? "openrouter/free",
      },
    },
  };
}

export function multiAiConfigured() {
  return getMultiAiConfigStatus().configured;
}
