import { useCallback, useEffect, useMemo, useState } from "react";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { useSupabaseUser } from "@/hooks/use-supabase-user";

export type StructuralQuestionStatus = "started" | "passed" | "failed";

export type StructuralQuestionProgress = {
  id: string;
  documentId: string;
  questionNumber: number;
  status: StructuralQuestionStatus;
  startedAt: string | null;
  completedAt: string | null;
  durationSeconds: number | null;
  updatedAt: string;
};

export type StructuralProgressDocument = {
  id: string;
  subject: string;
  markdownContent?: string;
};

type ProgressRow = {
  id: string;
  document_id: string;
  question_number: number;
  status: StructuralQuestionStatus;
  started_at: string | null;
  completed_at: string | null;
  duration_seconds: number | null;
  updated_at: string;
};

function progressFromRow(row: ProgressRow): StructuralQuestionProgress {
  return {
    id: row.id,
    documentId: row.document_id,
    questionNumber: row.question_number,
    status: row.status,
    startedAt: row.started_at,
    completedAt: row.completed_at,
    durationSeconds: row.duration_seconds,
    updatedAt: row.updated_at,
  };
}

export function formatDuration(seconds: number | null | undefined) {
  if (!seconds || seconds <= 0) return "No time yet";
  const hours = Math.floor(seconds / 3600);
  const minutes = Math.floor((seconds % 3600) / 60);
  const remainingSeconds = seconds % 60;

  if (hours > 0) return `${hours}h ${minutes}m`;
  if (minutes > 0) return `${minutes}m ${remainingSeconds}s`;
  return `${remainingSeconds}s`;
}

function sameLocalDay(a: Date, b: Date) {
  return (
    a.getFullYear() === b.getFullYear() &&
    a.getMonth() === b.getMonth() &&
    a.getDate() === b.getDate()
  );
}

function dayKey(date: Date) {
  return `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()}`;
}

function activityDate(item: StructuralQuestionProgress) {
  return new Date(item.completedAt ?? item.startedAt ?? item.updatedAt);
}

export function summarizeStructuralProgress(progress: StructuralQuestionProgress[]) {
  const totalStarted = progress.length;
  const passed = progress.filter((item) => item.status === "passed").length;
  const failed = progress.filter((item) => item.status === "failed").length;
  const active = progress.filter((item) => item.status === "started").length;
  const completionRate = totalStarted > 0 ? Math.round((passed / totalStarted) * 100) : 0;
  const completedWithTime = progress.filter(
    (item) => item.durationSeconds && item.durationSeconds > 0,
  );
  const totalDurationSeconds = completedWithTime.reduce(
    (sum, item) => sum + (item.durationSeconds ?? 0),
    0,
  );
  const averageDurationSeconds =
    completedWithTime.length > 0 ? Math.round(totalDurationSeconds / completedWithTime.length) : 0;
  const studyDays = new Set(progress.map((item) => dayKey(activityDate(item))));
  const sortedDays = [...studyDays]
    .map((key) => {
      const [year, month, day] = key.split("-").map(Number);
      return new Date(year, month - 1, day);
    })
    .sort((a, b) => b.getTime() - a.getTime());

  let currentStreak = 0;
  const cursor = new Date();
  if (sortedDays.some((day) => sameLocalDay(day, cursor))) {
    while (sortedDays.some((day) => sameLocalDay(day, cursor))) {
      currentStreak += 1;
      cursor.setDate(cursor.getDate() - 1);
    }
  }

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

  return {
    totalStarted,
    passed,
    failed,
    active,
    completionRate,
    totalDurationSeconds,
    averageDurationSeconds,
    totalStudyDays: studyDays.size,
    currentStreak,
    longestStreak,
    studyDays,
  };
}

