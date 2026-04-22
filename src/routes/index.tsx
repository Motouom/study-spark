import { createFileRoute, Link } from "@tanstack/react-router";
import { motion } from "framer-motion";
import { Logo } from "@/components/Logo";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  ArrowRight,
  BookOpen,
  Flame,
  LineChart,
  Search,
  ShieldCheck,
  Sparkles,
  Download,
} from "lucide-react";

export const Route = createFileRoute("/")({
  head: () => ({
    meta: [
      { title: "StudyFlow — The study app that makes you want to come back" },
      {
        name: "description",
        content:
          "All-in-one study platform for African secondary school students. Past questions, quizzes, and progress analytics.",
      },
    ],
  }),
  component: Landing,
});

function Nav() {
  return (
    <header className="sticky top-0 z-40 border-b border-border/60 bg-background/80 backdrop-blur">
      <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
        <Logo />
        <nav className="hidden items-center gap-8 text-sm text-muted-foreground md:flex">
          <a href="#features" className="hover:text-foreground">Features</a>
          <a href="#how" className="hover:text-foreground">How it works</a>
          <Link to="/pricing" className="hover:text-foreground">Pricing</Link>
        </nav>
        <div className="flex items-center gap-2">
          <Button asChild variant="ghost" size="sm">
            <Link to="/library">Browse</Link>
          </Button>
          <Button asChild size="sm">
            <Link to="/onboarding">
              Open app <ArrowRight className="ml-1 h-4 w-4" />
            </Link>
          </Button>
        </div>
      </div>
    </header>
  );
}

