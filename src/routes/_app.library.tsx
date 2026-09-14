import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { SUBJECTS, type Subject, classLabel, seriesLabel } from "@/lib/study-reference-data";
import { getStudentLibrary } from "@/lib/server-api";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { ArrowLeft, BookOpen, FileText, Lock, Search, ShieldCheck, Sparkles } from "lucide-react";
import { useMemo, useState } from "react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import { supabaseConfigured } from "@/lib/supabase";

export const Route = createFileRoute("/_app/library")({
  head: () => ({ meta: [{ title: "Papers — StudySpark" }] }),
  loader: async () => {
    return getStudentLibrary();
  },
  component: LibraryPage,
});

function LibraryPage() {
  const { profile, subjects } = Route.useLoaderData();
  const { profile: savedProfile } = useStudyProfile();
  const effectiveProfile = savedProfile ?? profile;
  const content = useStudyContent(savedProfile);
  const courseDocuments = content.documents;
  const useRemoteOnly = supabaseConfigured();
  const effectiveSubjects = savedProfile
    ? content.enabled
      ? Array.from(
          new Set([...content.subjects, ...courseDocuments.map((document) => document.subject)]),
        )
      : SUBJECTS.filter((item) => courseDocuments.some((document) => document.subject === item))
    : subjects;
  const [q, setQ] = useState("");
  const [subject, setSubject] = useState<Subject | null>(null);

  const subjectCards = useMemo(
    () =>
      effectiveSubjects.map((item) => {
        const documents = courseDocuments.filter((document) => document.subject === item);
        const unlocked = documents.filter((document) => !document.isLocked).length;

        return {
          name: item,
          total: documents.length,
          unlocked,
        };
      }),
    [courseDocuments, effectiveSubjects],
  );

  const filteredDocuments = useMemo(() => {
    const needle = q.trim().toLowerCase();
    return courseDocuments.filter((document) => {
      if (!subject || document.subject !== subject) return false;
      if (!needle) return true;
      return [document.title, document.subject].join(" ").toLowerCase().includes(needle);
    });
  }, [courseDocuments, q, subject]);

  return (
    <>
      <PageHeader
        title="Papers"
        description={`${classLabel(effectiveProfile.classLevel)} · ${seriesLabel(effectiveProfile.series)} · ${effectiveProfile.language}`}
      />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        {content.error && (
          <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Study content could not be loaded: {content.error}
          </div>
        )}
        {useRemoteOnly && content.loading && (
          <div className="rounded-lg border border-border bg-card p-3 text-sm text-muted-foreground">
            Loading your papers...
          </div>
        )}

        <div className="flex items-center gap-2 rounded-lg border border-success/30 bg-success/10 p-3 text-sm text-success">
          <ShieldCheck className="h-4 w-4" />
          Questions are opened inside the app only. Copying, downloads, and bulk viewing are
          disabled in the student flow.
        </div>

        {!subject ? (
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
                  onClick={() => {
                    setSubject(item.name);
                    setQ("");
                  }}
                  className="rounded-xl border border-border bg-card p-5 text-left transition-shadow hover:shadow-card"
                >
                  <div className="flex items-start justify-between gap-3">
                    <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary text-foreground">
                      <BookOpen className="h-5 w-5" />
                    </div>
                    <Badge variant="secondary">{item.total}</Badge>
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
                <Button
                  type="button"
                  variant="ghost"
                  size="sm"
                  onClick={() => {
                    setSubject(null);
                    setQ("");
                  }}
                >
                  <ArrowLeft className="mr-1.5 h-4 w-4" />
                  Subjects
                </Button>
                <Badge variant="secondary">{filteredDocuments.length}</Badge>
              </div>
              <div className="relative">
                <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
                <Input
                  value={q}
                  onChange={(e) => setQ(e.target.value)}
                  placeholder={`Search ${subject} papers...`}
                  className="h-11 pl-9"
                />
              </div>
            </div>
            <div className="grid gap-3 md:grid-cols-2">
              {filteredDocuments.map((document) =>
                document.isLocked ? (
                  <article
                    key={document.id}
                    className="rounded-xl border border-border bg-card p-4 opacity-90"
                  >
                    <div className="flex items-start justify-between gap-3">
                      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary text-foreground">
                        <Lock className="h-5 w-5" />
                      </div>
                      <Badge variant="outline">Premium</Badge>
                    </div>
                    <h3 className="mt-4 line-clamp-2 text-sm font-medium leading-snug">
                      {document.title}
                    </h3>
                    <p className="mt-2 text-xs text-muted-foreground">
                      This paper matches your profile and unlocks with Premium.
                    </p>
                    <Button asChild size="sm" className="mt-4">
                      <Link to="/pricing">
                        <Sparkles className="mr-1.5 h-4 w-4" />
                        Unlock
                      </Link>
                    </Button>
                  </article>
                ) : (
                  <Link
                    key={document.id}
                    to="/course/$documentId"
                    params={{ documentId: document.id }}
                    className="group rounded-xl border border-border bg-card p-4 transition-shadow hover:shadow-card"
                  >
                    <div className="flex items-start justify-between gap-3">
                      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary text-foreground">
                        <FileText className="h-5 w-5" />
                      </div>
                      <Badge variant="secondary">
                        {document.accessStatus === "free_preview" ? "Free" : document.subject}
                      </Badge>
                    </div>
                    <h3 className="mt-4 line-clamp-2 text-sm font-medium leading-snug group-hover:text-accent">
                      {document.title}
                    </h3>
                    <p className="mt-2 text-xs text-muted-foreground">Protected structural paper</p>
                  </Link>
                ),
              )}
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
