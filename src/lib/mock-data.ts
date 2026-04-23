export type Subject =
  | "Mathematics"
  | "English"
  | "Physics"
  | "Chemistry"
  | "Biology"
  | "Economics"
  | "Geography"
  | "History"
  | "Literature";

export type ExamBoard = "WASSCE" | "JAMB" | "KCSE" | "NECTA" | "GCE";

export type CountryCode = "NG" | "GH" | "KE" | "TZ" | "UG" | "CM" | "ZM";

export interface PastPaper {
  id: string;
  title: string;
  description: string;
  tags: string[];
  subject: Subject;
  examBoard: ExamBoard;
  country: CountryCode;
  year: number;
  questions: number;
  downloads: number;
  isPremium: boolean;
  duration: number; // minutes
  pages: number;
}

export const SUBJECTS: Subject[] = [
  "Mathematics",
  "English",
  "Physics",
  "Chemistry",
  "Biology",
  "Economics",
  "Geography",
  "History",
  "Literature",
];

export const EXAM_BOARDS: ExamBoard[] = ["WASSCE", "JAMB", "KCSE", "NECTA", "GCE"];

export const COUNTRIES = [
  { code: "NG", name: "Nigeria", flag: "🇳🇬", boards: ["WASSCE", "JAMB", "GCE"] },
  { code: "GH", name: "Ghana", flag: "🇬🇭", boards: ["WASSCE", "GCE"] },
  { code: "KE", name: "Kenya", flag: "🇰🇪", boards: ["KCSE"] },
  { code: "TZ", name: "Tanzania", flag: "🇹🇿", boards: ["NECTA"] },
  { code: "UG", name: "Uganda", flag: "🇺🇬", boards: ["NECTA"] },
  { code: "CM", name: "Cameroon", flag: "🇨🇲", boards: ["GCE"] },
  { code: "ZM", name: "Zambia", flag: "🇿🇲", boards: ["GCE"] },
] as const;

export const COUNTRY_BY_BOARD: Record<ExamBoard, CountryCode> = {
  WASSCE: "NG",
  JAMB: "NG",
  KCSE: "KE",
  NECTA: "TZ",
  GCE: "CM",
};

const seed = (n: number) => {
  let x = Math.sin(n) * 10000;
  return x - Math.floor(x);
};

const TAG_BANK = ["algebra", "essay", "reading", "mechanics", "organic", "ecology", "macro", "maps", "colonial", "poetry"];

export const PAPERS: PastPaper[] = Array.from({ length: 48 }).map((_, i) => {
  const subject = SUBJECTS[i % SUBJECTS.length];
  const examBoard = EXAM_BOARDS[i % EXAM_BOARDS.length];
  const year = 2015 + (i % 10);
  const country = COUNTRY_BY_BOARD[examBoard];
  const tag = TAG_BANK[i % TAG_BANK.length];
  return {
    id: `paper-${i + 1}`,
    title: `${subject} ${examBoard} ${year}`,
    description: `Official ${examBoard} ${subject} examination from ${year}. Covers ${tag}, full theory and practical sections.`,
    tags: [tag, subject.toLowerCase(), examBoard.toLowerCase()],
    subject,
    examBoard,
    country,
    year,
    questions: 30 + Math.floor(seed(i + 1) * 30),
    downloads: 200 + Math.floor(seed(i + 7) * 4800),
    isPremium: i % 9 === 0,
    duration: 60 + Math.floor(seed(i + 3) * 90),
    pages: 8 + Math.floor(seed(i + 5) * 16),
  };
});

// =================================================================
// Quiz engine — supports many question types
// =================================================================

export type QuestionType =
  | "mcq"
  | "true_false"
  | "fill_blank"
  | "match"
  | "image_mcq"
  | "audio_mcq"
  | "essay";

export type Difficulty = "easy" | "medium" | "hard";

export interface QuizQuestionBase {
  id: string;
  subject: Subject;
  type: QuestionType;
  difficulty: Difficulty;
  prompt: string;
  explanation: string;
}

export interface MCQQuestion extends QuizQuestionBase {
  type: "mcq" | "image_mcq" | "audio_mcq";
  choices: string[];
  correctIndex: number;
  imageHint?: string; // a short text used to render a mock image card
  audioHint?: string; // mock audio transcript
}

export interface TrueFalseQuestion extends QuizQuestionBase {
  type: "true_false";
  answer: boolean;
}

