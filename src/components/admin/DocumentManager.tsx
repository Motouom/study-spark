import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import {
  Archive,
  AlertTriangle,
  Brain,
  CheckCircle2,
  Eye,
  FileText,
  RefreshCw,
  Save,
  Send,
  ShieldCheck,
  Undo2,
  Upload,
} from "lucide-react";
import { lazy, Suspense, useMemo, useState, type ReactNode } from "react";
import {
  CLASS_LEVELS,
  LANGUAGES,
  SERIES_OPTIONS,
  SUBJECTS,
  type ClassLevel,
  type Language,
  type Series,
  type Subject,
  classLabel,
  seriesLabel,
} from "@/lib/study-reference-data";
import {
  useAdminData,
  type AdminCourseDocument,
  type ContentIssueReport,
  type CourseContentKind,
  type CourseDocumentDraft,
  type CurriculumPath,
  type PermissionStatus,
  type ReviewStatus,
  type SourceType,
} from "@/hooks/use-admin-data";
import { useAiActions } from "@/hooks/use-ai-actions";
import type { ContentStatus } from "@/lib/study-reference-data";

const ProtectedMarkdown = lazy(() => import("@/components/ProtectedMarkdown"));

const ALL_CLASS_LEVELS = CLASS_LEVELS.map((item) => item.id) as ClassLevel[];
const ALL_SERIES = SERIES_OPTIONS.map((item) => item.id) as Series[];

export type DocumentManagerConfig = {
  contentKind: CourseContentKind;
  title: string;
  description: string;
  uploadLabel: string;
  noun: string;
};

const CONFIGS: Record<CourseContentKind, DocumentManagerConfig> = {
  paper: {
    contentKind: "paper",
    title: "Papers",
    description: "Upload, update, publish, and retire protected structural question papers.",
    uploadLabel: "Upload paper",
    noun: "paper",
  },
  course: {
    contentKind: "course",
    title: "Courses",
    description: "Upload, update, publish, and retire course lessons and revision tracks.",
    uploadLabel: "Upload course document",
    noun: "course document",
  },
  textbook: {
    contentKind: "textbook",
    title: "Textbooks",
    description: "Upload, update, publish, and retire digital textbook chapters.",
    uploadLabel: "Upload textbook chapter",
    noun: "textbook chapter",
  },
  cheatsheet: {
    contentKind: "cheatsheet",
    title: "Cheatsheets",
    description: "Upload, update, publish, and retire quick revision sheets.",
    uploadLabel: "Upload cheatsheet",
    noun: "cheatsheet",
  },
};

function removeEmojis(value: string) {
  const withoutEmoji = Array.from(value)
    .filter((char) => {
      const codePoint = char.codePointAt(0) ?? 0;
      if (codePoint === 0x200d || codePoint === 0xfe0e || codePoint === 0xfe0f) return false;
      if (codePoint >= 0x1f000 && codePoint <= 0x1faff) return false;
      if (codePoint >= 0x2600 && codePoint <= 0x27bf) return false;
      return true;
    })
    .join("");

  return withoutEmoji
    .replace(/[ \t]+\n/g, "\n")
    .replace(/\n{4,}/g, "\n\n\n")
    .trim();
}

function removeEmojisForTyping(value: string) {
  return Array.from(value)
    .filter((char) => {
      const codePoint = char.codePointAt(0) ?? 0;
      if (codePoint === 0x200d || codePoint === 0xfe0e || codePoint === 0xfe0f) return false;
      if (codePoint >= 0x1f000 && codePoint <= 0x1faff) return false;
      if (codePoint >= 0x2600 && codePoint <= 0x27bf) return false;
      return true;
    })
    .join("");
}

function uppercaseTitle(value: string) {
  return value.toUpperCase();
}

