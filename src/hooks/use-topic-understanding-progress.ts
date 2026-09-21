import { useCallback, useEffect, useMemo, useState } from "react";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { useSupabaseUser } from "@/hooks/use-supabase-user";

export type TopicUnderstandingStatus = "understood" | "review";

export type TopicUnderstandingProgress = {
  documentId: string;
  topicKey: string;
  topicTitle: string;
  status: TopicUnderstandingStatus;
  updatedAt: string;
};

type TopicUnderstandingRow = {
  document_id: string;
  topic_key: string;
  topic_title: string;
  status: TopicUnderstandingStatus;
  updated_at: string;
};

function progressFromRow(row: TopicUnderstandingRow): TopicUnderstandingProgress {
  return {
    documentId: row.document_id,
    topicKey: row.topic_key,
    topicTitle: row.topic_title,
    status: row.status,
    updatedAt: row.updated_at,
  };
}

export function useTopicUnderstandingProgress(documentId?: string | null) {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [progress, setProgress] = useState<TopicUnderstandingProgress[]>([]);
  const [loading, setLoading] = useState(false);
  const [savingKey, setSavingKey] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(() => {
    if (!userLoaded || !user || !documentId || !supabaseConfigured() || !supabase) {
      setProgress([]);
      setLoading(false);
      setError(null);
      return;
    }

    let cancelled = false;
    setLoading(true);
    setError(null);

    supabase
      .from("topic_understanding_progress")
      .select("document_id, topic_key, topic_title, status, updated_at")
      .eq("document_id", documentId)
      .order("updated_at", { ascending: false })
      .then(({ data, error }) => {
        if (cancelled) return;

        if (error) {
          console.error("Could not load topic understanding progress", error);
          setProgress([]);
          setLoading(false);
          setError(error.message);
          return;
        }

        setProgress(((data ?? []) as TopicUnderstandingRow[]).map(progressFromRow));
        setLoading(false);
      });

    return () => {
      cancelled = true;
    };
  }, [documentId, user, userLoaded]);

  useEffect(() => {
    return load();
  }, [load]);

  const markTopic = useCallback(
    async (input: {
      topicKey: string;
      topicTitle: string;
      status: TopicUnderstandingStatus;
    }) => {
      if (!user || !documentId) throw new Error("You must be signed in to update progress.");
      if (!supabaseConfigured() || !supabase) throw new Error("Supabase is not configured.");

      const now = new Date().toISOString();
      let previousProgress: TopicUnderstandingProgress[] = [];
      setSavingKey(input.topicKey);
      setError(null);
      setProgress((current) => {
        previousProgress = current;
        const optimistic: TopicUnderstandingProgress = {
          documentId,
          topicKey: input.topicKey,
          topicTitle: input.topicTitle,
          status: input.status,
          updatedAt: now,
        };
        return [
          optimistic,
          ...current.filter((item) => item.topicKey !== input.topicKey),
        ];
      });

      const { data, error } = await supabase
        .from("topic_understanding_progress")
        .upsert(
          {
            user_id: user.id,
            document_id: documentId,
            topic_key: input.topicKey,
            topic_title: input.topicTitle,
            status: input.status,
            updated_at: now,
          },
          { onConflict: "user_id,document_id,topic_key" },
        )
        .select("document_id, topic_key, topic_title, status, updated_at")
        .single();

      if (error) {
        console.error("Could not mark topic understanding", error);
        setProgress(previousProgress);
        setSavingKey(null);
        setError(error.message);
        throw error;
      }

      const saved = progressFromRow(data as TopicUnderstandingRow);
      setProgress((current) => [
        saved,
        ...current.filter((item) => item.topicKey !== saved.topicKey),
      ]);
      setSavingKey(null);
      setError(null);
      return saved;
    },
    [documentId, user],
  );

  return {
    progress,
    loading,
    savingKey,
    error,
    markTopic,
    byTopic: useMemo(
      () => new Map(progress.map((item) => [item.topicKey, item])),
      [progress],
    ),
    summary: useMemo(
      () => ({
        understood: progress.filter((item) => item.status === "understood").length,
        review: progress.filter((item) => item.status === "review").length,
      }),
      [progress],
    ),
  };
}
