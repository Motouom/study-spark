import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  ArrowLeft,
  BookOpen,
  Bookmark,
  CheckCircle2,
  ChevronDown,
  Clock,
  ListChecks,
  Lock,
  PlayCircle,
  Sparkles,
  XCircle,
} from "lucide-react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import { useContentProtection } from "@/hooks/use-content-protection";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { supabaseConfigured } from "@/lib/supabase";
import { usePaperStudyProgress, type PaperCheckpointType } from "@/hooks/use-paper-study-progress";
import {
  countStructuralQuestions,
  formatDuration,
  useStructuralProgress,
  type StructuralQuestionStatus,
} from "@/hooks/use-structural-progress";
import { useTopicUnderstandingProgress } from "@/hooks/use-topic-understanding-progress";
import { getScrollPercent, onContainerScroll, scrollToPercent } from "@/lib/scroll-progress";
import { slugifyHeading } from "@/components/ProtectedMarkdown";
import { lazy, Suspense, useEffect, useMemo, useState } from "react";

const ProtectedMarkdown = lazy(() => import("@/components/ProtectedMarkdown"));

export const Route = createFileRoute("/_app/course/$documentId")({
  head: () => ({ meta: [{ title: "Course document — StudySpark" }] }),
  component: CourseDocumentPage,
});

function CourseDocumentPage() {
  const { documentId } = Route.useParams();
  const { profile, loaded: profileLoaded } = useStudyProfile();
  const { user } = useSupabaseUser();
  const content = useStudyContent(profile);
  const document = content.documents.find((item) => item.id === documentId);
  const studyProgress = usePaperStudyProgress(document?.id);
  const questionProgress = useStructuralProgress(document?.id);
  const topicProgress = useTopicUnderstandingProgress(document?.id);
  const pageLoading =
    supabaseConfigured() && (!profileLoaded || !content.loaded || content.loading);
  const isCourse = document?.contentKind === "course";
  const isTextbook = document?.contentKind === "textbook";
  const isCheatsheet = document?.contentKind === "cheatsheet";
  const backTo = isCourse
    ? "/courses"
    : isTextbook
      ? "/library"
      : isCheatsheet
        ? "/cheatsheets"
        : "/library";
  const backLabel = isCourse
    ? "My courses"
    : isTextbook
      ? "My topics"
      : isCheatsheet
        ? "My cheatsheets"
        : "My topics";
  const kindLabel = isCourse
    ? "Course lesson"
    : isTextbook
      ? "Textbook chapter"
      : isCheatsheet
        ? "Revision cheatsheet"
        : "Protected paper";
  const progressKindLabel = isCourse
    ? "course"
    : isTextbook
      ? "textbook"
      : isCheatsheet
      ? "cheatsheet"
      : "paper";
  const [questionLocalError, setQuestionLocalError] = useState<string | null>(null);
  const questionByNumber = useMemo(
    () => new Map(questionProgress.progress.map((item) => [item.questionNumber, item])),
    [questionProgress.progress],
  );

  async function markQuestion(questionNumber: number, status: StructuralQuestionStatus) {
    if (!document) return;
    setQuestionLocalError(null);
    try {
      const existing = questionByNumber.get(questionNumber);
      if (status !== "started" && !existing) {
        await questionProgress.markQuestion(document.id, questionNumber, "started");
      }
      await questionProgress.markQuestion(document.id, questionNumber, status);
    } catch (error) {
      setQuestionLocalError(
        error instanceof Error ? error.message : "Could not save question progress.",
      );
    }
  }

  useContentProtection(Boolean(document && !document.isLocked), document?.id);

  if (pageLoading) {
    return <CourseDocumentSkeleton />;
  }

  return (
    <>
      <PageHeader title={document?.title ?? "Course document"} description={kindLabel}>
        <Button asChild variant="outline" size="sm">
          <Link to={backTo}>
            <ArrowLeft className="mr-1.5 h-4 w-4" />
            {backLabel}
          </Link>
        </Button>
      </PageHeader>

      <div className="px-4 py-5 sm:px-6 md:px-10 md:py-8">
        {content.error && (
          <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Document could not be loaded: {content.error}
          </div>
        )}

        {content.loading && (
          <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
            Loading protected document...
          </div>
        )}

        {!content.loading && !document && (
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
              <h2 className="mt-4 font-display text-2xl">
                {isCourse ? "Premium course" : isTextbook ? "Premium textbook" : "Premium paper"}
              </h2>
              <p className="mt-2 text-sm text-muted-foreground">
                This {isCourse ? "course" : isTextbook ? "textbook" : "paper"} matches your class,
                series, and subjects, but it is locked on the Free plan. Free learners can open only
                the first preview papers.
              </p>
              <div className="mt-5 flex justify-center gap-2">
                <Button asChild>
                  <Link to="/pricing">
                    <Sparkles className="mr-1.5 h-4 w-4" />
                    Upgrade to Premium
                  </Link>
                </Button>
                <Button asChild variant="outline">
                  <Link to={backTo}>Back to {backLabel.toLowerCase()}</Link>
                </Button>
              </div>
            </div>
          ) : (
            <div className="min-w-0 space-y-4">
              <ReadingProgressBar />
              <StudyProgressPanel
                progress={studyProgress}
                documentTitle={document.title}
                kindLabel={progressKindLabel}
              />
              {document.contentKind === "paper" && (
                <QuestionOutcomeSummary
                  markdown={document.markdownContent}
                  progress={questionProgress}
                  localError={questionLocalError}
                />
              )}
              {(isCourse || isCheatsheet) && (
                <TopicUnderstandingPanel
                  markdown={document.markdownContent}
                  documentTitle={document.title}
                  isCheatsheet={isCheatsheet}
                  progress={topicProgress}
                />
              )}
              {isCourse && <CourseContents markdown={document.markdownContent} />}
              <Suspense
                fallback={
                  <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
                    Preparing protected {kindLabel}...
                  </div>
                }
              >
                <ProtectedMarkdown
                  document={document}
                  owner={profile?.name ?? user?.email ?? "StudySpark"}
                  userId={user?.id ?? "anonymous"}
                  renderQuestionControls={
                    document.contentKind === "paper"
                      ? (questionNumber) => (
                          <InlineQuestionOutcome
                            status={
                              questionByNumber.get(questionNumber)?.status ?? "not_started"
                            }
                            saving={questionProgress.savingKey === `${document.id}:${questionNumber}`}
                            onMark={(status) => markQuestion(questionNumber, status)}
                          />
                        )
                      : undefined
                  }
                />
              </Suspense>
            </div>
          ))}
      </div>
    </>
  );
}

