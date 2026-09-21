export type EducationSystem = "gce" | "francophone";
export type Language = "english" | "french";

// GCE Level: ordinary = Form 3-5, advanced = Lower/Upper Sixth
// Francophone Level: ordinary = Collège (6e-3e), advanced = Lycée (2nde-Tle)
export type Level = "ordinary" | "advanced";

export type ClassLevel =
  // GCE Anglophone
  | "form_3"
  | "form_4"
  | "form_5"
  | "lower_sixth"
  | "upper_sixth"
  // Francophone
  | "sixieme"
  | "cinquieme"
  | "quatrieme"
  | "troisieme"
  | "seconde"
  | "premiere"
  | "terminale";

export type Series =
  // GCE Ordinary Level
  | "general"
  | "science"
  | "arts"
  | "commercial"
  | "technical"
  // GCE Advanced Level
  | "a_science"
  | "a_arts"
  | "a_commercial"
  // Francophone Collège (BEPC)
  | "tronc_commun"
  // Francophone Lycée General
  | "a1"
  | "a2"
  | "a4"
  | "abi"
  | "c"
  | "d"
  | "e"
  | "ti"
  // Francophone Lycée Technical (STT)
  | "acc"
  | "cg"
  | "fig"
  | "ses";

export type Subject =
  // GCE subjects
  | "Mathematics"
  | "Additional Mathematics"
  | "Pure Mathematics with Mechanics"
  | "Pure Mathematics with Statistics"
  | "Further Mathematics"
  | "English Language"
  | "English Literature"
  | "French"
  | "Special Bilingual Education French"
  | "Religious Studies"
  | "Philosophy"
  | "Citizenship Education"
  | "Physics"
  | "Chemistry"
  | "Biology"
  | "Human Biology"
  | "Geology"
  | "Economics"
  | "Geography"
  | "History"
  | "Commerce"
  | "Accounting"
  | "Business Studies"
  | "Computer Science"
  | "ICT"
  | "Food and Nutrition"
  | "Food Science and Nutrition"
  | "Logic"
  | "Agricultural Science"
  // Francophone subjects
  | "Mathématiques"
  | "Physique"
  | "Chimie"
  | "Physique-Chimie"
  | "Sciences de la Vie et de la Terre"
  | "Français"
  | "Philosophie"
  | "Anglais"
  | "Histoire-Géographie"
  | "Éducation à la Citoyenneté et à la Morale"
  | "Économie"
  | "Comptabilité"
  | "Informatique"
  | "Éducation Physique et Sportive"
  | "Latin"
  | "Grec"
  | "Langues Vivantes II"
  | "Technologie des Matériaux"
  | "Dessin de Construction"
  | "Mécanique Appliquée"
  | "Système d'Information"
  | "Économie d'Entreprise"
  | "Techniques Commerciales"
  | "Droit"
  | "Courrier"
  | "Gestion des Systèmes d'Information"
  | "Fiscalité"
  | "Mathématiques Appliquées"
  | "Sciences Économiques et Sociales"
  | "Travaux Pratiques de Biologie"
  | "Travaux Pratiques de Physique"
  | "Travaux Pratiques de Chimie";

export type ContentStatus = "draft" | "review" | "published" | "archived";

export interface StudentProfile {
  name: string;
  language: Language;
  educationSystem: EducationSystem;
  country: string;
  region: string;
  city: string;
  locationVerified: boolean;
  locationLatitude: number | null;
  locationLongitude: number | null;
  locationVerifiedAt: string | null;
  level: Level;
  classLevel: ClassLevel;
  series: Series;
  subjects: Subject[];
  plan?: "free" | "premium";
  premiumUntil?: string | null;
}

export interface Topic {
  id: string;
  subject: Subject;
  title: string;
  description: string;
  level: Level;
  classLevels: ClassLevel[];
  series: Series[];
  questionCount: number;
  mastery: number;
  estimatedMinutes: number;
}

export const LANGUAGES: { id: Language; label: string }[] = [
  { id: "english", label: "English" },
  { id: "french", label: "Français" },
];

export function educationSystemForLanguage(language: Language): EducationSystem {
  return language === "french" ? "francophone" : "gce";
}

