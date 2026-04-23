import { createFileRoute, Link } from "@tanstack/react-router";
import { zodValidator, fallback } from "@tanstack/zod-adapter";
import { z } from "zod";
import { PageHeader } from "./_app";
import {
  QUIZ_QUESTIONS,
  type QuizQuestion,
  type Difficulty,
  type Subject,
} from "@/lib/mock-data";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import { Badge } from "@/components/ui/badge";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import {
  Check,
  X,
  ArrowRight,
  RotateCcw,
  Trophy,
  Clock,
  Eye,
  Settings2,
  Bookmark,
  Flag,
  Pause,
  Play,
  Shuffle,
  Image as ImageIcon,
  Volume2,
  Sparkles,
} from "lucide-react";
import { useEffect, useMemo, useRef, useState } from "react";

const quizSearchSchema = z.object({
  subject: fallback(z.string().optional(), undefined),
  board: fallback(z.string().optional(), undefined),
  difficulty: fallback(z.enum(["easy", "medium", "hard"]).optional(), undefined),
  count: fallback(z.number().optional(), undefined),
  timed: fallback(z.boolean().optional(), undefined),
  mode: fallback(z.enum(["normal", "random", "daily", "adaptive"]).optional(), undefined),
});

export const Route = createFileRoute("/_app/quiz")({
  validateSearch: zodValidator(quizSearchSchema),
  head: () => ({ meta: [{ title: "Quiz mode — StudyFlow" }] }),
  component: QuizPage,
});

// =================================================================
// Per-question answer state
// =================================================================
type AnswerState =
  | { type: "mcq"; selected: number | null }
  | { type: "true_false"; selected: boolean | null }
  | { type: "fill_blank"; value: string }
  | { type: "match"; mapping: Record<number, number | null> } // leftIdx -> rightIdx
  | { type: "essay"; value: string };

type RecordedAnswer = {
  qid: string;
  correct: boolean;
  state: AnswerState;
};

function emptyAnswer(q: QuizQuestion): AnswerState {
  switch (q.type) {
    case "mcq":
    case "image_mcq":
    case "audio_mcq":
      return { type: "mcq", selected: null };
    case "true_false":
      return { type: "true_false", selected: null };
    case "fill_blank":
      return { type: "fill_blank", value: "" };
    case "match":
      return {
        type: "match",
        mapping: Object.fromEntries(q.lefts.map((_, i) => [i, null])),
      };
    case "essay":
      return { type: "essay", value: "" };
  }
}

function isAnswerComplete(a: AnswerState): boolean {
  switch (a.type) {
    case "mcq":
      return a.selected !== null;
    case "true_false":
      return a.selected !== null;
    case "fill_blank":
      return a.value.trim().length > 0;
    case "match":
      return Object.values(a.mapping).every((v) => v !== null);
    case "essay":
      return a.value.trim().split(/\s+/).filter(Boolean).length > 0;
  }
}

function gradeAnswer(q: QuizQuestion, a: AnswerState): boolean {
  switch (q.type) {
    case "mcq":
    case "image_mcq":
    case "audio_mcq":
      return a.type === "mcq" && a.selected === q.correctIndex;
    case "true_false":
      return a.type === "true_false" && a.selected === q.answer;
    case "fill_blank":
      return (
        a.type === "fill_blank" &&
        q.acceptedAnswers.some((ans) => ans.toLowerCase() === a.value.trim().toLowerCase())
      );
    case "match":
      if (a.type !== "match") return false;
      return q.lefts.every((_, i) => a.mapping[i] === i);
    case "essay":
      // mock auto-grade: pass if it meets word count
      if (a.type !== "essay") return false;
      const words = a.value.trim().split(/\s+/).filter(Boolean).length;
      return words >= q.minWords;
  }
}

// Adaptive difficulty: pick next questions based on score so far
function adaptivePool(
  pool: QuizQuestion[],
  recentCorrectStreak: number,
): QuizQuestion[] {
  let target: Difficulty = "medium";
  if (recentCorrectStreak >= 2) target = "hard";
  else if (recentCorrectStreak <= -2) target = "easy";
  const filtered = pool.filter((q) => q.difficulty === target);
  return filtered.length > 0 ? filtered : pool;
}

