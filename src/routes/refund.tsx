import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { useI18n } from "@/lib/i18n";
import { alternateLinks, canonicalUrl } from "@/lib/seo";

export const Route = createFileRoute("/refund")({
  head: () => ({
    meta: [
      { title: "StudySpark Refund & Cancellation Policy - Cameroon GCE and Francophone revision" },
      {
        name: "description",
        content:
          "StudySpark Refund & Cancellation Policy for Premium payments via Fapshi for Cameroon students. FCFA pricing, Mobile Money, 7-day window, and support contact.",
      },
      {
        property: "og:title",
        content: "StudySpark Refund & Cancellation Policy",
      },
      {
        property: "og:description",
        content:
          "StudySpark Refund & Cancellation Policy for Premium payments via Fapshi for Cameroon students.",
      },
      { property: "og:url", content: canonicalUrl("/refund") },
      { property: "og:image", content: "/og-image.png" },
      { property: "og:image:alt", content: "StudySpark Refund Policy" },
      { name: "twitter:title", content: "StudySpark Refund & Cancellation Policy" },
      {
        name: "twitter:description",
        content:
          "StudySpark Refund & Cancellation Policy for Premium payments via Fapshi for Cameroon students.",
      },
      { name: "twitter:image", content: "/og-image.png" },
    ],
    links: [
      { rel: "canonical", href: canonicalUrl("/refund") },
      ...alternateLinks("/refund", "/fr/refund"),
    ],
  }),
  component: RefundPage,
});

const SECTIONS = [1, 2, 3, 4, 5, 6] as const;

function RefundPage() {
  const { t } = useI18n();

  return (
    <div className="min-h-screen bg-background">
      <header className="sticky top-0 z-40 border-b border-border bg-background/80 backdrop-blur">
        <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
          <Button asChild variant="ghost" size="sm">
            <Link to="/">Back to home</Link>
          </Button>
          <nav className="hidden gap-4 text-sm text-muted-foreground md:flex">
            <Link to="/terms" className="hover:text-foreground">
              Terms
            </Link>
            <Link to="/privacy" className="hover:text-foreground">
              Privacy
            </Link>
            <Link to="/pricing" className="hover:text-foreground">
              Pricing
            </Link>
          </nav>
        </div>
      </header>

      <main className="px-6 py-12 md:py-20">
        <div className="mx-auto max-w-3xl">
          <h1 className="font-display text-4xl text-foreground">{t("refund.title")}</h1>
          <p className="mt-2 text-sm text-muted-foreground">{t("refund.effective")}</p>

          <div className="prose max-w-none mt-6 text-muted-foreground">
            <p>{t("refund.introduction")}</p>
          </div>

          <div className="mt-12 space-y-10">
            {SECTIONS.map((n) => (
              <section key={n}>
                <h2 className="text-lg font-semibold text-foreground">
                  {t(`refund.sections.${n}` as never)}
                </h2>
                <p className="mt-2 text-sm leading-relaxed text-muted-foreground">
                  {t(`refund.sections.${n}.desc` as never)}
                </p>
              </section>
            ))}
          </div>

          <div className="mt-12 rounded-xl border border-amber-200 bg-amber-50 p-5 text-sm dark:border-amber-900 dark:bg-amber-950/30">
            <p className="font-medium text-foreground">Need help with a payment?</p>
            <p className="mt-1 text-muted-foreground">
              Visit{" "}
              <Link to="/support" className="underline hover:text-foreground">
                Support
              </Link>{" "}
              or email{" "}
              <a href="mailto:support@studyspark.cm" className="underline">
                support@studyspark.cm
              </a>
              . Include your transaction reference from{" "}
              <Link to="/settings" className="underline">
                Settings → Payment history
              </Link>{" "}
              or{" "}
              <Link to="/pricing" className="underline">
                Pricing
              </Link>
              .
            </p>
          </div>

          <div className="mt-8 rounded-xl border border-border bg-card p-5 text-sm">
            <p className="font-medium text-foreground">Related policies</p>
            <p className="mt-2 flex flex-wrap gap-3 text-muted-foreground">
              <Link to="/terms" className="underline underline-offset-2 hover:text-foreground">
                Terms
              </Link>
              <Link to="/privacy" className="underline underline-offset-2 hover:text-foreground">
                Privacy Policy
              </Link>
              <Link to="/pricing" className="underline underline-offset-2 hover:text-foreground">
                Pricing
              </Link>
              <Link to="/support" className="underline underline-offset-2 hover:text-foreground">
                Support
              </Link>
            </p>
          </div>

          <footer className="mt-12 border-t border-border pt-8 text-center text-sm text-muted-foreground">
            © {new Date().getFullYear()} StudySpark. Made for Cameroon students.
          </footer>
        </div>
      </main>
    </div>
  );
}
