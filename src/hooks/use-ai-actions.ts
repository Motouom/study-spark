import { useCallback, useState } from "react";
import { supabase } from "@/lib/supabase";

type AiSource = "ai" | "fallback";

export type AiLearningPathDay = {
  day: number;
  title: string;
  paper: string;
  target: string;
  focus: string;
};

async function authHeaders() {
  const { data } = await supabase!.auth.getSession();
  return {
    "Content-Type": "application/json",
    Authorization: `Bearer ${data.session?.access_token ?? ""}`,
  };
}

async function postAi<T>(url: string, body?: Record<string, unknown>) {
  if (!supabase) throw new Error("Supabase is not configured.");
  const response = await fetch(url, {
    method: "POST",
    headers: await authHeaders(),
    body: JSON.stringify(body ?? {}),
  });
  const payload = await response.json().catch(() => ({}));
  if (!response.ok) throw new Error(payload.error ?? "AI request failed.");
  return payload as T;
}

function friendlyAiError(message: string) {
  if (/premium/i.test(message)) return message;
  if (/admin access/i.test(message)) return message;
  if (/rate limit|too many/i.test(message)) {
    return "StudySpark is receiving many AI requests right now. Please wait a moment and try again.";
  }
  return "StudySpark could not finish that AI action right now. Please try again in a moment.";
}

export function useAiActions() {
  const [loading, setLoading] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  const run = useCallback(async <T>(key: string, action: () => Promise<T>) => {
    setLoading(key);
    setError(null);
    try {
      return await action();
    } catch (err) {
      const message = err instanceof Error ? err.message : "AI request failed.";
      setError(friendlyAiError(message));
      throw err;
    } finally {
      setLoading(null);
    }
  }, []);

  const generateProgressInsight = useCallback(
    () =>
      run("progress", () =>
        postAi<{ insight: string; source: AiSource; message?: string }>("/api/ai/progress-insight"),
      ),
    [run],
  );

  const generateLearningPath = useCallback(
    () =>
      run("learning-path", () =>
        postAi<{ days: AiLearningPathDay[]; source: AiSource; message?: string }>(
          "/api/ai/learning-path",
        ),
      ),
    [run],
  );

  const formatPaper = useCallback(
    (input: { title: string; subject: string; markdown: string }) =>
      run("format-paper", () =>
        postAi<{ markdown: string; source: AiSource; message?: string }>(
          "/api/ai/format-paper",
          input,
        ),
      ),
    [run],
  );

  return {
    loading,
    error,
    generateProgressInsight,
    generateLearningPath,
    formatPaper,
  };
}
