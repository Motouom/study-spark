import { createFileRoute } from "@tanstack/react-router";
import {
  aiConfigured,
  fallbackLearningPath,
  generateAiText,
  parseAiLearningPath,
} from "@/lib/ai";
import { getAuthenticatedSupabase, getAuthenticatedUser } from "@/lib/server-supabase";

export const Route = createFileRoute("/api/ai/learning-path")({
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
              .select("id,title,subject,level,class_levels,series,status")
              .eq("status", "published"),
          ]);

          const profileSubjects = new Set((profile?.subjects ?? []) as string[]);
          const matchingDocuments = (documents ?? []).filter(
            (document) =>
              profileSubjects.size === 0 || profileSubjects.has(String(document.subject)),
          );
          const startedDocumentIds = new Set((progress ?? []).map((item) => item.document_id));
          const unfinishedPapers = matchingDocuments
            .filter((document) => startedDocumentIds.has(document.id))
            .slice(0, 4)
            .map((document) => String(document.title));
          const nextPapers = matchingDocuments
            .filter((document) => !startedDocumentIds.has(document.id))
            .slice(0, 5)
            .map((document) => String(document.title));
          const subjectFailures = new Map<string, number>();
          for (const item of progress ?? []) {
            if (item.status !== "failed") continue;
            const document = matchingDocuments.find((candidate) => candidate.id === item.document_id);
            if (!document) continue;
            subjectFailures.set(
              String(document.subject),
              (subjectFailures.get(String(document.subject)) ?? 0) + 1,
            );
          }
          const weakestSubjects = [...subjectFailures.entries()]
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
                recentProgress: (progress ?? []).slice(0, 30),
                instruction:
                  "Return JSON in this exact shape: {\"days\":[{\"day\":1,\"title\":\"short action title\",\"paper\":\"one supplied paper title or Progress dashboard\",\"target\":\"specific question-count or review target\",\"focus\":\"specific revision focus\"}]}. Create exactly 7 days. Do not use Markdown tables.",
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
