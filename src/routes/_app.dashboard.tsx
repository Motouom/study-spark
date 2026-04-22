import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { PROGRESS_DATA, SUBJECT_BREAKDOWN, PAPERS } from "@/lib/mock-data";
import { Button } from "@/components/ui/button";
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
import { ArrowRight, BookOpen, Flame, Target, TrendingUp } from "lucide-react";

export const Route = createFileRoute("/_app/dashboard")({
  head: () => ({ meta: [{ title: "Dashboard — StudyFlow" }] }),
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
  const recent = PAPERS.slice(0, 4);
  return (
    <>
      <PageHeader
        title="Welcome back, Akua"
        description="You're 14 days in. Don't break the chain."
      >
        <Button asChild>
          <Link to="/quiz">
            Start a quiz <ArrowRight className="ml-1 h-4 w-4" />
          </Link>
        </Button>
      </PageHeader>

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <section className="grid gap-4 md:grid-cols-4">
          <Stat icon={Flame} label="Current streak" value="14" hint="days in a row" tone="accent" />
          <Stat icon={BookOpen} label="Quizzes taken" value="47" hint="this month" />
          <Stat icon={Target} label="Average score" value="82%" hint="+12% vs last week" tone="success" />
          <Stat icon={TrendingUp} label="Topics mastered" value="9" hint="of 24" />
        </section>

        <section className="grid gap-4 lg:grid-cols-3">
          <div className="rounded-xl border border-border bg-card p-6 lg:col-span-2">
            <div className="mb-4 flex items-center justify-between">
              <div>
                <h2 className="text-base font-medium">Weekly performance</h2>
                <p className="text-xs text-muted-foreground">Average quiz score per day</p>
              </div>
              <span className="text-xs text-success">+12%</span>
            </div>
            <div className="h-64">
              <ResponsiveContainer width="100%" height="100%">
                <LineChart data={PROGRESS_DATA} margin={{ top: 8, right: 8, bottom: 0, left: -16 }}>
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
                <BarChart
                  data={SUBJECT_BREAKDOWN}
                  margin={{ top: 8, right: 8, bottom: 0, left: -20 }}
                >
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
        </section>

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
              {recent.map((p) => (
                <li key={p.id} className="flex items-center justify-between py-3">
                  <div className="min-w-0">
                    <div className="truncate text-sm font-medium">{p.title}</div>
                    <div className="text-xs text-muted-foreground">
                      {p.questions} questions · {p.examBoard}
                    </div>
                  </div>
                  <Button asChild variant="outline" size="sm">
                    <Link to="/quiz">Continue</Link>
                  </Button>
                </li>
              ))}
            </ul>
          </div>

          <div className="rounded-xl border border-border bg-foreground p-6 text-background">
            <div className="text-xs uppercase tracking-wider text-background/60">
              Suggested next
            </div>
            <h3 className="mt-2 font-display text-2xl">Strengthen your Physics</h3>
            <p className="mt-1.5 text-sm text-background/70">
              Your weakest area this week. 3 short quizzes and you'll be back on track.
            </p>
            <Button
              asChild
              className="mt-5 w-full bg-background text-foreground hover:bg-background/90"
            >
              <Link to="/quiz">Start now</Link>
            </Button>
          </div>
        </section>
      </div>
    </>
  );
}
