import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Logo } from "@/components/Logo";
import { Check, Sparkles, X, ArrowLeft, Loader2 } from "lucide-react";
import { useEffect, useState } from "react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { supabase } from "@/lib/supabase";

export const Route = createFileRoute("/pricing")({
  head: () => ({
    meta: [
      { title: "Pricing — StudySpark" },
      {
        name: "description",
        content:
          "StudySpark pricing for Cameroon students: preview selected GCE papers free, then upgrade for protected papers, AI learning paths, courses, textbooks, and progress analytics.",
      },
      { property: "og:title", content: "StudySpark pricing for Cameroon students" },
      {
        property: "og:description",
        content:
          "Start free and upgrade when you need unlimited protected GCE papers and guided revision.",
      },
    ],
  }),
  component: PricingPage,
});

const features = [
  { name: "1-2 free preview papers", free: true, premium: false },
  { name: "Unlimited protected papers", free: false, premium: true },
  { name: "Protected in-app papers", free: false, premium: true },
  { name: "Free answers & explanations", free: false, premium: true },
  { name: "Practice mode", free: false, premium: true },
  { name: "Class and series access control", free: true, premium: true },
  { name: "Daily streaks & basic stats", free: false, premium: true },
  { name: "AI-personalized learning paths", free: false, premium: true },
  { name: "Full courses & video lessons", free: false, premium: true },
  { name: "Digital textbooks", free: false, premium: true },
  { name: "Advanced full-text search", free: false, premium: true },
  { name: "Streak freezes (1/week)", free: false, premium: true },
  { name: "Priority support", free: true, premium: true },
] as { name: string; free: boolean; premium: boolean }[];

