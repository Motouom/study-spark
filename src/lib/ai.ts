import { askAI, multiAiConfigured, getMultiAiConfigStatus } from "@/lib/ai-providers";

export type AiFailureKind =
  | "missing_config"
  | "invalid_config"
  | "provider_http"
  | "timeout"
  | "parse_failure"
  | "empty_response"
  | "network"
  | "quota_exhausted";

export class AiProviderError extends Error {
  kind: AiFailureKind;
  status?: number;
  retryable: boolean;

  constructor(
    kind: AiFailureKind,
    message: string,
    options?: { status?: number; retryable?: boolean },
  ) {
    super(message);
    this.name = "AiProviderError";
    this.kind = kind;
    this.status = options?.status;
    this.retryable = options?.retryable ?? false;
  }
}

function readEnv(name: string) {
  return import.meta.env[name] ?? process.env[name];
}

export function aiConfigured() {
  return multiAiConfigured() || Boolean(readEnv("OPENROUTER_API_KEY") || readEnv("AI_API_KEY"));
}

export function getAiConfigStatus() {
  const multiStatus = getMultiAiConfigStatus();
  const legacyKey = Boolean(readEnv("OPENROUTER_API_KEY") || readEnv("AI_API_KEY"));
  const timeoutMs = Number(readEnv("AI_TIMEOUT_MS") ?? 25000);
  const issues: string[] = [];

  if (!multiStatus.configured && !legacyKey) issues.push("missing_api_key");
  if (!Number.isFinite(timeoutMs) || timeoutMs < 1000) issues.push("invalid_timeout");

  return {
    configured: multiStatus.configured || legacyKey,
    issues,
    multiProvider: multiStatus,
    legacyProvider: { configured: legacyKey, hasApiKey: legacyKey },
    timeoutMs: Number.isFinite(timeoutMs) && timeoutMs >= 1000 ? timeoutMs : 25000,
    hasApiKey: multiStatus.configured || legacyKey,
  };
}

export function logAiFailure(event: string, error: unknown, context: Record<string, unknown> = {}) {
  const message = error instanceof Error ? error.message : "Unknown AI error";
  const providerError =
    error instanceof AiProviderError
      ? error
      : new AiProviderError(
          /not configured|api key/i.test(message) ? "missing_config" : "network",
          message,
        );

  console.warn(
    JSON.stringify({
      event,
      aiFailureKind: providerError.kind,
      status: providerError.status ?? null,
      retryable: providerError.retryable,
      message: providerError.message,
      ...context,
    }),
  );
}

export async function generateAiText(input: {
  system: string;
  prompt: string;
  maxTokens?: number;
}) {
  const result = await askAI(input);
  return result.content;
}

export function fallbackInsight(input: {
  papersRead: number;
  completedPapers: number;
  reviewCount: number;
  bookmarkCount: number;
  averageDepth: number;
  totalDuration: string;
  weakestSubjects: string[];
}) {
  const weakText =
    input.weakestSubjects.length > 0 ? input.weakestSubjects.join(", ") : "your selected subjects";

  return [
    `You have opened ${input.papersRead} papers and read through ${input.completedPapers}. Your average reading depth is ${input.averageDepth}%.`,
    `Your next priority should be ${weakText}. Start with the papers you marked for review before opening fresh material.`,
    `You have saved ${input.reviewCount} review marks and ${input.bookmarkCount} bookmarks across ${input.totalDuration} of study time. Use those signals to build your next revision session.`,
  ].join("\n\n");
}

