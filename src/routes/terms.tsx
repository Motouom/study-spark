import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { useI18n } from "@/lib/i18n";
import { alternateLinks, canonicalUrl } from "@/lib/seo";

export const Route = createFileRoute("/terms")({
  head: () => ({
    meta: [
      { title: "StudySpark Terms of Service - Cameroon GCE and Francophone revision" },
      {
        name: "description",
        content:
          "StudySpark Terms of Service for Cameroon students using GCE, BEPC, Probatoire, and Baccalaureat revision platform. Includes Premium, Fapshi payments, protected content, and AI disclaimer.",
      },
      {
        property: "og:title",
        content: "StudySpark Terms of Service",
      },
      {
        property: "og:description",
        content:
          "StudySpark Terms of Service for Cameroon students using GCE, BEPC, Probatoire, and Baccalaureat revision platform.",
      },
      { property: "og:url", content: canonicalUrl("/terms") },
      { property: "og:image", content: "/og-image.png" },
      { property: "og:image:alt", content: "StudySpark Terms of Service" },
      { name: "twitter:title", content: "StudySpark Terms of Service" },
      {
        name: "twitter:description",
        content:
          "StudySpark Terms of Service for Cameroon students using GCE, BEPC, Probatoire, and Baccalaureat revision platform.",
      },
      { name: "twitter:image", content: "/og-image.png" },
    ],
    links: [
      { rel: "canonical", href: canonicalUrl("/terms") },
      ...alternateLinks("/terms", "/fr/terms"),
    ],
  }),
  component: TermsPage,
});

const SECTIONS = [1, 2, 3, 4, 5, 6, 7, 8] as const;

function TermsPage() {
  const { t } = useI18n();

  return (
    <div className="min-h-screen bg-background">
      <header className="sticky top-0 z-40 border-b border-border bg-background/80 backdrop-blur">
        <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
          <Button asChild variant="ghost" size="sm">
            <Link to="/">Back to home</Link>
          </Button>
          <nav className="hidden gap-4 text-sm text-muted-foreground md:flex">
            <Link to="/privacy" className="hover:text-foreground">
              Privacy
            </Link>
            <Link to="/refund" className="hover:text-foreground">
              Refund
            </Link>
            <Link to="/pricing" className="hover:text-foreground">
              Pricing
            </Link>
          </nav>
        </div>
      </header>

      <main className="px-6 py-12 md:py-20">
        <div className="mx-auto max-w-3xl">
          <h1 className="font-display text-4xl text-foreground">{t("terms.title")}</h1>
          <p className="mt-2 text-sm text-muted-foreground">{t("terms.effective")}</p>

          <div className="prose max-w-none mt-6 text-muted-foreground">
            <p>{t("terms.introduction")}</p>
          </div>

          <div className="mt-12 space-y-10">
            {SECTIONS.map((n) => (
              <section key={n}>
                <h2 className="text-lg font-semibold text-foreground">
                  {t(`terms.sections.${n}` as never)}
                </h2>
                <p className="mt-2 text-sm leading-relaxed text-muted-foreground">
                  {t(`terms.sections.${n}.desc` as never)}
                </p>
              </section>
            ))}
          </div>

          <div className="mt-12 rounded-xl border border-border bg-card p-5 text-sm">
            <p className="font-medium text-foreground">Related policies</p>
            <p className="mt-2 flex flex-wrap gap-3 text-muted-foreground">
              <Link to="/privacy" className="underline underline-offset-2 hover:text-foreground">
                Privacy Policy
              </Link>
              <Link to="/refund" className="underline underline-offset-2 hover:text-foreground">
                Refund & Cancellation
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
