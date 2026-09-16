import { createFileRoute, Link } from "@tanstack/react-router";
import { getDashboardData } from "@/lib/server-api";
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
} from "lucide-react";
import { lazy, Suspense, useMemo } from "react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import { formatDuration } from "@/hooks/use-structural-progress";
import { supabaseConfigured } from "@/lib/supabase";
import { isPremiumActive } from "@/lib/premium";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";

const PremiumDashboardCharts = lazy(() => import("@/components/PremiumDashboardCharts"));

function sameLocalDay(a: Date, b: Date) {
  return (
    a.getFullYear() === b.getFullYear() &&
    a.getMonth() === b.getMonth() &&
    a.getDate() === b.getDate()
  );
}

function DailyGoalRing({ percent }: { percent: number }) {
  const radius = 26;
  const circumference = 2 * Math.PI * radius;
  const dash = (percent / 100) * circumference;
  return (
    <div className="flex items-center gap-3 rounded-xl border border-border bg-background/70 px-4 py-3">
      <svg width="64" height="64" viewBox="0 0 64 64" className="-rotate-90">
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
        <div className="text-xs text-muted-foreground">Today's goal</div>
        <div className="font-display text-lg text-foreground">{percent}%</div>
        <div className="text-[11px] text-muted-foreground">15 min of study</div>
      </div>
    </div>
  );
}

