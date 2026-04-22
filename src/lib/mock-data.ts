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

export interface PastPaper {
  id: string;
  title: string;
  subject: Subject;
  examBoard: ExamBoard;
  year: number;
  questions: number;
  downloads: number;
  isPremium: boolean;
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

const seed = (n: number) => {
  let x = Math.sin(n) * 10000;
  return x - Math.floor(x);
};

export const PAPERS: PastPaper[] = Array.from({ length: 48 }).map((_, i) => {
  const subject = SUBJECTS[i % SUBJECTS.length];
  const examBoard = EXAM_BOARDS[i % EXAM_BOARDS.length];
  const year = 2015 + (i % 10);
  return {
    id: `paper-${i + 1}`,
    title: `${subject} ${examBoard} ${year}`,
    subject,
    examBoard,
    year,
    questions: 30 + Math.floor(seed(i + 1) * 30),
    downloads: 200 + Math.floor(seed(i + 7) * 4800),
    isPremium: i % 9 === 0,
  };
});

export interface QuizQuestion {
  id: string;
  subject: Subject;
  question: string;
  choices: string[];
  correctIndex: number;
  explanation: string;
}

export const QUIZ_QUESTIONS: QuizQuestion[] = [
  {
    id: "q1",
    subject: "Mathematics",
    question: "If 2x + 3 = 11, what is the value of x?",
    choices: ["2", "3", "4", "5"],
    correctIndex: 2,
    explanation: "2x = 11 − 3 = 8, so x = 4.",
  },
  {
    id: "q2",
    subject: "Physics",
    question: "What is the SI unit of electric current?",
    choices: ["Volt", "Watt", "Ampere", "Ohm"],
    correctIndex: 2,
    explanation: "The ampere (A) is the SI base unit of electric current.",
  },
  {
    id: "q3",
    subject: "Chemistry",
    question: "Which gas is most abundant in the Earth's atmosphere?",
    choices: ["Oxygen", "Carbon dioxide", "Nitrogen", "Hydrogen"],
    correctIndex: 2,
    explanation: "Nitrogen makes up about 78% of the atmosphere.",
  },
  {
    id: "q4",
    subject: "Biology",
    question: "The powerhouse of the cell is the:",
    choices: ["Nucleus", "Mitochondrion", "Ribosome", "Golgi apparatus"],
    correctIndex: 1,
    explanation: "Mitochondria produce most of the cell's ATP.",
  },
  {
    id: "q5",
    subject: "English",
    question: "Choose the correctly spelled word:",
    choices: ["Recieve", "Receive", "Recieve", "Receeve"],
    correctIndex: 1,
    explanation: "I before E except after C — receive.",
  },
  {
    id: "q6",
    subject: "Geography",
    question: "The longest river in Africa is the:",
    choices: ["Congo", "Niger", "Zambezi", "Nile"],
    correctIndex: 3,
    explanation: "The Nile, at ~6,650 km, is Africa's longest river.",
  },
  {
    id: "q7",
    subject: "Economics",
    question: "Opportunity cost refers to:",
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
    subject: "Mathematics",
    question: "What is the area of a circle with radius 7? (use π = 22/7)",
    choices: ["44", "154", "49", "22"],
    correctIndex: 1,
    explanation: "A = πr² = (22/7) × 49 = 154.",
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