export function fallbackLearningPath(input: {
  weakestSubjects: string[];
  difficultyRanking: {
    title: string;
    subject: string;
    bestDepth: number;
    reviewCount: number;
    failedQuestions?: number[];
    slowQuestions?: { questionNumber: number; durationSeconds: number; status: string }[];
    averageQuestionSeconds?: number;
    avgConfidence: number | null;
    difficultParts: string[];
    addToRevision: boolean;
    difficultyScore: number;
  }[];
  nextPapers: string[];
}) {
  const hardest = input.difficultyRanking[0];
  const second = input.difficultyRanking[1];
  const third = input.difficultyRanking[2];
  const freshPaper = input.nextPapers[0];
  const focus = input.weakestSubjects[0] ?? hardest?.subject ?? "your weakest subject";

  const hardestFocus = hardest?.difficultParts?.length
    ? `Focus on: ${hardest.difficultParts.join("; ")}`
    : hardest?.failedQuestions?.length
      ? `Rework failed questions: Q${hardest.failedQuestions.slice(0, 6).join(", Q")}.`
      : hardest?.slowQuestions?.length
        ? `Speed up slow questions: Q${hardest.slowQuestions
            .map((item) => item.questionNumber)
            .slice(0, 5)
            .join(", Q")}.`
        : "Identify the exact step where your working breaks down.";

  return [
    {
      day: 1,
      title: `Attack your hardest paper: ${focus}`,
      paper: hardest?.title ?? "Current weakest paper",
      target: hardest?.failedQuestions?.length
        ? `Redo failed questions Q${hardest.failedQuestions.slice(0, 6).join(", Q")} and mark them again`
        : `Rework the ${hardest?.reviewCount ?? 5} questions you marked for review`,
      focus: hardestFocus,
    },
    {
      day: 2,
      title: second ? "Finish the second-hardest paper" : "Continue active paper",
      paper: second?.title ?? hardest?.title ?? "Next available paper",
      target: second?.failedQuestions?.length
        ? `Correct failed questions Q${second.failedQuestions.slice(0, 6).join(", Q")}`
        : "Mark at least 6 structural questions",
      focus: second?.difficultParts?.length
        ? `Focus on: ${second.difficultParts.join("; ")}`
        : second?.slowQuestions?.length
          ? `Reduce time on Q${second.slowQuestions
              .map((item) => item.questionNumber)
              .slice(0, 5)
              .join(", Q")}.`
          : "Keep full working and mark each question honestly.",
    },
    {
      day: 3,
      title: third ? "Revisit a low-confidence paper" : "Open a fresh paper",
      paper: third?.title ?? freshPaper ?? "Lowest-mastery paper",
      target: "Complete 4 timed questions",
      focus: third?.failedQuestions?.length
        ? `Start with failed questions Q${third.failedQuestions.slice(0, 4).join(", Q")}.`
        : third?.avgConfidence !== null && third?.avgConfidence !== undefined
          ? `Your confidence here was ${third.avgConfidence}/5 — rebuild it with timed practice.`
          : "Improve accuracy before increasing speed.",
    },
    {
      day: 4,
      title: "Error-log revision",
      paper: hardest?.title ?? "Active paper",
      target: "Correct every failed question from the week",
      focus: "Write the corrected method beside each mistake.",
    },
    {
      day: 5,
      title: "Timed structural practice",
      paper: freshPaper ?? hardest?.title ?? "Next available paper",
      target: "Solve 5 questions under exam timing",
      focus: "Track time per question and avoid skipping sub-parts.",
    },
    {
      day: 6,
      title: "Mixed review",
      paper: "Started and failed questions",
      target: "Review 8 marked questions",
      focus: "Compare passed and failed work to spot repeated patterns.",
    },
    {
      day: 7,
      title: "Weekly checkpoint",
      paper: "Progress dashboard",
      target: "Review pass rate, total time, and weak subjects",
      focus: "Choose next week's first paper from the weakest subject.",
    },
  ];
}

export type AiLearningPathDay = {
  day: number;
  title: string;
  paper: string;
  target: string;
  focus: string;
};

export function parseAiLearningPath(value: string): AiLearningPathDay[] {
  // Aggressively extract JSON: remove markdown fences, find first '{' to last '}'
  let cleaned = value.trim();

  // Remove markdown code blocks
  cleaned = cleaned
    .replace(/^```(?:json)?\s*/i, "")
    .replace(/\s*```$/i, "")
    .trim();

  // If there's explanatory text before/after JSON, extract just the JSON object
  const firstBrace = cleaned.indexOf("{");
  const lastBrace = cleaned.lastIndexOf("}");
  if (firstBrace !== -1 && lastBrace !== -1 && lastBrace > firstBrace) {
    cleaned = cleaned.slice(firstBrace, lastBrace + 1);
  }

  let parsed: unknown;
  try {
    parsed = JSON.parse(cleaned) as unknown;
  } catch (error) {
    // Retryable: another provider might return valid JSON
    throw new AiProviderError(
      "parse_failure",
      error instanceof Error ? error.message : "AI returned invalid JSON.",
      { retryable: true },
    );
  }

  const days = Array.isArray(parsed)
    ? parsed
    : typeof parsed === "object" && parsed && "days" in parsed
      ? (parsed as { days?: unknown }).days
      : null;

  if (!Array.isArray(days)) {
    throw new AiProviderError("parse_failure", "AI returned an invalid learning path shape.", {
      retryable: true,
    });
  }

  return days.slice(0, 7).map((item, index) => {
    const row = item as Partial<Record<keyof AiLearningPathDay, unknown>>;
    return {
      day: Number(row.day ?? index + 1),
      title: String(row.title ?? `Day ${index + 1}`),
      paper: String(row.paper ?? "Assigned paper"),
      target: String(row.target ?? "Mark structural questions"),
      focus: String(row.focus ?? "Review weak areas carefully."),
    };
  });
}
