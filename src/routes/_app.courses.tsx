import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { PremiumGate } from "@/components/PremiumGate";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import {
  calculateStructuralMastery,
  formatDuration,
  useStructuralProgress,
} from "@/hooks/use-structural-progress";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";
import { BookOpen, Clock, GraduationCap, ListChecks, PlayCircle, Sparkles } from "lucide-react";
import { useMemo } from "react";

export const Route = createFileRoute("/_app/courses")({
  head: () => ({ meta: [{ title: "Courses — StudySpark" }] }),
  component: CoursesPage,
});

function CoursesPage() {
  const { profile } = useStudyProfile();
  const { documents, loaded, error } = useStudyContent(profile);
  const { progress } = useStructuralProgress();
  const readingProgress = usePaperStudyOverview();

  const bestDepthByDoc = useMemo(() => {
    const map = new Map<string, number>();
    for (const session of readingProgress.sessions) {
      map.set(
        session.documentId,
        Math.max(map.get(session.documentId) ?? 0, session.maxScrollPercent),
      );
    }
    return map;
  }, [readingProgress.sessions]);

  const courses = useMemo(
    () =>
      documents
        .filter((document) => document.contentKind === "course")
        .sort((a, b) => a.subject.localeCompare(b.subject) || a.title.localeCompare(b.title)),
    [documents],
  );

  const mastery = calculateStructuralMastery(progress, documents);

  const courseStats = useMemo(
    () =>
      new Map(
        courses.map((course) => {
          const lessons = [
            ...new Set(
              [...course.markdownContent.matchAll(/^### (.+)$/gm)].map((match) => match[1].trim()),
            ),
          ].filter((heading) => !/^answers?$/i.test(heading));
          const units = [
            ...new Set(
              [...course.markdownContent.matchAll(/^## (.+)$/gm)].map((match) => match[1].trim()),
            ),
          ].filter((heading) => !/^how to use this course$/i.test(heading));
          const words = course.markdownContent.split(/\s+/).length;
          const readingMinutes = Math.max(15, Math.round(words / 200));
          const courseProgress = progress.filter((item) => item.documentId === course.id);
          const passed = courseProgress.filter((item) => item.status === "passed").length;
          const totalTime = courseProgress.reduce(
            (sum, item) => sum + (item.durationSeconds ?? 0),
            0,
          );
          const bestDepth = bestDepthByDoc.get(course.id) ?? 0;
          return [
            course.id,
            {
              lessons: lessons.length,
              units: units.length,
              readingMinutes,
              passed,
              totalTime,
              bestDepth,
            },
          ];
        }),
      ),
    [bestDepthByDoc, courses, progress],
  );

  const inProgress = useMemo(
    () =>
      courses
        .map((course) => ({ course, stats: courseStats.get(course.id)! }))
        .filter(({ stats }) => stats.bestDepth > 0 && stats.bestDepth < 85)
        .sort((a, b) => b.stats.bestDepth - a.stats.bestDepth)[0] ?? null,
    [courses, courseStats],
  );

  return (
    <>
      <PageHeader
        title="Courses"
        description="Complete subject courses with lessons, worked examples, and exam technique — built for your class and series."
      />
      <div className="px-4 py-6 md:px-10 md:py-8">
        {error && (
          <div className="mb-5 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Study content could not be loaded: {error}
          </div>
        )}

        <PremiumGate
          title="Premium courses"
          description="Upgrade to access full subject courses, lesson sequences, and guided revision."
        >
          {loaded && courses.length === 0 ? (
            <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
              <GraduationCap className="mx-auto h-10 w-10 text-muted-foreground" />
              <h2 className="mt-4 text-base font-medium">No courses for your profile yet</h2>
              <p className="mx-auto mt-1 max-w-md text-sm text-muted-foreground">
                Complete subject courses will appear here once they are published for your class,
                series, and subjects. Check back soon, or keep practising with papers in the
                meantime.
              </p>
              <Button asChild className="mt-5">
                <Link to="/library">Open papers</Link>
              </Button>
            </div>
          ) : (
            <div className="space-y-6">
              {inProgress && (
                <section className="rounded-xl border border-accent/30 bg-gradient-to-br from-accent/15 via-accent/5 to-transparent p-5">
                  <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
                    <div className="min-w-0">
                      <div className="flex items-center gap-2 text-xs text-accent">
                        <PlayCircle className="h-3.5 w-3.5" />
                        Continue learning
                      </div>
                      <h2 className="mt-1.5 break-words text-lg font-medium leading-snug">
                        {inProgress.course.title}
                      </h2>
                      <p className="mt-1 text-xs text-muted-foreground">
                        {inProgress.stats.bestDepth}% read · {inProgress.stats.lessons} lessons ·{" "}
                        {formatDuration(inProgress.stats.totalTime)} studied
                      </p>
                      <div className="mt-3 h-1.5 max-w-sm overflow-hidden rounded-full bg-secondary">
                        <div
                          className="h-full rounded-full bg-accent transition-[width] duration-500"
                          style={{ width: `${Math.min(100, inProgress.stats.bestDepth)}%` }}
                        />
                      </div>
                    </div>
                    <Button asChild size="sm" className="shrink-0">
                      <Link to="/course/$documentId" params={{ documentId: inProgress.course.id }}>
                        Continue course
                      </Link>
                    </Button>
                  </div>
                </section>
              )}

              <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-3">
                {courses.map((course) => {
                  const stats = courseStats.get(course.id)!;
                  const subjectMastery =
                    mastery.find((item) => item.subject === course.subject)?.mastery ?? 0;

                  return (
                    <article
                      key={course.id}
                      className="flex flex-col rounded-xl border border-border bg-card p-5"
                    >
                      <div className="flex items-start justify-between gap-3">
                        <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary">
                          <BookOpen className="h-5 w-5" />
                        </div>
                        <Badge variant="secondary">{subjectMastery}% mastery</Badge>
                      </div>
                      <h2 className="mt-4 text-base font-medium leading-snug">{course.title}</h2>
                      <p className="mt-1 text-xs text-muted-foreground">
                        {course.subject} · {classLevelText(course.classLevels)} ·{" "}
                        {course.language === "french" ? "Français" : "English"}
                      </p>

                      {stats.units > 0 && (
                        <div className="mt-3 space-y-1">
                          {unitsOf(course)
                            .slice(0, 3)
                            .map((unit) => (
                              <div
                                key={unit}
                                className="flex items-center gap-2 text-xs text-muted-foreground"
                              >
                                <ListChecks className="h-3 w-3 shrink-0" />
                                <span className="truncate">{unit}</span>
                              </div>
                            ))}
                          {stats.units > 3 && (
                            <p className="text-xs text-muted-foreground">
                              +{stats.units - 3} more units
                            </p>
                          )}
                        </div>
                      )}

                      <div className="mt-4 grid grid-cols-3 gap-2 text-xs">
                        <CourseMetric
                          icon={ListChecks}
                          label="Lessons"
                          value={String(stats.lessons)}
                        />
                        <CourseMetric
                          icon={Clock}
                          label="Read time"
                          value={`${stats.readingMinutes} min`}
                        />
                        <CourseMetric
                          icon={BookOpen}
                          label="Studied"
                          value={formatDuration(stats.totalTime)}
                        />
                      </div>

                      {stats.bestDepth > 0 && (
                        <div className="mt-3">
                          <div className="flex items-center justify-between text-[11px] text-muted-foreground">
                            <span>Course progress</span>
                            <span>{stats.bestDepth}%</span>
                          </div>
                          <div className="mt-1 h-1.5 overflow-hidden rounded-full bg-secondary">
                            <div
                              className="h-full rounded-full bg-accent transition-[width] duration-500"
                              style={{ width: `${Math.min(100, stats.bestDepth)}%` }}
                            />
                          </div>
                        </div>
                      )}

                      <div className="mt-auto pt-4">
                        <Button asChild className="w-full" size="sm">
                          <Link to="/course/$documentId" params={{ documentId: course.id }}>
                            {stats.bestDepth > 0 ? "Continue course" : "Start course"}
                          </Link>
                        </Button>
                        {stats.passed > 0 && (
                          <p className="mt-2 text-center text-xs text-muted-foreground">
                            {stats.passed} question{stats.passed === 1 ? "" : "s"} passed in this
                            course
                          </p>
                        )}
                      </div>
                    </article>
                  );
                })}
              </div>
            </div>
          )}
        </PremiumGate>
      </div>
    </>
  );
}

function unitsOf(course: { markdownContent: string }) {
  return [
    ...new Set([...course.markdownContent.matchAll(/^## (.+)$/gm)].map((match) => match[1].trim())),
  ].filter((heading) => !/^how to use this course$/i.test(heading));
}

function classLevelText(classLevels: string[]) {
  const labels: Record<string, string> = {
    form_3: "Form 3",
    form_4: "Form 4",
    form_5: "Form 5",
    lower_sixth: "Lower Sixth",
    upper_sixth: "Upper Sixth",
  };
  return classLevels.map((level) => labels[level] ?? level).join(", ");
}

function CourseMetric({
  icon: Icon,
  label,
  value,
}: {
  icon: typeof BookOpen;
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
