import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { PremiumGate } from "@/components/PremiumGate";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import {
  calculateStructuralMastery,
  countStructuralQuestions,
  formatDuration,
  useStructuralProgress,
} from "@/hooks/use-structural-progress";
import { BookOpen, CheckCircle2, Clock, FileText, PlayCircle } from "lucide-react";

export const Route = createFileRoute("/_app/courses")({
  head: () => ({ meta: [{ title: "Courses — StudySpark" }] }),
  component: CoursesPage,
});

function CoursesPage() {
  const { profile } = useStudyProfile();
  const { documents } = useStudyContent(profile);
  const { progress } = useStructuralProgress();
  const subjects = [...new Set(documents.map((document) => document.subject))].sort();
  const mastery = calculateStructuralMastery(progress, documents);

  return (
    <>
      <PageHeader
        title="Courses"
        description="Premium course tracks organized by subject, paper coverage, and revision progress."
      />
      <div className="px-4 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium courses"
          description="Upgrade to access full subject courses, lesson sequences, and video-supported revision."
        >
          <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-3">
            {subjects.map((subject) => {
              const papers = documents.filter((document) => document.subject === subject);
              const subjectProgress = progress.filter((item) =>
                papers.some((paper) => paper.id === item.documentId),
              );
              const passed = subjectProgress.filter((item) => item.status === "passed").length;
              const totalQuestions = papers.reduce(
                (sum, paper) => sum + countStructuralQuestions(paper.markdownContent),
                0,
              );
              const subjectMastery = mastery.find((item) => item.subject === subject)?.mastery ?? 0;
              const totalTime = subjectProgress.reduce(
                (sum, item) => sum + (item.durationSeconds ?? 0),
                0,
              );
              return (
                <article key={subject} className="rounded-xl border border-border bg-card p-5">
                  <div className="flex items-start justify-between gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary">
                      <PlayCircle className="h-5 w-5" />
                    </div>
                    <Badge variant="secondary">{subjectMastery}% mastery</Badge>
                  </div>
                  <h2 className="mt-4 min-w-0 truncate text-base font-medium">{subject}</h2>
                  <p className="mt-1 text-sm text-muted-foreground">
                    Structured paper track, revision milestones, and guided structural practice.
                  </p>
                  <div className="mt-4 grid grid-cols-2 gap-2 text-xs">
                    <CourseMetric icon={FileText} label="Papers" value={String(papers.length)} />
                    <CourseMetric
                      icon={BookOpen}
                      label="Questions"
                      value={String(totalQuestions)}
                    />
                    <CourseMetric icon={CheckCircle2} label="Passed" value={String(passed)} />
                    <CourseMetric icon={Clock} label="Time" value={formatDuration(totalTime)} />
                  </div>
                  <div className="mt-4 space-y-2">
                    {papers.slice(0, 3).map((paper) => (
                      <Link
                        key={paper.id}
                        to="/course/$documentId"
                        params={{ documentId: paper.id }}
                        className="flex items-center justify-between rounded-lg border border-border px-3 py-2 text-xs hover:bg-secondary/40"
                      >
                        <span className="truncate">{paper.title}</span>
                        <span className="ml-3 shrink-0 text-muted-foreground">
                          {countStructuralQuestions(paper.markdownContent)} Qs
                        </span>
                      </Link>
                    ))}
                  </div>
                  <Button asChild className="mt-5 w-full" size="sm">
                    <Link to="/library">Open papers</Link>
                  </Button>
                </article>
              );
            })}
          </div>
        </PremiumGate>
      </div>
    </>
  );
}

function CourseMetric({
  icon: Icon,
  label,
  value,
}: {
  icon: typeof FileText;
  label: string;
  value: string;
}) {
  return (
    <div className="rounded-lg bg-secondary/40 p-3">
      <div className="flex items-center gap-1.5 text-muted-foreground">
        <Icon className="h-3.5 w-3.5" />
        {label}
      </div>
      <div className="mt-1 font-medium">{value}</div>
    </div>
  );
}
