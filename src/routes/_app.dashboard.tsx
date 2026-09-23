import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  BookOpen,
  Flame,
  Target,
  TrendingUp,
  Sparkles,
  FileText,
  Lock,
  PlayCircle,
  CheckCircle2,
  Bookmark,
} from "lucide-react";
import { lazy, Suspense, useMemo } from "react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import { countStructuralQuestions, useStructuralProgress } from "@/hooks/use-structural-progress";
import { useTopicUnderstandingOverview } from "@/hooks/use-topic-understanding-progress";
import { supabaseConfigured } from "@/lib/supabase";
import { isPremiumActive } from "@/lib/premium";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";
import { useUnifiedStreak } from "@/hooks/use-unified-streak";
import { useI18n } from "@/lib/i18n";

const PremiumDashboardCharts = lazy(() => import("@/components/PremiumDashboardCharts"));

function sameLocalDay(a: Date, b: Date) {
  return (
    a.getFullYear() === b.getFullYear() &&
    a.getMonth() === b.getMonth() &&
    a.getDate() === b.getDate()
  );
}

function countTrackableTopics(markdown: string | null | undefined) {
  if (!markdown) return 0;
  const headings = [...markdown.matchAll(/^## (.+)$/gm)]
    .map((match) => match[1].trim())
    .filter((title) => !/^(how to use this course|practice questions?|answers?)$/i.test(title));
  return Math.max(1, headings.length);
}

function DailyGoalRing({ percent }: { percent: number }) {
  const { t } = useI18n();
  const radius = 26;
  const circumference = 2 * Math.PI * radius;
  const dash = (percent / 100) * circumference;
  return (
    <div className="flex items-center gap-3 rounded-xl border border-border bg-background/70 px-4 py-3">
      <svg
        width="64"
        height="64"
        viewBox="0 0 64 64"
        className="-rotate-90"
        role="img"
        aria-label={`${percent}% ${t("dashboard.dailyGoal")}`}
      >
        <circle
          cx="32"
          cy="32"
          r={radius}
          fill="none"
          stroke="currentColor"
          strokeWidth="6"
          className="text-secondary"
        />
        <circle
          cx="32"
          cy="32"
          r={radius}
          fill="none"
          strokeWidth="6"
          strokeLinecap="round"
          strokeDasharray={`${dash} ${circumference}`}
          className="text-accent transition-[stroke-dasharray] duration-500"
        />
      </svg>
      <div>
        <div className="text-xs text-muted-foreground">{t("dashboard.dailyGoal")}</div>
        <div className="font-display text-lg text-foreground">{percent}%</div>
        <div className="text-[11px] text-muted-foreground">{t("dashboard.dailyGoalHint")}</div>
      </div>
    </div>
  );
}

export const Route = createFileRoute("/_app/dashboard")({
  head: () => ({ meta: [{ title: "Dashboard — StudySpark" }] }),
  component: Dashboard,
});

function Stat({
  icon: Icon,
  label,
  value,
  hint,
  tone = "default",
}: {
  icon: typeof Flame;
  label: string;
  value: string;
  hint?: string;
  tone?: "default" | "accent" | "success";
}) {
  const toneCls =
    tone === "accent"
      ? "text-accent"
      : tone === "success"
        ? "text-success"
        : "text-muted-foreground";
  return (
    <div className="rounded-xl border border-border bg-card p-5">
      <div className={`flex items-center gap-2 text-xs ${toneCls}`}>
        <Icon className="h-4 w-4" />
        {label}
      </div>
      <div className="mt-2 font-display text-3xl text-foreground">{value}</div>
      {hint && <div className="mt-1 text-xs text-muted-foreground">{hint}</div>}
    </div>
  );
}

function Dashboard() {
  const { t } = useI18n();
  const { profile: savedProfile, loaded: profileLoaded } = useStudyProfile();
  const readingProgress = usePaperStudyOverview();
  const structuralProgress = useStructuralProgress();
  const topicProgress = useTopicUnderstandingOverview();
  const { currentStreak } = useUnifiedStreak();
  const useRemoteOnly = supabaseConfigured();
  const effectiveProfile = savedProfile;
  const content = useStudyContent(savedProfile);
  const availablePapers = content.documents;
  const documentsById = useMemo(
    () => new Map(availablePapers.map((document) => [document.id, document])),
    [availablePapers],
  );

  // Best question-passage percentage per paper (only passed questions count;
  // failed/started questions do not contribute to progress).
  const bestPercentByDoc = useMemo(() => {
    const map = new Map<string, number>();
    for (const document of availablePapers) {
      const totalQuestions = countStructuralQuestions(document.markdownContent);
      const passed = structuralProgress.progress.filter(
        (item) => item.documentId === document.id && item.status === "passed",
      ).length;
      map.set(document.id, totalQuestions > 0 ? Math.round((passed / totalQuestions) * 100) : 0);
    }
    return map;
  }, [availablePapers, structuralProgress.progress]);

  // "Continue where you left off": the most recently touched unfinished
  // unlocked paper, showing its best depth; otherwise the first unlocked paper.
  // Only papers are featured here — courses and cheatsheets live on their own pages.
  const papers = useMemo(
    () => availablePapers.filter((document) => document.contentKind === "paper"),
    [availablePapers],
  );
  const continuePaper = useMemo(() => {
    const unfinished = readingProgress.sessions.find((session) => {
      const document = documentsById.get(session.documentId);
      return (
        document &&
        document.contentKind === "paper" &&
        document.isLocked === false &&
        (bestPercentByDoc.get(session.documentId) ?? 0) < 85
      );
    });
    if (unfinished) {
      return {
        document: documentsById.get(unfinished.documentId) ?? null,
        resumePercent: bestPercentByDoc.get(unfinished.documentId) ?? 0,
      };
    }
    const firstUnlocked = papers.find((document) => !document.isLocked) ?? null;
    return { document: firstUnlocked, resumePercent: 0 };
  }, [bestPercentByDoc, documentsById, papers, readingProgress.sessions]);
  const featuredPaper = continuePaper.document;

  const DAILY_GOAL_MARKS = 5;
  const todayMarkedActions = useMemo(() => {
    const today = new Date();
    const answeredQuestions = structuralProgress.progress.filter(
      (item) =>
        (item.status === "passed" || item.status === "failed") &&
        sameLocalDay(new Date(item.completedAt ?? item.updatedAt), today),
    ).length;
    const markedTopics = topicProgress.progress.filter((item) =>
      sameLocalDay(new Date(item.updatedAt), today),
    ).length;
    return answeredQuestions + markedTopics;
  }, [structuralProgress.progress, topicProgress.progress]);
  const dailyGoalPercent = Math.min(100, Math.round((todayMarkedActions / DAILY_GOAL_MARKS) * 100));

  const learningCoverage = useMemo(() => {
    const questionDocuments = papers;
    const topicDocuments = availablePapers.filter(
      (document) => document.contentKind === "course" || document.contentKind === "cheatsheet",
    );
    const detectedQuestions = questionDocuments.reduce(
      (sum, document) => sum + countStructuralQuestions(document.markdownContent),
      0,
    );
    const markedQuestions = structuralProgress.progress.filter(
      (item) => item.status === "passed" || item.status === "failed",
    ).length;
    const detectedTopics = topicDocuments.reduce(
      (sum, document) => sum + countTrackableTopics(document.markdownContent),
      0,
    );
    const markedTopics = topicProgress.progress.length;
    const total = detectedQuestions + detectedTopics;
    const marked = markedQuestions + markedTopics;
    return {
      percent: total > 0 ? Math.min(100, Math.round((marked / total) * 100)) : 0,
      markedQuestions,
      markedTopics,
      marked,
      total,
    };
  }, [availablePapers, papers, structuralProgress.progress, topicProgress.progress]);

  const subjectBreakdown = useMemo(() => {
    const subjects = new Map<string, { score: number; count: number }>();
    for (const document of availablePapers) {
      const subject = document.subject;
      const current = subjects.get(subject) ?? { score: 0, count: 0 };
      if (document.contentKind === "paper") {
        const totalQuestions = countStructuralQuestions(document.markdownContent);
        const documentMarks = structuralProgress.progress.filter(
          (item) => item.documentId === document.id,
        );
        const answered = documentMarks.filter(
          (item) => item.status === "passed" || item.status === "failed",
        ).length;
        const passed = documentMarks.filter((item) => item.status === "passed").length;
        const coverage = totalQuestions > 0 ? answered / totalQuestions : 0;
        const passRate = answered > 0 ? passed / answered : 0;
        current.score += Math.round(coverage * 55 + passRate * 45);
        current.count += 1;
      } else if (document.contentKind === "course" || document.contentKind === "cheatsheet") {
        const totalTopics = countTrackableTopics(document.markdownContent);
        const documentTopics = topicProgress.progress.filter(
          (item) => item.documentId === document.id,
        );
        const understood = documentTopics.filter((item) => item.status === "understood").length;
        const coverage = totalTopics > 0 ? documentTopics.length / totalTopics : 0;
        const understoodRate = documentTopics.length > 0 ? understood / documentTopics.length : 0;
        current.score += Math.round(coverage * 55 + understoodRate * 45);
        current.count += 1;
      } else {
        continue;
      }
      subjects.set(subject, current);
    }
    return [...subjects.entries()]
      .map(([subject, value]) => ({
        subject,
        mastery: value.count > 0 ? Math.round(value.score / value.count) : 0,
      }))
      .filter((item) => item.mastery > 0)
      .sort((a, b) => b.mastery - a.mastery);
  }, [availablePapers, structuralProgress.progress, topicProgress.progress]);

  const recentMarkedDocuments = useMemo(() => {
    const bestByDoc = new Map<string, { documentId: string; updatedAt: string; status: string }>();
    for (const item of structuralProgress.progress) {
      if (item.status !== "passed" && item.status !== "failed") continue;
      bestByDoc.set(item.documentId, {
        documentId: item.documentId,
        updatedAt: item.completedAt ?? item.updatedAt,
        status: item.status,
      });
    }
    for (const item of topicProgress.progress) {
      const current = bestByDoc.get(item.documentId);
      if (!current || new Date(item.updatedAt) > new Date(current.updatedAt)) {
        bestByDoc.set(item.documentId, {
          documentId: item.documentId,
          updatedAt: item.updatedAt,
          status: item.status,
        });
      }
    }
    return [...bestByDoc.values()]
      .sort((a, b) => new Date(b.updatedAt).getTime() - new Date(a.updatedAt).getTime())
      .slice(0, 5);
  }, [structuralProgress.progress, topicProgress.progress]);

  const legacySubjectBreakdown = useMemo(() => {
    const subjects = new Map<string, { score: number; count: number }>();
    for (const [documentId, bestPercent] of bestPercentByDoc) {
      const document = documentsById.get(documentId);
      if (!document || document.contentKind !== "paper") continue;
      const subject = document.subject;
      const checkpointScore =
        readingProgress.checkpoints.filter((item) => item.documentId === documentId).length * 5;
      const score = Math.min(100, bestPercent * 0.8 + checkpointScore);
      const current = subjects.get(subject) ?? { score: 0, count: 0 };
      current.score += score;
      current.count += 1;
      subjects.set(subject, current);
    }
    return [...subjects.entries()]
      .map(([subject, value]) => ({
        subject,
        mastery: value.count > 0 ? Math.round(value.score / value.count) : 0,
      }))
      .sort((a, b) => b.mastery - a.mastery);
  }, [bestPercentByDoc, documentsById, readingProgress.checkpoints]);
  const progressData = useMemo(() => {
    const labels = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    const today = new Date();
    return Array.from({ length: 7 }, (_, offset) => {
      const date = new Date(today);
      date.setDate(today.getDate() - (6 - offset));
      const daySessions = readingProgress.sessions.filter((item) => {
        const startedAt = new Date(item.startedAt);
        return (
          startedAt.getFullYear() === date.getFullYear() &&
          startedAt.getMonth() === date.getMonth() &&
          startedAt.getDate() === date.getDate()
        );
      });
      return {
        day: labels[date.getDay()],
        minutes: Math.round(daySessions.reduce((sum, item) => sum + item.durationSeconds, 0) / 60),
      };
    });
  }, [readingProgress.sessions]);
  const premium = isPremiumActive(effectiveProfile);
  const pageLoading = useRemoteOnly && (!profileLoaded || !content.loaded || content.loading);

  if (pageLoading) {
    return <DashboardSkeleton />;
  }

  return (
    <div className="min-w-0 space-y-6 px-4 py-5 sm:px-6 md:px-10 md:py-8">
      {readingProgress.error && (
        <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          Study progress could not be loaded: {readingProgress.error}
        </div>
      )}
      {content.error && (
        <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          Study content could not be loaded: {content.error}
        </div>
      )}

      <section className="min-w-0 overflow-hidden rounded-xl border border-accent/30 bg-gradient-to-br from-accent/15 via-accent/5 to-transparent p-4 sm:p-6 md:p-8">
        <div className="flex flex-col items-start gap-5 lg:flex-row lg:items-center lg:justify-between">
          <div className="min-w-0 flex-1">
            <div className="flex items-center gap-2 text-xs text-accent">
              <Sparkles className="h-3.5 w-3.5" />
              {continuePaper.resumePercent > 0
                ? t("dashboard.whereLeftOff")
                : t("dashboard.recommendedPaper")}
            </div>
            <h2 className="mt-2 break-words font-display text-2xl text-foreground md:text-3xl">
              {featuredPaper ? featuredPaper.title : "Open your paper library"}
            </h2>
            <p className="mt-1.5 text-sm text-muted-foreground">
              {featuredPaper
                ? continuePaper.resumePercent > 0
                  ? `You're ${continuePaper.resumePercent}% through this ${featuredPaper.subject} paper — pick up right there.`
                  : `Protected structural paper for ${featuredPaper.subject}.`
                : t("dashboard.noPaper")}
            </p>
          </div>
          <div className="flex shrink-0 flex-col items-start gap-4 sm:flex-row sm:items-center">
            <DailyGoalRing percent={dailyGoalPercent} />
            {featuredPaper ? (
              <Button asChild size="lg">
                <Link to="/course/$documentId" params={{ documentId: featuredPaper.id }}>
                  <PlayCircle className="mr-1.5 h-4 w-4" />
                  {continuePaper.resumePercent > 0
                    ? t("dashboard.continueReading")
                    : t("dashboard.startReading")}
                </Link>
              </Button>
            ) : (
              <Button asChild size="lg">
                <Link to="/library">
                  <FileText className="mr-1.5 h-4 w-4" /> {t("dashboard.openLibrary")}
                </Link>
              </Button>
            )}
          </div>
        </div>
      </section>

      {premium ? (
        <section className="grid gap-4 sm:grid-cols-2 md:grid-cols-4">
          <Stat
            icon={Flame}
            label={t("dashboard.currentStreak")}
            value={String(currentStreak)}
            hint={currentStreak > 0 ? "study days" : t("dashboard.startToday")}
            tone="accent"
          />
          <Stat
            icon={BookOpen}
            label={t("dashboard.papersOpened")}
            value={String(learningCoverage.markedQuestions)}
            hint={t("dashboard.questionsMarkedHint")}
          />
          <Stat
            icon={Target}
            label={t("dashboard.avgReadDepth")}
            value={`${learningCoverage.percent}%`}
            hint={`${learningCoverage.marked}/${learningCoverage.total} ${t("dashboard.learningActionsHint")}`}
            tone="success"
          />
          <Stat
            icon={TrendingUp}
            label={t("dashboard.topicsMarked")}
            value={String(learningCoverage.markedTopics)}
            hint={t("dashboard.topicsMarkedHint")}
          />
        </section>
      ) : (
        <section className="rounded-xl border border-border bg-card p-6">
          <div className="flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
            <div className="flex items-start gap-3">
              <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary">
                <Lock className="h-5 w-5" />
              </div>
              <div>
                <h2 className="text-base font-medium">{t("dashboard.analyticsTitle")}</h2>
                <p className="mt-1 text-sm text-muted-foreground">
                  {t("dashboard.analyticsDescription")}
                </p>
              </div>
            </div>
            <Button asChild>
              <Link to="/pricing">
                <Sparkles className="mr-1.5 h-4 w-4" />
                {t("common.viewPremium")}
              </Link>
            </Button>
          </div>
        </section>
      )}

      {premium && (
        <Suspense
          fallback={
            <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
              Loading analytics...
            </div>
          }
        >
          <PremiumDashboardCharts
            progressData={progressData}
            subjectBreakdown={
              subjectBreakdown.length > 0 ? subjectBreakdown : legacySubjectBreakdown
            }
            totalStarted={learningCoverage.marked}
          />
        </Suspense>
      )}

      {premium && (
        <section className="grid gap-4 lg:grid-cols-[1fr_20rem]">
          <div className="rounded-xl border border-border bg-card p-4 sm:p-6">
            <div className="mb-4">
              <h2 className="text-base font-medium">{t("dashboard.paperActivity")}</h2>
              <p className="text-xs text-muted-foreground">
                {t("dashboard.paperActivityDescription")}
              </p>
            </div>
            {recentMarkedDocuments.length > 0 ? (
              <ul className="divide-y divide-border">
                {recentMarkedDocuments.map((item) => {
                  const document = documentsById.get(item.documentId);
                  return (
                    <li
                      key={item.documentId}
                      className="flex flex-col gap-2 py-3 sm:flex-row sm:items-center sm:justify-between"
                    >
                      <div>
                        <div className="text-sm font-medium">
                          {document?.title ?? t("dashboard.learningActivity")}
                        </div>
                        <div className="text-xs text-muted-foreground">
                          {document?.subject ?? t("dashboard.study")} ·{" "}
                          {new Date(item.updatedAt).toLocaleDateString()}
                        </div>
                      </div>
                      <Badge
                        variant={
                          item.status === "passed" || item.status === "understood"
                            ? "default"
                            : "secondary"
                        }
                      >
                        {item.status === "passed"
                          ? t("dashboard.passed")
                          : item.status === "failed"
                            ? t("dashboard.failed")
                            : item.status === "understood"
                              ? t("dashboard.understood")
                              : t("dashboard.needsReview")}
                      </Badge>
                    </li>
                  );
                })}
              </ul>
            ) : (
              <p className="py-6 text-sm text-muted-foreground">{t("dashboard.buildProgress")}</p>
            )}
          </div>

          <div className="rounded-xl border border-border bg-card p-4 sm:p-6">
            <h2 className="text-base font-medium">{t("dashboard.studySignals")}</h2>
            <p className="text-xs text-muted-foreground">
              {t("dashboard.studySignalsDescription")}
            </p>
            <div className="mt-4 space-y-3">
              <Signal
                icon={CheckCircle2}
                label={t("dashboard.passedQuestions")}
                value={structuralProgress.summary.passed}
              />
              <Signal
                icon={TrendingUp}
                label={t("dashboard.failedQuestions")}
                value={structuralProgress.summary.failed}
              />
              <Signal
                icon={Bookmark}
                label={t("dashboard.topicsUnderstood")}
                value={topicProgress.summary.understood}
              />
              <Signal
                icon={Target}
                label={t("dashboard.topicsNeedReview")}
                value={topicProgress.summary.review}
              />
            </div>
          </div>
        </section>
      )}
    </div>
  );
}

function Signal({
  icon: Icon,
  label,
  value,
}: {
  icon: typeof Bookmark;
  label: string;
  value: number;
}) {
  return (
    <div className="flex items-center justify-between gap-3 rounded-lg bg-secondary/50 px-3 py-2 text-sm">
      <span className="flex items-center gap-2 text-muted-foreground">
        <Icon className="h-4 w-4" />
        {label}
      </span>
      <span className="font-medium">{value}</span>
    </div>
  );
}

function DashboardSkeleton() {
  return (
    <div className="min-w-0 space-y-6 px-4 py-5 sm:px-6 md:px-10 md:py-8">
      <section className="rounded-xl border border-border bg-card p-4 sm:p-6 md:p-8">
        <div className="flex flex-col gap-5 md:flex-row md:items-center md:justify-between">
          <div className="flex-1">
            <div className="h-4 w-28 animate-pulse rounded bg-secondary" />
            <div className="mt-4 h-8 w-full max-w-xl animate-pulse rounded bg-secondary" />
            <div className="mt-3 h-4 w-full max-w-md animate-pulse rounded bg-secondary" />
          </div>
          <div className="h-11 w-36 animate-pulse rounded-md bg-secondary" />
        </div>
      </section>
      <section className="grid gap-4 md:grid-cols-4">
        {Array.from({ length: 4 }).map((_, index) => (
          <div key={index} className="rounded-xl border border-border bg-card p-5">
            <div className="h-4 w-24 animate-pulse rounded bg-secondary" />
            <div className="mt-4 h-9 w-16 animate-pulse rounded bg-secondary" />
            <div className="mt-3 h-3 w-32 animate-pulse rounded bg-secondary" />
          </div>
        ))}
      </section>
      <section className="grid gap-4 lg:grid-cols-2">
        <div className="h-80 animate-pulse rounded-xl border border-border bg-card" />
        <div className="h-80 animate-pulse rounded-xl border border-border bg-card" />
      </section>
    </div>
  );
}
