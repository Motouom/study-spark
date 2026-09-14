import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { ArrowLeft, BookOpen, Lock, Sparkles } from "lucide-react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import { useContentProtection } from "@/hooks/use-content-protection";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { supabaseConfigured } from "@/lib/supabase";
import { lazy, Suspense } from "react";

const ProtectedMarkdown = lazy(() => import("@/components/ProtectedMarkdown"));

export const Route = createFileRoute("/_app/course/$documentId")({
  head: () => ({ meta: [{ title: "Course document — StudySpark" }] }),
  component: CourseDocumentPage,
});

function CourseDocumentPage() {
  const { documentId } = Route.useParams();
  const { profile, loaded: profileLoaded } = useStudyProfile();
  const { user } = useSupabaseUser();
  const content = useStudyContent(profile);
  const document = content.documents.find((item) => item.id === documentId);
  const pageLoading =
    supabaseConfigured() && (!profileLoaded || !content.loaded || content.loading);
  useContentProtection(Boolean(document), document?.id);

  if (pageLoading) {
    return <CourseDocumentSkeleton />;
  }

  return (
    <>
      <PageHeader
        title={document?.title ?? "Course document"}
        description="Protected in-app study material"
      >
        <Button asChild variant="outline" size="sm">
          <Link to="/library">
            <ArrowLeft className="mr-1.5 h-4 w-4" />
            My topics
          </Link>
        </Button>
      </PageHeader>

      <div className="px-4 py-5 sm:px-6 md:px-10 md:py-8">
        {content.error && (
          <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Document could not be loaded: {content.error}
          </div>
        )}

        {content.loading && (
          <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
            Loading protected document...
          </div>
        )}

        {!content.loading && !document && (
          <div className="rounded-xl border border-border bg-card p-8 text-center">
            <BookOpen className="mx-auto h-8 w-8 text-muted-foreground" />
            <h2 className="mt-4 text-base font-medium">Document unavailable</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              This document is not published or does not match your current class, series, language,
              and subjects.
            </p>
          </div>
        )}

        {document &&
          (document.isLocked ? (
            <div className="mx-auto max-w-xl rounded-xl border border-border bg-card p-8 text-center">
              <div className="mx-auto flex h-12 w-12 items-center justify-center rounded-full bg-secondary">
                <Lock className="h-5 w-5" />
              </div>
              <h2 className="mt-4 font-display text-2xl">Premium paper</h2>
              <p className="mt-2 text-sm text-muted-foreground">
                This paper matches your class, series, and subjects, but it is locked on the Free
                plan. Free learners can open only the first preview papers.
              </p>
              <div className="mt-5 flex justify-center gap-2">
                <Button asChild>
                  <Link to="/pricing">
                    <Sparkles className="mr-1.5 h-4 w-4" />
                    Upgrade to Premium
                  </Link>
                </Button>
                <Button asChild variant="outline">
                  <Link to="/library">Back to papers</Link>
                </Button>
              </div>
            </div>
          ) : (
            <div className="min-w-0">
              <Suspense
                fallback={
                  <div className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
                    Preparing protected paper...
                  </div>
                }
              >
                <ProtectedMarkdown
                  document={document}
                  owner={profile?.name ?? user?.email ?? "StudySpark"}
                  userId={user?.id ?? "anonymous"}
                />
              </Suspense>
            </div>
          ))}
      </div>
    </>
  );
}

function CourseDocumentSkeleton() {
  return (
    <div className="space-y-6 px-4 py-5 sm:px-6 md:px-10 md:py-8">
      <div className="h-10 w-full max-w-2xl animate-pulse rounded bg-secondary" />
      <div className="h-5 w-60 animate-pulse rounded bg-secondary" />
      <div className="h-11 w-32 animate-pulse rounded-md bg-secondary" />
      <div className="space-y-4 rounded-xl border border-border bg-card p-5">
        <div className="h-6 w-3/4 animate-pulse rounded bg-secondary" />
        <div className="h-4 w-full animate-pulse rounded bg-secondary" />
        <div className="h-4 w-full animate-pulse rounded bg-secondary" />
        <div className="h-4 w-5/6 animate-pulse rounded bg-secondary" />
        <div className="h-56 animate-pulse rounded bg-secondary" />
      </div>
    </div>
  );
}
