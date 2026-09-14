import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Search, RefreshCw, Shield } from "lucide-react";
import { useMemo, useState } from "react";
import { useAdminData } from "@/hooks/use-admin-data";
import { classLabel, seriesLabel } from "@/lib/study-reference-data";
import { formatDuration } from "@/hooks/use-structural-progress";

export const Route = createFileRoute("/control-panel-9k3x/users")({
  component: UsersAdmin,
});

function UsersAdmin() {
  const { learners, loading, error, reload, setLearnerPlan } = useAdminData();
  const [q, setQ] = useState("");
  const filtered = useMemo(() => {
    const needle = q.trim().toLowerCase();
    return learners.filter((learner) =>
      needle
        ? [learner.name, learner.classLevel, learner.series, learner.subjects.join(" ")]
            .join(" ")
            .toLowerCase()
            .includes(needle)
        : true,
    );
  }, [learners, q]);

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Users</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            {learners.length.toLocaleString()} learner profiles visible to authorized admins.
          </p>
        </div>
        <Button variant="outline" size="sm" onClick={() => void reload()}>
          <RefreshCw className="mr-1.5 h-3.5 w-3.5" />
          Refresh
        </Button>
      </div>

      {error && (
        <div className="mb-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          {error}
        </div>
      )}

      <div className="mb-4 flex flex-wrap items-center gap-2">
        <div className="relative min-w-64 flex-1">
          <Search className="pointer-events-none absolute left-3 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
          <Input
            value={q}
            onChange={(e) => setQ(e.target.value)}
            placeholder="Search by name, class, series, or subject..."
            className="h-9 pl-9"
          />
        </div>
        <Badge variant="secondary" className="gap-1.5">
          <Shield className="h-3 w-3" /> Plan controls
        </Badge>
      </div>

      <div className="overflow-hidden rounded-xl border border-border bg-card">
        <table className="w-full text-sm">
          <thead className="bg-secondary/40 text-left text-xs text-muted-foreground">
            <tr>
              <th className="px-4 py-3 font-normal">Learner</th>
              <th className="px-4 py-3 font-normal">Access</th>
              <th className="px-4 py-3 font-normal">Subjects</th>
              <th className="px-4 py-3 font-normal text-right">Started</th>
              <th className="px-4 py-3 font-normal text-right">Passed</th>
              <th className="px-4 py-3 font-normal text-right">Pass rate</th>
              <th className="px-4 py-3 font-normal text-right">Avg. time</th>
              <th className="px-4 py-3 font-normal text-right">Days</th>
              <th className="px-4 py-3 font-normal">Last activity</th>
              <th className="px-4 py-3 font-normal text-right">Plan</th>
            </tr>
          </thead>
          <tbody>
            {filtered.map((learner) => (
              <tr key={learner.userId} className="border-t border-border hover:bg-secondary/20">
                <td className="px-4 py-3">
                  <div className="flex items-center gap-2.5">
                    <div className="flex h-8 w-8 items-center justify-center rounded-full bg-foreground text-[10px] text-background">
                      {learner.name.slice(0, 2).toUpperCase()}
                    </div>
                    <div>
                      <div className="font-medium">{learner.name}</div>
                      <div className="flex items-center gap-1.5 text-xs text-muted-foreground">
                        <span>{learner.language}</span>
                        <Badge variant={learner.plan === "premium" ? "default" : "secondary"}>
                          {learner.plan}
                        </Badge>
                      </div>
                    </div>
                  </div>
                </td>
                <td className="px-4 py-3">
                  <div>
                    {classLabel(learner.classLevel)} · {seriesLabel(learner.series)}
                  </div>
                  <div className="text-xs text-muted-foreground">
                    {[learner.city, learner.region, learner.country].filter(Boolean).join(", ")}
                    {learner.locationVerified ? " · verified" : " · self-reported"}
                  </div>
                </td>
                <td className="max-w-sm px-4 py-3 text-xs text-muted-foreground">
                  {learner.subjects.join(", ")}
                </td>
                <td className="px-4 py-3 text-right font-mono text-xs">
                  {learner.questionsStarted}
                </td>
                <td className="px-4 py-3 text-right font-mono text-xs">
                  {learner.questionsPassed}
                  {learner.questionsFailed > 0 && (
                    <span className="text-muted-foreground">
                      {" "}
                      / {learner.questionsFailed} failed
                    </span>
                  )}
                </td>
                <td className="px-4 py-3 text-right font-mono text-xs">
                  {Math.round(learner.passRate)}%
                </td>
                <td className="px-4 py-3 text-right font-mono text-xs">
                  {formatDuration(Math.round(learner.averageDurationSeconds))}
                </td>
                <td className="px-4 py-3 text-right font-mono text-xs">{learner.studyDays}</td>
                <td className="px-4 py-3 text-xs text-muted-foreground">
                  {learner.lastSeen ? new Date(learner.lastSeen).toLocaleString() : "No progress"}
                </td>
                <td className="px-4 py-3 text-right">
                  <Button
                    variant={learner.plan === "premium" ? "outline" : "default"}
                    size="sm"
                    onClick={() =>
                      void setLearnerPlan(
                        learner.userId,
                        learner.plan === "premium" ? "free" : "premium",
                      )
                    }
                  >
                    {learner.plan === "premium" ? "Make free" : "Make premium"}
                  </Button>
                </td>
              </tr>
            ))}
            {!loading && filtered.length === 0 && (
              <tr>
                <td colSpan={10} className="px-4 py-10 text-center text-sm text-muted-foreground">
                  No learners match this search.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}