export interface FillBlankQuestion extends QuizQuestionBase {
  type: "fill_blank";
  // prompt should contain "____"
  acceptedAnswers: string[]; // case-insensitive match
}

export interface MatchQuestion extends QuizQuestionBase {
  type: "match";
  // user matches lefts to rights. correct mapping: lefts[i] -> rights[i]
  lefts: string[];
  rights: string[];
}

export interface EssayQuestion extends QuizQuestionBase {
  type: "essay";
  rubric: string[];
  minWords: number;
}

export type QuizQuestion =
  | MCQQuestion
  | TrueFalseQuestion
  | FillBlankQuestion
  | MatchQuestion
  | EssayQuestion;

export const QUIZ_QUESTIONS: QuizQuestion[] = [
  {
    id: "q1",
    type: "mcq",
    difficulty: "easy",
    subject: "Mathematics",
    prompt: "If 2x + 3 = 11, what is the value of x?",
    choices: ["2", "3", "4", "5"],
    correctIndex: 2,
    explanation: "2x = 11 − 3 = 8, so x = 4.",
  },
  {
    id: "q2",
    type: "mcq",
    difficulty: "easy",
    subject: "Physics",
    prompt: "What is the SI unit of electric current?",
    choices: ["Volt", "Watt", "Ampere", "Ohm"],
    correctIndex: 2,
    explanation: "The ampere (A) is the SI base unit of electric current.",
  },
  {
    id: "q3",
    type: "true_false",
    difficulty: "easy",
    subject: "Chemistry",
    prompt: "Nitrogen is the most abundant gas in Earth's atmosphere.",
    answer: true,
    explanation: "Nitrogen makes up about 78% of the atmosphere.",
  },
  {
    id: "q4",
    type: "fill_blank",
    difficulty: "medium",
    subject: "Biology",
    prompt: "The powerhouse of the cell is the ____.",
    acceptedAnswers: ["mitochondrion", "mitochondria"],
    explanation: "Mitochondria produce most of the cell's ATP.",
  },
  {
    id: "q5",
    type: "mcq",
    difficulty: "easy",
    subject: "English",
    prompt: "Choose the correctly spelled word:",
    choices: ["Recieve", "Receive", "Recive", "Receeve"],
    correctIndex: 1,
    explanation: "I before E except after C — receive.",
  },
  {
    id: "q6",
    type: "match",
    difficulty: "medium",
    subject: "Geography",
    prompt: "Match each river to the country it primarily flows through.",
    lefts: ["Nile", "Niger", "Zambezi", "Congo"],
    rights: ["Egypt", "Nigeria", "Zambia", "DRC"],
    explanation: "These are the dominant countries each river flows through.",
  },
  {
    id: "q7",
    type: "mcq",
    difficulty: "medium",
    subject: "Economics",
    prompt: "Opportunity cost refers to:",
    choices: [
      "The money paid for a good",
      "The next best alternative forgone",
      "Total cost of production",
      "Marginal revenue",
    ],
    correctIndex: 1,
    explanation: "Opportunity cost is the value of the next best alternative given up.",
  },
  {
    id: "q8",
    type: "mcq",
    difficulty: "hard",
    subject: "Mathematics",
    prompt: "What is the area of a circle with radius 7? (use π = 22/7)",
    choices: ["44", "154", "49", "22"],
    correctIndex: 1,
    explanation: "A = πr² = (22/7) × 49 = 154.",
  },
  {
    id: "q9",
    type: "fill_blank",
    difficulty: "medium",
    subject: "History",
    prompt: "Ghana gained independence in the year ____.",
    acceptedAnswers: ["1957"],
    explanation: "Ghana became the first sub-Saharan African country to gain independence on 6 March 1957.",
  },
  {
    id: "q10",
    type: "mcq",
    difficulty: "medium",
    subject: "Literature",
    prompt: "Who wrote 'Things Fall Apart'?",
    choices: ["Wole Soyinka", "Chinua Achebe", "Ngũgĩ wa Thiong'o", "Chimamanda Adichie"],
    correctIndex: 1,
    explanation: "Chinua Achebe published 'Things Fall Apart' in 1958.",
  },
  {
    id: "q11",
    type: "image_mcq",
    difficulty: "medium",
    subject: "Geography",
    prompt: "The diagram shows a topographic feature with concentric contour lines closing inward. What does it represent?",
    imageHint: "Concentric rings — contour map",
    choices: ["Valley", "Hill or peak", "Plateau", "Depression"],
    correctIndex: 1,
    explanation: "Concentric closed contours with values increasing inward represent a hill or peak.",
  },
  {
    id: "q12",
    type: "audio_mcq",
    difficulty: "medium",
    subject: "English",
    prompt: "Listen to the passage. What is the speaker's main argument?",
    audioHint: "\"Education is not preparation for life — education is life itself.\"",
    choices: [
      "Education only matters in school",
      "Education is itself a way of living",
      "Schools teach the wrong things",
      "Adults should stop learning",
    ],
    correctIndex: 1,
    explanation: "The speaker quotes John Dewey's idea that education is integral to life, not a precursor to it.",
  },
  {
    id: "q13",
    type: "true_false",
    difficulty: "easy",
    subject: "Physics",
    prompt: "Sound travels faster in water than in air.",
    answer: true,
    explanation: "Sound travels ~1480 m/s in water vs ~343 m/s in air, because water is denser and less compressible.",
  },
  {
    id: "q14",
    type: "essay",
    difficulty: "hard",
    subject: "History",
    prompt: "Discuss the social and economic causes of the Scramble for Africa (1881–1914).",
    rubric: [
      "Identify at least 3 distinct causes",
      "Distinguish economic vs social motivations",
      "Reference at least one specific event or treaty",
    ],
    minWords: 80,
    explanation: "Strong answers cover industrial demand for raw materials, the Berlin Conference (1884–85), nationalism, and 'civilizing mission' ideology.",
  },
  {
    id: "q15",
    type: "fill_blank",
    difficulty: "easy",
    subject: "Chemistry",
    prompt: "The chemical symbol for gold is ____.",
    acceptedAnswers: ["Au"],
    explanation: "From the Latin 'aurum'.",
  },
];

