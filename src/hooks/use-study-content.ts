import { useEffect, useMemo, useState } from "react";
import type { StudentProfile, Subject, Topic } from "@/lib/study-reference-data";
import { topicFromRow, type TopicRow } from "@/lib/database";
import { supabase, supabaseConfigured } from "@/lib/supabase";

export type CourseDocument = {
  id: string;
  topicId: string;
  subject: Subject;
  title: string;
  language: StudentProfile["language"];
  level: StudentProfile["level"];
  classLevels: StudentProfile["classLevel"][];
  series: StudentProfile["series"][];
  markdownContent: string;
  updatedAt: string;
  accessStatus: "free_preview" | "premium" | "premium_locked";
  isLocked: boolean;
};

type ContentState = {
  topics: Topic[];
  documents: CourseDocument[];
  loading: boolean;
  loaded: boolean;
  error: string | null;
};

function matchesProfile(profile: StudentProfile, topic: Topic) {
  return (
    topic.level === profile.level &&
    topic.classLevels.includes(profile.classLevel) &&
    topic.series.includes(profile.series) &&
    profile.subjects.includes(topic.subject)
  );
}

export function useStudyContent(profile: StudentProfile | null) {
  const [state, setState] = useState<ContentState>({
    topics: [],
    documents: [],
    loading: false,
    loaded: false,
    error: null,
  });

  // Stable key so the effect only re-runs when profile values actually change,
  // not when the parent re-renders and passes a new object reference.
  const profileKey = profile
    ? `${profile.level}|${profile.classLevel}|${profile.series}|${profile.subjects.join(",")}|${profile.plan}|${profile.premiumUntil ?? ""}`
    : null;

  useEffect(() => {
    if (!profile || !supabaseConfigured() || !supabase) {
      setState({ topics: [], documents: [], loading: false, loaded: true, error: null });
      return;
    }

    let active = true;
    setState((current) => ({ ...current, loading: true, loaded: false, error: null }));

    Promise.all([
      supabase
        .from("topics")
        .select(
          "id, subject, title, description, level, class_levels, series, question_count, estimated_minutes",
        )
        .eq("level", profile.level)
        .contains("class_levels", [profile.classLevel])
        .contains("series", [profile.series])
        .in("subject", profile.subjects),
      supabase.rpc("list_allowed_course_documents"),
    ]).then(([topicsResult, documentsResult]) => {
      if (!active) return;

      if (topicsResult.error) {
        const error = topicsResult.error;
        console.error("Could not load study content", error);
        setState({
          topics: [],
          documents: [],
          loading: false,
          loaded: true,
          error: error?.message ?? "Study content could not be loaded.",
        });
        return;
      }

      const topics = ((topicsResult.data ?? []) as TopicRow[])
        .map(topicFromRow)
        .filter((topic) => matchesProfile(profile, topic));
      if (documentsResult.error) {
        console.warn("Could not load course documents", documentsResult.error);
      }
      const documents = (
        (documentsResult.error ? [] : (documentsResult.data ?? [])) as Record<string, unknown>[]
      ).map((row): CourseDocument => ({
        id: String(row.id),
        topicId: String(row.topic_id ?? ""),
        subject: row.subject as Subject,
        title: String(row.title ?? ""),
        language: row.language as StudentProfile["language"],
        level: row.level as StudentProfile["level"],
        classLevels: (row.class_levels ?? []) as StudentProfile["classLevel"][],
        series: (row.series ?? []) as StudentProfile["series"][],
        markdownContent: String(row.markdown_content ?? ""),
        updatedAt: String(row.updated_at ?? ""),
        accessStatus:
          row.access_status === "premium" || row.access_status === "premium_locked"
            ? row.access_status
            : "free_preview",
        isLocked: Boolean(row.is_locked),
      }));

      setState({ topics, documents, loading: false, loaded: true, error: null });
    });

    return () => {
      active = false;
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [profileKey]);

  const subjects = useMemo(
    () =>
      profile
        ? profile.subjects.filter((subject) =>
            state.topics.some((topic) => topic.subject === subject),
          )
        : [],
    [profile, state.topics],
  );

  return {
    ...state,
    subjects: subjects as Subject[],
    enabled: Boolean(profile && supabaseConfigured() && supabase),
  };
}