function CourseContents({ markdown }: { markdown: string }) {
  const [open, setOpen] = useState(false);

  const units = useMemo(() => {
    const result: { unit: string; lessons: string[] }[] = [];
    let current: { unit: string; lessons: string[] } | null = null;
    for (const line of markdown.split("\n")) {
      const unitMatch = line.match(/^## (.+)$/);
      const lessonMatch = line.match(/^### (.+)$/);
      if (unitMatch) {
        const title = unitMatch[1].trim();
        if (/^(how to use this course|practice questions?)/i.test(title)) continue;
        current = { unit: title, lessons: [] };
        result.push(current);
      } else if (lessonMatch && current) {
        const title = lessonMatch[1].trim();
        if (/^answers?\b/i.test(title)) continue;
        current.lessons.push(title);
      }
    }
    return result;
  }, [markdown]);

  if (units.length === 0) return null;

  return (
    <section className="rounded-xl border border-border bg-card">
      <button
        type="button"
        onClick={() => setOpen((value) => !value)}
        className="flex w-full items-center justify-between gap-3 px-4 py-3 text-left"
        aria-expanded={open}
      >
        <div className="flex items-center gap-2">
          <ListChecks className="h-4 w-4 text-muted-foreground" />
          <span className="text-sm font-medium">Course contents</span>
          <Badge variant="secondary">{units.length} units</Badge>
        </div>
        <ChevronDown
          className={`h-4 w-4 text-muted-foreground transition-transform ${open ? "rotate-180" : ""}`}
        />
      </button>
      {open && (
        <div className="border-t border-border p-3">
          <ol className="space-y-3">
            {units.map((unit, index) => (
              <li key={unit.unit}>
                <a
                  href={`#${slugifyHeading(unit.unit)}`}
                  onClick={() => setOpen(false)}
                  className="flex items-start gap-2 text-sm font-medium hover:text-accent"
                >
                  <span className="mt-0.5 flex h-5 w-5 shrink-0 items-center justify-center rounded bg-secondary text-[11px]">
                    {index + 1}
                  </span>
                  {unit.unit}
                </a>
                {unit.lessons.length > 0 && (
                  <ul className="mt-1.5 space-y-1 border-l border-border pl-4">
                    {unit.lessons.map((lesson) => (
                      <li key={lesson}>
                        <a
                          href={`#${slugifyHeading(lesson)}`}
                          onClick={() => setOpen(false)}
                          className="block text-xs text-muted-foreground hover:text-accent"
                        >
                          {lesson}
                        </a>
                      </li>
                    ))}
                  </ul>
                )}
              </li>
            ))}
          </ol>
        </div>
      )}
    </section>
  );
}

type TrackableTopic = {
  key: string;
  title: string;
  href: string;
};

function trackableTopics(markdown: string, documentTitle: string, isCheatsheet: boolean) {
  const headings = [...markdown.matchAll(/^## (.+)$/gm)]
    .map((match) => match[1].trim())
    .filter((title) => !/^(how to use this course|practice questions?|answers?)$/i.test(title));

  const titles = headings.length > 0 ? headings : [documentTitle];
  return titles.map((title, index): TrackableTopic => {
    const slug = slugifyHeading(title) || `topic-${index + 1}`;
    return {
      key: `${index + 1}-${slug}`,
      title,
      href: headings.length > 0 || !isCheatsheet ? `#${slug}` : "#top",
    };
  });
}

function ReadingProgressBar() {
  const [percent, setPercent] = useState(0);

  useEffect(() => {
    const update = () => setPercent(getScrollPercent());
    update();
    // Content height changes as the markdown renders; re-measure briefly.
    const interval = window.setInterval(update, 1000);
    const removeScrollListener = onContainerScroll(update);
    window.addEventListener("resize", update);
    return () => {
      window.clearInterval(interval);
      removeScrollListener();
      window.removeEventListener("resize", update);
    };
  }, []);

  return (
    <div
      className="sticky top-0 z-20 -mx-1 h-1.5 overflow-hidden rounded-full bg-secondary"
      role="progressbar"
      aria-label="Reading progress"
      aria-valuenow={percent}
      aria-valuemin={0}
      aria-valuemax={100}
    >
      <div
        className="h-full rounded-full bg-accent transition-[width] duration-150"
        style={{ width: `${percent}%` }}
      />
    </div>
  );
}

function QuestionOutcomeSummary({
  markdown,
  progress,
  localError,
}: {
  markdown: string;
  progress: ReturnType<typeof useStructuralProgress>;
  localError: string | null;
}) {
  const questionCount = countStructuralQuestions(markdown);
  const unmarked = Math.max(0, questionCount - progress.summary.passed - progress.summary.failed);

  if (questionCount === 0) return null;

  return (
    <section className="rounded-xl border border-border bg-card p-3 sm:p-4">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <div className="flex flex-wrap items-center gap-2">
            <Badge variant="secondary">Question outcomes</Badge>
            <span className="text-sm text-muted-foreground">
              Mark each question beside its own Q number.
            </span>
          </div>
          <p className="mt-2 text-xs text-muted-foreground">
            Passed and failed marks drive your progress and AI learning path.
          </p>
        </div>
        <div className="grid grid-cols-3 gap-2 text-xs sm:min-w-72">
          <MiniMetric label="Passed" value={String(progress.summary.passed)} />
          <MiniMetric label="Failed" value={String(progress.summary.failed)} />
          <MiniMetric label="Unmarked" value={String(unmarked)} />
        </div>
      </div>

      {(progress.error || localError) && (
        <div className="mt-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          {localError ?? progress.error}
        </div>
      )}
    </section>
  );
}

function InlineQuestionOutcome({
  status,
  saving,
  onMark,
}: {
  status: StructuralQuestionStatus | "not_started";
  saving: boolean;
  onMark: (status: StructuralQuestionStatus) => Promise<void>;
}) {
  return (
    <div className="flex w-full flex-col gap-2 font-sans sm:ml-auto sm:w-auto sm:flex-row sm:items-center">
      <StatusBadge status={status} />
      <div className="grid grid-cols-2 gap-1.5 sm:flex">
        <OutcomeButton
          label="Passed"
          active={status === "passed"}
          compact
          disabled={saving}
          onClick={() => onMark("passed")}
        />
        <OutcomeButton
          label="Failed"
          active={status === "failed"}
          compact
          destructive
          disabled={saving}
          onClick={() => onMark("failed")}
        />
      </div>
    </div>
  );
}

function TopicUnderstandingPanel({
  markdown,
  documentTitle,
  isCheatsheet,
  progress,
}: {
  markdown: string;
  documentTitle: string;
  isCheatsheet: boolean;
  progress: ReturnType<typeof useTopicUnderstandingProgress>;
}) {
  const [localError, setLocalError] = useState<string | null>(null);
  const topics = useMemo(
    () => trackableTopics(markdown, documentTitle, isCheatsheet),
    [documentTitle, isCheatsheet, markdown],
  );

  async function mark(topic: TrackableTopic, status: "understood" | "review") {
    setLocalError(null);
    try {
      await progress.markTopic({
        topicKey: topic.key,
        topicTitle: topic.title,
        status,
      });
    } catch (error) {
      setLocalError(error instanceof Error ? error.message : "Could not save topic progress.");
    }
  }

  if (topics.length === 0) return null;

  return (
    <section className="rounded-xl border border-border bg-card p-4 sm:p-5">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
        <div>
          <Badge variant="secondary">Topic understanding</Badge>
          <h2 className="mt-3 text-base font-medium">
            Mark each {isCheatsheet ? "cheatsheet topic" : "course topic"}
          </h2>
          <p className="mt-1 text-sm text-muted-foreground">
            Use this to separate topics you understand from topics that need revision.
          </p>
        </div>
        <div className="grid grid-cols-2 gap-2 text-xs sm:min-w-44">
          <MiniMetric label="Understood" value={String(progress.summary.understood)} />
          <MiniMetric label="Review" value={String(progress.summary.review)} />
        </div>
      </div>

      {(progress.error || localError) && (
        <div className="mt-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          {localError ?? progress.error}
        </div>
      )}

      <div className="mt-4 grid gap-3 md:grid-cols-2">
        {topics.map((topic) => {
          const item = progress.byTopic.get(topic.key);
          const saving = progress.savingKey === topic.key;
          return (
            <div key={topic.key} className="rounded-lg border border-border bg-background p-3">
              <div className="flex items-start justify-between gap-3">
                <a href={topic.href} className="min-w-0 text-sm font-medium hover:text-accent">
                  {topic.title}
                </a>
                {item && <StatusBadge status={item.status} />}
              </div>
              <div className="mt-3 grid grid-cols-2 gap-2">
                <OutcomeButton
                  label="Understood"
                  active={item?.status === "understood"}
                  disabled={saving}
                  onClick={() => mark(topic, "understood")}
                />
                <OutcomeButton
                  label="Need review"
                  active={item?.status === "review"}
                  destructive
                  disabled={saving}
                  onClick={() => mark(topic, "review")}
                />
              </div>
            </div>
          );
        })}
      </div>
    </section>
  );
}

function StudyProgressPanel({
  progress,
  documentTitle,
  kindLabel,
}: {
  progress: ReturnType<typeof usePaperStudyProgress>;
  documentTitle: string;
  kindLabel: string;
}) {
  const [saved, setSaved] = useState(false);
  const [checkpointError, setCheckpointError] = useState<string | null>(null);

  async function checkpoint(type: PaperCheckpointType) {
    setSaved(false);
    setCheckpointError(null);
    try {
      await progress.addCheckpoint(type);
      setSaved(true);
      window.setTimeout(() => setSaved(false), 4000);
    } catch (error) {
      setCheckpointError(
        error instanceof Error ? error.message : "Could not save this checkpoint.",
      );
    }
  }

  return (
    <section className="rounded-xl border border-border bg-card p-4 sm:p-5">
      <div className="flex flex-col gap-4 lg:flex-row lg:items-start lg:justify-between">
        <div className="min-w-0">
          <div className="flex flex-wrap items-center gap-2">
            <Badge variant="secondary">Study session</Badge>
            {progress.summary.completed && (
              <Badge variant="outline" className="gap-1 text-success">
                <CheckCircle2 className="h-3.5 w-3.5" />
                Read through
              </Badge>
            )}
          </div>
          <h2 className="mt-3 text-base font-medium">Track this {kindLabel} quietly</h2>
          <p className="mt-1 text-sm text-muted-foreground">
            StudySpark tracks reading time, scroll depth, and useful checkpoints for {documentTitle}
            .
          </p>
        </div>
        <div className="grid grid-cols-2 gap-2 text-xs sm:grid-cols-4 lg:max-w-sm lg:shrink-0">
          <MiniMetric label="Time" value={formatDuration(progress.summary.durationSeconds)} />
          <MiniMetric label="Read" value={`${progress.summary.maxScrollPercent}%`} />
          <MiniMetric label="Review" value={String(progress.summary.reviewCount)} />
          <MiniMetric label="Saved" value={String(progress.summary.bookmarkCount)} />
        </div>
      </div>

      {progress.error && (
        <div className="mt-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          {progress.error}
        </div>
      )}

      <div className="mt-4 grid gap-2 sm:grid-cols-3">
        <CheckpointButton
          icon={CheckCircle2}
          label="I understand this"
          disabled={progress.saving}
          onClick={() => checkpoint("understood")}
        />
        <CheckpointButton
          icon={Clock}
          label="Need review"
          disabled={progress.saving}
          onClick={() => checkpoint("review")}
        />
        <CheckpointButton
          icon={Bookmark}
          label="Bookmark"
          disabled={progress.saving}
          onClick={() => checkpoint("bookmark")}
        />
      </div>

      {!progress.summary.completed && progress.summary.maxScrollPercent > 5 && (
        <button
          type="button"
          onClick={() => scrollToPercent(progress.summary.maxScrollPercent)}
          className="mt-3 inline-flex items-center gap-1.5 text-xs font-medium text-accent hover:underline"
        >
          <PlayCircle className="h-3.5 w-3.5" />
          Resume at {progress.summary.maxScrollPercent}%
        </button>
      )}

      {checkpointError && <p className="mt-3 text-xs text-destructive">{checkpointError}</p>}
      {saved && (
        <p className="mt-3 text-xs text-success">
          Saved. This {kindLabel} now counts toward progress.
        </p>
      )}
    </section>
  );
}

function MiniMetric({ label, value }: { label: string; value: string }) {
  return (
    <div className="rounded-lg bg-secondary/50 px-3 py-2">
      <div className="text-muted-foreground">{label}</div>
      <div className="mt-1 font-medium">{value}</div>
    </div>
  );
}

function CheckpointButton({
  icon: Icon,
  label,
  disabled,
  onClick,
}: {
  icon: typeof CheckCircle2;
  label: string;
  disabled: boolean;
  onClick: () => Promise<void>;
}) {
  return (
    <button
      type="button"
      disabled={disabled}
      onClick={() => void onClick()}
      className="flex min-h-11 items-center justify-center gap-2 rounded-md border border-border bg-background px-3 py-2 text-sm font-medium transition-colors hover:bg-secondary disabled:cursor-not-allowed disabled:opacity-60"
    >
      <Icon className="h-4 w-4" />
      {label}
    </button>
  );
}

function OutcomeButton({
  label,
  active,
  destructive = false,
  compact = false,
  disabled,
  onClick,
}: {
  label: string;
  active: boolean;
  destructive?: boolean;
  compact?: boolean;
  disabled: boolean;
  onClick: () => Promise<void>;
}) {
  return (
    <button
      type="button"
      disabled={disabled}
      onClick={() => void onClick()}
      className={`flex items-center justify-center gap-2 rounded-md border font-medium transition-colors disabled:cursor-not-allowed disabled:opacity-60 ${
        compact ? "min-h-8 px-2.5 py-1 text-xs" : "min-h-10 px-3 py-2 text-sm"
      } ${
        active
          ? destructive
            ? "border-destructive bg-destructive text-destructive-foreground"
            : "border-success bg-success text-success-foreground"
          : "border-border bg-card hover:bg-secondary"
      }`}
    >
      {active ? (
        destructive ? (
          <XCircle className="h-4 w-4" />
        ) : (
          <CheckCircle2 className="h-4 w-4" />
        )
      ) : null}
      {label}
    </button>
  );
}

function StatusBadge({
  status,
}: {
  status: "not_started" | "started" | "passed" | "failed" | "understood" | "review";
}) {
  const labelByStatus = {
    not_started: "Not marked",
    started: "Started",
    passed: "Passed",
    failed: "Failed",
    understood: "Understood",
    review: "Need review",
  };
  const className =
    status === "passed" || status === "understood"
      ? "text-success"
      : status === "failed" || status === "review"
        ? "text-destructive"
        : "text-muted-foreground";

  return (
    <Badge variant="outline" className={className}>
      {labelByStatus[status]}
    </Badge>
  );
}

function CourseDocumentSkeleton() {
  return (
    <div className="space-y-6 px-4 py-5 sm:px-6 md:px-10 md:py-8">
      <div className="h-10 w-full max-w-2xl animate-pulse rounded bg-secondary" />
      <div className="h-5 w-60 animate-pulse rounded bg-secondary" />
      <div className="h-11 w-32 animate-pulse rounded-md bg-secondary" />
      <div className="space-y-4 rounded-xl border border-border bg-card p-5">
        <div className="h-6 w-3/4 animate-pulse rounded bg-secondary" />
        <div className="h-4 w-full animate-pulse rounded bg-secondary" />
        <div className="h-4 w-full animate-pulse rounded bg-secondary" />
        <div className="h-4 w-5/6 animate-pulse rounded bg-secondary" />
        <div className="h-56 animate-pulse rounded bg-secondary" />
      </div>
    </div>
  );
}
