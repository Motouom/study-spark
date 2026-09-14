import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Award, Clock, Flame, Lock, Medal, Target } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import { useStructuralProgress } from "@/hooks/use-structural-progress";
import { PremiumGate } from "@/components/PremiumGate";

export const Route = createFileRoute("/_app/achievements")({
  head: () => ({ meta: [{ title: "Achievements — StudySpark" }] }),
  component: AchievementsPage,
});

function AchievementsPage() {
  const { progress, summary, error } = useStructuralProgress();
  const milestones = [
    {
      title: "Mark your first structural question",
      description: "Start tracking real paper practice.",
      complete: summary.totalStarted >= 1,
      progress: summary.totalStarted >= 1 ? 100 : 0,
      icon: Award,
    },
    {
      title: "Practice three study days",
      description: "Build consistency across separate days.",
      complete: summary.totalStudyDays >= 3,
      progress: Math.min(100, Math.round((summary.totalStudyDays / 3) * 100)),
      icon: Flame,
    },
    {
      title: "Reach 80% structural mastery",
      description: "Pass most of the questions you attempt.",
      complete: summary.completionRate >= 80,
      progress: summary.completionRate,
      icon: Target,
    },
    {
      title: "Pass 20 structural questions",
      description: "Show real command over full-paper questions.",
      complete: summary.passed >= 20,
      progress: Math.min(100, Math.round((summary.passed / 20) * 100)),
      icon: Medal,
    },
    {
      title: "Study for one focused hour",
      description: "Accumulate measured solving time.",
      complete: summary.totalDurationSeconds >= 3600,
      progress: Math.min(100, Math.round((summary.totalDurationSeconds / 3600) * 100)),
      icon: Clock,
    },
    {
      title: "Recover from failed work",
      description: "Turn weak questions into revision targets.",
      complete: summary.failed >= 5 && summary.passed >= 5,
      progress: Math.min(100, Math.round(((summary.failed + summary.passed) / 10) * 100)),
      icon: Target,
    },
  ];
  const earned = milestones.filter((milestone) => milestone.complete).length;
  const xp = progress.length * 25 + summary.passed * 15 + earned * 100;
  const level = Math.max(1, Math.floor(xp / 300) + 1);
  const levelProgress = Math.min(100, Math.round(((xp % 300) / 300) * 100));

  return (
    <>
      <PageHeader title="Achievements" description="Badges unlock from real study activity." />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium achievements"
          description="Upgrade to unlock XP, milestones, badges, and advanced learning motivation."
        >
        {error && (
          <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Achievements could not be loaded: {error}
          </div>
        )}

        <div className="rounded-xl border border-border bg-card p-6 md:p-8">
          <div className="flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
            <div>
              <p className="text-xs uppercase tracking-wider text-muted-foreground">Your level</p>
              <div className="mt-1 flex items-baseline gap-3">
                <span className="font-display text-5xl">{level}</span>
                <span className="text-sm text-muted-foreground">{xp} XP</span>
              </div>
            </div>
            <div className="text-sm text-muted-foreground">
              <span className="font-medium text-foreground">{earned}</span> earned
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
          <h2 className="mb-3 text-sm font-medium text-muted-foreground">Next milestones</h2>
          <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
            {milestones.map((milestone) => {
              const Icon = milestone.complete ? milestone.icon : Lock;
              return (
                <div
                  key={milestone.title}
                  className={`rounded-xl border bg-card p-5 ${
                    milestone.complete ? "border-border" : "border-dashed border-border"
                  }`}
                >
                  <div
                    className={`flex h-12 w-12 items-center justify-center rounded-xl ${
                      milestone.complete
                        ? "bg-accent/15 text-accent"
                        : "bg-muted text-muted-foreground"
                    }`}
                  >
                    <Icon className="h-5 w-5" />
                  </div>
                  <h3 className="mt-4 text-base font-medium">{milestone.title}</h3>
                  <p className="mt-1 text-xs text-muted-foreground">{milestone.description}</p>
                  <p className="mt-3 text-xs text-muted-foreground">
                    {milestone.progress}% complete
                  </p>
                </div>
              );
            })}
          </div>
        </section>

        {earned === 0 && (
          <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
            <Award className="mx-auto h-10 w-10 text-muted-foreground" />
            <h3 className="mt-4 text-base font-medium">No achievements yet</h3>
            <p className="mx-auto mt-1 max-w-md text-sm text-muted-foreground">
              Mark structural paper questions to earn badges from real progress.
            </p>
            <Button asChild className="mt-5">
              <Link to="/library">Open papers</Link>
            </Button>
          </div>
        )}
        </PremiumGate>
      </div>
    </>
  );
}
