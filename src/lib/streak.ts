export function sameLocalDay(a: Date, b: Date) {
  return (
    a.getFullYear() === b.getFullYear() &&
    a.getMonth() === b.getMonth() &&
    a.getDate() === b.getDate()
  );
}

export function localDateKey(date: Date) {
  const month = `${date.getMonth() + 1}`.padStart(2, "0");
  const day = `${date.getDate()}`.padStart(2, "0");
  return `${date.getFullYear()}-${month}-${day}`;
}

export function dayKey(date: Date) {
  return localDateKey(date);
}

export function sortedStudyDays(studyDays: Set<string>) {
  return [...studyDays]
    .map((key) => {
      const [year, month, day] = key.split("-").map(Number);
      return new Date(year, month - 1, day);
    })
    .sort((a, b) => b.getTime() - a.getTime());
}

export function computeCurrentStreak(sortedDays: Date[], freezeDays: Set<string>) {
  const cursor = new Date();
  let streak = 0;
  let freezeUsed = false;

  const todayHasActivity = sortedDays.some((day) => sameLocalDay(day, cursor));
  const todayIsFrozen = freezeDays.has(localDateKey(cursor));

  // A streak stays alive until the current day ends: if today has no activity
  // and isn't frozen, keep counting from yesterday so users don't see 0 all morning.
  if (!todayHasActivity && !todayIsFrozen) {
    cursor.setDate(cursor.getDate() - 1);
  }

  while (true) {
    if (sortedDays.some((day) => sameLocalDay(day, cursor))) {
      streak += 1;
    } else if (freezeDays.has(localDateKey(cursor)) && !freezeUsed) {
      // A frozen day keeps the streak alive without adding a study day.
      freezeUsed = true;
    } else {
      break;
    }
    cursor.setDate(cursor.getDate() - 1);
  }
  return streak;
}

export function computeLongestStreak(sortedDays: Date[]) {
  let longestStreak = 0;
  let runningStreak = 0;
  const ascendingDays = [...sortedDays].sort((a, b) => a.getTime() - b.getTime());
  for (let index = 0; index < ascendingDays.length; index += 1) {
    const previous = ascendingDays[index - 1];
    const current = ascendingDays[index];
    if (!previous) {
      runningStreak = 1;
    } else {
      const expected = new Date(previous);
      expected.setDate(previous.getDate() + 1);
      runningStreak = sameLocalDay(expected, current) ? runningStreak + 1 : 1;
    }
    longestStreak = Math.max(longestStreak, runningStreak);
  }
  return longestStreak;
}
