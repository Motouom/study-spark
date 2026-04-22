import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { STREAK_DAYS } from "@/lib/mock-data";
import { Flame, Calendar, Trophy } from "lucide-react";
import { Button } from "@/components/ui/button";

export const Route = createFileRoute("/_app/streak")({
  head: () => ({ meta: [{ title: "Streak — StudyFlow" }] }),
  component: StreakPage,
});

function intensityClass(i: number) {
  if (i === 0) return "bg-secondary";
  if (i === 1) return "bg-accent/30";
  if (i === 2) return "bg-accent/55";
  if (i === 3) return "bg-accent/80";
  return "bg-accent";
}

function StreakPage() {
  // chunk into 7-day weeks
  const weeks: typeof STREAK_DAYS[] = [];
  for (let i = 0; i < STREAK_DAYS.length; i += 7) {
    weeks.push(STREAK_DAYS.slice(i, i + 7));
  }
  const currentStreak = 14;
  const longest = 28;
  const totalDays = STREAK_DAYS.filter((d) => d.intensity > 0).length;

  return (
    <>
      <PageHeader title="Your streak" description="Every day counts. Keep the chain alive." />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <section className="grid gap-4 md:grid-cols-3">
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="flex items-center gap-2 text-xs text-accent">
              <Flame className="h-4 w-4" /> Current streak
            </div>
            <div className="mt-2 font-display text-4xl">{currentStreak}</div>
            <div className="mt-1 text-xs text-muted-foreground">days in a row</div>
          </div>
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="flex items-center gap-2 text-xs text-muted-foreground">
              <Trophy className="h-4 w-4" /> Longest streak
            </div>
            <div className="mt-2 font-display text-4xl">{longest}</div>
            <div className="mt-1 text-xs text-muted-foreground">all time</div>
          </div>
          <div className="rounded-xl border border-border bg-card p-5">
            <div className="flex items-center gap-2 text-xs text-muted-foreground">
              <Calendar className="h-4 w-4" /> Total study days
            </div>
            <div className="mt-2 font-display text-4xl">{totalDays}</div>
            <div className="mt-1 text-xs text-muted-foreground">in the last 90 days</div>
          </div>
        </section>

        <section className="rounded-xl border border-border bg-card p-6">
          <div className="mb-5 flex items-center justify-between">
            <div>
              <h2 className="text-base font-medium">Last 90 days</h2>
              <p className="text-xs text-muted-foreground">Each square is a day of study.</p>
            </div>
            <div className="hidden items-center gap-2 text-xs text-muted-foreground md:flex">
              Less
              {[0, 1, 2, 3, 4].map((i) => (
                <span key={i} className={`h-3 w-3 rounded-sm ${intensityClass(i)}`} />
              ))}
              More
            </div>
          </div>
          <div className="overflow-x-auto">
            <div className="flex gap-1.5">
              {weeks.map((w, wi) => (
                <div key={wi} className="flex flex-col gap-1.5">
                  {Array.from({ length: 7 }).map((_, di) => {
                    const day = w[di];
                    if (!day) return <span key={di} className="h-4 w-4" />;
                    return (
                      <span
                        key={di}
                        title={`${day.date} · ${day.intensity > 0 ? "studied" : "no activity"}`}
                        className={`h-4 w-4 rounded-sm ${intensityClass(day.intensity)}`}
                      />
                    );
                  })}
                </div>
              ))}
            </div>
          </div>
        </section>

        <section className="grid gap-4 md:grid-cols-2">
          <div className="rounded-xl border border-border bg-card p-6">
            <h3 className="text-base font-medium">Streak rules</h3>
            <ul className="mt-3 space-y-2 text-sm text-muted-foreground">
              <li>• Complete at least 1 quiz per day to keep your streak.</li>
              <li>• Streaks reset if you miss a full calendar day.</li>
              <li>• Premium users get 1 free streak freeze per week.</li>
            </ul>
          </div>
          <div className="flex flex-col justify-between rounded-xl border border-border bg-foreground p-6 text-background">
            <div>
              <h3 className="font-display text-2xl">Don't lose it today</h3>
              <p className="mt-1.5 text-sm text-background/70">A 5-minute quiz keeps your 14-day streak alive.</p>
            </div>
            <Button asChild className="mt-5 bg-background text-foreground hover:bg-background/90">
              <Link to="/quiz/setup">Start now</Link>
            </Button>
          </div>
        </section>
      </div>
    </>
  );
}
