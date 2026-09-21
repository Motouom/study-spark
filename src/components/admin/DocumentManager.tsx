import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { Archive, Brain, FileText, RefreshCw, Save, ShieldCheck, Upload } from "lucide-react";
import { useMemo, useState, type ReactNode } from "react";
import {
  type ClassLevel,
  type Language,
  type Series,
  type Subject,
  classLabel,
  classLevelsForSystem,
  educationSystemForLanguage,
  examLabelForClassLevel,
  levelLabelForSystem,
  seriesOptionsForSystem,
  seriesLabel,
  subjectsForSystem,
} from "@/lib/study-reference-data";
import {
  useAdminData,
  type AdminCourseDocument,
  type CourseContentKind,
  type CourseDocumentDraft,
} from "@/hooks/use-admin-data";
import { useAiActions } from "@/hooks/use-ai-actions";

function languageLabel(language: Language) {
  return language === "french" ? "Français" : "English";
}

function optionsForLanguage(language: Language) {
  const system = educationSystemForLanguage(language);
  return {
    system,
    classLevels: classLevelsForSystem(system),
    subjects: subjectsForSystem(system),
    series: seriesOptionsForSystem(system),
  };
}

function normalizeDocumentForLanguage(
  draft: CourseDocumentDraft,
  language: Language,
): CourseDocumentDraft {
  const options = optionsForLanguage(language);
  const classLevels = draft.classLevels.filter((id) =>
    options.classLevels.some((item) => item.id === id),
  );
  const normalizedClassLevels =
    classLevels.length > 0 ? classLevels : options.classLevels.map((item) => item.id);
  const firstLevel = options.classLevels.find(
    (item) => item.id === normalizedClassLevels[0],
  )?.level;
  const level = firstLevel ?? (language === "french" ? "advanced" : "ordinary");
  const series = draft.series.filter((id) =>
    options.series.some((item) => item.id === id && item.level === level),
  );
  const fallbackSeries = options.series
    .filter((item) => item.level === level)
    .map((item) => item.id);
  const subject = options.subjects.includes(draft.subject) ? draft.subject : options.subjects[0];

  return {
    ...draft,
    language,
    level,
    subject,
    topicId: "",
    classLevels: normalizedClassLevels,
    series: series.length > 0 ? series : fallbackSeries,
  };
}

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
    error,
    reload,
    saveCourseDocument,
    archiveCourseDocument,
    deleteCourseDocument,
  } = useAdminData();
  const [mode, setMode] = useState<"list" | "document">("list");
  const [documentDraft, setDocumentDraft] = useState<CourseDocumentDraft>(
    emptyDocument(config.contentKind),
  );
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
  const curriculumOptions = optionsForLanguage(documentDraft.language);
  const availableSeries = curriculumOptions.series.filter(
    (item) => item.level === documentDraft.level,
  );
  const selectedExams = Array.from(
    new Set(documentDraft.classLevels.map((classLevel) => examLabelForClassLevel(classLevel))),
  );

  function firstTopicForSubject(subject: Subject) {
    return topics.find((topic) => topic.subject === subject);
  }

  async function submitDocument(event: React.FormEvent) {
    event.preventDefault();
    setSaving(true);
    setMessage(null);
    try {
      const topic = documentDraft.topicId
        ? topics.find((item) => item.id === documentDraft.topicId)
        : firstTopicForSubject(documentDraft.subject);
      if (!topic) throw new Error(`No course section exists yet for ${documentDraft.subject}.`);
      await saveCourseDocument({
        ...documentDraft,
        topicId: topic.id,
        status: "published",
        contentKind: config.contentKind,
        title: uppercaseTitle(documentDraft.title.trim().replace(/\s+/g, " ")),
        markdownContent: removeEmojis(documentDraft.markdownContent),
      });
      setDocumentDraft(emptyDocument(config.contentKind));
      setMode("list");
      setMessage(`Markdown ${config.noun} published without emojis.`);
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
          onSubmit={submitDocument}
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
                  setDocumentDraft({ ...documentDraft, title: uppercaseTitle(e.target.value) })
                }
                onBlur={(e) =>
                  setDocumentDraft({ ...documentDraft, title: uppercaseTitle(e.target.value) })
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
                options={curriculumOptions.subjects}
                onChange={(value) => {
                  const subject = value as Subject;
                  const topic = topics.find((item) => item.subject === subject);
                  setDocumentDraft({
                    ...documentDraft,
                    subject,
                    topicId: topic?.id ?? "",
                  });
                }}
              />
            </Field>
            <Field label="Language">
              <Select
                value={documentDraft.language}
                options={["english", "french"]}
                label={(value) => languageLabel(value as Language)}
                onChange={(value) =>
                  setDocumentDraft(normalizeDocumentForLanguage(documentDraft, value as Language))
                }
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
                options={curriculumOptions.classLevels.map((item) => item.id)}
                label={(value) =>
                  `${classLabel(value as ClassLevel)} · ${examLabelForClassLevel(value as ClassLevel)}`
                }
                onChange={(classLevels) =>
                  setDocumentDraft(
                    normalizeDocumentForLanguage(
                      {
                        ...documentDraft,
                        classLevels: classLevels as ClassLevel[],
                      },
                      documentDraft.language,
                    ),
                  )
                }
              />
            </Field>
            <Field label="Series">
              <Multi
                values={documentDraft.series}
                options={availableSeries.map((item) => item.id)}
                label={seriesLabel}
                onChange={(series) =>
                  setDocumentDraft({ ...documentDraft, series: series as Series[] })
                }
              />
            </Field>
          </div>

          <div className="mt-4 rounded-lg border border-border bg-secondary/30 p-3 text-xs text-muted-foreground">
            <div className="font-medium text-foreground">Curriculum metadata</div>
            <div className="mt-1 flex flex-wrap gap-x-3 gap-y-1">
              <span>{languageLabel(documentDraft.language)}</span>
              <span>{levelLabelForSystem(documentDraft.level, curriculumOptions.system)}</span>
              <span>{selectedExams.join(", ")}</span>
              <span>{documentDraft.series.map((id) => seriesLabel(id)).join(", ")}</span>
            </div>
            <p className="mt-2">
              For French papers, use French language, francophone classes, filières, and a title
              that includes exam and year, for example: BACCALAURÉAT D — MATHÉMATIQUES — 2026.
            </p>
          </div>

          <Field label="Markdown content">
            <Textarea
              required
              value={documentDraft.markdownContent}
              onChange={(e) =>
                setDocumentDraft({
                  ...documentDraft,
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
              type="submit"
              disabled={
                saving || documentTopics.length === 0 || documentDraft.markdownContent.length < 20
              }
            >
              <Save className="mr-1.5 h-3.5 w-3.5" />
              {saving ? "Publishing..." : `Publish markdown ${config.noun}`}
            </Button>
          </div>
        </form>
      )}

      <DocumentList
        documents={kindDocuments}
        noun={config.noun}
        onEdit={(document) => {
          setDocumentDraft(document);
          setMode("document");
        }}
        onArchive={archiveCourseDocument}
        onDelete={deleteCourseDocument}
      />
    </div>
  );
}

function emptyDocument(contentKind: CourseContentKind): CourseDocumentDraft {
  const englishOptions = optionsForLanguage("english");
  const defaultLevel = "advanced";
  return normalizeDocumentForLanguage(
    {
      topicId: "",
      subject: "Mathematics",
      title: "",
      language: "english",
      level: defaultLevel,
      classLevels: englishOptions.classLevels
        .filter((item) => item.level === defaultLevel)
        .map((item) => item.id),
      series: englishOptions.series
        .filter((item) => item.level === defaultLevel)
        .map((item) => item.id),
      status: "published",
      contentKind,
      markdownContent: "",
    },
    "english",
  );
}

function DocumentList({
  documents,
  noun,
  onEdit,
  onArchive,
  onDelete,
}: {
  documents: AdminCourseDocument[];
  noun: string;
  onEdit: (document: AdminCourseDocument) => void;
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
                <div className="line-clamp-2 break-words text-sm font-medium leading-snug">
                  {document.title}
                </div>
                <div className="mt-1 flex flex-wrap gap-x-2 gap-y-1 text-xs text-muted-foreground">
                  <span>{document.subject}</span>
                  <span>{languageLabel(document.language)}</span>
                  <span>{document.classLevels.map((id) => classLabel(id)).join(", ")}</span>
                  <span>{document.series.map((id) => seriesLabel(id)).join(", ")}</span>
                  <span>{document.markdownContent.length} chars</span>
                  {document.contentKind === "textbook" && <span>textbook</span>}
                </div>
              </div>
              <div className="flex shrink-0 items-center gap-1">
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
  label,
  onChange,
}: {
  value: string;
  options: string[];
  label?: (value: string) => string;
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
          {label ? label(option) : option}
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
