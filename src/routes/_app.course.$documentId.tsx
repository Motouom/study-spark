import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  ArrowLeft,
  BookOpen,
  CheckCircle2,
  CircleDot,
  Lock,
  ShieldCheck,
  Sparkles,
  XCircle,
} from "lucide-react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent, type CourseDocument } from "@/hooks/use-study-content";
import { useContentProtection } from "@/hooks/use-content-protection";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import {
  formatDuration,
  useStructuralProgress,
  type StructuralQuestionProgress,
  type StructuralQuestionStatus,
} from "@/hooks/use-structural-progress";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import remarkMath from "remark-math";
import rehypeKatex from "rehype-katex";
import "katex/dist/katex.min.css";

export const Route = createFileRoute("/_app/course/$documentId")({
  head: () => ({ meta: [{ title: "Course document — StudySpark" }] }),
  component: CourseDocumentPage,
});

function CourseDocumentPage() {
  const { documentId } = Route.useParams();
  const { profile } = useStudyProfile();
  const { user } = useSupabaseUser();
  const { documents, loading, error } = useStudyContent(profile);
  const document = documents.find((item) => item.id === documentId);
  const questionNumbers = extractQuestionNumbers(document?.markdownContent ?? "");
  const structuralProgress = useStructuralProgress(document?.id);
  useContentProtection(Boolean(document), document?.id);

  return (
    <>
      <PageHeader
        title={document?.title ?? "Course document"}
        description="Protected in-app study material"
      >
        <Button asChild variant="outline" size="sm">
          <Link to="/library">
            <ArrowLeft className="mr-1.5 h-4 w-4" />
            My topics
          </Link>
        </Button>
      </PageHeader>

      <div className="px-4 py-5 sm:px-6 md:px-10 md:py-8">
        {error && (
          <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Document could not be loaded: {error}
          </div>
        )}

        {loading && (
          <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
            Loading protected document...
          </div>
        )}

        {!loading && !document && (
          <div className="rounded-xl border border-border bg-card p-8 text-center">
            <BookOpen className="mx-auto h-8 w-8 text-muted-foreground" />
            <h2 className="mt-4 text-base font-medium">Document unavailable</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              This document is not published or does not match your current class, series, language,
              and subjects.
            </p>
          </div>
        )}

        {document &&
          (document.isLocked ? (
            <div className="mx-auto max-w-xl rounded-xl border border-border bg-card p-8 text-center">
              <div className="mx-auto flex h-12 w-12 items-center justify-center rounded-full bg-secondary">
                <Lock className="h-5 w-5" />
              </div>
              <h2 className="mt-4 font-display text-2xl">Premium paper</h2>
              <p className="mt-2 text-sm text-muted-foreground">
                This paper matches your class, series, and subjects, but it is locked on the Free
                plan. Free learners can open only the first preview papers.
              </p>
              <div className="mt-5 flex justify-center gap-2">
                <Button asChild>
                  <Link to="/pricing">
                    <Sparkles className="mr-1.5 h-4 w-4" />
                    Upgrade to Premium
                  </Link>
                </Button>
                <Button asChild variant="outline">
                  <Link to="/library">Back to papers</Link>
                </Button>
              </div>
            </div>
          ) : (
            <div className="grid min-w-0 gap-5 xl:grid-cols-[18rem_minmax(0,1fr)]">
              <QuestionTracker
                documentId={document.id}
                questionNumbers={questionNumbers}
                progress={structuralProgress.progress}
                savingKey={structuralProgress.savingKey}
                error={structuralProgress.error}
                onMark={structuralProgress.markQuestion}
              />
              <ProtectedMarkdown
                document={document}
                owner={profile?.name ?? user?.email ?? "StudySpark"}
                userId={user?.id ?? "anonymous"}
              />
            </div>
          ))}
      </div>
    </>
  );
}

