import type { SupabaseClient } from "@supabase/supabase-js";
import { getServiceSupabase } from "@/lib/server-supabase";
import { AiProviderError, type AiFailureKind } from "@/lib/ai";

function readEnv(name: string) {
  return import.meta.env[name] ?? process.env[name];
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Provider configuration
/* ────────────────────────────────────────────────────────────────────────── */

const GEMINI_MODEL = "gemini-3.6-flash";
const GROQ_MODEL = "openai/gpt-oss-120b";
const CEREBRAS_MODEL = "qwen-3.8-27b";

const PROVIDER_ORDER: string[] = ["gemini", "groq", "cerebras", "openrouter"];
const OPENROUTER_MODEL = "openrouter/free";

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
        model: readEnv("AI_MODEL") ?? OPENROUTER_MODEL,
      };
    }
    default:
      return null;
  }
}

/* ────────────────────────────────────────────────────────────────────────── */
//  Quota tracking (persistent, server-side only)
/* ────────────────────────────────────────────────────────────────────────── */

function getOptionalServiceSupabase(): SupabaseClient | null {
  try {
    return getServiceSupabase();
  } catch (error) {
    console.warn(
      "[AI Quota] Quota tracking disabled because the Supabase service client is unavailable:",
      error instanceof Error ? error.message : error,
    );
    return null;
  }
}

async function getUsage(supabase: SupabaseClient | null, provider: string): Promise<number> {
  if (!supabase) return 0;

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

async function incrementUsage(supabase: SupabaseClient | null, provider: string): Promise<void> {
  if (!supabase) return;

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
  const content = message?.content;

  if (typeof content === "string") return content.trim() || null;
  if (Array.isArray(content)) {
    const text = content
      .map((part) => {
        if (!part || typeof part !== "object") return "";
        const row = part as Record<string, unknown>;
        if (typeof row.text === "string") return row.text;
        if (typeof row.content === "string") return row.content;
        return "";
      })
      .join("")
      .trim();
    return text || null;
  }

  return null;
}

function isProviderNonAnswer(content: string): boolean {
  return /^User Safety:/i.test(content) || /^(safe|unsafe)$/i.test(content.trim());
}

function wantsJsonResponse(input: AiCallInput): boolean {
  return /\bjson\b/i.test(`${input.system}\n${input.prompt}`);
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
        ...(wantsJsonResponse(input) ? { response_format: { type: "json_object" } } : {}),
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
    if (isProviderNonAnswer(content)) {
      throw new AiProviderError(
        "empty_response",
        `${config.name} returned a moderation non-answer.`,
        {
          retryable: true,
        },
      );
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
  const supabase = getOptionalServiceSupabase();
  const errors: { provider: string; kind: string; status?: number; message: string }[] = [];

  console.log("[AI] askAI called. Checking providers in order:", PROVIDER_ORDER);

  for (const providerName of PROVIDER_ORDER) {
    const config = getProviderConfig(providerName);
    const hasKey = Boolean(config?.apiKey);
    console.log(`[AI] ${providerName}: keyPresent=${hasKey}`);

    if (!config || !config.apiKey) {
      errors.push({
        provider: providerName,
        kind: "missing_config",
        message: "API key not configured.",
      });
      continue;
    }

    // Pre-flight quota check
    let usage = 0;
    try {
      usage = await getUsage(supabase, providerName);
    } catch (e) {
      console.warn(`[AI] ${providerName}: failed to read usage from DB:`, e);
    }

    if (usage >= config.dailyCap) {
      console.log(
        `[AI] Skipping ${providerName}: daily cap reached (${usage}/${config.dailyCap}).`,
      );
      errors.push({
        provider: providerName,
        kind: "quota_exhausted",
        message: `Daily cap reached (${usage}/${config.dailyCap}).`,
      });
      continue;
    }

    try {
      console.log(`[AI] Trying ${providerName}...`);
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

      errors.push({
        provider: providerName,
        kind: aiError.kind,
        status: aiError.status,
        message: aiError.message,
      });

      console.warn(
        `[AI] ${providerName} FAILED — kind=${aiError.kind}, status=${aiError.status}, retryable=${aiError.retryable}, msg=${aiError.message}`,
      );

      // Fall back on: rate-limit (429), transient network errors, timeouts,
      // parse failures (bad JSON), and provider-specific 404s/400s.
      // Don't fall back on: auth failures (401/403) — those are config issues
      // that will fail on every provider.
      const isAuthError = aiError.status === 401 || aiError.status === 403;
      const shouldFallback =
        !isAuthError &&
        (aiError.status === 429 ||
          aiError.status === 404 ||
          aiError.status === 400 ||
          aiError.kind === "timeout" ||
          aiError.kind === "network" ||
          aiError.kind === "parse_failure" ||
          (aiError.kind === "provider_http" && aiError.retryable));

      if (!shouldFallback) {
        console.error(`[AI] ${providerName} failed with non-retryable error. Stopping chain.`);
        throw new AiProviderError(
          "provider_http",
          `AI failed after trying ${errors.length} provider(s). Last error from ${providerName}: ${aiError.message}. Errors: ${JSON.stringify(errors)}`,
          { status: aiError.status, retryable: false },
        );
      }

      // Continue to next provider
    }
  }

  console.error(`[AI] All providers exhausted. Error trail:`, JSON.stringify(errors));
  throw new AiProviderError(
    "quota_exhausted",
    `AI tutor is at capacity right now. Tried: ${errors.map((e) => `${e.provider}(${e.kind})`).join(", ")}. Try again in a few minutes.`,
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
        model: readEnv("AI_MODEL") ?? OPENROUTER_MODEL,
      },
    },
  };
}

export function multiAiConfigured() {
  return getMultiAiConfigStatus().configured;
}

export function getAiQuotaStatus() {
  const hasServiceRoleKey = Boolean(readEnv("SUPABASE_SERVICE_ROLE_KEY"));

  return {
    configured: hasServiceRoleKey,
    mode: hasServiceRoleKey ? "persistent" : "disabled",
    message: hasServiceRoleKey
      ? "AI provider quota tracking is enabled."
      : "AI provider quota tracking is disabled because SUPABASE_SERVICE_ROLE_KEY is not configured. AI calls still run.",
  };
}
