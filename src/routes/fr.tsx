import { createFileRoute, Link, Outlet, useNavigate, useRouterState } from "@tanstack/react-router";
import { motion } from "framer-motion";
import { useEffect } from "react";
import {
  ArrowRight,
  BookOpen,
  CheckCircle2,
  LineChart,
  Lock,
  Search,
  Sparkles,
} from "lucide-react";
import { Logo } from "@/components/Logo";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { useStudyProfile } from "@/hooks/use-study-profile";
import {
  alternateLinks,
  canonicalUrl,
  frenchEducationalAppSchema,
  FRENCH_SEO_DESCRIPTION,
  FRENCH_SEO_TITLE,
  OG_IMAGE_URL,
} from "@/lib/seo";
import { useI18n } from "@/lib/i18n";

export const Route = createFileRoute("/fr")({
  head: () => ({
    meta: [
      { title: FRENCH_SEO_TITLE },
      { name: "description", content: FRENCH_SEO_DESCRIPTION },
      {
        name: "keywords",
        content:
          "révision Cameroun, sujets BEPC, sujets Probatoire, sujets Baccalauréat, Terminale C, Terminale D, Premiere, mathématiques Cameroun, physique chimie, SVT, philosophie, corrigés Cameroun, préparation examen Cameroun",
      },
      { property: "og:title", content: FRENCH_SEO_TITLE },
      { property: "og:description", content: FRENCH_SEO_DESCRIPTION },
      { property: "og:url", content: canonicalUrl("/fr") },
      { property: "og:type", content: "website" },
      { property: "og:locale", content: "fr_CM" },
      { property: "og:locale:alternate", content: "en_CM" },
      { property: "og:image", content: OG_IMAGE_URL },
      {
        property: "og:image:alt",
        content: "StudySpark pour la révision des examens au Cameroun",
      },
      { name: "twitter:title", content: FRENCH_SEO_TITLE },
      { name: "twitter:description", content: FRENCH_SEO_DESCRIPTION },
      { name: "twitter:image", content: OG_IMAGE_URL },
    ],
    links: [{ rel: "canonical", href: canonicalUrl("/fr") }, ...alternateLinks("/", "/fr")],
  }),
  component: FrenchLanding,
});

