import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { BadgeCheck, Crown, MapPin, Medal, RefreshCw, Trophy } from "lucide-react";
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
import { useCallback, useEffect, useMemo, useRef, useState } from "react";
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

type LeaderboardScope = "class" | "city" | "region" | "country" | "all";

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

function LeaderboardPage() {
  const { profile, user } = useStudyProfile();
  const [rows, setRows] = useState<LeaderboardRow[]>([]);
  const [selectedLevel, setSelectedLevel] = useState<Level | "all">(profile?.level ?? "all");
  const [selectedScope, setSelectedScope] = useState<LeaderboardScope>(
    profile?.region && profile.region !== "Not set" ? "region" : "country",
  );
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const myRowRef = useRef<HTMLDivElement | null>(null);
  const cohort = profile
    ? `${classLabel(profile.classLevel)} · ${seriesLabel(profile.series)}`
    : "";
  const filteredRows = useMemo(() => {
    const normalizedCity = profile?.city.trim().toLowerCase();

    return rows.filter((row) => {
      if (selectedLevel !== "all" && row.level !== selectedLevel) return false;
      if (!profile || selectedScope === "all") return true;
      if (selectedScope === "class") {
        return row.level === profile.level && row.class_level === profile.classLevel;
      }
      if (selectedScope === "country") return row.country === profile.country;
      if (selectedScope === "region") {
        return row.country === profile.country && row.region === profile.region;
      }
      if (selectedScope === "city") {
        return (
          Boolean(normalizedCity) &&
          row.country === profile.country &&
          row.region === profile.region &&
          row.city.trim().toLowerCase() === normalizedCity
        );
      }
      return true;
    });
  }, [profile, rows, selectedLevel, selectedScope]);

  const myRank = user ? filteredRows.findIndex((row) => row.user_id === user.id) + 1 : 0;

  // Always show the top learners, and pin the current user's row (with their
  // true rank) even when they rank beyond the visible cut-off.
  const displayRows = useMemo(() => {
    if (filteredRows.length <= DISPLAY_LIMIT) return filteredRows;
    const myIndex = filteredRows.findIndex((row) => row.user_id === user?.id);
    if (myIndex < 0 || myIndex < DISPLAY_LIMIT) return filteredRows.slice(0, DISPLAY_LIMIT);
    return [...filteredRows.slice(0, DISPLAY_LIMIT - 1), filteredRows[myIndex]];
  }, [filteredRows, user]);

  const podium = filteredRows.slice(0, 3);

  const profileLevel = profile?.level;
  const premiumActive = isPremiumActive(profile);

  useEffect(() => {
    if (!profileLevel) return;
    setSelectedLevel(profileLevel);
  }, [profileLevel]);

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

  const scrollToMyRow = () => {
    myRowRef.current?.scrollIntoView({ behavior: "smooth", block: "center" });
  };

  const isMe = (row: LeaderboardRow) => row.user_id === user?.id;

  return (
    <>
      <PageHeader
        title="Leaderboard"
        description={
          profile
            ? `Rankings for ${cohort}, based on real structural paper progress and learner location.`
            : "Complete your profile to join the right study cohort."
        }
      />

      <div className="space-y-5 px-4 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium leaderboard"
          description="Upgrade to compare your verified structural progress by class, city, region, country, and level."
        >
          {error && (
            <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
              Leaderboard could not be loaded: {error}
            </div>
          )}

          <div className="rounded-xl border border-border bg-card p-4">
            <div className="flex flex-wrap items-center justify-between gap-3">
              <div>
                <h2 className="text-base font-medium">Compare your position</h2>
                <p className="mt-1 text-sm text-muted-foreground">
                  Filter by level, then compare against learners in your country, region, or city.
                  Verified locations are ranked with higher trust.
                </p>
              </div>
              <div className="flex items-center gap-2">
                {profile && (
                  <div className="flex items-center gap-2 rounded-full bg-secondary px-3 py-1.5 text-xs text-muted-foreground">
                    <MapPin className="h-3.5 w-3.5" />
                    {[profile.city, profile.region, profile.country].filter(Boolean).join(", ")}
                  </div>
                )}
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
            <div className="mt-4 flex flex-wrap gap-2">
              {(["all", "ordinary", "advanced"] as const).map((level) => (
                <button
                  key={level}
                  type="button"
                  aria-pressed={selectedLevel === level}
                  onClick={() => setSelectedLevel(level)}
                  className={`rounded-full border px-4 py-2 text-sm ${
                    selectedLevel === level
                      ? "border-foreground bg-foreground text-background"
                      : "border-border bg-background"
                  }`}
                >
                  {level === "all" ? "All levels" : levelLabel(level)}
                </button>
              ))}
            </div>
            <div className="mt-3 flex flex-wrap gap-2">
              {(
                [
                  ["class", "My class"],
                  ["city", "My city"],
                  ["region", "My region"],
                  ["country", "My country"],
                  ["all", "All learners"],
                ] as const
              ).map(([scope, label]) => (
                <button
                  key={scope}
                  type="button"
                  aria-pressed={selectedScope === scope}
                  onClick={() => setSelectedScope(scope)}
                  disabled={scope === "city" && !profile?.city.trim()}
                  className={`rounded-full border px-4 py-2 text-sm disabled:cursor-not-allowed disabled:opacity-50 ${
                    selectedScope === scope
                      ? "border-foreground bg-foreground text-background"
                      : "border-border bg-background"
                  }`}
                >
                  {label}
                </button>
              ))}
            </div>
            {myRank > 0 && (
              <div className="mt-4 flex flex-wrap items-center justify-between gap-3 rounded-lg border border-accent/30 bg-accent/5 p-3">
                <div className="flex items-center gap-3">
                  <div className="flex h-10 w-10 items-center justify-center rounded-full bg-foreground font-display text-sm text-background">
                    {profile?.name?.slice(0, 1).toUpperCase() ?? "Y"}
                  </div>
                  <div>
                    <p className="text-sm font-medium">
                      You are ranked <span className="text-accent">#{myRank}</span> in this view
                    </p>
                    <p className="text-xs text-muted-foreground">
                      {filteredRows.length} learners ·{" "}
                      {myRank === 1
                        ? "Top of the leaderboard!"
                        : `Top ${Math.max(1, Math.round((myRank / filteredRows.length) * 100))}%`}
                    </p>
                  </div>
                </div>
                <Button type="button" variant="outline" size="sm" onClick={scrollToMyRow}>
                  Show my row
                </Button>
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

          {!loading && filteredRows.length >= 3 && (
            <section className="rounded-xl border border-border bg-card p-5">
              <h2 className="mb-4 flex items-center gap-2 text-base font-medium">
                <Crown className="h-4 w-4 text-accent" /> Top learners
              </h2>
              <div className="grid gap-3 md:grid-cols-3">
                {[podium[1], podium[0], podium[2]].map((row, index) => {
                  const rank = index === 1 ? 1 : index === 0 ? 2 : 3;
                  const isFirst = rank === 1;
                  return (
                    <div
                      key={row.user_id}
                      className={`flex items-center gap-3 rounded-xl border p-4 ${
                        isFirst ? "border-accent/40 bg-accent/5" : "border-border bg-background"
                      } ${isMe(row) ? "ring-1 ring-accent" : ""}`}
                    >
                      <div
                        className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-full font-display text-sm ${
                          rank === 1
                            ? "bg-accent text-background"
                            : rank === 2
                              ? "bg-secondary text-foreground"
                              : "bg-secondary/60 text-foreground"
                        }`}
                      >
                        {rank}
                      </div>
                      <div className="min-w-0 flex-1">
                        <p className="truncate text-sm font-medium">
                          {row.name}
                          {isMe(row) && (
                            <span className="ml-1.5 rounded-full bg-accent/15 px-1.5 py-0.5 text-[10px] font-semibold text-accent">
                              You
                            </span>
                          )}
                        </p>
                        <p className="truncate text-xs text-muted-foreground">
                          {locationLabel(row)}
                        </p>
                      </div>
                      <div className="shrink-0 text-right">
                        <p className="text-sm font-medium">{row.pass_rate}%</p>
                        <p className="text-xs text-muted-foreground">
                          {row.questions_passed} passed
                        </p>
                      </div>
                    </div>
                  );
                })}
              </div>
            </section>
          )}

          {!loading && displayRows.length > 0 && (
            <section className="overflow-hidden rounded-xl border border-border bg-card">
              {/* Desktop table */}
              <div className="hidden overflow-x-auto md:block">
                <div className="min-w-[720px]">
                  <div className="grid grid-cols-[3.5rem_minmax(10rem,1.4fr)_minmax(9rem,1fr)_minmax(8rem,1fr)_repeat(4,minmax(5rem,0.7fr))] gap-4 border-b border-border px-4 py-3 text-xs text-muted-foreground">
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
                    {displayRows.map((row, index) => {
                      const rank = filteredRows.indexOf(row) + 1;
                      const me = isMe(row);
                      return (
                        <div
                          key={row.user_id}
                          ref={me ? myRowRef : undefined}
                          className={`grid grid-cols-[3.5rem_minmax(10rem,1.4fr)_minmax(9rem,1fr)_minmax(8rem,1fr)_repeat(4,minmax(5rem,0.7fr))] gap-4 px-4 py-3 text-sm md:py-4 ${
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
                {displayRows.map((row) => {
                  const rank = filteredRows.indexOf(row) + 1;
                  const me = isMe(row);
                  return (
                    <div
                      key={row.user_id}
                      ref={me ? myRowRef : undefined}
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

          {!loading && filteredRows.length === 0 && (
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