export function DocumentManager({ kind }: { kind: CourseContentKind }) {
  const config = CONFIGS[kind];
  const {
    topics,
    documents,
    issueReports,
    error,
    reload,
    saveCourseDocument,
    unpublishCourseDocument,
    archiveCourseDocument,
    deleteCourseDocument,
    resolveContentIssueReport,
  } = useAdminData();
  const [mode, setMode] = useState<"list" | "document">("list");
  const [documentDraft, setDocumentDraft] = useState<CourseDocumentDraft>(
    emptyDocument(config.contentKind),
  );
  const [previewed, setPreviewed] = useState(false);
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState<string | null>(null);
  const ai = useAiActions();

  const kindDocuments = useMemo(
    () => documents.filter((document) => document.contentKind === config.contentKind),
    [config.contentKind, documents],
  );

  const documentTopics = useMemo(
    () => topics.filter((topic) => topic.subject === documentDraft.subject),
    [documentDraft.subject, topics],
  );

  function firstTopicForSubject(subject: Subject) {
    return topics.find((topic) => topic.subject === subject);
  }

  function updateDraft(patch: Partial<CourseDocumentDraft>) {
    setPreviewed(false);
    setDocumentDraft((current) => ({ ...current, ...patch }));
  }

  function validateDraft(status: ContentStatus) {
    if (documentTopics.length === 0) return `No course section exists yet for ${documentDraft.subject}.`;
    if (documentDraft.markdownContent.trim().length < 20) return "Markdown content is too short.";
    if (documentDraft.classLevels.length === 0) return "Select at least one class level.";
    if (documentDraft.series.length === 0) return "Select at least one series.";
    if (status !== "published") return null;
    if (!previewed) return "Preview the learner view before publishing.";
    if (!documentDraft.exam.trim()) return "Published content requires an exam.";
    if (!documentDraft.contentYear.trim()) return "Published content requires a year or syllabus version.";
    if (!documentDraft.sourceReference.trim()) return "Published content requires a source reference.";
    if (documentDraft.reviewStatus !== "approved") {
      return "Published content must be approved by review.";
    }
    if (!["approved", "licensed", "public_domain"].includes(documentDraft.permissionStatus)) {
      return "Published content needs approved, licensed, or public domain permission status.";
    }
    return null;
  }

  async function saveDocument(status: ContentStatus) {
    setSaving(true);
    setMessage(null);
    try {
      const validation = validateDraft(status);
      if (validation) throw new Error(validation);
      const topic = documentDraft.topicId
        ? topics.find((item) => item.id === documentDraft.topicId)
        : firstTopicForSubject(documentDraft.subject);
      if (!topic) throw new Error(`No course section exists yet for ${documentDraft.subject}.`);
      await saveCourseDocument({
        ...documentDraft,
        topicId: topic.id,
        status,
        contentKind: config.contentKind,
        title: uppercaseTitle(documentDraft.title.trim().replace(/\s+/g, " ")),
        markdownContent: removeEmojis(documentDraft.markdownContent),
      });
      setDocumentDraft(emptyDocument(config.contentKind));
      setPreviewed(false);
      setMode("list");
      setMessage(`Markdown ${config.noun} saved as ${status}.`);
    } catch (err) {
      setMessage(
        err instanceof Error ? err.message : `Markdown ${config.noun} could not be saved.`,
      );
    } finally {
      setSaving(false);
    }
  }

  async function uploadMarkdownFile(file: File | null) {
    if (!file) return;
    const text = await file.text();
    const clean = removeEmojis(text);
    const title =
      clean
        .split("\n")
        .find((line) => line.trim().startsWith("#"))
        ?.replace(/^#+\s*/, "")
        .trim() || file.name.replace(/\.md$/i, "");
    setPreviewed(false);
    setDocumentDraft((current) => ({
      ...current,
      title: uppercaseTitle(title),
      markdownContent: clean,
    }));
  }

  async function formatDocumentWithAi() {
    setMessage(null);
    try {
      const result = await ai.formatPaper({
        title: documentDraft.title,
        subject: documentDraft.subject,
        markdown: documentDraft.markdownContent,
      });
      setPreviewed(false);
      setDocumentDraft((current) => ({
        ...current,
        markdownContent: result.markdown,
      }));
      setMessage(
        result.source === "ai"
          ? "AI formatted the document. Review it before publishing."
          : "AI is not configured yet, so StudySpark applied local cleanup.",
      );
    } catch (err) {
      setMessage(err instanceof Error ? err.message : "AI formatter could not run.");
    }
  }

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">{config.title}</h1>
          <p className="mt-1 text-sm text-muted-foreground">{config.description}</p>
        </div>
        <div className="flex gap-2">
          <Button variant="outline" size="sm" onClick={() => void reload()}>
            <RefreshCw className="mr-1.5 h-3.5 w-3.5" />
            Refresh
          </Button>
          <Button
            size="sm"
            variant="outline"
            onClick={() => setMode(mode === "document" ? "list" : "document")}
          >
            <Upload className="mr-1.5 h-3.5 w-3.5" />
            {config.uploadLabel}
          </Button>
        </div>
      </div>

      {(error || message || ai.error) && (
        <div
          className={`mb-5 rounded-lg border p-3 text-sm ${
            error || ai.error
              ? "border-destructive/30 bg-destructive/10 text-destructive"
              : "border-success/30 bg-success/10 text-success"
          }`}
        >
          {error ?? ai.error ?? message}
        </div>
      )}

      <div className="mb-4 grid grid-cols-1 gap-4 md:grid-cols-3">
        <StatCard label="Course sections" value={String(topics.length)} />
        <StatCard label={config.title} value={String(kindDocuments.length)} />
        <StatCard
          label={`Published ${config.title.toLowerCase()}`}
          value={String(kindDocuments.filter((item) => item.status === "published").length)}
          tone="success"
        />
      </div>

      <div className="mb-4 flex items-center gap-2 rounded-lg border border-success/30 bg-success/10 p-3 text-sm text-success">
        <ShieldCheck className="h-4 w-4" />
        Admin writes are validated by Supabase RPCs and logged in the audit table.
      </div>

      {mode === "document" && (
        <form
          onSubmit={(event) => {
            event.preventDefault();
            void saveDocument("draft");
          }}
          className="mb-6 rounded-xl border border-border bg-card p-5"
        >
          <div className="flex items-center justify-between">
            <div>
              <h2 className="text-base font-medium">Upload Markdown {config.noun}</h2>
              <p className="mt-1 text-xs text-muted-foreground">
                Paste or upload a complete formatted .md document. Emojis are removed before saving.
              </p>
            </div>
          </div>

          <div className="mt-4 grid gap-3 md:grid-cols-2">
            <Field label="Title">
              <Input
                required
                value={documentDraft.title}
                onChange={(e) =>
                  updateDraft({ title: uppercaseTitle(e.target.value) })
                }
                onBlur={(e) =>
                  updateDraft({ title: uppercaseTitle(e.target.value) })
                }
                className="uppercase"
                placeholder={
                  config.contentKind === "textbook"
                    ? "MATHEMATICS TEXTBOOK — CHAPTER 1"
                    : "ADVANCED LEVEL MATHEMATICS PAPER 2 SET 2"
                }
              />
            </Field>
            <Field label="Subject">
              <Select
                value={documentDraft.subject}
                options={SUBJECTS}
                onChange={(value) => {
                  const subject = value as Subject;
                  const topic = topics.find((item) => item.subject === subject);
                  updateDraft({
                    subject,
                    topicId: topic?.id ?? "",
                  });
                }}
              />
            </Field>
            <Field label="Language">
              <Select
                value={documentDraft.language}
                options={LANGUAGES.map((item) => item.id)}
                onChange={(value) =>
                  updateDraft({ language: value as Language })
                }
              />
            </Field>
            <Field label="Status">
              <Select
                value={documentDraft.status}
                options={["draft", "review", "published", "unpublished", "archived"]}
                onChange={(value) => updateDraft({ status: value as ContentStatus })}
              />
            </Field>
            <Field label="Markdown file">
              <Input
                type="file"
                accept=".md,text/markdown,text/plain"
                onChange={(event) => void uploadMarkdownFile(event.target.files?.[0] ?? null)}
              />
            </Field>
            <Field label="Class levels">
              <Multi
                values={documentDraft.classLevels}
                options={CLASS_LEVELS.map((item) => item.id)}
                label={classLabel}
                onChange={(classLevels) =>
                  updateDraft({
                    classLevels: classLevels as ClassLevel[],
                  })
                }
              />
            </Field>
            <Field label="Series">
              <Multi
                values={documentDraft.series}
                options={SERIES_OPTIONS.map((item) => item.id)}
                label={seriesLabel}
                onChange={(series) =>
                  updateDraft({ series: series as Series[] })
                }
              />
            </Field>
            <Field label="Curriculum path">
              <Select
                value={documentDraft.curriculumPath}
                options={["gce", "francophone", "other"]}
                onChange={(value) => updateDraft({ curriculumPath: value as CurriculumPath })}
              />
            </Field>
            <Field label="Exam / programme">
              <Input
                value={documentDraft.exam}
                onChange={(event) => updateDraft({ exam: event.target.value })}
                placeholder="GCE A Level, GCE O Level, Probatoire, Baccalauréat"
              />
            </Field>
            <Field label="Year or syllabus version">
              <Input
                value={documentDraft.contentYear}
                onChange={(event) => updateDraft({ contentYear: event.target.value })}
                placeholder="2026 or 2024 syllabus"
              />
            </Field>
            <Field label="Source type">
              <Select
                value={documentDraft.sourceType}
                options={[
                  "official_exam",
                  "licensed_partner",
                  "teacher_authored",
                  "internal",
                  "user_reported",
                  "other",
                ]}
                onChange={(value) => updateDraft({ sourceType: value as SourceType })}
              />
            </Field>
            <Field label="Permission status">
              <Select
                value={documentDraft.permissionStatus}
                options={[
                  "needs_review",
                  "approved",
                  "licensed",
                  "public_domain",
                  "restricted",
                  "rejected",
                ]}
                onChange={(value) =>
                  updateDraft({ permissionStatus: value as PermissionStatus })
                }
              />
            </Field>
            <Field label="Review status">
              <Select
                value={documentDraft.reviewStatus}
                options={[
                  "not_reviewed",
                  "metadata_reviewed",
                  "content_reviewed",
                  "approved",
                  "changes_requested",
                ]}
                onChange={(value) => updateDraft({ reviewStatus: value as ReviewStatus })}
              />
            </Field>
            <Field label="Content version">
              <Input
                value={documentDraft.contentVersion}
                onChange={(event) => updateDraft({ contentVersion: event.target.value })}
                placeholder="1.0.0"
              />
            </Field>
          </div>

          <Field label="Source reference">
            <Textarea
              value={documentDraft.sourceReference}
              onChange={(event) => updateDraft({ sourceReference: event.target.value })}
              className="min-h-20"
              placeholder="Official paper source, teacher author, license note, reviewer evidence, or internal source record."
            />
          </Field>

          <Field label="Change note">
            <Textarea
              value={documentDraft.changeNote}
              onChange={(event) => updateDraft({ changeNote: event.target.value })}
              className="min-h-20"
              placeholder="What changed and why this version is safe to publish."
            />
          </Field>

          <Field label="Markdown content">
            <Textarea
              required
              value={documentDraft.markdownContent}
              onChange={(e) =>
                updateDraft({
                  markdownContent: removeEmojisForTyping(e.target.value),
                })
              }
              className="min-h-[24rem] font-mono text-sm"
              placeholder="# Course title&#10;&#10;## Algebra&#10;&#10;**Q1.** ..."
            />
          </Field>

          <div className="mt-3 flex flex-col gap-3 rounded-lg border border-border bg-secondary/30 p-3 text-xs text-muted-foreground sm:flex-row sm:items-center sm:justify-between">
            <span>
              {documentDraft.markdownContent.length.toLocaleString()} characters ready to save.
            </span>
            <Button
              type="button"
              variant="outline"
              size="sm"
              disabled={
                ai.loading === "format-paper" || documentDraft.markdownContent.trim().length < 20
              }
              onClick={() => void formatDocumentWithAi()}
            >
              <Brain className="mr-1.5 h-3.5 w-3.5" />
              {ai.loading === "format-paper" ? "Formatting..." : "AI format document"}
            </Button>
          </div>

          <div className="mt-4 flex justify-end gap-2">
            <Button type="button" variant="ghost" onClick={() => setMode("list")}>
              Cancel
            </Button>
            <Button
              type="button"
              variant="outline"
              disabled={documentDraft.markdownContent.length < 20}
              onClick={() => setPreviewed(true)}
            >
              <Eye className="mr-1.5 h-3.5 w-3.5" />
              Preview learner view
            </Button>
            <Button type="button" variant="outline" disabled={saving} onClick={() => void saveDocument("review")}>
              <Send className="mr-1.5 h-3.5 w-3.5" />
              Send to review
            </Button>
            <Button
              type="button"
              disabled={
                saving || documentTopics.length === 0 || documentDraft.markdownContent.length < 20
              }
              onClick={() => void saveDocument("published")}
            >
              <Save className="mr-1.5 h-3.5 w-3.5" />
              {saving ? "Saving..." : `Publish ${config.noun}`}
            </Button>
          </div>

          {previewed && (
            <div className="mt-5 rounded-xl border border-border bg-background p-4">
              <div className="mb-3 flex items-center justify-between gap-3">
                <div>
                  <h3 className="text-sm font-medium">Learner preview</h3>
                  <p className="text-xs text-muted-foreground">
                    This uses the same protected renderer students see.
                  </p>
                </div>
                <Badge variant="outline">Previewed</Badge>
              </div>
              <Suspense fallback={<div className="text-sm text-muted-foreground">Preparing preview...</div>}>
                <ProtectedMarkdown
                  document={{
                    id: documentDraft.id ?? "00000000-0000-0000-0000-000000000000",
                    topicId: documentDraft.topicId || "preview",
                    subject: documentDraft.subject,
                    title: documentDraft.title || `Untitled ${config.noun}`,
                    language: documentDraft.language,
                    level: documentDraft.level,
                    classLevels: documentDraft.classLevels,
                    series: documentDraft.series,
                    markdownContent: documentDraft.markdownContent,
                    updatedAt: new Date().toISOString(),
                    accessStatus: "premium",
                    contentKind: documentDraft.contentKind,
                    isLocked: false,
                  }}
                  owner="StudySpark admin preview"
                  userId="admin-preview"
                />
              </Suspense>
            </div>
          )}
        </form>
      )}

      <ContentIssueReports
        reports={issueReports.filter((report) => report.contentKind === config.contentKind)}
        onResolve={resolveContentIssueReport}
      />

      <DocumentList
        documents={kindDocuments}
        noun={config.noun}
        onEdit={(document) => {
          setDocumentDraft(document);
          setMode("document");
        }}
        onUnpublish={unpublishCourseDocument}
        onArchive={archiveCourseDocument}
        onDelete={deleteCourseDocument}
      />
    </div>
  );
}