export const Route = createFileRoute("/_app/dashboard")({
  head: () => ({ meta: [{ title: "Dashboard — StudySpark" }] }),
  loader: async () => {
    return getDashboardData();
  },
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
  const { profile, topics } = Route.useLoaderData();
  const { profile: savedProfile, loaded: profileLoaded } = useStudyProfile();
  const readingProgress = usePaperStudyOverview();
  const useRemoteOnly = supabaseConfigured();
  const effectiveProfile = useRemoteOnly ? savedProfile : (savedProfile ?? profile);
  const content = useStudyContent(savedProfile);
  const effectiveTopics = useRemoteOnly
    ? content.topics
    : content.enabled
      ? content.topics
      : topics;
  const availablePapers = content.documents;
  const documentsById = useMemo(
    () => new Map(availablePapers.map((document) => [document.id, document])),
    [availablePapers],
  );

  // "Continue where you left off": the most recent unfinished session on an
  // unlocked paper; otherwise the first unlocked paper as a starting point.
  const continuePaper = useMemo(() => {
    const unfinished = readingProgress.sessions.find(
      (session) => !session.completed && documentsById.get(session.documentId)?.isLocked === false,
    );
    if (unfinished) {
      return {
        document: documentsById.get(unfinished.documentId) ?? null,
        resumePercent: unfinished.maxScrollPercent,
      };
    }
    const firstUnlocked = availablePapers.find((document) => !document.isLocked) ?? null;
    return { document: firstUnlocked, resumePercent: 0 };
  }, [availablePapers, documentsById, readingProgress.sessions]);
  const featuredPaper = continuePaper.document;

  const DAILY_GOAL_SECONDS = 15 * 60;
  const todaySeconds = useMemo(() => {
    const today = new Date();
    return readingProgress.sessions
      .filter((session) => sameLocalDay(new Date(session.updatedAt), today))
      .reduce((sum, session) => sum + session.durationSeconds, 0);
  }, [readingProgress.sessions]);
  const dailyGoalPercent = Math.min(100, Math.round((todaySeconds / DAILY_GOAL_SECONDS) * 100));

  const subjectBreakdown = useMemo(() => {
    const subjects = new Map<string, { score: number; count: number }>();
    for (const session of readingProgress.sessions) {
      const subject = documentsById.get(session.documentId)?.subject;
      if (!subject) continue;
      const checkpointScore =
        readingProgress.checkpoints.filter((item) => item.documentId === session.documentId)
          .length * 5;
      const score = Math.min(100, session.maxScrollPercent * 0.8 + checkpointScore);
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
  }, [documentsById, readingProgress.checkpoints, readingProgress.sessions]);
  const progressData = useMemo(() => {
    const labels = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    const today = new Date();
    return Array.from({ length: 7 }, (_, offset) => {
      const date = new Date(today);
      date.setDate(today.getDate() - (6 - offset));
      const daySessions = readingProgress.sessions.filter((item) => {
        const updatedAt = new Date(item.startedAt);
        return (
          updatedAt.getFullYear() === date.getFullYear() &&
          updatedAt.getMonth() === date.getMonth() &&
          updatedAt.getDate() === date.getDate()
        );
      });
      return {
        day: labels[date.getDay()],
        score:
          daySessions.length > 0
            ? Math.round(
                daySessions.reduce((sum, item) => sum + item.maxScrollPercent, 0) /
                  daySessions.length,
              )
            : 0,
      };
    });
  }, [readingProgress.sessions]);
  const recentSessions = readingProgress.sessions.slice(0, 5);
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
                ? "Continue where you left off"
                : "Recommended paper"}
            </div>
            <h2 className="mt-2 break-words font-display text-2xl text-foreground md:text-3xl">
              {featuredPaper ? featuredPaper.title : "Open your paper library"}
            </h2>
            <p className="mt-1.5 text-sm text-muted-foreground">
              {featuredPaper
                ? continuePaper.resumePercent > 0
                  ? `You're ${continuePaper.resumePercent}% through this ${featuredPaper.subject} paper — pick up right there.`
                  : `Protected structural paper for ${featuredPaper.subject}.`
                : "No published paper is available for your profile yet."}
            </p>
          </div>
          <div className="flex flex-col items-start gap-4 sm:flex-row sm:items-center">
            <DailyGoalRing percent={dailyGoalPercent} />
            {featuredPaper ? (
              <Button asChild size="lg">
                <Link to="/course/$documentId" params={{ documentId: featuredPaper.id }}>
                  <PlayCircle className="mr-1.5 h-4 w-4" />
                  {continuePaper.resumePercent > 0 ? "Continue reading" : "Start reading"}
                </Link>
              </Button>
            ) : (
              <Button size="lg" disabled>
                <FileText className="mr-1.5 h-4 w-4" /> Open paper
              </Button>
            )}
          </div>
        </div>
      </section>

      {premium ? (
        <section className="grid gap-4 md:grid-cols-4">
          <Stat
            icon={Flame}
            label="Current streak"
            value={String(readingProgress.summary.currentStreak)}
            hint={readingProgress.summary.currentStreak > 0 ? "study days" : "start today"}
            tone="accent"
          />
          <Stat
            icon={BookOpen}
            label="Papers opened"
            value={String(readingProgress.summary.papersRead)}
            hint={`${readingProgress.summary.completedPapers} read through`}
          />
          <Stat
            icon={Target}
            label="Avg. read depth"
            value={`${readingProgress.summary.averageScrollPercent}%`}
            hint={`${readingProgress.summary.reviewCount} review marks`}
            tone="success"
          />
          <Stat
            icon={TrendingUp}
            label="Study time"
            value={formatDuration(readingProgress.summary.totalDurationSeconds)}
            hint={`${readingProgress.summary.bookmarkCount} bookmarks`}
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
                <h2 className="text-base font-medium">Premium progress analytics</h2>
                <p className="mt-1 text-sm text-muted-foreground">
                  Upgrade to unlock streaks, pass rate, timing, mastery, achievements, and your
                  personalized learning path.
                </p>
              </div>
            </div>
            <Button asChild>
              <Link to="/pricing">
                <Sparkles className="mr-1.5 h-4 w-4" />
                View Premium
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
            subjectBreakdown={subjectBreakdown}
            totalStarted={readingProgress.summary.sessionsStarted}
          />
        </Suspense>
      )}

      {premium && (
        <section className="rounded-xl border border-border bg-card p-4 sm:p-6">
          <div className="mb-4 flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
            <div>
              <h2 className="text-base font-medium">Recent structural progress</h2>
              <p className="text-xs text-muted-foreground">Latest paper question marks</p>
            </div>
            <Button asChild variant="ghost" size="sm">
              <Link to="/progress">View progress</Link>
            </Button>
          </div>
          {recentSessions.length > 0 ? (
            <ul className="divide-y divide-border">
              {recentSessions.map((item) => {
                const paper = documentsById.get(item.documentId);
                return (
                  <li
                    key={item.id}
                    className="flex flex-col gap-2 py-3 sm:flex-row sm:items-center sm:justify-between"
                  >
                    <div>
                      <div className="text-sm font-medium">{paper?.title ?? "Paper session"}</div>
                      <div className="text-xs text-muted-foreground">
                        {formatDuration(item.durationSeconds)} · {item.maxScrollPercent}% read ·{" "}
                        {new Date(item.updatedAt).toLocaleDateString()}
                      </div>
                    </div>
                    <Badge variant={item.completed ? "default" : "secondary"}>
                      {item.completed ? "read through" : "in progress"}
                    </Badge>
                  </li>
                );
              })}
            </ul>
          ) : (
            <p className="py-6 text-sm text-muted-foreground">
              Open a paper, read, bookmark, and mark review points to build your progress.
            </p>
          )}
        </section>
      )}
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
