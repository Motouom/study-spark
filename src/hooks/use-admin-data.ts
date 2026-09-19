import { useCallback, useEffect, useMemo, useState } from "react";
import type {
  ClassLevel,
  ContentStatus,
  Language,
  Level,
  Series,
  Subject,
} from "@/lib/study-reference-data";
import { supabase, supabaseConfigured } from "@/lib/supabase";

export type AdminTopic = {
  id: string;
  subject: Subject;
  title: string;
  description: string;
  level: Level;
  classLevels: ClassLevel[];
  series: Series[];
  questionCount: number;
  estimatedMinutes: number;
};

export type CourseContentKind = "course" | "textbook" | "paper";

export type AdminCourseDocument = {
  id: string;
  topicId: string;
  subject: Subject;
  title: string;
  language: Language;
  level: Level;
  classLevels: ClassLevel[];
  series: Series[];
  status: ContentStatus;
  contentKind: CourseContentKind;
  markdownContent: string;
  updatedAt: string;
};

export type AdminLearner = {
  userId: string;
  name: string;
  language: Language;
  level: Level;
  classLevel: ClassLevel;
  series: Series;
  subjects: Subject[];
  country: string;
  region: string;
  city: string;
  locationVerified: boolean;
  plan: "free" | "premium";
  questionsStarted: number;
  questionsPassed: number;
  questionsFailed: number;
  passRate: number;
  averageDurationSeconds: number;
  studyDays: number;
  lastSeen: string | null;
  createdAt: string;
};

export type AdminAuditLog = {
  id: string;
  actorId: string | null;
  actorEmail: string;
  action: string;
  targetTable: string;
  targetId: string;
  details: Record<string, unknown>;
  createdAt: string;
};

export type ProtectedContentEvent = {
  id: string;
  userId: string;
  documentId: string | null;
  eventType: string;
  details: Record<string, unknown>;
  createdAt: string;
};

export type TopicDraft = Omit<AdminTopic, "questionCount">;
export type CourseDocumentDraft = Omit<AdminCourseDocument, "id" | "updatedAt"> & { id?: string };

type AdminDataState = {
  topics: AdminTopic[];
  documents: AdminCourseDocument[];
  learners: AdminLearner[];
  logs: AdminAuditLog[];
  protectedEvents: ProtectedContentEvent[];
  loading: boolean;
  error: string | null;
};

const emptyState: AdminDataState = {
  topics: [],
  documents: [],
  learners: [],
  logs: [],
  protectedEvents: [],
  loading: false,
  error: null,
};

function mapTopic(row: Record<string, unknown>): AdminTopic {
  return {
    id: String(row.id),
    subject: row.subject as Subject,
    title: String(row.title ?? ""),
    description: String(row.description ?? ""),
    level: row.level as Level,
    classLevels: (row.class_levels ?? []) as ClassLevel[],
    series: (row.series ?? []) as Series[],
    questionCount: Number(row.question_count ?? 0),
    estimatedMinutes: Number(row.estimated_minutes ?? 15),
  };
}

function mapCourseDocument(row: Record<string, unknown>): AdminCourseDocument {
  return {
    id: String(row.id),
    topicId: String(row.topic_id ?? ""),
    subject: row.subject as Subject,
    title: String(row.title ?? ""),
    language: row.language as Language,
    level: row.level as Level,
    classLevels: (row.class_levels ?? []) as ClassLevel[],
    series: (row.series ?? []) as Series[],
    status: row.status as ContentStatus,
    contentKind:
      row.content_kind === "textbook" || row.content_kind === "paper" ? row.content_kind : "course",
    markdownContent: String(row.markdown_content ?? ""),
    updatedAt: String(row.updated_at ?? ""),
  };
}

function mapLearner(row: Record<string, unknown>): AdminLearner {
  return {
    userId: String(row.user_id),
    name: String(row.name ?? ""),
    language: row.language as Language,
    level: row.level as Level,
    classLevel: row.class_level as ClassLevel,
    series: row.series as Series,
    subjects: (row.subjects ?? []) as Subject[],
    country: String(row.country ?? "Cameroon"),
    region: String(row.region ?? "Not set"),
    city: String(row.city ?? ""),
    locationVerified: Boolean(row.location_verified),
    plan: row.plan === "premium" ? "premium" : "free",
    questionsStarted: Number(row.questions_started ?? 0),
    questionsPassed: Number(row.questions_passed ?? 0),
    questionsFailed: Number(row.questions_failed ?? 0),
    passRate: Number(row.pass_rate ?? 0),
    averageDurationSeconds: Number(row.average_duration_seconds ?? 0),
    studyDays: Number(row.study_days ?? 0),
    lastSeen: row.last_seen ? String(row.last_seen) : null,
    createdAt: String(row.created_at ?? ""),
  };
}

