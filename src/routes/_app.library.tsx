import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import {
  SUBJECTS,
  type Series,
  type Subject,
  classLabel,
  seriesLabel,
} from "@/lib/study-reference-data";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  ArrowLeft,
  BookOpen,
  FileText,
  Lock,
  Search,
  ShieldCheck,
  Sparkles,
  X,
} from "lucide-react";
import { useMemo, useState } from "react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent, type CourseDocument } from "@/hooks/use-study-content";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";
import { supabaseConfigured } from "@/lib/supabase";

export const Route = createFileRoute("/_app/library")({
  head: () => ({ meta: [{ title: "Papers — StudySpark" }] }),
  component: LibraryPage,
});

function LibraryPage() {
  const { profile: savedProfile, loaded: profileLoaded } = useStudyProfile();
  const content = useStudyContent(savedProfile);
  const courseDocuments = content.documents.filter((document) => document.contentKind === "paper");
  const useRemoteOnly = supabaseConfigured();
  const pageLoading = useRemoteOnly && (!profileLoaded || !content.loaded || content.loading);
  const effectiveSubjects = savedProfile
    ? content.enabled
      ? Array.from(
          new Set([...content.subjects, ...courseDocuments.map((document) => document.subject)]),
        )
      : SUBJECTS.filter((item) => courseDocuments.some((document) => document.subject === item))
    : SUBJECTS;
  const [q, setQ] = useState("");
  const [subject, setSubject] = useState<Subject | null>(null);
  const readingProgress = usePaperStudyOverview();

  // Best depth per paper across sessions (each visit creates a new session
  // row, so the latest row alone would read 0%).
  const bestByDoc = useMemo(() => {
    const map = new Map<string, number>();
    for (const session of readingProgress.sessions) {
      map.set(
        session.documentId,
        Math.max(map.get(session.documentId) ?? 0, session.maxScrollPercent),
      );
    }
    return map;
  }, [readingProgress.sessions]);

  const subjectProgress = useMemo(() => {
    const bySubject = new Map<string, { total: number; reached: number }>();
    for (const document of courseDocuments) {
      const entry = bySubject.get(document.subject) ?? { total: 0, reached: 0 };
      entry.total += 1;
      if ((bestByDoc.get(document.id) ?? 0) > 0) entry.reached += 1;
      bySubject.set(document.subject, entry);
    }
    return bySubject;
  }, [bestByDoc, courseDocuments]);

  const subjectCards = useMemo(
    () =>
      effectiveSubjects
        .map((item) => {
          const documents = courseDocuments.filter((document) => document.subject === item);
          const unlocked = documents.filter((document) => !document.isLocked).length;
          const progress = subjectProgress.get(item);
          const startedPercent =
            progress && progress.total > 0
              ? Math.round((progress.reached / progress.total) * 100)
              : 0;

          return {
            name: item,
            total: documents.length,
            unlocked,
            startedPercent,
          };
        })
        .filter((item) => item.total > 0)
        .sort((a, b) => b.total - a.total || a.name.localeCompare(b.name)),
    [courseDocuments, effectiveSubjects, subjectProgress],
  );

  const needle = q.trim().toLowerCase();
  const searchActive = needle.length > 0;

  const filteredDocuments = useMemo(() => {
    return courseDocuments
      .filter((document) => {
        if (!searchActive && subject && document.subject !== subject) return false;
        if (!needle) return true;
        return [document.title, document.subject, ...(document.series ?? [])]
          .join(" ")
          .toLowerCase()
          .includes(needle);
      })
      .sort((a, b) => a.title.localeCompare(b.title));
  }, [courseDocuments, needle, searchActive, subject]);

  const clearSearch = () => setQ("");

  if (pageLoading) {
    return <LibrarySkeleton />;
  }

  return (
    <>
      <PageHeader
        title="Papers"
        description={
          savedProfile
            ? `${classLabel(savedProfile.classLevel)} · ${seriesLabel(savedProfile.series)} · ${savedProfile.language}`
            : "Your class and series"
        }
      />

      <div className="space-y-6 px-4 py-6 md:px-10 md:py-8">
        {content.error && (
          <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Study content could not be loaded: {content.error}
          </div>
        )}
        <div className="flex min-w-0 items-center gap-2 rounded-lg border border-success/30 bg-success/10 p-3 text-sm text-success">
          <ShieldCheck className="h-4 w-4" />
          Questions are opened inside the app only. Copying, downloads, and bulk viewing are
          disabled in the student flow.
        </div>

        <div className="relative">
          <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
          <Input
            value={q}
            onChange={(e) => setQ(e.target.value)}
            placeholder="Search all papers by title, subject, or series..."
            className="h-11 pl-9 pr-10"
            aria-label="Search papers"
          />
          {searchActive && (
            <button
              type="button"
              onClick={clearSearch}
              aria-label="Clear search"
              className="absolute right-3 top-1/2 -translate-y-1/2 rounded p-1 text-muted-foreground transition-colors hover:text-foreground"
            >
              <X className="h-4 w-4" />
            </button>
          )}
        </div>

        {searchActive ? (
          <SearchResults
            documents={filteredDocuments}
            bestByDoc={bestByDoc}
            query={q}
            onClear={clearSearch}
          />
        ) : !subject ? (
          <section className="space-y-3">
            <div className="flex items-center justify-between">
              <h2 className="text-sm font-medium">Subjects</h2>
              <Badge variant="secondary">{subjectCards.length}</Badge>
            </div>
            <div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-3">
              {subjectCards.map((item) => (
                <button
                  key={item.name}
                  type="button"
                  onClick={() => setSubject(item.name)}
                  className="rounded-xl border border-border bg-card p-5 text-left transition-shadow hover:shadow-card"
                >
                  <div className="flex items-start justify-between gap-3">
                    <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary text-foreground">
                      <BookOpen className="h-5 w-5" />
                    </div>
                    <SubjectRing percent={item.startedPercent} />
                  </div>
                  <h3 className="mt-4 text-base font-medium leading-snug">{item.name}</h3>
                  <p className="mt-2 text-xs text-muted-foreground">
                    {item.unlocked} available now · {item.total - item.unlocked} premium
                  </p>
                </button>
              ))}
            </div>
          </section>
        ) : filteredDocuments.length > 0 ? (
          <section className="space-y-3">
            <div className="flex flex-col gap-3 rounded-xl border border-border bg-card p-4">
              <div className="flex items-center justify-between gap-3">
                <Button type="button" variant="ghost" size="sm" onClick={() => setSubject(null)}>
                  <ArrowLeft className="mr-1.5 h-4 w-4" />
                  Subjects
                </Button>
                <Badge variant="secondary">{filteredDocuments.length}</Badge>
              </div>
            </div>
            <div className="grid gap-3 md:grid-cols-2">
              {filteredDocuments.map((document) => (
                <PaperCard
                  key={document.id}
                  document={document}
                  bestPercent={bestByDoc.get(document.id) ?? 0}
                />
              ))}
            </div>
          </section>
        ) : (
          <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
            <p className="text-sm text-muted-foreground">No papers match your filters.</p>
            <Button
              variant="outline"
              size="sm"
              className="mt-4"
              onClick={() => {
                setQ("");
                setSubject(null);
              }}
            >
              Clear filters
            </Button>
          </div>
        )}
      </div>
    </>
  );
}

