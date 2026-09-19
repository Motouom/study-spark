import { json, preflight } from "../_shared/cors.ts";
import {
  aiConfigured,
  fallbackLearningPath,
  generateAiText,
  parseAiLearningPath,
} from "../_shared/ai.ts";
import { getAuthenticatedUser, userSupabase } from "../_shared/supabase.ts";

type DifficultyEntry = {
  title: string;
  subject: string;
  bestDepth: number;
  totalTimeSeconds: number;
  reviewCount: number;
  avgConfidence: number | null;
  difficultParts: string[];
  addToRevision: boolean;
  difficultyScore: number;
};

// Rank papers by how much difficulty the learner has shown in them: review
// marks, low reading depth, low self-reported confidence, and reflections
// flagged for revision. This is what makes the path difficulty-aware instead
// of random.
function buildDifficultyRanking(
  documents: { id: string; title: string; subject: string }[],
  sessions: {
    document_id: string;
    duration_seconds: number;
    max_scroll_percent: number;
    completed: boolean;
  }[],
  checkpoints: { document_id: string; checkpoint_type: string }[],
  reflections: {
    document_id: string;
    confidence: number;
    difficult_parts: string | null;
    add_to_revision: boolean;
  }[],
): DifficultyEntry[] {
  const entries = documents.map((document) => {
    const docSessions = sessions.filter((session) => session.document_id === document.id);
    const bestDepth =
      docSessions.length > 0
        ? Math.max(...docSessions.map((session) => Number(session.max_scroll_percent ?? 0)))
        : 0;
    const totalTimeSeconds = docSessions.reduce(
      (sum, session) => sum + Number(session.duration_seconds ?? 0),
      0,
    );
    const reviewCount = checkpoints.filter(
      (checkpoint) =>
        checkpoint.document_id === document.id && checkpoint.checkpoint_type === "review",
    ).length;
    const docReflections = reflections.filter(
      (reflection) => reflection.document_id === document.id,
    );
    const avgConfidence =
      docReflections.length > 0
        ? docReflections.reduce((sum, reflection) => sum + Number(reflection.confidence ?? 0), 0) /
          docReflections.length
        : null;
    const difficultParts = [
      ...new Set(
        docReflections
          .map((reflection) => String(reflection.difficult_parts ?? "").trim())
          .filter(Boolean),
      ),
    ].slice(0, 3);
    const addToRevision = docReflections.some((reflection) => reflection.add_to_revision);

    let score = 0;
    score += reviewCount * 3;
    score += (100 - bestDepth) / 20;
    if (avgConfidence !== null) score += (5 - avgConfidence) * 2;
    if (addToRevision) score += 2;
    if (docSessions.length > 0 && bestDepth < 85) score += 2;

    return {
      title: String(document.title),
      subject: String(document.subject),
      bestDepth,
      totalTimeSeconds,
      reviewCount,
      avgConfidence: avgConfidence === null ? null : Math.round(avgConfidence * 10) / 10,
      difficultParts,
      addToRevision,
      difficultyScore: Math.round(score * 10) / 10,
    };
  });

  return entries
    .filter((entry) => entry.difficultyScore > 0)
    .sort((a, b) => b.difficultyScore - a.difficultyScore);
}