function extractQuestionNumbers(markdown: string) {
  const found = new Set<number>();
  for (const match of markdown.matchAll(
    /(?:^|\n)\s*(?:#{1,6}\s*)?(?:[*_]{1,3})?Q(?:uestion)?\.?\s*(\d+)/gi,
  )) {
    found.add(Number(match[1]));
  }

  return [...found].filter(Number.isFinite).sort((a, b) => a - b);
}

function QuestionTracker({
  documentId,
  questionNumbers,
  progress,
  savingKey,
  error,
  onMark,
}: {
  documentId: string;
  questionNumbers: number[];
  progress: StructuralQuestionProgress[];
  savingKey: string | null;
  error: string | null;
  onMark: (
    documentId: string,
    questionNumber: number,
    status: StructuralQuestionStatus,
  ) => Promise<StructuralQuestionProgress>;
}) {
  const byQuestion = new Map(progress.map((item) => [item.questionNumber, item]));
  const totals = {
    started: progress.filter((item) => item.status === "started").length,
    passed: progress.filter((item) => item.status === "passed").length,
    failed: progress.filter((item) => item.status === "failed").length,
  };

  return (
    <aside className="flex max-h-none min-w-0 flex-col rounded-xl border border-border bg-card p-4 xl:sticky xl:top-5 xl:max-h-[calc(100dvh-8rem)]">
      <div className="flex items-start justify-between gap-3">
        <div>
          <h2 className="text-sm font-medium">Question progress</h2>
          <p className="mt-1 text-xs text-muted-foreground">Mark each structural question.</p>
        </div>
        <Badge variant="secondary">{questionNumbers.length}</Badge>
      </div>

      <div className="mt-4 grid grid-cols-3 gap-2 text-center text-xs">
        <MiniStat label="Started" value={totals.started} />
        <MiniStat label="Passed" value={totals.passed} />
        <MiniStat label="Failed" value={totals.failed} />
      </div>

      {error && (
        <div className="mt-4 rounded-lg border border-destructive/30 bg-destructive/10 p-2 text-xs text-destructive">
          {error}
        </div>
      )}

      {questionNumbers.length === 0 ? (
        <p className="mt-4 text-xs text-muted-foreground">
          No question numbers were detected. Use labels like Q1, Q2, Q3 in the uploaded paper.
        </p>
      ) : (
        <div className="mt-4 max-h-[24rem] min-h-0 flex-1 space-y-3 overflow-y-auto pr-1 xl:max-h-none">
          {questionNumbers.map((questionNumber) => {
            const status = byQuestion.get(questionNumber);
            const currentStatus = status?.status;
            const pending = savingKey === `${documentId}:${questionNumber}`;
            return (
              <div key={questionNumber} className="rounded-lg border border-border p-3">
                <div className="mb-2 flex items-center justify-between">
                  <span className="text-sm font-medium">Q{questionNumber}</span>
                  <StatusBadge status={currentStatus} />
                </div>
                <div className="mb-2 text-[11px] text-muted-foreground">
                  {status?.completedAt
                    ? `Completed in ${formatDuration(status.durationSeconds)}`
                    : status?.startedAt
                      ? `Started ${new Date(status.startedAt).toLocaleTimeString()}`
                      : "Timer begins when started"}
                </div>
                <div className="grid grid-cols-3 gap-1">
                  <MarkButton
                    label={pending && currentStatus === "started" ? "Saving" : "Started"}
                    active={currentStatus === "started"}
                    disabled={pending}
                    onClick={() => onMark(documentId, questionNumber, "started")}
                  />
                  <MarkButton
                    label={pending && currentStatus === "passed" ? "Saving" : "Passed"}
                    active={currentStatus === "passed"}
                    disabled={pending}
                    onClick={() => onMark(documentId, questionNumber, "passed")}
                  />
                  <MarkButton
                    label={pending && currentStatus === "failed" ? "Saving" : "Failed"}
                    active={currentStatus === "failed"}
                    disabled={pending}
                    onClick={() => onMark(documentId, questionNumber, "failed")}
                  />
                </div>
              </div>
            );
          })}
        </div>
      )}
    </aside>
  );
}

function MiniStat({ label, value }: { label: string; value: number }) {
  return (
    <div className="rounded-lg bg-secondary/50 px-2 py-2">
      <div className="font-display text-xl">{value}</div>
      <div className="text-muted-foreground">{label}</div>
    </div>
  );
}

function StatusBadge({ status }: { status?: StructuralQuestionStatus }) {
  if (status === "passed") {
    return (
      <span className="inline-flex items-center gap-1 text-xs text-success">
        <CheckCircle2 className="h-3.5 w-3.5" /> Passed
      </span>
    );
  }
  if (status === "failed") {
    return (
      <span className="inline-flex items-center gap-1 text-xs text-destructive">
        <XCircle className="h-3.5 w-3.5" /> Failed
      </span>
    );
  }
  if (status === "started") {
    return (
      <span className="inline-flex items-center gap-1 text-xs text-warning">
        <CircleDot className="h-3.5 w-3.5" /> Started
      </span>
    );
  }
  return <span className="text-xs text-muted-foreground">Not started</span>;
}

function MarkButton({
  label,
  active,
  disabled,
  onClick,
}: {
  label: string;
  active: boolean;
  disabled: boolean;
  onClick: () => Promise<StructuralQuestionProgress>;
}) {
  return (
    <button
      type="button"
      disabled={disabled}
      onClick={() => {
        onClick().catch(() => {
          // The hook stores the user-visible error and rolls back the optimistic state.
        });
      }}
      className={`min-h-10 rounded-md border px-2 py-2 text-xs transition-colors disabled:cursor-wait disabled:opacity-70 ${
        active
          ? "border-foreground bg-foreground text-background"
          : "border-border bg-background hover:bg-secondary"
      }`}
    >
      {label}
    </button>
  );
}

function ProtectedMarkdown({
  document,
  owner,
  userId,
}: {
  document: CourseDocument;
  owner: string;
  userId: string;
}) {
  const trace = `${owner} · ${userId.slice(0, 8)} · ${document.id.slice(0, 8)} · ${new Date().toLocaleDateString()}`;

  return (
    <article
      className="protected-content relative min-w-0 select-none overflow-hidden rounded-xl border border-border bg-card p-4 sm:p-5 md:p-8"
      onCopy={(event) => event.preventDefault()}
      onCut={(event) => event.preventDefault()}
      onContextMenu={(event) => event.preventDefault()}
    >
      <div className="pointer-events-none absolute inset-0 grid rotate-[-18deg] select-none place-items-center overflow-hidden opacity-[0.045]">
        <span className="whitespace-nowrap text-xl font-semibold text-foreground sm:text-3xl">
          {trace} · StudySpark protected material
        </span>
      </div>
      <div className="relative mb-6 flex flex-wrap items-center gap-2">
        <Badge variant="secondary">{document.subject}</Badge>
        <Badge variant="outline">{document.language}</Badge>
        <span className="inline-flex items-center gap-1 text-xs text-success">
          <ShieldCheck className="h-3.5 w-3.5" />
          Protected view
        </span>
      </div>
      <div className="protected-markdown relative font-serif text-[0.95rem] leading-7 sm:text-base">
        <ReactMarkdown
          remarkPlugins={[remarkGfm, remarkMath]}
          rehypePlugins={[rehypeKatex]}
          components={{
            h1: ({ children }) => (
              <h1 className="mb-4 font-display text-2xl font-semibold leading-tight sm:text-3xl">
                {children}
              </h1>
            ),
            h2: ({ children }) => (
              <h2 className="mb-3 mt-8 font-display text-xl font-semibold leading-tight sm:text-2xl">
                {children}
              </h2>
            ),
            h3: ({ children }) => (
              <h3 className="mb-3 mt-6 text-lg font-semibold leading-snug">{children}</h3>
            ),
            p: ({ children }) => <p className="my-4 leading-8">{children}</p>,
            strong: ({ children }) => <strong className="font-semibold">{children}</strong>,
            em: ({ children }) => <em className="italic">{children}</em>,
            blockquote: ({ children }) => (
              <blockquote className="my-5 border-l-4 border-border pl-5 text-muted-foreground">
                {children}
              </blockquote>
            ),
            hr: () => <hr className="my-7 border-border" />,
            ul: ({ children }) => <ul className="my-4 list-disc space-y-2 pl-6">{children}</ul>,
            ol: ({ children }) => <ol className="my-4 list-decimal space-y-2 pl-6">{children}</ol>,
            li: ({ children }) => <li className="leading-8">{children}</li>,
            table: ({ children }) => (
              <div className="my-5 overflow-x-auto rounded-lg border border-border">
                <table className="w-full min-w-[32rem] border-collapse text-sm">{children}</table>
              </div>
            ),
            th: ({ children }) => (
              <th className="border-b border-border bg-secondary/50 px-3 py-2 text-left font-semibold">
                {children}
              </th>
            ),
            td: ({ children }) => (
              <td className="border-b border-border px-3 py-2 align-top">{children}</td>
            ),
            code: ({ children }) => (
              <code className="rounded bg-secondary px-1.5 py-0.5 font-mono text-sm">
                {children}
              </code>
            ),
            pre: ({ children }) => (
              <pre className="my-5 overflow-x-auto rounded-lg border border-border bg-secondary/40 p-4 text-sm">
                {children}
              </pre>
            ),
            a: ({ children }) => (
              <span className="font-medium underline decoration-dotted underline-offset-4">
                {children}
              </span>
            ),
            img: ({ src, alt }) => (
              <span className="my-6 block rounded-lg border border-border bg-white p-4">
                <img
                  src={src ?? ""}
                  alt={alt ?? "Question diagram"}
                  draggable={false}
                  loading="lazy"
                  className="mx-auto max-h-[32rem] w-full max-w-3xl object-contain"
                />
                {alt ? (
                  <span className="mt-2 block text-center font-sans text-xs text-muted-foreground">
                    {alt}
                  </span>
                ) : null}
              </span>
            ),
          }}
        >
          {document.markdownContent}
        </ReactMarkdown>
      </div>
    </article>
  );
}
