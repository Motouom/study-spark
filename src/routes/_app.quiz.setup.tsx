import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { zodValidator, fallback } from "@tanstack/zod-adapter";
import { z } from "zod";
import { PageHeader } from "./_app";
import { SUBJECTS, EXAM_BOARDS, type Subject, type ExamBoard } from "@/lib/mock-data";
import { Button } from "@/components/ui/button";
import { Slider } from "@/components/ui/slider";
import { Switch } from "@/components/ui/switch";
import { Label } from "@/components/ui/label";
import { useState } from "react";
import { ArrowRight, Clock, Target, Zap } from "lucide-react";
import { Badge } from "@/components/ui/badge";

const setupSchema = z.object({
  subject: fallback(z.string().optional(), undefined),
  board: fallback(z.string().optional(), undefined),
});

export const Route = createFileRoute("/_app/quiz/setup")({
  validateSearch: zodValidator(setupSchema),
  head: () => ({ meta: [{ title: "Start a quiz — StudyFlow" }] }),
  component: QuizSetup,
});

function QuizSetup() {
  const search = Route.useSearch();
  const navigate = useNavigate();
  const [subject, setSubject] = useState<Subject | "all">((search.subject as Subject) ?? "all");
  const [board, setBoard] = useState<ExamBoard | "all">((search.board as ExamBoard) ?? "all");
  const [difficulty, setDifficulty] = useState<"easy" | "medium" | "hard">("medium");
  const [count, setCount] = useState(10);
  const [timed, setTimed] = useState(false);

  return (
    <>
      <PageHeader title="Start a quiz" description="Customize your session to match what you want to practice." />

      <div className="px-6 py-6 md:px-10 md:py-8">
        <div className="mx-auto max-w-2xl space-y-6">
          {/* Subject */}
          <div className="rounded-xl border border-border bg-card p-6">
            <h2 className="text-base font-medium">Subject</h2>
            <p className="text-xs text-muted-foreground">Pick a single subject or mix them all.</p>
            <div className="mt-4 flex flex-wrap gap-2">
              <button
                onClick={() => setSubject("all")}
                className={chipCls(subject === "all")}
              >
                All subjects
              </button>
              {SUBJECTS.map((s) => (
                <button key={s} onClick={() => setSubject(s)} className={chipCls(subject === s)}>
                  {s}
                </button>
              ))}
            </div>
          </div>

          {/* Exam board */}
          <div className="rounded-xl border border-border bg-card p-6">
            <h2 className="text-base font-medium">Exam board</h2>
            <div className="mt-4 flex flex-wrap gap-2">
              <button onClick={() => setBoard("all")} className={chipCls(board === "all")}>
                Any
              </button>
              {EXAM_BOARDS.map((b) => (
                <button key={b} onClick={() => setBoard(b)} className={chipCls(board === b)}>
                  {b}
                </button>
              ))}
            </div>
          </div>

          {/* Difficulty */}
          <div className="rounded-xl border border-border bg-card p-6">
            <h2 className="text-base font-medium">Difficulty</h2>
            <div className="mt-4 grid grid-cols-3 gap-2">
              {(["easy", "medium", "hard"] as const).map((d) => (
                <button
                  key={d}
                  onClick={() => setDifficulty(d)}
                  className={`rounded-lg border p-4 text-left text-sm transition-colors ${
                    difficulty === d
                      ? "border-foreground bg-secondary"
                      : "border-border bg-background hover:border-foreground/40"
                  }`}
                >
                  <div className="flex items-center gap-2 font-medium capitalize">
                    {d === "easy" && <Target className="h-4 w-4 text-success" />}
                    {d === "medium" && <Zap className="h-4 w-4 text-accent" />}
                    {d === "hard" && <Zap className="h-4 w-4 text-destructive" />}
                    {d}
                  </div>
                  <p className="mt-1 text-xs text-muted-foreground">
                    {d === "easy" && "Build confidence"}
                    {d === "medium" && "Exam realistic"}
                    {d === "hard" && "Push yourself"}
                  </p>
                </button>
              ))}
            </div>
          </div>

          {/* Question count */}
          <div className="rounded-xl border border-border bg-card p-6">
            <div className="flex items-center justify-between">
              <h2 className="text-base font-medium">Questions</h2>
              <Badge variant="secondary">{count}</Badge>
            </div>
            <Slider
              value={[count]}
              onValueChange={(v) => setCount(v[0])}
              min={5}
              max={30}
              step={5}
              className="mt-5"
            />
            <div className="mt-2 flex justify-between text-xs text-muted-foreground">
              <span>5</span><span>15</span><span>30</span>
            </div>
          </div>

          {/* Timed */}
          <div className="rounded-xl border border-border bg-card p-6">
            <div className="flex items-center justify-between">
              <div>
                <Label className="flex items-center gap-2 text-base font-medium">
                  <Clock className="h-4 w-4" /> Timed mode
                </Label>
                <p className="mt-1 text-xs text-muted-foreground">
                  Simulate exam conditions: 1 minute per question.
                </p>
              </div>
              <Switch checked={timed} onCheckedChange={setTimed} />
            </div>
          </div>

          <div className="flex items-center justify-between gap-3">
            <Button variant="ghost" asChild>
              <Link to="/quiz">Cancel</Link>
            </Button>
            <Button
              size="lg"
              onClick={() =>
                navigate({
                  to: "/quiz",
                  search: { subject, board, difficulty, count, timed },
                })
              }
            >
              Start quiz <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          </div>
        </div>
      </div>
    </>
  );
}

function chipCls(active: boolean) {
  return `rounded-full border px-4 py-1.5 text-sm transition-colors ${
    active
      ? "border-foreground bg-foreground text-background"
      : "border-border bg-background hover:border-foreground/40"
  }`;
}
