import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Switch } from "@/components/ui/switch";
import { Separator } from "@/components/ui/separator";
import { COUNTRIES, EXAM_BOARDS, SUBJECTS } from "@/lib/mock-data";
import { useState } from "react";
import { Badge } from "@/components/ui/badge";
import { Check, Sparkles } from "lucide-react";
import { Link } from "@tanstack/react-router";

export const Route = createFileRoute("/_app/settings")({
  head: () => ({ meta: [{ title: "Settings — StudyFlow" }] }),
  component: SettingsPage,
});

function Section({ title, description, children }: { title: string; description?: string; children: React.ReactNode }) {
  return (
    <section className="rounded-xl border border-border bg-card p-6">
      <h2 className="text-base font-medium">{title}</h2>
      {description && <p className="mt-1 text-sm text-muted-foreground">{description}</p>}
      <Separator className="my-5" />
      <div className="space-y-5">{children}</div>
    </section>
  );
}

function Row({ label, hint, children }: { label: string; hint?: string; children: React.ReactNode }) {
  return (
    <div className="grid gap-2 md:grid-cols-[1fr_2fr] md:items-center md:gap-6">
      <div>
        <Label className="text-sm font-medium">{label}</Label>
        {hint && <p className="text-xs text-muted-foreground">{hint}</p>}
      </div>
      <div>{children}</div>
    </div>
  );
}

function SettingsPage() {
  const [name, setName] = useState("Akua Mensah");
  const [email, setEmail] = useState("akua@studyflow.app");
  const [country, setCountry] = useState("GH");
  const [board, setBoard] = useState("WASSCE");
  const [examDate, setExamDate] = useState("2026-05-15");
  const [subjects, setSubjects] = useState<string[]>(["Mathematics", "Physics", "Chemistry", "Biology", "English"]);
  const [reminders, setReminders] = useState(true);
  const [streakAlerts, setStreakAlerts] = useState(true);
  const [weekly, setWeekly] = useState(false);
  const [darkMode, setDarkMode] = useState(false);

  const toggleSubject = (s: string) =>
    setSubjects((prev) => (prev.includes(s) ? prev.filter((x) => x !== s) : [...prev, s]));

  return (
    <>
      <PageHeader title="Settings" description="Manage your profile, exam prep, and preferences." />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <Section title="Profile" description="Your basic information.">
          <Row label="Display name">
            <Input value={name} onChange={(e) => setName(e.target.value)} className="max-w-md" />
          </Row>
          <Row label="Email">
            <Input value={email} onChange={(e) => setEmail(e.target.value)} type="email" className="max-w-md" />
          </Row>
        </Section>

        <Section title="Exam preparation" description="We'll personalize content based on these.">
          <Row label="Country" hint="Used to show your local exams">
            <Select value={country} onValueChange={setCountry}>
              <SelectTrigger className="max-w-md">
                <SelectValue />
              </SelectTrigger>
              <SelectContent>
                {COUNTRIES.map((c) => (
                  <SelectItem key={c.code} value={c.code}>
                    {c.flag} {c.name}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </Row>
          <Row label="Exam board">
            <Select value={board} onValueChange={setBoard}>
              <SelectTrigger className="max-w-md">
                <SelectValue />
              </SelectTrigger>
              <SelectContent>
                {EXAM_BOARDS.map((b) => (
                  <SelectItem key={b} value={b}>{b}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </Row>
          <Row label="Target exam date" hint="We'll pace your study plan toward this date">
            <Input type="date" value={examDate} onChange={(e) => setExamDate(e.target.value)} className="max-w-md" />
          </Row>
          <Row label="Active subjects" hint={`${subjects.length} selected`}>
            <div className="flex flex-wrap gap-2">
              {SUBJECTS.map((s) => {
                const sel = subjects.includes(s);
                return (
                  <button
                    key={s}
                    onClick={() => toggleSubject(s)}
                    className={`rounded-full border px-3 py-1.5 text-xs transition-colors ${
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
          </Row>
        </Section>

        <Section title="Notifications" description="Control when StudyFlow nudges you.">
          <Row label="Daily study reminders">
            <Switch checked={reminders} onCheckedChange={setReminders} />
          </Row>
          <Row label="Streak warnings" hint="Alert me before I lose my streak">
            <Switch checked={streakAlerts} onCheckedChange={setStreakAlerts} />
          </Row>
          <Row label="Weekly summary email">
            <Switch checked={weekly} onCheckedChange={setWeekly} />
          </Row>
        </Section>

        <Section title="Appearance">
          <Row label="Dark mode">
            <Switch checked={darkMode} onCheckedChange={setDarkMode} />
          </Row>
        </Section>

        <Section title="Plan">
          <div className="flex flex-col items-start gap-3 sm:flex-row sm:items-center sm:justify-between">
            <div>
              <div className="flex items-center gap-2">
                <span className="font-medium">Free plan</span>
                <Badge variant="secondary">Current</Badge>
              </div>
              <p className="mt-1 text-sm text-muted-foreground">
                Upgrade for AI tutoring, courses, and digital books.
              </p>
            </div>
            <Button asChild>
              <Link to="/pricing">
                <Sparkles className="mr-1.5 h-4 w-4" /> Upgrade
              </Link>
            </Button>
          </div>
        </Section>

        <div className="flex justify-end gap-2">
          <Button variant="outline">Cancel</Button>
          <Button>Save changes</Button>
        </div>
      </div>
    </>
  );
}
