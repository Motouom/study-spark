import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { BadgeCheck, Medal, RefreshCw, Trophy } from "lucide-react";
import { Button } from "@/components/ui/button";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { formatDuration } from "@/hooks/use-structural-progress";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import {
  classLabel,
  seriesLabel,
  type ClassLevel,
  type Level,
  type Series,
} from "@/lib/study-reference-data";
import { useCallback, useEffect, useMemo, useState } from "react";
import { PremiumGate } from "@/components/PremiumGate";
import { isPremiumActive } from "@/lib/premium";

export const Route = createFileRoute("/_app/leaderboard")({
  head: () => ({ meta: [{ title: "Leaderboard — StudySpark" }] }),
  component: LeaderboardPage,
});

type LeaderboardRow = {
  user_id: string;
  name: string;
  country: string;
  region: string;
  city: string;
  location_verified: boolean;
  level: Level;
  class_level: ClassLevel;
  series: Series;
  questions_started: number;
  questions_passed: number;
  questions_failed: number;
  pass_rate: number;
  total_duration_seconds: number;
  average_duration_seconds: number;
  study_days: number;
  trust_level?: "verified_location" | "self_reported_location";
};

const DISPLAY_LIMIT = 50;

function levelLabel(level: Level) {
  return level === "advanced" ? "Advanced Level" : "Ordinary Level";
}

function locationLabel(row: LeaderboardRow) {
  return [row.city, row.region].filter(Boolean).join(", ") || row.country;
}

function VerifiedBadge() {
  return (
    <span
      className="inline-flex items-center gap-0.5 text-xs text-muted-foreground"
      title="Verified location"
    >
      <BadgeCheck className="h-3.5 w-3.5 text-accent" />
      Verified
    </span>
  );
}

function LearnerRankCard({ row, rank }: { row: LeaderboardRow; rank: number }) {
  return (
    <div className="grid min-w-56 grid-cols-3 gap-2 rounded-lg bg-background p-2 text-xs">
      <div>
        <div className="text-muted-foreground">Rank</div>
        <div className="mt-1 font-medium">#{rank}</div>
      </div>
      <div>
        <div className="text-muted-foreground">Pass rate</div>
        <div className="mt-1 font-medium">{row.pass_rate}%</div>
      </div>
      <div>
        <div className="text-muted-foreground">Passed</div>
        <div className="mt-1 font-medium">{row.questions_passed}</div>
      </div>
    </div>
  );
}