export const PROGRESS_DATA = [
  { day: "Mon", score: 62 },
  { day: "Tue", score: 70 },
  { day: "Wed", score: 65 },
  { day: "Thu", score: 78 },
  { day: "Fri", score: 82 },
  { day: "Sat", score: 75 },
  { day: "Sun", score: 88 },
];

export const SUBJECT_BREAKDOWN = [
  { subject: "Math", mastery: 78 },
  { subject: "Physics", mastery: 64 },
  { subject: "Chem", mastery: 71 },
  { subject: "Bio", mastery: 82 },
  { subject: "English", mastery: 88 },
];

// ---------- Achievements ----------
export interface Achievement {
  id: string;
  name: string;
  description: string;
  icon: string; // lucide name
  earned: boolean;
  earnedDate?: string;
  progress?: number; // 0-100
  rarity: "common" | "rare" | "epic" | "legendary";
}

export const ACHIEVEMENTS: Achievement[] = [
  { id: "a1", name: "First Steps", description: "Complete your first quiz", icon: "Sparkles", earned: true, earnedDate: "2 weeks ago", rarity: "common" },
  { id: "a2", name: "Week Warrior", description: "Maintain a 7-day streak", icon: "Flame", earned: true, earnedDate: "1 week ago", rarity: "common" },
  { id: "a3", name: "Fortnight Focus", description: "Maintain a 14-day streak", icon: "Flame", earned: true, earnedDate: "Today", rarity: "rare" },
  { id: "a4", name: "Perfect Score", description: "Get 100% on any quiz", icon: "Trophy", earned: true, earnedDate: "3 days ago", rarity: "rare" },
  { id: "a5", name: "Subject Master", description: "Reach 90% mastery in one subject", icon: "Crown", earned: false, progress: 88, rarity: "epic" },
  { id: "a6", name: "Marathon", description: "30-day streak", icon: "Medal", earned: false, progress: 47, rarity: "epic" },
  { id: "a7", name: "Polymath", description: "Master 5 subjects", icon: "Star", earned: false, progress: 20, rarity: "legendary" },
  { id: "a8", name: "Centurion", description: "Take 100 quizzes", icon: "Award", earned: false, progress: 47, rarity: "rare" },
  { id: "a9", name: "Night Owl", description: "Study after midnight 5 times", icon: "Moon", earned: true, earnedDate: "Yesterday", rarity: "common" },
  { id: "a10", name: "Early Bird", description: "Study before 6am 5 times", icon: "Sun", earned: false, progress: 60, rarity: "common" },
  { id: "a11", name: "Library Explorer", description: "Open 25 different papers", icon: "Compass", earned: false, progress: 40, rarity: "rare" },
  { id: "a12", name: "Comeback Kid", description: "Improve a subject by 20%", icon: "TrendingUp", earned: true, earnedDate: "5 days ago", rarity: "rare" },
];