export function countStructuralQuestions(markdown: string | null | undefined) {
  if (!markdown) return 0;
  const found = new Set<number>();
  for (const match of markdown.matchAll(
    /(?:^|\n)\s*(?:#{1,6}\s*)?(?:[*_]{1,3})?Q(?:uestion)?\.?\s*(\d+)/gi,
  )) {
    found.add(Number(match[1]));
  }
  return found.size;
}

export function calculateStructuralMastery(
  progress: StructuralQuestionProgress[],
  documents: StructuralProgressDocument[],
) {
  const documentsById = new Map(documents.map((document) => [document.id, document]));
  const subjects = new Set([
    ...documents.map((document) => document.subject),
    ...progress
      .map((item) => documentsById.get(item.documentId)?.subject)
      .filter((subject): subject is string => Boolean(subject)),
  ]);

  return [...subjects]
    .map((subject) => {
      const subjectDocuments = documents.filter((document) => document.subject === subject);
      const subjectDocumentIds = new Set(subjectDocuments.map((document) => document.id));
      const marks = progress.filter((item) => subjectDocumentIds.has(item.documentId));
      const passed = marks.filter((item) => item.status === "passed").length;
      const failed = marks.filter((item) => item.status === "failed").length;
      const active = marks.filter((item) => item.status === "started").length;
      const detectedQuestions = subjectDocuments.reduce(
        (sum, document) => sum + countStructuralQuestions(document.markdownContent),
        0,
      );
      const totalQuestions = Math.max(detectedQuestions, marks.length);
      const completed = passed + failed;
      const passRate = marks.length > 0 ? passed / marks.length : 0;
      const coverage = totalQuestions > 0 ? marks.length / totalQuestions : 0;
      const completion = marks.length > 0 ? completed / marks.length : 0;
      const failedPenalty = marks.length > 0 ? failed / marks.length : 0;
      const activePenalty = marks.length > 0 ? active / marks.length : 0;
      const score = Math.max(
        0,
        Math.min(
          100,
          Math.round(
            passRate * 55 +
              coverage * 25 +
              completion * 20 -
              failedPenalty * 15 -
              activePenalty * 5,
          ),
        ),
      );

      return {
        subject,
        mastery: score,
        marked: marks.length,
        passed,
        failed,
        active,
        totalQuestions,
        coverage: Math.round(coverage * 100),
        passRate: Math.round(passRate * 100),
      };
    })
    .sort(
      (a, b) => b.mastery - a.mastery || b.marked - a.marked || a.subject.localeCompare(b.subject),
    );
}

export function useStructuralProgress(documentId?: string | null) {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [progress, setProgress] = useState<StructuralQuestionProgress[]>([]);
  const [loading, setLoading] = useState(false);
  const [savingKey, setSavingKey] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  const loadProgress = useCallback(() => {
    if (!userLoaded || !user || !supabaseConfigured() || !supabase) {
      setProgress([]);
      setLoading(false);
      setError(null);
      return;
    }

    setLoading(true);
    setError(null);
    let query = supabase
      .from("structural_question_progress")
      .select(
        "id, document_id, question_number, status, started_at, completed_at, duration_seconds, updated_at",
      )
      .order("updated_at", { ascending: false });

    if (documentId) query = query.eq("document_id", documentId);

    let cancelled = false;

    query.then(({ data, error }) => {
      if (cancelled) return;

      if (error) {
        console.error("Could not load structural progress", error);
        setProgress([]);
        setLoading(false);
        setError(error.message);
        return;
      }

      setProgress(((data ?? []) as ProgressRow[]).map(progressFromRow));
      setLoading(false);
      setError(null);
    });

    return () => {
      cancelled = true;
    };
  }, [documentId, user, userLoaded]);

  useEffect(() => {
    return loadProgress();
  }, [loadProgress]);

  const markQuestion = useCallback(
    async (targetDocumentId: string, questionNumber: number, status: StructuralQuestionStatus) => {
      if (!user) throw new Error("You must be signed in to update progress.");
      if (!supabaseConfigured() || !supabase) throw new Error("Supabase is not configured.");

      const key = `${targetDocumentId}:${questionNumber}`;
      const now = new Date();
      const nowIso = now.toISOString();
      let previousProgress: StructuralQuestionProgress[] = [];

      setSavingKey(key);
      setError(null);
      setProgress((current) => {
        previousProgress = current;
        const existing = current.find(
          (item) => item.documentId === targetDocumentId && item.questionNumber === questionNumber,
        );
        const startedAt = existing?.startedAt ?? nowIso;
        const completedAt = status === "started" ? null : nowIso;
        const durationSeconds =
          status === "started"
            ? null
            : Math.max(0, Math.round((now.getTime() - new Date(startedAt).getTime()) / 1000));
        const optimistic: StructuralQuestionProgress = {
          id: existing?.id ?? `pending-${key}`,
          documentId: targetDocumentId,
          questionNumber,
          status,
          startedAt,
          completedAt,
          durationSeconds,
          updatedAt: nowIso,
        };

        return [
          optimistic,
          ...current.filter(
            (item) =>
              !(item.documentId === targetDocumentId && item.questionNumber === questionNumber),
          ),
        ];
      });

      const { data, error } = await supabase
        .rpc("mark_structural_question_progress", {
          target_document_id: targetDocumentId,
          target_question_number: questionNumber,
          target_status: status,
        })
        .single();

      if (error) {
        console.error("Could not mark structural progress", error);
        setProgress(previousProgress);
        setError(error.message);
        setSavingKey(null);
        throw error;
      }

      const saved = progressFromRow(data as ProgressRow);
      setProgress((current) => [
        saved,
        ...current.filter(
          (item) =>
            !(item.documentId === saved.documentId && item.questionNumber === saved.questionNumber),
        ),
      ]);
      setError(null);
      setSavingKey(null);
      return saved;
    },
    [user],
  );

  return {
    progress,
    loading,
    savingKey,
    error,
    summary: useMemo(() => summarizeStructuralProgress(progress), [progress]),
    reload: loadProgress,
    markQuestion,
  };
}
