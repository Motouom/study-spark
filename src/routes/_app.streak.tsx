import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Calendar, Flame, Snowflake, Trophy } from "lucide-react";
import { Button } from "@/components/ui/button";
import { dayKey, useStructuralProgress } from "@/hooks/use-structural-progress";
import { PremiumGate } from "@/components/PremiumGate";
import { useStreakFreezes } from "@/hooks/use-streak-freezes";

function localDateKey(date: Date) {
  const month = `${date.getMonth() + 1}`.padStart(2, "0");
  const day = `${date.getDate()}`.padStart(2, "0");
  return `${date.getFullYear()}-${month}-${day}`;
}

export const Route = createFileRoute("/_app/streak")({
  head: () => ({ meta: [{ title: "Streak — StudySpark" }] }),
  component: StreakPage,
});

const emptyDays = Array.from({ length: 91 }, (_, index) => index);

function StreakPage() {
  const { summary, error } = useStructuralProgress();
  const freezes = useStreakFreezes();
  const activeDays = summary.studyDays;
  const freezeDays = new Set(freezes.freezes.map((freeze) => freeze.freezeDate));
  const weeks: number[][] = [];
  for (let i = 0; i < emptyDays.length; i += 7) {
    weeks.push(emptyDays.slice(i, i + 7));
  }

  return (
    <>
      <PageHeader
        title="Your streak"
        description="Your streak grows from real structural paper activity."
      />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium streaks"
          description="Upgrade to unlock daily streak tracking, long-term consistency history, and one streak freeze each week."
        >
          {error && (
            <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
              Structural streak data could not be loaded: {error}
            </div>
          )}
          {freezes.error && (
            <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
              Streak freezes could not be loaded: {freezes.error}
            </div>
          )}

          <section className="grid gap-4 md:grid-cols-3">
            <div className="rounded-xl border border-border bg-card p-5">
              <div className="flex items-center gap-2 text-xs text-accent">
                <Flame className="h-4 w-4" /> Current streak
              </div>
              <div className="mt-2 font-display text-4xl">{summary.currentStreak}</div>
              <div className="mt-1 text-xs text-muted-foreground">days in a row</div>
            </div>
            <div className="rounded-xl border border-border bg-card p-5">
              <div className="flex items-center gap-2 text-xs text-muted-foreground">
                <Trophy className="h-4 w-4" /> Longest streak
              </div>
              <div className="mt-2 font-display text-4xl">{summary.longestStreak}</div>
              <div className="mt-1 text-xs text-muted-foreground">all time</div>
            </div>
            <div className="rounded-xl border border-border bg-card p-5">
              <div className="flex items-center gap-2 text-xs text-muted-foreground">
                <Calendar className="h-4 w-4" /> Total study days
              </div>
              <div className="mt-2 font-display text-4xl">{summary.totalStudyDays}</div>
              <div className="mt-1 text-xs text-muted-foreground">in the last 90 days</div>
            </div>
          </section>

          <section className="rounded-xl border border-border bg-card p-6">
            <div className="flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
              <div>
                <div className="flex items-center gap-2 text-xs text-accent">
                  <Snowflake className="h-4 w-4" /> Premium streak freeze
                </div>
                <h2 className="mt-2 text-base font-medium">Protect this week</h2>
                <p className="mt-1 text-sm text-muted-foreground">
                  Use one freeze per week when you miss a study day. Freeze days are kept separate
                  from real study days.
                </p>
              </div>
              <Button
                type="button"
                disabled={freezes.loading || freezes.saving || freezes.usedThisWeek}
                onClick={() => void freezes.useFreeze()}
              >
                <Snowflake className="mr-1.5 h-4 w-4" />
                {freezes.usedThisWeek
                  ? "Used this week"
                  : freezes.saving
                    ? "Saving..."
                    : "Use freeze"}
              </Button>
            </div>
            {freezes.freezes.length > 0 && (
              <div className="mt-4 flex flex-wrap gap-2">
                {freezes.freezes.slice(0, 8).map((freeze) => (
                  <span
                    key={freeze.id}
                    className="rounded-full border border-border bg-secondary px-3 py-1 text-xs"
                  >
                    {new Date(freeze.freezeDate).toLocaleDateString()}
                  </span>
                ))}
              </div>
            )}
          </section>

          <section className="rounded-xl border border-border bg-card p-6">
            <div className="mb-5 flex items-center justify-between">
              <div>
                <h2 className="text-base font-medium">Last 90 days</h2>
                <p className="text-xs text-muted-foreground">Each square fills after real study.</p>
              </div>
            </div>
            <div className="overflow-x-auto">
              <div className="flex gap-1.5">
                {weeks.map((week, weekIndex) => (
                  <div key={weekIndex} className="flex flex-col gap-1.5">
                    {Array.from({ length: 7 }).map((_, dayIndex) => {
                      const offset = week[dayIndex];
                      const date = new Date();
                      date.setDate(date.getDate() - (90 - offset));
                      const key = dayKey(date);
                      const state = activeDays.has(key)
                        ? "studied"
                        : freezeDays.has(localDateKey(date))
                          ? "frozen"
                          : "idle";
                      return (
                        <span
                          key={dayIndex}
                          role="img"
                          aria-label={`${date.toLocaleDateString()}: ${state}`}
                          className={`h-4 w-4 rounded-sm ${
                            state === "studied"
                              ? "bg-foreground"
                              : state === "frozen"
                                ? "bg-accent"
                                : "bg-secondary"
                          }`}
                        />
                      );
                    })}
                  </div>
                ))}
              </div>
            </div>
          </section>

          {summary.totalStarted === 0 && (
            <section className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
              <Flame className="mx-auto h-10 w-10 text-muted-foreground" />
              <h3 className="mt-4 text-base font-medium">No streak yet</h3>
              <p className="mx-auto mt-1 max-w-md text-sm text-muted-foreground">
                Start one structural question today to begin tracking study consistency.
              </p>
              <Button asChild className="mt-5">
                <Link to="/library">Start now</Link>
              </Button>
            </section>
          )}
        </PremiumGate>
      </div>
    </>
  );
}
