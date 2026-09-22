import { createFileRoute, Link } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { useI18n } from "@/lib/i18n";
import { alternateLinks, canonicalUrl } from "@/lib/seo";
import { useEffect } from "react";

export const Route = createFileRoute("/fr/privacy")({
  head: () => ({
    meta: [
      { title: "StudySpark Politique de confidentialité - Cameroun" },
      {
        name: "description",
        content:
          "Politique de confidentialité StudySpark : données de compte, progression, analyses et usage IA pour les élèves du Cameroun. Fapshi, Supabase, Vercel.",
      },
      { property: "og:title", content: "StudySpark Politique de confidentialité" },
      {
        property: "og:description",
        content: "Comment StudySpark collecte et protège vos données au Cameroun.",
      },
      { property: "og:url", content: canonicalUrl("/fr/privacy") },
      { property: "og:locale", content: "fr_CM" },
      { property: "og:locale:alternate", content: "en_CM" },
      { property: "og:image", content: "/og-image.png" },
      { name: "twitter:title", content: "StudySpark Politique de confidentialité" },
      {
        name: "twitter:description",
        content: "Politique de confidentialité StudySpark pour les élèves du Cameroun.",
      },
      { name: "twitter:image", content: "/og-image.png" },
    ],
    links: [
      { rel: "canonical", href: canonicalUrl("/fr/privacy") },
      ...alternateLinks("/privacy", "/fr/privacy"),
    ],
  }),
  component: FrenchPrivacyPage,
});

const SECTIONS = [1, 2, 3, 4, 5, 6, 7] as const;

function FrenchPrivacyPage() {
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
            <Link to="/fr/refund" className="hover:text-foreground">
              Remboursement
            </Link>
            <Link to="/fr/tarifs" className="hover:text-foreground">
              Tarifs
            </Link>
            <Link to="/privacy" className="hover:text-foreground">
              English
            </Link>
          </nav>
        </div>
      </header>

      <main className="px-6 py-12 md:py-20">
        <div className="mx-auto max-w-3xl">
          <h1 className="font-display text-4xl text-foreground">{t("privacy.title")}</h1>
          <p className="mt-2 text-sm text-muted-foreground">{t("privacy.effective")}</p>
          <div className="prose max-w-none mt-6 text-muted-foreground">
            <p>{t("privacy.introduction")}</p>
          </div>
          <div className="mt-12 space-y-10">
            {SECTIONS.map((n) => (
              <section key={n}>
                <h2 className="text-lg font-semibold text-foreground">
                  {t(`privacy.sections.${n}` as never)}
                </h2>
                <p className="mt-2 text-sm leading-relaxed text-muted-foreground">
                  {t(`privacy.sections.${n}.desc` as never)}
                </p>
              </section>
            ))}
          </div>
          <div className="mt-12 rounded-xl border border-border bg-card p-5 text-sm">
            <p className="font-medium text-foreground">Politiques liées</p>
            <p className="mt-2 flex flex-wrap gap-3 text-muted-foreground">
              <Link to="/fr/terms" className="underline underline-offset-2 hover:text-foreground">
                Conditions
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