function SearchResults({
  documents,
  bestByDoc,
  query,
  onClear,
}: {
  documents: CourseDocument[];
  bestByDoc: Map<string, number>;
  query: string;
  onClear: () => void;
}) {
  if (documents.length === 0) {
    return (
      <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
        <p className="text-sm text-muted-foreground">No papers match “{query}”.</p>
        <Button variant="outline" size="sm" className="mt-4" onClick={onClear}>
          Clear search
        </Button>
      </div>
    );
  }
  return (
    <section className="space-y-3">
      <div className="flex items-center justify-between">
        <h2 className="text-sm font-medium">Search results</h2>
        <Badge variant="secondary">{documents.length}</Badge>
      </div>
      <div className="grid gap-3 md:grid-cols-2">
        {documents.map((document) => (
          <PaperCard
            key={document.id}
            document={document}
            bestPercent={bestByDoc.get(document.id) ?? 0}
          />
        ))}
      </div>
    </section>
  );
}

function PaperCard({ document, bestPercent }: { document: CourseDocument; bestPercent: number }) {
  const series = document.series.map((id) => seriesLabel(id as Series)).join(", ");
  if (document.isLocked) {
    return (
      <article className="rounded-xl border border-border bg-card p-4 opacity-90">
        <div className="flex items-start justify-between gap-3">
          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary text-foreground">
            <Lock className="h-5 w-5" />
          </div>
          <Badge variant="outline">Premium</Badge>
        </div>
        <h3 className="mt-4 line-clamp-2 text-sm font-medium leading-snug">{document.title}</h3>
        <p className="mt-2 text-xs text-muted-foreground">
          {series ? `${series} · ` : ""}This paper matches your profile and unlocks with Premium.
        </p>
        <Button asChild size="sm" className="mt-4">
          <Link to="/pricing">
            <Sparkles className="mr-1.5 h-4 w-4" />
            Unlock
          </Link>
        </Button>
      </article>
    );
  }

  const inProgress = bestPercent > 0 && bestPercent < 85;
  const readThrough = bestPercent >= 85;
  return (
    <Link
      to="/course/$documentId"
      params={{ documentId: document.id }}
      className="group rounded-xl border border-border bg-card p-4 transition-shadow hover:shadow-card"
    >
      <div className="flex items-start justify-between gap-3">
        <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary text-foreground">
          <FileText className="h-5 w-5" />
        </div>
        <Badge variant={inProgress ? "default" : readThrough ? "success" : "secondary"}>
          {inProgress
            ? `${bestPercent}% read`
            : readThrough
              ? "Read through"
              : document.accessStatus === "free_preview"
                ? "Free"
                : "Ready"}
        </Badge>
      </div>
      <h3 className="mt-4 line-clamp-2 text-sm font-medium leading-snug group-hover:text-accent">
        {document.title}
      </h3>
      <p className="mt-2 text-xs text-muted-foreground">
        {series ? `${series} · ` : ""}Protected structural paper
      </p>
      {bestPercent > 0 && (
        <div className="mt-3 h-1.5 overflow-hidden rounded-full bg-secondary">
          <div
            className="h-full rounded-full bg-accent transition-[width] duration-500"
            style={{ width: `${Math.min(100, bestPercent)}%` }}
          />
        </div>
      )}
    </Link>
  );
}