function FrenchLanding() {
  const navigate = useNavigate();
  const pathname = useRouterState({ select: (state) => state.location.pathname });
  const { setLocale } = useI18n();
  const { user, profile, loaded } = useStudyProfile();

  useEffect(() => {
    setLocale("fr");
  }, [setLocale]);

  useEffect(() => {
    if (pathname !== "/fr") return;
    if (!loaded || !user) return;
    void navigate({ to: profile ? "/dashboard" : "/onboarding", replace: true });
  }, [loaded, navigate, pathname, profile, user]);

  if (pathname !== "/fr") {
    return <Outlet />;
  }

  if (loaded && user) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-background px-6 text-center">
        <p className="text-sm text-muted-foreground">
          {profile ? "Ouverture du tableau de bord..." : "Ouverture du profil..."}
        </p>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(frenchEducationalAppSchema()) }}
      />
      <header className="sticky top-0 z-40 border-b border-border/60 bg-background/80 backdrop-blur">
        <div className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
          <Logo />
          <nav className="hidden items-center gap-8 text-sm text-muted-foreground md:flex">
            <a href="#preuves" className="hover:text-foreground">
              Épreuves
            </a>
            <a href="#fonctionnement" className="hover:text-foreground">
              Comment ça marche
            </a>
            <Link to="/fr/tarifs" className="hover:text-foreground">
              Tarifs
            </Link>
            <Link to="/fr/terms" className="hover:text-foreground">
              Conditions
            </Link>
            <Link to="/fr/privacy" className="hover:text-foreground">
              Confidentialité
            </Link>
            <Link to="/fr/refund" className="hover:text-foreground">
              Remboursement
            </Link>
            <Link to="/" className="hover:text-foreground">
              English
            </Link>
          </nav>
          <div className="flex items-center gap-2">
            <Button asChild variant="ghost" size="sm">
              <Link to="/signin">Connexion</Link>
            </Button>
            <Button asChild size="sm">
              <Link to="/onboarding">
                Commencer <ArrowRight className="ml-1 h-4 w-4" />
              </Link>
            </Button>
          </div>
        </div>
      </header>

      <main>
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
                Révision BEPC, Probatoire et Baccalauréat au Cameroun
              </Badge>
              <h1 className="font-display text-5xl leading-[1.05] tracking-tight text-foreground md:text-7xl">
                Prépare tes examens avec des sujets{" "}
                <span className="italic text-muted-foreground">organisés par filière.</span>
              </h1>
              <p className="mx-auto mt-6 max-w-xl text-lg text-muted-foreground">
                StudySpark aide les élèves de Troisième, Première et Terminale à réviser les
                mathématiques, la physique-chimie, la SVT, le français, la philosophie et plus, avec
                des contenus protégés et un suivi clair.
              </p>
              <div className="mt-10 flex flex-col items-center justify-center gap-3 sm:flex-row">
                <Button asChild size="lg" className="h-12 px-6 text-base">
                  <Link to="/onboarding">
                    Créer mon profil <ArrowRight className="ml-1.5 h-4 w-4" />
                  </Link>
                </Button>
                <Button asChild size="lg" variant="outline" className="h-12 px-6 text-base">
                  <Link to="/fr/tarifs">Voir les tarifs</Link>
                </Button>
              </div>
            </motion.div>
          </div>
        </section>

        <section id="preuves" className="border-t border-border bg-surface">
          <div className="mx-auto max-w-6xl px-6 py-24">
            <div className="max-w-2xl">
              <p className="text-sm text-muted-foreground">Pour le parcours francophone</p>
              <h2 className="mt-2 font-display text-4xl text-foreground md:text-5xl">
                Des révisions qui parlent le langage des élèves camerounais.
              </h2>
              <p className="mt-4 text-sm leading-relaxed text-muted-foreground">
                Les contenus sont organisés par classe, examen, série et matière: BEPC, Probatoire,
                Baccalauréat, Terminale C, Terminale D, série A, TI, ACC, CG, FIG et SES.
              </p>
            </div>
            <div className="mt-14 grid gap-px overflow-hidden rounded-2xl border border-border bg-border md:grid-cols-2 lg:grid-cols-3">
              {[
                {
                  icon: <BookOpen className="h-5 w-5" />,
                  title: "Sujets protégés",
                  desc: "Les sujets restent dans l'application pour protéger le contenu et garder l'étude concentrée.",
                },
                {
                  icon: <CheckCircle2 className="h-5 w-5" />,
                  title: "Par thème",
                  desc: "Cours, fiches et épreuves sont liés aux thèmes que l'élève doit vraiment maîtriser.",
                },
                {
                  icon: <LineChart className="h-5 w-5" />,
                  title: "Progression utile",
                  desc: "L'élève marque ce qu'il a réussi ou raté, puis voit les points faibles à reprendre.",
                },
                {
                  icon: <Search className="h-5 w-5" />,
                  title: "Recherche rapide",
                  desc: "Retrouver un sujet par matière, examen, série, classe ou titre long sans se perdre.",
                },
                {
                  icon: <Lock className="h-5 w-5" />,
                  title: "Accès par profil",
                  desc: "Un élève de Terminale D voit les contenus qui correspondent à sa classe, sa série et ses matières.",
                },
                {
                  icon: <Sparkles className="h-5 w-5" />,
                  title: "Parcours guidé",
                  desc: "Le parcours d'apprentissage peut utiliser les questions ratées et les thèmes faibles pour prioriser la révision.",
                },
              ].map((item) => (
                <div key={item.title} className="bg-card p-7">
                  <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                    {item.icon}
                  </div>
                  <h3 className="mt-5 text-base font-medium text-foreground">{item.title}</h3>
                  <p className="mt-2 text-sm leading-relaxed text-muted-foreground">{item.desc}</p>
                </div>
              ))}
            </div>
          </div>
        </section>

        <section id="fonctionnement" className="border-t border-border">
          <div className="mx-auto grid max-w-6xl gap-12 px-6 py-24 md:grid-cols-2">
            <div>
              <p className="text-sm text-muted-foreground">Comment ça marche</p>
              <h2 className="mt-2 font-display text-4xl text-foreground md:text-5xl">
                Choisis ton profil. Travaille. Mesure tes progrès.
              </h2>
            </div>
            <div className="space-y-3">
              {[
                ["01", "Choisir Français, la classe, la série et les matières."],
                ["02", "Ouvrir les sujets, cours et fiches adaptés au profil."],
                ["03", "Marquer les questions réussies ou ratées pour mieux réviser."],
              ].map(([step, text]) => (
                <div key={step} className="flex gap-5 rounded-xl border border-border bg-card p-6">
                  <span className="font-display text-3xl text-muted-foreground">{step}</span>
                  <p className="text-sm leading-relaxed text-muted-foreground">{text}</p>
                </div>
              ))}
            </div>
          </div>
        </section>

        <section className="border-t border-border bg-surface">
          <div className="mx-auto max-w-4xl px-6 py-24 text-center">
            <h2 className="font-display text-4xl text-foreground md:text-6xl">
              Prêt à réviser avec une plateforme faite pour le Cameroun?
            </h2>
            <p className="mx-auto mt-5 max-w-lg text-muted-foreground">
              Commence gratuitement, puis passe à Premium quand tu veux débloquer plus de sujets, de
              fiches et de parcours guidés.
            </p>
            <div className="mt-10 flex flex-col items-center justify-center gap-3 sm:flex-row">
              <Button asChild size="lg" className="h-12 px-6">
                <Link to="/onboarding">Commencer gratuitement</Link>
              </Button>
              <Button asChild size="lg" variant="outline" className="h-12 px-6">
                <Link to="/fr/tarifs">Comparer les offres</Link>
              </Button>
            </div>
          </div>
        </section>
      </main>

      <footer className="border-t border-border bg-surface">
        <div className="mx-auto flex max-w-6xl flex-col items-center justify-between gap-4 px-6 py-10 text-sm text-muted-foreground md:flex-row">
          <Logo />
          <nav className="flex flex-wrap gap-4">
            <Link to="/fr/terms" className="hover:text-foreground">
              Conditions
            </Link>
            <Link to="/fr/privacy" className="hover:text-foreground">
              Confidentialité
            </Link>
            <Link to="/fr/refund" className="hover:text-foreground">
              Remboursement
            </Link>
            <Link to="/fr/tarifs" className="hover:text-foreground">
              Tarifs
            </Link>
            <Link to="/support" className="hover:text-foreground">
              Assistance
            </Link>
          </nav>
          <p>StudySpark. Révision faite pour les élèves du Cameroun.</p>
        </div>
      </footer>
    </div>
  );
}
