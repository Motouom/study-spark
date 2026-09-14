type AiMessage = {
  role: "system" | "user";
  content: string;
};

type AiChatResponse = {
  choices?: Array<{
    message?: {
      content?: string;
    };
  }>;
  error?: {
    message?: string;
  };
};

function readEnv(name: string) {
  return import.meta.env[name] ?? process.env[name];
}

export function aiConfigured() {
  return Boolean(readEnv("OPENROUTER_API_KEY") || readEnv("AI_API_KEY"));
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
  unfinishedPapers: string[];
  nextPapers: string[];
}) {
  const focus = input.weakestSubjects[0] ?? "your weakest subject";
  const continuePaper = input.unfinishedPapers[0];
  const freshPaper = input.nextPapers[0];

  return [
    {
      day: 1,
      title: `Review ${focus}`,
      paper: continuePaper ?? "Current weakest paper",
      target: "Rework 5 failed or difficult questions",
      focus: "Identify the exact step where your working breaks down.",
    },
    {
      day: 2,
      title: continuePaper ? "Continue active paper" : "Start a matching paper",
      paper: continuePaper ?? freshPaper ?? "Next available paper",
      target: "Mark at least 6 structural questions",
      focus: "Keep full working and mark each question honestly.",
    },
    {
      day: 3,
      title: freshPaper ? "Open a fresh paper" : "Repeat weak questions",
      paper: freshPaper ?? continuePaper ?? "Lowest-mastery paper",
      target: "Complete 4 timed questions",
      focus: "Improve accuracy before increasing speed.",
    },
    {
      day: 4,
      title: "Error-log revision",
      paper: continuePaper ?? freshPaper ?? "Active paper",
      target: "Correct every failed question from the week",
      focus: "Write the corrected method beside each mistake.",
    },
    {
      day: 5,
      title: "Timed structural practice",
      paper: freshPaper ?? continuePaper ?? "Next available paper",
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
  const cleaned = value
    .trim()
    .replace(/^```(?:json)?/i, "")
    .replace(/```$/i, "")
    .trim();
  const parsed = JSON.parse(cleaned) as unknown;
  const days = Array.isArray(parsed)
    ? parsed
    : typeof parsed === "object" && parsed && "days" in parsed
      ? (parsed as { days?: unknown }).days
      : null;
  if (!Array.isArray(days)) throw new Error("AI returned an invalid learning path.");

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

export async function generateAiText(input: {
  system: string;
  prompt: string;
  maxTokens?: number;
}) {
  const apiKey = readEnv("OPENROUTER_API_KEY") ?? readEnv("AI_API_KEY");
  if (!apiKey) throw new Error("AI is not configured.");

  const model = readEnv("AI_MODEL") ?? "openrouter/free";
  const baseUrl = readEnv("AI_BASE_URL") ?? "https://openrouter.ai/api/v1";
  const messages: AiMessage[] = [
    { role: "system", content: input.system },
    { role: "user", content: input.prompt },
  ];

  const response = await fetch(`${baseUrl.replace(/\/$/, "")}/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${apiKey}`,
      "Content-Type": "application/json",
      "HTTP-Referer": readEnv("APP_PUBLIC_URL") ?? "http://127.0.0.1:8082",
      "X-Title": "StudySpark",
    },
    body: JSON.stringify({
      model,
      messages,
      temperature: 0.25,
      max_tokens: input.maxTokens ?? 700,
    }),
  });

  const payload = (await response.json().catch(() => null)) as AiChatResponse | null;
  if (!response.ok) {
    throw new Error(payload?.error?.message ?? "AI request failed.");
  }

  const content = payload?.choices?.[0]?.message?.content?.trim();
  if (!content) throw new Error("AI returned an empty response.");
  return content;
}