function mapLog(row: Record<string, unknown>): AdminAuditLog {
  return {
    id: String(row.id),
    actorId: row.actor_id ? String(row.actor_id) : null,
    actorEmail: String(row.actor_email ?? "unknown"),
    action: String(row.action ?? ""),
    targetTable: String(row.target_table ?? ""),
    targetId: String(row.target_id ?? ""),
    details: (row.details ?? {}) as Record<string, unknown>,
    createdAt: String(row.created_at ?? ""),
  };
}

function mapProtectedEvent(row: Record<string, unknown>): ProtectedContentEvent {
  return {
    id: String(row.id),
    userId: String(row.user_id ?? ""),
    documentId: row.document_id ? String(row.document_id) : null,
    eventType: String(row.event_type ?? ""),
    details: (row.details ?? {}) as Record<string, unknown>,
    createdAt: String(row.created_at ?? ""),
  };
}

async function rpc<T>(name: string, args?: Record<string, unknown>) {
  if (!supabaseConfigured() || !supabase) throw new Error("Supabase is not configured.");
  const { data, error } = await supabase.rpc(name, args ?? {});
  if (error) throw error;
  return data as T;
}

export function useAdminData() {
  const [state, setState] = useState<AdminDataState>(emptyState);

  const load = useCallback(async () => {
    if (!supabaseConfigured() || !supabase) {
      setState({ ...emptyState, error: "Supabase is not configured." });
      return;
    }

    setState((current) => ({ ...current, loading: true, error: null }));
    try {
      const [topics, documents, learners, logs] = await Promise.all([
        rpc<Record<string, unknown>[]>("admin_list_topics"),
        rpc<Record<string, unknown>[]>("admin_list_course_documents"),
        rpc<Record<string, unknown>[]>("admin_list_learners"),
        rpc<Record<string, unknown>[]>("admin_list_audit_logs", { limit_count: 100 }),
      ]);
      const protectedEvents = await supabase
        .from("protected_content_events")
        .select("id,user_id,document_id,event_type,details,created_at")
        .order("created_at", { ascending: false })
        .limit(200);

      setState({
        topics: topics.map(mapTopic),
        documents: documents.map(mapCourseDocument),
        learners: learners.map(mapLearner),
        logs: logs.map(mapLog),
        protectedEvents: protectedEvents.error
          ? []
          : ((protectedEvents.data ?? []) as Record<string, unknown>[]).map(mapProtectedEvent),
        loading: false,
        error: null,
      });
    } catch (err) {
      setState((current) => ({
        ...current,
        loading: false,
        error: err instanceof Error ? err.message : "Admin data could not be loaded.",
      }));
    }
  }, []);

  useEffect(() => {
    void load();
  }, [load]);

  const saveTopic = useCallback(
    async (topic: TopicDraft) => {
      await rpc("admin_upsert_topic", {
        topic_id: topic.id,
        topic_subject: topic.subject,
        topic_title: topic.title,
        topic_description: topic.description,
        topic_level: topic.level,
        topic_class_levels: topic.classLevels,
        topic_series: topic.series,
        topic_estimated_minutes: topic.estimatedMinutes,
      });
      await load();
    },
    [load],
  );

  const saveCourseDocument = useCallback(
    async (document: CourseDocumentDraft) => {
      await rpc("admin_upsert_course_document", {
        document_id: document.id ?? null,
        document_topic_id: document.topicId,
        document_subject: document.subject,
        document_title: document.title,
        document_language: document.language,
        document_level: document.level,
        document_class_levels: document.classLevels,
        document_series: document.series,
        document_status: document.status,
        document_markdown_content: document.markdownContent,
        document_content_kind: document.contentKind,
      });
      await load();
    },
    [load],
  );

  const archiveCourseDocument = useCallback(
    async (documentId: string) => {
      await rpc("admin_archive_course_document", { document_id: documentId });
      await load();
    },
    [load],
  );

  const deleteCourseDocument = useCallback(
    async (documentId: string) => {
      await rpc("admin_delete_course_document", { document_id: documentId });
      await load();
    },
    [load],
  );

  const setLearnerPlan = useCallback(
    async (userId: string, plan: "free" | "premium") => {
      await rpc("admin_set_learner_plan", {
        learner_user_id: userId,
        learner_plan: plan,
      });
      await load();
    },
    [load],
  );

  return useMemo(
    () => ({
      ...state,
      reload: load,
      saveTopic,
      saveCourseDocument,
      archiveCourseDocument,
      deleteCourseDocument,
      setLearnerPlan,
    }),
    [
      archiveCourseDocument,
      deleteCourseDocument,
      load,
      saveCourseDocument,
      saveTopic,
      setLearnerPlan,
      state,
    ],
  );
}
