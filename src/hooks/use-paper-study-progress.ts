import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { getScrollPercent, onContainerScroll } from "@/lib/scroll-progress";

export type PaperCheckpointType = "understood" | "review" | "bookmark";

export type PaperStudySession = {
  id: string;
  documentId: string;
  startedAt: string;
  endedAt: string | null;
  durationSeconds: number;
  maxScrollPercent: number;
  completed: boolean;
  updatedAt: string;
};

export type PaperStudyCheckpoint = {
  id: string;
  documentId: string;
  checkpointType: PaperCheckpointType;
  note: string | null;
  scrollPercent: number;
  createdAt: string;
};

export type PaperStudyReflection = {
  id: string;
  documentId: string;
  confidence: number;
  difficultParts: string | null;
  addToRevision: boolean;
  updatedAt: string;
};

type SessionRow = {
  id: string;
  document_id: string;
  started_at: string;
  ended_at: string | null;
  duration_seconds: number;
  max_scroll_percent: number;
  completed: boolean;
  updated_at: string;
};

type CheckpointRow = {
  id: string;
  document_id: string;
  checkpoint_type: PaperCheckpointType;
  note: string | null;
  scroll_percent: number;
  created_at: string;
};

type ReflectionRow = {
  id: string;
  document_id: string;
  confidence: number;
  difficult_parts: string | null;
  add_to_revision: boolean;
  updated_at: string;
};

function sessionFromRow(row: SessionRow): PaperStudySession {
  return {
    id: row.id,
    documentId: row.document_id,
    startedAt: row.started_at,
    endedAt: row.ended_at,
    durationSeconds: row.duration_seconds,
    maxScrollPercent: row.max_scroll_percent,
    completed: row.completed,
    updatedAt: row.updated_at,
  };
}

function checkpointFromRow(row: CheckpointRow): PaperStudyCheckpoint {
  return {
    id: row.id,
    documentId: row.document_id,
    checkpointType: row.checkpoint_type,
    note: row.note,
    scrollPercent: row.scroll_percent,
    createdAt: row.created_at,
  };
}

function reflectionFromRow(row: ReflectionRow): PaperStudyReflection {
  return {
    id: row.id,
    documentId: row.document_id,
    confidence: row.confidence,
    difficultParts: row.difficult_parts,
    addToRevision: row.add_to_revision,
    updatedAt: row.updated_at,
  };
}