function SubjectRing({ percent }: { percent: number }) {
  const radius = 15;
  const circumference = 2 * Math.PI * radius;
  const dash = (Math.max(2, percent) / 100) * circumference;
  return (
    <div
      className="relative h-10 w-10"
      role="img"
      aria-label={`${percent}% of papers started`}
      title={`${percent}% of papers started`}
    >
      <svg viewBox="0 0 36 36" className="h-10 w-10 -rotate-90">
        <circle
          cx="18"
          cy="18"
          r={radius}
          fill="none"
          strokeWidth="3"
          className="stroke-secondary"
        />
        {percent > 0 && (
          <circle
            cx="18"
            cy="18"
            r={radius}
            fill="none"
            strokeWidth="3"
            strokeLinecap="round"
            strokeDasharray={`${dash} ${circumference}`}
            className="stroke-accent"
          />
        )}
      </svg>
      <span className="absolute inset-0 grid place-items-center text-[10px] font-semibold text-foreground">
        {percent}%
      </span>
    </div>
  );
}

function LibrarySkeleton() {
  return (
    <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
      <div className="h-9 w-36 animate-pulse rounded bg-secondary" />
      <div className="h-4 w-full max-w-sm animate-pulse rounded bg-secondary" />
      <div className="h-12 animate-pulse rounded-lg border border-border bg-card" />
      <section className="grid gap-3 sm:grid-cols-2 xl:grid-cols-3">
        {Array.from({ length: 6 }).map((_, index) => (
          <div key={index} className="h-36 animate-pulse rounded-xl border border-border bg-card" />
        ))}
      </section>
    </div>
  );
}
