import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { zodValidator, fallback } from "@tanstack/zod-adapter";
import { z } from "zod";
import { PageHeader } from "./_app";
import { QUIZ_QUESTIONS, type QuizQuestion } from "@/lib/mock-data";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import { Badge } from "@/components/ui/badge";
import { Check, X, ArrowRight, RotateCcw, Trophy, Clock, Eye, Settings2 } from "lucide-react";
import { useEffect, useMemo, useState } from "react";

const quizSearchSchema = z.object({
  subject: fallback(z.string().optional(), undefined),
  board: fallback(z.string().optional(), undefined),
  difficulty: fallback(z.enum(["easy", "medium", "hard"]).optional(), undefined),
  count: fallback(z.number().optional(), undefined),
  timed: fallback(z.boolean().optional(), undefined),
});

export const Route = createFileRoute("/_app/quiz")({
  validateSearch: zodValidator(quizSearchSchema),
  head: () => ({ meta: [{ title: "Quiz mode — StudyFlow" }] }),
  component: QuizPage,
});

function QuizPage() {
  const search = Route.useSearch();
  const subject = search.subject;
  const count = search.count ?? QUIZ_QUESTIONS.length;
  const timed = !!search.timed;

  const questions = useMemo<QuizQuestion[]>(() => {
    let pool = QUIZ_QUESTIONS;
    if (subject && subject !== "all") {
      const filtered = pool.filter((q) => q.subject === subject);
      if (filtered.length > 0) pool = filtered;
    }
    // repeat to reach count if needed
    const out: QuizQuestion[] = [];
    for (let i = 0; i < count; i++) out.push(pool[i % pool.length]);
    return out;
  }, [subject, count]);

  const [idx, setIdx] = useState(0);
  const [selected, setSelected] = useState<number | null>(null);
  const [revealed, setRevealed] = useState(false);
  const [answers, setAnswers] = useState<{ qid: string; selected: number; correct: boolean }[]>([]);
  const [done, setDone] = useState(false);
  const [reviewMode, setReviewMode] = useState(false);
  const [reviewIdx, setReviewIdx] = useState(0);
  const [secondsLeft, setSecondsLeft] = useState(60);

  const q = questions[idx];
  const total = questions.length;
  const progress = ((idx + (revealed ? 1 : 0)) / total) * 100;
  const score = answers.filter((a) => a.correct).length;

  useEffect(() => {
    if (!timed || done || revealed) return;
    setSecondsLeft(60);
    const t = setInterval(() => {
      setSecondsLeft((s) => {
        if (s <= 1) {
          clearInterval(t);
          // auto-submit as wrong
          setAnswers((a) => [...a, { qid: q.id, selected: -1, correct: false }]);
          setRevealed(true);
          return 0;
        }
        return s - 1;
      });
    }, 1000);
    return () => clearInterval(t);
  }, [idx, timed, revealed, done, q?.id]);

  const submit = () => {
    if (selected === null) return;
    setRevealed(true);
    setAnswers((a) => [...a, { qid: q.id, selected, correct: selected === q.correctIndex }]);
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
    setReviewMode(false);
    setReviewIdx(0);
  };

  // ---------- Review mode ----------
  if (done && reviewMode) {
    const wrong = answers
      .map((a, i) => ({ ...a, q: questions[i], i }))
      .filter((a) => !a.correct);
    if (wrong.length === 0) {
      return (
        <ReviewWrapper onExit={() => setReviewMode(false)}>
          <p className="text-center text-muted-foreground">Nothing to review — you got everything right! 🎉</p>
        </ReviewWrapper>
      );
    }
    const item = wrong[reviewIdx];
    return (
      <ReviewWrapper onExit={() => setReviewMode(false)}>
        <div className="mb-4 flex items-center justify-between text-xs text-muted-foreground">
          <span>Reviewing wrong answer {reviewIdx + 1} of {wrong.length}</span>
          <Badge variant="secondary">{item.q.subject}</Badge>
        </div>
        <h3 className="font-display text-xl text-foreground md:text-2xl">{item.q.question}</h3>
        <div className="mt-5 space-y-2">
          {item.q.choices.map((c, i) => {
            const isCorrect = i === item.q.correctIndex;
            const userPicked = i === item.selected;
            return (
              <div
                key={i}
                className={`flex items-center justify-between rounded-lg border px-4 py-3 text-sm ${
                  isCorrect
                    ? "border-success bg-success/10"
                    : userPicked
                      ? "border-destructive bg-destructive/10"
                      : "border-border"
                }`}
              >
                <span>{String.fromCharCode(65 + i)}. {c}</span>
                {isCorrect && <Check className="h-4 w-4 text-success" />}
                {userPicked && !isCorrect && <X className="h-4 w-4 text-destructive" />}
              </div>
            );
          })}
        </div>
        <div className="mt-5 rounded-lg border border-border bg-surface p-4">
          <div className="text-xs font-medium uppercase tracking-wider text-muted-foreground">Explanation</div>
          <p className="mt-1.5 text-sm">{item.q.explanation}</p>
        </div>
        <div className="mt-6 flex justify-between">
          <Button
            variant="outline"
            disabled={reviewIdx === 0}
            onClick={() => setReviewIdx((i) => i - 1)}
          >
            Previous
          </Button>
          {reviewIdx + 1 < wrong.length ? (
            <Button onClick={() => setReviewIdx((i) => i + 1)}>
              Next <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          ) : (
            <Button onClick={() => setReviewMode(false)}>Done reviewing</Button>
          )}
        </div>
      </ReviewWrapper>
    );
  }

  // ---------- Results screen ----------
  if (done) {
    const pct = Math.round((score / total) * 100);
    const wrong = total - score;
    return (
      <>
        <PageHeader title="Quiz complete" />
        <div className="px-6 py-10 md:px-10">
          <div className="mx-auto max-w-xl rounded-2xl border border-border bg-card p-10 text-center">
            <div className="mx-auto flex h-16 w-16 items-center justify-center rounded-full bg-accent/15 text-accent">
              <Trophy className="h-7 w-7" />
            </div>
            <h2 className="mt-6 font-display text-5xl text-foreground">{pct}%</h2>
            <p className="mt-2 text-sm text-muted-foreground">You got {score} out of {total} correct.</p>

            <div className="mt-8 grid grid-cols-3 gap-3 text-left">
              <div className="rounded-lg border border-border p-4">
                <div className="text-xs text-muted-foreground">Correct</div>
                <div className="mt-1 font-display text-2xl text-success">{score}</div>
              </div>
              <div className="rounded-lg border border-border p-4">
                <div className="text-xs text-muted-foreground">Wrong</div>
                <div className="mt-1 font-display text-2xl text-destructive">{wrong}</div>
              </div>
              <div className="rounded-lg border border-border p-4">
                <div className="text-xs text-muted-foreground">Streak</div>
                <div className="mt-1 font-display text-2xl">+1</div>
              </div>
            </div>

            <div className="mt-8 flex flex-col gap-2 sm:flex-row sm:justify-center">
              {wrong > 0 && (
                <Button variant="outline" onClick={() => { setReviewMode(true); setReviewIdx(0); }}>
                  <Eye className="mr-1.5 h-4 w-4" /> Review wrong answers
                </Button>
              )}
              <Button onClick={restart} variant="outline">
                <RotateCcw className="mr-1.5 h-4 w-4" /> Try again
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

  // ---------- Active quiz ----------
  return (
    <>
      <PageHeader title="Quiz mode" description={subject && subject !== "all" ? `${subject} · ${total} questions` : "Mixed questions across your subjects."}>
        <Button variant="outline" size="sm" asChild>
          <Link to="/quiz/setup">
            <Settings2 className="mr-1 h-4 w-4" /> Customize
          </Link>
        </Button>
      </PageHeader>
      <div className="px-6 py-6 md:px-10 md:py-8">
        <div className="mx-auto max-w-2xl">
          <div className="mb-4 flex items-center justify-between text-xs text-muted-foreground">
            <span>Question {idx + 1} of {total}</span>
            <div className="flex items-center gap-3">
              {timed && (
                <span className={`flex items-center gap-1 ${secondsLeft <= 10 ? "text-destructive" : ""}`}>
                  <Clock className="h-3 w-3" /> {secondsLeft}s
                </span>
              )}
              <span>{score} correct so far</span>
            </div>
          </div>
          <Progress value={progress} className="h-1.5" />

          <UseQuiz
            q={q}
            revealed={revealed}
            selected={selected}
            setSelected={setSelected}
            submit={submit}
            next={next}
            isLast={idx + 1 >= total}
          />
        </div>
      </div>
    </>
  );
}

function UseQuiz({
  q,
  revealed,
  selected,
  setSelected,
  submit,
  next,
  isLast,
}: {
  q: QuizQuestion;
  revealed: boolean;
  selected: number | null;
  setSelected: (n: number) => void;
  submit: () => void;
  next: () => void;
  isLast: boolean;
}) {
  return (
    <div className="mt-8 rounded-2xl border border-border bg-card p-8">
      <Badge variant="secondary" className="mb-4">{q.subject}</Badge>
      <h2 className="font-display text-2xl leading-snug text-foreground md:text-3xl">{q.question}</h2>

      <div className="mt-6 space-y-2.5">
        {q.choices.map((c, i) => {
          const isSel = selected === i;
          const isCorrect = i === q.correctIndex;
          let cls = "flex w-full items-center justify-between rounded-lg border px-4 py-3.5 text-left text-sm transition-colors ";
          if (revealed) {
            if (isCorrect) cls += "border-success bg-success/10 text-foreground";
            else if (isSel) cls += "border-destructive bg-destructive/10 text-foreground";
            else cls += "border-border text-muted-foreground";
          } else {
            cls += isSel
              ? "border-foreground bg-secondary text-foreground"
              : "border-border bg-background hover:border-foreground/40";
          }
          return (
            <button key={i} disabled={revealed} onClick={() => setSelected(i)} className={cls}>
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
              {revealed && isSel && !isCorrect && <X className="h-4 w-4 text-destructive" />}
            </button>
          );
        })}
      </div>

      {revealed && (
        <div className="mt-5 rounded-lg border border-border bg-surface p-4">
          <div className="text-xs font-medium uppercase tracking-wider text-muted-foreground">Explanation</div>
          <p className="mt-1.5 text-sm text-foreground">{q.explanation}</p>
        </div>
      )}

      <div className="mt-6 flex justify-end">
        {!revealed ? (
          <Button onClick={submit} disabled={selected === null}>Check answer</Button>
        ) : (
          <Button onClick={next}>
            {isLast ? "See results" : "Next question"} <ArrowRight className="ml-1 h-4 w-4" />
          </Button>
        )}
      </div>
    </div>
  );
}

function ReviewWrapper({ children, onExit }: { children: React.ReactNode; onExit: () => void }) {
  return (
    <>
      <PageHeader title="Review answers">
        <Button variant="outline" size="sm" onClick={onExit}>Back to results</Button>
      </PageHeader>
      <div className="px-6 py-6 md:px-10 md:py-8">
        <div className="mx-auto max-w-2xl rounded-2xl border border-border bg-card p-8">{children}</div>
      </div>
    </>
  );
}

// satisfy unused import warning protection
void useNavigate;