export const COUNTRIES = ["Cameroon"] as const;

export const CAMEROON_REGIONS = [
  "Adamawa",
  "Centre",
  "East",
  "Far North",
  "Littoral",
  "North",
  "Northwest",
  "South",
  "Southwest",
  "West",
] as const;

// ─────────────────────────────────────────────────────────────────────────────
// GCE Class Levels
// ─────────────────────────────────────────────────────────────────────────────
export const GCE_CLASS_LEVELS: { id: ClassLevel; label: string; level: Level }[] = [
  { id: "form_3", label: "Form 3", level: "ordinary" },
  { id: "form_4", label: "Form 4", level: "ordinary" },
  { id: "form_5", label: "Form 5", level: "ordinary" },
  { id: "lower_sixth", label: "Lower Sixth", level: "advanced" },
  { id: "upper_sixth", label: "Upper Sixth", level: "advanced" },
];

// Francophone Class Levels
// Collège (1er cycle): 6e → 3e (BEPC at end of 3e)
// Lycée (2nd cycle): 2nde → 1ère (Probatoire) → Tle (Baccalauréat)
export const FR_CLASS_LEVELS: { id: ClassLevel; label: string; level: Level }[] = [
  { id: "sixieme", label: "Sixième", level: "ordinary" },
  { id: "cinquieme", label: "Cinquième", level: "ordinary" },
  { id: "quatrieme", label: "Quatrième", level: "ordinary" },
  { id: "troisieme", label: "Troisième", level: "ordinary" },
  { id: "seconde", label: "Seconde", level: "advanced" },
  { id: "premiere", label: "Première", level: "advanced" },
  { id: "terminale", label: "Terminale", level: "advanced" },
];

export const CLASS_LEVELS: { id: ClassLevel; label: string; level: Level }[] = [
  ...GCE_CLASS_LEVELS,
  ...FR_CLASS_LEVELS,
];

// ─────────────────────────────────────────────────────────────────────────────
// GCE Series
// ─────────────────────────────────────────────────────────────────────────────
export const GCE_SERIES_OPTIONS: { id: Series; label: string; level: Level }[] = [
  { id: "general", label: "General", level: "ordinary" },
  { id: "science", label: "Science", level: "ordinary" },
  { id: "arts", label: "Arts", level: "ordinary" },
  { id: "commercial", label: "Commercial", level: "ordinary" },
  { id: "technical", label: "Technical", level: "ordinary" },
  { id: "a_science", label: "Advanced Science", level: "advanced" },
  { id: "a_arts", label: "Advanced Arts", level: "advanced" },
  { id: "a_commercial", label: "Advanced Commercial", level: "advanced" },
];

// Francophone Series / Filières
// Collège: tronc commun (all students follow same curriculum)
// Lycée General: A1, A2, A4, ABI, C, D, E, TI
// Lycée Technical (STT): ACC, CG, FIG, SES
export const FR_SERIES_OPTIONS: { id: Series; label: string; level: Level }[] = [
  { id: "tronc_commun", label: "Tronc Commun (BEPC)", level: "ordinary" },
  { id: "a1", label: "A1 — Lettres (Latin & Grec)", level: "advanced" },
  { id: "a2", label: "A2 — Lettres (Latin & LVII)", level: "advanced" },
  { id: "a4", label: "A4 — Lettres (Langues Vivantes)", level: "advanced" },
  { id: "abi", label: "ABI — Lettres Bilingues", level: "advanced" },
  { id: "c", label: "C — Mathématiques & Sciences Physiques", level: "advanced" },
  { id: "d", label: "D — Mathématiques & Sciences de la Vie", level: "advanced" },
  { id: "e", label: "E — Mathématiques & Techniques", level: "advanced" },
  { id: "ti", label: "TI — Technologies de l'Information", level: "advanced" },
  { id: "acc", label: "ACC — Action et Communication Commerciales", level: "advanced" },
  { id: "cg", label: "CG — Comptabilité et Gestion", level: "advanced" },
  { id: "fig", label: "FIG — Fiscalité et Informatique de Gestion", level: "advanced" },
  { id: "ses", label: "SES — Sciences Économiques et Sociales", level: "advanced" },
];

