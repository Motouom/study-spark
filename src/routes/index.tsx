import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { motion } from "framer-motion";
import { useEffect } from "react";
import { Logo } from "@/components/Logo";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { track } from "@/lib/analytics";
import {
  ArrowRight,
  BookOpen,
  Flame,
  LineChart,
  Search,
  ShieldCheck,
  Sparkles,
  Lock,
} from "lucide-react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { alternateLinks, canonicalUrl, educationalAppSchema, OG_IMAGE_URL } from "@/lib/seo";

export const Route = createFileRoute("/")({
  head: () => ({
    meta: [
      {
        title: "StudySpark - Cameroon GCE, BEPC, Probatoire, and Baccalaureat revision",
      },
      {
        name: "description",
        content:
          "Prepare for Cameroon GCE O Level, A Level, BEPC, Probatoire, and Baccalaureat with protected structural papers, topic courses, cheatsheets, and progress tracking.",
      },
      {
        property: "og:title",
        content: "StudySpark - Cameroon GCE and Francophone exam revision",
      },
      {
        property: "og:description",
        content:
          "Protected GCE, BEPC, Probatoire, and Baccalaureat papers, topic revision, cheatsheets, AI-guided learning paths, and progress tracking for Cameroonian students.",
      },
      {
        name: "keywords",
        content:
          "Cameroon GCE, BEPC, Probatoire, Baccalaureat, O-Level, A-Level, Serie C, Serie D, Serie A, Terminale, Premiere, revision Cameroun, sujets Cameroun, examen Cameroun",
      },
      { property: "og:url", content: canonicalUrl("/") },
      { property: "og:image", content: OG_IMAGE_URL },
      { property: "og:image:alt", content: "StudySpark Cameroon GCE revision dashboard" },
      { name: "twitter:title", content: "StudySpark - Cameroon GCE revision app" },
      {
        name: "twitter:description",
        content:
          "Practise GCE O Level and A Level papers by class, series, subject, and topic with StudySpark.",
      },
      { name: "twitter:image", content: OG_IMAGE_URL },
    ],
    links: [{ rel: "canonical", href: canonicalUrl("/") }, ...alternateLinks("/", "/fr")],
  }),
  component: Landing,
});

