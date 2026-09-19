import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import { formatDuration } from "@/hooks/use-structural-progress";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";
import { PremiumGate } from "@/components/PremiumGate";
import { Badge } from "@/components/ui/badge";
import { Bookmark, BookOpen, CheckCircle2, Clock, Flame, TrendingUp } from "lucide-react";
import {
  Area,
  AreaChart,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";
import { useMemo } from "react";
import { supabaseConfigured } from "@/lib/supabase";

export const Route = createFileRoute("/_app/progress")({
  head: () => ({ meta: [{ title: "Progress — StudySpark" }] }),
  component: ProgressPage,
});

function ProgressPage() {
  const { profile, loaded: profileLoaded } = useStudyProfile();
  const content = useStudyContent(profile);
  const progress = usePaperStudyOverview();
  const useRemoteOnly = supabaseConfigured();
  const pageLoading = useRemoteOnly && (!profileLoaded || !content.loaded || content.loading);
  const documentsById = useMemo(
    () => new Map(content.documents.map((document) => [document.id, document])),
    [content.documents],
  );

  // Best depth per paper across sessions (each visit creates a new session
  // row, so the latest row alone would read 0%).
  const bestByDoc = useMemo(() => {
    const map = new Map<string, number>();
    for (const session of progress.sessions) {
      map.set(
        session.documentId,
        Math.max(map.get(session.documentId) ?? 0, session.maxScrollPercent),
      );
    }
    return map;
  }, [progress.sessions]);

  const averageDepth =
    bestByDoc.size > 0
      ? Math.round([...bestByDoc.values()].reduce((sum, value) => sum + value, 0) / bestByDoc.size)
      : 0;

  const weeklyData = useMemo(() => {
    const labels = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    const today = new Date();
    return Array.from({ length: 7 }, (_, offset) => {
      const date = new Date(today);
      date.setDate(today.getDate() - (6 - offset));
      const sessions = progress.sessions.filter((item) => {
        const started = new Date(item.startedAt);
        return (
          started.getFullYear() === date.getFullYear() &&
          started.getMonth() === date.getMonth() &&
          started.getDate() === date.getDate()
        );
      });

      return {
        day: labels[date.getDay()],
        minutes: Math.round(sessions.reduce((sum, item) => sum + item.durationSeconds, 0) / 60),
      };
    });
  }, [progress.sessions]);

  const recentCheckpoints = useMemo(
    () =>
      progress.checkpoints
        .filter((item) => {
          const document = documentsById.get(item.documentId);
          return document && document.contentKind === "paper";
        })
        .slice(0, 8),
    [documentsById, progress.checkpoints],
  );

  if (pageLoading) {
    return <ProgressSkeleton />;
  }

  return (
    <>
      <PageHeader
        title="Your progress"
        description="Track reading sessions, bookmarks, review points, and study depth."
      />
      <div className="space-y-6 px-4 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium progress analytics"
          description="Upgrade to unlock reading history, checkpoint signals, study depth, and streaks."
        >
          {progress.error && (
            <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
              Progress could not be loaded: {progress.error}
            </div>
          )}

          <section className="grid gap-4 sm:grid-cols-2 md:grid-cols-4">
            <ProgressStat
              icon={BookOpen}
              label="Papers opened"
              value={String(progress.summary.papersRead)}
              hint={`${progress.summary.completedPapers} read through`}
            />
            <ProgressStat
              icon={Clock}
              label="Study time"
              value={formatDuration(progress.summary.totalDurationSeconds)}
              hint={`${progress.summary.totalStudyDays} study days`}
            />
            <ProgressStat
              icon={TrendingUp}
              label="Avg. depth"
              value={`${averageDepth}%`}
              hint={`${progress.summary.sessionsStarted} sessions`}
            />
            <ProgressStat
              icon={Flame}
              label="Current streak"
              value={String(progress.summary.currentStreak)}
              hint={progress.summary.currentStreak > 0 ? "study days" : "start today"}
            />
          </section>

          <section className="grid gap-4 lg:grid-cols-[1fr_22rem]">
            <div className="min-w-0 overflow-hidden rounded-xl border border-border bg-card p-5">
              <h2 className="text-base font-medium">Study time this week</h2>
              <p className="text-xs text-muted-foreground">
                Minutes studied for each day of the week.
              </p>
              <div className="mt-4 h-72">
                {weeklyData.some((point) => point.minutes > 0) ? (
                  <ResponsiveContainer width="100%" height="100%">
                    <AreaChart
                      data={weeklyData}
                      margin={{ top: 8, right: 8, bottom: 0, left: -16 }}
                    >
                      <defs>
                        <linearGradient id="readingDepth" x1="0" y1="0" x2="0" y2="1">
                          <stop offset="0%" stopColor="var(--foreground)" stopOpacity={0.25} />
                          <stop offset="100%" stopColor="var(--foreground)" stopOpacity={0} />
                        </linearGradient>
                      </defs>
                      <CartesianGrid stroke="oklch(0 0 0 / 0.06)" vertical={false} />
                      <XAxis dataKey="day" stroke="var(--muted-foreground)" fontSize={12} />
                      <YAxis stroke="var(--muted-foreground)" fontSize={12} />
                      <Tooltip
                        contentStyle={{
                          background: "var(--card)",
                          border: "1px solid var(--border)",
                          borderRadius: 8,
                          fontSize: 12,
                        }}
                        formatter={(value) => [`${value} min`, "Study time"]}
                      />
                      <Area
                        type="monotone"
                        dataKey="minutes"
                        stroke="var(--foreground)"
                        strokeWidth={2.5}
                        fill="url(#readingDepth)"
                      />
                    </AreaChart>
                  </ResponsiveContainer>
                ) : (
                  <div className="flex h-full items-center justify-center text-sm text-muted-foreground">
                    Study for a few minutes to see your weekly trend.
                  </div>
                )}
              </div>
            </div>

            <div className="rounded-xl border border-border bg-card p-5">
              <h2 className="text-base font-medium">Study signals</h2>
              <div className="mt-4 space-y-3">
                <Signal label="Understood" value={progress.summary.understoodCount} />
                <Signal label="Needs review" value={progress.summary.reviewCount} />
                <Signal label="Bookmarks" value={progress.summary.bookmarkCount} />
                <Signal label="Revision" value={progress.summary.revisionCount} />
              </div>
            </div>
          </section>

          <section>
            <div className="rounded-xl border border-border bg-card p-5">
              <h2 className="text-base font-medium">Recent checkpoints</h2>
              <p className="text-xs text-muted-foreground">
                Lightweight marks from the papers you studied.
              </p>
              <div className="mt-4 divide-y divide-border">
                {recentCheckpoints.length > 0 ? (
                  recentCheckpoints.map((item) => {
                    const paper = documentsById.get(item.documentId);
                    return (
                      <div key={item.id} className="flex items-center justify-between gap-3 py-3">
                        <div className="min-w-0">
                          {paper ? (
                            <Link
                              to="/course/$documentId"
                              params={{ documentId: paper.id }}
                              className="text-sm font-medium hover:text-accent"
                            >
                              {paper.title}
                            </Link>
                          ) : (
                            <div className="text-sm font-medium">Paper</div>
                          )}
                          {item.note && (
                            <p className="mt-0.5 line-clamp-1 text-xs text-muted-foreground">
                              “{item.note}”
                            </p>
                          )}
                          <p className="mt-0.5 text-xs text-muted-foreground">
                            {item.scrollPercent}% read ·{" "}
                            {new Date(item.createdAt).toLocaleDateString()}
                          </p>
                        </div>
                        <CheckpointBadge type={item.checkpointType} />
                      </div>
                    );
                  })
                ) : (
                  <p className="py-4 text-sm text-muted-foreground">
                    Use “I understand this”, “Need review”, or “Bookmark” while reading.
                  </p>
                )}
              </div>
            </div>
          </section>
        </PremiumGate>
      </div>
    </>
  );
}

function CheckpointBadge({ type }: { type: string }) {
  if (type === "understood") {
    return (
      <Badge variant="success">
        <CheckCircle2 className="mr-1 h-3 w-3" /> Understood
      </Badge>
    );
  }
  if (type === "review") {
    return (
      <Badge variant="destructive">
        <TrendingUp className="mr-1 h-3 w-3" /> Review
      </Badge>
    );
  }
  return (
    <Badge variant="secondary">
      <Bookmark className="mr-1 h-3 w-3" /> Bookmark
    </Badge>
  );
}

function ProgressStat({
  icon: Icon,
  label,
  value,
  hint,
}: {
  icon: typeof Bookmark;
  label: string;
  value: string;
  hint: string;
}) {
  return (
    <div className="rounded-xl border border-border bg-card p-5">
      <div className="flex items-center gap-2 text-xs text-muted-foreground">
        <Icon className="h-4 w-4" />
        {label}
      </div>
      <div className="mt-2 font-display text-3xl">{value}</div>
      <div className="mt-1 text-xs text-muted-foreground">{hint}</div>
    </div>
  );
}

function Signal({ label, value }: { label: string; value: number }) {
  return (
    <div className="flex items-center justify-between rounded-lg bg-secondary/50 px-3 py-2 text-sm">
      <span className="text-muted-foreground">{label}</span>
      <span className="font-medium">{value}</span>
    </div>
  );
}

function ProgressSkeleton() {
  return (
    <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
      <div className="h-9 w-40 animate-pulse rounded bg-secondary" />
      <div className="h-4 w-full max-w-sm animate-pulse rounded bg-secondary" />
      <section className="grid gap-4 sm:grid-cols-2 md:grid-cols-4">
        {Array.from({ length: 4 }).map((_, index) => (
          <div key={index} className="h-28 animate-pulse rounded-xl border border-border bg-card" />
        ))}
      </section>
      <section className="grid gap-4 lg:grid-cols-[1fr_22rem]">
        <div className="h-96 animate-pulse rounded-xl border border-border bg-card" />
        <div className="h-96 animate-pulse rounded-xl border border-border bg-card" />
      </section>
    </div>
  );
}