// ---------- Streak calendar ----------
export const STREAK_DAYS: { date: string; intensity: number }[] = (() => {
  const days: { date: string; intensity: number }[] = [];
  const today = new Date();
  for (let i = 90; i >= 0; i--) {
    const d = new Date(today);
    d.setDate(today.getDate() - i);
    const r = seed(i + 11);
    let intensity = 0;
    if (i < 14) intensity = 2 + Math.floor(r * 3); // current 14-day streak
    else if (r > 0.35) intensity = 1 + Math.floor(r * 3);
    days.push({ date: d.toISOString().slice(0, 10), intensity });
  }
  return days;
})();

// ---------- Leaderboard ----------
export const LEADERBOARD = [
  { rank: 1, name: "Ibrahim Okafor", country: "🇳🇬", xp: 12450, streak: 32, you: false },
  { rank: 2, name: "Aminata Diallo", country: "🇸🇳", xp: 11200, streak: 28, you: false },
  { rank: 3, name: "Kwame Asante", country: "🇬🇭", xp: 10870, streak: 24, you: false },
  { rank: 4, name: "Wanjiku Mwangi", country: "🇰🇪", xp: 9650, streak: 19, you: false },
  { rank: 5, name: "Akua Mensah", country: "🇬🇭", xp: 8920, streak: 14, you: true },
  { rank: 6, name: "Tendai Moyo", country: "🇿🇼", xp: 8400, streak: 12, you: false },
  { rank: 7, name: "Chiamaka Eze", country: "🇳🇬", xp: 8100, streak: 10, you: false },
  { rank: 8, name: "Joseph Mwila", country: "🇿🇲", xp: 7850, streak: 18, you: false },
  { rank: 9, name: "Fatou Ndiaye", country: "🇸🇳", xp: 7400, streak: 8, you: false },
  { rank: 10, name: "Samuel Otieno", country: "🇰🇪", xp: 7200, streak: 11, you: false },
];

// ---------- Notifications ----------
export interface Notification {
  id: string;
  title: string;
  body: string;
  time: string;
  type: "streak" | "achievement" | "reminder" | "system";
  read: boolean;
}

export const NOTIFICATIONS: Notification[] = [
  { id: "n1", title: "🔥 Don't break your streak!", body: "You haven't studied today. Take a 5-min quiz to keep your 14-day streak alive.", time: "2h ago", type: "reminder", read: false },
  { id: "n2", title: "Achievement unlocked", body: "You earned 'Fortnight Focus' for a 14-day streak.", time: "Today", type: "achievement", read: false },
  { id: "n3", title: "New papers added", body: "12 new WASSCE papers from 2024 are now available.", time: "Yesterday", type: "system", read: true },
  { id: "n4", title: "Weekly summary", body: "You scored 82% average this week — up 12% from last week.", time: "2 days ago", type: "system", read: true },
  { id: "n5", title: "Friend joined", body: "Kofi joined StudyFlow. Add them on the leaderboard.", time: "3 days ago", type: "system", read: true },
];

// ---------- Connected devices (mock multi-device sync) ----------
export interface Device {
  id: string;
  name: string;
  type: "phone" | "laptop" | "tablet";
  location: string;
  lastActive: string;
  current: boolean;
}

export const DEVICES: Device[] = [
  { id: "d1", name: "iPhone 14", type: "phone", location: "Accra, Ghana", lastActive: "Active now", current: true },
  { id: "d2", name: "MacBook Air", type: "laptop", location: "Accra, Ghana", lastActive: "2 hours ago", current: false },
  { id: "d3", name: "Samsung Tab S9", type: "tablet", location: "Kumasi, Ghana", lastActive: "Yesterday", current: false },
];

// ---------- Daily challenge ----------
export const DAILY_CHALLENGE = {
  date: new Date().toISOString().slice(0, 10),
  title: "Mixed Sciences Sprint",
  description: "10 fast questions across Physics, Chemistry, and Biology.",
  xp: 150,
  questions: 10,
  difficulty: "medium" as Difficulty,
};
