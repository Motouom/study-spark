import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useState,
  type ReactNode,
} from "react";
import type { Language } from "@/lib/study-reference-data";

export type Locale = "en" | "fr";
export type TranslationKey = keyof typeof en;

const STORAGE_KEY = "studyspark.locale";

const en = {
  "common.accountPayments": "Account and payments",
  "common.advancedSearch": "Advanced search",
  "common.availableNow": "available now",
  "common.bookmarks": "Bookmarks",
  "common.cancel": "Cancel",
  "common.cheatsheets": "Cheatsheets",
  "common.clearFilters": "Clear filters",
  "common.clearSearch": "Clear search",
  "common.continue": "Continue",
  "common.courses": "Courses",
  "common.dashboard": "Dashboard",
  "common.email": "Email",
  "common.free": "Free",
  "common.language": "Language",
  "common.learningPath": "Learning path",
  "common.leaderboard": "Leaderboard",
  "common.loading": "Loading...",
  "common.notifications": "Notifications",
  "common.papers": "Papers",
  "common.premium": "Premium",
  "common.ready": "Ready",
  "common.search": "Search",
  "common.settings": "Settings",
  "common.signOut": "Sign out",
  "common.subjects": "Subjects",
  "common.support": "Support",
  "common.viewPremium": "View Premium",
  "dashboard.analyticsTitle": "Premium progress analytics",
  "dashboard.analyticsDescription":
    "Upgrade to unlock streaks, pass rate, timing, mastery, and your personalized learning path.",
  "dashboard.avgReadDepth": "Avg. read depth",
  "dashboard.bookmarksHint": "bookmarks",
  "dashboard.continueReading": "Continue reading",
  "dashboard.currentStreak": "Current streak",
  "dashboard.dailyGoal": "Today's goal",
  "dashboard.dailyGoalHint": "15 min of study",
  "dashboard.noPaper": "No published paper is available for your profile yet.",
  "dashboard.openLibrary": "Open paper library",
  "dashboard.paperActivity": "Recent paper activity",
  "dashboard.paperActivityDescription":
    "Your latest paper reading sessions. Read depth is context; passed and review marks remain the stronger progress signal.",
  "dashboard.papersOpened": "Papers opened",
  "dashboard.readThrough": "read through",
  "dashboard.recommendedPaper": "Recommended paper",
  "dashboard.reviewMarks": "review marks",
  "dashboard.startReading": "Start reading",
  "dashboard.startToday": "start today",
  "dashboard.studySignals": "Study signals",
  "dashboard.studySignalsDescription": "Useful marks you add while studying.",
  "dashboard.studyTime": "Study time",
  "dashboard.weeklyPerformance": "Weekly performance",
  "dashboard.weeklyPerformanceHint": "Daily study minutes",
  "dashboard.masteryBySubject": "Mastery by subject",
  "dashboard.masteryBySubjectHint": "Reading depth and study signals",
  "dashboard.noSessionsYet": "No study sessions yet",
  "dashboard.studySessions": "study sessions",
  "dashboard.weeklyEmpty": "Study for a few minutes to see your weekly trend.",
  "dashboard.masteryEmpty": "Your subject mastery will appear here once you start studying.",
  "dashboard.whereLeftOff": "Continue where you left off",
  "library.descriptionFallback": "Your class and series",
  "library.empty": "No papers match your filters.",
  "library.protectedNotice":
    "Questions are opened inside the app only. Copying, downloads, and bulk viewing are disabled in the student flow.",
  "library.searchPlaceholder": "Search all papers by title, subject, or series...",
  "library.searchResults": "Search results",
  "library.noSearchResults": 'No papers match "{query}".',
  "library.title": "Papers",
  "courses.continueCourse": "Continue course",
  "courses.continueLearning": "Continue learning",
  "courses.description":
    "Topic-by-topic GCE lessons with worked examples and exam technique — built for your class and series.",
  "courses.emptyTitle": "No courses for your profile yet",
  "courses.emptyDescription":
    "Complete subject courses will appear here once they are published for your class, series, and subjects. Check back soon, or keep practising with papers in the meantime.",
  "courses.premiumDescription":
    "Upgrade to access full subject courses, lesson sequences, and guided revision.",
  "courses.premiumTitle": "Premium courses",
  "courses.searchPlaceholder": "Search course topics, subject, or lesson...",
  "courses.title": "Courses",
  "cheatsheets.description":
    "Fast GCE revision cards for formulas, definitions, exam traps, and last-minute practice.",
  "cheatsheets.emptyDescription":
    "Cheatsheets will appear here when revision cards match your class, series, language, and selected subjects.",
  "cheatsheets.emptyTitle": "No cheatsheets for your profile yet",
  "cheatsheets.premiumDescription":
    "Upgrade to access focused revision cards across your selected subjects.",
  "cheatsheets.premiumTitle": "Premium cheatsheets",
  "cheatsheets.searchPlaceholder": "Search cheatsheet topics, formulas, or subject...",
  "cheatsheets.title": "Cheatsheets",
  "settings.accountDeletion": "Account deletion",
  "settings.appearance": "Appearance",
  "settings.curriculumPath": "Curriculum path",
  "settings.displayName": "Display name",
  "settings.emailHint": "Managed by your sign-in provider",
  "settings.languageHint": "Controls interface and support messaging language",
  "settings.profile": "Profile",
  "settings.profileDescription": "Customize your learner identity and access.",
  "settings.saveProfile": "Save profile",
  "settings.title": "Settings",
  "settings.description": "Manage your profile, exam prep, and preferences.",
  "signin.agreement": "By continuing you agree to our terms and privacy policy.",
  "signin.continueEmail": "Continue with email",
  "signin.continueGoogle": "Continue with Google",
  "signin.emailAddress": "Email address",
  "signin.openingDashboard": "Opening your dashboard...",
  "signin.openingGoogle": "Opening Google...",
  "signin.openingProfile": "Opening profile setup...",
  "signin.passwordSummary": "Or sign in with email and password",
  "signin.setupProfile": "Set up your profile",
  "signin.subtitle":
    "Sign in to keep your streak, topic practice, and progress synced across all your devices.",
  "signin.title": "Welcome back.",
  "signin.or": "or",
  "support.title": "Support",
  "support.description": "Priority support is available to every signed-in learner.",
  "support.contactTitle": "Contact support",
  "support.categoryLabel": "What is your issue about?",
  "support.messageLabel": "Describe the problem",
  "support.messagePlaceholder": "Tell us what happened, what you expected, and what you tried...",
  "support.contextNote": "This information will be attached to help us respond faster. No private keys or tokens are included.",
  "support.sendEmail": "Send via email",
  "support.sendWhatsApp": "Send via WhatsApp",
  "support.sentNote": "Your message app should have opened with the request pre-filled. We reply within 24 hours.",
  "support.directEmail": "No app? Write directly to",
  "support.expectTitle": "What to expect",
  "support.expect1": "Login and Premium access issues: we aim to respond within 24 hours.",
  "support.expect2": "Payment problems: include your transaction reference if you have one — we resolve most within 48 hours.",
  "support.expect3": "Content issues (wrong paper, missing subject): reviewed within 3–5 days.",
  "support.quickLinksTitle": "Common help topics",
  "support.linkPayment": "Payment and Premium upgrade",
  "support.linkAccount": "Account and profile settings",
  "support.linkPapers": "Browse available papers",
  "support.linkSignIn": "Sign-in help",
} as const;

