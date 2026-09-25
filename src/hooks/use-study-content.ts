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
  contentKind: "course" | "textbook" | "paper" | "cheatsheet";
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

// Module-level cache: the layout (command menu, notifications) and every page
// mount this hook independently. Without a shared cache each instance refetches
// the entire topics + documents corpus (including full markdown) per navigation.
type ContentCache = {
  signature: string;
  state: ContentState;
};

let contentCache: ContentCache | null = null;

// Persist the cache to localStorage so a full page reload (which clears the
// module cache) can still render content instantly, then refresh in the
// background. The corpus is up to a few hundred KB per profile, well within
// the localStorage quota.
const CONTENT_STORAGE_PREFIX = "studyspark.content.";
const CONTENT_STORAGE_MAX_AGE_MS = 24 * 60 * 60 * 1000;

function storageKey(signature: string) {
  return `${CONTENT_STORAGE_PREFIX}${encodeURIComponent(signature)}`;
}

function readStoredState(signature: string): ContentState | null {
  try {
    const raw = localStorage.getItem(storageKey(signature));
    if (!raw) return null;
    const parsed = JSON.parse(raw) as { at?: number; state?: ContentState };
    if (
      !parsed.state ||
      !Array.isArray(parsed.state.topics) ||
      !Array.isArray(parsed.state.documents)
    ) {
      return null;
    }
    if (parsed.at && Date.now() - parsed.at > CONTENT_STORAGE_MAX_AGE_MS) {
      return null;
    }
    return parsed.state;
  } catch {
    return null;
  }
}

function writeStoredState(signature: string, state: ContentState) {
  try {
    localStorage.setItem(storageKey(signature), JSON.stringify({ at: Date.now(), state }));
  } catch {
    // Quota exceeded or storage disabled: the in-memory cache still works.
  }
}

function cachedStateFor(signature: string): ContentState | null {
  if (contentCache && contentCache.signature === signature) return contentCache.state;
  return readStoredState(signature);
}

function profileSignature(profile: StudentProfile, includeContent: boolean) {
  return [
    profile.language,
    profile.educationSystem,
    profile.level,
    profile.classLevel,
    profile.series,
    profile.plan ?? "free",
    profile.premiumUntil ?? "",
    [...profile.subjects].sort().join(","),
    includeContent ? "full" : "meta",
  ].join("|");
}

export function useStudyContent(
  profile: StudentProfile | null,
  options?: { includeContent?: boolean },
) {
  const includeContent = options?.includeContent ?? true;
  const signature = profile ? profileSignature(profile, includeContent) : "";
  const [state, setState] = useState<ContentState>(() => {
    if (profile) {
      const cached = cachedStateFor(signature);
      if (cached) return cached;
    }
    return { topics: [], documents: [], loading: false, loaded: false, error: null };
  });

  useEffect(() => {
    if (!profile || !supabaseConfigured() || !supabase) {
      setState({ topics: [], documents: [], loading: false, loaded: true, error: null });
      return;
    }

    const cached = cachedStateFor(signature);
    if (cached) {
      setState(cached);
    } else {
      setState((current) => ({ ...current, loading: true, loaded: false, error: null }));
    }

    let active = true;
    const client = supabase;
    const documentsRequest = includeContent
      ? client.rpc("list_allowed_course_documents")
      : client
          .rpc("list_allowed_course_documents_meta")
          .then((result) => (result.error ? client.rpc("list_allowed_course_documents") : result));

    Promise.all([
      client
        .from("topics")
        .select(
          "id, subject, title, description, level, class_levels, series, question_count, estimated_minutes",
        )
        .eq("level", profile.level)
        .contains("class_levels", [profile.classLevel])
        .contains("series", [profile.series])
        .in("subject", profile.subjects),
      documentsRequest,
    ]).then(([topicsResult, documentsResult]) => {
      if (!active) return;

      if (topicsResult.error) {
        const error = topicsResult.error;
        console.error("Could not load study content", error);
        const errorState: ContentState = {
          topics: [],
          documents: [],
          loading: false,
          loaded: true,
          error: error?.message ?? "Study content could not be loaded.",
        };
        contentCache = { signature, state: errorState };
        setState(errorState);
        return;
      }

      const topics = ((topicsResult.data ?? []) as TopicRow[])
        .map(topicFromRow)
        .filter((topic) => matchesProfile(profile, topic));
      if (documentsResult.error) {
        console.warn("Could not load course documents", documentsResult.error);
      }
      let documents = (
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
        contentKind:
          row.content_kind === "textbook" ||
          row.content_kind === "paper" ||
          row.content_kind === "cheatsheet"
            ? row.content_kind
            : "course",
        isLocked: Boolean(row.is_locked),
      }));

      documents = documents.filter((document) => {
        return (
          document.level === profile.level &&
          document.classLevels.includes(profile.classLevel) &&
          document.series.includes(profile.series) &&
          profile.subjects.includes(document.subject) &&
          document.language === profile.language
        );
      });

      const nextState: ContentState = {
        topics,
        documents,
        loading: false,
        loaded: true,
        error: null,
      };
      contentCache = { signature, state: nextState };
      writeStoredState(signature, nextState);
      setState(nextState);
    });

    return () => {
      active = false;
    };
  }, [includeContent, profile, signature]);

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
