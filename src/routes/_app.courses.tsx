import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { PremiumGate } from "@/components/PremiumGate";
import { useStudyContent } from "@/hooks/use-study-content";
import type { CourseDocument } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import {
  calculateStructuralMastery,
  formatDuration,
  useStructuralProgress,
} from "@/hooks/use-structural-progress";
import { usePaperStudyOverview } from "@/hooks/use-paper-study-progress";
import { slugifyHeading } from "@/components/ProtectedMarkdown";
import {
  ArrowLeft,
  BookOpen,
  Clock,
  GraduationCap,
  ListChecks,
  PlayCircle,
  Search,
  Sparkles,
  X,
} from "lucide-react";
import { useMemo, useState } from "react";

export const Route = createFileRoute("/_app/courses")({
  head: () => ({ meta: [{ title: "Courses — StudySpark" }] }),
  component: CoursesPage,
});

function CoursesPage() {
  const { profile } = useStudyProfile();
  const { documents, loaded, error } = useStudyContent(profile);
  const { progress } = useStructuralProgress();
  const readingProgress = usePaperStudyOverview();
  const [subject, setSubject] = useState<string | null>(null);
  const [q, setQ] = useState("");

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

  const topics = useMemo(
    () =>
      courses.flatMap((course) =>
        unitsOf(course).map((topic, index) => ({
          id: `${course.id}:${slugifyHeading(topic)}`,
          title: topic,
          index,
          course,
          stats: courseStats.get(course.id)!,
          href: `/course/${course.id}#${slugifyHeading(topic)}`,
        })),
      ),
    [courses, courseStats],
  );

  const subjectCards = useMemo(
    () =>
      [...new Set(courses.map((course) => course.subject))]
        .map((name) => {
          const subjectCourses = courses.filter((course) => course.subject === name);
          const subjectTopics = topics.filter((topic) => topic.course.subject === name);
          const bestDepth = Math.max(
            0,
            ...subjectCourses.map((course) => courseStats.get(course.id)?.bestDepth ?? 0),
          );
          const subjectMastery = mastery.find((item) => item.subject === name)?.mastery ?? 0;
          return {
            name,
            courses: subjectCourses.length,
            topics: subjectTopics.length,
            bestDepth,
            subjectMastery,
          };
        })
        .sort((a, b) => b.topics - a.topics || a.name.localeCompare(b.name)),
    [courseStats, courses, mastery, topics],
  );

  const needle = q.trim().toLowerCase();
  const searchActive = needle.length > 0;
  const filteredTopics = useMemo(
    () =>
      topics
        .filter((topic) => {
          if (!searchActive && subject && topic.course.subject !== subject) return false;
          if (!needle) return true;
          return [
            topic.title,
            topic.course.title,
            topic.course.subject,
            topic.course.language,
            ...topic.course.series,
          ]
            .join(" ")
            .toLowerCase()
            .includes(needle);
        })
        .sort(
          (a, b) =>
            a.course.subject.localeCompare(b.course.subject) ||
            a.course.title.localeCompare(b.course.title) ||
            a.index - b.index,
        ),
    [needle, searchActive, subject, topics],
  );

  const clearSearch = () => setQ("");

  return (
    <>
      <PageHeader
        title="Courses"
        description="Topic-by-topic GCE lessons with worked examples and exam technique — built for your class and series."
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
          {loaded && topics.length === 0 ? (
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

              <SearchBox
                value={q}
                onChange={setQ}
                onClear={clearSearch}
                placeholder="Search course topics, subject, or lesson..."
                label="Search course topics"
              />

              {searchActive ? (
                <TopicResults topics={filteredTopics} query={q} onClear={clearSearch} />
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
                          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary">
                            <BookOpen className="h-5 w-5" />
                          </div>
                          <Badge variant="secondary">{item.subjectMastery}% mastery</Badge>
                        </div>
                        <h3 className="mt-4 text-base font-medium leading-snug">{item.name}</h3>
                        <p className="mt-2 text-xs text-muted-foreground">
                          {item.topics} topics · {item.courses} course
                          {item.courses === 1 ? "" : "s"}
                        </p>
                        {item.bestDepth > 0 && (
                          <div className="mt-3 h-1.5 overflow-hidden rounded-full bg-secondary">
                            <div
                              className="h-full rounded-full bg-accent transition-[width] duration-500"
                              style={{ width: `${Math.min(100, item.bestDepth)}%` }}
                            />
                          </div>
                        )}
                      </button>
                    ))}
                  </div>
                </section>
              ) : filteredTopics.length > 0 ? (
                <section className="space-y-3">
                  <div className="flex flex-col gap-3 rounded-xl border border-border bg-card p-4">
                    <div className="flex items-center justify-between gap-3">
                      <Button
                        type="button"
                        variant="ghost"
                        size="sm"
                        onClick={() => setSubject(null)}
                      >
                        <ArrowLeft className="mr-1.5 h-4 w-4" />
                        Subjects
                      </Button>
                      <Badge variant="secondary">{filteredTopics.length} topics</Badge>
                    </div>
                    <h2 className="text-lg font-medium">{subject}</h2>
                  </div>
                  <div className="grid gap-3 md:grid-cols-2">
                    {filteredTopics.map((topic) => (
                      <TopicCard key={topic.id} topic={topic} />
                    ))}
                  </div>
                </section>
              ) : (
                <EmptyFiltered onClear={() => setSubject(null)} label="No topics match this subject." />
              )}
            </div>
          )}
        </PremiumGate>
      </div>
    </>
  );
}

