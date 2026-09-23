import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { useI18n } from "@/lib/i18n";
import { alternateLinks, canonicalUrl } from "@/lib/seo";
import { useEffect } from "react";

export const Route = createFileRoute("/fr/terms")({
  head: () => ({
    meta: [
      { title: "StudySpark Conditions d'utilisation - Révision Cameroun" },
      {
        name: "description",
        content:
          "Conditions d'utilisation StudySpark pour les élèves du Cameroun : Premium, paiements Fapshi, contenu protégé et avertissement IA.",
      },
      { property: "og:title", content: "StudySpark Conditions d'utilisation" },
      {
        property: "og:description",
        content:
          "Conditions d'utilisation pour la révision GCE, BEPC, Probatoire et Baccalauréat au Cameroun.",
      },
      { property: "og:url", content: canonicalUrl("/fr/terms") },
      { property: "og:locale", content: "fr_CM" },
      { property: "og:locale:alternate", content: "en_CM" },
      { property: "og:image", content: "/og-image.png" },
      { name: "twitter:title", content: "StudySpark Conditions d'utilisation" },
      {
        name: "twitter:description",
        content: "Conditions d'utilisation StudySpark pour les élèves du Cameroun.",
      },
      { name: "twitter:image", content: "/og-image.png" },
    ],
    links: [
      { rel: "canonical", href: canonicalUrl("/fr/terms") },
      ...alternateLinks("/terms", "/fr/terms"),
    ],
  }),
  component: FrenchTermsPage,
});

const SECTIONS = [1, 2, 3, 4, 5, 6, 7, 8] as const;

function FrenchTermsPage() {
  const { t, setLocale } = useI18n();
  useEffect(() => {
    setLocale("fr");
  }, [setLocale]);

  return (
    <div className="min-h-screen bg-background">
      <header className="sticky top-0 z-40 border-b border-border bg-background/80 backdrop-blur">
        <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
          <Button asChild variant="ghost" size="sm">
            <Link to="/fr">Retour à l'accueil</Link>
          </Button>
          <nav className="hidden gap-4 text-sm text-muted-foreground md:flex">
            <Link to="/fr/privacy" className="hover:text-foreground">
              Confidentialité
            </Link>
            <Link to="/fr/refund" className="hover:text-foreground">
              Remboursement
            </Link>
            <Link to="/fr/tarifs" className="hover:text-foreground">
              Tarifs
            </Link>
            <Link to="/terms" className="hover:text-foreground">
              English
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
            <p className="font-medium text-foreground">Politiques liées</p>
            <p className="mt-2 flex flex-wrap gap-3 text-muted-foreground">
              <Link to="/fr/privacy" className="underline underline-offset-2 hover:text-foreground">
                Confidentialité
              </Link>
              <Link to="/fr/refund" className="underline underline-offset-2 hover:text-foreground">
                Remboursement
              </Link>
              <Link to="/fr/tarifs" className="underline underline-offset-2 hover:text-foreground">
                Tarifs
              </Link>
              <Link to="/support" className="underline underline-offset-2 hover:text-foreground">
                Assistance
              </Link>
            </p>
          </div>
          <footer className="mt-12 border-t border-border pt-8 text-center text-sm text-muted-foreground">
            © {new Date().getFullYear()} StudySpark. Fait pour les élèves du Cameroun.
          </footer>
        </div>
      </main>
    </div>
  );
}
