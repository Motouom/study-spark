import { createFileRoute } from "@tanstack/react-router";
import { Bot, Loader2, Send, Sparkles, UserRound } from "lucide-react";
import { useMemo, useRef, useState } from "react";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Textarea } from "@/components/ui/textarea";
import { supabase } from "@/lib/supabase";
import { PageHeader } from "@/routes/_app";

export const Route = createFileRoute("/_app/chat")({
  component: StudyChatPage,
});

type ChatMessage = {
  id: string;
  role: "user" | "assistant";
  content: string;
  source?: "ai" | "fallback";
};

const STARTERS = [
  "Explain the topic I should revise first today.",
  "How should I correct my failed questions?",
  "Make a simple revision plan for Physics this evening.",
  "Explain a hard Chemistry formula step by step.",
];

async function authHeaders() {
  if (!supabase) throw new Error("Supabase is not configured.");
  const { data } = await supabase.auth.getSession();
  return {
    "Content-Type": "application/json",
    Authorization: `Bearer ${data.session?.access_token ?? ""}`,
  };
}

async function askStudyChat(message: string, history: ChatMessage[]) {
  const response = await fetch("/api/ai/chat", {
    method: "POST",
    headers: await authHeaders(),
    body: JSON.stringify({
      message,
      history: history
        .filter((item) => item.role === "user" || item.role === "assistant")
        .slice(-6)
        .map((item) => ({ role: item.role, content: item.content })),
    }),
  });
  const payload = (await response.json().catch(() => ({}))) as {
    answer?: string;
    source?: "ai" | "fallback";
    message?: string;
    error?: string;
  };
  if (!response.ok) throw new Error(payload.error ?? "Study chat failed.");
  return {
    answer: payload.answer ?? "I could not prepare an answer right now.",
    source: payload.source ?? "fallback",
    note: payload.message,
  };
}

