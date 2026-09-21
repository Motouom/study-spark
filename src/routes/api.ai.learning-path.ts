import { createFileRoute } from "@tanstack/react-router";
import { aiConfigured, fallbackLearningPath, generateAiText, parseAiLearningPath } from "@/lib/ai";
import { getAuthenticatedSupabase, getAuthenticatedUser } from "@/lib/server-supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";

type DifficultyEntry = {
  id: string;
  title: string;
  subject: string;
  bestDepth: number;
  totalTimeSeconds: number;
  reviewCount: number;
  failedQuestions: number[];
  passedQuestions: number[];
  slowQuestions: { questionNumber: number; durationSeconds: number; status: string }[];
  averageQuestionSeconds: number;
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
  questionProgress: {
    document_id: string;
    question_number: number;
    status: string;
    duration_seconds: number | null;
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
    const docQuestions = questionProgress.filter((item) => item.document_id === document.id);
    const timedQuestions = docQuestions.filter(
      (item) => Number(item.duration_seconds ?? 0) > 0,
    );
    const averageQuestionSeconds =
      timedQuestions.length > 0
        ? Math.round(
            timedQuestions.reduce((sum, item) => sum + Number(item.duration_seconds ?? 0), 0) /
              timedQuestions.length,
          )
        : 0;
    const slowThreshold = Math.max(600, averageQuestionSeconds * 1.5);
    const failedQuestions = docQuestions
      .filter((item) => item.status === "failed")
      .map((item) => Number(item.question_number))
      .sort((a, b) => a - b);
    const passedQuestions = docQuestions
      .filter((item) => item.status === "passed")
      .map((item) => Number(item.question_number))
      .sort((a, b) => a - b);
    const slowQuestions = timedQuestions
      .filter((item) => Number(item.duration_seconds ?? 0) >= slowThreshold)
      .sort((a, b) => Number(b.duration_seconds ?? 0) - Number(a.duration_seconds ?? 0))
      .slice(0, 5)
      .map((item) => ({
        questionNumber: Number(item.question_number),
        durationSeconds: Number(item.duration_seconds ?? 0),
        status: String(item.status),
      }));
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
    score += failedQuestions.length * 5;
    score += slowQuestions.length * 2;
    score += passedQuestions.length > 0 ? Math.max(0, failedQuestions.length / passedQuestions.length) : 0;
    score += reviewCount * 3;
    score += (100 - bestDepth) / 20;
    if (avgConfidence !== null) score += (5 - avgConfidence) * 2;
    if (addToRevision) score += 2;
    if (docSessions.length > 0 && bestDepth < 85) score += 2;

    return {
      id: document.id,
      title: String(document.title),
      subject: String(document.subject),
      bestDepth,
      totalTimeSeconds,
      reviewCount,
      failedQuestions,
      passedQuestions,
      slowQuestions,
      averageQuestionSeconds,
      avgConfidence: avgConfidence === null ? null : Math.round(avgConfidence * 10) / 10,
      difficultParts,
      addToRevision,
      difficultyScore: Math.round(score * 10) / 10,
    };
  });

  return entries
    .filter(
      (entry) =>
        entry.failedQuestions.length > 0 ||
        entry.slowQuestions.length > 0 ||
        entry.reviewCount > 0 ||
        entry.difficultyScore > 0,
    )
    .sort((a, b) => b.difficultyScore - a.difficultyScore);
}

export const Route = createFileRoute("/api/ai/learning-path")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const limiter = rateLimit(`ai:learning-path:${user.id}`, 10, 60 * 60 * 1000);
          if (!limiter.allowed) return rateLimitResponse(limiter.retryAfterSeconds);
          const supabase = getAuthenticatedSupabase(request);

          const [
            { data: profile },
            { data: sessions },
            { data: checkpoints },
            { data: reflections },
            { data: questionProgress },
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
              .from("structural_question_progress")
              .select("document_id,question_number,status,duration_seconds,updated_at")
              .eq("user_id", user.id)
              .order("updated_at", { ascending: false }),
            supabase
              .from("course_documents")
              .select("id,title,subject,level,class_levels,series,status")
              .eq("status", "published"),
          ]);

          const profileSubjects = new Set((profile?.subjects ?? []) as string[]);

          // Learning paths are a Premium feature — enforce server-side, not
          // just in the UI.
          const plan = String(profile?.plan ?? "free");
          const premiumUntil = profile?.premium_until
            ? new Date(String(profile.premium_until))
            : null;
          const isPremium =
            plan === "premium" && (!premiumUntil || premiumUntil.getTime() > Date.now());
          if (!isPremium) {
            return Response.json(
              { error: "Learning paths are a Premium feature." },
              { status: 403 },
            );
          }

          const matchingDocuments = (documents ?? []).filter(
            (document) =>
              profileSubjects.size === 0 || profileSubjects.has(String(document.subject)),
          );
          const sessionRows = sessions ?? [];
          const checkpointRows = checkpoints ?? [];
          const reflectionRows = reflections ?? [];
          const questionRows = questionProgress ?? [];
          const startedDocumentIds = new Set(sessionRows.map((item) => item.document_id));

          const difficultyRanking = buildDifficultyRanking(
            matchingDocuments,
            sessionRows,
            questionRows,
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
            const document = matchingDocuments.find(
              (candidate) => candidate.id === item.document_id,
            );
            if (!document) continue;
            subjectReviewSignals.set(
              String(document.subject),
              (subjectReviewSignals.get(String(document.subject)) ?? 0) + 1,
            );
          }
          for (const item of questionRows) {
            if (item.status !== "failed") continue;
            const document = matchingDocuments.find(
              (candidate) => candidate.id === item.document_id,
            );
            if (!document) continue;
            subjectReviewSignals.set(
              String(document.subject),
              (subjectReviewSignals.get(String(document.subject)) ?? 0) + 2,
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
          if (!aiConfigured()) return Response.json({ days: fallback, source: "fallback" });

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
                  failedQuestions: entry.failedQuestions,
                  slowQuestions: entry.slowQuestions,
                  averageQuestionSeconds: entry.averageQuestionSeconds,
                  bestDepth: entry.bestDepth,
                  reviewCount: entry.reviewCount,
                  avgConfidence: entry.avgConfidence,
                  difficultParts: entry.difficultParts,
                  addToRevision: entry.addToRevision,
                  difficultyScore: entry.difficultyScore,
                })),
                nextPapers,
                instruction:
                  'Return JSON in this exact shape: {"days":[{"day":1,"title":"short action title","paper":"one supplied paper title or Progress dashboard","target":"specific measurable target based on failedQuestions, slowQuestions, pass/fail work, or review marks","focus":"specific revision focus that cites question numbers when provided"}]}. Create exactly 7 days. Day 1 must target the highest-difficulty paper. Use supplied failed question numbers and slow question numbers before using scroll depth. Do not use Markdown tables.',
              }),
              maxTokens: 900,
            });
            const days = parseAiLearningPath(planText);

            return Response.json({ days, source: "ai" });
          } catch (aiError) {
            console.warn("AI learning path provider failed; using local fallback", aiError);
            return Response.json({ days: fallback, source: "fallback" });
          }
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("AI learning path failed", error);
          return Response.json(
            { error: error instanceof Error ? error.message : "Learning path generation failed." },
            { status: 500 },
          );
        }
      },
    },
  },
});
