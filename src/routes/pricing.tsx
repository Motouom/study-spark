import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Logo } from "@/components/Logo";
import { Check, Sparkles, X, ArrowLeft, Loader2 } from "lucide-react";
import { useEffect, useState } from "react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { supabase } from "@/lib/supabase";
import { alternateLinks, canonicalUrl, OG_IMAGE_URL, pricingSchema } from "@/lib/seo";
import { useI18n, useSyncLocaleFromProfile, type TranslationKey } from "@/lib/i18n";
import { track } from "@/lib/analytics";

export const Route = createFileRoute("/pricing")({
  head: () => ({
    meta: [
      { title: "StudySpark Pricing - Cameroon GCE and Francophone revision" },
      {
        name: "description",
        content:
          "StudySpark pricing for Cameroon students in the GCE Anglophone and francophone exam paths. Preview selected papers free, then upgrade for protected papers, AI learning paths, courses, cheatsheets, and progress analytics.",
      },
      {
        property: "og:title",
        content: "StudySpark pricing for Cameroon GCE and francophone students",
      },
      {
        property: "og:description",
        content:
          "Start free and upgrade when you need unlimited protected GCE, BEPC, Probatoire, and Baccalaureat papers with guided revision.",
      },
      {
        name: "keywords",
        content:
          "StudySpark pricing Cameroon, GCE revision Cameroon, Baccalaureat revision Cameroun, BEPC Cameroun, Probatoire Cameroun, Terminale revision, Premiere revision, sujets proteges Cameroun",
      },
      { property: "og:url", content: canonicalUrl("/pricing") },
      { property: "og:image", content: OG_IMAGE_URL },
      { property: "og:image:alt", content: "StudySpark premium pricing for Cameroon students" },
      { name: "twitter:title", content: "StudySpark Pricing - Cameroon GCE Premium" },
      {
        name: "twitter:description",
        content:
          "Free preview access, then FCFA pricing for protected GCE papers, courses, cheatsheets, and progress tools.",
      },
      { name: "twitter:image", content: OG_IMAGE_URL },
    ],
    links: [
      { rel: "canonical", href: canonicalUrl("/pricing") },
      ...alternateLinks("/pricing", "/fr/tarifs"),
    ],
  }),
  component: PricingPage,
});

const features = [
  { key: "pricing.feature.previewPapers", free: true, premium: false },
  { key: "pricing.feature.unlimitedPapers", free: false, premium: true },
  { key: "pricing.feature.protectedPapers", free: false, premium: true },
  { key: "pricing.feature.answers", free: false, premium: true },
  { key: "pricing.feature.practiceMode", free: false, premium: true },
  { key: "pricing.feature.accessControl", free: true, premium: true },
  { key: "pricing.feature.streaks", free: false, premium: true },
  { key: "pricing.feature.aiPaths", free: false, premium: true },
  { key: "pricing.feature.courses", free: false, premium: true },
  { key: "pricing.feature.cheatsheets", free: false, premium: true },
  { key: "pricing.feature.search", free: false, premium: true },
  { key: "pricing.feature.freezes", free: false, premium: true },
  { key: "pricing.feature.support", free: true, premium: true },
] as { key: TranslationKey; free: boolean; premium: boolean }[];

const pricingFaqs = [
  { question: "pricing.faq.free.q", answer: "pricing.faq.free.a" },
  { question: "pricing.faq.cancel.q", answer: "pricing.faq.cancel.a" },
  { question: "pricing.faq.mobileMoney.q", answer: "pricing.faq.mobileMoney.a" },
  { question: "pricing.faq.discount.q", answer: "pricing.faq.discount.a" },
] as { question: TranslationKey; answer: TranslationKey }[];