export const SERIES_OPTIONS: { id: Series; label: string; level: Level }[] = [
  ...GCE_SERIES_OPTIONS,
  ...FR_SERIES_OPTIONS,
];

// ─────────────────────────────────────────────────────────────────────────────
// Subjects
// ─────────────────────────────────────────────────────────────────────────────
export const GCE_SUBJECTS: Subject[] = [
  "Mathematics",
  "Additional Mathematics",
  "Pure Mathematics with Mechanics",
  "Pure Mathematics with Statistics",
  "Further Mathematics",
  "English Language",
  "English Literature",
  "French",
  "Special Bilingual Education French",
  "Religious Studies",
  "Philosophy",
  "Citizenship Education",
  "Physics",
  "Chemistry",
  "Biology",
  "Human Biology",
  "Geology",
  "Economics",
  "Geography",
  "History",
  "Commerce",
  "Accounting",
  "Business Studies",
  "Computer Science",
  "ICT",
  "Food and Nutrition",
  "Food Science and Nutrition",
  "Logic",
  "Agricultural Science",
];

export const FR_SUBJECTS: Subject[] = [
  "Mathématiques",
  "Physique",
  "Chimie",
  "Physique-Chimie",
  "Sciences de la Vie et de la Terre",
  "Français",
  "Philosophie",
  "Anglais",
  "Histoire-Géographie",
  "Éducation à la Citoyenneté et à la Morale",
  "Économie",
  "Comptabilité",
  "Informatique",
  "Éducation Physique et Sportive",
  "Latin",
  "Grec",
  "Langues Vivantes II",
  "Technologie des Matériaux",
  "Dessin de Construction",
  "Mécanique Appliquée",
  "Système d'Information",
  "Économie d'Entreprise",
  "Techniques Commerciales",
  "Droit",
  "Courrier",
  "Gestion des Systèmes d'Information",
  "Fiscalité",
  "Mathématiques Appliquées",
  "Sciences Économiques et Sociales",
  "Travaux Pratiques de Biologie",
  "Travaux Pratiques de Physique",
  "Travaux Pratiques de Chimie",
];

export const SUBJECTS: Subject[] = [...GCE_SUBJECTS, ...FR_SUBJECTS];

// ─────────────────────────────────────────────────────────────────────────────
// GCE Series → Subjects
// ─────────────────────────────────────────────────────────────────────────────
export const GCE_SERIES_SUBJECTS: Record<Series, Subject[]> = {
  general: [
    "Mathematics",
    "English Language",
    "French",
    "Religious Studies",
    "Logic",
    "Citizenship Education",
    "Biology",
    "Human Biology",
    "Geography",
    "History",
    "Food and Nutrition",
    "Agricultural Science",
  ],
  science: [
    "Mathematics",
    "Additional Mathematics",
    "English Language",
    "French",
    "Physics",
    "Chemistry",
    "Biology",
    "Human Biology",
    "Computer Science",
    "ICT",
    "Agricultural Science",
  ],
  arts: [
    "English Language",
    "English Literature",
    "French",
    "Religious Studies",
    "Philosophy",
    "Logic",
    "Citizenship Education",
    "History",
    "Geography",
    "Economics",
  ],
  commercial: [
    "Mathematics",
    "English Language",
    "French",
    "Economics",
    "Commerce",
    "Accounting",
    "Business Studies",
    "ICT",
  ],
  technical: [
    "Mathematics",
    "Additional Mathematics",
    "English Language",
    "French",
    "Physics",
    "Chemistry",
    "Computer Science",
    "ICT",
    "Commerce",
    "Business Studies",
  ],
  a_science: [
    "Mathematics",
    "Pure Mathematics with Mechanics",
    "Pure Mathematics with Statistics",
    "Further Mathematics",
    "English Language",
    "French",
    "Physics",
    "Chemistry",
    "Biology",
    "Geology",
    "Computer Science",
    "ICT",
    "Food Science and Nutrition",
    "Agricultural Science",
  ],
  a_arts: [
    "English Language",
    "English Literature",
    "French",
    "Special Bilingual Education French",
    "Religious Studies",
    "Philosophy",
    "History",
    "Geography",
    "Geology",
    "Economics",
  ],
  a_commercial: [
    "Mathematics",
    "English Language",
    "French",
    "Economics",
    "Commerce",
    "Accounting",
    "Business Studies",
    "ICT",
  ],
  // Francophone series — no subjects in GCE mapping
  tronc_commun: [],
  a1: [],
  a2: [],
  a4: [],
  abi: [],
  c: [],
  d: [],
  e: [],
  ti: [],
  acc: [],
  cg: [],
  fig: [],
  ses: [],
};

