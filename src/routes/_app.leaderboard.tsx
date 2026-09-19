import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { MapPin, Medal, Trophy } from "lucide-react";
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
import { useEffect, useMemo, useState } from "react";
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

function levelLabel(level: Level) {
  return level === "advanced" ? "Advanced Level" : "Ordinary Level";
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

  const profileLevel = profile?.level;
  const premiumActive = isPremiumActive(profile);

  useEffect(() => {
    if (!profileLevel) return;
    setSelectedLevel(profileLevel);
  }, [profileLevel]);

  useEffect(() => {
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
              {profile && (
                <div className="flex items-center gap-2 rounded-full bg-secondary px-3 py-1.5 text-xs text-muted-foreground">
                  <MapPin className="h-3.5 w-3.5" />
                  {[profile.city, profile.region, profile.country].filter(Boolean).join(", ")}
                </div>
              )}
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
              <p className="mt-3 text-sm text-muted-foreground">
                You are ranked <span className="font-medium text-foreground">#{myRank}</span> in
                this view.
              </p>
            )}
          </div>

          {loading && (
            <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
              Loading level leaderboard...
            </div>
          )}

          {!loading && filteredRows.length > 0 && (
            <section className="overflow-hidden rounded-xl border border-border bg-card">
              {/* Horizontally scrollable on mobile, full grid on desktop */}
              <div className="overflow-x-auto">
                <div className="min-w-[640px]">
                  <div className="grid grid-cols-[3rem_1fr_1fr_repeat(3,6rem)] gap-3 border-b border-border px-4 py-3 text-xs text-muted-foreground md:grid-cols-[3.5rem_minmax(10rem,1.4fr)_minmax(9rem,1fr)_minmax(8rem,1fr)_repeat(4,minmax(5rem,0.7fr))] md:gap-4">
                    <span>Rank</span>
                    <span>Learner</span>
                    <span className="hidden md:block">Level</span>
                    <span>Location</span>
                    <span>Passed</span>
                    <span>Rate</span>
                    <span className="hidden md:block">Time</span>
                    <span className="hidden md:block">Days</span>
                  </div>
                  <div className="divide-y divide-border">
                    {filteredRows.map((row, index) => (
                      <div
                        key={row.user_id}
                        className="grid grid-cols-[3rem_1fr_1fr_repeat(3,6rem)] gap-3 px-4 py-3 text-sm md:grid-cols-[3.5rem_minmax(10rem,1.4fr)_minmax(9rem,1fr)_minmax(8rem,1fr)_repeat(4,minmax(5rem,0.7fr))] md:gap-4 md:py-4"
                      >
                        <span className="flex items-center gap-1 font-medium">
                          {index < 3 && <Medal className="h-4 w-4 text-accent" />}#{index + 1}
                        </span>
                        <span className="min-w-0">
                          <span className="block truncate font-medium">{row.name}</span>
                          <span className="text-xs text-muted-foreground">
                            {seriesLabel(row.series)}
                          </span>
                        </span>
                        <span className="hidden min-w-0 text-muted-foreground md:block">
                          <span className="line-clamp-2">
                            {levelLabel(row.level)} · {classLabel(row.class_level)}
                          </span>
                        </span>
                        <span className="min-w-0 truncate text-muted-foreground">
                          {[row.city, row.region].filter(Boolean).join(", ") || row.country}
                        </span>
                        <span>{row.questions_passed}</span>
                        <span>{row.pass_rate}%</span>
                        <span className="hidden md:block">
                          {formatDuration(row.average_duration_seconds)}
                        </span>
                        <span className="hidden md:block">{row.study_days}</span>
                      </div>
                    ))}
                  </div>
                </div>
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