function PricingPage() {
  const { locale, t } = useI18n();
  const [yearly, setYearly] = useState(false);
  const [checkoutLoading, setCheckoutLoading] = useState(false);
  const [checkingPayment, setCheckingPayment] = useState(false);
  const [paymentMessage, setPaymentMessage] = useState<string | null>(null);
  const { user, profile } = useStudyProfile();
  useSyncLocaleFromProfile(profile?.language);
  const userId = user?.id;
  const returnPath = user && profile ? "/dashboard" : "/";
  const monthly = 1500;
  const yearlyPrice = 12000;
  const formatFcfa = (amount: number) =>
    locale === "fr"
      ? `${amount.toLocaleString("fr-CM")} FCFA`
      : `FCFA ${amount.toLocaleString("en-CM")}`;

  // Track pricing page view once on mount
  useEffect(() => {
    track({ name: "premium_view" });
  }, []);

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
            track({ name: "payment_success" });
            setPaymentMessage(t("pricing.paymentConfirmed"));
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
          const isPending = payload.status === "pending" || payload.status === "created";
          if (isPending) {
            track({ name: "payment_pending" });
          } else {
            track({ name: "payment_failure", props: { reason: payload.status ?? "unconfirmed" } });
          }
          setPaymentMessage(
            isPending ? t("pricing.paymentPending") : t("pricing.paymentNotConfirmed"),
          );
          return;
        } catch {
          if (attempt === maxAttempts) {
            track({ name: "payment_failure", props: { reason: "check_failed" } });
            setPaymentMessage(t("pricing.paymentCheckFailed"));
            return;
          }
          await new Promise((resolve) => window.setTimeout(resolve, 4000));
        }
      }
    };

    void poll().finally(() => setCheckingPayment(false));
  }, [t, userId]);

  async function startCheckout() {
    if (!user || !supabase) {
      window.location.assign("/signin");
      return;
    }

    setCheckoutLoading(true);
    setPaymentMessage(null);
    track({ name: "checkout_started", props: { interval: yearly ? "yearly" : "monthly" } });
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
        throw new Error("payment-start-failed");
      }
      sessionStorage.setItem(
        "studyspark.checkout.transactionId",
        String(payload.transactionId ?? ""),
      );
      window.location.assign(payload.checkoutUrl);
    } catch {
      setPaymentMessage(t("pricing.paymentStartFailed"));
      setCheckoutLoading(false);
    }
  }

  return (
    <div className="min-h-screen bg-background">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(pricingSchema()) }}
      />
      <header className="sticky top-0 z-40 border-b border-border bg-background/80 backdrop-blur">
        <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
          <Logo to={returnPath} />
          <Button asChild variant="ghost" size="sm">
            <Link to={returnPath}>
              <ArrowLeft className="mr-1 h-4 w-4" /> {t("common.back")}
            </Link>
          </Button>
        </div>
      </header>

      <main>
        <section className="px-6 py-20 text-center md:py-24">
          <Badge variant="secondary" className="mb-5 gap-1.5">
            <Sparkles className="h-3 w-3 text-accent" /> {t("pricing.badge")}
          </Badge>
          <h1 className="font-display text-5xl text-foreground md:text-7xl">
            {t("pricing.title")}
          </h1>
          <p className="mx-auto mt-5 max-w-xl text-muted-foreground">{t("pricing.description")}</p>

          <div className="mt-8 inline-flex items-center gap-3 rounded-full border border-border bg-card p-1">
            <button
              onClick={() => setYearly(false)}
              className={`rounded-full px-4 py-1.5 text-sm transition-colors ${!yearly ? "bg-foreground text-background" : "text-muted-foreground"}`}
            >
              {t("pricing.monthly")}
            </button>
            <button
              onClick={() => setYearly(true)}
              className={`rounded-full px-4 py-1.5 text-sm transition-colors ${yearly ? "bg-foreground text-background" : "text-muted-foreground"}`}
            >
              {t("pricing.yearly")} <span className="ml-1 text-xs text-accent">−33%</span>
            </button>
          </div>
        </section>

        <section className="mx-auto max-w-5xl px-6 pb-20">
          <div className="grid gap-5 md:grid-cols-2">
            <div className="rounded-2xl border border-border bg-card p-8">
              <h3 className="text-sm font-medium uppercase tracking-wider text-muted-foreground">
                {t("common.free")}
              </h3>
              <div className="mt-3 flex items-baseline gap-1">
                <span className="font-display text-5xl">{formatFcfa(0)}</span>
                <span className="text-muted-foreground">/{t("pricing.forever")}</span>
              </div>
              <p className="mt-2 text-sm text-muted-foreground">
                {t("pricing.freePlanDescription")}
              </p>
              <Button asChild variant="outline" className="mt-6 w-full">
                <Link to="/dashboard">{t("pricing.getStarted")}</Link>
              </Button>
              <ul className="mt-6 space-y-3 text-sm">
                {features
                  .filter((f) => f.free)
                  .map((f) => (
                    <li key={f.key} className="flex items-start gap-2.5">
                      <Check className="mt-0.5 h-4 w-4 shrink-0 text-success" />
                      <span>{t(f.key)}</span>
                    </li>
                  ))}
              </ul>
            </div>

            <div className="relative rounded-2xl border border-foreground bg-foreground p-8 text-background">
              <Badge className="absolute -top-3 right-6 bg-accent text-accent-foreground">
                {t("pricing.recommended")}
              </Badge>
              <h3 className="text-sm font-medium uppercase tracking-wider text-background/60">
                {t("common.premium")}
              </h3>
              <div className="mt-3 flex items-baseline gap-1">
                <span className="font-display text-5xl">
                  {formatFcfa(yearly ? Math.round(yearlyPrice / 12) : monthly)}
                </span>
                <span className="text-background/60">/{t("pricing.month")}</span>
              </div>
              <p className="mt-2 text-sm text-background/60">
                {yearly
                  ? `${t("pricing.billedYearly")} · ${formatFcfa(yearlyPrice)}`
                  : t("pricing.billedMonthly")}
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
                {t("pricing.payWithFapshi")}
              </Button>
              {paymentMessage ? (
                <div className="mt-3 rounded-lg bg-background/10 px-3 py-2 text-sm text-background/80">
                  <p>{paymentMessage}</p>
                  <a
                    href="/support"
                    className="mt-1.5 inline-block text-xs underline underline-offset-2 opacity-70 hover:opacity-100"
                  >
                    Contact support →
                  </a>
                </div>
              ) : null}
              <ul className="mt-6 space-y-3 text-sm">
                {features.map((f) => (
                  <li key={f.key} className="flex items-start gap-2.5">
                    {f.premium ? (
                      <Check className="mt-0.5 h-4 w-4 shrink-0 text-accent" />
                    ) : (
                      <X className="mt-0.5 h-4 w-4 shrink-0 text-background/30" />
                    )}
                    <span className={f.premium ? "" : "text-background/40 line-through"}>
                      {t(f.key)}
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
                <span>{t("pricing.feature")}</span>
                <span className="text-center text-muted-foreground">{t("common.free")}</span>
                <span className="text-center">{t("common.premium")}</span>
              </div>
              {features.map((f) => (
                <div
                  key={f.key}
                  className="grid grid-cols-3 border-b border-border px-6 py-3.5 text-sm last:border-0"
                >
                  <span className="pr-4">{t(f.key)}</span>
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
            <h2 className="font-display text-3xl">{t("pricing.commonQuestions")}</h2>
            <div className="mt-6 space-y-4">
              {pricingFaqs.map((f) => (
                <div key={f.question} className="rounded-xl border border-border bg-card p-5">
                  <h3 className="text-base font-medium">{t(f.question)}</h3>
                  <p className="mt-1.5 text-sm text-muted-foreground">{t(f.answer)}</p>
                </div>
              ))}
            </div>
          </div>
        </section>
      </main>

      <footer className="border-t border-border bg-surface">
        <div className="mx-auto flex max-w-6xl flex-col items-center justify-between gap-4 px-6 py-10 text-sm text-muted-foreground md:flex-row">
          <Logo />
          <p>
            © {new Date().getFullYear()} StudySpark. {t("pricing.footer")}
          </p>
        </div>
      </footer>
    </div>
  );
}