// ─────────────────────────────────────────────────────────────────────────────
// Francophone Series → Subjects
// Based on official OBC (Office du Baccalauréat du Cameroun) nomenclature
// Sources: Kamerpower, Camexamen, Résultats-en-Ligne
// ─────────────────────────────────────────────────────────────────────────────
export const FR_SERIES_SUBJECTS: Record<Series, Subject[]> = {
  // Collège — Tronc Commun (all students, preparing for BEPC)
  tronc_commun: [
    "Français",
    "Mathématiques",
    "Physique-Chimie",
    "Sciences de la Vie et de la Terre",
    "Histoire-Géographie",
    "Éducation à la Citoyenneté et à la Morale",
    "Anglais",
    "Informatique",
    "Éducation Physique et Sportive",
    "Langues Vivantes II",
  ],
  // Série A1 — Lettres (Latin & Grec)
  a1: [
    "Français",
    "Histoire-Géographie",
    "Anglais",
    "Philosophie",
    "Mathématiques",
    "Physique-Chimie",
    "Sciences de la Vie et de la Terre",
    "Latin",
    "Grec",
    "Éducation à la Citoyenneté et à la Morale",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // Série A2 — Lettres (Latin & LVII)
  a2: [
    "Français",
    "Histoire-Géographie",
    "Anglais",
    "Philosophie",
    "Mathématiques",
    "Physique-Chimie",
    "Sciences de la Vie et de la Terre",
    "Latin",
    "Langues Vivantes II",
    "Éducation à la Citoyenneté et à la Morale",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // Série A4 — Lettres (Langues Vivantes)
  a4: [
    "Français",
    "Histoire-Géographie",
    "Anglais",
    "Philosophie",
    "Mathématiques",
    "Physique-Chimie",
    "Sciences de la Vie et de la Terre",
    "Langues Vivantes II",
    "Éducation à la Citoyenneté et à la Morale",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // Série ABI — Lettres Bilingues
  abi: [
    "Français",
    "Histoire-Géographie",
    "Anglais",
    "Langues Vivantes II",
    "Mathématiques",
    "Physique-Chimie",
    "Sciences de la Vie et de la Terre",
    "Éducation à la Citoyenneté et à la Morale",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // Série C — Mathématiques & Sciences Physiques
  c: [
    "Français",
    "Mathématiques",
    "Physique",
    "Chimie",
    "Sciences de la Vie et de la Terre",
    "Histoire-Géographie",
    "Anglais",
    "Éducation à la Citoyenneté et à la Morale",
    "Informatique",
    "Éducation Physique et Sportive",
    "Travaux Pratiques de Physique",
    "Travaux Pratiques de Chimie",
    "Travaux Pratiques de Biologie",
  ],
  // Série D — Mathématiques & Sciences de la Vie et de la Terre
  d: [
    "Français",
    "Mathématiques",
    "Sciences de la Vie et de la Terre",
    "Physique",
    "Chimie",
    "Histoire-Géographie",
    "Anglais",
    "Éducation à la Citoyenneté et à la Morale",
    "Informatique",
    "Éducation Physique et Sportive",
    "Travaux Pratiques de Biologie",
    "Travaux Pratiques de Physique",
    "Travaux Pratiques de Chimie",
  ],
  // Série E — Mathématiques & Techniques
  e: [
    "Français",
    "Mathématiques",
    "Physique-Chimie",
    "Technologie des Matériaux",
    "Dessin de Construction",
    "Mécanique Appliquée",
    "Histoire-Géographie",
    "Anglais",
    "Éducation à la Citoyenneté et à la Morale",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // Série TI — Technologies de l'Information
  ti: [
    "Français",
    "Mathématiques",
    "Système d'Information",
    "Physique",
    "Sciences de la Vie et de la Terre",
    "Économie d'Entreprise",
    "Histoire-Géographie",
    "Anglais",
    "Éducation à la Citoyenneté et à la Morale",
    "Éducation Physique et Sportive",
    "Informatique",
  ],
  // STT — ACC: Action et Communication Commerciales
  acc: [
    "Français",
    "Histoire-Géographie",
    "Éducation à la Citoyenneté et à la Morale",
    "Anglais",
    "Mathématiques",
    "Économie d'Entreprise",
    "Techniques Commerciales",
    "Droit",
    "Courrier",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // STT — CG: Comptabilité et Gestion
  cg: [
    "Français",
    "Histoire-Géographie",
    "Éducation à la Citoyenneté et à la Morale",
    "Anglais",
    "Mathématiques",
    "Économie d'Entreprise",
    "Comptabilité",
    "Droit",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // STT — FIG: Fiscalité et Informatique de Gestion
  fig: [
    "Français",
    "Histoire-Géographie",
    "Éducation à la Citoyenneté et à la Morale",
    "Anglais",
    "Mathématiques",
    "Économie d'Entreprise",
    "Comptabilité",
    "Fiscalité",
    "Gestion des Systèmes d'Information",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // STT — SES: Sciences Économiques et Sociales
  ses: [
    "Français",
    "Histoire-Géographie",
    "Éducation à la Citoyenneté et à la Morale",
    "Anglais",
    "Mathématiques",
    "Sciences Économiques et Sociales",
    "Économie d'Entreprise",
    "Informatique",
    "Éducation Physique et Sportive",
  ],
  // GCE series — no subjects in francophone mapping
  general: [],
  science: [],
  arts: [],
  commercial: [],
  technical: [],
  a_science: [],
  a_arts: [],
  a_commercial: [],
};

// Combined mapping (both systems)
export const SERIES_SUBJECTS: Record<Series, Subject[]> = {
  ...GCE_SERIES_SUBJECTS,
  ...FR_SERIES_SUBJECTS,
};

export function subjectsForSeries(series: Series | null | undefined) {
  return series ? SERIES_SUBJECTS[series] : SUBJECTS;
}

export function classLevelsForSystem(system: EducationSystem) {
  return system === "francophone" ? FR_CLASS_LEVELS : GCE_CLASS_LEVELS;
}

export function seriesOptionsForSystem(system: EducationSystem) {
  return system === "francophone" ? FR_SERIES_OPTIONS : GCE_SERIES_OPTIONS;
}

export function subjectsForSystem(system: EducationSystem) {
  return system === "francophone" ? FR_SUBJECTS : GCE_SUBJECTS;
}

export function levelLabelForSystem(level: Level, system: EducationSystem) {
  if (system === "francophone") {
    return level === "ordinary" ? "Collège (1er cycle)" : "Lycée (2nd cycle)";
  }
  return level === "ordinary" ? "Ordinary Level" : "Advanced Level";
}

export const DEFAULT_PROFILE: StudentProfile = {
  name: "Amina",
  language: "english",
  educationSystem: "gce",
  country: "Cameroon",
  region: "Centre",
  city: "Yaounde",
  locationVerified: false,
  locationLatitude: null,
  locationLongitude: null,
  locationVerifiedAt: null,
  level: "ordinary",
  classLevel: "form_5",
  series: "science",
  subjects: ["Mathematics", "Physics", "Chemistry", "Biology", "English Language"],
};

export const DEFAULT_FR_PROFILE: StudentProfile = {
  name: "Amadou",
  language: "french",
  educationSystem: "francophone",
  country: "Cameroon",
  region: "Centre",
  city: "Yaounde",
  locationVerified: false,
  locationLatitude: null,
  locationLongitude: null,
  locationVerifiedAt: null,
  level: "advanced",
  classLevel: "terminale",
  series: "c",
  subjects: [
    "Mathématiques",
    "Physique",
    "Chimie",
    "Sciences de la Vie et de la Terre",
    "Français",
  ],
};

export const TOPICS: Topic[] = [
  // GCE topics (existing)
  {
    id: "math-quadratics",
    subject: "Mathematics",
    title: "Quadratic equations",
    description: "Factorization, completing the square, and graph interpretation.",
    level: "ordinary",
    classLevels: ["form_4", "form_5"],
    series: ["general", "science", "technical"],
    questionCount: 42,
    mastery: 72,
    estimatedMinutes: 35,
  },
  {
    id: "physics-motion",
    subject: "Physics",
    title: "Motion and forces",
    description: "Speed, acceleration, Newton's laws, and simple calculations.",
    level: "ordinary",
    classLevels: ["form_4", "form_5"],
    series: ["science", "technical"],
    questionCount: 38,
    mastery: 61,
    estimatedMinutes: 30,
  },
  {
    id: "chem-bonding",
    subject: "Chemistry",
    title: "Chemical bonding",
    description: "Ionic, covalent, and metallic bonding with structure examples.",
    level: "ordinary",
    classLevels: ["form_5"],
    series: ["science"],
    questionCount: 31,
    mastery: 68,
    estimatedMinutes: 25,
  },
  {
    id: "bio-cell",
    subject: "Biology",
    title: "Cell biology",
    description: "Cell organelles, osmosis, diffusion, and microscopy.",
    level: "ordinary",
    classLevels: ["form_3", "form_4", "form_5"],
    series: ["general", "science"],
    questionCount: 44,
    mastery: 84,
    estimatedMinutes: 28,
  },
  {
    id: "eng-summary",
    subject: "English Language",
    title: "Summary writing",
    description: "Identifying main ideas and writing concise answers.",
    level: "ordinary",
    classLevels: ["form_3", "form_4", "form_5"],
    series: ["general", "science", "arts", "commercial", "technical"],
    questionCount: 27,
    mastery: 77,
    estimatedMinutes: 20,
  },
  {
    id: "french-grammar",
    subject: "French",
    title: "Grammaire essentielle",
    description: "Accords, conjugaison, pronoms et construction de phrases.",
    level: "ordinary",
    classLevels: ["form_3", "form_4", "form_5"],
    series: ["general", "science", "arts", "commercial", "technical"],
    questionCount: 36,
    mastery: 59,
    estimatedMinutes: 24,
  },
  {
    id: "econ-demand",
    subject: "Economics",
    title: "Demand and supply",
    description: "Market equilibrium, shifts, elasticity, and price controls.",
    level: "advanced",
    classLevels: ["lower_sixth", "upper_sixth"],
    series: ["a_commercial", "a_arts"],
    questionCount: 48,
    mastery: 63,
    estimatedMinutes: 40,
  },
  {
    id: "math-calculus",
    subject: "Mathematics",
    title: "Differentiation",
    description: "Limits, gradients, stationary points, and curve sketching.",
    level: "advanced",
    classLevels: ["lower_sixth", "upper_sixth"],
    series: ["a_science", "a_commercial"],
    questionCount: 52,
    mastery: 55,
    estimatedMinutes: 45,
  },
  // Francophone topics (new)
  {
    id: "fr-math-algebre",
    subject: "Mathématiques",
    title: "Algèbre et équations",
    description: "Équations du premier et second degré, systèmes d'équations.",
    level: "ordinary",
    classLevels: ["sixieme", "cinquieme", "quatrieme", "troisieme"],
    series: ["tronc_commun"],
    questionCount: 38,
    mastery: 65,
    estimatedMinutes: 30,
  },
  {
    id: "fr-physique-mouvement",
    subject: "Physique",
    title: "Mouvement et forces",
    description: "Vitesse, accélération, lois de Newton et calculs simples.",
    level: "ordinary",
    classLevels: ["quatrieme", "troisieme"],
    series: ["tronc_commun"],
    questionCount: 32,
    mastery: 58,
    estimatedMinutes: 25,
  },
  {
    id: "fr-svt-cellule",
    subject: "Sciences de la Vie et de la Terre",
    title: "La cellule",
    description: "Organites cellulaires, osmose, diffusion et microscopie.",
    level: "ordinary",
    classLevels: ["sixieme", "cinquieme", "quatrieme", "troisieme"],
    series: ["tronc_commun"],
    questionCount: 40,
    mastery: 80,
    estimatedMinutes: 26,
  },
  {
    id: "fr-francais-texte",
    subject: "Français",
    title: "Étude de texte",
    description: "Analyse de textes littéraires, figures de style et argumentation.",
    level: "ordinary",
    classLevels: ["sixieme", "cinquieme", "quatrieme", "troisieme"],
    series: ["tronc_commun"],
    questionCount: 30,
    mastery: 75,
    estimatedMinutes: 22,
  },
  {
    id: "fr-math-calcul",
    subject: "Mathématiques",
    title: "Analyse — Dérivation",
    description: "Limites, dérivées, variations et représentation graphique.",
    level: "advanced",
    classLevels: ["premiere", "terminale"],
    series: ["c", "d", "e", "ti"],
    questionCount: 50,
    mastery: 60,
    estimatedMinutes: 42,
  },
  {
    id: "fr-physique-electro",
    subject: "Physique",
    title: "Électromagnétisme",
    description: "Champs électriques et magnétiques, circuits et induction.",
    level: "advanced",
    classLevels: ["premiere", "terminale"],
    series: ["c", "e", "ti"],
    questionCount: 45,
    mastery: 55,
    estimatedMinutes: 38,
  },
  {
    id: "fr-svt-genetique",
    subject: "Sciences de la Vie et de la Terre",
    title: "Génétique et évolution",
    description: "Lois de Mendel, ADN, mutation et sélection naturelle.",
    level: "advanced",
    classLevels: ["premiere", "terminale"],
    series: ["c", "d", "ti"],
    questionCount: 42,
    mastery: 62,
    estimatedMinutes: 35,
  },
  {
    id: "fr-philo-liberte",
    subject: "Philosophie",
    title: "La liberté",
    description: "Notions de liberté, déterminisme et responsabilité morale.",
    level: "advanced",
    classLevels: ["terminale"],
    series: ["a1", "a2", "a4", "abi"],
    questionCount: 28,
    mastery: 70,
    estimatedMinutes: 30,
  },
  {
    id: "fr-hg-afrique",
    subject: "Histoire-Géographie",
    title: "L'Afrique contemporaine",
    description: "Décolonisation, indépendances et défis du développement.",
    level: "advanced",
    classLevels: ["premiere", "terminale"],
    series: ["a1", "a2", "a4", "abi", "c", "d", "e", "ti", "acc", "cg", "fig", "ses"],
    questionCount: 35,
    mastery: 68,
    estimatedMinutes: 28,
  },
  {
    id: "fr-economie-marche",
    subject: "Économie",
    title: "Le marché et les prix",
    description: "Offre, demande, équilibre du marché et politiques de prix.",
    level: "advanced",
    classLevels: ["premiere", "terminale"],
    series: ["c", "d", "e", "ti", "acc", "cg", "fig", "ses"],
    questionCount: 40,
    mastery: 58,
    estimatedMinutes: 32,
  },
  {
    id: "fr-compta-bilan",
    subject: "Comptabilité",
    title: "Le bilan comptable",
    description: "Actif, passif, résultat et lecture du bilan d'entreprise.",
    level: "advanced",
    classLevels: ["premiere", "terminale"],
    series: ["cg", "fig"],
    questionCount: 33,
    mastery: 64,
    estimatedMinutes: 28,
  },
  {
    id: "fr-info-programmation",
    subject: "Informatique",
    title: "Algorithmique et programmation",
    description: "Structures de contrôle, tableaux et fonctions de base.",
    level: "advanced",
    classLevels: ["seconde", "premiere", "terminale"],
    series: ["c", "d", "e", "ti", "acc", "cg", "fig", "ses"],
    questionCount: 36,
    mastery: 72,
    estimatedMinutes: 30,
  },
];

const seed = (n: number) => {
  const x = Math.sin(n) * 10000;
  return x - Math.floor(x);
};

export const STREAK_DAYS: { date: string; intensity: number }[] = (() => {
  const days: { date: string; intensity: number }[] = [];
  const today = new Date();
  for (let i = 90; i >= 0; i--) {
    const d = new Date(today);
    d.setDate(today.getDate() - i);
    const r = seed(i + 11);
    let intensity = 0;
    if (i < 14) intensity = 2 + Math.floor(r * 3);
    else if (r > 0.35) intensity = 1 + Math.floor(r * 3);
    days.push({ date: d.toISOString().slice(0, 10), intensity });
  }
  return days;
})();

export interface Achievement {
  id: string;
  name: string;
  description: string;
  icon: string;
  earned: boolean;
  earnedDate?: string;
  progress?: number;
  rarity: "common" | "rare" | "epic" | "legendary";
}

export const ACHIEVEMENTS: Achievement[] = [
  {
    id: "a1",
    name: "First Steps",
    description: "Complete your first practice session",
    icon: "Sparkles",
    earned: true,
    earnedDate: "2 weeks ago",
    rarity: "common",
  },
  {
    id: "a2",
    name: "Week Warrior",
    description: "Maintain a 7-day study streak",
    icon: "Flame",
    earned: true,
    earnedDate: "1 week ago",
    rarity: "common",
  },
  {
    id: "a3",
    name: "Topic Climber",
    description: "Reach 70% mastery in one topic",
    icon: "TrendingUp",
    earned: true,
    earnedDate: "Today",
    rarity: "rare",
  },
  {
    id: "a4",
    name: "Perfect Score",
    description: "Get 100% on any practice set",
    icon: "Trophy",
    earned: false,
    progress: 80,
    rarity: "rare",
  },
];

export const LEADERBOARD = [
  {
    rank: 1,
    name: "Amina Talla",
    classLevel: "Form 5",
    series: "Science",
    educationSystem: "gce" as EducationSystem,
    xp: 12450,
    streak: 32,
    you: false,
  },
  {
    rank: 2,
    name: "Junior Ngassa",
    classLevel: "Upper Sixth",
    series: "Advanced Science",
    educationSystem: "gce" as EducationSystem,
    xp: 11200,
    streak: 28,
    you: false,
  },
  {
    rank: 3,
    name: "Brenda Nfor",
    classLevel: "Lower Sixth",
    series: "Advanced Arts",
    educationSystem: "gce" as EducationSystem,
    xp: 10870,
    streak: 24,
    you: false,
  },
  {
    rank: 4,
    name: "Amadou",
    classLevel: "Terminale",
    series: "C",
    educationSystem: "francophone" as EducationSystem,
    xp: 8920,
    streak: 14,
    you: true,
  },
];

export interface Notification {
  id: string;
  title: string;
  body: string;
  time: string;
  type: "streak" | "achievement" | "reminder" | "system";
  read: boolean;
}

export const NOTIFICATIONS: Notification[] = [
  {
    id: "n1",
    title: "Keep your streak alive",
    body: "You have not practiced today. Finish one topic set to continue your streak.",
    time: "2h ago",
    type: "reminder",
    read: false,
  },
  {
    id: "n2",
    title: "New questions added",
    body: "Fresh Form 5 Chemistry questions are ready for your science series.",
    time: "Yesterday",
    type: "system",
    read: true,
  },
];

export interface Device {
  id: string;
  name: string;
  type: "phone" | "laptop" | "tablet";
  location: string;
  lastActive: string;
  current: boolean;
}

export const DEVICES: Device[] = [
  {
    id: "d1",
    name: "Android phone",
    type: "phone",
    location: "Douala, Cameroon",
    lastActive: "Active now",
    current: true,
  },
  {
    id: "d2",
    name: "School laptop",
    type: "laptop",
    location: "Yaounde, Cameroon",
    lastActive: "2 hours ago",
    current: false,
  },
];

export const DAILY_CHALLENGE = {
  date: new Date().toISOString().slice(0, 10),
  title: "Structural paper practice",
  description: "Open a protected paper and mark your question progress.",
  xp: 150,
  questions: 10,
};

export function classLabel(id: ClassLevel) {
  return CLASS_LEVELS.find((item) => item.id === id)?.label ?? id;
}

export function seriesLabel(id: Series) {
  return SERIES_OPTIONS.find((item) => item.id === id)?.label ?? id;
}

export function topicsForProfile(profile: StudentProfile) {
  return TOPICS.filter(
    (topic) =>
      topic.level === profile.level &&
      topic.classLevels.includes(profile.classLevel) &&
      topic.series.includes(profile.series) &&
      profile.subjects.includes(topic.subject),
  );
}
