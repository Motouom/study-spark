import { useMemo } from "react";
import { useStructuralProgress } from "@/hooks/use-structural-progress";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";
import { useStreakFreezeDays } from "@/hooks/use-streak-freezes";
import { computeCurrentStreak, computeLongestStreak, sortedStudyDays } from "@/lib/streak";

export function useUnifiedStreak() {
  const { summary: structuralSummary, loading: structuralLoading } = useStructuralProgress();
  const { summary: readingSummary, loading: readingLoading } = usePaperStudyOverview();
  const { freezeDays, loading: freezeLoading } = useStreakFreezeDays();

  return useMemo(() => {
    const studyDays = new Set<string>([
      ...structuralSummary.studyDays,
      ...readingSummary.studyDays,
    ]);
    const sortedDays = sortedStudyDays(studyDays);
    const currentStreak = computeCurrentStreak(sortedDays, freezeDays);
    const longestStreak = computeLongestStreak(sortedDays);

    return {
      currentStreak,
      longestStreak,
      totalStudyDays: studyDays.size,
      studyDays,
      freezeDays,
      loading: structuralLoading || readingLoading || freezeLoading,
    };
  }, [
    freezeDays,
    freezeLoading,
    readingLoading,
    readingSummary.studyDays,
    structuralLoading,
    structuralSummary.studyDays,
  ]);
}
