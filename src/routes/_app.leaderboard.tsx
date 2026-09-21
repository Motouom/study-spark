import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import {
  BadgeCheck,
  BookOpen,
  CheckCircle2,
  Flame,
  Medal,
  RefreshCw,
  Star,
  Trophy,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import {
  classLabel,
  seriesLabel,
  classLevelsForSystem,
  seriesOptionsForSystem,
  levelLabelForSystem,
  type ClassLevel,
  type EducationSystem,
  type Level,
  type Series,
} from "@/lib/study-reference-data";
import { useCallback, useEffect, useMemo, useState } from "react";
import { PremiumGate } from "@/components/PremiumGate";
import { isPremiumActive } from "@/lib/premium";
import { useUnifiedStreak } from "@/hooks/use-unified-streak";

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
  papers_read: number;
  papers_completed: number;
  study_days: number;
  useful_checkpoints: number;
  score: number;
  questions_started: number;
  questions_passed: number;
  pass_rate: number;
  total_duration_seconds: number;
  average_duration_seconds: number;
};

const DISPLAY_LIMIT = 50;

function isFrancophoneClassLevel(classLevel: ClassLevel): boolean {
  return [
    "sixieme",
    "cinquieme",
    "quatrieme",
    "troisieme",
    "seconde",
    "premiere",
    "terminale",
  ].includes(classLevel);
}

function educationSystemFromClassLevel(classLevel: ClassLevel): EducationSystem {
  return isFrancophoneClassLevel(classLevel) ? "francophone" : "gce";
}

