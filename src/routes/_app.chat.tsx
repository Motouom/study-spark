import { createFileRoute } from "@tanstack/react-router";
import { Bot, Loader2, Send, Sparkles, UserRound } from "lucide-react";
import { useEffect, useRef, useState } from "react";
import { Button } from "@/components/ui/button";
import { Textarea } from "@/components/ui/textarea";
import { normalizeLegacyLatex } from "@/components/ProtectedMarkdown";
import { supabase } from "@/lib/supabase";
import { PageHeader } from "@/routes/_app";
import rehypeKatex from "rehype-katex";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import remarkMath from "remark-math";

export const Route = createFileRoute("/_app/chat")({
  component: StudyChatPage,
});

type ChatMessage = {
  id: string;
  role: "user" | "assistant";
  content: string;
  source?: "ai" | "fallback";
};

const CHAT_HISTORY_KEY = "studyspark.study-chat.history.v1";
const CHAT_HISTORY_LIMIT = 10;

function limitChatHistory(messages: ChatMessage[]) {
  return messages.slice(-CHAT_HISTORY_LIMIT);
}

function loadChatHistory() {
  if (typeof window === "undefined") return [];
  try {
    const stored = window.localStorage.getItem(CHAT_HISTORY_KEY);
    if (!stored) return [];
    const parsed = JSON.parse(stored) as ChatMessage[];
    if (!Array.isArray(parsed)) return [];
    return limitChatHistory(
      parsed.filter(
        (message) =>
          typeof message?.id === "string" &&
          (message.role === "user" || message.role === "assistant") &&
          typeof message.content === "string",
      ),
    );
  } catch {
    return [];
  }
}

function StudyChatMarkdown({ children }: { children: string }) {
  return (
    <div className="chat-markdown min-w-0 text-sm leading-relaxed">
      <ReactMarkdown
        remarkPlugins={[remarkGfm, remarkMath]}
        rehypePlugins={[rehypeKatex]}
        components={{
          h1: ({ children: content }) => (
            <h1 className="mb-3 mt-1 text-lg font-semibold leading-tight">{content}</h1>
          ),
          h2: ({ children: content }) => (
            <h2 className="mb-2 mt-4 text-base font-semibold leading-tight">{content}</h2>
          ),
          h3: ({ children: content }) => (
            <h3 className="mb-2 mt-4 text-sm font-semibold leading-tight">{content}</h3>
          ),
          p: ({ children: content }) => <p className="my-2 leading-relaxed">{content}</p>,
          ul: ({ children: content }) => (
            <ul className="my-2 list-disc space-y-1 pl-5">{content}</ul>
          ),
          ol: ({ children: content }) => (
            <ol className="my-2 list-decimal space-y-1 pl-5">{content}</ol>
          ),
          li: ({ children: content }) => <li className="leading-relaxed">{content}</li>,
          code: ({ children: content }) => (
            <code className="rounded bg-secondary px-1.5 py-0.5 font-mono text-[0.85em]">
              {content}
            </code>
          ),
          pre: ({ children: content }) => (
            <pre className="my-3 overflow-x-auto rounded-md border border-border bg-secondary/50 p-3 text-xs">
              {content}
            </pre>
          ),
          table: ({ children: content }) => (
            <div className="my-3 overflow-x-auto rounded-md border border-border">
              <table className="w-full min-w-[28rem] border-collapse text-xs">{content}</table>
            </div>
          ),
          th: ({ children: content }) => (
            <th className="border-b border-border bg-secondary/60 px-2 py-1.5 text-left font-semibold">
              {content}
            </th>
          ),
          td: ({ children: content }) => (
            <td className="border-b border-border px-2 py-1.5 align-top">{content}</td>
          ),
        }}
      >
        {normalizeLegacyLatex(children)}
      </ReactMarkdown>
    </div>
  );
}

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
  const [messages, setMessages] = useState<ChatMessage[]>(() => loadChatHistory());
  const [input, setInput] = useState("");
  const [pending, setPending] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const inputRef = useRef<HTMLTextAreaElement | null>(null);

  const canSend = input.trim().length >= 3 && !pending;

  useEffect(() => {
    window.localStorage.setItem(CHAT_HISTORY_KEY, JSON.stringify(limitChatHistory(messages)));
  }, [messages]);

  async function sendMessage(value = input) {
    const question = value.trim();
    if (question.length < 3 || pending) return;

    const userMessage: ChatMessage = {
      id: crypto.randomUUID(),
      role: "user",
      content: question,
    };
    const nextMessages = limitChatHistory([...messages, userMessage]);
    setMessages(nextMessages);
    setInput("");
    setError(null);
    setPending(true);

    try {
      const result = await askStudyChat(question, nextMessages);
      setMessages((current) =>
        limitChatHistory([
          ...current,
          {
            id: crypto.randomUUID(),
            role: "assistant",
            content: result.note ? `${result.answer}\n\n${result.note}` : result.answer,
            source: result.source,
          },
        ]),
      );
    } catch (err) {
      const message =
        err instanceof Error
          ? err.message
          : "Study chat could not answer right now. Please try again.";
      setError(message);
      setMessages((current) =>
        limitChatHistory([
          ...current,
          {
            id: crypto.randomUUID(),
            role: "assistant",
            source: "fallback",
            content:
              "I could not answer that from the AI service right now. Try again in a moment, or ask with the subject, topic, and question number so I can help more directly.",
          },
        ]),
      );
    } finally {
      setPending(false);
      window.setTimeout(() => inputRef.current?.focus(), 0);
    }
  }

  return (
    <>
      <PageHeader title="Study chat" />

      <div className="mx-auto flex min-h-[calc(100dvh-9rem)] w-full max-w-5xl flex-col px-4 py-4 sm:px-6 md:px-10">
        <section className="flex min-h-0 flex-1 flex-col rounded-lg border border-border bg-card">
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
                    {assistant ? (
                      <StudyChatMarkdown>{message.content}</StudyChatMarkdown>
                    ) : (
                      <div className="whitespace-pre-wrap">{message.content}</div>
                    )}
                    {assistant && message.source && (
                      <div className="mt-3 flex items-center gap-1.5 text-[11px] text-muted-foreground">
                        <Sparkles className="h-3 w-3" />
                        {message.source === "ai" ? "AI answer" : "StudySpark answer"}
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
          </form>
        </section>
      </div>
    </>
  );
}
