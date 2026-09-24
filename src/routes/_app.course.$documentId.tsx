import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { track } from "@/lib/analytics";
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
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { usePaperStudyProgress, type PaperCheckpointType } from "@/hooks/use-paper-study-progress";
import {
  formatDuration,
  useStructuralProgress,
  type StructuralQuestionStatus,
} from "@/hooks/use-structural-progress";
import {
  useTopicUnderstandingProgress,
  type TopicUnderstandingStatus,
} from "@/hooks/use-topic-understanding-progress";
import { getScrollPercent, onContainerScroll, scrollToPercent } from "@/lib/scroll-progress";
import { slugifyHeading } from "@/components/ProtectedMarkdown";
import { useI18n } from "@/lib/i18n";
import { lazy, Suspense, useEffect, useMemo, useState } from "react";

const ProtectedMarkdown = lazy(() => import("@/components/ProtectedMarkdown"));

export const Route = createFileRoute("/_app/course/$documentId")({
  head: () => ({ meta: [{ title: "Course document — StudySpark" }] }),
  component: CourseDocumentPage,
});

function CourseDocumentPage() {
  const { documentId } = Route.useParams();
  const { t } = useI18n();
  const { profile, loaded: profileLoaded } = useStudyProfile();
  const { user } = useSupabaseUser();
  const content = useStudyContent(profile);
  const document = content.documents.find((item) => item.id === documentId);

  // Track once when the document is identified — not on every render
  useEffect(() => {
    if (!document) return;
    track({
      name: "paper_opened",
      props: {
        subject: document.subject,
        level: document.level,
        isLocked: document.isLocked,
      },
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [document?.id]);
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
    ? t("document.backCourses")
    : isTextbook
      ? t("document.backTopics")
      : isCheatsheet
        ? t("document.backCheatsheets")
        : t("document.backTopics");
  const kindLabel = isCourse
    ? t("document.kindCourse")
    : isTextbook
      ? t("document.kindTextbook")
      : isCheatsheet
        ? t("document.kindCheatsheet")
        : t("document.kindPaper");
  const progressKindLabel = isCourse
    ? "course"
    : isTextbook
      ? "textbook"
      : isCheatsheet
        ? "cheatsheet"
        : "paper";
  const [questionLocalError, setQuestionLocalError] = useState<string | null>(null);
  const [topicLocalError, setTopicLocalError] = useState<string | null>(null);
  const questionByNumber = useMemo(
    () => new Map(questionProgress.progress.map((item) => [item.questionNumber, item])),
    [questionProgress.progress],
  );
  const topics = useMemo(
    () =>
      document && (document.contentKind === "course" || document.contentKind === "cheatsheet")
        ? trackableTopics(
            document.markdownContent,
            document.title,
            document.contentKind === "cheatsheet",
          )
        : [],
    [document],
  );
  const topicByTitle = useMemo(
    () => new Map(topics.map((topic) => [topic.title, topic])),
    [topics],
  );

  async function markQuestion(questionNumber: number, status: StructuralQuestionStatus) {
    if (!document) return;
    setQuestionLocalError(null);
    try {
      const existing = questionByNumber.get(questionNumber);
      if (status !== "started" && !existing) {
        setQuestionLocalError(t("document.startQuestionFirst"));
        return;
      }
      await questionProgress.markQuestion(document.id, questionNumber, status);
    } catch (error) {
      setQuestionLocalError(
        error instanceof Error ? error.message : t("document.saveQuestionError"),
      );
    }
  }

  async function markTopic(topic: TrackableTopic, status: TopicUnderstandingStatus) {
    setTopicLocalError(null);
    try {
      await topicProgress.markTopic({
        topicKey: topic.key,
        topicTitle: topic.title,
        status,
      });
    } catch (error) {
      setTopicLocalError(error instanceof Error ? error.message : t("document.saveTopicError"));
    }
  }

  useContentProtection(Boolean(document && !document.isLocked), document?.id);

  if (pageLoading) {
    return <CourseDocumentSkeleton />;
  }

  return (
    <>
      <PageHeader title={document?.title ?? t("document.fallbackTitle")} description={kindLabel}>
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
            {t("document.loadError").replace("{error}", content.error)}
          </div>
        )}

        {content.loading && (
          <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
            {t("document.loading")}
          </div>
        )}

        {!content.loading && !document && (
          <div className="rounded-xl border border-border bg-card p-8 text-center">
            <BookOpen className="mx-auto h-8 w-8 text-muted-foreground" />
            <h2 className="mt-4 text-base font-medium">{t("document.unavailable")}</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              {t("document.unavailableDescription")}
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
                {isCourse
                  ? t("document.premiumCourse")
                  : isTextbook
                    ? t("document.premiumTextbook")
                    : t("document.premiumPaper")}
              </h2>
              <p className="mt-2 text-sm text-muted-foreground">
                {t("document.lockedDescription").replace(
                  "{kind}",
                  isCourse ? "course" : isTextbook ? "textbook" : "paper",
                )}
              </p>
              <div className="mt-5 flex justify-center gap-2">
                <Button asChild>
                  <Link to="/pricing">
                    <Sparkles className="mr-1.5 h-4 w-4" />
                    {t("app.upgradeToPremium")}
                  </Link>
                </Button>
                <Button asChild variant="outline">
                  <Link to={backTo}>
                    {t("document.backTo").replace("{label}", backLabel.toLowerCase())}
                  </Link>
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
              {document.contentKind === "paper" &&
                (questionProgress.error || questionLocalError) && (
                  <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
                    {questionLocalError ?? questionProgress.error}
                  </div>
                )}
              {(isCourse || isCheatsheet) && (
                <TopicUnderstandingPanel
                  isCheatsheet={isCheatsheet}
                  progress={topicProgress}
                  topicCount={topics.length}
                  localError={topicLocalError}
                />
              )}
              {isCourse && <CourseContents markdown={document.markdownContent} />}
              <ReportContentIssue
                documentId={document.id}
                isPaper={document.contentKind === "paper"}
              />
              <Suspense
                fallback={
                  <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
                    {t("document.preparing").replace("{kind}", kindLabel)}
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
                            status={questionByNumber.get(questionNumber)?.status ?? "not_started"}
                            saving={
                              questionProgress.savingKey === `${document.id}:${questionNumber}`
                            }
                            onMark={(status) => markQuestion(questionNumber, status)}
                          />
                        )
                      : undefined
                  }
                  renderTopicControls={
                    document.contentKind === "course" || document.contentKind === "cheatsheet"
                      ? (topicTitle) => {
                          const topic = topicByTitle.get(topicTitle);
                          if (!topic) return null;
                          const item = topicProgress.byTopic.get(topic.key);
                          return (
                            <InlineTopicUnderstanding
                              status={item?.status ?? "not_started"}
                              saving={topicProgress.savingKey === topic.key}
                              onMark={(status) => markTopic(topic, status)}
                            />
                          );
                        }
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

function ReportContentIssue({ documentId, isPaper }: { documentId: string; isPaper: boolean }) {
  const { t } = useI18n();
  const [open, setOpen] = useState(false);
  const [issueType, setIssueType] = useState("content_error");
  const [questionNumber, setQuestionNumber] = useState("");
  const [topicTitle, setTopicTitle] = useState("");
  const [body, setBody] = useState("");
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState<string | null>(null);

  async function submitReport(event: React.FormEvent) {
    event.preventDefault();
    if (!supabaseConfigured() || !supabase) {
      setMessage(t("document.reportNotConfigured"));
      return;
    }
    setSaving(true);
    setMessage(null);
    try {
      const parsedQuestion = questionNumber.trim() ? Number(questionNumber) : null;
      const { error } = await supabase.rpc("report_content_issue", {
        document_id: documentId,
        question_number: Number.isFinite(parsedQuestion) ? parsedQuestion : null,
        topic_title: topicTitle.trim() || null,
        issue_type: issueType,
        issue_body: body.trim(),
      });
      if (error) throw error;
      setBody("");
      setQuestionNumber("");
      setTopicTitle("");
      setOpen(false);
      setMessage(t("document.reportThanks"));
    } catch (error) {
      setMessage(error instanceof Error ? error.message : t("document.reportSendError"));
    } finally {
      setSaving(false);
    }
  }

  return (
    <section className="rounded-xl border border-border bg-card p-4 sm:p-5">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <h2 className="text-sm font-medium">{t("document.reportTitle")}</h2>
          <p className="mt-1 text-sm text-muted-foreground">{t("document.reportDescription")}</p>
        </div>
        <Button
          type="button"
          variant="outline"
          size="sm"
          onClick={() => setOpen((value) => !value)}
        >
          {open ? t("document.closeReport") : t("document.reportIssue")}
        </Button>
      </div>

      {message && (
        <div className="mt-3 rounded-lg border border-border bg-secondary/40 p-3 text-sm">
          {message}
        </div>
      )}

      {open && (
        <form onSubmit={submitReport} className="mt-4 grid gap-3">
          <div className="grid gap-3 sm:grid-cols-3">
            <label className="text-sm">
              <span className="mb-1.5 block text-xs font-medium text-muted-foreground">
                {t("document.issueType")}
              </span>
              <select
                value={issueType}
                onChange={(event) => setIssueType(event.target.value)}
                className="h-10 w-full rounded-md border border-border bg-background px-3 text-sm"
              >
                <option value="content_error">{t("document.issueContentError")}</option>
                <option value="formatting">{t("document.issueFormatting")}</option>
                <option value="wrong_metadata">{t("document.issueWrongMetadata")}</option>
                <option value="missing_solution">{t("document.issueMissingSolution")}</option>
                <option value="copyright">{t("document.issueCopyright")}</option>
                <option value="other">{t("document.issueOther")}</option>
              </select>
            </label>
            {isPaper && (
              <label className="text-sm">
                <span className="mb-1.5 block text-xs font-medium text-muted-foreground">
                  {t("document.questionLabel")}
                </span>
                <Input
                  inputMode="numeric"
                  value={questionNumber}
                  onChange={(event) => setQuestionNumber(event.target.value.replace(/\D/g, ""))}
                  placeholder={t("document.questionPlaceholder")}
                />
              </label>
            )}
            <label className="text-sm">
              <span className="mb-1.5 block text-xs font-medium text-muted-foreground">
                {t("document.topicSection")}
              </span>
              <Input
                value={topicTitle}
                onChange={(event) => setTopicTitle(event.target.value)}
                placeholder={t("document.optional")}
              />
            </label>
          </div>
          <Textarea
            required
            minLength={8}
            value={body}
            onChange={(event) => setBody(event.target.value)}
            className="min-h-24"
            placeholder={t("document.reportBodyPlaceholder")}
          />
          <div className="flex justify-end">
            <Button type="submit" disabled={saving || body.trim().length < 8}>
              {saving ? t("document.sending") : t("document.sendReport")}
            </Button>
          </div>
        </form>
      )}
    </section>
  );
}

function CourseContents({ markdown }: { markdown: string }) {
  const { t } = useI18n();
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
          <span className="text-sm font-medium">{t("document.courseContents")}</span>
          <Badge variant="secondary">
            {t("document.units").replace("{count}", String(units.length))}
          </Badge>
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
  const { t } = useI18n();
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
      aria-label={t("document.readingProgress")}
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

function InlineQuestionOutcome({
  status,
  saving,
  onMark,
}: {
  status: StructuralQuestionStatus | "not_started";
  saving: boolean;
  onMark: (status: StructuralQuestionStatus) => Promise<void>;
}) {
  const { t } = useI18n();
  const isStarted = status !== "not_started";

  return (
    <div className="flex w-fit max-w-full flex-col items-start gap-2 font-sans sm:ml-auto sm:w-auto sm:flex-row sm:items-center">
      <StatusBadge status={status} />
      <div className="grid grid-cols-3 gap-1.5 sm:flex">
        <OutcomeButton
          label={isStarted ? t("document.started") : t("document.start")}
          active={status === "started"}
          compact
          disabled={saving || isStarted}
          onClick={() => onMark("started")}
        />
        <OutcomeButton
          label={t("document.passed")}
          active={status === "passed"}
          compact
          disabled={saving || !isStarted}
          onClick={() => onMark("passed")}
        />
        <OutcomeButton
          label={t("document.failed")}
          active={status === "failed"}
          compact
          destructive
          disabled={saving || !isStarted}
          onClick={() => onMark("failed")}
        />
      </div>
    </div>
  );
}

function TopicUnderstandingPanel({
  isCheatsheet,
  progress,
  topicCount,
  localError,
}: {
  isCheatsheet: boolean;
  progress: ReturnType<typeof useTopicUnderstandingProgress>;
  topicCount: number;
  localError: string | null;
}) {
  const { t } = useI18n();
  if (topicCount === 0) return null;

  return (
    <section className="rounded-xl border border-border bg-card p-4 sm:p-5">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
        <div>
          <Badge variant="secondary">{t("document.topicUnderstanding")}</Badge>
          <h2 className="mt-3 text-base font-medium">
            {t("document.markEachTopic").replace(
              "{kind}",
              isCheatsheet ? "cheatsheet topic" : "course topic",
            )}
          </h2>
          <p className="mt-1 text-sm text-muted-foreground">
            {t("document.topicUnderstandingDescription")}
          </p>
        </div>
        <div className="grid grid-cols-3 gap-2 text-xs sm:min-w-64">
          <MiniMetric
            label={t("document.understood")}
            value={String(progress.summary.understood)}
          />
          <MiniMetric label={t("document.review")} value={String(progress.summary.review)} />
          <MiniMetric
            label={t("document.unmarked")}
            value={String(
              Math.max(0, topicCount - progress.summary.understood - progress.summary.review),
            )}
          />
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

function InlineTopicUnderstanding({
  status,
  saving,
  onMark,
}: {
  status: TopicUnderstandingStatus | "not_started";
  saving: boolean;
  onMark: (status: TopicUnderstandingStatus) => Promise<void>;
}) {
  const { t } = useI18n();
  return (
    <div className="flex w-fit max-w-full flex-col items-start gap-2 font-sans sm:ml-auto sm:w-auto sm:flex-row sm:items-center">
      <StatusBadge status={status} />
      <div className="grid grid-cols-2 gap-1.5 sm:flex">
        <OutcomeButton
          label={t("document.understood")}
          active={status === "understood"}
          compact
          disabled={saving}
          onClick={() => onMark("understood")}
        />
        <OutcomeButton
          label={t("document.needReview")}
          active={status === "review"}
          compact
          destructive
          disabled={saving}
          onClick={() => onMark("review")}
        />
      </div>
    </div>
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
  const { t } = useI18n();
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
        error instanceof Error ? error.message : t("document.saveCheckpointError"),
      );
    }
  }

  return (
    <section className="rounded-xl border border-border bg-card p-4 sm:p-5">
      <div className="flex flex-col gap-4 lg:flex-row lg:items-start lg:justify-between">
        <div className="min-w-0">
          <div className="flex flex-wrap items-center gap-2">
            <Badge variant="secondary">{t("document.studySession")}</Badge>
            {progress.summary.completed && (
              <Badge variant="outline" className="gap-1 text-success">
                <CheckCircle2 className="h-3.5 w-3.5" />
                {t("library.readThrough")}
              </Badge>
            )}
          </div>
          <h2 className="mt-3 text-base font-medium">
            {t("document.trackQuietly").replace("{kind}", kindLabel)}
          </h2>
          <p className="mt-1 text-sm text-muted-foreground">
            {t("document.trackDescription").replace("{title}", documentTitle)}
          </p>
        </div>
        <div className="grid grid-cols-2 gap-2 text-xs sm:grid-cols-4 lg:max-w-sm lg:shrink-0">
          <MiniMetric
            label={t("document.time")}
            value={formatDuration(progress.summary.durationSeconds)}
          />
          <MiniMetric label={t("document.read")} value={`${progress.summary.maxScrollPercent}%`} />
          <MiniMetric label={t("document.review")} value={String(progress.summary.reviewCount)} />
          <MiniMetric label={t("document.saved")} value={String(progress.summary.bookmarkCount)} />
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
          label={t("document.iUnderstandThis")}
          disabled={progress.saving}
          onClick={() => checkpoint("understood")}
        />
        <CheckpointButton
          icon={Clock}
          label={t("document.needReview")}
          disabled={progress.saving}
          onClick={() => checkpoint("review")}
        />
        <CheckpointButton
          icon={Bookmark}
          label={t("document.bookmark")}
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
          {t("document.resumeAt").replace("{percent}", String(progress.summary.maxScrollPercent))}
        </button>
      )}

      {checkpointError && <p className="mt-3 text-xs text-destructive">{checkpointError}</p>}
      {saved && (
        <p className="mt-3 text-xs text-success">
          {t("document.savedConfirmation").replace("{kind}", kindLabel)}
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
  const { t } = useI18n();
  const labelByStatus = {
    not_started: t("document.notMarked"),
    started: t("document.started"),
    passed: t("document.passed"),
    failed: t("document.failed"),
    understood: t("document.understood"),
    review: t("document.needReview"),
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
