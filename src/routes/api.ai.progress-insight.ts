import { createFileRoute } from "@tanstack/react-router";
import {
  aiConfigured,
  fallbackInsight,
  generateAiText,
} from "@/lib/ai";
import { getAuthenticatedSupabase, getAuthenticatedUser } from "@/lib/server-supabase";

export const Route = createFileRoute("/api/ai/progress-insight")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const supabase = getAuthenticatedSupabase(request);

          const [{ data: profile }, { data: progress }, { data: documents }] = await Promise.all([
            supabase
              .from("student_profiles")
              .select("name,class_level,series,subjects,plan,premium_until")
              .eq("user_id", user.id)
              .maybeSingle(),
            supabase
              .from("structural_question_progress")
              .select("document_id,question_number,status,duration_seconds,updated_at")
              .eq("user_id", user.id)
              .order("updated_at", { ascending: false }),
            supabase
              .from("course_documents")
              .select("id,title,subject,status")
              .eq("status", "published"),
          ]);

          const rows = progress ?? [];
          const passed = rows.filter((item) => item.status === "passed").length;
          const failed = rows.filter((item) => item.status === "failed").length;
          const active = rows.filter((item) => item.status === "started").length;
          const timed = rows.filter((item) => Number(item.duration_seconds ?? 0) > 0);
          const averageSeconds =
            timed.length > 0
              ? Math.round(
                  timed.reduce((sum, item) => sum + Number(item.duration_seconds ?? 0), 0) /
                    timed.length,
                )
              : 0;
          const documentsById = new Map((documents ?? []).map((item) => [item.id, item]));
          const subjectStats = new Map<string, { passed: number; failed: number; total: number }>();
          for (const item of rows) {
            const subject = documentsById.get(item.document_id)?.subject ?? "Unassigned";
            const current = subjectStats.get(subject) ?? { passed: 0, failed: 0, total: 0 };
            current.total += 1;
            if (item.status === "passed") current.passed += 1;
            if (item.status === "failed") current.failed += 1;
            subjectStats.set(subject, current);
          }
          const weakestSubjects = [...subjectStats.entries()]
            .sort((a, b) => {
              const aRate = a[1].total > 0 ? a[1].passed / a[1].total : 0;
              const bRate = b[1].total > 0 ? b[1].passed / b[1].total : 0;
              return aRate - bRate || b[1].failed - a[1].failed;
            })
            .slice(0, 3)
            .map(([subject]) => subject);

          const fallback = fallbackInsight({
            totalStarted: rows.length,
            passed,
            failed,
            active,
            averageDuration:
              averageSeconds > 60
                ? `${Math.floor(averageSeconds / 60)}m ${averageSeconds % 60}s`
                : `${averageSeconds}s`,
            weakestSubjects,
          });

          if (!aiConfigured()) return Response.json({ insight: fallback, source: "fallback" });

          const insight = await generateAiText({
            system:
              "You are StudySpark's learner progress analyst. Be precise, supportive, and practical. Never invent marks or papers. Do not give exam answers.",
            prompt: JSON.stringify({
              learner: profile,
              summary: {
                totalStarted: rows.length,
                passed,
                failed,
                active,
                averageSeconds,
                weakestSubjects,
              },
              recentProgress: rows.slice(0, 25),
              instruction:
                "Write 3 short paragraphs: current standing, weakest area, and exactly what to do next.",
            }),
            maxTokens: 520,
          });

          return Response.json({ insight, source: "ai" });
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("AI progress insight failed", error);
          return Response.json(
            { error: error instanceof Error ? error.message : "Progress insight failed." },
            { status: 500 },
          );
        }
      },
    },
  },
});
