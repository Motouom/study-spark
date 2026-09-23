import { createFileRoute, Link } from "@tanstack/react-router";
import { ArrowLeft, Check, Sparkles, X } from "lucide-react";
import { Logo } from "@/components/Logo";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
  alternateLinks,
  canonicalUrl,
  frenchPricingSchema,
  jsonLdScript,
  OG_IMAGE_URL,
} from "@/lib/seo";
import { useI18n } from "@/lib/i18n";
import { useEffect } from "react";

const description =
  "Tarifs StudySpark pour les élèves francophones du Cameroun: aperçu gratuit puis Premium pour les sujets protégés, cours, fiches, parcours guidé et suivi de progression.";

export const Route = createFileRoute("/fr/tarifs")({
  head: () => ({
    meta: [
      { title: "Tarifs StudySpark - Révision BEPC, Probatoire et Baccalauréat" },
      { name: "description", content: description },
      {
        name: "keywords",
        content:
          "tarifs StudySpark Cameroun, révision BEPC Cameroun, révision Probatoire, révision Baccalauréat, sujets protégés Cameroun, cours Terminale Cameroun",
      },
      {
        property: "og:title",
        content: "Tarifs StudySpark pour les élèves francophones du Cameroun",
      },
      { property: "og:description", content: description },
      { property: "og:url", content: canonicalUrl("/fr/tarifs") },
      { property: "og:type", content: "website" },
      { property: "og:locale", content: "fr_CM" },
      { property: "og:locale:alternate", content: "en_CM" },
      { property: "og:image", content: OG_IMAGE_URL },
      {
        property: "og:image:alt",
        content: "Tarifs StudySpark pour la révision au Cameroun",
      },
      { name: "twitter:title", content: "Tarifs StudySpark - Révision Cameroun" },
      { name: "twitter:description", content: description },
      { name: "twitter:image", content: OG_IMAGE_URL },
    ],
    links: [
      { rel: "canonical", href: canonicalUrl("/fr/tarifs") },
      ...alternateLinks("/pricing", "/fr/tarifs"),
    ],
  }),
  component: FrenchPricingPage,
});

const features = [
  { name: "Aperçu gratuit de la plateforme", free: true, premium: true },
  { name: "Accès par classe, série et matière", free: true, premium: true },
  { name: "Support prioritaire", free: true, premium: true },
  { name: "Sujets protégés illimités", free: false, premium: true },
  { name: "Cours complets par thème", free: false, premium: true },
  { name: "Fiches de révision BEPC, Probatoire et Baccalauréat", free: false, premium: true },
  { name: "Parcours guidé par l'IA", free: false, premium: true },
  { name: "Suivi des questions réussies et ratées", free: false, premium: true },
  { name: "Recherche avancée", free: false, premium: true },
] as const;

