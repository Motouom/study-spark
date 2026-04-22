import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { LEADERBOARD } from "@/lib/mock-data";
import { Trophy, Flame, Crown, Medal } from "lucide-react";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Badge } from "@/components/ui/badge";

export const Route = createFileRoute("/_app/leaderboard")({
  head: () => ({ meta: [{ title: "Leaderboard — StudyFlow" }] }),
  component: LeaderboardPage,
});

function rankIcon(rank: number) {
  if (rank === 1) return <Crown className="h-4 w-4 text-accent" />;
  if (rank === 2) return <Medal className="h-4 w-4 text-muted-foreground" />;
  if (rank === 3) return <Medal className="h-4 w-4 text-warning" />;
  return null;
}

function LeaderboardPage() {
  return (
    <>
      <PageHeader title="Leaderboard" description="See how you rank against students across Africa." />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <Tabs defaultValue="weekly">
          <TabsList>
            <TabsTrigger value="weekly">This week</TabsTrigger>
            <TabsTrigger value="monthly">This month</TabsTrigger>
            <TabsTrigger value="alltime">All time</TabsTrigger>
          </TabsList>

          {(["weekly", "monthly", "alltime"] as const).map((tab) => (
            <TabsContent key={tab} value={tab} className="mt-6">
              {/* Top 3 podium */}
              <div className="grid gap-3 sm:grid-cols-3">
                {LEADERBOARD.slice(0, 3).map((u) => (
                  <div
                    key={u.rank}
                    className={`rounded-xl border p-5 text-center ${
                      u.rank === 1 ? "border-accent bg-accent/10" : "border-border bg-card"
                    }`}
                  >
                    <div className="mx-auto flex h-14 w-14 items-center justify-center rounded-full bg-foreground font-display text-xl text-background">
                      {u.name.charAt(0)}
                    </div>
                    <div className="mt-3 flex items-center justify-center gap-1.5 text-xs text-muted-foreground">
                      {rankIcon(u.rank)} #{u.rank}
                    </div>
                    <h3 className="mt-2 text-base font-medium">{u.name}</h3>
                    <p className="text-xs text-muted-foreground">{u.country}</p>
                    <div className="mt-3 font-display text-2xl">{u.xp.toLocaleString()}</div>
                    <p className="text-xs text-muted-foreground">XP</p>
                  </div>
                ))}
              </div>

              {/* Full table */}
              <div className="mt-6 overflow-hidden rounded-xl border border-border bg-card">
                <div className="grid grid-cols-[40px_1fr_60px_80px] items-center gap-3 border-b border-border px-4 py-3 text-xs text-muted-foreground md:grid-cols-[40px_1fr_80px_100px]">
                  <span>#</span>
                  <span>Student</span>
                  <span className="text-right">Streak</span>
                  <span className="text-right">XP</span>
                </div>
                {LEADERBOARD.map((u) => (
                  <div
                    key={u.rank}
                    className={`grid grid-cols-[40px_1fr_60px_80px] items-center gap-3 border-b border-border px-4 py-3 text-sm last:border-0 md:grid-cols-[40px_1fr_80px_100px] ${
                      u.you ? "bg-secondary/60" : ""
                    }`}
                  >
                    <span className="flex items-center gap-1 text-muted-foreground">
                      {rankIcon(u.rank)}
                      {!rankIcon(u.rank) && u.rank}
                    </span>
                    <div className="flex items-center gap-3 min-w-0">
                      <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-foreground font-display text-sm text-background">
                        {u.name.charAt(0)}
                      </div>
                      <div className="min-w-0">
                        <div className="flex items-center gap-2">
                          <span className="truncate font-medium">{u.name}</span>
                          {u.you && <Badge variant="secondary" className="text-[10px]">You</Badge>}
                        </div>
                        <div className="text-xs text-muted-foreground">{u.country}</div>
                      </div>
                    </div>
                    <div className="flex items-center justify-end gap-1 text-xs text-muted-foreground">
                      <Flame className="h-3 w-3 text-accent" />{u.streak}
                    </div>
                    <div className="text-right font-medium">{u.xp.toLocaleString()}</div>
                  </div>
                ))}
              </div>

              <div className="mt-4 flex items-center gap-2 rounded-lg border border-dashed border-border bg-card p-4 text-sm text-muted-foreground">
                <Trophy className="h-4 w-4" />
                Climb 3 ranks this week to unlock the <span className="font-medium text-foreground">"Top 100" badge</span>.
              </div>
            </TabsContent>
          ))}
        </Tabs>
      </div>
    </>
  );
}