function Hero() {
  return (
    <section className="relative overflow-hidden">
      <div className="absolute inset-0 -z-10 dot-bg opacity-60" />
      <div className="absolute inset-x-0 top-0 -z-10 h-[420px] bg-gradient-to-b from-accent/10 to-transparent" />
      <div className="mx-auto max-w-6xl px-6 pt-20 pb-24 md:pt-28 md:pb-32">
        <motion.div
          initial={{ opacity: 0, y: 12 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6 }}
          className="mx-auto max-w-3xl text-center"
        >
          <Badge variant="secondary" className="mb-6 gap-1.5 rounded-full border border-border bg-card px-3 py-1 text-xs">
            <Sparkles className="h-3 w-3 text-accent" />
            Free answers. No ads. Made for Africa.
          </Badge>
          <h1 className="font-display text-5xl leading-[1.05] tracking-tight text-foreground md:text-7xl">
            The study app that makes you{" "}
            <span className="italic text-muted-foreground">want to come back.</span>
          </h1>
          <p className="mx-auto mt-6 max-w-xl text-lg text-muted-foreground">
            Past questions, guided learning paths, and progress that actually motivates you —
            built for WASSCE, JAMB, KCSE and beyond.
          </p>
          <div className="mt-10 flex flex-col items-center justify-center gap-3 sm:flex-row">
            <Button asChild size="lg" className="h-12 px-6 text-base">
              <Link to="/dashboard">
                Start studying free <ArrowRight className="ml-1.5 h-4 w-4" />
              </Link>
            </Button>
            <Button asChild size="lg" variant="outline" className="h-12 px-6 text-base">
              <Link to="/library">Browse past papers</Link>
            </Button>
          </div>
          <p className="mt-5 text-xs text-muted-foreground">
            Free forever for past papers · Premium unlocks AI tutoring
          </p>
        </motion.div>

        <motion.div
          initial={{ opacity: 0, y: 24 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.7, delay: 0.2 }}
          className="mx-auto mt-16 max-w-5xl"
        >
          <div className="overflow-hidden rounded-2xl border border-border bg-card shadow-elevated">
            <div className="flex items-center gap-1.5 border-b border-border bg-surface px-4 py-3">
              <span className="h-2.5 w-2.5 rounded-full bg-destructive/40" />
              <span className="h-2.5 w-2.5 rounded-full bg-warning/60" />
              <span className="h-2.5 w-2.5 rounded-full bg-success/60" />
              <span className="ml-3 text-xs text-muted-foreground">studyflow.app/dashboard</span>
            </div>
            <div className="grid grid-cols-1 gap-4 p-6 md:grid-cols-3">
              <PreviewStat icon={<Flame className="h-4 w-4" />} label="Day streak" value="14" />
              <PreviewStat icon={<BookOpen className="h-4 w-4" />} label="Quizzes taken" value="47" />
              <PreviewStat icon={<LineChart className="h-4 w-4" />} label="Avg score" value="82%" />
              <div className="md:col-span-3 rounded-xl border border-border bg-background p-5">
                <div className="mb-3 flex items-center justify-between">
                  <h3 className="text-sm font-medium">This week's progress</h3>
                  <span className="text-xs text-success">+12% vs last week</span>
                </div>
                <div className="flex h-28 items-end gap-2">
                  {[40, 55, 48, 70, 82, 65, 88].map((h, i) => (
                    <div key={i} className="flex flex-1 flex-col items-center gap-1.5">
                      <div
                        className="w-full rounded-t-md bg-foreground/80"
                        style={{ height: `${h}%` }}
                      />
                      <span className="text-[10px] text-muted-foreground">
                        {["M", "T", "W", "T", "F", "S", "S"][i]}
                      </span>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </motion.div>
      </div>
    </section>
  );
}

function PreviewStat({
  icon,
  label,
  value,
}: {
  icon: React.ReactNode;
  label: string;
  value: string;
}) {
  return (
    <div className="rounded-xl border border-border bg-background p-5">
      <div className="flex items-center gap-2 text-muted-foreground">
        {icon}
        <span className="text-xs">{label}</span>
      </div>
      <div className="mt-2 font-display text-3xl">{value}</div>
    </div>
  );
}

function Features() {
  const items = [
    {
      icon: <BookOpen className="h-5 w-5" />,
      title: "500+ past questions",
      desc: "WASSCE, JAMB, KCSE, NECTA & GCE — filter by subject, year and exam board.",
    },
    {
      icon: <Sparkles className="h-5 w-5" />,
      title: "Answers, free",
      desc: "Unlike Kawlo, every answer is unlocked. We don't paywall the basics.",
    },
    {
      icon: <LineChart className="h-5 w-5" />,
      title: "Progress that motivates",
      desc: "See exactly which topics you're mastering and what to study next.",
    },
    {
      icon: <Flame className="h-5 w-5" />,
      title: "Daily streaks",
      desc: "Small, satisfying wins that turn study into a habit you'll keep.",
    },
    {
      icon: <Download className="h-5 w-5" />,
      title: "Download & share",
      desc: "Take papers offline. Share with classmates. Study anywhere, no data needed.",
    },
    {
      icon: <ShieldCheck className="h-5 w-5" />,
      title: "No ads. Ever.",
      desc: "Focus on what matters. Your dashboard is for studying, not selling.",
    },
  ];
  return (
    <section id="features" className="border-t border-border bg-surface">
      <div className="mx-auto max-w-6xl px-6 py-24">
        <div className="max-w-2xl">
          <p className="text-sm text-muted-foreground">Why students switch</p>
          <h2 className="mt-2 font-display text-4xl text-foreground md:text-5xl">
            Everything you need.{" "}
            <span className="italic text-muted-foreground">Nothing you don't.</span>
          </h2>
        </div>
        <div className="mt-14 grid gap-px overflow-hidden rounded-2xl border border-border bg-border md:grid-cols-2 lg:grid-cols-3">
          {items.map((it) => (
            <div key={it.title} className="bg-card p-7">
              <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                {it.icon}
              </div>
              <h3 className="mt-5 text-base font-medium text-foreground">{it.title}</h3>
              <p className="mt-2 text-sm leading-relaxed text-muted-foreground">{it.desc}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

function HowItWorks() {
  const steps = [
    {
      n: "01",
      title: "Pick your exam",
      desc: "Choose WASSCE, JAMB, KCSE — or whatever you're prepping for.",
    },
    {
      n: "02",
      title: "Practice with past papers",
      desc: "Real questions, full answers, timed quiz mode. Learn what's actually on the exam.",
    },
    {
      n: "03",
      title: "Track and improve",
      desc: "Watch your scores climb. Get nudged toward your weak topics. Keep your streak alive.",
    },
  ];
  return (
    <section id="how" className="border-t border-border">
      <div className="mx-auto max-w-6xl px-6 py-24">
        <div className="grid gap-12 md:grid-cols-2">
          <div>
            <p className="text-sm text-muted-foreground">How it works</p>
            <h2 className="mt-2 font-display text-4xl text-foreground md:text-5xl">
              From <span className="italic">overwhelmed</span> to ready, in three steps.
            </h2>
            <p className="mt-5 max-w-md text-muted-foreground">
              Most students don't fail because they aren't smart. They fail because they don't
              know what to study. StudyFlow fixes that.
            </p>
          </div>
          <div className="space-y-3">
            {steps.map((s) => (
              <div
                key={s.n}
                className="flex gap-5 rounded-xl border border-border bg-card p-6 transition-shadow hover:shadow-card"
              >
                <span className="font-display text-3xl text-muted-foreground">{s.n}</span>
                <div>
                  <h3 className="text-base font-medium">{s.title}</h3>
                  <p className="mt-1 text-sm text-muted-foreground">{s.desc}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
}

function Pricing() {
  return (
    <section id="pricing" className="border-t border-border bg-surface">
      <div className="mx-auto max-w-5xl px-6 py-24">
        <div className="text-center">
          <p className="text-sm text-muted-foreground">Pricing</p>
          <h2 className="mt-2 font-display text-4xl text-foreground md:text-5xl">
            Free where it matters.
          </h2>
        </div>
        <div className="mt-12 grid gap-5 md:grid-cols-2">
          <div className="rounded-2xl border border-border bg-card p-8">
            <h3 className="text-sm font-medium uppercase tracking-wider text-muted-foreground">
              Free
            </h3>
            <div className="mt-3 flex items-baseline gap-1">
              <span className="font-display text-5xl">₦0</span>
              <span className="text-muted-foreground">/forever</span>
            </div>
            <ul className="mt-6 space-y-2.5 text-sm text-foreground">
              <Li>500+ past papers with answers</Li>
              <Li>Quiz mode & basic analytics</Li>
              <Li>Download & share PDFs</Li>
              <Li>Daily streaks</Li>
            </ul>
            <Button asChild variant="outline" className="mt-8 w-full">
              <Link to="/dashboard">Get started</Link>
            </Button>
          </div>
          <div className="relative rounded-2xl border border-foreground bg-foreground p-8 text-background">
            <Badge className="absolute -top-3 right-6 bg-accent text-accent-foreground">
              Coming soon
            </Badge>
            <h3 className="text-sm font-medium uppercase tracking-wider text-background/60">
              Premium
            </h3>
            <div className="mt-3 flex items-baseline gap-1">
              <span className="font-display text-5xl">₦1,500</span>
              <span className="text-background/60">/month</span>
            </div>
            <ul className="mt-6 space-y-2.5 text-sm">
              <Li dark>Everything in Free</Li>
              <Li dark>AI-personalized learning paths</Li>
              <Li dark>Full courses & digital books</Li>
              <Li dark>Advanced full-text search</Li>
            </ul>
            <Button
              asChild
              className="mt-8 w-full bg-background text-foreground hover:bg-background/90"
            >
              <Link to="/dashboard">Join waitlist</Link>
            </Button>
          </div>
        </div>
      </div>
    </section>
  );
}

function Li({ children, dark = false }: { children: React.ReactNode; dark?: boolean }) {
  return (
    <li className="flex items-start gap-2.5">
      <svg
        viewBox="0 0 20 20"
        className={`mt-0.5 h-4 w-4 shrink-0 ${dark ? "text-accent" : "text-success"}`}
        fill="currentColor"
      >
        <path d="M16.7 5.3a1 1 0 0 1 0 1.4l-8 8a1 1 0 0 1-1.4 0l-4-4a1 1 0 1 1 1.4-1.4L8 12.6l7.3-7.3a1 1 0 0 1 1.4 0Z" />
      </svg>
      <span>{children}</span>
    </li>
  );
}

function CTA() {
  return (
    <section className="border-t border-border">
      <div className="mx-auto max-w-4xl px-6 py-24 text-center">
        <h2 className="font-display text-4xl text-foreground md:text-6xl">
          Ready to actually <span className="italic text-muted-foreground">enjoy</span> studying?
        </h2>
        <p className="mx-auto mt-5 max-w-lg text-muted-foreground">
          Join thousands of students preparing smarter — across Cameroon, Nigeria, Ghana, Kenya
          and beyond.
        </p>
        <div className="mt-10 flex flex-col items-center justify-center gap-3 sm:flex-row">
          <Button asChild size="lg" className="h-12 px-6">
            <Link to="/dashboard">
              Start studying free <ArrowRight className="ml-1.5 h-4 w-4" />
            </Link>
          </Button>
          <Button asChild size="lg" variant="outline" className="h-12 px-6">
            <Link to="/library">
              <Search className="mr-1.5 h-4 w-4" /> Browse the library
            </Link>
          </Button>
        </div>
      </div>
    </section>
  );
}

function Footer() {
  return (
    <footer className="border-t border-border bg-surface">
      <div className="mx-auto flex max-w-6xl flex-col items-center justify-between gap-4 px-6 py-10 text-sm text-muted-foreground md:flex-row">
        <Logo />
        <p>© {new Date().getFullYear()} StudyFlow. Made for African students.</p>
      </div>
    </footer>
  );
}

function Landing() {
  return (
    <div className="min-h-screen bg-background">
      <Nav />
      <main>
        <Hero />
        <Features />
        <HowItWorks />
        <Pricing />
        <CTA />
      </main>
      <Footer />
    </div>
  );
}
