import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import {
  calculateStructuralMastery,
  formatDuration,
  useStructuralProgress,
} from "@/hooks/use-structural-progress";
import { useMemo, useState } from "react";
import {
  ResponsiveContainer,
  AreaChart,
  Area,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
} from "recharts";
import { PremiumGate } from "@/components/PremiumGate";
import { Button } from "@/components/ui/button";
import { useAiActions } from "@/hooks/use-ai-actions";
import { Brain } from "lucide-react";

export const Route = createFileRoute("/_app/progress")({
  head: () => ({ meta: [{ title: "Progress — StudySpark" }] }),
  component: ProgressPage,
});

function ProgressPage() {
  const { profile } = useStudyProfile();
  const content = useStudyContent(profile);
  const { progress, summary, error } = useStructuralProgress();
  const ai = useAiActions();
  const [aiInsight, setAiInsight] = useState<{ text: string; source: "ai" | "fallback" } | null>(
    null,
  );
  const documentsById = useMemo(
    () => new Map(content.documents.map((document) => [document.id, document])),
    [content.documents],
  );
  const progressData = useMemo(() => {
    const labels = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    const today = new Date();
    return Array.from({ length: 7 }, (_, offset) => {
      const date = new Date(today);
      date.setDate(today.getDate() - (6 - offset));
      const dayProgress = progress.filter((item) => {
        const updatedAt = new Date(item.updatedAt);
        return (
          updatedAt.getFullYear() === date.getFullYear() &&
          updatedAt.getMonth() === date.getMonth() &&
          updatedAt.getDate() === date.getDate()
        );
      });
      const passed = dayProgress.filter((item) => item.status === "passed").length;
      return {
        day: labels[date.getDay()],
        score: dayProgress.length > 0 ? Math.round((passed / dayProgress.length) * 100) : 0,
      };
    });
  }, [progress]);
  const subjects = useMemo(
    () => calculateStructuralMastery(progress, content.documents),
    [content.documents, progress],
  );
  const needsAttention = progress
    .filter((item) => item.status === "failed" || item.status === "started")
    .slice(0, 5);
  const recentProgress = progress.slice(0, 8);
  const paperBreakdown = useMemo(() => {
    return [...documentsById.values()]
      .map((document) => {
        const marks = progress.filter((item) => item.documentId === document.id);
        const passed = marks.filter((item) => item.status === "passed").length;
        const failed = marks.filter((item) => item.status === "failed").length;
        const started = marks.filter((item) => item.status === "started").length;
        const totalTime = marks.reduce((sum, item) => sum + (item.durationSeconds ?? 0), 0);
        const timed = marks.filter((item) => item.durationSeconds && item.durationSeconds > 0);
        return {
          document,
          marks,
          passed,
          failed,
          started,
          totalTime,
          averageTime: timed.length > 0 ? Math.round(totalTime / timed.length) : 0,
          passRate: marks.length > 0 ? Math.round((passed / marks.length) * 100) : 0,
        };
      })
      .filter((item) => item.marks.length > 0)
      .sort((a, b) => b.marks.length - a.marks.length);
  }, [documentsById, progress]);

  return (
    <>
      <PageHeader
        title="Your progress"
        description="Track your structural paper questions by started, passed, and failed marks."
      />
      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium progress analytics"
          description="Upgrade to unlock detailed progress breakdowns, mastery trends, timing analysis, and revision priorities."
        >
        <section className="rounded-xl border border-border bg-card p-5">
          <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
            <div>
              <div className="flex items-center gap-2">
                <Brain className="h-5 w-5" />
                <h2 className="text-base font-medium">AI progress analyst</h2>
              </div>
              <p className="mt-1 text-sm text-muted-foreground">
                Generate a focused review from your real structural question marks.
              </p>
            </div>
            <Button
              type="button"
              disabled={ai.loading === "progress"}
              onClick={async () => {
                const result = await ai.generateProgressInsight();
                setAiInsight({ text: result.insight, source: result.source });
              }}
            >
              <Brain className="mr-1.5 h-4 w-4" />
              {ai.loading === "progress" ? "Analyzing..." : "Analyze progress"}
            </Button>
          </div>
          {ai.error && (
            <p className="mt-3 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
              {ai.error}
            </p>
          )}
          {aiInsight && (
            <div className="mt-4 whitespace-pre-line rounded-lg bg-secondary/40 p-4 text-sm leading-7">
              <div className="mb-2 text-xs uppercase tracking-wider text-muted-foreground">
                {aiInsight.source === "ai" ? "AI generated" : "Local fallback"}
              </div>
              {aiInsight.text}
            </div>
          )}
        </section>

        {error && (
          <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Structural progress could not be loaded: {error}
          </div>
        )}
        {content.error && (
          <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Paper progress could not be loaded: {content.error}
          </div>
        )}

        <section className="grid gap-4 md:grid-cols-4">
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="text-xs text-muted-foreground">Questions started</div>
            <div className="mt-2 font-display text-4xl">{summary.totalStarted}</div>
          </div>
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="text-xs text-muted-foreground">Pass rate</div>
            <div className="mt-2 font-display text-4xl">{summary.completionRate}%</div>
          </div>
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="text-xs text-muted-foreground">Study days</div>
            <div className="mt-2 font-display text-4xl">{summary.totalStudyDays}</div>
          </div>
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="text-xs text-muted-foreground">Avg. time</div>
            <div className="mt-2 font-display text-4xl">
              {formatDuration(summary.averageDurationSeconds)}
            </div>
          </div>
        </section>

        <section className="grid gap-4 md:grid-cols-3">
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="text-xs text-muted-foreground">Passed</div>
            <div className="mt-2 font-display text-4xl">{summary.passed}</div>
          </div>
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="text-xs text-muted-foreground">Failed</div>
            <div className="mt-2 font-display text-4xl">{summary.failed}</div>
          </div>
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="text-xs text-muted-foreground">Total time</div>
            <div className="mt-2 font-display text-4xl">
              {formatDuration(summary.totalDurationSeconds)}
            </div>
          </div>
        </section>

        <div className="rounded-xl border border-border bg-card p-6">
          <h2 className="text-base font-medium">Pass trend</h2>
          <p className="text-xs text-muted-foreground">Daily pass rate from structural marks</p>
          <div className="mt-4 h-72">
            <ResponsiveContainer width="100%" height="100%">
              <AreaChart data={progressData} margin={{ top: 8, right: 8, bottom: 0, left: -16 }}>
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
            {subjects.length > 0 ? (
              subjects.map((subject) => {
                return (
                  <div key={subject.subject}>
                    <div className="mb-1.5 flex items-center justify-between text-sm">
                      <span className="font-medium">{subject.subject}</span>
                      <span className="text-muted-foreground">{subject.mastery}%</span>
                    </div>
                    <div className="h-2 overflow-hidden rounded-full bg-secondary">
                      <div
                        className="h-full rounded-full bg-foreground"
                        style={{ width: `${subject.mastery}%` }}
                      />
                    </div>
                    <div className="mt-1 text-xs text-muted-foreground">
                      {subject.passed} passed · {subject.failed} failed · {subject.coverage}%
                      coverage
                    </div>
                  </div>
                );
              })
            ) : (
              <p className="text-sm text-muted-foreground">
                Complete your profile to choose subjects and begin tracking mastery.
              </p>
            )}
          </div>
        </div>

        <div className="rounded-xl border border-border bg-card p-6">
          <h2 className="text-base font-medium">Paper breakdown</h2>
          <p className="text-xs text-muted-foreground">
            Detailed progress per uploaded structural paper.
          </p>
          <div className="mt-5 space-y-3">
            {paperBreakdown.length > 0 ? (
              paperBreakdown.map((item) => (
                <div key={item.document.id} className="rounded-lg border border-border p-4">
                  <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
                    <div>
                      <div className="text-sm font-medium">{item.document.title}</div>
                      <div className="text-xs text-muted-foreground">{item.document.subject}</div>
                    </div>
                    <div className="text-sm font-medium">{item.passRate}% pass rate</div>
                  </div>
                  <div className="mt-4 grid gap-2 text-xs sm:grid-cols-5">
                    <ProgressDetail label="Started" value={String(item.started)} />
                    <ProgressDetail label="Passed" value={String(item.passed)} />
                    <ProgressDetail label="Failed" value={String(item.failed)} />
                    <ProgressDetail label="Avg. time" value={formatDuration(item.averageTime)} />
                    <ProgressDetail label="Total time" value={formatDuration(item.totalTime)} />
                  </div>
                </div>
              ))
            ) : (
              <p className="text-sm text-muted-foreground">
                Paper-level detail appears after you mark questions in a paper.
              </p>
            )}
          </div>
        </div>

        <div className="rounded-xl border border-border bg-card p-6">
          <h2 className="text-base font-medium">Needs attention</h2>
          <p className="text-xs text-muted-foreground">
            Started and failed structural questions to revisit.
          </p>
          <div className="mt-5 space-y-3">
            {needsAttention.length > 0 ? (
              needsAttention.map((item) => {
                const document = documentsById.get(item.documentId);
                return (
                  <div
                    key={item.id}
                    className="flex flex-col gap-2 rounded-lg border border-border p-4 sm:flex-row sm:items-center sm:justify-between"
                  >
                    <div>
                      <div className="text-sm font-medium">Question {item.questionNumber}</div>
                      <div className="text-xs text-muted-foreground">
                        {document?.title ?? "Paper"} · {item.status} ·{" "}
                        {item.completedAt ? formatDuration(item.durationSeconds) : "timer running"}
                      </div>
                    </div>
                  </div>
                );
              })
            ) : (
              <p className="text-sm text-muted-foreground">
                No started or failed questions yet. Open a paper and mark your work as you solve.
              </p>
            )}
          </div>
        </div>

        <div className="rounded-xl border border-border bg-card p-6">
          <h2 className="text-base font-medium">Recent marks</h2>
          <p className="text-xs text-muted-foreground">Latest updates across your papers.</p>
          <div className="mt-5 divide-y divide-border">
            {recentProgress.length > 0 ? (
              recentProgress.map((item) => {
                const document = documentsById.get(item.documentId);
                return (
                  <div
                    key={item.id}
                    className="flex flex-col gap-1 py-3 sm:flex-row sm:items-center sm:justify-between"
                  >
                    <div>
                      <div className="text-sm font-medium">
                        {document?.title ?? "Paper"} · Q{item.questionNumber}
                      </div>
                      <div className="text-xs text-muted-foreground">
                        {item.completedAt
                          ? `${formatDuration(item.durationSeconds)} · ${new Date(
                              item.updatedAt,
                            ).toLocaleString()}`
                          : `Started ${new Date(item.updatedAt).toLocaleString()}`}
                      </div>
                    </div>
                    <span className="text-xs capitalize text-muted-foreground">{item.status}</span>
                  </div>
                );
              })
            ) : (
              <p className="py-4 text-sm text-muted-foreground">
                Your recent paper marks will appear here.
              </p>
            )}
          </div>
        </div>
        </PremiumGate>
      </div>
    </>
  );
}

function ProgressDetail({ label, value }: { label: string; value: string }) {
  return (
    <div className="rounded-lg bg-secondary/50 px-3 py-2">
      <div className="text-muted-foreground">{label}</div>
      <div className="mt-1 font-medium">{value}</div>
    </div>
  );
}