// =================================================================
// Page
// =================================================================
function QuizPage() {
  const search = Route.useSearch();
  const subject = search.subject;
  const requestedCount = search.count ?? 10;
  const timed = !!search.timed;
  const mode = search.mode ?? "normal";
  const difficulty = search.difficulty;

  // Build a stable initial question list
  const questions = useMemo<QuizQuestion[]>(() => {
    let pool: QuizQuestion[] = [...QUIZ_QUESTIONS];
    if (mode === "daily") {
      // Deterministic by date
      const today = new Date().toISOString().slice(0, 10);
      const seed = today.split("-").reduce((a, c) => a + parseInt(c, 10), 0);
      pool = [...pool].sort((a, b) => ((seed + a.id.charCodeAt(1)) % 7) - ((seed + b.id.charCodeAt(1)) % 7));
    } else if (mode === "random") {
      pool = [...pool].sort(() => Math.random() - 0.5);
    }
    if (subject && subject !== "all" && mode !== "random") {
      const filtered = pool.filter((q) => q.subject === (subject as Subject));
      if (filtered.length > 0) pool = filtered;
    }
    if (difficulty && mode !== "adaptive") {
      const filtered = pool.filter((q) => q.difficulty === difficulty);
      if (filtered.length > 0) pool = filtered;
    }
    const out: QuizQuestion[] = [];
    for (let i = 0; i < requestedCount; i++) out.push(pool[i % pool.length]);
    return out;
  }, [subject, requestedCount, mode, difficulty]);

  const [questionList, setQuestionList] = useState<QuizQuestion[]>(questions);
  useEffect(() => setQuestionList(questions), [questions]);

  const [idx, setIdx] = useState(0);
  const [answer, setAnswer] = useState<AnswerState>(() => emptyAnswer(questions[0]));
  const [revealed, setRevealed] = useState(false);
  const [recorded, setRecorded] = useState<RecordedAnswer[]>([]);
  const [bookmarked, setBookmarked] = useState<Set<string>>(new Set());
  const [flagged, setFlagged] = useState<Set<string>>(new Set());
  const [done, setDone] = useState(false);
  const [reviewMode, setReviewMode] = useState(false);
  const [reviewIdx, setReviewIdx] = useState(0);
  const [paused, setPaused] = useState(false);
  const [secondsLeft, setSecondsLeft] = useState(60);
  const [recentCorrectStreak, setRecentCorrectStreak] = useState(0);

  const q = questionList[idx];
  const total = questionList.length;
  const progress = ((idx + (revealed ? 1 : 0)) / total) * 100;
  const score = recorded.filter((a) => a.correct).length;

  // Reset answer when question changes
  useEffect(() => {
    if (q) setAnswer(emptyAnswer(q));
  }, [q?.id]);

  // Timer (timed mode, auto-submit on timeout)
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null);
  useEffect(() => {
    if (!timed || done || revealed || paused) return;
    setSecondsLeft(60);
    timerRef.current = setInterval(() => {
      setSecondsLeft((s) => {
        if (s <= 1) {
          if (timerRef.current) clearInterval(timerRef.current);
          // auto-submit current answer (graded as wrong if incomplete)
          submitInternal(true);
          return 0;
        }
        return s - 1;
      });
    }, 1000);
    return () => {
      if (timerRef.current) clearInterval(timerRef.current);
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [idx, timed, revealed, done, paused, q?.id]);

  function submitInternal(forced = false) {
    if (!q) return;
    if (revealed) return;
    const isComplete = isAnswerComplete(answer);
    if (!forced && !isComplete) return;
    const correct = isComplete ? gradeAnswer(q, answer) : false;
    setRecorded((prev) => [...prev, { qid: q.id, correct, state: answer }]);
    setRevealed(true);
    setRecentCorrectStreak((s) => (correct ? Math.max(1, s + 1) : Math.min(-1, s - 1)));
  }

  function next() {
    if (idx + 1 >= total) {
      setDone(true);
      return;
    }
    // Adaptive: replace the next question with one that fits performance
    if (mode === "adaptive") {
      const nextQ = adaptivePool(QUIZ_QUESTIONS, recentCorrectStreak)[
        Math.floor(Math.random() * Math.max(1, adaptivePool(QUIZ_QUESTIONS, recentCorrectStreak).length))
      ];
      if (nextQ) {
        setQuestionList((list) => list.map((x, i) => (i === idx + 1 ? nextQ : x)));
      }
    }
    setIdx((i) => i + 1);
    setRevealed(false);
  }

  function skipForLater() {
    if (!q) return;
    setFlagged((f) => new Set(f).add(q.id));
    next();
  }

  function restart() {
    setIdx(0);
    setRecorded([]);
    setBookmarked(new Set());
    setFlagged(new Set());
    setDone(false);
    setReviewMode(false);
    setReviewIdx(0);
    setRecentCorrectStreak(0);
    setQuestionList(questions);
    setAnswer(emptyAnswer(questions[0]));
    setRevealed(false);
  }

  // ---------- Review mode ----------
  if (done && reviewMode) {
    const wrong = recorded
      .map((a, i) => ({ ...a, q: questionList[i], i }))
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
          <Badge variant="secondary">{item.q.subject} · {item.q.difficulty}</Badge>
        </div>
        <h3 className="font-display text-xl text-foreground md:text-2xl">{item.q.prompt}</h3>
        <div className="mt-5">
          <ReviewAnswerBlock q={item.q} state={item.state} />
        </div>
        <div className="mt-5 rounded-lg border border-border bg-surface p-4">
          <div className="text-xs font-medium uppercase tracking-wider text-muted-foreground">Explanation</div>
          <p className="mt-1.5 text-sm">{item.q.explanation}</p>
        </div>
        <div className="mt-6 flex justify-between">
          <Button variant="outline" disabled={reviewIdx === 0} onClick={() => setReviewIdx((i) => i - 1)}>
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
              <Stat label="Correct" value={score} tone="success" />
              <Stat label="Wrong" value={wrong} tone="destructive" />
              <Stat label="Bookmarked" value={bookmarked.size} />
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
  const headerDesc =
    mode === "daily"
      ? "Today's daily challenge — fixed for everyone."
      : mode === "random"
        ? "Random questions across all subjects."
        : mode === "adaptive"
          ? "Adapts to your performance — gets harder as you improve."
          : subject && subject !== "all"
            ? `${subject} · ${total} questions`
            : "Mixed questions across your subjects.";

  const isBookmarked = q && bookmarked.has(q.id);
  const isFlagged = q && flagged.has(q.id);
  const complete = isAnswerComplete(answer);

  return (
    <>
      <PageHeader title="Quiz mode" description={headerDesc}>
        <div className="flex gap-2">
          {mode !== "normal" && (
            <Badge variant="secondary" className="capitalize">
              {mode === "daily" ? <Sparkles className="mr-1 h-3 w-3" /> : mode === "random" ? <Shuffle className="mr-1 h-3 w-3" /> : null}
              {mode}
            </Badge>
          )}
          <Button variant="outline" size="sm" asChild>
          <Link to="/quiz/setup" search={{} as never}>
            <Settings2 className="mr-1 h-4 w-4" /> Customize
          </Link>
          </Button>
        </div>
      </PageHeader>

      <div className="px-6 py-6 md:px-10 md:py-8">
        <div className="mx-auto max-w-2xl">
          <div className="mb-4 flex items-center justify-between text-xs text-muted-foreground">
            <span>Question {idx + 1} of {total}</span>
            <div className="flex items-center gap-3">
              {timed && (
                <>
                  <button
                    onClick={() => setPaused((p) => !p)}
                    className="inline-flex items-center gap-1 rounded-md border border-border px-2 py-0.5 hover:text-foreground"
                    aria-label={paused ? "Resume" : "Pause"}
                  >
                    {paused ? <Play className="h-3 w-3" /> : <Pause className="h-3 w-3" />}
                    {paused ? "Resume" : "Pause"}
                  </button>
                  <span className={`flex items-center gap-1 ${secondsLeft <= 10 && !paused ? "text-destructive" : ""}`}>
                    <Clock className="h-3 w-3" /> {secondsLeft}s
                  </span>
                </>
              )}
              <span>{score} correct so far</span>
            </div>
          </div>
          <Progress value={progress} className="h-1.5" />

          {q && (
            <div className="mt-8 rounded-2xl border border-border bg-card p-6 md:p-8">
              <div className="mb-4 flex items-center justify-between gap-2">
                <div className="flex flex-wrap items-center gap-2">
                  <Badge variant="secondary">{q.subject}</Badge>
                  <Badge variant="outline" className="capitalize">{q.difficulty}</Badge>
                  <Badge variant="outline" className="capitalize text-muted-foreground">
                    {labelForType(q.type)}
                  </Badge>
                </div>
                <div className="flex gap-1">
                  <button
                    onClick={() =>
                      setBookmarked((b) => {
                        const n = new Set(b);
                        if (n.has(q.id)) n.delete(q.id);
                        else n.add(q.id);
                        return n;
                      })
                    }
                    className={`inline-flex h-8 w-8 items-center justify-center rounded-md border border-border transition-colors ${
                      isBookmarked ? "bg-foreground text-background" : "hover:bg-secondary"
                    }`}
                    aria-label="Bookmark question"
                    title="Bookmark"
                  >
                    <Bookmark className="h-3.5 w-3.5" />
                  </button>
                  <button
                    onClick={() =>
                      setFlagged((f) => {
                        const n = new Set(f);
                        if (n.has(q.id)) n.delete(q.id);
                        else n.add(q.id);
                        return n;
                      })
                    }
                    className={`inline-flex h-8 w-8 items-center justify-center rounded-md border border-border transition-colors ${
                      isFlagged ? "bg-warning/20 text-warning-foreground" : "hover:bg-secondary"
                    }`}
                    aria-label="Flag for review"
                    title="Flag for review"
                  >
                    <Flag className="h-3.5 w-3.5" />
                  </button>
                </div>
              </div>

              <h2 className="font-display text-xl leading-snug text-foreground md:text-2xl">{q.prompt}</h2>

              <div className="mt-6">
                <QuestionBody q={q} answer={answer} setAnswer={setAnswer} revealed={revealed} />
              </div>

              {revealed && (
                <div className="mt-5 rounded-lg border border-border bg-surface p-4">
                  <div className="text-xs font-medium uppercase tracking-wider text-muted-foreground">Explanation</div>
                  <p className="mt-1.5 text-sm text-foreground">{q.explanation}</p>
                </div>
              )}

              <div className="mt-6 flex items-center justify-between gap-2">
                {!revealed ? (
                  <>
                    <Button variant="ghost" size="sm" onClick={skipForLater}>
                      Skip & flag for later
                    </Button>
                    <Button onClick={() => submitInternal(false)} disabled={!complete}>
                      Check answer
                    </Button>
                  </>
                ) : (
                  <Button onClick={next} className="ml-auto">
                    {idx + 1 >= total ? "See results" : "Next question"} <ArrowRight className="ml-1 h-4 w-4" />
                  </Button>
                )}
              </div>
            </div>
          )}

          {paused && (
            <div className="mt-4 rounded-lg border border-warning/40 bg-warning/10 p-3 text-center text-xs text-warning-foreground">
              Quiz paused. Timer is frozen — press Resume when you're ready.
            </div>
          )}
        </div>
      </div>
    </>
  );
}

function labelForType(t: QuizQuestion["type"]) {
  return t === "mcq"
    ? "Multiple choice"
    : t === "true_false"
      ? "True / False"
      : t === "fill_blank"
        ? "Fill in the blank"
        : t === "match"
          ? "Match the following"
          : t === "image_mcq"
            ? "Image-based"
            : t === "audio_mcq"
              ? "Listening"
              : "Essay";
}

function Stat({ label, value, tone }: { label: string; value: number; tone?: "success" | "destructive" }) {
  const color = tone === "success" ? "text-success" : tone === "destructive" ? "text-destructive" : "";
  return (
    <div className="rounded-lg border border-border p-4">
      <div className="text-xs text-muted-foreground">{label}</div>
      <div className={`mt-1 font-display text-2xl ${color}`}>{value}</div>
    </div>
  );
}

// =================================================================
// Question body components
// =================================================================
function QuestionBody({
  q,
  answer,
  setAnswer,
  revealed,
}: {
  q: QuizQuestion;
  answer: AnswerState;
  setAnswer: (a: AnswerState) => void;
  revealed: boolean;
}) {
  if (q.type === "mcq" || q.type === "image_mcq" || q.type === "audio_mcq") {
    const sel = answer.type === "mcq" ? answer.selected : null;
    return (
      <div className="space-y-3">
        {q.type === "image_mcq" && q.imageHint && (
          <div className="flex aspect-[16/9] items-center justify-center rounded-lg border border-dashed border-border bg-muted/30 text-sm text-muted-foreground">
            <ImageIcon className="mr-2 h-4 w-4" />
            {q.imageHint}
          </div>
        )}
        {q.type === "audio_mcq" && q.audioHint && (
          <div className="flex items-center gap-3 rounded-lg border border-border bg-muted/40 p-3">
            <button className="flex h-10 w-10 items-center justify-center rounded-full bg-foreground text-background">
              <Volume2 className="h-4 w-4" />
            </button>
            <div className="flex-1">
              <div className="text-xs font-medium uppercase tracking-wider text-muted-foreground">Audio clip</div>
              <p className="mt-0.5 text-sm italic text-muted-foreground">{q.audioHint}</p>
            </div>
          </div>
        )}
        <div className="space-y-2.5">
          {q.choices.map((c, i) => (
            <ChoiceButton
              key={i}
              label={String.fromCharCode(65 + i)}
              text={c}
              selected={sel === i}
              correct={revealed && i === q.correctIndex}
              wrong={revealed && sel === i && sel !== q.correctIndex}
              disabled={revealed}
              onClick={() => setAnswer({ type: "mcq", selected: i })}
            />
          ))}
        </div>
      </div>
    );
  }

  if (q.type === "true_false") {
    const sel = answer.type === "true_false" ? answer.selected : null;
    return (
      <div className="grid grid-cols-2 gap-3">
        {[true, false].map((v) => {
          const correct = revealed && v === q.answer;
          const wrong = revealed && sel === v && v !== q.answer;
          return (
            <button
              key={String(v)}
              disabled={revealed}
              onClick={() => setAnswer({ type: "true_false", selected: v })}
              className={`rounded-lg border p-5 text-center text-base font-medium transition-colors ${
                correct
                  ? "border-success bg-success/10"
                  : wrong
                    ? "border-destructive bg-destructive/10"
                    : sel === v
                      ? "border-foreground bg-secondary"
                      : "border-border bg-background hover:border-foreground/40"
              }`}
            >
              {v ? "True" : "False"}
            </button>
          );
        })}
      </div>
    );
  }

  if (q.type === "fill_blank") {
    const value = answer.type === "fill_blank" ? answer.value : "";
    const correct = revealed && gradeAnswer(q, answer);
    return (
      <div>
        <Input
          value={value}
          onChange={(e) => setAnswer({ type: "fill_blank", value: e.target.value })}
          placeholder="Type your answer..."
          disabled={revealed}
          className={`h-11 ${
            revealed
              ? correct
                ? "border-success bg-success/10"
                : "border-destructive bg-destructive/10"
              : ""
          }`}
        />
        {revealed && (
          <p className="mt-2 text-xs text-muted-foreground">
            Accepted answers: <span className="font-medium text-foreground">{q.acceptedAnswers.join(", ")}</span>
          </p>
        )}
      </div>
    );
  }

  if (q.type === "match") {
    const mapping = answer.type === "match" ? answer.mapping : {};
    return (
      <div className="space-y-2">
        {q.lefts.map((left, i) => {
          const sel = mapping[i];
          const correct = revealed && sel === i;
          const wrong = revealed && sel !== null && sel !== i;
          return (
            <div
              key={i}
              className={`flex items-center gap-3 rounded-lg border p-3 ${
                correct ? "border-success bg-success/10" : wrong ? "border-destructive bg-destructive/10" : "border-border"
              }`}
            >
              <span className="flex-1 text-sm font-medium">{left}</span>
              <ArrowRight className="h-4 w-4 text-muted-foreground" />
              <select
                disabled={revealed}
                value={sel ?? ""}
                onChange={(e) => {
                  const v = e.target.value === "" ? null : Number(e.target.value);
                  setAnswer({
                    type: "match",
                    mapping: { ...mapping, [i]: v },
                  });
                }}
                className="rounded-md border border-border bg-background px-2 py-1.5 text-sm"
              >
                <option value="">— pick —</option>
                {q.rights.map((r, j) => (
                  <option key={j} value={j}>
                    {r}
                  </option>
                ))}
              </select>
              {revealed && !correct && (
                <span className="text-xs text-muted-foreground">
                  → <span className="font-medium text-foreground">{q.rights[i]}</span>
                </span>
              )}
            </div>
          );
        })}
      </div>
    );
  }

  if (q.type === "essay") {
    const value = answer.type === "essay" ? answer.value : "";
    const words = value.trim().split(/\s+/).filter(Boolean).length;
    return (
      <div>
        <Textarea
          value={value}
          onChange={(e) => setAnswer({ type: "essay", value: e.target.value })}
          rows={6}
          placeholder="Write your answer here..."
          disabled={revealed}
        />
        <div className="mt-2 flex items-center justify-between text-xs text-muted-foreground">
          <span>
            {words} / {q.minWords} words minimum
          </span>
          {revealed && (
            <span className={words >= q.minWords ? "text-success" : "text-destructive"}>
              {words >= q.minWords ? "Length OK" : "Too short"}
            </span>
          )}
        </div>
        {revealed && (
          <div className="mt-3 rounded-md border border-border bg-surface p-3 text-xs">
            <div className="font-medium uppercase tracking-wider text-muted-foreground">Marking rubric</div>
            <ul className="mt-1.5 list-disc space-y-0.5 pl-4">
              {q.rubric.map((r, i) => (
                <li key={i}>{r}</li>
              ))}
            </ul>
          </div>
        )}
      </div>
    );
  }

  return null;
}

function ChoiceButton({
  label,
  text,
  selected,
  correct,
  wrong,
  disabled,
  onClick,
}: {
  label: string;
  text: string;
  selected: boolean;
  correct: boolean;
  wrong: boolean;
  disabled: boolean;
  onClick: () => void;
}) {
  let cls =
    "flex w-full items-center justify-between rounded-lg border px-4 py-3.5 text-left text-sm transition-colors ";
  if (correct) cls += "border-success bg-success/10 text-foreground";
  else if (wrong) cls += "border-destructive bg-destructive/10 text-foreground";
  else if (selected) cls += "border-foreground bg-secondary text-foreground";
  else cls += "border-border bg-background hover:border-foreground/40";

  return (
    <button disabled={disabled} onClick={onClick} className={cls}>
      <span className="flex items-center gap-3">
        <span
          className={`flex h-6 w-6 items-center justify-center rounded-full border text-xs ${
            correct
              ? "border-success bg-success text-success-foreground"
              : wrong
                ? "border-destructive bg-destructive text-destructive-foreground"
                : selected
                  ? "border-foreground bg-foreground text-background"
                  : "border-border"
          }`}
        >
          {label}
        </span>
        {text}
      </span>
      {correct && <Check className="h-4 w-4 text-success" />}
      {wrong && <X className="h-4 w-4 text-destructive" />}
    </button>
  );
}

function ReviewAnswerBlock({ q, state }: { q: QuizQuestion; state: AnswerState }) {
  if (q.type === "mcq" || q.type === "image_mcq" || q.type === "audio_mcq") {
    const sel = state.type === "mcq" ? state.selected : null;
    return (
      <div className="space-y-2">
        {q.choices.map((c, i) => {
          const isCorrect = i === q.correctIndex;
          const userPicked = i === sel;
          return (
            <div
              key={i}
              className={`flex items-center justify-between rounded-lg border px-4 py-3 text-sm ${
                isCorrect ? "border-success bg-success/10" : userPicked ? "border-destructive bg-destructive/10" : "border-border"
              }`}
            >
              <span>{String.fromCharCode(65 + i)}. {c}</span>
              {isCorrect && <Check className="h-4 w-4 text-success" />}
              {userPicked && !isCorrect && <X className="h-4 w-4 text-destructive" />}
            </div>
          );
        })}
      </div>
    );
  }
  if (q.type === "true_false") {
    return (
      <p className="text-sm">
        Your answer: <span className="font-medium">{state.type === "true_false" ? String(state.selected) : "—"}</span> ·
        Correct: <span className="font-medium text-success">{String(q.answer)}</span>
      </p>
    );
  }
  if (q.type === "fill_blank") {
    return (
      <p className="text-sm">
        You wrote: <span className="font-medium">"{state.type === "fill_blank" ? state.value : ""}"</span> ·
        Accepted: <span className="font-medium text-success">{q.acceptedAnswers.join(", ")}</span>
      </p>
    );
  }
  if (q.type === "match") {
    const mapping = state.type === "match" ? state.mapping : {};
    return (
      <ul className="space-y-1.5 text-sm">
        {q.lefts.map((l, i) => {
          const picked = mapping[i];
          const correct = picked === i;
          return (
            <li key={i} className="flex items-center gap-2">
              <span className="font-medium">{l}</span>
              <ArrowRight className="h-3 w-3 text-muted-foreground" />
              <span className={correct ? "text-success" : "text-destructive"}>
                {picked === null || picked === undefined ? "—" : q.rights[picked]}
              </span>
              {!correct && (
                <span className="text-xs text-muted-foreground">
                  (correct: <span className="font-medium text-foreground">{q.rights[i]}</span>)
                </span>
              )}
            </li>
          );
        })}
      </ul>
    );
  }
  if (q.type === "essay") {
    return (
      <div className="space-y-2 text-sm">
        <div className="rounded-md border border-border bg-surface p-3">
          {state.type === "essay" ? state.value || <em className="text-muted-foreground">No answer submitted.</em> : null}
        </div>
      </div>
    );
  }
  return null;
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
