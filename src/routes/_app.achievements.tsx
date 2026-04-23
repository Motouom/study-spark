import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { ACHIEVEMENTS, type Achievement } from "@/lib/mock-data";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import * as Icons from "lucide-react";
import { Lock } from "lucide-react";

export const Route = createFileRoute("/_app/achievements")({
  head: () => ({ meta: [{ title: "Achievements — StudyFlow" }] }),
  component: AchievementsPage,
});

const rarityStyle: Record<Achievement["rarity"], string> = {
  common: "bg-secondary text-secondary-foreground",
  rare: "bg-chart-1/15 text-chart-1",
  epic: "bg-chart-4/15 text-chart-4",
  legendary: "bg-accent/20 text-accent-foreground",
};

function AchievementCard({ a }: { a: Achievement }) {
  const Icon = (Icons[a.icon as keyof typeof Icons] as Icons.LucideIcon) || Icons.Award;
  return (
    <div
      className={`relative rounded-xl border p-5 ${
        a.earned ? "border-border bg-card" : "border-dashed border-border bg-card/60"
      }`}
    >
      <div className="flex items-start justify-between">
        <div
          className={`flex h-12 w-12 items-center justify-center rounded-xl ${
            a.earned ? "bg-foreground text-background" : "bg-muted text-muted-foreground"
          }`}
        >
          {a.earned ? <Icon className="h-6 w-6" /> : <Lock className="h-5 w-5" />}
        </div>
        <Badge className={`capitalize ${rarityStyle[a.rarity]} hover:${rarityStyle[a.rarity]}`} variant="secondary">
          {a.rarity}
        </Badge>
      </div>
      <h3 className={`mt-4 text-base font-medium ${a.earned ? "" : "text-muted-foreground"}`}>{a.name}</h3>
      <p className="mt-1 text-xs text-muted-foreground">{a.description}</p>
      {a.earned ? (
        <p className="mt-3 text-xs text-success">Earned · {a.earnedDate}</p>
      ) : (
        <div className="mt-3">
          <Progress value={a.progress ?? 0} className="h-1.5" />
          <p className="mt-1.5 text-xs text-muted-foreground">{a.progress ?? 0}% complete</p>
        </div>
      )}
    </div>
  );
}

function AchievementsPage() {
  const earned = ACHIEVEMENTS.filter((a) => a.earned);
  const locked = ACHIEVEMENTS.filter((a) => !a.earned);
  const xp = earned.length * 250;
  const level = Math.floor(xp / 1000) + 1;
  const levelProgress = (xp % 1000) / 10;

  return (
    <>
      <PageHeader title="Achievements" description="Earn badges as you study. Keep climbing." />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <div className="rounded-xl border border-border bg-card p-6 md:p-8">
          <div className="flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
            <div>
              <p className="text-xs uppercase tracking-wider text-muted-foreground">Your level</p>
              <div className="mt-1 flex items-baseline gap-3">
                <span className="font-display text-5xl">{level}</span>
                <span className="text-sm text-muted-foreground">{xp.toLocaleString()} XP</span>
              </div>
            </div>
            <div className="text-sm text-muted-foreground">
              <span className="text-foreground font-medium">{earned.length}</span> of {ACHIEVEMENTS.length} earned
            </div>
          </div>
          <div className="mt-5">
            <div className="flex justify-between text-xs text-muted-foreground">
              <span>Level {level}</span>
              <span>Level {level + 1}</span>
            </div>
            <Progress value={levelProgress} className="mt-1.5 h-2" />
          </div>
        </div>

        <section>
          <h2 className="mb-3 text-sm font-medium text-muted-foreground">Earned ({earned.length})</h2>
          <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
            {earned.map((a) => <AchievementCard key={a.id} a={a} />)}
          </div>
        </section>

        <section>
          <h2 className="mb-3 text-sm font-medium text-muted-foreground">Locked ({locked.length})</h2>
          <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
            {locked.map((a) => <AchievementCard key={a.id} a={a} />)}
          </div>
        </section>

        <div className="rounded-xl border border-border bg-foreground p-6 text-background md:p-8">
          <h3 className="font-display text-2xl">Want more badges?</h3>
          <p className="mt-1.5 text-sm text-background/70">Take a quiz today and unlock the next milestone.</p>
          <Link
            to="/quiz/setup"
            search={{} as never}
            className="mt-4 inline-flex items-center justify-center rounded-md bg-background px-4 py-2 text-sm font-medium text-foreground hover:bg-background/90"
          >
            Start a quiz
          </Link>
        </div>
      </div>
    </>
  );
}