Deno.serve(async (request) => {
  if (request.method === "OPTIONS") return preflight();
  if (request.method !== "POST") return json({ error: "Method not allowed." }, 405);

  try {
    const user = await getAuthenticatedUser(request);
    const authHeader = request.headers.get("Authorization") ?? "";
    const supabase = userSupabase(authHeader.replace(/^Bearer\s+/i, ""));

    const [
      { data: profile },
      { data: sessions },
      { data: checkpoints },
      { data: reflections },
      { data: documents },
    ] = await Promise.all([
      supabase
        .from("student_profiles")
        .select("name,class_level,series,subjects,plan,premium_until")
        .eq("user_id", user.id)
        .maybeSingle(),
      supabase
        .from("paper_study_sessions")
        .select("document_id,duration_seconds,max_scroll_percent,completed,updated_at")
        .eq("user_id", user.id)
        .order("updated_at", { ascending: false }),
      supabase
        .from("paper_study_checkpoints")
        .select("document_id,checkpoint_type,scroll_percent,created_at")
        .eq("user_id", user.id)
        .order("created_at", { ascending: false }),
      supabase
        .from("paper_study_reflections")
        .select("document_id,confidence,difficult_parts,add_to_revision,updated_at")
        .eq("user_id", user.id)
        .order("updated_at", { ascending: false }),
      supabase
        .from("course_documents")
        .select("id,title,subject,level,class_levels,series,status")
        .eq("status", "published"),
    ]);

    const profileSubjects = new Set((profile?.subjects ?? []) as string[]);
    const matchingDocuments = (documents ?? []).filter(
      (document) => profileSubjects.size === 0 || profileSubjects.has(String(document.subject)),
    );
    const sessionRows = sessions ?? [];
    const checkpointRows = checkpoints ?? [];
    const reflectionRows = reflections ?? [];
    const startedDocumentIds = new Set(sessionRows.map((item) => item.document_id));

    const difficultyRanking = buildDifficultyRanking(
      matchingDocuments,
      sessionRows,
      checkpointRows,
      reflectionRows,
    );

    const unfinishedPapers = difficultyRanking
      .filter((entry) => entry.bestDepth < 85)
      .slice(0, 4)
      .map((entry) => entry.title);
    const nextPapers = matchingDocuments
      .filter((document) => !startedDocumentIds.has(document.id))
      .slice(0, 5)
      .map((document) => String(document.title));
    const subjectReviewSignals = new Map<string, number>();
    for (const item of checkpointRows) {
      if (item.checkpoint_type !== "review") continue;
      const document = matchingDocuments.find((candidate) => candidate.id === item.document_id);
      if (!document) continue;
      subjectReviewSignals.set(
        String(document.subject),
        (subjectReviewSignals.get(String(document.subject)) ?? 0) + 1,
      );
    }
    const weakestSubjects = [...subjectReviewSignals.entries()]
      .sort((a, b) => b[1] - a[1])
      .slice(0, 3)
      .map(([subject]) => subject);

    const fallback = fallbackLearningPath({
      weakestSubjects,
      difficultyRanking,
      nextPapers,
    });
    if (!aiConfigured()) return json({ days: fallback, source: "fallback" });

    try {
      const planText = await generateAiText({
        system:
          "You are StudySpark's learning path planner for Cameroon GCE learners. Build the path from the learner's ACTUAL difficulties: review marks, low reading depth, low confidence, and difficult parts they reported. Order the 7 days hardest-first so the learner attacks their weakest papers early. Every day.paper must be one of the supplied titles (or 'Progress dashboard'). Do not invent papers, classes, subjects, or progress. Do not solve questions. Return valid JSON only.",
        prompt: JSON.stringify({
          learner: profile,
          weakestSubjects,
          difficultyRanking: difficultyRanking.map((entry) => ({
            title: entry.title,
            subject: entry.subject,
            bestDepth: entry.bestDepth,
            reviewCount: entry.reviewCount,
            avgConfidence: entry.avgConfidence,
            difficultParts: entry.difficultParts,
            addToRevision: entry.addToRevision,
            difficultyScore: entry.difficultyScore,
          })),
          nextPapers,
          instruction:
            'Return JSON in this exact shape: {"days":[{"day":1,"title":"short action title","paper":"one supplied paper title or Progress dashboard","target":"specific reading or checkpoint target","focus":"specific revision focus that references the learner\'s reported difficult parts or low-confidence areas"}]}. Create exactly 7 days. Day 1 must target the highest-difficulty paper. Do not use Markdown tables.',
        }),
        maxTokens: 900,
      });
      const days = parseAiLearningPath(planText);

      return json({ days, source: "ai" });
    } catch (aiError) {
      console.warn("AI learning path provider failed; using local fallback", aiError);
      return json({ days: fallback, source: "fallback" });
    }
  } catch (error) {
    if (error instanceof Response) return error;
    console.error("AI learning path failed", error);
    return json(
      { error: error instanceof Error ? error.message : "Learning path generation failed." },
      500,
    );
  }
});
