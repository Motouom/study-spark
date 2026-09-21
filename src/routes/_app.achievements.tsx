import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Award, BookOpen, Bookmark, Check, Clock, Flame, Lock, Medal, Target } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import { Badge } from "@/components/ui/badge";
import { useStructuralProgress } from "@/hooks/use-structural-progress";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";
import { useUnifiedStreak } from "@/hooks/use-unified-streak";
import { PremiumGate } from "@/components/PremiumGate";

export const Route = createFileRoute("/_app/achievements")({
  head: () => ({ meta: [{ title: "Achievements — StudySpark" }] }),
  component: AchievementsPage,
});

type Milestone = {
  title: string;
  description: string;
  icon: typeof Award;
  current: number;
  target: number;
};

function AchievementsPage() {
  const { progress, summary, error } = useStructuralProgress();
  const readingProgress = usePaperStudyOverview();
  const streak = useUnifiedStreak();

  const milestones: Milestone[] = [
    {
      title: "Mark your first structural question",
      description: "Start tracking real paper practice.",
      icon: Award,
      current: summary.totalStarted,
      target: 1,
    },
    {
      title: "Practice three study days",
      description: "Build consistency across separate days.",
      icon: Flame,
      current: summary.totalStudyDays,
      target: 3,
    },
    {
      title: "Reach 80% structural mastery",
      description: "Pass most of the questions you attempt.",
      icon: Target,
      current: summary.completionRate,
      target: 80,
    },
    {
      title: "Pass 20 structural questions",
      description: "Show real command over full-paper questions.",
      icon: Medal,
      current: summary.passed,
      target: 20,
    },
    {
      title: "Study for one focused hour",
      description: "Accumulate measured solving time.",
      icon: Clock,
      current: summary.totalDurationSeconds,
      target: 3600,
    },
    {
      title: "Recover from failed work",
      description: "Turn weak questions into revision targets.",
      icon: Target,
      current: Math.min(summary.failed, summary.passed),
      target: 5,
    },
    {
      title: "Read five papers",
      description: "Open five protected papers and start reading.",
      icon: BookOpen,
      current: readingProgress.summary.papersRead,
      target: 5,
    },
    {
      title: "Mark 10 review points",
      description: "Flag confusing parts while you read.",
      icon: Bookmark,
      current: readingProgress.summary.reviewCount,
      target: 10,
    },
    {
      title: "Reach a 7-day streak",
      description: "Study on seven consecutive days.",
      icon: Flame,
      current: streak.currentStreak,
      target: 7,
    },
  ];

  const earned = milestones.filter((milestone) => milestone.current >= milestone.target).length;
  const xp =
    progress.length * 25 +
    summary.passed * 15 +
    readingProgress.summary.sessionsStarted * 10 +
    readingProgress.summary.reviewCount * 5 +
    earned * 100;
  const level = Math.max(1, Math.floor(xp / 300) + 1);
  const levelProgress = Math.min(100, Math.round(((xp % 300) / 300) * 100));
  const xpToNext = 300 - (xp % 300);

  return (
    <>
      <PageHeader title="Achievements" description="Badges unlock from real study activity." />

      <div className="space-y-6 px-4 py-6 md:px-10 md:py-8">
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
              <div className="flex flex-wrap items-center gap-2">
                <Badge variant="secondary">
                  {earned} of {milestones.length} earned
                </Badge>
                <span className="text-sm text-muted-foreground">
                  {xpToNext} XP to level {level + 1}
                </span>
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
            <h2 className="mb-3 text-sm font-medium text-muted-foreground">Milestones</h2>
            <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
              {milestones.map((milestone) => {
                const complete = milestone.current >= milestone.target;
                const percent = Math.min(
                  100,
                  Math.round((milestone.current / milestone.target) * 100),
                );
                const Icon = complete ? milestone.icon : Lock;
                return (
                  <div
                    key={milestone.title}
                    className={`flex flex-col rounded-xl border bg-card p-5 ${
                      complete ? "border-accent/40" : "border-dashed border-border"
                    }`}
                  >
                    <div className="flex items-start justify-between gap-3">
                      <div
                        className={`flex h-12 w-12 items-center justify-center rounded-xl ${
                          complete ? "bg-accent/15 text-accent" : "bg-muted text-muted-foreground"
                        }`}
                      >
                        <Icon className="h-5 w-5" />
                      </div>
                      {complete ? (
                        <Badge className="gap-1">
                          <Check className="h-3 w-3" /> Completed
                        </Badge>
                      ) : (
                        <span className="text-xs text-muted-foreground">
                          {milestone.current}/{milestone.target}
                        </span>
                      )}
                    </div>
                    <h3 className="mt-4 text-base font-medium">{milestone.title}</h3>
                    <p className="mt-1 text-xs text-muted-foreground">{milestone.description}</p>
                    <div className="mt-auto pt-4">
                      <div className="flex items-center justify-between text-[11px] text-muted-foreground">
                        <span>{percent}% complete</span>
                        {complete && <span className="font-medium text-accent">Done</span>}
                      </div>
                      <Progress value={percent} className="mt-1 h-1.5" />
                    </div>
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
                Mark structural paper questions or read papers to earn badges from real progress.
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