function emptyDocument(contentKind: CourseContentKind): CourseDocumentDraft {
  return {
    topicId: "",
    subject: "Mathematics",
    title: "",
    language: "english",
    level: "advanced",
    classLevels: ALL_CLASS_LEVELS,
    series: ALL_SERIES,
    status: "published",
    contentKind,
    markdownContent: "",
    curriculumPath: "gce",
    exam: "",
    contentYear: "",
    sourceType: "internal",
    sourceReference: "",
    permissionStatus: "needs_review",
    reviewStatus: "not_reviewed",
    contentVersion: "1.0.0",
    changeNote: "",
  };
}

function DocumentList({
  documents,
  noun,
  onEdit,
  onUnpublish,
  onArchive,
  onDelete,
}: {
  documents: AdminCourseDocument[];
  noun: string;
  onEdit: (document: AdminCourseDocument) => void;
  onUnpublish: (documentId: string) => void;
  onArchive: (documentId: string) => void;
  onDelete: (documentId: string) => void;
}) {
  return (
    <section className="mt-6 rounded-xl border border-border bg-card">
      <div className="flex items-center justify-between border-b border-border px-4 py-3">
        <div>
          <h2 className="text-sm font-medium">Markdown documents</h2>
          <p className="text-xs text-muted-foreground">Full formatted in-app {noun}s.</p>
        </div>
        <Badge variant="secondary">{documents.length}</Badge>
      </div>
      {documents.length === 0 ? (
        <div className="px-4 py-8 text-center text-sm text-muted-foreground">
          No Markdown {noun}s uploaded yet.
        </div>
      ) : (
        <div className="divide-y divide-border">
          {documents.map((document) => (
            <div key={document.id} className="flex items-center justify-between gap-4 px-4 py-3">
              <div className="min-w-0">
                <div className="truncate text-sm font-medium">{document.title}</div>
                <div className="mt-0.5 text-xs text-muted-foreground">
                  {document.subject} · {document.markdownContent.length} chars
                  {" · "}
                  {document.status}
                  {document.reviewStatus ? ` · ${document.reviewStatus}` : ""}
                  {document.contentKind === "textbook" ? " · textbook" : ""}
                </div>
              </div>
              <div className="flex shrink-0 items-center gap-1">
                {document.status === "published" && (
                  <Button
                    variant="ghost"
                    size="icon"
                    className="h-7 w-7"
                    title={`Unpublish ${noun}`}
                    onClick={() => onUnpublish(document.id)}
                  >
                    <Undo2 className="h-3.5 w-3.5" />
                  </Button>
                )}
                <Button
                  variant="ghost"
                  size="icon"
                  className="h-7 w-7"
                  onClick={() => onEdit(document)}
                >
                  <FileText className="h-3.5 w-3.5" />
                </Button>
                <Button
                  variant="ghost"
                  size="icon"
                  className="h-7 w-7 text-destructive"
                  title={`Archive ${noun}`}
                  onClick={() => onArchive(document.id)}
                >
                  <Archive className="h-3.5 w-3.5" />
                </Button>
                <Button
                  variant="ghost"
                  size="icon"
                  className="h-7 w-7 text-destructive"
                  title={`Delete ${noun} permanently`}
                  onClick={() => {
                    if (window.confirm(`Delete this ${noun} permanently? This cannot be undone.`)) {
                      onDelete(document.id);
                    }
                  }}
                >
                  <span className="text-sm leading-none">×</span>
                </Button>
              </div>
            </div>
          ))}
        </div>
      )}
    </section>
  );
}