function StudyChatPage() {
  const [messages, setMessages] = useState<ChatMessage[]>([
    {
      id: "welcome",
      role: "assistant",
      source: "ai",
      content:
        "Ask me about a topic, a failed question, a formula, or what to revise next. I will use your StudySpark progress where it helps.",
    },
  ]);
  const [input, setInput] = useState("");
  const [pending, setPending] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const inputRef = useRef<HTMLTextAreaElement | null>(null);

  const canSend = input.trim().length >= 3 && !pending;
  const sourceLabel = useMemo(() => {
    const last = [...messages].reverse().find((item) => item.role === "assistant" && item.source);
    if (!last?.source) return "Ready";
    return last.source === "ai" ? "AI ready" : "Local fallback";
  }, [messages]);

  async function sendMessage(value = input) {
    const question = value.trim();
    if (question.length < 3 || pending) return;

    const userMessage: ChatMessage = {
      id: crypto.randomUUID(),
      role: "user",
      content: question,
    };
    const nextMessages = [...messages, userMessage];
    setMessages(nextMessages);
    setInput("");
    setError(null);
    setPending(true);

    try {
      const result = await askStudyChat(question, nextMessages);
      setMessages((current) => [
        ...current,
        {
          id: crypto.randomUUID(),
          role: "assistant",
          content: result.note ? `${result.answer}\n\n${result.note}` : result.answer,
          source: result.source,
        },
      ]);
    } catch (err) {
      const message =
        err instanceof Error
          ? err.message
          : "Study chat could not answer right now. Please try again.";
      setError(message);
      setMessages((current) => [
        ...current,
        {
          id: crypto.randomUUID(),
          role: "assistant",
          source: "fallback",
          content:
            "I could not answer that from the AI service right now. Try again in a moment, or ask with the subject, topic, and question number so I can help more directly.",
        },
      ]);
    } finally {
      setPending(false);
      window.setTimeout(() => inputRef.current?.focus(), 0);
    }
  }

  return (
    <>
      <PageHeader
        title="Study chat"
        description="Ask StudySpark questions about topics, formulas, failed questions, and what to revise next."
      >
        <Badge variant={sourceLabel === "AI ready" ? "success" : "secondary"}>{sourceLabel}</Badge>
      </PageHeader>

      <div className="mx-auto flex min-h-[calc(100dvh-9rem)] w-full max-w-5xl flex-col px-4 py-4 sm:px-6 md:px-10">
        <section className="flex min-h-0 flex-1 flex-col rounded-lg border border-border bg-card">
          <div className="border-b border-border px-4 py-3">
            <div className="flex flex-wrap items-center gap-2">
              {STARTERS.map((starter) => (
                <button
                  key={starter}
                  type="button"
                  onClick={() => {
                    setInput(starter);
                    inputRef.current?.focus();
                  }}
                  className="rounded-full border border-border bg-background px-3 py-1.5 text-xs text-muted-foreground transition-colors hover:text-foreground"
                >
                  {starter}
                </button>
              ))}
            </div>
          </div>

          <div className="flex-1 space-y-4 overflow-y-auto px-4 py-4">
            {messages.map((message) => {
              const assistant = message.role === "assistant";
              return (
                <div
                  key={message.id}
                  className={`flex gap-3 ${assistant ? "justify-start" : "justify-end"}`}
                >
                  {assistant && (
                    <div className="mt-1 flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-secondary text-muted-foreground">
                      <Bot className="h-4 w-4" />
                    </div>
                  )}
                  <div
                    className={`max-w-[min(42rem,85%)] rounded-lg px-4 py-3 text-sm leading-relaxed ${
                      assistant
                        ? "border border-border bg-background text-foreground"
                        : "bg-primary text-primary-foreground"
                    }`}
                  >
                    <div className="whitespace-pre-wrap">{message.content}</div>
                    {assistant && message.source && (
                      <div className="mt-3 flex items-center gap-1.5 text-[11px] text-muted-foreground">
                        <Sparkles className="h-3 w-3" />
                        {message.source === "ai" ? "AI answer" : "Local fallback"}
                      </div>
                    )}
                  </div>
                  {!assistant && (
                    <div className="mt-1 flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-foreground text-background">
                      <UserRound className="h-4 w-4" />
                    </div>
                  )}
                </div>
              );
            })}
            {pending && (
              <div className="flex items-center gap-3 text-sm text-muted-foreground">
                <div className="flex h-8 w-8 items-center justify-center rounded-full bg-secondary">
                  <Loader2 className="h-4 w-4 animate-spin" />
                </div>
                StudySpark is thinking...
              </div>
            )}
          </div>

          {error && (
            <div className="border-t border-destructive/30 bg-destructive/10 px-4 py-2 text-sm text-destructive">
              {error}
            </div>
          )}

          <form
            className="border-t border-border p-3"
            onSubmit={(event) => {
              event.preventDefault();
              void sendMessage();
            }}
          >
            <div className="flex flex-col gap-2 sm:flex-row sm:items-end">
              <Textarea
                ref={inputRef}
                value={input}
                onChange={(event) => setInput(event.target.value.slice(0, 1600))}
                onKeyDown={(event) => {
                  if (event.key === "Enter" && !event.shiftKey) {
                    event.preventDefault();
                    void sendMessage();
                  }
                }}
                placeholder="Ask about a topic, formula, failed question, or revision plan..."
                className="max-h-40 min-h-20 resize-none"
              />
              <Button type="submit" disabled={!canSend} className="h-10 shrink-0">
                {pending ? <Loader2 className="h-4 w-4 animate-spin" /> : <Send className="h-4 w-4" />}
                Send
              </Button>
            </div>
            <p className="mt-2 text-xs text-muted-foreground">
              For best answers, include the subject, topic, and question number. Do not paste
              passwords or private payment details.
            </p>
          </form>
        </section>
      </div>
    </>
  );
}
