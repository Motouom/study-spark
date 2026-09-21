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
  "common.read": "read",
  "common.search": "Search",
  "common.searchResults": "Search results",
  "common.settings": "Settings",
  "common.signOut": "Sign out",
  "common.subjects": "Subjects",
  "common.support": "Support",
  "common.viewPremium": "View Premium",
  "common.back": "Back",
  "common.topic": "Topic",
  "common.studied": "Studied",
  "common.courseTime": "Course time",
  "common.sheet": "Sheet",
  "common.focus": "Focus",
  "common.cheatsheet": "Cheatsheet",
  "common.quickRevision": "Quick revision",
  "common.clear": "Clear",
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
  "courses.noSearchResults": 'No course topics match "{query}".',
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
  "cheatsheets.noSearchResults": 'No cheatsheets match "{query}".',
  "cheatsheets.title": "Cheatsheets",
  "pricing.badge": "Free where it matters",
  "pricing.title": "Simple GCE revision pricing. Fair.",
  "pricing.description":
    "Free learners can preview selected Cameroon GCE papers. Premium unlocks protected O Level and A Level papers, topic courses, exam cheatsheets, AI-guided revision, tutoring, and deeper analytics.",
  "pricing.monthly": "Monthly",
  "pricing.yearly": "Yearly",
  "pricing.forever": "forever",
  "pricing.month": "month",
  "pricing.freePlanDescription": "Preview the platform before upgrading. No card needed.",
  "pricing.getStarted": "Get started",
  "pricing.recommended": "Recommended",
  "pricing.billedMonthly": "Billed monthly",
  "pricing.billedYearly": "Billed yearly",
  "pricing.payWithFapshi": "Pay with Fapshi",
  "pricing.paymentConfirmed": "Payment confirmed. Premium is now active on your account.",
  "pricing.paymentPending":
    "Payment is still pending. We will unlock Premium as soon as Fapshi confirms it.",
  "pricing.paymentNotConfirmed":
    "Payment has not been confirmed yet. If you paid, wait a moment and refresh.",
  "pricing.paymentCheckFailed": "Payment could not be checked right now. Please try again.",
  "pricing.paymentStartFailed":
    "Checkout could not be started right now. Please try again in a moment.",
  "pricing.feature": "Feature",
  "pricing.commonQuestions": "Common questions",
  "pricing.footer": "Made for Cameroon students.",
  "pricing.feature.previewPapers": "1-2 free preview papers",
  "pricing.feature.unlimitedPapers": "Unlimited protected papers",
  "pricing.feature.protectedPapers": "Protected in-app papers",
  "pricing.feature.answers": "Free answers & explanations",
  "pricing.feature.practiceMode": "Practice mode",
  "pricing.feature.accessControl": "Class and series access control",
  "pricing.feature.streaks": "Daily streaks & basic stats",
  "pricing.feature.aiPaths": "AI-personalized learning paths",
  "pricing.feature.courses": "Full courses & video lessons",
  "pricing.feature.cheatsheets": "Exam cheatsheets",
  "pricing.feature.search": "Advanced full-text search",
  "pricing.feature.freezes": "Streak freezes (1/week)",
  "pricing.feature.support": "Priority support",
  "pricing.faq.free.q": "Can students use the basics free?",
  "pricing.faq.free.a":
    "Yes. Free learners can open one or two preview papers before upgrading. The full protected GCE learner experience is Premium.",
  "pricing.faq.cancel.q": "Can I cancel anytime?",
  "pricing.faq.cancel.a": "Of course. Cancel from settings — no calls, no friction.",
  "pricing.faq.mobileMoney.q": "Do you support mobile money?",
  "pricing.faq.mobileMoney.a":
    "Payments are built around Cameroon-friendly FCFA checkout through Fapshi, with mobile money support depending on the available Fapshi channels.",
  "pricing.faq.discount.q": "Is there a student discount?",
  "pricing.faq.discount.a":
    "Premium is already priced for students in Cameroon. Schools and study groups can request bulk pricing.",
  "notifications.description": "Account reminders and paper progress updates will appear here.",
  "notifications.markAllRead": "Mark all read",
  "notifications.loadError": "Notifications could not be loaded.",
  "notifications.loading": "Checking your latest learner updates...",
  "notifications.all": "All",
  "notifications.content": "Papers",
  "notifications.progress": "Progress",
  "notifications.streak": "Streaks",
  "notifications.membership": "Account",
  "notifications.new": "New",
  "notifications.markRead": "Mark read",
  "notifications.emptyGroupTitle": "No notifications in this group",
  "notifications.emptyGroupDescription":
    "Try another category or check back after your next study activity.",
  "notifications.emptyTitle": "No notifications yet",
  "notifications.emptyDescription":
    "You will only see real profile, paper, and account updates here.",
  "notifications.generated.newPaper.title": "New paper ready",
  "notifications.generated.newPaper.body": "{title} is available for {subject}.",
  "notifications.generated.weakSubject.title": "Weak subject reminder",
  "notifications.generated.weakSubject.body":
    "{subject} is at {score}% mastery. Revisit failed structural questions.",
  "notifications.generated.streak.title": "Restart your streak",
  "notifications.generated.streak.body":
    "Mark one structural question today to start a new streak.",
  "notifications.generated.premiumEnds.title": "Premium ends soon",
  "notifications.generated.premiumEndsToday.body":
    "Your Premium access ends today. Renew early if you want uninterrupted access.",
  "notifications.generated.premiumEnds.body":
    "Your Premium access ends in {days} day(s). Renew early if you want uninterrupted access.",
  "notifications.generated.paymentFailed.title": "Payment needs attention",
  "notifications.generated.paymentFailed.body":
    "Your last Premium payment did not complete. You can retry from the pricing page.",
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
  "onboarding.welcomeTitle": "Welcome to StudySpark",
  "onboarding.welcomeDescription": "Let's set up your study space. Takes 30 seconds.",
  "onboarding.nameLabel": "What should we call you?",
  "onboarding.namePlaceholder": "Your first name",
  "onboarding.languageTitle": "Choose your study language",
  "onboarding.languageDescription":
    "Choose your interface language and the Cameroon curriculum you follow.",
  "onboarding.curriculumPath": "Curriculum path",
  "onboarding.gceHint": "Forms, O-Level, Lower Sixth, Upper Sixth",
  "onboarding.frHint": "Sixième to Terminale, BEPC, Probatoire, Bac",
  "onboarding.locationTitle": "Add your location",
  "onboarding.locationDescription":
    "This places you in the right country, regional, and local leaderboard.",
  "onboarding.country": "Country",
  "onboarding.region": "Region",
  "onboarding.city": "Town or city",
  "onboarding.cityPlaceholder": "Example: Douala, Yaounde, Buea",
  "onboarding.verifyLocation": "Verify with browser location",
  "onboarding.verifyingLocation": "Verifying location...",
  "onboarding.locationVerified": "Location verified",
  "onboarding.locationVerifiedHint":
    "Your device location was captured for leaderboard verification.",
  "onboarding.classTitle": "Choose your class",
  "onboarding.classDescriptionGce": "Select Ordinary or Advanced Level, then your class.",
  "onboarding.classDescriptionFr": "Select your cycle (Collège or Lycée), then your class.",
  "onboarding.subjectTitleGce": "Pick your subjects",
  "onboarding.subjectTitleFr": "Choisis ta filière",
  "onboarding.subjectDescriptionGce":
    "Choose your series and the subjects you want on your dashboard.",
  "onboarding.subjectDescriptionFr": "Choisis ta série et les matières pour ton tableau de bord.",
  "onboarding.useAnotherAccount": "Use another account",
  "onboarding.getStarted": "Get started",
  "onboarding.saving": "Saving...",
  "onboarding.selected": "selected",
  "support.title": "Support",
  "support.description": "Priority support is available to every signed-in learner.",
  "support.contactTitle": "Contact support",
  "support.subjectPlaceholder": "Subject",
  "support.messagePlaceholder": "Describe the issue...",
  "support.sendRequest": "Send request",
  "support.emailOpened":
    "Your email app should have opened with the request pre-filled. We reply within 24 hours.",
  "support.noEmailApp": "No email app? Write to us directly at",
  "support.autoDetails":
    "Your plan, level, and subjects are attached automatically so we can help faster.",
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
  "common.read": "lu",
  "common.search": "Rechercher",
  "common.searchResults": "Résultats de recherche",
  "common.settings": "Paramètres",
  "common.signOut": "Se déconnecter",
  "common.subjects": "Matières",
  "common.support": "Assistance",
  "common.viewPremium": "Voir Premium",
  "common.back": "Retour",
  "common.topic": "Thème",
  "common.studied": "Étudié",
  "common.courseTime": "Temps du cours",
  "common.sheet": "Fiche",
  "common.focus": "Objectif",
  "common.cheatsheet": "Fiche",
  "common.quickRevision": "Révision rapide",
  "common.clear": "Effacer",
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
  "courses.noSearchResults": 'Aucun thème ne correspond à "{query}".',
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
  "cheatsheets.noSearchResults": 'Aucune fiche ne correspond à "{query}".',
  "cheatsheets.title": "Fiches de révision",
  "pricing.badge": "Gratuit pour commencer",
  "pricing.title": "Un tarif simple pour réviser les examens. Clair.",
  "pricing.description":
    "Les élèves gratuits peuvent prévisualiser des épreuves sélectionnées. Premium débloque les épreuves protégées, les cours par thème, les fiches, le parcours IA, le tutorat et les analyses avancées.",
  "pricing.monthly": "Mensuel",
  "pricing.yearly": "Annuel",
  "pricing.forever": "à vie",
  "pricing.month": "mois",
  "pricing.freePlanDescription":
    "Découvre la plateforme avant de passer à Premium. Aucune carte requise.",
  "pricing.getStarted": "Commencer",
  "pricing.recommended": "Recommandé",
  "pricing.billedMonthly": "Facturé chaque mois",
  "pricing.billedYearly": "Facturé chaque année",
  "pricing.payWithFapshi": "Payer avec Fapshi",
  "pricing.paymentConfirmed": "Paiement confirmé. Premium est maintenant actif sur ton compte.",
  "pricing.paymentPending":
    "Le paiement est encore en attente. Premium sera activé dès que Fapshi confirme.",
  "pricing.paymentNotConfirmed":
    "Le paiement n'est pas encore confirmé. Si tu as payé, attends un moment puis actualise.",
  "pricing.paymentCheckFailed":
    "Nous ne pouvons pas vérifier le paiement maintenant. Réessaie dans un instant.",
  "pricing.paymentStartFailed":
    "Le paiement ne peut pas démarrer maintenant. Réessaie dans un instant.",
  "pricing.feature": "Fonctionnalité",
  "pricing.commonQuestions": "Questions fréquentes",
  "pricing.footer": "Créé pour les élèves du Cameroun.",
  "pricing.feature.previewPapers": "1 à 2 épreuves en aperçu gratuit",
  "pricing.feature.unlimitedPapers": "Épreuves protégées illimitées",
  "pricing.feature.protectedPapers": "Épreuves protégées dans l'application",
  "pricing.feature.answers": "Réponses et explications gratuites",
  "pricing.feature.practiceMode": "Mode entraînement",
  "pricing.feature.accessControl": "Accès selon la classe et la série",
  "pricing.feature.streaks": "Séries quotidiennes et statistiques de base",
  "pricing.feature.aiPaths": "Parcours d'apprentissage personnalisé par IA",
  "pricing.feature.courses": "Cours complets et leçons vidéo",
  "pricing.feature.cheatsheets": "Fiches de révision d'examen",
  "pricing.feature.search": "Recherche avancée dans tout le contenu",
  "pricing.feature.freezes": "Gel de série (1/semaine)",
  "pricing.feature.support": "Assistance prioritaire",
  "pricing.faq.free.q": "Les élèves peuvent-ils commencer gratuitement ?",
  "pricing.faq.free.a":
    "Oui. Les élèves gratuits peuvent ouvrir une ou deux épreuves d'aperçu avant de passer à Premium. L'expérience complète protégée reste Premium.",
  "pricing.faq.cancel.q": "Puis-je annuler à tout moment ?",
  "pricing.faq.cancel.a": "Oui. Tu peux annuler depuis les paramètres, simplement et sans appel.",
  "pricing.faq.mobileMoney.q": "Acceptez-vous Mobile Money ?",
  "pricing.faq.mobileMoney.a":
    "Les paiements utilisent une caisse FCFA adaptée au Cameroun via Fapshi, avec Mobile Money selon les canaux disponibles chez Fapshi.",
  "pricing.faq.discount.q": "Y a-t-il une réduction élève ?",
  "pricing.faq.discount.a":
    "Premium est déjà fixé pour les élèves au Cameroun. Les écoles et groupes d'étude peuvent demander un tarif groupé.",
  "notifications.description": "Tes rappels de compte et de progression apparaîtront ici.",
  "notifications.markAllRead": "Tout marquer comme lu",
  "notifications.loadError": "Les notifications n'ont pas pu être chargées.",
  "notifications.loading": "Vérification de tes dernières mises à jour...",
  "notifications.all": "Tout",
  "notifications.content": "Épreuves",
  "notifications.progress": "Progression",
  "notifications.streak": "Séries",
  "notifications.membership": "Compte",
  "notifications.new": "Nouveau",
  "notifications.markRead": "Marquer comme lu",
  "notifications.emptyGroupTitle": "Aucune notification dans cette catégorie",
  "notifications.emptyGroupDescription":
    "Essaie une autre catégorie ou reviens après ta prochaine activité.",
  "notifications.emptyTitle": "Aucune notification pour le moment",
  "notifications.emptyDescription":
    "Tu verras seulement les vraies mises à jour de profil, d'épreuves et de compte ici.",
  "notifications.generated.newPaper.title": "Nouvelle épreuve disponible",
  "notifications.generated.newPaper.body": "{title} est disponible en {subject}.",
  "notifications.generated.weakSubject.title": "Matière à renforcer",
  "notifications.generated.weakSubject.body":
    "{subject} est à {score}% de maîtrise. Reprends les questions échouées.",
  "notifications.generated.streak.title": "Relance ta série",
  "notifications.generated.streak.body":
    "Marque une question structurale aujourd'hui pour commencer une nouvelle série.",
  "notifications.generated.premiumEnds.title": "Premium se termine bientôt",
  "notifications.generated.premiumEndsToday.body":
    "Ton accès Premium se termine aujourd'hui. Renouvelle tôt pour éviter une coupure.",
  "notifications.generated.premiumEnds.body":
    "Ton accès Premium se termine dans {days} jour(s). Renouvelle tôt pour éviter une coupure.",
  "notifications.generated.paymentFailed.title": "Paiement à vérifier",
  "notifications.generated.paymentFailed.body":
    "Ton dernier paiement Premium n'a pas abouti. Tu peux réessayer depuis la page des tarifs.",
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
  "onboarding.welcomeTitle": "Bienvenue sur StudySpark",
  "onboarding.welcomeDescription": "Configurons ton espace d'étude. Cela prend 30 secondes.",
  "onboarding.nameLabel": "Comment devons-nous t'appeler ?",
  "onboarding.namePlaceholder": "Ton prénom",
  "onboarding.languageTitle": "Choisis ta langue d'étude",
  "onboarding.languageDescription":
    "Choisis la langue de l'interface et le parcours scolaire camerounais que tu suis.",
  "onboarding.curriculumPath": "Parcours scolaire",
  "onboarding.gceHint": "Forms, O-Level, Lower Sixth, Upper Sixth",
  "onboarding.frHint": "Sixième à Terminale, BEPC, Probatoire, Bac",
  "onboarding.locationTitle": "Ajoute ta localisation",
  "onboarding.locationDescription":
    "Cela te place dans le bon classement national, régional et local.",
  "onboarding.country": "Pays",
  "onboarding.region": "Région",
  "onboarding.city": "Ville",
  "onboarding.cityPlaceholder": "Exemple : Douala, Yaoundé, Bafoussam",
  "onboarding.verifyLocation": "Vérifier avec la localisation du navigateur",
  "onboarding.verifyingLocation": "Vérification en cours...",
  "onboarding.locationVerified": "Localisation vérifiée",
  "onboarding.locationVerifiedHint":
    "La localisation de ton appareil a été capturée pour vérifier le classement.",
  "onboarding.classTitle": "Choisis ta classe",
  "onboarding.classDescriptionGce": "Choisis Ordinary ou Advanced Level, puis ta classe.",
  "onboarding.classDescriptionFr": "Choisis ton cycle (Collège ou Lycée), puis ta classe.",
  "onboarding.subjectTitleGce": "Choisis tes matières",
  "onboarding.subjectTitleFr": "Choisis ta filière",
  "onboarding.subjectDescriptionGce":
    "Choisis ta série et les matières que tu veux voir sur ton tableau de bord.",
  "onboarding.subjectDescriptionFr": "Choisis ta série et les matières pour ton tableau de bord.",
  "onboarding.useAnotherAccount": "Utiliser un autre compte",
  "onboarding.getStarted": "Commencer",
  "onboarding.saving": "Enregistrement...",
  "onboarding.selected": "sélectionné(s)",
  "support.title": "Assistance",
  "support.description": "Une assistance prioritaire est disponible pour chaque élève connecté.",
  "support.contactTitle": "Contacter l'assistance",
  "support.subjectPlaceholder": "Sujet",
  "support.messagePlaceholder": "Décris le problème...",
  "support.sendRequest": "Envoyer la demande",
  "support.emailOpened":
    "Ton application e-mail devrait s'ouvrir avec la demande préremplie. Nous répondons sous 24 heures.",
  "support.noEmailApp": "Pas d'application e-mail ? Écris-nous directement à",
  "support.autoDetails":
    "Ton plan, ta classe et tes matières sont ajoutés automatiquement pour accélérer l'aide.",
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
