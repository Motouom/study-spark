import {
  Bar,
  BarChart,
  CartesianGrid,
  Line,
  LineChart,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";

type ProgressPoint = {
  day: string;
  score: number;
};

type SubjectBreakdown = {
  subject: string;
  mastery: number;
};

export default function PremiumDashboardCharts({
  progressData,
  subjectBreakdown,
  totalStarted,
}: {
  progressData: ProgressPoint[];
  subjectBreakdown: SubjectBreakdown[];
  totalStarted: number;
}) {
  return (
    <section className="grid min-w-0 gap-4 lg:grid-cols-3">
      <div className="min-w-0 rounded-xl border border-border bg-card p-4 sm:p-6 lg:col-span-2">
        <div className="mb-4 flex flex-col gap-1 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h2 className="text-base font-medium">Weekly performance</h2>
            <p className="text-xs text-muted-foreground">Daily structural pass rate</p>
          </div>
          <span className="text-xs text-muted-foreground">
            {totalStarted > 0 ? `${totalStarted} marked` : "No structural progress yet"}
          </span>
        </div>
        <div className="h-56 min-w-0 sm:h-64">
          <ResponsiveContainer width="100%" height="100%">
            <LineChart data={progressData} margin={{ top: 8, right: 8, bottom: 0, left: -24 }}>
              <CartesianGrid stroke="oklch(0 0 0 / 0.06)" vertical={false} />
              <XAxis
                dataKey="day"
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
                width={28}
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

      <div className="min-w-0 rounded-xl border border-border bg-card p-4 sm:p-6">
        <h2 className="text-base font-medium">Mastery by subject</h2>
        <p className="text-xs text-muted-foreground">Last 30 days</p>
        <div className="mt-4 h-56 min-w-0 sm:h-64">
          <ResponsiveContainer width="100%" height="100%">
            <BarChart data={subjectBreakdown} margin={{ top: 8, right: 4, bottom: 0, left: -24 }}>
              <CartesianGrid stroke="oklch(0 0 0 / 0.06)" vertical={false} />
              <XAxis
                dataKey="subject"
                stroke="var(--muted-foreground)"
                fontSize={10}
                tickLine={false}
                axisLine={false}
                interval={0}
                tickFormatter={(value) => String(value).slice(0, 8)}
              />
              <YAxis
                stroke="var(--muted-foreground)"
                fontSize={11}
                tickLine={false}
                axisLine={false}
                width={28}
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
  );
}
