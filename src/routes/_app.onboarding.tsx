import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { useState } from "react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { COUNTRIES, SUBJECTS, EXAM_BOARDS, type Subject, type ExamBoard } from "@/lib/mock-data";
import { ArrowRight, Check, GraduationCap, MapPin, BookOpen } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

export const Route = createFileRoute("/_app/onboarding")({
  head: () => ({ meta: [{ title: "Welcome — StudyFlow" }] }),
  component: Onboarding,
});

function Onboarding() {
  const navigate = useNavigate();
  const [step, setStep] = useState(0);
  const [name, setName] = useState("");
  const [country, setCountry] = useState<string | null>(null);
  const [board, setBoard] = useState<ExamBoard | null>(null);
  const [subjects, setSubjects] = useState<Subject[]>([]);

  const toggleSubject = (s: Subject) =>
    setSubjects((prev) => (prev.includes(s) ? prev.filter((x) => x !== s) : [...prev, s]));

  const next = () => setStep((s) => s + 1);
  const finish = () => navigate({ to: "/dashboard" });

  const stepValid =
    (step === 0 && name.trim().length > 0) ||
    (step === 1 && country !== null) ||
    (step === 2 && board !== null) ||
    (step === 3 && subjects.length >= 1);

  return (
    <div className="min-h-[calc(100vh-3.5rem)] bg-surface px-4 py-12 md:min-h-screen md:py-20">
      <div className="mx-auto max-w-xl">
        <div className="mb-8 flex items-center gap-2">
          {[0, 1, 2, 3].map((i) => (
            <div
              key={i}
              className={`h-1 flex-1 rounded-full transition-colors ${
                i <= step ? "bg-foreground" : "bg-border"
              }`}
            />
          ))}
        </div>

        <AnimatePresence mode="wait">
          <motion.div
            key={step}
            initial={{ opacity: 0, y: 12 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -12 }}
            transition={{ duration: 0.25 }}
            className="rounded-2xl border border-border bg-card p-8 md:p-10"
          >
            {step === 0 && (
              <div>
                <h1 className="font-display text-3xl text-foreground md:text-4xl">
                  Welcome to StudyFlow
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  Let's set up your study space. Takes 30 seconds.
                </p>
                <label className="mt-8 block text-sm font-medium">What should we call you?</label>
                <Input
                  autoFocus
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  placeholder="Your first name"
                  className="mt-2 h-11"
                />
              </div>
            )}

            {step === 1 && (
              <div>
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                  <MapPin className="h-5 w-5" />
                </div>
                <h1 className="mt-5 font-display text-3xl text-foreground md:text-4xl">
                  Where are you studying?
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  We'll show you the right exams for your country.
                </p>
                <div className="mt-6 grid grid-cols-2 gap-2 sm:grid-cols-3">
                  {COUNTRIES.map((c) => {
                    const sel = country === c.code;
                    return (
                      <button
                        key={c.code}
                        onClick={() => setCountry(c.code)}
                        className={`flex flex-col items-start gap-1 rounded-lg border p-3 text-left transition-colors ${
                          sel
                            ? "border-foreground bg-secondary"
                            : "border-border bg-background hover:border-foreground/40"
                        }`}
                      >
                        <span className="text-2xl">{c.flag}</span>
                        <span className="text-sm font-medium">{c.name}</span>
                      </button>
                    );
                  })}
                </div>
              </div>
            )}

            {step === 2 && (
              <div>
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                  <GraduationCap className="h-5 w-5" />
                </div>
                <h1 className="mt-5 font-display text-3xl text-foreground md:text-4xl">
                  Which exam are you preparing for?
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">Pick one for now — you can change later.</p>
                <div className="mt-6 grid grid-cols-1 gap-2 sm:grid-cols-2">
                  {EXAM_BOARDS.map((b) => {
                    const sel = board === b;
                    return (
                      <button
                        key={b}
                        onClick={() => setBoard(b)}
                        className={`flex items-center justify-between rounded-lg border p-4 text-left transition-colors ${
                          sel
                            ? "border-foreground bg-secondary"
                            : "border-border bg-background hover:border-foreground/40"
                        }`}
                      >
                        <span className="font-medium">{b}</span>
                        {sel && <Check className="h-4 w-4" />}
                      </button>
                    );
                  })}
                </div>
              </div>
            )}

            {step === 3 && (
              <div>
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                  <BookOpen className="h-5 w-5" />
                </div>
                <h1 className="mt-5 font-display text-3xl text-foreground md:text-4xl">
                  Pick your subjects
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  Choose 3-6. We'll tailor your dashboard around them.
                </p>
                <div className="mt-6 flex flex-wrap gap-2">
                  {SUBJECTS.map((s) => {
                    const sel = subjects.includes(s);
                    return (
                      <button
                        key={s}
                        onClick={() => toggleSubject(s)}
                        className={`rounded-full border px-4 py-2 text-sm transition-colors ${
                          sel
                            ? "border-foreground bg-foreground text-background"
                            : "border-border bg-background hover:border-foreground/40"
                        }`}
                      >
                        {sel && <Check className="-ml-0.5 mr-1 inline h-3 w-3" />}
                        {s}
                      </button>
                    );
                  })}
                </div>
                {subjects.length > 0 && (
                  <Badge variant="secondary" className="mt-5">
                    {subjects.length} selected
                  </Badge>
                )}
              </div>
            )}
          </motion.div>
        </AnimatePresence>

        <div className="mt-6 flex items-center justify-between">
          <Button variant="ghost" asChild>
            <Link to="/dashboard">Skip for now</Link>
          </Button>
          {step < 3 ? (
            <Button onClick={next} disabled={!stepValid}>
              Continue <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          ) : (
            <Button onClick={finish} disabled={!stepValid}>
              Get started <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          )}
        </div>
      </div>
    </div>
  );
}