function Nav() {
  return (
    <header className="sticky top-0 z-40 border-b border-border/60 bg-background/80 backdrop-blur">
      <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
        <Logo />
        <nav className="hidden items-center gap-8 text-sm text-muted-foreground md:flex">
          <a href="#features" className="hover:text-foreground">
            Features
          </a>
          <a href="#how" className="hover:text-foreground">
            How it works
          </a>
          <Link to="/pricing" className="hover:text-foreground">
            Pricing
          </Link>
        </nav>
        <div className="flex items-center gap-2">
          <Button asChild variant="ghost" size="sm">
            <Link to="/signin">Sign in</Link>
          </Button>
          <Button asChild size="sm">
            <Link to="/onboarding">
              Get started <ArrowRight className="ml-1 h-4 w-4" />
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
          <Badge
            variant="secondary"
            className="mb-6 gap-1.5 rounded-full border border-border bg-card px-3 py-1 text-xs"
          >
            <Sparkles className="h-3 w-3 text-accent" />
            Cameroon GCE O Level and A Level revision. Protected questions. No downloads.
          </Badge>
          <h1 className="font-display text-5xl leading-[1.05] tracking-tight text-foreground md:text-7xl">
            Cameroon GCE revision that makes you{" "}
            <span className="italic text-muted-foreground">want to come back.</span>
          </h1>
          <p className="mx-auto mt-6 max-w-xl text-lg text-muted-foreground">
            Study O Level and A Level structural papers, Form 3 to Upper Sixth topics, exam
            cheatsheets, and guided progress built for Cameroonian learners.
          </p>
          <div className="mt-10 flex flex-col items-center justify-center gap-3 sm:flex-row">
            <Button asChild size="lg" className="h-12 px-6 text-base">
              <Link to="/dashboard">
                Start studying free <ArrowRight className="ml-1.5 h-4 w-4" />
              </Link>
            </Button>
            <Button asChild size="lg" variant="outline" className="h-12 px-6 text-base">
              <Link to="/library">Browse my topics</Link>
            </Button>
          </div>
          <p className="mt-5 text-xs text-muted-foreground">
            Questions stay inside the app · Premium features can come later
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
              <span className="ml-3 text-xs text-muted-foreground">
                study-spark-237.vercel.app/dashboard
              </span>
            </div>
            <div className="grid grid-cols-1 gap-4 p-6 md:grid-cols-3">
              <PreviewStat icon={<Flame className="h-4 w-4" />} label="Day streak" value="0" />
              <PreviewStat
                icon={<BookOpen className="h-4 w-4" />}
                label="Questions marked"
                value="0"
              />
              <PreviewStat icon={<LineChart className="h-4 w-4" />} label="Avg score" value="0%" />
              <div className="md:col-span-3 rounded-xl border border-border bg-background p-5">
                <div className="mb-3 flex items-center justify-between">
                  <h3 className="text-sm font-medium">This week's progress</h3>
                  <span className="text-xs text-muted-foreground">
                    starts after your first marked question
                  </span>
                </div>
                <div className="flex h-28 items-end gap-2">
                  {[0, 0, 0, 0, 0, 0, 0].map((h, i) => (
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
      title: "Class-based access",
      desc: "Form 3, Form 4, Form 5, Lower Sixth, and Upper Sixth students see subjects and topics that match their class, series, and language.",
    },
    {
      icon: <Sparkles className="h-5 w-5" />,
      title: "Free preview papers",
      desc: "Try selected Cameroon GCE-style protected papers before upgrading to unlimited premium access.",
    },
    {
      icon: <LineChart className="h-5 w-5" />,
      title: "Progress that motivates",
      desc: "Track passed and failed questions, weak topics, reading sessions, and the study areas to attack next.",
    },
    {
      icon: <Flame className="h-5 w-5" />,
      title: "Daily streaks",
      desc: "Small, satisfying wins that turn study into a habit you'll keep.",
    },
    {
      icon: <Lock className="h-5 w-5" />,
      title: "Protected delivery",
      desc: "Past-question style papers, topic courses, and cheatsheets open in-app with no download or PDF export flow.",
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
          <p className="mt-4 max-w-xl text-sm leading-relaxed text-muted-foreground">
            Built around Cameroon GCE revision for Mathematics, Further Mathematics, Physics,
            Chemistry, Biology, ICT, Computer Science, Food and Nutrition, Agricultural Science,
            Geography, History, English, French, Religious Studies, and more.
          </p>
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
      title: "Set your profile",
      desc: "Choose English or French, class, series, and subjects for your Cameroon GCE path.",
    },
    {
      n: "02",
      title: "Practice by topic",
      desc: "Open topic-based courses, cheatsheets, and professionally formatted structural papers inside the app.",
    },
    {
      n: "03",
      title: "Track and improve",
      desc: "Mark questions passed or failed, review weak topics, and keep your streak alive.",
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
              Most students don't fail because they aren't smart. They struggle because they don't
              know which GCE questions, subjects, and topics deserve attention today. StudySpark
              fixes that.
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
            Start free. Upgrade when you need more.
          </h2>
          <p className="mx-auto mt-4 max-w-xl text-sm text-muted-foreground">
            Free learners can preview selected GCE papers. Premium unlocks protected papers, topic
            courses, exam cheatsheets, AI-guided revision, and deeper progress analytics.
          </p>
        </div>
        <div className="mt-12 grid gap-5 md:grid-cols-2">
          <div className="rounded-2xl border border-border bg-card p-8">
            <h3 className="text-sm font-medium uppercase tracking-wider text-muted-foreground">
              Free
            </h3>
            <div className="mt-3 flex items-baseline gap-1">
              <span className="font-display text-5xl">FCFA 0</span>
              <span className="text-muted-foreground">/forever</span>
            </div>
            <ul className="mt-6 space-y-2.5 text-sm text-foreground">
              <Li>1-2 free preview papers</Li>
              <Li>Class and series access control</Li>
              <Li>Priority support</Li>
            </ul>
            <Button asChild variant="outline" className="mt-8 w-full">
              <Link to="/dashboard">Get started</Link>
            </Button>
          </div>
          <div className="relative rounded-2xl border border-foreground bg-foreground p-8 text-background">
            <Badge className="absolute -top-3 right-6 bg-accent text-accent-foreground">
              Recommended
            </Badge>
            <h3 className="text-sm font-medium uppercase tracking-wider text-background/60">
              Premium
            </h3>
            <div className="mt-3 flex items-baseline gap-1">
              <span className="font-display text-5xl">FCFA 1,500</span>
              <span className="text-background/60">/month</span>
            </div>
            <ul className="mt-6 space-y-2.5 text-sm">
              <Li dark>Everything in Free</Li>
              <Li dark>Unlimited protected papers</Li>
              <Li dark>Protected in-app papers</Li>
              <Li dark>Free answers & explanations</Li>
              <Li dark>Practice mode</Li>
              <Li dark>Daily streaks & basic stats</Li>
              <Li dark>AI-personalized learning paths</Li>
              <Li dark>Full courses & video lessons</Li>
              <Li dark>Exam cheatsheets</Li>
              <Li dark>Advanced full-text search</Li>
              <Li dark>Streak freezes (1/week)</Li>
            </ul>
            <Button
              asChild
              className="mt-8 w-full bg-background text-foreground hover:bg-background/90"
            >
              <Link to="/pricing">Pay with Fapshi</Link>
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
          Join Cameroonian students preparing smarter for GCE O Level, GCE A Level, Probatoire,
          Terminale, and subject exams with structured, protected topic practice.
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
        <p>© {new Date().getFullYear()} StudySpark. Made for Cameroon students.</p>
      </div>
    </footer>
  );
}

function Landing() {
  const navigate = useNavigate();
  const { user, profile, loaded } = useStudyProfile();

  useEffect(() => {
    if (!loaded || !user) return;
    void navigate({ to: profile ? "/dashboard" : "/onboarding", replace: true });
  }, [loaded, navigate, profile, user]);

  // Fire once on mount — not on re-renders or focus return
  useEffect(() => {
    track({ name: "landing_view" });
  }, []);

  if (loaded && user) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-background px-6 text-center">
        <p className="text-sm text-muted-foreground">
          {profile ? "Opening your dashboard..." : "Opening profile setup..."}
        </p>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(educationalAppSchema()) }}
      />
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
