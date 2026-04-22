import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { PROGRESS_DATA, SUBJECT_BREAKDOWN } from "@/lib/mock-data";
import {
  ResponsiveContainer,
  AreaChart,
  Area,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
} from "recharts";

export const Route = createFileRoute("/_app/progress")({
  head: () => ({ meta: [{ title: "Progress — StudyFlow" }] }),
  component: ProgressPage,
});

function ProgressPage() {
  return (
    <>
      <PageHeader title="Your progress" description="The numbers don't lie. You're improving." />
      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <div className="rounded-xl border border-border bg-card p-6">
          <h2 className="text-base font-medium">Score trend</h2>
          <p className="text-xs text-muted-foreground">Average daily score this week</p>
          <div className="mt-4 h-72">
            <ResponsiveContainer width="100%" height="100%">
              <AreaChart data={PROGRESS_DATA} margin={{ top: 8, right: 8, bottom: 0, left: -16 }}>
                <defs>
                  <linearGradient id="area" x1="0" y1="0" x2="0" y2="1">
                    <stop offset="0%" stopColor="var(--foreground)" stopOpacity={0.25} />
                    <stop offset="100%" stopColor="var(--foreground)" stopOpacity={0} />
                  </linearGradient>
                </defs>
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
                <Area
                  type="monotone"
                  dataKey="score"
                  stroke="var(--foreground)"
                  strokeWidth={2.5}
                  fill="url(#area)"
                />
              </AreaChart>
            </ResponsiveContainer>
          </div>
        </div>

        <div className="rounded-xl border border-border bg-card p-6">
          <h2 className="text-base font-medium">Mastery by subject</h2>
          <div className="mt-5 space-y-4">
            {SUBJECT_BREAKDOWN.map((s) => (
              <div key={s.subject}>
                <div className="mb-1.5 flex items-center justify-between text-sm">
                  <span className="font-medium">{s.subject}</span>
                  <span className="text-muted-foreground">{s.mastery}%</span>
                </div>
                <div className="h-2 overflow-hidden rounded-full bg-secondary">
                  <div
                    className="h-full rounded-full bg-foreground"
                    style={{ width: `${s.mastery}%` }}
                  />
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>
    </>
  );
}