function FrenchPricingPage() {
  const { setLocale } = useI18n();

  useEffect(() => {
    setLocale("fr");
  }, [setLocale]);

  return (
    <div className="min-h-screen bg-background">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: jsonLdScript(frenchPricingSchema()) }}
      />
      <header className="sticky top-0 z-40 border-b border-border bg-background/80 backdrop-blur">
        <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
          <Logo to="/fr" />
          <div className="flex items-center gap-2">
            <Button asChild variant="ghost" size="sm">
              <Link to="/pricing">English</Link>
            </Button>
            <Button asChild variant="ghost" size="sm">
              <Link to="/fr">
                <ArrowLeft className="mr-1 h-4 w-4" /> Retour
              </Link>
            </Button>
          </div>
        </div>
      </header>

      <main>
        <section className="px-6 py-20 text-center md:py-24">
          <Badge variant="secondary" className="mb-5 gap-1.5">
            <Sparkles className="h-3 w-3 text-accent" /> Gratuit pour découvrir
          </Badge>
          <h1 className="font-display text-5xl text-foreground md:text-7xl">
            Des tarifs simples pour réviser au Cameroun.
          </h1>
          <p className="mx-auto mt-5 max-w-xl text-muted-foreground">{description}</p>
        </section>

        <section className="mx-auto max-w-5xl px-6 pb-20">
          <div className="grid gap-5 md:grid-cols-2">
            <PlanCard
              title="Gratuit"
              price="FCFA 0"
              subtitle="Pour tester StudySpark sans engagement."
              cta="Commencer"
              to="/onboarding"
              features={features.filter((feature) => feature.free).map((feature) => feature.name)}
            />
            <PlanCard
              dark
              title="Premium"
              price="FCFA 1,500"
              suffix="/mois"
              subtitle="Pour débloquer les contenus protégés et le suivi complet."
              cta="Passer à Premium"
              to="/pricing"
              features={features.map((feature) => feature.name)}
            />
          </div>
          <p className="mt-6 text-center text-xs leading-relaxed text-muted-foreground">
            Paiement FCFA sécurisé via{" "}
            <a
              href="https://www.fapshi.com"
              target="_blank"
              rel="noreferrer"
              className="underline underline-offset-2"
            >
              Fapshi
            </a>{" "}
            — Mobile Money MTN, Orange et autres canaux Fapshi selon disponibilité. En payant vous
            acceptez nos{" "}
            <Link to="/fr/refund" className="underline underline-offset-2">
              conditions de remboursement
            </Link>
            ,{" "}
            <Link to="/fr/terms" className="underline underline-offset-2">
              conditions
            </Link>{" "}
            et{" "}
            <Link to="/fr/privacy" className="underline underline-offset-2">
              confidentialité
            </Link>
            .
          </p>
        </section>
      </main>

      <footer className="border-t border-border bg-surface">
        <div className="mx-auto flex max-w-6xl flex-col items-center justify-between gap-4 px-6 py-10 text-sm text-muted-foreground md:flex-row">
          <Logo />
          <nav className="flex flex-wrap items-center gap-4">
            <Link to="/fr/terms" className="underline underline-offset-2 hover:text-foreground">
              Conditions
            </Link>
            <Link to="/fr/privacy" className="underline underline-offset-2 hover:text-foreground">
              Confidentialité
            </Link>
            <Link to="/fr/refund" className="underline underline-offset-2 hover:text-foreground">
              Remboursement
            </Link>
            <Link to="/support" className="underline underline-offset-2 hover:text-foreground">
              Assistance
            </Link>
          </nav>
          <p>© {new Date().getFullYear()} StudySpark. Fait pour les élèves du Cameroun.</p>
        </div>
      </footer>
    </div>
  );
}

function PlanCard({
  title,
  price,
  suffix,
  subtitle,
  cta,
  to,
  features,
  dark = false,
}: {
  title: string;
  price: string;
  suffix?: string;
  subtitle: string;
  cta: string;
  to: string;
  features: string[];
  dark?: boolean;
}) {
  return (
    <div
      className={
        dark
          ? "relative rounded-2xl border border-foreground bg-foreground p-8 text-background"
          : "rounded-2xl border border-border bg-card p-8"
      }
    >
      {dark && <Badge className="absolute -top-3 right-6 bg-accent">Recommandé</Badge>}
      <h2
        className={`text-sm font-medium uppercase tracking-wider ${
          dark ? "text-background/60" : "text-muted-foreground"
        }`}
      >
        {title}
      </h2>
      <div className="mt-3 flex items-baseline gap-1">
        <span className="font-display text-5xl">{price}</span>
        {suffix && (
          <span className={dark ? "text-background/60" : "text-muted-foreground"}>{suffix}</span>
        )}
      </div>
      <p className={`mt-2 text-sm ${dark ? "text-background/70" : "text-muted-foreground"}`}>
        {subtitle}
      </p>
      <Button
        asChild
        variant={dark ? "secondary" : "outline"}
        className={`mt-6 w-full ${dark ? "bg-background text-foreground hover:bg-background/90" : ""}`}
      >
        <Link to={to}>{cta}</Link>
      </Button>
      <ul className="mt-6 space-y-3 text-sm">
        {features.map((feature) => (
          <li key={feature} className="flex items-start gap-2.5">
            <Check className={`mt-0.5 h-4 w-4 shrink-0 ${dark ? "text-accent" : "text-success"}`} />
            <span>{feature}</span>
          </li>
        ))}
        {!dark && (
          <li className="flex items-start gap-2.5 text-muted-foreground">
            <X className="mt-0.5 h-4 w-4 shrink-0" />
            <span>Contenus premium limités</span>
          </li>
        )}
      </ul>
    </div>
  );
}