export function usePaperStudyProgress(documentId?: string | null) {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [session, setSession] = useState<PaperStudySession | null>(null);
  const [checkpoints, setCheckpoints] = useState<PaperStudyCheckpoint[]>([]);
  const [reflection, setReflection] = useState<PaperStudyReflection | null>(null);
  const [loading, setLoading] = useState(false);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const sessionIdRef = useRef<string | null>(null);
  const maxScrollRef = useRef(0);
  const secondsRef = useRef(0);

  useEffect(() => {
    if (!userLoaded || !user || !documentId || !supabaseConfigured() || !supabase) {
      setSession(null);
      setCheckpoints([]);
      setReflection(null);
      setLoading(false);
      setError(null);
      return;
    }

    let cancelled = false;
    setLoading(true);
    setError(null);

    Promise.all([
      // Use upsert-style: resume the most recent open session for this doc
      // rather than creating a new one on every mount (prevents orphan sessions
      // after screen wake / tab focus return).
      supabase
        .from("paper_study_sessions")
        .select(
          "id, document_id, started_at, ended_at, duration_seconds, max_scroll_percent, completed, updated_at",
        )
        .eq("user_id", user.id)
        .eq("document_id", documentId)
        .is("ended_at", null)
        .order("started_at", { ascending: false })
        .limit(1)
        .maybeSingle()
        .then(async ({ data: existing }) => {
          if (existing) return { data: existing, error: null };
          // No open session — create one
          return supabase
            .from("paper_study_sessions")
            .insert({ user_id: user.id, document_id: documentId })
            .select(
              "id, document_id, started_at, ended_at, duration_seconds, max_scroll_percent, completed, updated_at",
            )
            .single();
        }),
      supabase
        .from("paper_study_checkpoints")
        .select("id, document_id, checkpoint_type, note, scroll_percent, created_at")
        .eq("document_id", documentId)
        .order("created_at", { ascending: false }),
      supabase
        .from("paper_study_reflections")
        .select("id, document_id, confidence, difficult_parts, add_to_revision, updated_at")
        .eq("document_id", documentId)
        .maybeSingle(),
    ]).then(([sessionResult, checkpointResult, reflectionResult]) => {
      if (cancelled) return;

      if (sessionResult.error) {
        setError(sessionResult.error.message);
        setLoading(false);
        return;
      }

      if (checkpointResult.error)
        console.warn("Could not load paper checkpoints", checkpointResult.error.message);
      if (reflectionResult.error)
        console.warn("Could not load paper reflection", reflectionResult.error.message);

      const nextSession = sessionFromRow(sessionResult.data as SessionRow);
      sessionIdRef.current = nextSession.id;
      secondsRef.current = nextSession.durationSeconds;
      maxScrollRef.current = nextSession.maxScrollPercent;
      setSession(nextSession);
      setCheckpoints(((checkpointResult.data ?? []) as CheckpointRow[]).map(checkpointFromRow));
      setReflection(
        reflectionResult.data ? reflectionFromRow(reflectionResult.data as ReflectionRow) : null,
      );
      setLoading(false);
    });

    return () => {
      cancelled = true;
    };
  }, [documentId, user, userLoaded]);

  const syncSession = useCallback(async (ended = false, updateState = false) => {
    if (!sessionIdRef.current || !supabaseConfigured() || !supabase) return;

    const maxScrollPercent = Math.max(maxScrollRef.current, getScrollPercent());
    maxScrollRef.current = maxScrollPercent;
    const patch: {
      duration_seconds: number;
      max_scroll_percent: number;
      completed: boolean;
      ended_at?: string;
    } = {
      duration_seconds: secondsRef.current,
      max_scroll_percent: maxScrollPercent,
      completed: maxScrollPercent >= 85,
    };

    if (ended) patch.ended_at = new Date().toISOString();

    const query = supabase
      .from("paper_study_sessions")
      .update(patch)
      .eq("id", sessionIdRef.current);

    if (!updateState) {
      const { error } = await query;
      if (error) console.warn("Could not update paper study session", error.message);
      return;
    }

    const { data, error } = await query
      .select(
        "id, document_id, started_at, ended_at, duration_seconds, max_scroll_percent, completed, updated_at",
      )
      .single();

    if (error) {
      console.warn("Could not update paper study session", error.message);
      return;
    }

    setSession(sessionFromRow(data as SessionRow));
  }, []);

  useEffect(() => {
    if (!sessionIdRef.current) return;

    const updateScroll = () => {
      maxScrollRef.current = Math.max(maxScrollRef.current, getScrollPercent());
    };
    const tick = window.setInterval(() => {
      if (document.visibilityState !== "visible") return;
      secondsRef.current += 5;
      void syncSession(false, false);
    }, 5000);
    const handleBeforeUnload = () => void syncSession(true, false);

    const removeScrollListener = onContainerScroll(updateScroll);
    window.addEventListener("beforeunload", handleBeforeUnload);

    return () => {
      window.clearInterval(tick);
      removeScrollListener();
      window.removeEventListener("beforeunload", handleBeforeUnload);
      void syncSession(true, false);
    };
  }, [session?.id, syncSession]);

  const addCheckpoint = useCallback(
    async (checkpointType: PaperCheckpointType, note?: string) => {
      if (!user || !documentId) throw new Error("You must be signed in to save progress.");
      if (!supabaseConfigured() || !supabase) throw new Error("Supabase is not configured.");

      setSaving(true);
      setError(null);
      const { data, error } = await supabase
        .from("paper_study_checkpoints")
        .insert({
          user_id: user.id,
          document_id: documentId,
          checkpoint_type: checkpointType,
          note: note?.trim() || null,
          scroll_percent: getScrollPercent(),
        })
        .select("id, document_id, checkpoint_type, note, scroll_percent, created_at")
        .single();

      setSaving(false);
      if (error) {
        setError(error.message);
        throw error;
      }

      const saved = checkpointFromRow(data as CheckpointRow);
      setCheckpoints((current) => [saved, ...current]);
      void syncSession(false, true);
      return saved;
    },
    [documentId, syncSession, user],
  );

  const saveReflection = useCallback(
    async (input: { confidence: number; difficultParts: string; addToRevision: boolean }) => {
      if (!user || !documentId) throw new Error("You must be signed in to save reflection.");
      if (!supabaseConfigured() || !supabase) throw new Error("Supabase is not configured.");

      setSaving(true);
      setError(null);
      const { data, error } = await supabase
        .from("paper_study_reflections")
        .upsert(
          {
            user_id: user.id,
            document_id: documentId,
            confidence: input.confidence,
            difficult_parts: input.difficultParts.trim() || null,
            add_to_revision: input.addToRevision,
            updated_at: new Date().toISOString(),
          },
          { onConflict: "user_id,document_id" },
        )
        .select("id, document_id, confidence, difficult_parts, add_to_revision, updated_at")
        .single();

      setSaving(false);
      if (error) {
        setError(error.message);
        throw error;
      }

      const saved = reflectionFromRow(data as ReflectionRow);
      setReflection(saved);
      void syncSession(false, true);
      return saved;
    },
    [documentId, syncSession, user],
  );

  return {
    session,
    checkpoints,
    reflection,
    loading,
    saving,
    error,
    addCheckpoint,
    saveReflection,
    summary: useMemo(
      () => ({
        durationSeconds: session?.durationSeconds ?? 0,
        maxScrollPercent: session?.maxScrollPercent ?? 0,
        completed: session?.completed ?? false,
        understoodCount: checkpoints.filter((item) => item.checkpointType === "understood").length,
        reviewCount: checkpoints.filter((item) => item.checkpointType === "review").length,
        bookmarkCount: checkpoints.filter((item) => item.checkpointType === "bookmark").length,
      }),
      [checkpoints, session],
    ),
  };
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

function summarizeReadingProgress(
  sessions: PaperStudySession[],
  checkpoints: PaperStudyCheckpoint[],
  reflections: PaperStudyReflection[],
) {
  const studyDays = new Set(sessions.map((item) => dayKey(new Date(item.startedAt))));
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

  return {
    sessionsStarted: sessions.length,
    papersRead: new Set(sessions.map((item) => item.documentId)).size,
    completedPapers: new Set(
      sessions.filter((item) => item.completed).map((item) => item.documentId),
    ).size,
    totalDurationSeconds: sessions.reduce((sum, item) => sum + item.durationSeconds, 0),
    averageScrollPercent:
      sessions.length > 0
        ? Math.round(
            sessions.reduce((sum, item) => sum + item.maxScrollPercent, 0) / sessions.length,
          )
        : 0,
    currentStreak,
    totalStudyDays: studyDays.size,
    reviewCount: checkpoints.filter((item) => item.checkpointType === "review").length,
    bookmarkCount: checkpoints.filter((item) => item.checkpointType === "bookmark").length,
    understoodCount: checkpoints.filter((item) => item.checkpointType === "understood").length,
    revisionCount: reflections.filter((item) => item.addToRevision).length,
    averageConfidence:
      reflections.length > 0
        ? Math.round(
            (reflections.reduce((sum, item) => sum + item.confidence, 0) / reflections.length) * 10,
          ) / 10
        : 0,
    studyDays,
  };
}

export function usePaperStudyOverview() {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [sessions, setSessions] = useState<PaperStudySession[]>([]);
  const [checkpoints, setCheckpoints] = useState<PaperStudyCheckpoint[]>([]);
  const [reflections, setReflections] = useState<PaperStudyReflection[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(() => {
    if (!userLoaded || !user || !supabaseConfigured() || !supabase) {
      setSessions([]);
      setCheckpoints([]);
      setReflections([]);
      setLoading(false);
      setError(null);
      return;
    }

    let cancelled = false;
    setLoading(true);
    setError(null);

    Promise.all([
      supabase
        .from("paper_study_sessions")
        .select(
          "id, document_id, started_at, ended_at, duration_seconds, max_scroll_percent, completed, updated_at",
        )
        .order("updated_at", { ascending: false }),
      supabase
        .from("paper_study_checkpoints")
        .select("id, document_id, checkpoint_type, note, scroll_percent, created_at")
        .order("created_at", { ascending: false }),
      supabase
        .from("paper_study_reflections")
        .select("id, document_id, confidence, difficult_parts, add_to_revision, updated_at")
        .order("updated_at", { ascending: false }),
    ]).then(([sessionResult, checkpointResult, reflectionResult]) => {
      if (cancelled) return;

      const firstError =
        sessionResult.error ?? checkpointResult.error ?? reflectionResult.error ?? null;
      if (firstError) {
        setError(firstError.message);
        setSessions([]);
        setCheckpoints([]);
        setReflections([]);
        setLoading(false);
        return;
      }

      setSessions(((sessionResult.data ?? []) as SessionRow[]).map(sessionFromRow));
      setCheckpoints(((checkpointResult.data ?? []) as CheckpointRow[]).map(checkpointFromRow));
      setReflections(((reflectionResult.data ?? []) as ReflectionRow[]).map(reflectionFromRow));
      setLoading(false);
    });

    return () => {
      cancelled = true;
    };
  }, [user, userLoaded]);

  useEffect(() => {
    return load();
  }, [load]);

  return {
    sessions,
    checkpoints,
    reflections,
    loading,
    error,
    reload: load,
    summary: useMemo(
      () => summarizeReadingProgress(sessions, checkpoints, reflections),
      [checkpoints, reflections, sessions],
    ),
  };
}