function LeaderboardPage() {
  const { profile, user } = useStudyProfile();
  const [rows, setRows] = useState<LeaderboardRow[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const leaderboardRows = useMemo(() => rows.slice(0, DISPLAY_LIMIT), [rows]);
  const myRank = user ? rows.findIndex((row) => row.user_id === user.id) + 1 : 0;
  const myRow = user ? rows.find((row) => row.user_id === user.id) : null;
  const isOutsideTop = myRank > DISPLAY_LIMIT;

  const premiumActive = isPremiumActive(profile);

  const load = useCallback(() => {
    // Don't fetch rankings for free users — the data sits behind the paywall.
    if (!premiumActive) {
      setRows([]);
      setError(null);
      setLoading(false);
      return;
    }
    if (!supabaseConfigured() || !supabase) {
      setRows([]);
      setError("Supabase is not configured.");
      return;
    }

    let active = true;
    setLoading(true);
    setError(null);
    supabase.rpc("list_level_leaderboard").then(({ data, error }) => {
      if (!active) return;
      if (error) {
        setRows([]);
        setError(error.message);
      } else {
        setRows((data ?? []) as LeaderboardRow[]);
      }
      setLoading(false);
    });

    return () => {
      active = false;
    };
  }, [premiumActive]);

  useEffect(() => {
    return load();
  }, [load]);

  const isMe = (row: LeaderboardRow) => row.user_id === user?.id;

  return (
    <>
      <PageHeader
        title="Leaderboard"
        description={
          profile
            ? "Top 50 learners on StudySpark, ranked from real structural question outcomes."
            : "Complete your profile to join the right study cohort."
        }
      />

      <div className="space-y-5 px-4 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium leaderboard"
          description="Upgrade to see the platform Top 50 and your own rank from real passed and failed questions."
        >
          {error && (
            <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
              Leaderboard could not be loaded: {error}
            </div>
          )}

          <div className="rounded-xl border border-border bg-card p-4">
            <div className="flex flex-wrap items-center justify-between gap-3">
              <div>
                <h2 className="text-base font-medium">Top 50 students</h2>
                <p className="mt-1 text-sm text-muted-foreground">
                  The leaderboard shows only the best 50 learners across the platform. If you are
                  not in the Top 50, your own rank appears below without changing the leaderboard.
                </p>
              </div>
              <div className="flex items-center gap-2">
                <Button
                  type="button"
                  variant="outline"
                  size="sm"
                  onClick={() => void load()}
                  disabled={loading}
                  aria-label="Refresh leaderboard"
                >
                  <RefreshCw className={`h-3.5 w-3.5 ${loading ? "animate-spin" : ""}`} />
                </Button>
              </div>
            </div>
            {myRank > 0 && (
              <div className="mt-4 flex flex-wrap items-center justify-between gap-3 rounded-lg border border-accent/30 bg-accent/5 p-3">
                <div className="flex items-center gap-3">
                  <div className="flex h-10 w-10 items-center justify-center rounded-full bg-foreground font-display text-sm text-background">
                    {profile?.name?.slice(0, 1).toUpperCase() ?? "Y"}
                  </div>
                  <div>
                    <p className="text-sm font-medium">
                      Your platform rank is <span className="text-accent">#{myRank}</span>
                    </p>
                    <p className="text-xs text-muted-foreground">
                      {rows.length} ranked learners ·{" "}
                      {myRank <= DISPLAY_LIMIT
                        ? "You are visible in the Top 50."
                        : "Keep improving your pass rate to enter the Top 50."}
                    </p>
                  </div>
                </div>
                {isOutsideTop && myRow && <LearnerRankCard row={myRow} rank={myRank} />}
              </div>
            )}
          </div>

          {loading && (
            <div className="space-y-2 rounded-xl border border-border bg-card p-4">
              {Array.from({ length: 5 }).map((_, index) => (
                <div key={index} className="h-12 animate-pulse rounded-lg bg-secondary/60" />
              ))}
            </div>
          )}

          {!loading && leaderboardRows.length > 0 && (
            <section className="overflow-hidden rounded-xl border border-border bg-card">
              {/* Desktop table */}
              <div className="hidden md:block">
                <div>
                  <div className="grid grid-cols-[3.5rem_minmax(0,1.5fr)_minmax(0,1fr)_minmax(0,1fr)_5rem_5rem_5rem_4rem] gap-3 border-b border-border px-4 py-3 text-xs text-muted-foreground">
                    <span>Rank</span>
                    <span>Learner</span>
                    <span>Level</span>
                    <span>Location</span>
                    <span>Passed</span>
                    <span>Rate</span>
                    <span>Time</span>
                    <span>Days</span>
                  </div>
                  <div className="divide-y divide-border">
                    {leaderboardRows.map((row, index) => {
                      const rank = index + 1;
                      const me = isMe(row);
                      return (
                        <div
                          key={row.user_id}
                          className={`grid grid-cols-[3.5rem_minmax(0,1.5fr)_minmax(0,1fr)_minmax(0,1fr)_5rem_5rem_5rem_4rem] gap-3 px-4 py-3 text-sm md:py-4 ${
                            me ? "bg-accent/5" : ""
                          }`}
                        >
                          <span className="flex items-center gap-1 font-medium">
                            {rank <= 3 && <Medal className="h-4 w-4 text-accent" />}#{rank}
                          </span>
                          <span className="min-w-0">
                            <span className="block truncate font-medium">
                              {row.name}
                              {me && (
                                <span className="ml-1.5 rounded-full bg-accent/15 px-1.5 py-0.5 text-[10px] font-semibold text-accent">
                                  You
                                </span>
                              )}
                            </span>
                            <span className="flex items-center gap-1.5 text-xs text-muted-foreground">
                              {seriesLabel(row.series)}
                              {row.location_verified && <VerifiedBadge />}
                            </span>
                          </span>
                          <span className="min-w-0 text-muted-foreground">
                            <span className="line-clamp-2">
                              {levelLabel(row.level)} · {classLabel(row.class_level)}
                            </span>
                          </span>
                          <span className="min-w-0 truncate text-muted-foreground">
                            {locationLabel(row)}
                          </span>
                          <span>{row.questions_passed}</span>
                          <span>{row.pass_rate}%</span>
                          <span>{formatDuration(row.average_duration_seconds)}</span>
                          <span>{row.study_days}</span>
                        </div>
                      );
                    })}
                  </div>
                </div>
              </div>

              {/* Mobile cards */}
              <div className="divide-y divide-border md:hidden">
                {leaderboardRows.map((row, index) => {
                  const rank = index + 1;
                  const me = isMe(row);
                  return (
                    <div
                      key={row.user_id}
                      className={`flex items-center gap-3 px-4 py-3 ${me ? "bg-accent/5" : ""}`}
                    >
                      <span className="flex w-8 shrink-0 items-center gap-1 font-medium">
                        {rank <= 3 && <Medal className="h-4 w-4 text-accent" />}#{rank}
                      </span>
                      <div className="min-w-0 flex-1">
                        <p className="truncate text-sm font-medium">
                          {row.name}
                          {me && (
                            <span className="ml-1.5 rounded-full bg-accent/15 px-1.5 py-0.5 text-[10px] font-semibold text-accent">
                              You
                            </span>
                          )}
                        </p>
                        <p className="truncate text-xs text-muted-foreground">
                          {locationLabel(row)}
                          {row.location_verified && (
                            <span className="ml-1">
                              · <VerifiedBadge />
                            </span>
                          )}
                        </p>
                      </div>
                      <div className="shrink-0 text-right">
                        <p className="text-sm font-medium">{row.pass_rate}%</p>
                        <p className="text-xs text-muted-foreground">
                          {row.questions_passed} passed · {row.study_days}d
                        </p>
                      </div>
                    </div>
                  );
                })}
              </div>
            </section>
          )}

          {!loading && rows.length === 0 && (
            <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
              <Trophy className="mx-auto h-10 w-10 text-muted-foreground" />
              <h2 className="mt-4 text-base font-medium">No rankings yet</h2>
              <p className="mx-auto mt-1 max-w-md text-sm text-muted-foreground">
                Leaderboards are calculated from real structural paper marks by level. Learners
                appear after they mark questions as started, passed, or failed. Set your region and
                city in Settings to join local rankings.
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
