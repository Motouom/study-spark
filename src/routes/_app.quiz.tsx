import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { QUIZ_QUESTIONS } from "@/lib/mock-data";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import { Badge } from "@/components/ui/badge";
import { Check, X, ArrowRight, RotateCcw, Trophy } from "lucide-react";
import { useState } from "react";

export const Route = createFileRoute("/_app/quiz")({
  head: () => ({ meta: [{ title: "Quiz mode — StudyFlow" }] }),
  component: QuizPage,
});

function QuizPage() {
  const [idx, setIdx] = useState(0);
  const [selected, setSelected] = useState<number | null>(null);
  const [revealed, setRevealed] = useState(false);
  const [answers, setAnswers] = useState<{ correct: boolean }[]>([]);
  const [done, setDone] = useState(false);

  const q = QUIZ_QUESTIONS[idx];
  const total = QUIZ_QUESTIONS.length;
  const progress = ((idx + (revealed ? 1 : 0)) / total) * 100;

  const score = answers.filter((a) => a.correct).length;

  const submit = () => {
    if (selected === null) return;
    setRevealed(true);
    setAnswers((a) => [...a, { correct: selected === q.correctIndex }]);
  };

  const next = () => {
    if (idx + 1 >= total) {
      setDone(true);
      return;
    }
    setIdx((i) => i + 1);
    setSelected(null);
    setRevealed(false);
  };

  const restart = () => {
    setIdx(0);
    setSelected(null);
    setRevealed(false);
    setAnswers([]);
    setDone(false);
  };

  if (done) {
    const pct = Math.round((score / total) * 100);
    return (
      <>
        <PageHeader title="Quiz complete" />
        <div className="px-6 py-10 md:px-10">
          <div className="mx-auto max-w-xl rounded-2xl border border-border bg-card p-10 text-center">
            <div className="mx-auto flex h-16 w-16 items-center justify-center rounded-full bg-accent/15 text-accent">
              <Trophy className="h-7 w-7" />
            </div>
            <h2 className="mt-6 font-display text-5xl text-foreground">{pct}%</h2>
            <p className="mt-2 text-sm text-muted-foreground">
              You got {score} out of {total} correct.
            </p>

            <div className="mt-8 grid grid-cols-3 gap-3 text-left">
              <div className="rounded-lg border border-border p-4">
                <div className="text-xs text-muted-foreground">Correct</div>
                <div className="mt-1 font-display text-2xl text-success">{score}</div>
              </div>
              <div className="rounded-lg border border-border p-4">
                <div className="text-xs text-muted-foreground">Wrong</div>
                <div className="mt-1 font-display text-2xl text-destructive">{total - score}</div>
              </div>
              <div className="rounded-lg border border-border p-4">
                <div className="text-xs text-muted-foreground">Streak</div>
                <div className="mt-1 font-display text-2xl">+1</div>
              </div>
            </div>

            <div className="mt-8 flex flex-col gap-2 sm:flex-row sm:justify-center">
              <Button onClick={restart} variant="outline">
                <RotateCcw className="mr-1.5 h-4 w-4" />
                Try again
              </Button>
              <Button asChild>
                <Link to="/dashboard">Back to dashboard</Link>
              </Button>
            </div>
          </div>
        </div>
      </>
    );
  }

  return (
    <>
      <PageHeader title="Quiz mode" description="Mixed questions across your subjects." />
      <div className="px-6 py-6 md:px-10 md:py-8">
        <div className="mx-auto max-w-2xl">
          <div className="mb-4 flex items-center justify-between text-xs text-muted-foreground">
            <span>
              Question {idx + 1} of {total}
            </span>
            <span>{score} correct so far</span>
          </div>
          <Progress value={progress} className="h-1.5" />

          <div className="mt-8 rounded-2xl border border-border bg-card p-8">
            <Badge variant="secondary" className="mb-4">
              {q.subject}
            </Badge>
            <h2 className="font-display text-2xl leading-snug text-foreground md:text-3xl">
              {q.question}
            </h2>

            <div className="mt-6 space-y-2.5">
              {q.choices.map((c, i) => {
                const isSel = selected === i;
                const isCorrect = i === q.correctIndex;
                let cls =
                  "flex w-full items-center justify-between rounded-lg border px-4 py-3.5 text-left text-sm transition-colors ";
                if (revealed) {
                  if (isCorrect) cls += "border-success bg-success/10 text-foreground";
                  else if (isSel)
                    cls += "border-destructive bg-destructive/10 text-foreground";
                  else cls += "border-border text-muted-foreground";
                } else {
                  cls += isSel
                    ? "border-foreground bg-secondary text-foreground"
                    : "border-border bg-background hover:border-foreground/40";
                }
                return (
                  <button
                    key={i}
                    disabled={revealed}
                    onClick={() => setSelected(i)}
                    className={cls}
                  >
                    <span className="flex items-center gap-3">
                      <span
                        className={`flex h-6 w-6 items-center justify-center rounded-full border text-xs ${
                          revealed && isCorrect
                            ? "border-success bg-success text-success-foreground"
                            : revealed && isSel
                              ? "border-destructive bg-destructive text-destructive-foreground"
                              : isSel
                                ? "border-foreground bg-foreground text-background"
                                : "border-border"
                        }`}
                      >
                        {String.fromCharCode(65 + i)}
                      </span>
                      {c}
                    </span>
                    {revealed && isCorrect && <Check className="h-4 w-4 text-success" />}
                    {revealed && isSel && !isCorrect && (
                      <X className="h-4 w-4 text-destructive" />
                    )}
                  </button>
                );
              })}
            </div>

            {revealed && (
              <div className="mt-5 rounded-lg border border-border bg-surface p-4">
                <div className="text-xs font-medium uppercase tracking-wider text-muted-foreground">
                  Explanation
                </div>
                <p className="mt-1.5 text-sm text-foreground">{q.explanation}</p>
              </div>
            )}

            <div className="mt-6 flex justify-end">
              {!revealed ? (
                <Button onClick={submit} disabled={selected === null}>
                  Check answer
                </Button>
              ) : (
                <Button onClick={next}>
                  {idx + 1 >= total ? "See results" : "Next question"}
                  <ArrowRight className="ml-1 h-4 w-4" />
                </Button>
              )}
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
