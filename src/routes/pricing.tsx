import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Logo } from "@/components/Logo";
import { Check, Sparkles, X, ArrowLeft } from "lucide-react";
import { useState } from "react";

export const Route = createFileRoute("/pricing")({
  head: () => ({
    meta: [
      { title: "Pricing — StudyFlow" },
      { name: "description", content: "Simple, fair pricing. Free forever for past papers." },
    ],
  }),
  component: PricingPage,
});

const features = [
  { name: "500+ past papers", free: true, premium: true },
  { name: "Free answers & explanations", free: true, premium: true },
  { name: "Quiz mode", free: true, premium: true },
  { name: "Download & share PDFs", free: true, premium: true },
  { name: "Daily streaks & basic stats", free: true, premium: true },
  { name: "AI-personalized learning paths", free: false, premium: true },
  { name: "Full courses & video lessons", free: false, premium: true },
  { name: "Digital textbooks", free: false, premium: true },
  { name: "Advanced full-text search", free: false, premium: true },
  { name: "Streak freezes (1/week)", free: false, premium: true },
  { name: "Priority support", false: false, premium: true } as unknown as { name: string; free: boolean; premium: boolean },
] as { name: string; free: boolean; premium: boolean }[];

function PricingPage() {
  const [yearly, setYearly] = useState(false);
  const monthly = 1500;
  const yearlyPrice = 12000; // ₦12,000/year ~ ₦1,000/mo

  return (
    <div className="min-h-screen bg-background">
      <header className="sticky top-0 z-40 border-b border-border bg-background/80 backdrop-blur">
        <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
          <Logo />
          <Button asChild variant="ghost" size="sm">
            <Link to="/"><ArrowLeft className="mr-1 h-4 w-4" /> Back home</Link>
          </Button>
        </div>
      </header>

      <main>
        <section className="px-6 py-20 text-center md:py-24">
          <Badge variant="secondary" className="mb-5 gap-1.5">
            <Sparkles className="h-3 w-3 text-accent" /> Free where it matters
          </Badge>
          <h1 className="font-display text-5xl text-foreground md:text-7xl">
            Simple. <span className="italic text-muted-foreground">Fair.</span>
          </h1>
          <p className="mx-auto mt-5 max-w-xl text-muted-foreground">
            Past papers and answers are free forever. Upgrade only if you want AI tutoring and full courses.
          </p>

          <div className="mt-8 inline-flex items-center gap-3 rounded-full border border-border bg-card p-1">
            <button
              onClick={() => setYearly(false)}
              className={`rounded-full px-4 py-1.5 text-sm transition-colors ${!yearly ? "bg-foreground text-background" : "text-muted-foreground"}`}
            >
              Monthly
            </button>
            <button
              onClick={() => setYearly(true)}
              className={`rounded-full px-4 py-1.5 text-sm transition-colors ${yearly ? "bg-foreground text-background" : "text-muted-foreground"}`}
            >
              Yearly <span className="ml-1 text-xs text-accent">−33%</span>
            </button>
          </div>
        </section>

        <section className="mx-auto max-w-5xl px-6 pb-20">
          <div className="grid gap-5 md:grid-cols-2">
            <div className="rounded-2xl border border-border bg-card p-8">
              <h3 className="text-sm font-medium uppercase tracking-wider text-muted-foreground">Free</h3>
              <div className="mt-3 flex items-baseline gap-1">
                <span className="font-display text-5xl">₦0</span>
                <span className="text-muted-foreground">/forever</span>
              </div>
              <p className="mt-2 text-sm text-muted-foreground">For every student. No card needed.</p>
              <Button asChild variant="outline" className="mt-6 w-full">
                <Link to="/dashboard">Get started</Link>
              </Button>
              <ul className="mt-6 space-y-3 text-sm">
                {features.filter((f) => f.free).map((f) => (
                  <li key={f.name} className="flex items-start gap-2.5">
                    <Check className="mt-0.5 h-4 w-4 shrink-0 text-success" />
                    <span>{f.name}</span>
                  </li>
                ))}
              </ul>
            </div>

            <div className="relative rounded-2xl border border-foreground bg-foreground p-8 text-background">
              <Badge className="absolute -top-3 right-6 bg-accent text-accent-foreground">Recommended</Badge>
              <h3 className="text-sm font-medium uppercase tracking-wider text-background/60">Premium</h3>
              <div className="mt-3 flex items-baseline gap-1">
                <span className="font-display text-5xl">
                  ₦{yearly ? Math.round(yearlyPrice / 12).toLocaleString() : monthly.toLocaleString()}
                </span>
                <span className="text-background/60">/month</span>
              </div>
              <p className="mt-2 text-sm text-background/60">
                {yearly ? `Billed yearly · ₦${yearlyPrice.toLocaleString()}` : "Billed monthly"}
              </p>
              <Button asChild className="mt-6 w-full bg-background text-foreground hover:bg-background/90">
                <Link to="/dashboard">Start free trial</Link>
              </Button>
              <ul className="mt-6 space-y-3 text-sm">
                {features.map((f) => (
                  <li key={f.name} className="flex items-start gap-2.5">
                    {f.premium ? (
                      <Check className="mt-0.5 h-4 w-4 shrink-0 text-accent" />
                    ) : (
                      <X className="mt-0.5 h-4 w-4 shrink-0 text-background/30" />
                    )}
                    <span className={f.premium ? "" : "text-background/40 line-through"}>{f.name}</span>
                  </li>
                ))}
              </ul>
            </div>
          </div>

          {/* Comparison table */}
          <div className="mt-14 overflow-hidden rounded-2xl border border-border bg-card">
            <div className="grid grid-cols-3 border-b border-border px-6 py-4 text-sm font-medium">
              <span>Feature</span>
              <span className="text-center text-muted-foreground">Free</span>
              <span className="text-center">Premium</span>
            </div>
            {features.map((f) => (
              <div key={f.name} className="grid grid-cols-3 border-b border-border px-6 py-3.5 text-sm last:border-0">
                <span>{f.name}</span>
                <span className="flex justify-center">
                  {f.free ? <Check className="h-4 w-4 text-success" /> : <X className="h-4 w-4 text-muted-foreground/40" />}
                </span>
                <span className="flex justify-center">
                  {f.premium ? <Check className="h-4 w-4 text-success" /> : <X className="h-4 w-4 text-muted-foreground/40" />}
                </span>
              </div>
            ))}
          </div>

          {/* FAQ */}
          <div className="mt-16">
            <h2 className="font-display text-3xl">Common questions</h2>
            <div className="mt-6 space-y-4">
              {[
                { q: "Can I really use it free forever?", a: "Yes. All past papers and answers are free, with no ads. We make money from premium subscriptions." },
                { q: "Can I cancel anytime?", a: "Of course. Cancel from settings — no calls, no friction." },
                { q: "Do you support mobile money?", a: "Yes. We accept MTN MoMo, Airtel, M-Pesa, and cards across Africa." },
                { q: "Is there a student discount?", a: "Premium is already priced for students. Schools get bulk pricing — contact us." },
              ].map((f) => (
                <div key={f.q} className="rounded-xl border border-border bg-card p-5">
                  <h3 className="text-base font-medium">{f.q}</h3>
                  <p className="mt-1.5 text-sm text-muted-foreground">{f.a}</p>
                </div>
              ))}
            </div>
          </div>
        </section>
      </main>

      <footer className="border-t border-border bg-surface">
        <div className="mx-auto flex max-w-6xl flex-col items-center justify-between gap-4 px-6 py-10 text-sm text-muted-foreground md:flex-row">
          <Logo />
          <p>© {new Date().getFullYear()} StudyFlow. Made for African students.</p>
        </div>
      </footer>
    </div>
  );
}
