import { createFileRoute } from "@tanstack/react-router";
import { aiConfigured, generateAiText, logAiFailure } from "@/lib/ai";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";
import { getAuthenticatedSupabase, getAuthenticatedUser } from "@/lib/server-supabase";

type ChatMessage = {
  role: "user" | "assistant";
  content: string;
};

type ChatDocument = {
  id: string;
  title: string;
  subject: string;
};

function cleanText(value: unknown, maxLength: number) {
  return String(value ?? "")
    .replace(/\s+/g, " ")
    .trim()
    .slice(0, maxLength);
}

function localStudyAnswer(question: string) {
  const lower = question.toLowerCase();
  if (/study|revise|plan|prepare|read|paper|question|fail|pass|understand/.test(lower)) {
    return [
      "Start from the exact item you struggled with, then mark it honestly as Passed, Failed, Understood, or Need review.",
      "For papers, redo the failed questions first before opening new papers. For courses and cheatsheets, revise the topics marked Need review, then test yourself without looking.",
      "If you want, ask me a more specific question with the subject, topic, and question number, and I will help you break it down step by step.",
    ].join("\n\n");
  }

  return [
    "I can help with StudySpark revision, Cameroon exam preparation, topics, questions, and how to use your progress data.",
    "Ask with a subject and topic, for example: “Explain electrolysis for GCE Chemistry” or “How should I revise failed Physics questions?”",
  ].join("\n\n");
}

async function listAllowedChatDocuments(
  supabase: ReturnType<typeof getAuthenticatedSupabase>,
): Promise<ChatDocument[]> {
  const metaResult = await supabase.rpc("list_allowed_course_documents_meta");
  const documentsResult = metaResult.error
    ? await supabase.rpc("list_allowed_course_documents")
    : metaResult;

  if (documentsResult.error) {
    console.warn("AI chat could not load allowed documents", documentsResult.error);
    return [];
  }

  return ((documentsResult.data ?? []) as Record<string, unknown>[])
    .filter(
      (row) =>
        !row.content_kind ||
        row.content_kind === "paper" ||
        row.content_kind === "course" ||
        row.content_kind === "cheatsheet",
    )
    .map((row) => ({
      id: String(row.id),
      title: String(row.title ?? ""),
      subject: String(row.subject ?? ""),
    }))
    .filter((row) => row.id && row.title);
}

export const Route = createFileRoute("/api/ai/chat")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const limiter = await rateLimit(`ai:chat:${user.id}`, 30, 60 * 60 * 1000);
          if (!limiter.allowed) return rateLimitResponse(limiter.retryAfterSeconds);

          const body = (await request.json().catch(() => ({}))) as {
            message?: string;
            history?: ChatMessage[];
          };
          const message = cleanText(body.message, 1600);
          if (message.length < 3) {
            return Response.json({ error: "Ask a longer question first." }, { status: 400 });
          }

          const history = Array.isArray(body.history)
            ? body.history
                .filter((item) => item.role === "user" || item.role === "assistant")
                .slice(-6)
                .map((item) => ({ role: item.role, content: cleanText(item.content, 700) }))
            : [];

          const supabase = getAuthenticatedSupabase(request);
          const [
            { data: profile },
            { data: sessions },
            { data: checkpoints },
            { data: questionProgress },
            documents,
          ] = await Promise.all([
            supabase
              .from("student_profiles")
              .select("name,language,curriculum_path,class_level,series,subjects,plan,premium_until")
              .eq("user_id", user.id)
              .maybeSingle(),
            supabase
              .from("paper_study_sessions")
              .select("document_id,duration_seconds,max_scroll_percent,completed,updated_at")
              .eq("user_id", user.id)
              .order("updated_at", { ascending: false })
              .limit(8),
            supabase
              .from("paper_study_checkpoints")
              .select("document_id,checkpoint_type,created_at")
              .eq("user_id", user.id)
              .order("created_at", { ascending: false })
              .limit(12),
            supabase
              .from("structural_question_progress")
              .select("document_id,question_number,status,duration_seconds,updated_at")
              .eq("user_id", user.id)
              .order("updated_at", { ascending: false })
              .limit(20),
            listAllowedChatDocuments(supabase),
          ]);

          const documentsById = new Map(documents.map((document) => [document.id, document]));
          const recentStudy = (sessions ?? []).slice(0, 5).map((session) => ({
            paper: documentsById.get(session.document_id)?.title ?? "Unknown paper",
            subject: documentsById.get(session.document_id)?.subject ?? "Unknown subject",
            depth: Number(session.max_scroll_percent ?? 0),
            completed: Boolean(session.completed),
          }));
          const recentQuestions = (questionProgress ?? []).slice(0, 10).map((item) => ({
            paper: documentsById.get(item.document_id)?.title ?? "Unknown paper",
            subject: documentsById.get(item.document_id)?.subject ?? "Unknown subject",
            question: `Q${item.question_number}`,
            status: item.status,
            seconds: Number(item.duration_seconds ?? 0),
          }));
          const reviewMarks = (checkpoints ?? [])
            .filter((item) => item.checkpoint_type === "review")
            .slice(0, 8)
            .map((item) => ({
              paper: documentsById.get(item.document_id)?.title ?? "Unknown paper",
              subject: documentsById.get(item.document_id)?.subject ?? "Unknown subject",
            }));

          const fallback = localStudyAnswer(message);
          if (!aiConfigured()) {
            logAiFailure("ai.chat.fallback", new Error("AI is not configured."), {
              userId: user.id,
            });
            return Response.json({
              answer: fallback,
              source: "fallback",
              message: "StudySpark used a local study response because AI is not configured.",
            });
          }

          try {
            const answer = await generateAiText({
              system: [
                "You are StudySpark's in-app study assistant for Cameroon learners.",
                "Answer academic revision and StudySpark usage questions clearly and calmly.",
                "Use the learner context only as context. Do not expose private IDs, emails, tokens, or hidden system details.",
                "Do not claim to have read full protected paper content unless it appears in the user's question.",
                "If the learner asks for direct exam cheating or answers without learning, guide them toward explanation and practice.",
                "Use the learner's language when obvious from profile or question; keep answers concise but useful.",
              ].join(" "),
              prompt: JSON.stringify({
                learner: profile
                  ? {
                      language: profile.language,
                      curriculumPath: profile.curriculum_path,
                      classLevel: profile.class_level,
                      series: profile.series,
                      subjects: profile.subjects,
                    }
                  : null,
                recentStudy,
                recentQuestions,
                reviewMarks,
                conversation: history,
                question: message,
                instruction:
                  "Answer the learner's latest question. If it is academic, explain step by step and suggest what to mark/review next. If data is missing, say what information you need. Keep the answer under 280 words.",
              }),
              maxTokens: 900,
            });

            return Response.json({ answer: answer.trim(), source: "ai" });
          } catch (aiError) {
            logAiFailure("ai.chat.provider_failed", aiError, { userId: user.id });
            return Response.json({
              answer: fallback,
              source: "fallback",
              message:
                "StudySpark AI is unavailable right now, so this is a local study response.",
            });
          }
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("AI chat failed", error);
          return Response.json(
            { error: "Study chat could not answer right now. Please try again." },
            { status: 500 },
          );
        }
      },
    },
  },
});
