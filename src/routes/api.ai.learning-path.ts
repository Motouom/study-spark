import { createFileRoute } from "@tanstack/react-router";
import {
  aiConfigured,
  fallbackLearningPath,
  generateAiText,
  logAiFailure,
  parseAiLearningPath,
} from "@/lib/ai";
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
    const timedQuestions = docQuestions.filter((item) => Number(item.duration_seconds ?? 0) > 0);
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
    score +=
      passedQuestions.length > 0 ? Math.max(0, failedQuestions.length / passedQuestions.length) : 0;
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
          const limiter = await rateLimit(`ai:learning-path:${user.id}`, 10, 60 * 60 * 1000);
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

          const documentsById = new Map((documents ?? []).map((item) => [item.id, item]));
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

          console.log(
            `[AI LearningPath] user=${user.id} Data: sessions=${sessionRows.length}, checkpoints=${checkpointRows.length}, reflections=${reflectionRows.length}, questions=${questionRows.length}, docs=${matchingDocuments.length}`,
          );
          console.log(`[AI LearningPath] user=${user.id} Profile subjects:`, [...profileSubjects]);
          console.log(`[AI LearningPath] user=${user.id} Doc subjects:`, [
            ...new Set(matchingDocuments.map((d) => d.subject)),
          ]);

          // If subject filter yields nothing, fall back to all documents so the path still works
          const docsForRanking =
            matchingDocuments.length > 0 ? matchingDocuments : (documents ?? []);

          const difficultyRanking = buildDifficultyRanking(
            docsForRanking,
            sessionRows,
            questionRows,
            checkpointRows,
            reflectionRows,
          );

          console.log(
            `[AI LearningPath] user=${user.id} difficultyRanking length: ${difficultyRanking.length}`,
          );
          if (difficultyRanking.length > 0) {
            console.log(
              `[AI LearningPath] user=${user.id} Top papers:`,
              difficultyRanking
                .slice(0, 3)
                .map((e) => ({ title: e.title, score: e.difficultyScore, depth: e.bestDepth })),
            );
          }

          const unfinishedPapers = difficultyRanking
            .filter((entry) => entry.bestDepth < 85)
            .slice(0, 4)
            .map((entry) => entry.title);
          const docsForPapers =
            matchingDocuments.length > 0 ? matchingDocuments : (documents ?? []);
          const nextPapers = docsForPapers
            .filter((document) => !startedDocumentIds.has(document.id))
            .slice(0, 5)
            .map((document) => String(document.title));
          const subjectReviewSignals = new Map<string, number>();
          for (const item of checkpointRows) {
            if (item.checkpoint_type !== "review") continue;
            const document = docsForPapers.find((candidate) => candidate.id === item.document_id);
            if (!document) continue;
            subjectReviewSignals.set(
              String(document.subject),
              (subjectReviewSignals.get(String(document.subject)) ?? 0) + 1,
            );
          }
          for (const item of questionRows) {
            if (item.status !== "failed") continue;
            const document = docsForPapers.find((candidate) => candidate.id === item.document_id);
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

          // Build deterministic 7-day plan from actual data (hardest-first)
          function buildDeterministicDays(): {
            day: number;
            title: string;
            paper: string;
            target: string;
            focus: string;
          }[] {
            const days: {
              day: number;
              title: string;
              paper: string;
              target: string;
              focus: string;
            }[] = [];
            const ranked = difficultyRanking;
            const fresh = nextPapers;
            let rankIdx = 0;
            let freshIdx = 0;

            // Fallback: if difficultyRanking is empty, use user's recent sessions as papers
            const sessionPaperTitles = sessionRows
              .map((s) => documentsById.get(s.document_id)?.title)
              .filter((t): t is string => Boolean(t));
            const sessionPapers = [...new Set(sessionPaperTitles)]; // dedupe while preserving order
            let sessionIdx = 0;

            console.log(
              `[AI LearningPath] buildDeterministicDays: ranked=${ranked.length}, fresh=${fresh.length}, sessionPapers=${sessionPapers.length}`,
            );
            if (sessionPapers.length > 0) {
              console.log(`[AI LearningPath] sessionPapers:`, sessionPapers.slice(0, 5));
            }

            const getPaper = (): string => {
              if (rankIdx < ranked.length) return ranked[rankIdx++].title;
              if (freshIdx < fresh.length) return fresh[freshIdx++];
              if (sessionIdx < sessionPapers.length) return sessionPapers[sessionIdx++];
              return "Progress dashboard";
            };

            const getFailedText = (entry: DifficultyEntry): string => {
              if (entry.failedQuestions.length > 0) {
                return `Redo failed questions Q${entry.failedQuestions.slice(0, 6).join(", Q")}`;
              }
              if (entry.slowQuestions.length > 0) {
                return `Speed up slow questions Q${entry.slowQuestions
                  .map((s) => s.questionNumber)
                  .slice(0, 5)
                  .join(", Q")}`;
              }
              if (entry.reviewCount > 0) {
                return `Review ${entry.reviewCount} marked question${entry.reviewCount > 1 ? "s" : ""}`;
              }
              return `Complete the paper — currently at ${entry.bestDepth}% depth`;
            };

            const getFocusText = (entry: DifficultyEntry): string => {
              if (entry.difficultParts.length > 0)
                return `Focus on: ${entry.difficultParts.join("; ")}`;
              if (entry.failedQuestions.length > 0) {
                return `Correct working for Q${entry.failedQuestions.slice(0, 4).join(", Q")}`;
              }
              if (entry.avgConfidence !== null && entry.avgConfidence < 3) {
                return `Confidence was ${entry.avgConfidence}/5 — rebuild with timed practice`;
              }
              return `Read carefully and mark every confusing part for review`;
            };

            // Day 1-3: attack weakest papers (hardest first)
            for (let d = 1; d <= 3; d++) {
              const paper = getPaper();
              const entry = ranked.find((e) => e.title === paper);
              days.push({
                day: d,
                title: entry ? `Attack your weakest paper: ${entry.subject}` : "Open a fresh paper",
                paper,
                target: entry
                  ? getFailedText(entry)
                  : "Study the full paper and mark confusing parts",
                focus: entry ? getFocusText(entry) : "Build understanding before speed",
              });
            }

            // Day 4: error-log revision (revisit the absolute weakest)
            const weakest = ranked[0];
            days.push({
              day: 4,
              title: weakest ? `Error-log revision: ${weakest.subject}` : "Review your mistakes",
              paper: weakest?.title ?? getPaper(),
              target: weakest
                ? `Correct every failed question from ${weakest.title.slice(0, 40)}`
                : "Review marked questions from the week",
              focus:
                weakest && weakest.failedQuestions.length > 0
                  ? `Write corrected method beside Q${weakest.failedQuestions.slice(0, 4).join(", Q")}`
                  : "Compare your answers with worked examples",
            });

            // Day 5: next weakest or fresh paper
            const paper5 = getPaper();
            const entry5 = ranked.find((e) => e.title === paper5);
            days.push({
              day: 5,
              title: entry5 ? `Continue: ${entry5.subject}` : "Open a new paper",
              paper: paper5,
              target: entry5
                ? getFailedText(entry5)
                : "Study the full paper and mark confusing parts",
              focus: entry5 ? getFocusText(entry5) : "Build understanding before speed",
            });

            // Day 6: mixed review across all weak areas
            days.push({
              day: 6,
              title: "Mixed review",
              paper: weakest?.title ?? getPaper(),
              target: "Review 8 marked questions from your weakest papers",
              focus: "Compare passed and failed work to spot repeated patterns",
            });

            // Day 7: weekly checkpoint
            days.push({
              day: 7,
              title: "Weekly checkpoint",
              paper: "Progress dashboard",
              target: "Review pass rate, total time, and weak subjects",
              focus: "Choose next week's first paper from the weakest subject",
            });

            return days;
          }

          const deterministicDays = buildDeterministicDays();

          const fallback = fallbackLearningPath({
            weakestSubjects,
            difficultyRanking,
            nextPapers,
          });
          if (!aiConfigured()) {
            logAiFailure("ai.learning_path.fallback", new Error("AI is not configured."), {
              userId: user.id,
            });
            return Response.json({
              days: deterministicDays,
              source: "fallback",
              message:
                "StudySpark used your question outcomes and study history to build a local learning path.",
            });
          }

          // Use AI ONLY to enrich the text — paper assignments are fixed
          try {
            console.log(
              `[AI LearningPath] user=${user.id} — invoking generateAiText for enrichment...`,
            );
            const planText = await generateAiText({
              system:
                "Rewrite learning path descriptions. Keep every paper title identical to fixedDays. Return compact JSON only.",
              prompt: JSON.stringify({
                fixedDays: deterministicDays.map((d) => ({
                  day: d.day,
                  paper: d.paper,
                  failedQ:
                    difficultyRanking
                      .find((e) => e.title === d.paper)
                      ?.failedQuestions.slice(0, 3) ?? [],
                  reviews: difficultyRanking.find((e) => e.title === d.paper)?.reviewCount ?? 0,
                })),
                instruction:
                  'Return compact JSON: [{"day":1,"title":"...","paper":"EXACT_PAPER_NAME","target":"...","focus":"..."}]. Paper must match EXACT_PAPER_NAME exactly.',
              }),
              maxTokens: 1400,
            });
            console.log(`[AI LearningPath] user=${user.id} — generateAiText succeeded.`);
            let days = parseAiLearningPath(planText);

            // Force-fix: ensure AI didn't change any paper titles
            days = days.map((day, index) => {
              const expectedPaper = deterministicDays[index]?.paper ?? day.paper;
              if (day.paper !== expectedPaper) {
                console.log(
                  `[AI LearningPath] Forced paper back from "${day.paper}" to "${expectedPaper}"`,
                );
                return { ...day, paper: expectedPaper };
              }
              return day;
            });

            return Response.json({ days, source: "ai" });
          } catch (aiError) {
            console.error(`[AI LearningPath] user=${user.id} — generateAiText FAILED:`, aiError);
            logAiFailure("ai.learning_path.provider_failed", aiError, { userId: user.id });
            // Always return the deterministic plan (never the old generic fallback)
            return Response.json({
              days: deterministicDays,
              source: "fallback",
              message:
                "AI enrichment failed, so StudySpark used your actual study data to build a focused plan.",
            });
          }
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("AI learning path failed", error);
          return Response.json(
            {
              error:
                "Learning path could not be prepared right now. Please try again after a moment.",
            },
            { status: 500 },
          );
        }
      },
    },
  },
});
