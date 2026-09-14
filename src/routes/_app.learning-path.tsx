import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { PremiumGate } from "@/components/PremiumGate";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import {
  calculateStructuralMastery,
  countStructuralQuestions,
  useStructuralProgress,
} from "@/hooks/use-structural-progress";
import { ArrowRight, Brain, Clock, FileText, Target, TrendingUp } from "lucide-react";
import { useAiActions } from "@/hooks/use-ai-actions";
import type { AiLearningPathDay } from "@/hooks/use-ai-actions";
import { useState } from "react";

export const Route = createFileRoute("/_app/learning-path")({
  head: () => ({ meta: [{ title: "Learning path — StudySpark" }] }),
  component: LearningPathPage,
});

function LearningPathPage() {
  const { profile } = useStudyProfile();
  const content = useStudyContent(profile);
  const { progress } = useStructuralProgress();
  const ai = useAiActions();
  const [aiPath, setAiPath] = useState<{
    days: AiLearningPathDay[];
    source: "ai" | "fallback";
  } | null>(null);
  const mastery = calculateStructuralMastery(progress, content.documents);
  const weakest = [...mastery].sort((a, b) => a.mastery - b.mastery).slice(0, 4);
  const startedIds = new Set(progress.map((item) => item.documentId));
  const unfinishedStarted = content.documents
    .filter((document) => startedIds.has(document.id))
    .map((document) => {
      const marks = progress.filter((item) => item.documentId === document.id);
      const passed = marks.filter((item) => item.status === "passed").length;
      const failed = marks.filter((item) => item.status === "failed").length;
      const started = marks.filter((item) => item.status === "started").length;
      const totalQuestions = Math.max(countStructuralQuestions(document.markdownContent), marks.length);
      return {
        document,
        marks,
        passed,
        failed,
        started,
        totalQuestions,
        completion: totalQuestions > 0 ? Math.round((marks.length / totalQuestions) * 100) : 0,
      };
    })
    .filter((item) => item.completion < 100 || item.started > 0 || item.failed > 0)
    .sort((a, b) => b.started + b.failed - (a.started + a.failed))
    .slice(0, 3);
  const nextPapers = content.documents
    .filter((document) => !document.isLocked && !startedIds.has(document.id))
    .slice(0, 4);
  const weeklyTarget = Math.max(12, Math.min(40, (profile?.subjects.length ?? 1) * 8));
  const markedThisWeek = progress.filter((item) => {
    const updated = new Date(item.updatedAt);
    const start = new Date();
    start.setDate(start.getDate() - 6);
    start.setHours(0, 0, 0, 0);
    return updated >= start;
  }).length;
  const weeklyPercent = Math.min(100, Math.round((markedThisWeek / weeklyTarget) * 100));

  return (
    <>
      <PageHeader
        title="Learning path"
        description="A focused revision route generated from your structural paper activity."
      />
      <div className="px-6 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium learning path"
          description="Upgrade to get prioritized papers, weak-area guidance, and a structured revision order."
        >
          <div className="grid gap-5 lg:grid-cols-[1fr_22rem]">
            <section className="space-y-5">
              <div className="rounded-xl border border-border bg-card p-5">
                <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
                  <div>
                    <div className="flex items-center gap-2">
                      <Brain className="h-5 w-5" />
                      <h2 className="text-base font-medium">AI learning path</h2>
                    </div>
                    <p className="mt-1 text-sm text-muted-foreground">
                      Build a 7-day plan from your unfinished papers and weak areas.
                    </p>
                  </div>
                  <Button
                    type="button"
                    disabled={ai.loading === "learning-path"}
                    onClick={async () => {
                      try {
                        const result = await ai.generateLearningPath();
                        setAiPath({ days: result.days, source: result.source });
                      } catch {
                        setAiPath(null);
                      }
                    }}
                  >
                    <Brain className="mr-1.5 h-4 w-4" />
                    {ai.loading === "learning-path" ? "Generating..." : "Generate path"}
                  </Button>
                </div>
                {ai.error && (
                  <p className="mt-3 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
                    {ai.error}
                  </p>
                )}
                {aiPath && (
                  <div className="mt-4 rounded-lg border border-border bg-secondary/20 p-3">
                    <div className="mb-3 flex items-center justify-between gap-3">
                      <div className="text-xs uppercase tracking-wider text-muted-foreground">
                        {aiPath.source === "ai" ? "AI generated" : "Local fallback"}
                      </div>
                      <Badge variant="secondary">7 days</Badge>
                    </div>
                    <div className="grid gap-3 md:grid-cols-2">
                      {aiPath.days.map((day) => (
                        <div key={day.day} className="rounded-lg border border-border bg-card p-4">
                          <div className="flex items-start gap-3">
                            <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-foreground font-display text-background">
                              {day.day}
                            </div>
                            <div className="min-w-0">
                              <h3 className="text-sm font-medium">{day.title}</h3>
                              <p className="mt-1 line-clamp-2 text-xs text-muted-foreground">
                                {day.paper}
                              </p>
                            </div>
                          </div>
                          <div className="mt-4 grid gap-2 text-xs">
                            <div className="rounded-md bg-secondary/50 px-3 py-2">
                              <span className="font-medium">Target: </span>
                              <span className="text-muted-foreground">{day.target}</span>
                            </div>
                            <div className="rounded-md bg-secondary/50 px-3 py-2">
                              <span className="font-medium">Focus: </span>
                              <span className="text-muted-foreground">{day.focus}</span>
                            </div>
                          </div>
                        </div>
                      ))}
                    </div>
                  </div>
                )}
              </div>

              <div className="grid gap-3 md:grid-cols-3">
                <div className="rounded-xl border border-border bg-card p-4">
                  <div className="flex items-center gap-2 text-xs text-muted-foreground">
                    <Target className="h-4 w-4" /> Weekly target
                  </div>
                  <div className="mt-2 font-display text-3xl">{weeklyPercent}%</div>
                  <p className="mt-1 text-xs text-muted-foreground">
                    {markedThisWeek} of {weeklyTarget} question marks
                  </p>
                </div>
                <div className="rounded-xl border border-border bg-card p-4">
                  <div className="flex items-center gap-2 text-xs text-muted-foreground">
                    <FileText className="h-4 w-4" /> Active papers
                  </div>
                  <div className="mt-2 font-display text-3xl">{unfinishedStarted.length}</div>
                  <p className="mt-1 text-xs text-muted-foreground">papers to continue</p>
                </div>
                <div className="rounded-xl border border-border bg-card p-4">
                  <div className="flex items-center gap-2 text-xs text-muted-foreground">
                    <TrendingUp className="h-4 w-4" /> Focus subjects
                  </div>
                  <div className="mt-2 font-display text-3xl">{weakest.length}</div>
                  <p className="mt-1 text-xs text-muted-foreground">ranked by mastery</p>
                </div>
              </div>

              {unfinishedStarted.length > 0 && (
                <div className="rounded-xl border border-border bg-card p-5">
                  <div className="flex items-center gap-2">
                    <Clock className="h-5 w-5" />
                    <h2 className="text-base font-medium">Continue first</h2>
                  </div>
                  <div className="mt-4 space-y-3">
                    {unfinishedStarted.map((item) => (
                      <Link
                        key={item.document.id}
                        to="/course/$documentId"
                        params={{ documentId: item.document.id }}
                        className="block rounded-lg border border-border p-4 hover:bg-secondary/40"
                      >
                        <div className="flex items-start justify-between gap-3">
                          <div>
                            <div className="text-sm font-medium">{item.document.title}</div>
                            <p className="mt-1 text-xs text-muted-foreground">
                              {item.passed} passed · {item.failed} failed · {item.started} in progress
                            </p>
                          </div>
                          <Badge variant="secondary">{item.completion}% done</Badge>
                        </div>
                      </Link>
                    ))}
                  </div>
                </div>
              )}

              <div className="rounded-xl border border-border bg-card p-5">
              <div className="flex items-center gap-2">
                <Brain className="h-5 w-5" />
                <h2 className="text-base font-medium">Recommended next papers</h2>
              </div>
              <div className="mt-4 space-y-3">
                {nextPapers.map((paper, index) => (
                  <Link
                    key={paper.id}
                    to="/course/$documentId"
                    params={{ documentId: paper.id }}
                    className="flex items-center justify-between rounded-lg border border-border p-4 hover:bg-secondary/40"
                  >
                      <div>
                        <Badge variant="secondary">Step {index + 1}</Badge>
                        <div className="mt-2 text-sm font-medium">{paper.title}</div>
                        <p className="mt-1 text-xs text-muted-foreground">
                          {paper.subject} · {countStructuralQuestions(paper.markdownContent)} questions
                        </p>
                      </div>
                      <ArrowRight className="h-4 w-4" />
                  </Link>
                ))}
                {nextPapers.length === 0 && (
                  <p className="rounded-lg border border-dashed border-border p-8 text-center text-sm text-muted-foreground">
                    No new unlocked papers match your current profile.
                  </p>
                )}
              </div>
              </div>
            </section>
            <aside className="rounded-xl border border-border bg-card p-5">
              <div className="flex items-center gap-2">
                <Target className="h-5 w-5" />
                <h2 className="text-base font-medium">Weak areas</h2>
              </div>
              <div className="mt-4 space-y-3">
                {weakest.map((item) => (
                  <div key={item.subject} className="rounded-lg bg-secondary/40 p-3">
                    <div className="flex items-center justify-between text-sm">
                      <span className="font-medium">{item.subject}</span>
                      <span>{item.mastery}%</span>
                    </div>
                    <p className="mt-1 text-xs text-muted-foreground">
                      {item.passed} passed · {item.failed} failed · {item.coverage}% coverage
                    </p>
                    <p className="mt-1 text-xs text-muted-foreground">
                      Mastery combines pass rate, coverage, completion, and failed/unfinished work.
                    </p>
                  </div>
                ))}
                {weakest.length === 0 && (
                  <p className="rounded-lg border border-dashed border-border p-4 text-sm text-muted-foreground">
                    Start marking questions and your personalized weak areas will appear here.
                  </p>
                )}
              </div>
              <Button asChild variant="outline" className="mt-4 w-full">
                <Link to="/progress">View detailed progress</Link>
              </Button>
              <div className="mt-5 rounded-lg bg-secondary/40 p-3 text-xs text-muted-foreground">
                Recommended session: solve 3 to 5 structural questions, mark each result honestly,
                then review failed items before opening a fresh paper.
              </div>
            </aside>
          </div>
        </PremiumGate>
      </div>
    </>
  );
}