function PricingPage() {
  const [yearly, setYearly] = useState(false);
  const [checkoutLoading, setCheckoutLoading] = useState(false);
  const [checkingPayment, setCheckingPayment] = useState(false);
  const [paymentMessage, setPaymentMessage] = useState<string | null>(null);
  const { user, profile } = useStudyProfile();
  const userId = user?.id;
  const returnPath = user && profile ? "/dashboard" : "/";
  const monthly = 1500;
  const yearlyPrice = 12000;

  useEffect(() => {
    if (!userId || !supabase) return;
    const params = new URLSearchParams(window.location.search);
    if (!params.has("payment_return")) return;

    // Strip the return flag so refreshes/back-navigation don't re-trigger
    // verification, and remember which transaction to verify.
    params.delete("payment_return");
    const query = params.toString();
    window.history.replaceState(null, "", `${window.location.pathname}${query ? `?${query}` : ""}`);

    const transactionId = sessionStorage.getItem("studyspark.checkout.transactionId") ?? undefined;
    setCheckingPayment(true);
    const client = supabase;

    const verifyOnce = async () => {
      const { data } = await client.auth.getSession();
      return fetch("/api/payments/fapshi/verify", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${data.session?.access_token ?? ""}`,
        },
        body: JSON.stringify(transactionId ? { transactionId } : {}),
      }).then(async (response) => ({
        ok: response.ok,
        payload: (await response.json().catch(() => ({}))) as {
          status?: string;
          error?: string;
        },
      }));
    };

    // Fapshi may lag behind the redirect: poll a few times before giving up.
    const poll = async () => {
      const maxAttempts = 5;
      for (let attempt = 1; attempt <= maxAttempts; attempt++) {
        try {
          const { ok, payload } = await verifyOnce();
          if (ok && payload.status === "successful") {
            sessionStorage.removeItem("studyspark.checkout.transactionId");
            setPaymentMessage("Payment confirmed. Premium is now active on your account.");
            window.setTimeout(() => window.location.assign("/dashboard"), 1200);
            return;
          }
          if (
            ok &&
            (payload.status === "pending" || payload.status === "created") &&
            attempt < maxAttempts
          ) {
            await new Promise((resolve) => window.setTimeout(resolve, 4000));
            continue;
          }
          setPaymentMessage(
            payload.status === "pending" || payload.status === "created"
              ? "Payment is still pending. We will unlock Premium as soon as Fapshi confirms it."
              : "Payment has not been confirmed yet. If you paid, wait a moment and refresh.",
          );
          return;
        } catch {
          if (attempt === maxAttempts) {
            setPaymentMessage("Payment could not be checked right now. Please try again.");
            return;
          }
          await new Promise((resolve) => window.setTimeout(resolve, 4000));
        }
      }
    };

    void poll().finally(() => setCheckingPayment(false));
  }, [userId]);

  async function startCheckout() {
    if (!user || !supabase) {
      window.location.assign("/signin");
      return;
    }

    setCheckoutLoading(true);
    setPaymentMessage(null);
    try {
      const { data } = await supabase.auth.getSession();
      const response = await fetch("/api/payments/fapshi/initiate", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${data.session?.access_token ?? ""}`,
        },
        body: JSON.stringify({ interval: yearly ? "yearly" : "monthly" }),
      });
      const payload = await response.json().catch(() => ({}));
      if (!response.ok || !payload.checkoutUrl) {
        throw new Error(payload.error ?? "Payment could not be started.");
      }
      sessionStorage.setItem(
        "studyspark.checkout.transactionId",
        String(payload.transactionId ?? ""),
      );
      window.location.assign(payload.checkoutUrl);
    } catch (error) {
      setPaymentMessage(error instanceof Error ? error.message : "Payment could not be started.");
      setCheckoutLoading(false);
    }
  }

  return (
    <div className="min-h-screen bg-background">
      <header className="sticky top-0 z-40 border-b border-border bg-background/80 backdrop-blur">
        <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
          <Logo to={returnPath} />
          <Button asChild variant="ghost" size="sm">
            <Link to={returnPath}>
              <ArrowLeft className="mr-1 h-4 w-4" /> Back
            </Link>
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
            Free learners can preview selected papers. Premium unlocks protected papers, progress,
            guided revision, tutoring, and deeper analytics.
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
              <h3 className="text-sm font-medium uppercase tracking-wider text-muted-foreground">
                Free
              </h3>
              <div className="mt-3 flex items-baseline gap-1">
                <span className="font-display text-5xl">FCFA 0</span>
                <span className="text-muted-foreground">/forever</span>
              </div>
              <p className="mt-2 text-sm text-muted-foreground">
                Preview the platform before upgrading. No card needed.
              </p>
              <Button asChild variant="outline" className="mt-6 w-full">
                <Link to="/dashboard">Get started</Link>
              </Button>
              <ul className="mt-6 space-y-3 text-sm">
                {features
                  .filter((f) => f.free)
                  .map((f) => (
                    <li key={f.name} className="flex items-start gap-2.5">
                      <Check className="mt-0.5 h-4 w-4 shrink-0 text-success" />
                      <span>{f.name}</span>
                    </li>
                  ))}
              </ul>
            </div>

            <div className="relative rounded-2xl border border-foreground bg-foreground p-8 text-background">
              <Badge className="absolute -top-3 right-6 bg-accent text-accent-foreground">
                Recommended
              </Badge>
              <h3 className="text-sm font-medium uppercase tracking-wider text-background/60">
                Premium
              </h3>
              <div className="mt-3 flex items-baseline gap-1">
                <span className="font-display text-5xl">
                  FCFA{" "}
                  {yearly
                    ? Math.round(yearlyPrice / 12).toLocaleString()
                    : monthly.toLocaleString()}
                </span>
                <span className="text-background/60">/month</span>
              </div>
              <p className="mt-2 text-sm text-background/60">
                {yearly ? `Billed yearly · FCFA ${yearlyPrice.toLocaleString()}` : "Billed monthly"}
              </p>
              <Button
                className="mt-6 w-full bg-background text-foreground hover:bg-background/90"
                disabled={checkoutLoading || checkingPayment}
                onClick={startCheckout}
              >
                {checkoutLoading ? (
                  <Loader2 className="mr-1.5 h-4 w-4 animate-spin" />
                ) : (
                  <Sparkles className="mr-1.5 h-4 w-4" />
                )}
                Pay with Fapshi
              </Button>
              {paymentMessage ? (
                <p className="mt-3 rounded-lg bg-background/10 px-3 py-2 text-sm text-background/80">
                  {paymentMessage}
                </p>
              ) : null}
              <ul className="mt-6 space-y-3 text-sm">
                {features.map((f) => (
                  <li key={f.name} className="flex items-start gap-2.5">
                    {f.premium ? (
                      <Check className="mt-0.5 h-4 w-4 shrink-0 text-accent" />
                    ) : (
                      <X className="mt-0.5 h-4 w-4 shrink-0 text-background/30" />
                    )}
                    <span className={f.premium ? "" : "text-background/40 line-through"}>
                      {f.name}
                    </span>
                  </li>
                ))}
              </ul>
            </div>
          </div>

          {/* Comparison table */}
          <div className="mt-14 overflow-x-auto rounded-2xl border border-border bg-card">
            <div className="min-w-[560px]">
              <div className="grid grid-cols-3 border-b border-border px-6 py-4 text-sm font-medium">
                <span>Feature</span>
                <span className="text-center text-muted-foreground">Free</span>
                <span className="text-center">Premium</span>
              </div>
              {features.map((f) => (
                <div
                  key={f.name}
                  className="grid grid-cols-3 border-b border-border px-6 py-3.5 text-sm last:border-0"
                >
                  <span className="pr-4">{f.name}</span>
                  <span className="flex justify-center">
                    {f.free ? (
                      <Check className="h-4 w-4 text-success" />
                    ) : (
                      <X className="h-4 w-4 text-muted-foreground/40" />
                    )}
                  </span>
                  <span className="flex justify-center">
                    {f.premium ? (
                      <Check className="h-4 w-4 text-success" />
                    ) : (
                      <X className="h-4 w-4 text-muted-foreground/40" />
                    )}
                  </span>
                </div>
              ))}
            </div>
          </div>

          {/* FAQ */}
          <div className="mt-16">
            <h2 className="font-display text-3xl">Common questions</h2>
            <div className="mt-6 space-y-4">
              {[
                {
                  q: "Can students use the basics free?",
                  a: "Yes. Free learners can open one or two preview papers. The full protected learner experience is Premium.",
                },
                {
                  q: "Can I cancel anytime?",
                  a: "Of course. Cancel from settings — no calls, no friction.",
                },
                {
                  q: "Do you support mobile money?",
                  a: "The payment plan should prioritize MTN MoMo and Orange Money for Cameroon.",
                },
                {
                  q: "Is there a student discount?",
                  a: "Premium is already priced for students. Schools get bulk pricing — contact us.",
                },
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
          <p>© {new Date().getFullYear()} StudySpark. Made for Cameroon students.</p>
        </div>
      </footer>
    </div>
  );
}
