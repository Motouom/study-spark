import { createFileRoute } from "@tanstack/react-router";
import { aiConfigured, fallbackInsight, generateAiText, logAiFailure } from "@/lib/ai";
import { getAuthenticatedSupabase, getAuthenticatedUser } from "@/lib/server-supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";

export const Route = createFileRoute("/api/ai/progress-insight")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const limiter = rateLimit(`ai:progress-insight:${user.id}`, 10, 60 * 60 * 1000);
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
              .select("id,title,subject,status")
              .eq("status", "published"),
          ]);

          const rows = sessions ?? [];
          const checkpointRows = checkpoints ?? [];
          const papersRead = new Set(rows.map((item) => item.document_id)).size;
          const completedPapers = new Set(
            rows.filter((item) => item.completed).map((item) => item.document_id),
          ).size;
          const totalDurationSeconds = rows.reduce(
            (sum, item) => sum + Number(item.duration_seconds ?? 0),
            0,
          );
          const averageDepth =
            rows.length > 0
              ? Math.round(
                  rows.reduce((sum, item) => sum + Number(item.max_scroll_percent ?? 0), 0) /
                    rows.length,
                )
              : 0;
          const documentsById = new Map((documents ?? []).map((item) => [item.id, item]));
          const subjectStats = new Map<string, { review: number; depth: number; total: number }>();
          for (const item of rows) {
            const subject = documentsById.get(item.document_id)?.subject ?? "Unassigned";
            const current = subjectStats.get(subject) ?? { review: 0, depth: 0, total: 0 };
            current.total += 1;
            current.depth += Number(item.max_scroll_percent ?? 0);
            subjectStats.set(subject, current);
          }
          for (const item of checkpointRows) {
            if (item.checkpoint_type !== "review") continue;
            const subject = documentsById.get(item.document_id)?.subject ?? "Unassigned";
            const current = subjectStats.get(subject) ?? { review: 0, depth: 0, total: 0 };
            current.review += 1;
            subjectStats.set(subject, current);
          }
          const weakestSubjects = [...subjectStats.entries()]
            .sort((a, b) => {
              const aDepth = a[1].total > 0 ? a[1].depth / a[1].total : 0;
              const bDepth = b[1].total > 0 ? b[1].depth / b[1].total : 0;
              return b[1].review - a[1].review || aDepth - bDepth;
            })
            .slice(0, 3)
            .map(([subject]) => subject);

          const fallback = fallbackInsight({
            papersRead,
            completedPapers,
            reviewCount: checkpointRows.filter((item) => item.checkpoint_type === "review").length,
            bookmarkCount: checkpointRows.filter((item) => item.checkpoint_type === "bookmark")
              .length,
            averageDepth,
            totalDuration:
              totalDurationSeconds > 60
                ? `${Math.floor(totalDurationSeconds / 60)}m ${totalDurationSeconds % 60}s`
                : `${totalDurationSeconds}s`,
            weakestSubjects,
          });

          if (!aiConfigured()) {
            logAiFailure("ai.progress_insight.fallback", new Error("AI is not configured."), {
              userId: user.id,
            });
            return Response.json({
              insight: fallback,
              source: "fallback",
              message: "StudySpark used your local progress data because AI is not configured.",
            });
          }

          try {
            const insight = await generateAiText({
              system:
                "You are StudySpark's learner progress analyst. Be precise, supportive, and practical. Never invent marks or papers. Do not give exam answers.",
              prompt: JSON.stringify({
                learner: profile,
                summary: {
                  sessions: rows.length,
                  papersRead,
                  completedPapers,
                  totalDurationSeconds,
                  averageDepth,
                  weakestSubjects,
                },
                recentSessions: rows.slice(0, 20),
                recentCheckpoints: checkpointRows.slice(0, 20),
                instruction:
                  "Write 3 short paragraphs: current study habit, what needs review, and exactly what to do next.",
              }),
              maxTokens: 520,
            });

            return Response.json({ insight, source: "ai" });
          } catch (aiError) {
            logAiFailure("ai.progress_insight.provider_failed", aiError, { userId: user.id });
            return Response.json({
              insight: fallback,
              source: "fallback",
              message:
                "StudySpark could not reach AI right now, so it used your saved progress to prepare a local insight.",
            });
          }
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("AI progress insight failed", error);
          return Response.json(
            {
              error:
                "Progress insight could not be prepared right now. Please try again after a moment.",
            },
            { status: 500 },
          );
        }
      },
    },
  },
});
