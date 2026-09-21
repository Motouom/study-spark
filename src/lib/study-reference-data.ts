export type Language = "english" | "french";
export type Level = "ordinary" | "advanced";
export type ClassLevel = "form_3" | "form_4" | "form_5" | "lower_sixth" | "upper_sixth";
export type Series =
  | "general"
  | "science"
  | "arts"
  | "commercial"
  | "technical"
  | "a_science"
  | "a_arts"
  | "a_commercial";

export type Subject =
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
  | "Agricultural Science";

export type ContentStatus = "draft" | "review" | "published" | "unpublished" | "archived";

export interface StudentProfile {
  name: string;
  language: Language;
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
  { id: "french", label: "Francais" },
];

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

export const CLASS_LEVELS: { id: ClassLevel; label: string; level: Level }[] = [
  { id: "form_3", label: "Form 3", level: "ordinary" },
  { id: "form_4", label: "Form 4", level: "ordinary" },
  { id: "form_5", label: "Form 5", level: "ordinary" },
  { id: "lower_sixth", label: "Lower Sixth", level: "advanced" },
  { id: "upper_sixth", label: "Upper Sixth", level: "advanced" },
];

export const SERIES_OPTIONS: { id: Series; label: string; level: Level }[] = [
  { id: "general", label: "General", level: "ordinary" },
  { id: "science", label: "Science", level: "ordinary" },
  { id: "arts", label: "Arts", level: "ordinary" },
  { id: "commercial", label: "Commercial", level: "ordinary" },
  { id: "technical", label: "Technical", level: "ordinary" },
  { id: "a_science", label: "Advanced Science", level: "advanced" },
  { id: "a_arts", label: "Advanced Arts", level: "advanced" },
  { id: "a_commercial", label: "Advanced Commercial", level: "advanced" },
];

export const SUBJECTS: Subject[] = [
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

export const SERIES_SUBJECTS: Record<Series, Subject[]> = {
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
};

export function subjectsForSeries(series: Series | null | undefined) {
  return series ? SERIES_SUBJECTS[series] : SUBJECTS;
}

export const DEFAULT_PROFILE: StudentProfile = {
  name: "Amina",
  language: "english",
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

export const TOPICS: Topic[] = [
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
    xp: 12450,
    streak: 32,
    you: false,
  },
  {
    rank: 2,
    name: "Junior Ngassa",
    classLevel: "Upper Sixth",
    series: "Advanced Science",
    xp: 11200,
    streak: 28,
    you: false,
  },
  {
    rank: 3,
    name: "Brenda Nfor",
    classLevel: "Lower Sixth",
    series: "Advanced Arts",
    xp: 10870,
    streak: 24,
    you: false,
  },
  {
    rank: 4,
    name: "Amina",
    classLevel: "Form 5",
    series: "Science",
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
