import { createFileRoute, Link } from "@tanstack/react-router";
import { getDashboardData } from "@/lib/server-api";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  ResponsiveContainer,
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  BarChart,
  Bar,
} from "recharts";
import {
  ArrowRight,
  BookOpen,
  Flame,
  Target,
  TrendingUp,
  Sparkles,
  FileText,
  Lock,
} from "lucide-react";
import { useMemo } from "react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import {
  calculateStructuralMastery,
  formatDuration,
  useStructuralProgress,
} from "@/hooks/use-structural-progress";
import { supabaseConfigured } from "@/lib/supabase";
import { isPremiumActive } from "@/components/PremiumGate";

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
  const lastProgressByDocument = useMemo(() => {
    const map = new Map<string, string>();
    for (const item of structuralProgress) {
      const existing = map.get(item.documentId);
      if (!existing || new Date(item.updatedAt).getTime() > new Date(existing).getTime()) {
        map.set(item.documentId, item.updatedAt);
      }
    }
    return map;
  }, [structuralProgress]);
  const papersWithProgress = useMemo(
    () =>
      availablePapers
        .map((paper) => ({
          ...paper,
          lastProgressAt: lastProgressByDocument.get(paper.id) ?? null,
          markedQuestions: structuralProgress.filter((item) => item.documentId === paper.id).length,
        }))
        .sort((a, b) => {
          const aProgress = a.lastProgressAt ? new Date(a.lastProgressAt).getTime() : 0;
          const bProgress = b.lastProgressAt ? new Date(b.lastProgressAt).getTime() : 0;
          if (aProgress !== bProgress) return bProgress - aProgress;
          return new Date(b.updatedAt).getTime() - new Date(a.updatedAt).getTime();
        }),
    [availablePapers, lastProgressByDocument, structuralProgress],
  );
  const featuredPaper = papersWithProgress[0] ?? null;
  const recent = papersWithProgress.slice(0, 4);
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
  const suggestedSubject = effectiveProfile?.subjects[0] ?? "your first subject";
  const recentStructural = structuralProgress.slice(0, 5);
  const premium = isPremiumActive(effectiveProfile);

  return (
    <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
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

      <section className="overflow-hidden rounded-2xl border border-accent/30 bg-gradient-to-br from-accent/15 via-accent/5 to-transparent p-6 md:p-8">
        <div className="flex flex-col items-start gap-5 md:flex-row md:items-center md:justify-between">
          <div className="flex-1">
            <div className="flex items-center gap-2 text-xs text-accent">
              <Sparkles className="h-3.5 w-3.5" /> Current paper
            </div>
            <h2 className="mt-2 font-display text-2xl text-foreground md:text-3xl">
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

      {premium && <section className="grid gap-4 lg:grid-cols-3">
        <div className="rounded-xl border border-border bg-card p-6 lg:col-span-2">
          <div className="mb-4 flex items-center justify-between">
            <div>
              <h2 className="text-base font-medium">Weekly performance</h2>
              <p className="text-xs text-muted-foreground">Daily structural pass rate</p>
            </div>
            <span className="text-xs text-muted-foreground">
              {structuralSummary.totalStarted > 0
                ? `${structuralSummary.totalStarted} marked`
                : "No structural progress yet"}
            </span>
          </div>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <LineChart data={progressData} margin={{ top: 8, right: 8, bottom: 0, left: -16 }}>
                <CartesianGrid stroke="oklch(0 0 0 / 0.06)" vertical={false} />
                <XAxis
                  dataKey="day"
                  stroke="var(--muted-foreground)"
                  fontSize={12}
                  tickLine={false}
                  axisLine={false}
                />
                <YAxis
                  stroke="var(--muted-foreground)"
                  fontSize={12}
                  tickLine={false}
                  axisLine={false}
                />
                <Tooltip
                  contentStyle={{
                    background: "var(--card)",
                    border: "1px solid var(--border)",
                    borderRadius: 8,
                    fontSize: 12,
                  }}
                />
                <Line
                  type="monotone"
                  dataKey="score"
                  stroke="var(--foreground)"
                  strokeWidth={2.5}
                  dot={{ r: 3, fill: "var(--foreground)" }}
                  activeDot={{ r: 5 }}
                />
              </LineChart>
            </ResponsiveContainer>
          </div>
        </div>

        <div className="rounded-xl border border-border bg-card p-6">
          <h2 className="text-base font-medium">Mastery by subject</h2>
          <p className="text-xs text-muted-foreground">Last 30 days</p>
          <div className="mt-4 h-64">
            <ResponsiveContainer width="100%" height="100%">
              <BarChart data={subjectBreakdown} margin={{ top: 8, right: 8, bottom: 0, left: -20 }}>
                <CartesianGrid stroke="oklch(0 0 0 / 0.06)" vertical={false} />
                <XAxis
                  dataKey="subject"
                  stroke="var(--muted-foreground)"
                  fontSize={11}
                  tickLine={false}
                  axisLine={false}
                />
                <YAxis
                  stroke="var(--muted-foreground)"
                  fontSize={11}
                  tickLine={false}
                  axisLine={false}
                />
                <Tooltip
                  contentStyle={{
                    background: "var(--card)",
                    border: "1px solid var(--border)",
                    borderRadius: 8,
                    fontSize: 12,
                  }}
                />
                <Bar dataKey="mastery" fill="var(--foreground)" radius={[6, 6, 0, 0]} />
              </BarChart>
            </ResponsiveContainer>
          </div>
        </div>
      </section>}

      <section className="grid gap-4 lg:grid-cols-3">
        <div className="rounded-xl border border-border bg-card p-6 lg:col-span-2">
          <div className="mb-4 flex items-center justify-between">
            <h2 className="text-base font-medium">Pick up where you left off</h2>
            <Button asChild variant="ghost" size="sm">
              <Link to="/library">
                See all <ArrowRight className="ml-1 h-4 w-4" />
              </Link>
            </Button>
          </div>
          <ul className="divide-y divide-border">
            {recent.length > 0 ? (
              recent.map((p) => (
                <li key={p.id} className="flex items-center justify-between py-3">
                  <div className="min-w-0">
                    <Link
                      to="/course/$documentId"
                      params={{ documentId: p.id }}
                      className="block truncate text-sm font-medium hover:underline"
                    >
                      {p.title}
                    </Link>
                    <div className="text-xs text-muted-foreground">
                      {p.subject} ·{" "}
                      {p.markedQuestions > 0
                        ? `${p.markedQuestions} marked · last worked ${new Date(
                            p.lastProgressAt ?? p.updatedAt,
                          ).toLocaleDateString()}`
                        : `updated ${new Date(p.updatedAt).toLocaleDateString()}`}
                    </div>
                  </div>
                  <Button asChild variant="outline" size="sm">
                    <Link to="/course/$documentId" params={{ documentId: p.id }}>
                      Open
                    </Link>
                  </Button>
                </li>
              ))
            ) : (
              <li className="py-8 text-sm text-muted-foreground">
                No papers match your profile yet. Published admin papers will appear here.
              </li>
            )}
          </ul>
        </div>

        <div className="rounded-xl border border-border bg-foreground p-6 text-background">
          <div className="text-xs uppercase tracking-wider text-background/60">Suggested next</div>
          <h3 className="mt-2 font-display text-2xl">Start with {suggestedSubject}</h3>
          <p className="mt-1.5 text-sm text-background/70">
            Open a structural paper and mark each question as started, passed, or failed.
          </p>
          <Button
            asChild
            className="mt-5 w-full bg-background text-foreground hover:bg-background/90"
          >
            <Link to="/library">View papers</Link>
          </Button>
        </div>
      </section>

      {premium && <section className="rounded-xl border border-border bg-card p-6">
        <div className="mb-4 flex items-center justify-between">
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
      </section>}
    </div>
  );
}