const fr: Partial<Record<TranslationKey, string>> = {
  "common.accountPayments": "Compte et paiements",
  "common.advancedSearch": "Recherche avancée",
  "common.availableNow": "disponibles maintenant",
  "common.bookmarks": "Favoris",
  "common.cancel": "Annuler",
  "common.cheatsheets": "Fiches de révision",
  "common.clearFilters": "Effacer les filtres",
  "common.clearSearch": "Effacer la recherche",
  "common.continue": "Continuer",
  "common.courses": "Cours",
  "common.dashboard": "Tableau de bord",
  "common.email": "E-mail",
  "common.free": "Gratuit",
  "common.language": "Langue",
  "common.learningPath": "Parcours d'apprentissage",
  "common.leaderboard": "Classement",
  "common.loading": "Chargement...",
  "common.notifications": "Notifications",
  "common.papers": "Épreuves",
  "common.premium": "Premium",
  "common.ready": "Prêt",
  "common.search": "Rechercher",
  "common.settings": "Paramètres",
  "common.signOut": "Se déconnecter",
  "common.subjects": "Matières",
  "common.support": "Assistance",
  "common.viewPremium": "Voir Premium",
  "dashboard.analyticsTitle": "Analyses Premium de progression",
  "dashboard.analyticsDescription":
    "Passe à Premium pour débloquer les séries, le taux de réussite, le temps d'étude, la maîtrise et ton parcours personnalisé.",
  "dashboard.avgReadDepth": "Lecture moyenne",
  "dashboard.bookmarksHint": "favoris",
  "dashboard.continueReading": "Continuer la lecture",
  "dashboard.currentStreak": "Série actuelle",
  "dashboard.dailyGoal": "Objectif du jour",
  "dashboard.dailyGoalHint": "15 min d'étude",
  "dashboard.noPaper": "Aucune épreuve publiée n'est encore disponible pour ton profil.",
  "dashboard.openLibrary": "Ouvrir les épreuves",
  "dashboard.paperActivity": "Activité récente",
  "dashboard.paperActivityDescription":
    "Tes dernières sessions de lecture. Le pourcentage lu sert de contexte; les questions réussies et les points à revoir restent plus importants.",
  "dashboard.papersOpened": "Épreuves ouvertes",
  "dashboard.readThrough": "lues jusqu'au bout",
  "dashboard.recommendedPaper": "Épreuve recommandée",
  "dashboard.reviewMarks": "points à revoir",
  "dashboard.startReading": "Commencer la lecture",
  "dashboard.startToday": "commence aujourd'hui",
  "dashboard.studySignals": "Signaux d'étude",
  "dashboard.studySignalsDescription": "Marques utiles ajoutées pendant ton étude.",
  "dashboard.studyTime": "Temps d'étude",
  "dashboard.weeklyPerformance": "Performance hebdomadaire",
  "dashboard.weeklyPerformanceHint": "Minutes étudiées par jour",
  "dashboard.masteryBySubject": "Maîtrise par matière",
  "dashboard.masteryBySubjectHint": "Lecture et signaux d'étude",
  "dashboard.noSessionsYet": "Aucune session pour le moment",
  "dashboard.studySessions": "sessions d'étude",
  "dashboard.weeklyEmpty": "Étudie quelques minutes pour voir ta tendance hebdomadaire.",
  "dashboard.masteryEmpty":
    "Ta maîtrise par matière apparaîtra ici quand tu commenceras à étudier.",
  "dashboard.whereLeftOff": "Reprendre là où tu t'es arrêté",
  "library.descriptionFallback": "Ta classe et ta série",
  "library.empty": "Aucune épreuve ne correspond à tes filtres.",
  "library.protectedNotice":
    "Les questions s'ouvrent uniquement dans l'application. La copie, les téléchargements et l'affichage massif sont désactivés pour les élèves.",
  "library.searchPlaceholder": "Rechercher une épreuve par titre, matière ou série...",
  "library.searchResults": "Résultats de recherche",
  "library.noSearchResults": 'Aucune épreuve ne correspond à "{query}".',
  "library.title": "Épreuves",
  "courses.continueCourse": "Continuer le cours",
  "courses.continueLearning": "Continuer l'apprentissage",
  "courses.description":
    "Cours par thème avec exemples corrigés et méthode d'examen, adaptés à ta classe et ta série.",
  "courses.emptyTitle": "Aucun cours pour ton profil pour le moment",
  "courses.emptyDescription":
    "Les cours complets apparaîtront ici dès qu'ils seront publiés pour ta classe, ta série et tes matières. En attendant, continue avec les épreuves.",
  "courses.premiumDescription":
    "Passe à Premium pour accéder aux cours complets, aux séquences et à la révision guidée.",
  "courses.premiumTitle": "Cours Premium",
  "courses.searchPlaceholder": "Rechercher des thèmes, matières ou leçons...",
  "courses.title": "Cours",
  "cheatsheets.description":
    "Fiches rapides pour formules, définitions, pièges d'examen et révision de dernière minute.",
  "cheatsheets.emptyDescription":
    "Les fiches apparaîtront ici quand elles correspondront à ta classe, ta série, ta langue et tes matières.",
  "cheatsheets.emptyTitle": "Aucune fiche pour ton profil pour le moment",
  "cheatsheets.premiumDescription":
    "Passe à Premium pour accéder aux fiches ciblées de tes matières.",
  "cheatsheets.premiumTitle": "Fiches Premium",
  "cheatsheets.searchPlaceholder": "Rechercher des fiches, formules ou matières...",
  "cheatsheets.title": "Fiches de révision",
  "settings.accountDeletion": "Suppression du compte",
  "settings.appearance": "Apparence",
  "settings.curriculumPath": "Parcours scolaire",
  "settings.displayName": "Nom affiché",
  "settings.emailHint": "Géré par ton fournisseur de connexion",
  "settings.languageHint": "Contrôle l'interface et les messages d'assistance",
  "settings.profile": "Profil",
  "settings.profileDescription": "Personnalise ton identité d'élève et ton accès.",
  "settings.saveProfile": "Enregistrer le profil",
  "settings.title": "Paramètres",
  "settings.description": "Gère ton profil, ta préparation aux examens et tes préférences.",
  "signin.agreement":
    "En continuant, tu acceptes nos conditions et notre politique de confidentialité.",
  "signin.continueEmail": "Continuer avec e-mail",
  "signin.continueGoogle": "Continuer avec Google",
  "signin.emailAddress": "Adresse e-mail",
  "signin.openingDashboard": "Ouverture du tableau de bord...",
  "signin.openingGoogle": "Ouverture de Google...",
  "signin.openingProfile": "Ouverture de la configuration du profil...",
  "signin.passwordSummary": "Ou se connecter avec e-mail et mot de passe",
  "signin.setupProfile": "Configurer ton profil",
  "signin.subtitle":
    "Connecte-toi pour synchroniser ta série, tes exercices par thème et ta progression sur tous tes appareils.",
  "signin.title": "Bon retour.",
  "signin.or": "ou",
  "support.title": "Assistance",
  "support.description": "Une assistance prioritaire est disponible pour chaque élève connecté.",
  "support.contactTitle": "Contacter l'assistance",
  "support.categoryLabel": "Quel est ton problème ?",
  "support.messageLabel": "Décris le problème",
  "support.messagePlaceholder": "Explique ce qui s'est passé, ce que tu attendais et ce que tu as essayé...",
  "support.contextNote": "Ces informations seront jointes pour nous aider à répondre plus vite. Aucune clé privée ni token n'est inclus.",
  "support.sendEmail": "Envoyer par e-mail",
  "support.sendWhatsApp": "Envoyer par WhatsApp",
  "support.sentNote": "Ton application de messagerie devrait s'être ouverte avec la demande pré-remplie. Nous répondons sous 24 heures.",
  "support.directEmail": "Pas d'application ? Écris-nous directement à",
  "support.expectTitle": "Ce à quoi s'attendre",
  "support.expect1": "Problèmes de connexion et d'accès Premium : nous visons une réponse sous 24 heures.",
  "support.expect2": "Problèmes de paiement : inclure ta référence de transaction si tu l'as — la plupart des cas sont résolus sous 48 heures.",
  "support.expect3": "Problèmes de contenu (mauvaise épreuve, matière manquante) : traités sous 3 à 5 jours.",
  "support.quickLinksTitle": "Sujets d'aide fréquents",
  "support.linkPayment": "Paiement et mise à niveau Premium",
  "support.linkAccount": "Compte et paramètres du profil",
  "support.linkPapers": "Parcourir les épreuves disponibles",
  "support.linkSignIn": "Aide à la connexion",
};