function levelLabel(level: Level, classLevel?: ClassLevel) {
  const system = classLevel ? educationSystemFromClassLevel(classLevel) : "gce";
  return levelLabelForSystem(level, system);
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

function ScoreBreakdown({ row }: { row: LeaderboardRow }) {
  return (
    <div className="mt-3 grid grid-cols-3 gap-2 rounded-lg bg-background p-3 text-xs">
      <div className="flex flex-col items-center gap-0.5">
        <BookOpen className="h-3.5 w-3.5 text-muted-foreground" />
        <span className="font-medium">{row.papers_completed}</span>
        <span className="text-muted-foreground">completed</span>
      </div>
      <div className="flex flex-col items-center gap-0.5">
        <CheckCircle2 className="h-3.5 w-3.5 text-muted-foreground" />
        <span className="font-medium">{row.useful_checkpoints}</span>
        <span className="text-muted-foreground">checkpoints</span>
      </div>
      <div className="flex flex-col items-center gap-0.5">
        <Star className="h-3.5 w-3.5 text-muted-foreground" />
        <span className="font-medium">{row.study_days}</span>
        <span className="text-muted-foreground">study days</span>
      </div>
    </div>
  );
}

function FilterPill({
  label,
  active,
  onClick,
  disabled,
}: {
  label: string;
  active: boolean;
  onClick: () => void;
  disabled?: boolean;
}) {
  return (
    <button
      type="button"
      onClick={onClick}
      disabled={disabled}
      className={`rounded-full border px-3 py-1.5 text-xs font-medium transition-colors disabled:cursor-not-allowed disabled:opacity-40 ${
        active
          ? "border-foreground bg-foreground text-background"
          : "border-border bg-background text-muted-foreground hover:border-foreground/40 hover:text-foreground"
      }`}
    >
      {label}
    </button>
  );
}

function LeaderboardPage() {
  const { profile, user, loaded: profileLoaded } = useStudyProfile();
  const { currentStreak } = useUnifiedStreak();
  const [rows, setRows] = useState<LeaderboardRow[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // Filters — default to learner's own level + series so the first view is relevant
  const [levelFilter, setLevelFilter] = useState<Level | "all">("all");
  const [classFilter, setClassFilter] = useState<ClassLevel | "all">("all");
  const [seriesFilter, setSeriesFilter] = useState<Series | "all">("all");

  // Seed filters from profile once loaded
  useEffect(() => {
    if (!profile) return;
    setLevelFilter(profile.level);
    setClassFilter(profile.classLevel);
    setSeriesFilter(profile.series);
  }, [profile]);

  const premiumActive = isPremiumActive(profile);

  const load = useCallback(() => {
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

  // Client-side filtering (all data already fetched)
  const filteredRows = useMemo(() => {
    return rows.filter((row) => {
      if (levelFilter !== "all" && row.level !== levelFilter) return false;
      if (classFilter !== "all" && row.class_level !== classFilter) return false;
      if (seriesFilter !== "all" && row.series !== seriesFilter) return false;
      return true;
    });
  }, [rows, levelFilter, classFilter, seriesFilter]);

  const leaderboardRows = useMemo(() => filteredRows.slice(0, DISPLAY_LIMIT), [filteredRows]);
  const myRank = user ? filteredRows.findIndex((row) => row.user_id === user.id) + 1 : 0;
  const myRow = user ? filteredRows.find((row) => row.user_id === user.id) : null;
  const isOutsideTop = myRank > DISPLAY_LIMIT;
  const isMe = (row: LeaderboardRow) => row.user_id === user?.id;

  const allClassLevels = [...classLevelsForSystem("gce"), ...classLevelsForSystem("francophone")];
  const allSeriesOptions = [
    ...seriesOptionsForSystem("gce"),
    ...seriesOptionsForSystem("francophone"),
  ];

  // Available series options for the current level filter
  const availableSeriesForLevel = allSeriesOptions.filter(
    (s) => levelFilter === "all" || s.level === levelFilter,
  );
  const availableClassesForLevel = allClassLevels.filter(
    (c) => levelFilter === "all" || c.level === levelFilter,
  );

  // Unauthenticated / profile not loaded yet
  if (supabaseConfigured() && !profileLoaded) {
    return (
      <>
        <PageHeader title="Leaderboard" />
        <div className="px-4 py-10 text-center text-sm text-muted-foreground md:px-10">
          Loading your profile...
        </div>
      </>
    );
  }

  if (supabaseConfigured() && profileLoaded && !user) {
    return (
      <>
        <PageHeader title="Leaderboard" />
        <div className="px-4 py-10 text-center md:px-10">
          <Trophy className="mx-auto h-10 w-10 text-muted-foreground" />
          <p className="mt-4 text-base font-medium">Sign in to see the leaderboard</p>
          <p className="mt-1 text-sm text-muted-foreground">
            Rankings are only visible to signed-in Premium learners.
          </p>
          <Button asChild className="mt-5">
            <Link to="/signin">Sign in</Link>
          </Button>
        </div>
      </>
    );
  }

  return (
    <>
      <PageHeader
        title="Leaderboard"
        description={
          profile
            ? "Top 50 learners ranked by papers completed, study days, and review checkpoints."
            : "Complete your profile to join the right study cohort."
        }
      />

      <div className="space-y-5 px-4 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium leaderboard"
          description="Upgrade to see the platform Top 50 and your own rank from real reading activity."
        >
          {error && (
            <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
              Leaderboard could not be loaded: {error}
            </div>
          )}

          {/* Header card */}
          <div className="rounded-xl border border-border bg-card p-4">
            <div className="flex flex-wrap items-start justify-between gap-3">
              <div className="min-w-0">
                <h2 className="text-base font-medium">Top 50 students</h2>
                <p className="mt-1 text-sm text-muted-foreground">
                  Score = completed papers (×10) + papers started (×3) + useful checkpoints (×2) +
                  study days (×5). Repeated actions on the same paper are capped to keep rankings
                  fair.
                </p>
              </div>
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

            {/* My rank banner */}
            {myRank > 0 && (
              <div className="mt-4 rounded-lg border border-accent/30 bg-accent/5 p-3">
                <div className="flex flex-wrap items-start justify-between gap-3">
                  <div className="flex items-center gap-3">
                    <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-foreground font-display text-sm text-background">
                      {profile?.name?.slice(0, 1).toUpperCase() ?? "Y"}
                    </div>
                    <div>
                      <p className="text-sm font-medium">
                        Your rank is <span className="text-accent">#{myRank}</span>
                        {myRow && (
                          <span className="ml-2 text-muted-foreground">· {myRow.score} pts</span>
                        )}
                        {currentStreak > 0 && (
                          <span className="ml-2 inline-flex items-center gap-1 text-accent">
                            <Flame className="h-3.5 w-3.5" />
                            {currentStreak}d streak
                          </span>
                        )}
                      </p>
                      <p className="text-xs text-muted-foreground">
                        {filteredRows.length} ranked learners in this view ·{" "}
                        {isOutsideTop
                          ? "Complete more papers to enter the Top 50."
                          : "You are visible in the Top 50."}
                      </p>
                    </div>
                  </div>
                  {isOutsideTop && myRow && <ScoreBreakdown row={myRow} />}
                </div>
              </div>
            )}

            {/* Filters */}
            <div className="mt-4 space-y-2.5">
              {/* Level filter */}
              <div className="flex flex-wrap gap-2">
                <FilterPill
                  label="All levels"
                  active={levelFilter === "all"}
                  onClick={() => {
                    setLevelFilter("all");
                    setClassFilter("all");
                    setSeriesFilter("all");
                  }}
                />
                <FilterPill
                  label="Ordinary Level"
                  active={levelFilter === "ordinary"}
                  onClick={() => {
                    setLevelFilter("ordinary");
                    setClassFilter("all");
                    setSeriesFilter("all");
                  }}
                />
                <FilterPill
                  label="Advanced Level"
                  active={levelFilter === "advanced"}
                  onClick={() => {
                    setLevelFilter("advanced");
                    setClassFilter("all");
                    setSeriesFilter("all");
                  }}
                />
              </div>

              {/* Class filter */}
              {availableClassesForLevel.length > 0 && (
                <div className="flex flex-wrap gap-2">
                  <FilterPill
                    label="All classes"
                    active={classFilter === "all"}
                    onClick={() => setClassFilter("all")}
                  />
                  {availableClassesForLevel.map((c) => (
                    <FilterPill
                      key={c.id}
                      label={c.label}
                      active={classFilter === c.id}
                      onClick={() => setClassFilter(c.id)}
                    />
                  ))}
                </div>
              )}

              {/* Series filter */}
              {availableSeriesForLevel.length > 0 && (
                <div className="flex flex-wrap gap-2">
                  <FilterPill
                    label="All series"
                    active={seriesFilter === "all"}
                    onClick={() => setSeriesFilter("all")}
                  />
                  {availableSeriesForLevel.map((s) => (
                    <FilterPill
                      key={s.id}
                      label={s.label}
                      active={seriesFilter === s.id}
                      onClick={() => setSeriesFilter(s.id)}
                    />
                  ))}
                </div>
              )}
            </div>
          </div>

          {/* Loading skeleton */}
          {loading && (
            <div className="space-y-2 rounded-xl border border-border bg-card p-4">
              {Array.from({ length: 5 }).map((_, index) => (
                <div key={index} className="h-12 animate-pulse rounded-lg bg-secondary/60" />
              ))}
            </div>
          )}

          {/* Results */}
          {!loading && leaderboardRows.length > 0 && (
            <section className="overflow-hidden rounded-xl border border-border bg-card">
              {/* Desktop table */}
              <div className="hidden md:block">
                <div className="grid grid-cols-[3.5rem_minmax(0,1.5fr)_minmax(0,1fr)_minmax(0,1fr)_5rem_5rem_5rem_5rem] gap-3 border-b border-border px-4 py-3 text-xs text-muted-foreground">
                  <span>Rank</span>
                  <span>Learner</span>
                  <span>Level</span>
                  <span>Location</span>
                  <span className="text-right">Score</span>
                  <span className="text-right">Done</span>
                  <span className="text-right">Marks</span>
                  <span className="text-right">Days</span>
                </div>
                <div className="divide-y divide-border">
                  {leaderboardRows.map((row, index) => {
                    const rank = index + 1;
                    const me = isMe(row);
                    return (
                      <div
                        key={row.user_id}
                        className={`grid grid-cols-[3.5rem_minmax(0,1.5fr)_minmax(0,1fr)_minmax(0,1fr)_5rem_5rem_5rem_5rem] gap-3 px-4 py-3 text-sm md:py-3.5 ${
                          me ? "bg-accent/5" : ""
                        }`}
                      >
                        <span className="flex items-center gap-1 font-medium">
                          {rank <= 3 && <Medal className="h-4 w-4 text-accent" />}#{rank}
                        </span>
                        <span className="min-w-0">
                          <span className="flex items-center gap-1.5 truncate font-medium">
                            {row.name}
                            {me && (
                              <span className="shrink-0 rounded-full bg-accent/15 px-1.5 py-0.5 text-[10px] font-semibold text-accent">
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
                          <span className="line-clamp-2 text-xs">
                            {levelLabel(row.level, row.class_level)} · {classLabel(row.class_level)}
                          </span>
                        </span>
                        <span className="min-w-0 truncate text-xs text-muted-foreground">
                          {locationLabel(row)}
                        </span>
                        <span className="text-right font-medium">{row.score}</span>
                        <span className="text-right">{row.papers_completed}</span>
                        <span className="text-right">{row.useful_checkpoints}</span>
                        <span className="text-right">{row.study_days}</span>
                      </div>
                    );
                  })}
                </div>
              </div>

              {/* Mobile cards */}
              <div className="divide-y divide-border md:hidden">
                {leaderboardRows.map((row, index) => {
                  const rank = index + 1;
                  const me = isMe(row);
                  return (
                    <div key={row.user_id} className={`px-4 py-3 ${me ? "bg-accent/5" : ""}`}>
                      <div className="flex items-center gap-3">
                        <span className="flex w-8 shrink-0 items-center justify-start font-medium">
                          {rank <= 3 ? (
                            <Medal className="h-4 w-4 text-accent" />
                          ) : (
                            <span className="text-sm text-muted-foreground">#{rank}</span>
                          )}
                        </span>
                        <div className="min-w-0 flex-1">
                          <p className="flex items-center gap-1.5 truncate text-sm font-medium">
                            {row.name}
                            {me && (
                              <span className="shrink-0 rounded-full bg-accent/15 px-1.5 py-0.5 text-[10px] font-semibold text-accent">
                                You
                              </span>
                            )}
                          </p>
                          <p className="truncate text-xs text-muted-foreground">
                            {seriesLabel(row.series)} · {locationLabel(row)}
                            {row.location_verified && (
                              <>
                                {" · "}
                                <VerifiedBadge />
                              </>
                            )}
                          </p>
                        </div>
                        <div className="shrink-0 text-right">
                          <p className="text-sm font-semibold">{row.score} pts</p>
                          <p className="text-xs text-muted-foreground">
                            {row.papers_completed} done · {row.study_days}d
                          </p>
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </section>
          )}

          {/* No results for current filter */}
          {!loading && rows.length > 0 && leaderboardRows.length === 0 && (
            <div className="rounded-xl border border-dashed border-border bg-card p-8 text-center">
              <p className="text-sm text-muted-foreground">
                No learners match the selected filters.
              </p>
              <Button
                variant="outline"
                size="sm"
                className="mt-4"
                onClick={() => {
                  setLevelFilter("all");
                  setClassFilter("all");
                  setSeriesFilter("all");
                }}
              >
                Clear filters
              </Button>
            </div>
          )}

          {/* Empty state — no data at all */}
          {!loading && rows.length === 0 && (
            <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
              <Trophy className="mx-auto h-10 w-10 text-muted-foreground" />
              <h2 className="mt-4 text-base font-medium">No rankings yet</h2>
              <p className="mx-auto mt-1 max-w-md text-sm text-muted-foreground">
                Rankings appear after learners complete reading sessions. Open a paper, read it
                through, and mark review checkpoints to build your score.
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
