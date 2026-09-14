import { createFileRoute, Link } from "@tanstack/react-router";
import { getDashboardData } from "@/lib/server-api";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { BookOpen, Flame, Target, TrendingUp, Sparkles, FileText, Lock } from "lucide-react";
import { lazy, Suspense, useMemo } from "react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import {
  calculateStructuralMastery,
  formatDuration,
  useStructuralProgress,
} from "@/hooks/use-structural-progress";
import { supabaseConfigured } from "@/lib/supabase";
import { isPremiumActive } from "@/components/PremiumGate";

const PremiumDashboardCharts = lazy(() => import("@/components/PremiumDashboardCharts"));

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
  const {
    progress: structuralProgress,
    summary: structuralSummary,
    error: structuralError,
  } = useStructuralProgress();
  const useRemoteOnly = supabaseConfigured();
  const effectiveProfile = useRemoteOnly ? savedProfile : (savedProfile ?? profile);
  const content = useStudyContent(savedProfile);
  const effectiveTopics = useRemoteOnly
    ? content.topics
    : content.enabled
      ? content.topics
      : topics;
  const availablePapers = content.documents;
  const featuredPaper = availablePapers[0] ?? null;
  const subjectBreakdown = useMemo(
    () => calculateStructuralMastery(structuralProgress, availablePapers),
    [availablePapers, structuralProgress],
  );
  const progressData = useMemo(() => {
    const labels = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    const today = new Date();
    return Array.from({ length: 7 }, (_, offset) => {
      const date = new Date(today);
      date.setDate(today.getDate() - (6 - offset));
      const dayStructural = structuralProgress.filter((item) => {
        const updatedAt = new Date(item.updatedAt);
        return (
          updatedAt.getFullYear() === date.getFullYear() &&
          updatedAt.getMonth() === date.getMonth() &&
          updatedAt.getDate() === date.getDate()
        );
      });
      const passed = dayStructural.filter((item) => item.status === "passed").length;
      return {
        day: labels[date.getDay()],
        score: dayStructural.length > 0 ? Math.round((passed / dayStructural.length) * 100) : 0,
      };
    });
  }, [structuralProgress]);
  const recentStructural = structuralProgress.slice(0, 5);
  const premium = isPremiumActive(effectiveProfile);

  return (
    <div className="min-w-0 space-y-6 px-4 py-5 sm:px-6 md:px-10 md:py-8">
      {useRemoteOnly && (!profileLoaded || content.loading) && (
        <div className="rounded-lg border border-border bg-card p-3 text-sm text-muted-foreground">
          Loading your profile, papers, and progress...
        </div>
      )}
      {structuralError && (
        <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          Structural progress could not be loaded: {structuralError}
        </div>
      )}
      {content.error && (
        <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          Study content could not be loaded: {content.error}
        </div>
      )}

      <section className="min-w-0 overflow-hidden rounded-xl border border-accent/30 bg-gradient-to-br from-accent/15 via-accent/5 to-transparent p-4 sm:p-6 md:p-8">
        <div className="flex flex-col items-start gap-5 md:flex-row md:items-center md:justify-between">
          <div className="min-w-0 flex-1">
            <div className="flex items-center gap-2 text-xs text-accent">
              <Sparkles className="h-3.5 w-3.5" /> Current paper
            </div>
            <h2 className="mt-2 break-words font-display text-2xl text-foreground md:text-3xl">
              {featuredPaper ? featuredPaper.title : "Open your paper library"}
            </h2>
            <p className="mt-1.5 text-sm text-muted-foreground">
              {featuredPaper
                ? `Protected structural paper for ${featuredPaper.subject}.`
                : "No published paper is available for your profile yet."}
            </p>
          </div>
          {featuredPaper ? (
            <Button asChild size="lg">
              <Link to="/course/$documentId" params={{ documentId: featuredPaper.id }}>
                <FileText className="mr-1.5 h-4 w-4" /> Open paper
              </Link>
            </Button>
          ) : (
            <Button size="lg" disabled>
              <FileText className="mr-1.5 h-4 w-4" /> Open paper
            </Button>
          )}
        </div>
      </section>

      {premium ? (
        <section className="grid gap-4 md:grid-cols-4">
          <Stat
            icon={Flame}
            label="Current streak"
            value={String(structuralSummary.currentStreak)}
            hint={structuralSummary.currentStreak > 0 ? "structural practice days" : "start today"}
            tone="accent"
          />
          <Stat
            icon={BookOpen}
            label="Questions started"
            value={String(structuralSummary.totalStarted)}
            hint={structuralSummary.totalStarted > 0 ? "structural questions" : "new account"}
          />
          <Stat
            icon={Target}
            label="Pass rate"
            value={`${structuralSummary.completionRate}%`}
            hint={`${structuralSummary.passed} passed · ${structuralSummary.failed} failed`}
            tone="success"
          />
          <Stat
            icon={TrendingUp}
            label="Avg. time"
            value={formatDuration(structuralSummary.averageDurationSeconds)}
            hint={`${formatDuration(structuralSummary.totalDurationSeconds)} total`}
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
            totalStarted={structuralSummary.totalStarted}
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
          {recentStructural.length > 0 ? (
            <ul className="divide-y divide-border">
              {recentStructural.map((item) => {
                return (
                  <li
                    key={item.id}
                    className="flex flex-col gap-2 py-3 sm:flex-row sm:items-center sm:justify-between"
                  >
                    <div>
                      <div className="text-sm font-medium">Question {item.questionNumber}</div>
                      <div className="text-xs text-muted-foreground">
                        {item.completedAt
                          ? `${formatDuration(item.durationSeconds)} · ${new Date(
                              item.updatedAt,
                            ).toLocaleDateString()}`
                          : `Started ${new Date(item.updatedAt).toLocaleDateString()}`}
                      </div>
                    </div>
                    <Badge variant={item.status === "passed" ? "default" : "secondary"}>
                      {item.status}
                    </Badge>
                  </li>
                );
              })}
            </ul>
          ) : (
            <p className="py-6 text-sm text-muted-foreground">
              Open a paper and mark a question as started, passed, or failed.
            </p>
          )}
        </section>
      )}
    </div>
  );
}