function ContentIssueReports({
  reports,
  onResolve,
}: {
  reports: ContentIssueReport[];
  onResolve: (
    reportId: string,
    status: ContentIssueReport["status"],
    notes: string,
  ) => Promise<void>;
}) {
  const openReports = reports.filter((report) => report.status === "open" || report.status === "reviewing");
  const [notes, setNotes] = useState<Record<string, string>>({});

  if (reports.length === 0) return null;

  return (
    <section className="mb-6 rounded-xl border border-border bg-card">
      <div className="flex items-center justify-between border-b border-border px-4 py-3">
        <div>
          <h2 className="text-sm font-medium">Learner-reported content issues</h2>
          <p className="text-xs text-muted-foreground">
            Reports from the learner document view, grouped with this content type.
          </p>
        </div>
        <Badge variant={openReports.length > 0 ? "default" : "secondary"}>{openReports.length} open</Badge>
      </div>
      <div className="divide-y divide-border">
        {reports.slice(0, 8).map((report) => (
          <div key={report.id} className="grid gap-3 px-4 py-3 lg:grid-cols-[1fr_auto]">
            <div className="min-w-0">
              <div className="flex flex-wrap items-center gap-2">
                <Badge variant="outline">{report.status}</Badge>
                <Badge variant="secondary">{report.issueType.replace(/_/g, " ")}</Badge>
                {report.questionNumber && <Badge variant="outline">Q{report.questionNumber}</Badge>}
              </div>
              <div className="mt-2 text-sm font-medium">{report.documentTitle}</div>
              <p className="mt-1 text-sm text-muted-foreground">{report.body}</p>
              {report.topicTitle && (
                <p className="mt-1 text-xs text-muted-foreground">Topic: {report.topicTitle}</p>
              )}
              <Input
                className="mt-3"
                value={notes[report.id] ?? report.adminNotes}
                onChange={(event) =>
                  setNotes((current) => ({ ...current, [report.id]: event.target.value }))
                }
                placeholder="Admin note for this report"
              />
            </div>
            <div className="flex flex-wrap items-start gap-2 lg:justify-end">
              <Button
                size="sm"
                variant="outline"
                onClick={() => void onResolve(report.id, "reviewing", notes[report.id] ?? report.adminNotes)}
              >
                <AlertTriangle className="mr-1.5 h-3.5 w-3.5" />
                Review
              </Button>
              <Button
                size="sm"
                onClick={() => void onResolve(report.id, "resolved", notes[report.id] ?? report.adminNotes)}
              >
                <CheckCircle2 className="mr-1.5 h-3.5 w-3.5" />
                Resolve
              </Button>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}

function Field({ label, children }: { label: string; children: ReactNode }) {
  return (
    <label className="mt-3 block text-sm">
      <span className="mb-1.5 block text-xs font-medium text-muted-foreground">{label}</span>
      {children}
    </label>
  );
}

function Select({
  value,
  options,
  onChange,
}: {
  value: string;
  options: string[];
  onChange: (value: string) => void;
}) {
  return (
    <select
      value={value}
      onChange={(event) => onChange(event.target.value)}
      className="h-10 w-full rounded-md border border-border bg-background px-3 text-sm"
    >
      <option value="" disabled>
        Select
      </option>
      {options.map((option) => (
        <option key={option} value={option}>
          {option}
        </option>
      ))}
    </select>
  );
}

function Multi({
  values,
  options,
  label,
  onChange,
}: {
  values: string[];
  options: string[];
  label: (value: never) => string;
  onChange: (values: string[]) => void;
}) {
  return (
    <div className="flex flex-wrap gap-2">
      {options.map((option) => {
        const active = values.includes(option);
        return (
          <button
            key={option}
            type="button"
            onClick={() =>
              onChange(active ? values.filter((item) => item !== option) : [...values, option])
            }
            className={`rounded-full border px-3 py-1 text-xs ${
              active
                ? "border-foreground bg-foreground text-background"
                : "border-border bg-background"
            }`}
          >
            {label(option as never)}
          </button>
        );
      })}
    </div>
  );
}

function StatCard({ label, value, tone }: { label: string; value: string; tone?: "success" }) {
  return (
    <div className="rounded-xl border border-border bg-card p-4">
      <div className="text-xs text-muted-foreground">{label}</div>
      <div
        className={`mt-1 font-display text-2xl ${tone === "success" ? "text-success" : "text-foreground"}`}
      >
        {value}
      </div>
    </div>
  );
}
