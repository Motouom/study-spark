import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import { formatDuration } from "@/hooks/use-structural-progress";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";
import { PremiumGate } from "@/components/PremiumGate";
import { Badge } from "@/components/ui/badge";
import { Bookmark, BookOpen, CheckCircle2, Clock, TrendingUp } from "lucide-react";
import { lazy, Suspense, useMemo } from "react";

// Recharts is 342KB — lazy-load so it doesn't block the initial progress page paint
const ProgressDepthChart = lazy(() => import("@/components/ProgressDepthChart"));

export const Route = createFileRoute("/_app/progress")({
  head: () => ({ meta: [{ title: "Progress — StudySpark" }] }),
  component: ProgressPage,
});

function ProgressPage() {
  const { profile } = useStudyProfile();
  const content = useStudyContent(profile);
  const progress = usePaperStudyOverview();
  const documentsById = useMemo(
    () => new Map(content.documents.map((document) => [document.id, document])),
    [content.documents],
  );
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
        depth:
          sessions.length > 0
            ? Math.round(
                sessions.reduce((sum, item) => sum + item.maxScrollPercent, 0) / sessions.length,
              )
            : 0,
      };
    });
  }, [progress.sessions]);
  const recentCheckpoints = progress.checkpoints.slice(0, 8);

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
              value={`${progress.summary.averageScrollPercent}%`}
              hint={`${progress.summary.sessionsStarted} sessions`}
            />
            <ProgressStat
              icon={CheckCircle2}
              label="Understood"
              value={String(progress.summary.understoodCount)}
              hint={`${progress.summary.reviewCount} review marks`}
            />
          </section>

          <section className="grid gap-4 lg:grid-cols-[1fr_22rem]">
            <div className="min-w-0 overflow-hidden rounded-xl border border-border bg-card p-5">
              <h2 className="text-base font-medium">Reading depth this week</h2>
              <p className="text-xs text-muted-foreground">
                Average paper scroll depth for each study day.
              </p>
              <div className="mt-4 h-72">
                <Suspense
                  fallback={
                    <div className="h-full w-full animate-pulse rounded-lg bg-secondary/40" />
                  }
                >
                  <ProgressDepthChart data={weeklyData} />
                </Suspense>
              </div>
            </div>

            <div className="rounded-xl border border-border bg-card p-5">
              <h2 className="text-base font-medium">Study signals</h2>
              <div className="mt-4 space-y-3">
                <Signal label="Understood" value={progress.summary.understoodCount} />
                <Signal label="Needs review" value={progress.summary.reviewCount} />
                <Signal label="Bookmarks" value={progress.summary.bookmarkCount} />
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
                        <div>
                          <div className="text-sm font-medium">{paper?.title ?? "Paper"}</div>
                          <p className="text-xs text-muted-foreground">
                            {item.scrollPercent}% read ·{" "}
                            {new Date(item.createdAt).toLocaleDateString()}
                          </p>
                        </div>
                        <Badge variant="secondary">{checkpointLabel(item.checkpointType)}</Badge>
                      </div>
                    );
                  })
                ) : (
                  <p className="py-4 text-sm text-muted-foreground">
                    Use "I understand this", "Need review", or "Bookmark" while reading.
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

function checkpointLabel(type: string) {
  if (type === "understood") return "Understood";
  if (type === "review") return "Review";
  return "Bookmark";
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