type CourseTopic = {
  id: string;
  title: string;
  index: number;
  href: string;
  course: CourseDocument;
  stats: {
    lessons: number;
    units: number;
    readingMinutes: number;
    passed: number;
    totalTime: number;
    bestDepth: number;
  };
};

function SearchBox({
  value,
  onChange,
  onClear,
  placeholder,
  label,
}: {
  value: string;
  onChange: (value: string) => void;
  onClear: () => void;
  placeholder: string;
  label: string;
}) {
  const active = value.trim().length > 0;
  return (
    <div className="relative">
      <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
      <Input
        value={value}
        onChange={(event) => onChange(event.target.value)}
        placeholder={placeholder}
        className="h-11 pl-9 pr-10"
        aria-label={label}
      />
      {active && (
        <button
          type="button"
          onClick={onClear}
          aria-label="Clear search"
          className="absolute right-3 top-1/2 -translate-y-1/2 rounded p-1 text-muted-foreground transition-colors hover:text-foreground"
        >
          <X className="h-4 w-4" />
        </button>
      )}
    </div>
  );
}

function TopicResults({
  topics,
  query,
  onClear,
}: {
  topics: CourseTopic[];
  query: string;
  onClear: () => void;
}) {
  if (topics.length === 0) {
    return <EmptyFiltered onClear={onClear} label={`No course topics match “${query}”.`} />;
  }
  return (
    <section className="space-y-3">
      <div className="flex items-center justify-between">
        <h2 className="text-sm font-medium">Search results</h2>
        <Badge variant="secondary">{topics.length}</Badge>
      </div>
      <div className="grid gap-3 md:grid-cols-2">
        {topics.map((topic) => (
          <TopicCard key={topic.id} topic={topic} />
        ))}
      </div>
    </section>
  );
}

function TopicCard({ topic }: { topic: CourseTopic }) {
  return (
    <a
      href={topic.href}
      className="group rounded-xl border border-border bg-card p-4 transition-shadow hover:shadow-card"
    >
      <div className="flex items-start justify-between gap-3">
        <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary">
          <ListChecks className="h-5 w-5" />
        </div>
        <Badge variant={topic.stats.bestDepth > 0 ? "default" : "secondary"}>
          {topic.stats.bestDepth > 0 ? `${topic.stats.bestDepth}% read` : "Topic"}
        </Badge>
      </div>
      <h3 className="mt-4 line-clamp-2 text-sm font-medium leading-snug group-hover:text-accent">
        {topic.title}
      </h3>
      <p className="mt-2 text-xs text-muted-foreground">
        {topic.course.subject} · {classLevelText(topic.course.classLevels)} ·{" "}
        {topic.course.language === "french" ? "Français" : "English"}
      </p>
      <div className="mt-3 grid grid-cols-2 gap-2 text-xs">
        <CourseMetric icon={Clock} label="Course time" value={`${topic.stats.readingMinutes} min`} />
        <CourseMetric icon={BookOpen} label="Studied" value={formatDuration(topic.stats.totalTime)} />
      </div>
    </a>
  );
}

function EmptyFiltered({ label, onClear }: { label: string; onClear: () => void }) {
  return (
    <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
      <p className="text-sm text-muted-foreground">{label}</p>
      <Button variant="outline" size="sm" className="mt-4" onClick={onClear}>
        Clear filters
      </Button>
    </div>
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
