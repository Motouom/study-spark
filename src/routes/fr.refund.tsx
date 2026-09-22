import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { useI18n } from "@/lib/i18n";
import { alternateLinks, canonicalUrl } from "@/lib/seo";
import { useEffect } from "react";

export const Route = createFileRoute("/fr/refund")({
  head: () => ({
    meta: [
      { title: "StudySpark Politique de remboursement - Cameroun" },
      {
        name: "description",
        content:
          "Politique de remboursement StudySpark Premium via Fapshi pour le Cameroun. Tarifs FCFA, Mobile Money, fenêtre 7 jours, assistance.",
      },
      { property: "og:title", content: "StudySpark Remboursement et annulation" },
      {
        property: "og:description",
        content: "Remboursement Premium StudySpark via Fapshi au Cameroun : FCFA, 7 jours, assistance.",
      },
      { property: "og:url", content: canonicalUrl("/fr/refund") },
      { property: "og:locale", content: "fr_CM" },
      { property: "og:locale:alternate", content: "en_CM" },
      { property: "og:image", content: "/og-image.png" },
      { name: "twitter:title", content: "StudySpark Remboursement" },
      {
        name: "twitter:description",
        content: "Politique de remboursement StudySpark pour les élèves du Cameroun.",
      },
      { name: "twitter:image", content: "/og-image.png" },
    ],
    links: [
      { rel: "canonical", href: canonicalUrl("/fr/refund") },
      ...alternateLinks("/refund", "/fr/refund"),
    ],
  }),
  component: FrenchRefundPage,
});

const SECTIONS = [1, 2, 3, 4, 5, 6] as const;

function FrenchRefundPage() {
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
            <Link to="/fr/terms" className="hover:text-foreground">
              Conditions
            </Link>
            <Link to="/fr/privacy" className="hover:text-foreground">
              Confidentialité
            </Link>
            <Link to="/fr/tarifs" className="hover:text-foreground">
              Tarifs
            </Link>
            <Link to="/refund" className="hover:text-foreground">
              English
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
            <p className="font-medium text-foreground">Besoin d'aide pour un paiement ?</p>
            <p className="mt-1 text-muted-foreground">
              Visitez <Link to="/support" className="underline hover:text-foreground">Assistance</Link> ou
              écrivez à <a href="mailto:support@studyspark.cm" className="underline">support@studyspark.cm</a>.
              Joignez votre référence visible dans{" "}
              <Link to="/settings" className="underline">Paramètres → Historique</Link> ou{" "}
              <Link to="/fr/tarifs" className="underline">Tarifs</Link>.
            </p>
          </div>
          <div className="mt-8 rounded-xl border border-border bg-card p-5 text-sm">
            <p className="font-medium text-foreground">Politiques liées</p>
            <p className="mt-2 flex flex-wrap gap-3 text-muted-foreground">
              <Link to="/fr/terms" className="underline underline-offset-2 hover:text-foreground">
                Conditions
              </Link>
              <Link to="/fr/privacy" className="underline underline-offset-2 hover:text-foreground">
                Confidentialité
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