const dictionaries = { en, fr };

type I18nContextValue = {
  locale: Locale;
  setLocale: (locale: Locale) => void;
  t: (key: TranslationKey) => string;
};

const I18nContext = createContext<I18nContextValue | null>(null);

export function languageToLocale(language?: Language | null): Locale {
  return language === "french" ? "fr" : "en";
}

export function localeToLanguage(locale: Locale): Language {
  return locale === "fr" ? "french" : "english";
}

function detectInitialLocale(): Locale {
  if (typeof window === "undefined") return "en";
  const saved = window.localStorage.getItem(STORAGE_KEY);
  if (saved === "en" || saved === "fr") return saved;
  return window.navigator.language.toLowerCase().startsWith("fr") ? "fr" : "en";
}

export function I18nProvider({ children }: { children: ReactNode }) {
  const [locale, setLocaleState] = useState<Locale>(detectInitialLocale);

  const setLocale = useCallback((nextLocale: Locale) => {
    setLocaleState(nextLocale);
    window.localStorage.setItem(STORAGE_KEY, nextLocale);
  }, []);

  useEffect(() => {
    document.documentElement.lang = locale;
  }, [locale]);

  const t = useCallback(
    (key: TranslationKey) => dictionaries[locale][key] ?? dictionaries.en[key] ?? key,
    [locale],
  );

  const value = useMemo(() => ({ locale, setLocale, t }), [locale, setLocale, t]);

  return <I18nContext.Provider value={value}>{children}</I18nContext.Provider>;
}

export function useI18n() {
  const context = useContext(I18nContext);
  if (!context) throw new Error("useI18n must be used inside I18nProvider");
  return context;
}

export function useSyncLocaleFromProfile(language?: Language | null) {
  const { locale, setLocale } = useI18n();
  useEffect(() => {
    if (!language) return;
    const profileLocale = languageToLocale(language);
    if (profileLocale !== locale) setLocale(profileLocale);
  }, [language, locale, setLocale]);
}
