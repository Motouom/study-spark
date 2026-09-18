import { createFileRoute } from "@tanstack/react-router";
import { aiConfigured, fallbackLearningPath, generateAiText, parseAiLearningPath } from "@/lib/ai";
import { getAuthenticatedSupabase, getAuthenticatedUser } from "@/lib/server-supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";

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
          const startedDocumentIds = new Set(sessionRows.map((item) => item.document_id));
          const unfinishedPapers = matchingDocuments
            .filter((document) =>
              sessionRows.some(
                (session) =>
                  session.document_id === document.id &&
                  (!session.completed || Number(session.max_scroll_percent ?? 0) < 85),
              ),
            )
            .slice(0, 4)
            .map((document) => String(document.title));
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
          const weakestSubjects = [...subjectReviewSignals.entries()]
            .sort((a, b) => b[1] - a[1])
            .slice(0, 3)
            .map(([subject]) => subject);

          const fallback = fallbackLearningPath({ weakestSubjects, unfinishedPapers, nextPapers });
          if (!aiConfigured()) return Response.json({ days: fallback, source: "fallback" });

          try {
            const planText = await generateAiText({
              system:
                "You are StudySpark's learning path planner for Cameroon GCE learners. Use only supplied papers and learner subjects. Do not invent papers, classes, subjects, or progress. Do not solve questions. Return valid JSON only.",
              prompt: JSON.stringify({
                learner: profile,
                weakestSubjects,
                unfinishedPapers,
                nextPapers,
                recentSessions: sessionRows.slice(0, 20),
                recentCheckpoints: checkpointRows.slice(0, 20),
                instruction:
                  'Return JSON in this exact shape: {"days":[{"day":1,"title":"short action title","paper":"one supplied paper title or Progress dashboard","target":"specific reading or checkpoint target","focus":"specific revision focus"}]}. Create exactly 7 days. Do not use Markdown tables.',
              }),
              maxTokens: 760,
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
