import { createHash } from "node:crypto";
import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { join } from "node:path";

// Generates per-subject hard practice content for the English GCE subsystem:
//   - 5 topic-wise hard structural papers (20 questions each). Each paper focuses
//     on one syllabus topic and cycles through the subject's topics when there
//     are fewer than 5.
//   - 3 MCQ papers (60 questions each) with A-D options and an answer key.
// Writes markdown into content/papers/<slug>/, appends rows to manifest.csv, and
// emits a numbered SQL migration that imports every paper with an explicit
// topic_id (deterministic UUID, ON CONFLICT upsert).
//
// Usage: node scripts/generate-hard-papers.mjs [subject-slug ...]
//   With no args, generates for every configured subject.

const root = process.cwd();
const papersDir = join(root, "content", "papers");
const outDir = join(root, "database", "supabase");

function sql(value) {
  return `'${String(value).replace(/'/g, "''")}'`;
}

function list(values) {
  return `array[${values.map(sql).join(", ")}]::text[]`;
}

// Deterministic UUID (v5-shaped) so re-running keeps ids stable and the
// migration stays idempotent via ON CONFLICT (id).
function uuid(name) {
  const hash = createHash("sha1").update(`study-spark:${name}`).digest();
  const bytes = [...hash.slice(0, 16)];
  bytes[6] = (bytes[6] & 0x0f) | 0x50;
  bytes[8] = (bytes[8] & 0x3f) | 0x80;
  const hex = bytes.map((b) => b.toString(16).padStart(2, "0")).join("");
  return `${hex.slice(0, 8)}-${hex.slice(8, 12)}-${hex.slice(12, 16)}-${hex.slice(16, 20)}-${hex.slice(20, 32)}`;
}

function slug(value) {
  return value
    .toLowerCase()
    .replace(/&/g, "and")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/(^-|-$)/g, "");
}

// ---------------------------------------------------------------------------
// Subject configuration
// ---------------------------------------------------------------------------

const subjects = {
  mathematics: {
    subject: "Mathematics",
    level: "ordinary",
    classLevel: "form_5",
    series: "general, science, technical",
    exam: "GCE",
    topics: [
      {
        id: "math-number-algebra",
        title: "Number and algebra",
        description:
          "Indices, surds, logarithms, sequences, inequalities, and algebraic manipulation.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science", "commercial", "technical"],
        questionCount: 40,
        estimatedMinutes: 140,
      },
      {
        id: "math-geometry-measurement",
        title: "Geometry and measurement",
        description: "Angles, polygons, circles, loci, mensuration, bearings, and scale drawing.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science", "commercial", "technical"],
        questionCount: 40,
        estimatedMinutes: 140,
      },
      {
        id: "math-trigonometry",
        title: "Trigonometry",
        description:
          "Ratios, identities, sine rule, cosine rule, bearings, heights, and distances.",
        level: "ordinary",
        classLevels: ["form_4", "form_5"],
        series: ["general", "science", "technical"],
        questionCount: 40,
        estimatedMinutes: 140,
      },
      {
        id: "math-statistics-probability",
        title: "Statistics and probability",
        description: "Data presentation, averages, dispersion, probability, and interpretation.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science", "commercial", "technical"],
        questionCount: 40,
        estimatedMinutes: 140,
      },
    ],
    structural: structuralMath,
    mcq: mcqMath,
  },
  "english-language": {
    subject: "English Language",
    level: "ordinary",
    classLevel: "form_5",
    series: "general, science, arts, commercial, technical",
    exam: "GCE",
    topics: [
      {
        id: "eng-comprehension-summary",
        title: "Comprehension and summary",
        description: "Reading comprehension, inference, vocabulary, and concise summary writing.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science", "arts", "commercial", "technical"],
        questionCount: 30,
        estimatedMinutes: 120,
      },
      {
        id: "eng-grammar-vocabulary",
        title: "Grammar and vocabulary",
        description: "Sentence structure, tenses, clauses, concord, punctuation, and word use.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science", "arts", "commercial", "technical"],
        questionCount: 30,
        estimatedMinutes: 120,
      },
      {
        id: "eng-essay-writing",
        title: "Composition and essay writing",
        description: "Narrative, descriptive, argumentative, expository, and formal writing.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science", "arts", "commercial", "technical"],
        questionCount: 35,
        estimatedMinutes: 120,
      },
    ],
    structural: structuralEnglish,
    mcq: mcqEnglish,
  },
  "additional-mathematics": {
    subject: "Additional Mathematics",
    level: "ordinary",
    classLevel: "form_5",
    series: "science, technical",
    exam: "GCE",
    topics: [
      {
        id: "addmath-functions",
        title: "Functions and graphs",
        description:
          "Mappings, composite functions, inverse functions, curve sketching, and transformations.",
        level: "ordinary",
        classLevels: ["form_4", "form_5"],
        series: ["science", "technical"],
        questionCount: 40,
        estimatedMinutes: 140,
      },
      {
        id: "addmath-calculus",
        title: "Introductory calculus",
        description: "Limits, differentiation, integration, tangents, normals, maxima, and minima.",
        level: "ordinary",
        classLevels: ["form_4", "form_5"],
        series: ["science", "technical"],
        questionCount: 45,
        estimatedMinutes: 140,
      },
    ],
    structural: structuralAddMath,
    mcq: mcqAddMath,
  },
  french: {
    subject: "French",
    level: "ordinary",
    classLevel: "form_5",
    series: "general, science, arts, commercial, technical",
    exam: "GCE",
    topics: [
      {
        id: "french-grammar",
        title: "Grammaire et conjugaison",
        description: "Accords, temps verbaux, pronoms, syntaxe, discours direct et indirect.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science", "arts", "commercial", "technical"],
        questionCount: 30,
        estimatedMinutes: 120,
      },
      {
        id: "french-comprehension-expression",
        title: "Comprehension et expression ecrite",
        description: "Lecture, vocabulaire, resume, redaction, lettre, dialogue, et traduction.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science", "arts", "commercial", "technical"],
        questionCount: 35,
        estimatedMinutes: 120,
      },
    ],
    structural: structuralFrench,
    mcq: mcqFrench,
  },
};

// ---------------------------------------------------------------------------
// Mathematics — hard topic-wise structural questions
// Each function returns a 20-question array for a given topic index (0-based).
// Questions are topic-specific and calibrated to be harder than SET 1-3.
// ---------------------------------------------------------------------------

function structuralMath(topicIndex, paperSeed) {
  // Small per-paper offsets so a topic repeated across two papers varies.
  const s = paperSeed;
  const banks = [
    // ---- Topic 0: Number and algebra ----
    [
      `**Q1.** Solve $\\log_2(x+3) + \\log_2(x-1) = 5$. Hence state the restriction on $x$. *(8 marks)*`,
      `**Q2.** Given $8^{2x-1} = 4^{x+3}$, find the exact value of $x$. *(6 marks)*`,
      `**Q3.** Simplify $\\dfrac{\\sqrt{50} - \\sqrt{18}}{\\sqrt{2}}$ leaving your answer in the form $a + b\\sqrt{c}$. *(6 marks)*`,
      `**Q4.** The 3rd term of an arithmetic progression is 12 and the sum of the first 12 terms is 186.\n\n(a) Find the first term and common difference. *(5 marks)*\n\n(b) Find the least value of $n$ for which $T_n > 100$. *(3 marks)*`,
      `**Q5.** A geometric progression has sum to infinity 96 and common ratio $\\dfrac{3}{4}$.\n\n(a) Find the first term. *(3 marks)*\n\n(b) Find the least number of terms for which the sum exceeds 90. *(5 marks)*`,
      `**Q6.** Prove that for all real $x > 0$, $x + \\dfrac{1}{x} \\geq 2$. State when equality holds. *(6 marks)*`,
      `**Q7.** Solve the inequality $\\dfrac{2x+5}{x-3} \\geq 1$ and represent the solution on a number line. *(7 marks)*`,
      `**Q8.** When $P(x) = 2x^3 - 5x^2 + ax - 6$ is divided by $(x-2)$ the remainder is 3. Find $a$ and hence factorise $P(x)$ completely. *(8 marks)*`,
      `**Q9.** Expand $(1 - 2x)^4$ in ascending powers of $x$, and hence find the coefficient of $x^3$. *(5 marks)*`,
      `**Q10.** Solve simultaneously $y = x^2 - 4x + 3$ and $y = 2x - 6$. *(7 marks)*`,
      `**Q11.** Express $\\dfrac{3x+11}{x^2+x-6}$ in partial fractions. *(6 marks)*`,
      `**Q12.** Given that $\\log_{10} 2 = 0.3010$ and $\\log_{10} 3 = 0.4771$, evaluate $\\log_{10} 24$ without a table. *(4 marks)*`,
      `**Q13.** The sum of an infinite geometric series is 45 and the sum of the first two terms is 27. Find the common ratio. *(6 marks)*`,
      `**Q14.** Make $t$ the subject of $v = u + at$ and $s = ut + \\dfrac{1}{2}at^2$, then eliminate $t$ to express $v^2$ in terms of $u$, $a$ and $s$. *(7 marks)*`,
      `**Q15.** Solve $|3x - 4| \\leq 11$ and give the solution in interval form. *(5 marks)*`,
      `**Q16.** If $\\alpha$ and $\\beta$ are the roots of $2x^2 - 6x + 3 = 0$, find the value of $\\alpha^2 + \\beta^2$ and $\\dfrac{1}{\\alpha} + \\dfrac{1}{\\beta}$. *(6 marks)*`,
      `**Q17.** Simplify $\\dfrac{a^2 - b^2}{a - b} \\div \\dfrac{a+b}{a^2+ab+b^2}$ where the expression is defined. *(5 marks)*`,
      `**Q18.** A contractor prices a job with a fixed cost plus a variable rate. 3 jobs cost 45,000 FCFA and 7 jobs cost 85,000 FCFA.\n\n(a) Find the fixed cost and variable rate. *(5 marks)*\n\n(b) Predict the cost of 10 jobs and comment on the model. *(3 marks)*`,
      `**Q19.** Find the sum of the first 40 terms of the series $3 + 7 + 11 + \\cdots$. *(4 marks)*`,
      `**Q20.** Prove algebraically that the sum of any three consecutive integers is divisible by 3. *(6 marks)*`,
    ],
    // ---- Topic 1: Geometry and measurement ----
    [
      `**Q1.** In a circle of radius 7 cm, a chord subtends an angle of $140^\\circ$ at the centre.\n\n(a) Find the length of the chord. *(4 marks)*\n\n(b) Find the area of the minor segment. *(4 marks)*`,
      `**Q2.** The interior angle of a regular polygon is $156^\\circ$. Find the number of sides and the name of the polygon. *(5 marks)*`,
      `**Q3.** A cone has slant height 13 cm and base radius 5 cm.\n\n(a) Find the vertical height. *(3 marks)*\n\n(b) Find the curved surface area. *(4 marks)*`,
      `**Q4.** Two ships leave a port at the same time. Ship A sails on a bearing of $070^\\circ$ for 60 km and ship B on a bearing of $150^\\circ$ for 80 km. Find the distance between them. *(6 marks)*`,
      `**Q5.** A sector of radius 10 cm and angle $72^\\circ$ is folded into a cone.\n\n(a) Find the arc length. *(3 marks)*\n\n(b) Find the radius of the cone's base. *(3 marks)*\n\n(c) Find the volume of the cone. *(4 marks)*`,
      `**Q6.** In the diagram, $AB$ is a diameter of a circle centre $O$. $C$ is a point on the circumference with $\\angle BAC = 35^\\circ$. Find $\\angle OBC$ and justify your answer using a circle theorem. *(5 marks)*`,
      `**Q7.** Find the volume of a sphere of radius 9 cm, giving your answer in terms of $\\pi$. *(4 marks)*`,
      `**Q8.** A road of gradient $1$ in $12$ rises over a horizontal distance of 240 m. Find the vertical rise and the length of the road. *(5 marks)*`,
      `**Q9.** The coordinates of the vertices of a triangle are $A(1,2)$, $B(6,2)$ and $C(4,7)$.\n\n(a) Find the area of the triangle. *(4 marks)*\n\n(b) Find the equation of the altitude from $C$ to $AB$. *(4 marks)*`,
      `**Q10.** A cylindrical tank of radius 1.4 m and height 3 m is filled with water.\n\n(a) Find the volume of water in the tank. *(3 marks)*\n\n(b) If water leaves at 5 litres per second, how long does it take to empty? *(4 marks)*`,
      `**Q11.** Describe and construct the locus of points equidistant from two intersecting lines. State the number of points in the locus. *(5 marks)*`,
      `**Q12.** A pyramid has a square base of side 6 cm and slant height 10 cm. Find its total surface area. *(5 marks)*`,
      `**Q13.** Two parallel lines are cut by a transversal. One interior angle on the same side is $(3x+15)^\\circ$ and the other is $(2x+30)^\\circ$. Find $x$ and both angles. *(5 marks)*`,
      `**Q14.** A sector of a circle of radius 12 cm has area $48\\pi$ cm$^2$. Find the angle of the sector in radians. *(5 marks)*`,
      `**Q15.** An arc of length 20 cm subtends an angle of $1.6$ radians at the centre of a circle. Find the radius and the area of the sector. *(5 marks)*`,
      `**Q16.** A right prism has a triangular cross-section with sides 5 cm, 12 cm and 13 cm, and length 20 cm. Find its volume and total surface area. *(6 marks)*`,
      `**Q17.** Using a scale of 1 cm to 5 m, a rectangular field measures 6.4 cm by 3.7 cm on a plan.\n\n(a) Find the actual dimensions. *(3 marks)*\n\n(b) Find the actual area in hectares. *(4 marks)*`,
      `**Q18.** The angle of elevation of the top of a tower from a point A is $30^\\circ$. From a point B, 40 m further away on the same horizontal line, the angle of elevation is $15^\\circ$. Find the height of the tower. *(7 marks)*`,
      `**Q19.** Prove that the angle in a semicircle is a right angle. *(5 marks)*`,
      `**Q20.** A capsule is formed by a cylinder of radius 2 cm and height 6 cm with a hemisphere at each end. Find the total volume and surface area of the capsule. *(6 marks)*`,
    ],
    // ---- Topic 2: Trigonometry ----
    [
      `**Q1.** Prove the identity $\\dfrac{\\sin 2\\theta}{1 + \\cos 2\\theta} = \\tan \\theta$. *(6 marks)*`,
      `**Q2.** In triangle $PQR$, $p = 8$ cm, $q = 11$ cm and $\\angle R = 47^\\circ$. Find $r$. *(6 marks)*`,
      `**Q3.** Solve $2\\sin x \\cos x = \\cos x$ for $0^\\circ \\leq x \\leq 360^\\circ$. *(5 marks)*`,
      `**Q4.** Find the exact value of $\\sin 105^\\circ$. *(4 marks)*`,
      `**Q5.** A ship sails 12 km on a bearing of $040^\\circ$ then 9 km on a bearing of $130^\\circ$.\n\n(a) Find the direct distance from the start. *(5 marks)*\n\n(b) Find the bearing of the start from the end point. *(4 marks)*`,
      `**Q6.** Show that $\\cos 3\\theta \\equiv 4\\cos^3\\theta - 3\\cos\\theta$. Hence solve $\\cos 3\\theta = \\dfrac{1}{2}$ for $0 \\leq \\theta < 2\\pi$. *(8 marks)*`,
      `**Q7.** The height of a cliff is measured from two points 80 m apart at the base. Angles of elevation are $42^\\circ$ and $61^\\circ$. Find the height of the cliff. *(6 marks)*`,
      `**Q8.** Express $3\\sin x + 4\\cos x$ in the form $R\\sin(x + \\alpha)$. Hence find its maximum value. *(6 marks)*`,
      `**Q9.** In triangle $ABC$, $a = 7$, $b = 8$ and $c = 9$. Find the largest angle correct to 1 decimal place. *(5 marks)*`,
      `**Q10.** Solve $\\tan 2x = \\sqrt{3}$ for $0^\\circ \\leq x \\leq 180^\\circ$. *(4 marks)*`,
      `**Q11.** A triangular plot has sides 130 m, 150 m and 180 m. Find the area of the plot. *(6 marks)*`,
      `**Q12.** Prove that $\\sin(A+B)\\sin(A-B) \\equiv \\sin^2 A - \\sin^2 B$. *(6 marks)*`,
      `**Q13.** From the top of a 60 m mast, the angle of depression of a buoy is $28^\\circ$. Find the horizontal distance to the buoy. *(4 marks)*`,
      `**Q14.** Find the general solution of $2\\cos^2 x - 3\\sin x = 0$ for $0^\\circ \\leq x \\leq 360^\\circ$. *(6 marks)*`,
      `**Q15.** The angles of a triangle are in the ratio $3:4:5$. Find the exact values of the smallest and largest angles' sines. *(5 marks)*`,
      `**Q16.** Two towers of heights 40 m and 60 m stand on level ground 100 m apart. Find the angle of elevation from the top of the shorter tower to the top of the taller one. *(5 marks)*`,
      `**Q17.** Simplify $\\dfrac{1 - \\cos 2\\theta}{\\sin 2\\theta}$ and hence evaluate it when $\\theta = 30^\\circ$. *(5 marks)*`,
      `**Q18.** A plane flies on a bearing of $115^\\circ$ for 200 km, then turns to a bearing of $200^\\circ$ for 150 km. Find its distance and bearing from the starting point. *(7 marks)*`,
      `**Q19.** Prove that $\\cot\\theta - \\tan\\theta \\equiv 2\\cot 2\\theta$. *(5 marks)*`,
      `**Q20.** In triangle $ABC$, $\\angle A = 58^\\circ$, $a = 14$ cm and $b = 16$ cm. Show that there are two possible triangles and find both possible values of $\\angle B$. *(7 marks)*`,
    ],
    // ---- Topic 3: Statistics and probability ----
    [
      `**Q1.** The marks of 50 students are grouped as: $0-9:3$, $10-19:7$, $20-29:12$, $30-39:15$, $40-49:9$, $50-59:4$.\n\n(a) Estimate the mean mark. *(4 marks)*\n\n(b) Estimate the median and comment on the skewness. *(4 marks)*`,
      `**Q2.** Two bags contain red and blue counters. Bag 1 has 3 red and 5 blue; bag 2 has 4 red and 1 blue. A bag is chosen at random and a counter drawn. Find the probability the counter is red. *(6 marks)*`,
      `**Q3.** The mean of 8 numbers is 24. If one number, 31, is removed, find the new mean. *(3 marks)*`,
      `**Q4.** A die and a coin are thrown together. Find the probability of getting a six and a head. *(3 marks)*`,
      `**Q5.** The quartiles of a data set are $Q1 = 12$, $Q2 = 18$, $Q3 = 27$.\n\n(a) Find the interquartile range. *(2 marks)*\n\n(b) Show that an observation of 52 is an outlier by the $1.5\\times IQR$ rule. *(3 marks)*`,
      `**Q6.** In a class of 30 students, 18 play football, 14 play basketball and 6 play both.\n\n(a) Draw a Venn diagram. *(3 marks)*\n\n(b) Find the probability that a randomly chosen student plays neither. *(3 marks)*`,
      `**Q7.** The table gives the frequency of books read per month: 0 books (5 students), 1 book (9), 2 books (12), 3 books (6), 4 books (3). Find the mean and mode. *(5 marks)*`,
      `**Q8.** A bag contains 5 green, 3 yellow and 2 red sweets. Three sweets are drawn without replacement. Find the probability all three are green. *(6 marks)*`,
      `**Q9.** The mean and standard deviation of a data set are 50 and 8. Find the coefficient of variation and interpret it. *(4 marks)*`,
      `**Q10.** Two cards are drawn from a standard pack without replacement. Find the probability both are hearts. *(4 marks)*`,
      `**Q11.** A cumulative frequency curve gives $Q1 = 22$, median = 31 and $Q3 = 44$. Find the interquartile range and the semi-interquartile range. *(4 marks)*`,
      `**Q12.** The probability that a student passes a test is 0.7. Four students are chosen. Find the probability exactly two pass. *(6 marks)*`,
      `**Q13.** A sample of 40 light bulbs has mean life 1200 h and standard deviation 60 h. Construct a 95% confidence interval for the mean. *(5 marks)*`,
      `**Q14.** The scatter diagram of height (cm) against mass (kg) for 10 children shows a strong positive correlation. Explain what this does and does not imply. *(4 marks)*`,
      `**Q15.** A spinner has 4 equal sections numbered 1 to 4. It is spun twice. Find the probability the sum is 5. *(4 marks)*`,
      `**Q16.** The marks below 40 are 12 students and above or equal to 40 are 28 students. Find the probability that a randomly chosen student scored at least 40, and state the complement. *(3 marks)*`,
      `**Q17.** A factory produces 1 in 20 defective items. Two items are picked at random. Find the probability at least one is defective. *(5 marks)*`,
      `**Q18.** The table shows the heights (cm) and masses (kg) of 8 students: height $150, 155, 160, 165, 170, 175, 180, 185$; mass $48, 52, 55, 58, 62, 66, 70, 74$.\n\n(a) Plot a scatter diagram of mass against height. *(3 marks)*\n\n(b) Describe the correlation between height and mass. *(2 marks)*\n\n(c) Estimate the mass of a student of height 172 cm using a line of best fit. *(3 marks)*`,
      `**Q19.** Events $A$ and $B$ are independent with $P(A) = 0.4$ and $P(B) = 0.5$. Find $P(A \\cup B)$. *(4 marks)*`,
      `**Q20.** A survey records the number of siblings of 20 students: mean 2.4, mode 2, median 2. Discuss which measure best represents a typical student and why. *(5 marks)*`,
    ],
  ];

  // Banks are written once per topic; for a repeated topic (paper seed offset)
  // we vary mark allocations slightly so the second paper is not a clone.
  const bank = banks[topicIndex];
  return bank.map((q, i) => {
    if (s === 0) return renumber(q, i + 1);
    return renumber(varyMarks(q, s), i + 1);
  });
}

function renumber(q, n) {
  return q.replace(/^\*\*Q\d+\.\*\*/, `**Q${n}.**`);
}

// Bump every mark allocation by `delta` to differentiate repeated papers.
function varyMarks(q, delta) {
  return q.replace(/\*\((\d+) marks\)\*/g, (_, m) => `*(${Number(m) + delta} marks)*`);
}

// ---------------------------------------------------------------------------
// Mathematics — MCQ generation
// Returns { questions: [{ stem, options: [4], answer: index }] } for a topic.
// ---------------------------------------------------------------------------

function mcqMath(topicIndex) {
  const banks = [
    // Topic 0: Number and algebra
    [
      { stem: "Solve $2^{x} = 32$.", options: ["5", "6", "4", "16"], answer: 0 },
      {
        stem: "Simplify $\\sqrt{72}$.",
        options: ["$6\\sqrt{2}$", "$3\\sqrt{8}$", "$8\\sqrt{3}$", "$2\\sqrt{18}$"],
        answer: 0,
      },
      { stem: "Evaluate $\\log_{3} 81$.", options: ["4", "3", "2", "9"], answer: 0 },
      {
        stem: "The 4th term of an AP is 14 and the common difference is 3. Find the first term.",
        options: ["5", "8", "11", "2"],
        answer: 0,
      },
      {
        stem: "Find the sum to infinity of a GP with $a = 12$ and $r = \\dfrac{1}{3}$.",
        options: ["18", "16", "24", "36"],
        answer: 0,
      },
      {
        stem: "Factorise $x^2 - 9$.",
        options: ["$(x-3)(x+3)$", "$(x-9)(x+1)$", "$(x-3)^2$", "$(x+9)(x-1)$"],
        answer: 0,
      },
      { stem: "Solve $3x - 7 = 11$.", options: ["6", "4", "8", "5"], answer: 0 },
      {
        stem: "Expand $(x+2)^2$.",
        options: ["$x^2 + 4x + 4$", "$x^2 + 2x + 4$", "$x^2 + 4x + 2$", "$x^2 + 4$"],
        answer: 0,
      },
      {
        stem: "The roots of $x^2 - 5x + 6 = 0$ are:",
        options: ["2 and 3", "1 and 6", "-2 and -3", "2 and -3"],
        answer: 0,
      },
      {
        stem: "Simplify $\\dfrac{x^2 - 4}{x - 2}$ for $x \\neq 2$.",
        options: ["$x + 2$", "$x - 2$", "$x^2 + 2$", "$x$"],
        answer: 0,
      },
      { stem: "Find the value of $\\log_{10} 1000$.", options: ["3", "2", "10", "1"], answer: 0 },
      {
        stem: "If $f(x) = 2x + 3$, find $f^{-1}(x)$.",
        options: ["$\\dfrac{x-3}{2}$", "$\\dfrac{x+3}{2}$", "$2x - 3$", "$\\dfrac{x}{2} + 3$"],
        answer: 0,
      },
      {
        stem: "The 10th term of the sequence $2, 5, 8, \\ldots$ is:",
        options: ["29", "32", "26", "50"],
        answer: 0,
      },
      {
        stem: "Solve the simultaneous equations $x + y = 10$ and $x - y = 4$.",
        options: ["$x=7, y=3$", "$x=6, y=4$", "$x=5, y=5$", "$x=8, y=2$"],
        answer: 0,
      },
      {
        stem: "Evaluate $\\dfrac{1}{2} + \\dfrac{1}{3}$.",
        options: ["$\\dfrac{5}{6}$", "$\\dfrac{2}{5}$", "$\\dfrac{1}{6}$", "$\\dfrac{3}{5}$"],
        answer: 0,
      },
      {
        stem: "What is the value of $0.25$ as a fraction in lowest terms?",
        options: ["$\\dfrac{1}{4}$", "$\\dfrac{1}{5}$", "$\\dfrac{2}{5}$", "$\\dfrac{1}{8}$"],
        answer: 0,
      },
      {
        stem: "The discriminant of $x^2 + 4x + 5 = 0$ is:",
        options: ["-4", "4", "16", "0"],
        answer: 0,
      },
      {
        stem: "Simplify $a^3 \\cdot a^4$.",
        options: ["$a^7$", "$a^{12}$", "$a^{34}$", "$2a^7$"],
        answer: 0,
      },
      {
        stem: "Make $x$ the subject of $y = 3x - 5$.",
        options: [
          "$x = \\dfrac{y+5}{3}$",
          "$x = \\dfrac{y-5}{3}$",
          "$x = 3y - 5$",
          "$x = \\dfrac{y}{3} + 5$",
        ],
        answer: 0,
      },
      {
        stem: "Find the coefficient of $x^2$ in $(1 + x)^4$.",
        options: ["6", "4", "1", "12"],
        answer: 0,
      },
    ],
    // Topic 1: Geometry and measurement
    [
      {
        stem: "The sum of the interior angles of a hexagon is:",
        options: ["720°", "540°", "900°", "1080°"],
        answer: 0,
      },
      {
        stem: "The area of a circle of radius 7 cm (take $\\pi = \\dfrac{22}{7}$) is:",
        options: ["154 cm²", "144 cm²", "156 cm²", "148 cm²"],
        answer: 0,
      },
      {
        stem: "The circumference of a circle of diameter 10 cm is:",
        options: ["$10\\pi$ cm", "$5\\pi$ cm", "$20\\pi$ cm", "$100\\pi$ cm"],
        answer: 0,
      },
      {
        stem: "The volume of a cylinder of radius 3 cm and height 10 cm is:",
        options: ["$90\\pi$ cm³", "$30\\pi$ cm³", "$13\\pi$ cm³", "$300\\pi$ cm³"],
        answer: 0,
      },
      {
        stem: "The interior angle of a regular octagon is:",
        options: ["135°", "140°", "120°", "144°"],
        answer: 0,
      },
      {
        stem: "The volume of a sphere of radius 3 cm is (in terms of $\\pi$):",
        options: ["$36\\pi$ cm³", "$27\\pi$ cm³", "$9\\pi$ cm³", "$108\\pi$ cm³"],
        answer: 0,
      },
      {
        stem: "The area of a sector of radius 12 cm and angle 60° is:",
        options: ["$12\\pi$ cm²", "$24\\pi$ cm²", "$6\\pi$ cm²", "$144\\pi$ cm²"],
        answer: 1,
      },
      {
        stem: "A right triangle has legs 6 cm and 8 cm. Its hypotenuse is:",
        options: ["10 cm", "12 cm", "14 cm", "7 cm"],
        answer: 0,
      },
      {
        stem: "The perimeter of a rectangle of length 12 cm and width 5 cm is:",
        options: ["34 cm", "60 cm", "17 cm", "28 cm"],
        answer: 0,
      },
      {
        stem: "The distance between $(1,2)$ and $(4,6)$ is:",
        options: ["5", "7", "12", "25"],
        answer: 0,
      },
      {
        stem: "The gradient of the line through $(0,0)$ and $(3,5)$ is:",
        options: ["$\\dfrac{5}{3}$", "$\\dfrac{3}{5}$", "5", "3"],
        answer: 0,
      },
      { stem: "The angle in a semicircle is:", options: ["90°", "60°", "45°", "180°"], answer: 0 },
      {
        stem: "The volume of a cone of radius 3 cm and height 9 cm is (in terms of $\\pi$):",
        options: ["$27\\pi$ cm³", "$81\\pi$ cm³", "$9\\pi$ cm³", "$54\\pi$ cm³"],
        answer: 0,
      },
      {
        stem: "The sum of the exterior angles of any convex polygon is:",
        options: ["360°", "180°", "540°", "720°"],
        answer: 0,
      },
      {
        stem: "The area of a triangle with base 10 cm and height 6 cm is:",
        options: ["30 cm²", "60 cm²", "16 cm²", "36 cm²"],
        answer: 0,
      },
      {
        stem: "The locus of points equidistant from a fixed point is:",
        options: ["a circle", "a line", "an ellipse", "a square"],
        answer: 0,
      },
      {
        stem: "The slant height of a cone is 5 cm and radius 3 cm; its vertical height is:",
        options: ["4 cm", "6 cm", "8 cm", "2 cm"],
        answer: 0,
      },
      {
        stem: "The area of a parallelogram of base 8 cm and perpendicular height 5 cm is:",
        options: ["40 cm²", "45 cm²", "13 cm²", "20 cm²"],
        answer: 0,
      },
      {
        stem: "The volume of a rectangular prism 4 cm × 3 cm × 5 cm is:",
        options: ["60 cm³", "35 cm³", "47 cm³", "120 cm³"],
        answer: 0,
      },
      {
        stem: "The complement of an angle of 35° is:",
        options: ["55°", "145°", "65°", "125°"],
        answer: 0,
      },
    ],
    // Topic 2: Trigonometry
    [
      {
        stem: "The exact value of $\\sin 30^\\circ$ is:",
        options: ["$\\dfrac{1}{2}$", "$\\dfrac{\\sqrt{3}}{2}$", "$\\dfrac{1}{\\sqrt{2}}$", "1"],
        answer: 0,
      },
      {
        stem: "The exact value of $\\cos 60^\\circ$ is:",
        options: ["$\\dfrac{1}{2}$", "$\\dfrac{\\sqrt{3}}{2}$", "$\\dfrac{1}{\\sqrt{2}}$", "0"],
        answer: 0,
      },
      {
        stem: "The exact value of $\\tan 45^\\circ$ is:",
        options: ["1", "$\\sqrt{3}$", "$\\dfrac{1}{\\sqrt{3}}$", "0"],
        answer: 0,
      },
      {
        stem: "In a right triangle, $\\sin\\theta = \\dfrac{3}{5}$. Then $\\cos\\theta$ is:",
        options: ["$\\dfrac{4}{5}$", "$\\dfrac{5}{3}$", "$\\dfrac{3}{4}$", "$\\dfrac{1}{5}$"],
        answer: 0,
      },
      {
        stem: "The value of $\\sin 90^\\circ$ is:",
        options: ["1", "0", "$\\dfrac{1}{2}$", "-1"],
        answer: 0,
      },
      {
        stem: "The period of $y = \\sin x$ is:",
        options: ["$2\\pi$", "$\\pi$", "$\\dfrac{\\pi}{2}$", "$4\\pi$"],
        answer: 0,
      },
      {
        stem: "Which identity is correct?",
        options: [
          "$\\sin^2\\theta + \\cos^2\\theta = 1$",
          "$\\sin^2\\theta - \\cos^2\\theta = 1$",
          "$1 + \\tan^2\\theta = \\cos^2\\theta$",
          "$\\sin\\theta = \\cos\\theta$ always",
        ],
        answer: 0,
      },
      {
        stem: "In triangle ABC with sides a=7, b=8, c=9, the largest angle is opposite the longest side. The largest side is:",
        options: ["c", "a", "b", "cannot tell"],
        answer: 0,
      },
      {
        stem: "The exact value of $\\tan 30^\\circ$ is:",
        options: ["$\\dfrac{1}{\\sqrt{3}}$", "$\\sqrt{3}$", "1", "$\\dfrac{\\sqrt{3}}{2}$"],
        answer: 0,
      },
      {
        stem: "The general solution of $\\sin x = 0$ includes:",
        options: [
          "$x = n\\pi$",
          "$x = 2n\\pi$",
          "$x = \\dfrac{\\pi}{2} + n\\pi$",
          "$x = n\\pi + \\dfrac{\\pi}{4}$",
        ],
        answer: 0,
      },
      {
        stem: "The cosine rule for a triangle is:",
        options: [
          "$c^2 = a^2 + b^2 - 2ab\\cos C$",
          "$c^2 = a^2 + b^2$",
          "$c = a + b - \\cos C$",
          "$c^2 = a^2 - b^2 + 2ab\\cos C$",
        ],
        answer: 0,
      },
      {
        stem: "The sine rule states:",
        options: [
          "$\\dfrac{a}{\\sin A} = \\dfrac{b}{\\sin B} = \\dfrac{c}{\\sin C}$",
          "$\\dfrac{a}{\\cos A} = \\dfrac{b}{\\cos B} = \\dfrac{c}{\\cos C}$",
          "$a + b = c$",
          "$\\sin A = \\sin B$ always",
        ],
        answer: 0,
      },
      {
        stem: "The exact value of $\\cos 45^\\circ$ is:",
        options: ["$\\dfrac{1}{\\sqrt{2}}$", "$\\dfrac{\\sqrt{3}}{2}$", "$\\dfrac{1}{2}$", "1"],
        answer: 0,
      },
      {
        stem: "The angle of depression from a point equals:",
        options: [
          "the angle of elevation from the other point",
          "90° minus the elevation",
          "twice the elevation",
          "half the elevation",
        ],
        answer: 0,
      },
      {
        stem: "The exact value of $\\sin 45^\\circ$ is:",
        options: ["$\\dfrac{1}{\\sqrt{2}}$", "$\\dfrac{\\sqrt{3}}{2}$", "$\\dfrac{1}{2}$", "1"],
        answer: 0,
      },
      {
        stem: "In a right triangle with angle θ, tan θ = opposite/adjacent. If opposite = 3 and adjacent = 4, tan θ is:",
        options: ["$\\dfrac{3}{4}$", "$\\dfrac{4}{3}$", "$\\dfrac{5}{4}$", "$\\dfrac{3}{5}$"],
        answer: 0,
      },
      {
        stem: "The value of $\\sin 0^\\circ$ is:",
        options: ["0", "1", "$\\dfrac{1}{2}$", "-1"],
        answer: 0,
      },
      {
        stem: "The value of $\\cos 0^\\circ$ is:",
        options: ["1", "0", "$\\dfrac{1}{2}$", "-1"],
        answer: 0,
      },
      {
        stem: "The supplementary angle of 120° is:",
        options: ["60°", "30°", "240°", "150°"],
        answer: 0,
      },
      {
        stem: "The exact value of $\\sin 150^\\circ$ is:",
        options: ["$\\dfrac{1}{2}$", "$\\dfrac{\\sqrt{3}}{2}$", "-$\\dfrac{1}{2}$", "1"],
        answer: 0,
      },
    ],
    // Topic 3: Statistics and probability
    [
      { stem: "The mean of 4, 8, 10 and 12 is:", options: ["8.5", "8", "9", "7.5"], answer: 0 },
      { stem: "The median of 3, 5, 7, 9, 11 is:", options: ["7", "5", "9", "6"], answer: 0 },
      { stem: "The mode of 2, 3, 3, 4, 4, 4, 5 is:", options: ["4", "3", "5", "2"], answer: 0 },
      { stem: "The range of 12, 18, 7, 20, 5 is:", options: ["15", "13", "20", "7"], answer: 0 },
      {
        stem: "The probability of rolling a 6 on a fair die is:",
        options: ["$\\dfrac{1}{6}$", "$\\dfrac{1}{3}$", "$\\dfrac{1}{2}$", "1"],
        answer: 0,
      },
      {
        stem: "The probability of getting a head on a fair coin is:",
        options: ["$\\dfrac{1}{2}$", "1", "0", "$\\dfrac{1}{4}$"],
        answer: 0,
      },
      {
        stem: "A bag has 5 red and 3 blue counters. Probability of drawing a blue is:",
        options: ["$\\dfrac{3}{8}$", "$\\dfrac{3}{5}$", "$\\dfrac{5}{8}$", "$\\dfrac{1}{3}$"],
        answer: 0,
      },
      {
        stem: "The interquartile range equals:",
        options: ["Q3 - Q1", "Q3 - Q2", "Q2 - Q1", "maximum - minimum"],
        answer: 0,
      },
      {
        stem: "The sum of all probabilities in a distribution must equal:",
        options: ["1", "0", "100", "the number of outcomes"],
        answer: 0,
      },
      {
        stem: "If two events are mutually exclusive, P(A and B) is:",
        options: ["0", "1", "P(A) + P(B)", "P(A) × P(B)"],
        answer: 0,
      },
      {
        stem: "The mean of the first 5 positive integers is:",
        options: ["3", "2.5", "4", "5"],
        answer: 0,
      },
      {
        stem: "A coin is tossed twice. Probability of two heads is:",
        options: ["$\\dfrac{1}{4}$", "$\\dfrac{1}{2}$", "$\\dfrac{1}{3}$", "1"],
        answer: 0,
      },
      {
        stem: "The standard deviation measures:",
        options: [
          "spread about the mean",
          "central tendency",
          "the middle value",
          "the most frequent value",
        ],
        answer: 0,
      },
      {
        stem: "The median of an even number of observations is:",
        options: [
          "the mean of the two middle values",
          "the largest value",
          "the smallest value",
          "the mode",
        ],
        answer: 0,
      },
      {
        stem: "A survey of 200 students finds 120 prefer tea. The relative frequency is:",
        options: ["0.6", "0.4", "80", "1.67"],
        answer: 0,
      },
      {
        stem: "The mode of a grouped frequency distribution is found using:",
        options: ["the modal class", "the median class", "the mean class", "the class boundary"],
        answer: 0,
      },
      {
        stem: "If P(A) = 0.3 and A and B are independent with P(B) = 0.5, P(A and B) is:",
        options: ["0.15", "0.8", "0.2", "0.4"],
        answer: 0,
      },
      {
        stem: "The mean of grouped data is estimated using:",
        options: ["class midpoints", "class boundaries", "class widths", "the modal class"],
        answer: 0,
      },
      {
        stem: "The complement of an event with probability 0.25 has probability:",
        options: ["0.75", "0.25", "1.25", "0.5"],
        answer: 0,
      },
      {
        stem: "A cumulative frequency graph is used to estimate:",
        options: ["the median and quartiles", "the mode", "the standard deviation", "the range"],
        answer: 0,
      },
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// English Language — hard topic-wise structural questions
// ---------------------------------------------------------------------------

function structuralEnglish(topicIndex, paperSeed) {
  const s = paperSeed;
  const banks = [
    // ---- Topic 0: Comprehension and summary ----
    [
      `**Q1.** Read the passage below and answer the questions that follow.\n\n*"The village market was more than a place of trade; it was the beating heart of the community. Here, farmers exchanged news with traders, and children learned the value of honest dealing. Yet in recent years, the market has been shrinking as young people migrate to the cities, leaving behind ageing vendors and empty stalls."*\n\n(a) In one sentence, state the main idea of the passage. *(3 marks)*\n\n(b) Give two reasons the writer gives for the market's decline. *(4 marks)*\n\n(c) Explain what the writer means by "the beating heart of the community". *(4 marks)*`,
      `**Q2.** Summarise the following passage in not more than 60 words.\n\n*"Rainwater harvesting is an ancient practice that is regaining importance in Cameroon. By collecting runoff from rooftops into storage tanks, households can reduce their dependence on erratic municipal supplies. The water is ideal for gardening, washing, and, after proper treatment, even drinking. Critics argue that the initial cost of tanks and guttering is prohibitive, but supporters point out that the investment pays for itself within a few years through lower water bills and greater self-reliance."*\n\nYour summary must be in continuous prose and must not include direct quotations. *(10 marks)*`,
      `**Q3.** Read the passage and answer the questions that follow.\n\n*"The examination results were posted at dawn. For Amina, the moment was both terrifying and liberating. She had spent three sleepless nights rehearsing the worst-case scenario, yet when her name appeared on the list of successful candidates, she felt a surge of relief so powerful it left her breathless."*\n\n(a) Identify the dominant emotion in the passage and quote one phrase that supports your answer. *(4 marks)*\n\n(b) What does the phrase "rehearsing the worst-case scenario" reveal about Amina's character? *(4 marks)*\n\n(c) Suggest a suitable title for the passage. *(2 marks)*`,
      `**Q4.** Read the passage and answer the questions that follow.\n\n*"Cameroon's forests are among the most biodiverse on the continent, sheltering elephants, gorillas, and thousands of plant species. However, illegal logging and slash-and-burn farming are destroying these habitats at an alarming rate. Conservationists argue that protecting the forests is not merely an environmental concern but an economic one, since ecotourism and sustainable harvesting can generate lasting income for local communities."*\n\n(a) State two threats to Cameroon's forests mentioned in the passage. *(4 marks)*\n\n(b) Explain why the writer describes forest protection as "an economic one". *(4 marks)*\n\n(c) Give the meaning of "biodiverse" as used in the passage. *(2 marks)*`,
      `**Q5.** Summarise the following passage in not more than 70 words.\n\n*"Mobile money has transformed financial life in Cameroon. Before its arrival, many rural families had no access to banks and relied on risky methods of storing and transferring cash. Today, a farmer can sell his cocoa, receive payment on his phone, and pay his children's school fees without travelling to a town. Mobile money has also created jobs, as agents earn commissions on every transaction. Nevertheless, concerns remain about fraud, network failures, and the exclusion of the elderly who struggle with the technology."*\n\nYour summary must be in continuous prose. *(10 marks)*`,
      `**Q6.** Read the passage and answer the questions that follow.\n\n*"The old woman refused to be rushed. Each morning she swept her compound with slow, deliberate strokes, as if the dust were an enemy she had known for years. Her neighbours, who hurried past with phones pressed to their ears, did not understand that for her, sweeping was not a chore but a meditation."*\n\n(a) What does the writer suggest about the difference between the old woman and her neighbours? *(4 marks)*\n\n(b) Explain the meaning of "a meditation" in the context of the passage. *(4 marks)*\n\n(c) Identify one figure of speech used in the passage and explain its effect. *(4 marks)*`,
      `**Q7.** Read the passage and answer the questions that follow.\n\n*"The river had always been generous, giving the village fish, water, and fertile soil. But generosity, the elders warned, must never be taken for granted. When the rains failed and the river shrank to a muddy trickle, the village learned that nature's gifts come with conditions."*\n\n(a) State the lesson the village learned. *(3 marks)*\n\n(b) Explain how the writer uses personification in the passage. *(4 marks)*\n\n(c) What is the writer's attitude towards the river? Support your answer with evidence. *(4 marks)*`,
      `**Q8.** Summarise the following passage in not more than 60 words.\n\n*"School feeding programmes in Cameroon serve a dual purpose. For children, a guaranteed midday meal improves concentration, attendance, and overall health. For farmers, the programmes provide a reliable market for their produce, since schools purchase staples such as maize, beans, and groundnuts from local cooperatives. Critics note that the programmes are expensive to run and vulnerable to corruption, but supporters argue that the long-term benefits to education and agriculture outweigh the costs."*\n\nYour summary must be in continuous prose. *(10 marks)*`,
      `**Q9.** Read the passage and answer the questions that follow.\n\n*"He had rehearsed the speech a hundred times, yet when he stood before the crowd, the words evaporated. His palms were slick, his throat dry. Then he remembered his father's advice: 'The audience wants you to succeed.' He took a breath, and the first sentence came out steady."*\n\n(a) Describe the speaker's state of mind at the start of the passage. *(3 marks)*\n\n(b) What effect does the father's advice have on the speaker? *(4 marks)*\n\n(c) Explain the meaning of "the words evaporated". *(3 marks)*`,
      `**Q10.** Read the passage and answer the questions that follow.\n\n*"Plastic waste is choking Cameroon's cities. Discarded bottles clog drainage channels, causing floods during the rainy season, while burning the waste releases toxic fumes. Some entrepreneurs have begun collecting plastics and recycling them into paving blocks, creating jobs and cleaning the streets. The challenge, they say, is not a lack of solutions but a lack of will."*\n\n(a) State two problems caused by plastic waste. *(4 marks)*\n\n(b) How have some entrepreneurs responded to the problem? *(3 marks)*\n\n(c) Explain the final sentence: "The challenge... is not a lack of solutions but a lack of will." *(4 marks)*`,
      `**Q11.** Summarise the following passage in not more than 65 words.\n\n*"Community health workers are the backbone of rural healthcare in Cameroon. Trained to diagnose common illnesses, administer vaccines, and advise on hygiene, they bring medical care to villages that would otherwise travel hours to reach a clinic. Their work has reduced infant mortality and improved maternal health in many regions. Yet these workers are often unpaid volunteers, and many leave the profession once they find better-paying work. Health experts argue that investing in community health workers is one of the most cost-effective ways to strengthen the health system."*\n\nYour summary must be in continuous prose. *(10 marks)*`,
      `**Q12.** Read the passage and answer the questions that follow.\n\n*"The two brothers inherited the same plot of land. One planted cocoa and prospered; the other planted nothing and waited for the land to feed him. Years later, the first brother built a house, while the second still waited, blaming the soil for his poverty."*\n\n(a) What is the moral of the passage? *(4 marks)*\n\n(b) Contrast the attitudes of the two brothers. *(4 marks)*\n\n(c) Explain the irony in the final sentence. *(4 marks)*`,
      `**Q13.** Read the passage and answer the questions that follow.\n\n*"Tourism in Cameroon is a sleeping giant. The country boasts beaches, mountains, wildlife parks, and a rich cultural heritage, yet it attracts a fraction of the visitors that smaller neighbours receive. Poor infrastructure, limited marketing, and safety concerns are often cited as reasons. Those who have visited, however, speak of a country that rewards the adventurous traveller."*\n\n(a) What does the writer mean by calling tourism "a sleeping giant"? *(4 marks)*\n\n(b) Give two reasons why Cameroon attracts few tourists. *(4 marks)*\n\n(c) What is the writer's overall attitude towards Cameroon's tourism potential? *(3 marks)*`,
      `**Q14.** Summarise the following passage in not more than 60 words.\n\n*"The traditional African family is often described as an extended family, where uncles, aunts, and grandparents share in raising children. This system provides a safety net: when parents fall ill or travel, relatives step in. It also transmits values, history, and skills across generations. However, urbanisation and economic pressures are weakening these ties, as families become smaller and more mobile. Sociologists warn that the loss of the extended family could leave many children without the support they once enjoyed."*\n\nYour summary must be in continuous prose. *(10 marks)*`,
      `**Q15.** Read the passage and answer the questions that follow.\n\n*"The teacher wrote a single word on the board: 'Why?' For a moment the class was silent. Then hands shot up. The question, she explained, was more important than any answer, because it was the beginning of every discovery. From that day, her students stopped memorising and started questioning."*\n\n(a) What change does the teacher bring about in her students? *(4 marks)*\n\n(b) Explain the significance of the word "Why?" in the passage. *(4 marks)*\n\n(c) What does the passage suggest about the difference between memorising and questioning? *(4 marks)*`,
      `**Q16.** Read the passage and answer the questions that follow.\n\n*"The harvest festival drew people from every village in the district. Drummers led the procession, dancers in bright cloth followed, and elders presided over the ceremony with quiet dignity. For the young, it was a spectacle; for the old, a memory renewed. The festival was not merely entertainment; it was the community's way of giving thanks and reaffirming its identity."*\n\n(a) State two purposes of the harvest festival. *(4 marks)*\n\n(b) Explain the difference between how the young and the old view the festival. *(4 marks)*\n\n(c) What does the phrase "a memory renewed" suggest? *(3 marks)*`,
      `**Q17.** Summarise the following passage in not more than 70 words.\n\n*"Reading is a habit that is dying among young people, replaced by short videos and instant messages. Yet reading offers what these distractions cannot: the ability to follow a complex argument, to enter another person's mind, and to build the vocabulary that examinations reward. Teachers report that students who read widely write better essays and score higher in comprehension. Parents can help by setting aside time for reading at home and by letting children choose books that interest them, rather than forcing classics upon them."*\n\nYour summary must be in continuous prose. *(10 marks)*`,
      `**Q18.** Read the passage and answer the questions that follow.\n\n*"The bridge collapsed without warning, cutting off the only road to the hospital. For three days, the sick were carried across the river in canoes, and the dead were buried on the wrong side of the water. When the government finally announced plans to rebuild, the villagers did not celebrate; they had heard such promises before."*\n\n(a) What were the consequences of the bridge's collapse? *(4 marks)*\n\n(b) Why did the villagers not celebrate the government's announcement? *(4 marks)*\n\n(c) What does the passage reveal about the relationship between the villagers and the government? *(4 marks)*`,
      `**Q19.** Read the passage and answer the questions that follow.\n\n*"Success, the speaker told the graduates, is not a destination but a journey. It is measured not by the certificates on your wall but by the obstacles you overcome and the people you help along the way. The audience applauded, though some wondered privately whether the speaker, who had inherited his father's business, truly understood the obstacles they faced."*\n\n(a) State the speaker's definition of success. *(3 marks)*\n\n(b) Explain the irony in the final sentence. *(4 marks)*\n\n(c) Do you agree with the speaker's view? Give a reason. *(3 marks)*`,
      `**Q20.** Read the passage and answer the questions that follow.\n\n*"The baobab tree stood at the centre of the village, older than anyone could remember. Its trunk was a storehouse of water, its bark a source of medicine, its leaves a vegetable for the evening pot. When developers proposed cutting it down to widen the road, the village united in protest. They had lost many things to progress; they would not lose the baobab."*\n\n(a) List three uses of the baobab tree mentioned in the passage. *(3 marks)*\n\n(b) Why did the village protest against the developers? *(4 marks)*\n\n(c) What does the final sentence reveal about the villagers' attitude towards progress? *(4 marks)*`,
    ],
    // ---- Topic 1: Grammar and vocabulary ----
    [
      `**Q1.** Rewrite the following sentences, correcting the errors:\n\n(a) "Neither of the boys were present at the meeting." *(2 marks)*\n\n(b) "The committee have decided to postpone the event." *(2 marks)*\n\n(c) "Each of the students have submitted their assignment." *(2 marks)*\n\n(d) "The number of accidents are increasing every year." *(2 marks)*`,
      `**Q2.** Change the following sentences from direct to indirect speech:\n\n(a) "I will visit you tomorrow," she said. *(3 marks)*\n\n(b) "Have you finished the report?" the manager asked. *(3 marks)*\n\n(c) "Do not touch the exhibits," the guard warned. *(3 marks)*`,
      `**Q3.** Fill in each blank with the correct form of the verb in brackets:\n\n(a) By the time we arrived, the ceremony ____ (already begin). *(2 marks)*\n\n(b) She ____ (live) in Douala for ten years before she moved to Yaoundé. *(2 marks)*\n\n(c) If I ____ (know) the answer, I would have told you. *(2 marks)*\n\n(d) The children ____ (play) in the yard when it started to rain. *(2 marks)*`,
      `**Q4.** Combine each pair of sentences using the conjunction in brackets:\n\n(a) He was tired. He continued working. (although) *(3 marks)*\n\n(b) The rain stopped. We went out. (as soon as) *(3 marks)*\n\n(c) She studied hard. She failed the examination. (even though) *(3 marks)*`,
      `**Q5.** Choose the word that is closest in meaning to the word in bold:\n\n(a) The meeting was **adjourned** until the following week. *(2 marks)*\n\n(b) His **arrogant** behaviour offended his colleagues. *(2 marks)*\n\n(c) The evidence was **inconclusive**, so the case was dismissed. *(2 marks)*\n\n(d) She gave a **lucid** explanation of the difficult concept. *(2 marks)*`,
      `**Q6.** Rewrite the following sentences in the passive voice:\n\n(a) The government built the new bridge last year. *(2 marks)*\n\n(b) Someone has stolen my bicycle. *(2 marks)*\n\n(c) They will announce the results on Friday. *(2 marks)*\n\n(d) The chef is preparing the meal. *(2 marks)*`,
      `**Q7.** Identify the grammatical function of the underlined words in the following sentences:\n\n(a) The **runner** won the race. *(2 marks)*\n\n(b) She gave **him** a gift. *(2 marks)*\n\n(c) The book on the table is **mine**. *(2 marks)*\n\n(d) **Running** is good exercise. *(2 marks)*`,
      `**Q8.** Complete each sentence with the correct preposition:\n\n(a) She is good ____ mathematics. *(1 mark)*\n\n(b) He was accused ____ theft. *(1 mark)*\n\n(c) The committee consists ____ ten members. *(1 mark)*\n\n(d) We arrived ____ the station just in time. *(1 mark)*\n\n(e) She is interested ____ learning French. *(1 mark)*\n\n(f) The cat jumped ____ the table. *(1 mark)*`,
      `**Q9.** Rewrite the following sentences, using the correct form of the word in brackets:\n\n(a) The ____ (decide) was made unanimously. *(2 marks)*\n\n(b) Her ____ (perform) in the examination was outstanding. *(2 marks)*\n\n(c) The ____ (manage) of the company resigned. *(2 marks)*\n\n(d) We were impressed by his ____ (honest). *(2 marks)*`,
      `**Q10.** Punctuate the following passage correctly:\n\n*"the minister said the government will build a new hospital in bamenda next year the project will create hundreds of jobs and improve healthcare in the region"* *(8 marks)*`,
      `**Q11.** Choose the correct word to complete each sentence:\n\n(a) The principal gave the students ____ (advice / advise) on how to prepare for the examination. *(2 marks)*\n\n(b) The new policy will ____ (affect / effect) all workers. *(2 marks)*\n\n(c) Please ____ (bring / take) this letter to the post office. *(2 marks)*\n\n(d) The company's ____ (principal / principle) concern is customer satisfaction. *(2 marks)*`,
      `**Q12.** Rewrite the following sentences, beginning with the word given:\n\n(a) "It is unlikely that he will pass the examination." → "He is unlikely ____." *(3 marks)*\n\n(b) "She is too young to travel alone." → "She is not ____." *(3 marks)*\n\n(c) "The problem was so difficult that nobody could solve it." → "It was such ____." *(3 marks)*`,
      `**Q13.** Identify and correct the error in each of the following sentences:\n\n(a) "The two girls are very different from each other." *(2 marks)*\n\n(b) "He is one of the students who has won the prize." *(2 marks)*\n\n(c) "I look forward to hear from you." *(2 marks)*\n\n(d) "The news are good." *(2 marks)*`,
      `**Q14.** Complete each sentence with the correct form of the word in brackets:\n\n(a) The ____ (long) of the river is over 1,000 kilometres. *(2 marks)*\n\n(b) She spoke with great ____ (confident). *(2 marks)*\n\n(c) The ____ (fail) of the plan surprised everyone. *(2 marks)*\n\n(d) His ____ (refuse) to cooperate delayed the project. *(2 marks)*`,
      `**Q15.** Rewrite the following sentences, replacing the underlined words with a suitable phrasal verb:\n\n(a) He **postponed** the meeting until Monday. *(2 marks)*\n\n(b) She **discovered** the truth by accident. *(2 marks)*\n\n(c) The plane **departed** at noon. *(2 marks)*\n\n(d) They **continued** working despite the noise. *(2 marks)*`,
      `**Q16.** Change the following sentences from active to passive, or vice versa:\n\n(a) The letter was written by the secretary. *(2 marks)*\n\n(b) The children are being taught by a new teacher. *(2 marks)*\n\n(c) The manager will interview the candidates tomorrow. *(2 marks)*\n\n(d) The bridge was being repaired when we crossed it. *(2 marks)*`,
      `**Q17.** Complete each sentence with the correct form of the word in brackets:\n\n(a) The ____ (arrive) of the delegation was delayed. *(2 marks)*\n\n(b) She has a strong ____ (believe) in hard work. *(2 marks)*\n\n(c) The ____ (compare) between the two products was interesting. *(2 marks)*\n\n(d) His ____ (behave) at the meeting was unacceptable. *(2 marks)*`,
      `**Q18.** Rewrite the following sentences, using the correct tense:\n\n(a) "I have seen that film yesterday." *(2 marks)*\n\n(b) "She has been working here since five years." *(2 marks)*\n\n(c) "When I arrived, he already left." *(2 marks)*\n\n(d) "I will call you when I will arrive." *(2 marks)*`,
      `**Q19.** Choose the correct word to complete each sentence:\n\n(a) The ____ (weather / whether) was perfect for the picnic. *(2 marks)*\n\n(b) ____ (Their / There / They're) going to the market. *(2 marks)*\n\n(c) The dog wagged ____ (its / it's) tail. *(2 marks)*\n\n(d) ____ (Who's / Whose) book is this? *(2 marks)*`,
      `**Q20.** Rewrite the following sentences, correcting the errors:\n\n(a) "The teacher, along with her students, are going on the trip." *(2 marks)*\n\n(b) "He is the tallest of the two brothers." *(2 marks)*\n\n(c) "I have less money than him." *(2 marks)*\n\n(d) "She is more taller than her sister." *(2 marks)*`,
    ],
    // ---- Topic 2: Composition and essay writing ----
    [
      `**Q1.** Write an essay of about 450 words on the following topic:\n\n"Describe a journey you will never forget. Explain why it remains memorable."\n\nYour essay should have a clear introduction, body, and conclusion. *(20 marks)*`,
      `**Q2.** Write an argumentative essay of about 450 words on the topic:\n\n"Mobile phones should be banned in secondary schools."\n\nPresent a clear argument, support it with reasons and examples, and address at least one counter-argument. *(20 marks)*`,
      `**Q3.** Write a narrative essay of about 450 words beginning with the sentence:\n\n*"It was the last day of the school year, and nothing had gone as planned."*\n\nUse vivid description and a clear sequence of events. *(20 marks)*`,
      `**Q4.** Write an expository essay of about 450 words on the topic:\n\n"Explain the importance of agriculture to the economy of Cameroon."\n\nOrganise your ideas logically and support them with specific examples. *(20 marks)*`,
      `**Q5.** Write a descriptive essay of about 450 words on the topic:\n\n"Describe your favourite place and explain why it is special to you."\n\nUse sensory details (sight, sound, smell, touch, taste) to bring the place to life. *(20 marks)*`,
      `**Q6.** Write an argumentative essay of about 450 words on the topic:\n\n"Examinations are not the best way to measure a student's ability."\n\nGive reasons for your position and consider the opposing view. *(20 marks)*`,
      `**Q7.** Write a narrative essay of about 450 words ending with the sentence:\n\n*"That was the day I learned that honesty is always the best policy."*\n\nBuild your story towards this conclusion. *(20 marks)*`,
      `**Q8.** Write a formal letter to the mayor of your town, complaining about the poor state of the roads in your area. Your letter should be about 350 words and should include:\n\n(a) Your address and the date. *(2 marks)*\n\n(b) A clear statement of the problem. *(6 marks)*\n\n(c) The effects of the problem on the community. *(6 marks)*\n\n(d) A request for action. *(6 marks)*`,
      `**Q9.** Write an expository essay of about 450 words on the topic:\n\n"Discuss the causes and effects of drug abuse among young people."\n\nStructure your essay with clear paragraphs. *(20 marks)*`,
      `**Q10.** Write a narrative essay of about 450 words on the topic:\n\n"Write a story that illustrates the saying: 'A friend in need is a friend indeed.'"\n\nYour story should have a clear plot, characters, and a lesson. *(20 marks)*`,
      `**Q11.** Write an argumentative essay of about 450 words on the topic:\n\n"Social media does more harm than good to young people."\n\nSupport your argument with evidence and address the opposing view. *(20 marks)*`,
      `**Q12.** Write a descriptive essay of about 450 words on the topic:\n\n"Describe the scene at a busy market in your town."\n\nUse vivid language to convey the sights, sounds, and atmosphere. *(20 marks)*`,
      `**Q13.** Write a formal letter of application for the post of a sales assistant in a supermarket. Your letter should be about 350 words and should include:\n\n(a) Your address and the date. *(2 marks)*\n\n(b) The post you are applying for and where you saw it advertised. *(4 marks)*\n\n(c) Your qualifications and relevant experience. *(8 marks)*\n\n(d) A request for an interview. *(6 marks)*`,
      `**Q14.** Write an expository essay of about 450 words on the topic:\n\n"Explain the causes of road accidents in Cameroon and suggest ways to reduce them."\n\nOrganise your answer into causes and solutions. *(20 marks)*`,
      `**Q15.** Write a narrative essay of about 450 words on the topic:\n\n"Write a story about a time when you had to make a difficult decision."\n\nDescribe the situation, the options you faced, and the outcome. *(20 marks)*`,
      `**Q16.** Write an argumentative essay of about 450 words on the topic:\n\n"University education should be free for all students in Cameroon."\n\nPresent a clear position with supporting arguments and counter-arguments. *(20 marks)*`,
      `**Q17.** Write a descriptive essay of about 450 words on the topic:\n\n"Describe a traditional ceremony you have witnessed."\n\nInclude details of the setting, the participants, and the significance of the ceremony. *(20 marks)*`,
      `**Q18.** Write a formal letter to the editor of a national newspaper, expressing your views on the topic:\n\n"The importance of preserving Cameroon's cultural heritage."\n\nYour letter should be about 350 words and should include a clear introduction, body, and conclusion. *(20 marks)*`,
      `**Q19.** Write an expository essay of about 450 words on the topic:\n\n"Discuss the benefits of learning a second language."\n\nSupport your points with specific examples. *(20 marks)*`,
      `**Q20.** Write a narrative essay of about 450 words on the topic:\n\n"Write a story that ends with the sentence: 'Sometimes the smallest act of kindness means the most.'"\n\nBuild your story towards this ending. *(20 marks)*`,
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// English Language — MCQ banks (20 per topic)
// ---------------------------------------------------------------------------

function mcqEnglish(topicIndex) {
  const banks = [
    // Topic 0: Comprehension and summary
    [
      {
        stem: "Read: 'The market was the beating heart of the community.' The phrase 'beating heart' suggests the market was:",
        options: [
          "the centre of community life",
          "a noisy place",
          "a place of conflict",
          "a modern building",
        ],
        answer: 0,
      },
      {
        stem: "In summary writing, the first step is to:",
        options: [
          "read the passage carefully to understand the main ideas",
          "copy the first sentence of each paragraph",
          "count the words in the passage",
          "write your own opinions about the topic",
        ],
        answer: 0,
      },
      {
        stem: "A summary should be written:",
        options: [
          "in your own words",
          "using long quotations from the passage",
          "in note form only",
          "as a list of examples",
        ],
        answer: 0,
      },
      {
        stem: "The main idea of a passage is best described as:",
        options: [
          "the central point the writer is making",
          "the first sentence of the passage",
          "the most difficult word in the passage",
          "the writer's personal opinion only",
        ],
        answer: 0,
      },
      {
        stem: "Read: 'The words evaporated.' This means the speaker:",
        options: [
          "forgot what he wanted to say",
          "spoke very quietly",
          "wrote his speech down",
          "was interrupted by the crowd",
        ],
        answer: 0,
      },
      {
        stem: "When asked to 'state the main idea in one sentence', you should:",
        options: [
          "summarise the whole passage briefly",
          "quote the longest sentence",
          "repeat the title",
          "list all the details",
        ],
        answer: 0,
      },
      {
        stem: "An inference is:",
        options: [
          "a conclusion drawn from evidence in the text",
          "a fact stated directly in the text",
          "a quotation from the text",
          "a question about the text",
        ],
        answer: 0,
      },
      {
        stem: "Read: 'The river had always been generous.' The word 'generous' here suggests the river:",
        options: ["provided many benefits", "was very wide", "flowed very fast", "was polluted"],
        answer: 0,
      },
      {
        stem: "In a summary, you should NOT include:",
        options: [
          "your personal opinions",
          "the main points",
          "the key facts",
          "the essential ideas",
        ],
        answer: 0,
      },
      {
        stem: "The word 'biodiverse' in 'Cameroon's forests are among the most biodiverse' means:",
        options: [
          "containing many different species",
          "very large in size",
          "completely untouched",
          "difficult to reach",
        ],
        answer: 0,
      },
      {
        stem: "Read: 'The audience wants you to succeed.' This advice helped the speaker to:",
        options: [
          "feel calmer and begin speaking",
          "leave the stage",
          "memorise his speech",
          "change his topic",
        ],
        answer: 0,
      },
      {
        stem: "When summarising, the word limit means you must:",
        options: [
          "keep your summary within the stated number of words",
          "write exactly the same number of words as the passage",
          "write as many words as possible",
          "ignore the word limit",
        ],
        answer: 0,
      },
      {
        stem: "Read: 'Tourism in Cameroon is a sleeping giant.' This means tourism:",
        options: [
          "has great potential that is not yet realised",
          "is completely absent",
          "is declining rapidly",
          "is too expensive for visitors",
        ],
        answer: 0,
      },
      {
        stem: "The purpose of a comprehension passage is usually to:",
        options: [
          "test understanding of the text",
          "provide entertainment only",
          "teach grammar rules",
          "list vocabulary words",
        ],
        answer: 0,
      },
      {
        stem: "Read: 'The villagers did not celebrate; they had heard such promises before.' This suggests the villagers:",
        options: [
          "did not trust the government's promises",
          "were happy with the announcement",
          "had never heard promises before",
          "were celebrating quietly",
        ],
        answer: 0,
      },
      {
        stem: "A good summary should be:",
        options: [
          "shorter than the original passage",
          "longer than the original passage",
          "the same length as the original passage",
          "a copy of the original passage",
        ],
        answer: 0,
      },
      {
        stem: "Read: 'For her, sweeping was not a chore but a meditation.' This means the old woman:",
        options: [
          "found peace in sweeping",
          "disliked sweeping",
          "swept very quickly",
          "hired someone to sweep",
        ],
        answer: 0,
      },
      {
        stem: "When a question asks you to 'explain in your own words', you should:",
        options: [
          "rephrase the idea without copying",
          "quote the passage directly",
          "write a longer version of the passage",
          "give your own opinion",
        ],
        answer: 0,
      },
      {
        stem: "Read: 'Success is not a destination but a journey.' The writer means success is:",
        options: [
          "a continuous process",
          "a final goal",
          "impossible to achieve",
          "measured by certificates",
        ],
        answer: 0,
      },
      {
        stem: "The best title for a passage about plastic waste clogging drainage channels would be:",
        options: [
          "The Problem of Plastic Waste in Our Cities",
          "How to Build Drainage Channels",
          "The History of Plastic",
          "A Day at the Market",
        ],
        answer: 0,
      },
    ],
    // Topic 1: Grammar and vocabulary
    [
      {
        stem: "Choose the correct sentence:",
        options: [
          "Neither of the boys was present.",
          "Neither of the boys were present.",
          "Neither of the boys are present.",
          "Neither of the boys have been present.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "The committee has decided to postpone the event.",
          "The committee have decided to postpone the event.",
          "The committee are deciding to postpone the event.",
          "The committee were deciding to postpone the event.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "Each of the students has submitted the assignment.",
          "Each of the students have submitted the assignment.",
          "Each of the students are submitting the assignment.",
          "Each of the students were submitting the assignment.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "The number of accidents is increasing.",
          "The number of accidents are increasing.",
          "The number of accidents were increasing.",
          "The number of accidents have been increasing.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "She is good at mathematics.",
          "She is good in mathematics.",
          "She is good on mathematics.",
          "She is good for mathematics.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "He was accused of theft.",
          "He was accused for theft.",
          "He was accused with theft.",
          "He was accused on theft.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "The committee consists of ten members.",
          "The committee consists in ten members.",
          "The committee consists with ten members.",
          "The committee consists on ten members.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "She is interested in learning French.",
          "She is interested on learning French.",
          "She is interested for learning French.",
          "She is interested at learning French.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct word: The principal gave the students some useful ____.",
        options: ["advice", "advise", "advices", "advising"],
        answer: 0,
      },
      {
        stem: "Choose the correct word: The new policy will ____ all workers.",
        options: ["affect", "effect", "affects", "effects"],
        answer: 0,
      },
      {
        stem: "Choose the correct word: Please ____ this letter to the post office.",
        options: ["take", "bring", "carry", "fetch"],
        answer: 0,
      },
      {
        stem: "Choose the correct word: The company's ____ concern is customer satisfaction.",
        options: ["principal", "principle", "principally", "principles"],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "The news is good.",
          "The news are good.",
          "The news were good.",
          "The news have been good.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "I look forward to hearing from you.",
          "I look forward to hear from you.",
          "I look forward to heard from you.",
          "I look forward to hears from you.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "He is the taller of the two brothers.",
          "He is the tallest of the two brothers.",
          "He is more taller of the two brothers.",
          "He is most tallest of the two brothers.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "She is taller than her sister.",
          "She is more taller than her sister.",
          "She is most taller than her sister.",
          "She is tallest than her sister.",
        ],
        answer: 0,
      },
      {
        stem: "Choose the correct word: The dog wagged ____ tail.",
        options: ["its", "it's", "its'", "itses"],
        answer: 0,
      },
      {
        stem: "Choose the correct word: ____ going to the market.",
        options: ["They're", "Their", "There", "Theirs"],
        answer: 0,
      },
      {
        stem: "Choose the correct word: ____ book is this?",
        options: ["Whose", "Who's", "Whom", "Who"],
        answer: 0,
      },
      {
        stem: "Choose the correct sentence:",
        options: [
          "The teacher, along with her students, is going on the trip.",
          "The teacher, along with her students, are going on the trip.",
          "The teacher, along with her students, were going on the trip.",
          "The teacher, along with her students, have been going on the trip.",
        ],
        answer: 0,
      },
    ],
    // Topic 2: Composition and essay writing
    [
      {
        stem: "An essay that tells a story is called:",
        options: [
          "a narrative essay",
          "an argumentative essay",
          "an expository essay",
          "a descriptive essay",
        ],
        answer: 0,
      },
      {
        stem: "An essay that presents reasons for and against a position is called:",
        options: ["an argumentative essay", "a narrative essay", "a descriptive essay", "a letter"],
        answer: 0,
      },
      {
        stem: "An essay that explains or informs is called:",
        options: ["an expository essay", "a narrative essay", "a story", "a poem"],
        answer: 0,
      },
      {
        stem: "An essay that uses sensory details to paint a picture is called:",
        options: [
          "a descriptive essay",
          "an argumentative essay",
          "an expository essay",
          "a summary",
        ],
        answer: 0,
      },
      {
        stem: "The first paragraph of an essay is called the:",
        options: ["introduction", "conclusion", "body", "title"],
        answer: 0,
      },
      {
        stem: "The final paragraph of an essay is called the:",
        options: ["conclusion", "introduction", "body", "heading"],
        answer: 0,
      },
      {
        stem: "A formal letter should begin with:",
        options: [
          "the sender's address and the date",
          "the recipient's name only",
          "a greeting like 'Hi'",
          "a joke",
        ],
        answer: 0,
      },
      {
        stem: "The main paragraphs of an essay form the:",
        options: ["body", "introduction", "conclusion", "title"],
        answer: 0,
      },
      {
        stem: "A letter of application should include:",
        options: [
          "your qualifications and experience",
          "only your name",
          "a list of your friends",
          "your favourite hobbies",
        ],
        answer: 0,
      },
      {
        stem: "When writing an argumentative essay, you should:",
        options: [
          "support your argument with reasons and examples",
          "avoid giving any reasons",
          "only state the opposing view",
          "write without paragraphs",
        ],
        answer: 0,
      },
      {
        stem: "A narrative essay should have:",
        options: ["a clear sequence of events", "no characters", "no setting", "only statistics"],
        answer: 0,
      },
      {
        stem: "The purpose of an introduction is to:",
        options: [
          "present the topic and capture the reader's interest",
          "give the conclusion",
          "list all the details",
          "repeat the title",
        ],
        answer: 0,
      },
      {
        stem: "A descriptive essay about a market should include:",
        options: [
          "sights, sounds, and smells",
          "only prices",
          "a list of items",
          "mathematical calculations",
        ],
        answer: 0,
      },
      {
        stem: "A formal letter to the editor should:",
        options: [
          "express a clear opinion on an issue",
          "be written in slang",
          "have no address",
          "be very short",
        ],
        answer: 0,
      },
      {
        stem: "The best way to organise an expository essay is:",
        options: [
          "logical paragraphs with clear points",
          "random ideas",
          "a single long paragraph",
          "a list without explanation",
        ],
        answer: 0,
      },
      {
        stem: "A story that illustrates a proverb should:",
        options: [
          "show the lesson through events",
          "state the proverb only",
          "avoid any lesson",
          "be about animals only",
        ],
        answer: 0,
      },
      {
        stem: "When writing an essay, you should:",
        options: [
          "plan your ideas before writing",
          "start writing without a plan",
          "copy from a friend",
          "write only one paragraph",
        ],
        answer: 0,
      },
      {
        stem: "The word count of an essay refers to:",
        options: [
          "the number of words in the essay",
          "the number of paragraphs",
          "the number of pages",
          "the number of sentences",
        ],
        answer: 0,
      },
      {
        stem: "A letter of complaint should:",
        options: [
          "clearly state the problem and request action",
          "only greet the recipient",
          "avoid mentioning the problem",
          "be written in verse",
        ],
        answer: 0,
      },
      {
        stem: "To make an essay interesting, a writer should:",
        options: [
          "use vivid and varied language",
          "repeat the same word",
          "use only short sentences",
          "avoid examples",
        ],
        answer: 0,
      },
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// Additional Mathematics — hard topic-wise structural questions
// ---------------------------------------------------------------------------

function structuralAddMath(topicIndex, paperSeed) {
  const s = paperSeed;
  const banks = [
    // ---- Topic 0: Functions and graphs ----
    [
      `**Q1.** Given $f(x) = \\dfrac{2x+1}{x-3}$, $x \\neq 3$:\n\n(a) Find $f^{-1}(x)$. *(4 marks)*\n\n(b) State the domain and range of $f^{-1}$. *(3 marks)*\n\n(c) Solve $f(x) = f^{-1}(x)$. *(5 marks)*`,
      `**Q2.** The functions $f$ and $g$ are defined by $f(x) = 3x - 2$ and $g(x) = x^2 + 1$.\n\n(a) Find $fg(x)$ and $gf(x)$. *(4 marks)*\n\n(b) Solve $fg(x) = gf(x)$. *(5 marks)*\n\n(c) Find the value of $x$ for which $f^{-1}(x) = g(2)$. *(4 marks)*`,
      `**Q3.** A quadratic function has roots $\\alpha$ and $\\beta$ where $\\alpha + \\beta = 5$ and $\\alpha\\beta = 6$.\n\n(a) Write down the quadratic equation. *(3 marks)*\n\n(b) Find the value of $\\alpha^2 + \\beta^2$. *(4 marks)*\n\n(c) Find a quadratic equation whose roots are $\\alpha^2$ and $\\beta^2$. *(5 marks)*`,
      `**Q4.** Sketch the graph of $y = 2x^2 - 8x + 5$, showing clearly:\n\n(a) the coordinates of the turning point; *(4 marks)*\n\n(b) the roots of the equation $2x^2 - 8x + 5 = 0$; *(4 marks)*\n\n(c) the $y$-intercept. *(2 marks)*`,
      `**Q5.** The function $f(x) = x^2 - 4x + 3$ is defined for $x \\geq 2$.\n\n(a) Show that $f$ is one-to-one on this domain. *(3 marks)*\n\n(b) Find $f^{-1}(x)$. *(5 marks)*\n\n(c) State the domain of $f^{-1}$. *(2 marks)*`,
      `**Q6.** Given $f(x) = \\dfrac{1}{x}$, $x \\neq 0$, and $g(x) = x + 2$:\n\n(a) Find $gf(x)$ and state its domain. *(4 marks)*\n\n(b) Find $fg(x)$ and state its domain. *(4 marks)*\n\n(c) Solve $gf(x) = fg(x)$. *(4 marks)*`,
      `**Q7.** The graph of $y = x^2$ is transformed to $y = (x-3)^2 + 4$.\n\n(a) Describe the two transformations. *(4 marks)*\n\n(b) State the coordinates of the turning point of the new graph. *(2 marks)*\n\n(c) Sketch both graphs on the same axes. *(4 marks)*`,
      `**Q8.** Solve the equation $2^{2x} - 5(2^x) + 4 = 0$. *(7 marks)*`,
      `**Q9.** The functions $f(x) = 2x + 1$ and $g(x) = \\dfrac{x-1}{2}$ are given.\n\n(a) Show that $f$ and $g$ are inverse functions. *(4 marks)*\n\n(b) Find $fg(3)$ and $gf(3)$. *(3 marks)*\n\n(c) Sketch the graphs of $f$ and $g$ on the same axes, showing the line $y = x$. *(4 marks)*`,
      `**Q10.** A curve has equation $y = x^2 - 6x + 10$.\n\n(a) Express $y$ in the form $(x-a)^2 + b$. *(3 marks)*\n\n(b) State the minimum value of $y$ and the value of $x$ at which it occurs. *(3 marks)*\n\n(c) Find the range of $y$ for $0 \\leq x \\leq 5$. *(4 marks)*`,
      `**Q11.** Given $f(x) = \\sqrt{x+1}$, $x \\geq -1$:\n\n(a) Find $f^{-1}(x)$. *(4 marks)*\n\n(b) State the domain and range of $f$ and of $f^{-1}$. *(4 marks)*\n\n(c) Solve $f(x) = f^{-1}(x)$. *(4 marks)*`,
      `**Q12.** The roots of $x^2 - 3x + 1 = 0$ are $\\alpha$ and $\\beta$.\n\n(a) Write down the values of $\\alpha + \\beta$ and $\\alpha\\beta$. *(2 marks)*\n\n(b) Find the value of $\\dfrac{1}{\\alpha} + \\dfrac{1}{\\beta}$. *(4 marks)*\n\n(c) Find a quadratic equation with roots $\\alpha + 1$ and $\\beta + 1$. *(5 marks)*`,
      `**Q13.** Sketch the graph of $y = |x - 2|$ for $-1 \\leq x \\leq 5$, and hence solve $|x - 2| = 3$. *(7 marks)*`,
      `**Q14.** The function $f(x) = ax^2 + bx + c$ has a maximum value of 9 at $x = 1$, and passes through $(0, 5)$. Find $a$, $b$ and $c$. *(7 marks)*`,
      `**Q15.** Given $f(x) = \\dfrac{2x}{x+1}$, $x \\neq -1$:\n\n(a) Find $f^{-1}(x)$. *(4 marks)*\n\n(b) Find $f^2(x) = ff(x)$. *(5 marks)*\n\n(c) Solve $f^2(x) = x$. *(4 marks)*`,
      `**Q16.** The graph of $y = f(x)$ is reflected in the $y$-axis and then translated 2 units down.\n\n(a) Write down the equation of the resulting graph. *(3 marks)*\n\n(b) If $f(x) = x^2 - 4x$, find the equation of the resulting graph in simplified form. *(5 marks)*\n\n(c) State the turning point of the resulting graph. *(3 marks)*`,
      `**Q17.** Solve the simultaneous equations $y = x^2 - 2x$ and $y = 2x - 3$. *(6 marks)*`,
      `**Q18.** Given $f(x) = \\dfrac{x+2}{x-1}$, $x \\neq 1$:\n\n(a) Find $f^{-1}(x)$. *(4 marks)*\n\n(b) Show that $f^{-1}(x) = f(x)$. *(3 marks)*\n\n(c) Find $f^2(x)$. *(4 marks)*`,
      `**Q19.** A function $f$ is defined by $f(x) = 2x^2 - 4x + 1$ for $x \\geq 1$.\n\n(a) Complete the square. *(3 marks)*\n\n(b) Find the range of $f$. *(3 marks)*\n\n(c) Find $f^{-1}(x)$. *(5 marks)*`,
      `**Q20.** The graph of $y = x^2$ is stretched parallel to the $y$-axis by factor 3 and translated 1 unit left.\n\n(a) Write down the equation of the resulting graph. *(4 marks)*\n\n(b) State the coordinates of its turning point. *(2 marks)*\n\n(c) Find the value of $y$ when $x = 2$. *(2 marks)*`,
    ],
    // ---- Topic 1: Introductory calculus ----
    [
      `**Q1.** Differentiate from first principles $y = x^2 + 3x$. *(6 marks)*`,
      `**Q2.** Find the derivative of each of the following:\n\n(a) $y = 3x^4 - 2x^3 + 5x - 7$ *(3 marks)*\n\n(b) $y = \\dfrac{2}{x^3}$ *(3 marks)*\n\n(c) $y = \\sqrt{x} + \\dfrac{1}{\\sqrt{x}}$ *(4 marks)*`,
      `**Q3.** Find the equation of the tangent to the curve $y = x^3 - 2x$ at the point where $x = 1$. *(6 marks)*`,
      `**Q4.** Find the coordinates of the stationary points of $y = x^3 - 3x^2 - 9x + 5$ and determine their nature. *(8 marks)*`,
      `**Q5.** Evaluate the following integrals:\n\n(a) $\\int (3x^2 + 2x - 1)\\,dx$ *(3 marks)*\n\n(b) $\\int \\dfrac{1}{x^2}\\,dx$ *(3 marks)*\n\n(c) $\\int \\sqrt{x}\\,dx$ *(3 marks)*`,
      `**Q6.** Find the area enclosed by the curve $y = x^2 - 4x + 3$ and the $x$-axis. *(7 marks)*`,
      `**Q7.** A curve passes through the point $(1, 4)$ and has gradient function $\\dfrac{dy}{dx} = 2x + 3$. Find the equation of the curve. *(5 marks)*`,
      `**Q8.** Find the equation of the normal to the curve $y = x^2 - 4x + 2$ at the point where $x = 3$. *(6 marks)*`,
      `**Q9.** A rectangular field is to be fenced using 200 m of fencing. Find the maximum area that can be enclosed. *(7 marks)*`,
      `**Q10.** Differentiate $y = (2x + 1)^5$ using the chain rule. *(4 marks)*`,
      `**Q11.** Find $\\dfrac{dy}{dx}$ for each of the following:\n\n(a) $y = \\dfrac{x^2 + 1}{x}$ *(4 marks)*\n\n(b) $y = (x^2 - 1)(x + 2)$ *(4 marks)*`,
      `**Q12.** Evaluate $\\int_0^2 (x^2 + 1)\\,dx$. *(5 marks)*`,
      `**Q13.** The displacement of a particle is given by $s = t^3 - 6t^2 + 9t$.\n\n(a) Find the velocity and acceleration. *(4 marks)*\n\n(b) Find the times when the particle is at rest. *(3 marks)*\n\n(c) Find the displacement when the particle is at rest. *(3 marks)*`,
      `**Q14.** Find the maximum and minimum values of $y = 2x^3 - 9x^2 + 12x$ on the interval $0 \\leq x \\leq 3$. *(8 marks)*`,
      `**Q15.** Find the area between the curves $y = x^2$ and $y = x + 2$. *(8 marks)*`,
      `**Q16.** Given $y = \\dfrac{3}{x} - x^2$, find $\\dfrac{dy}{dx}$ and hence find the gradient of the curve at $x = 1$. *(5 marks)*`,
      `**Q17.** A curve has equation $y = x^3 - 3x$. Find the coordinates of the points where the gradient is 9. *(6 marks)*`,
      `**Q18.** Find $\\int (2x + 1)(x - 3)\\,dx$. *(5 marks)*`,
      `**Q19.** The volume of a sphere is increasing at a rate of $8\\pi$ cm³/s. Find the rate of increase of the radius when the radius is 4 cm. *(6 marks)*`,
      `**Q20.** Find the equation of the tangent to $y = \\dfrac{1}{x}$ at the point $(2, \\tfrac{1}{2})$. *(5 marks)*`,
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// Additional Mathematics — MCQ banks (30 per topic)
// ---------------------------------------------------------------------------

function mcqAddMath(topicIndex) {
  const banks = [
    // Topic 0: Functions and graphs
    [
      {
        stem: "If $f(x) = 2x + 3$, then $f^{-1}(x)$ is:",
        options: ["$\\dfrac{x-3}{2}$", "$\\dfrac{x+3}{2}$", "$2x - 3$", "$\\dfrac{x}{2} + 3$"],
        answer: 0,
      },
      {
        stem: "If $f(x) = x^2$ and $g(x) = x + 1$, then $fg(x)$ is:",
        options: ["$(x+1)^2$", "$x^2 + 1$", "$x^2 + x$", "$x + 1$"],
        answer: 0,
      },
      {
        stem: "The turning point of $y = x^2 - 4x + 3$ is:",
        options: ["(2, -1)", "(-2, 15)", "(4, 3)", "(2, 3)"],
        answer: 0,
      },
      {
        stem: "The roots of $x^2 - 5x + 6 = 0$ are:",
        options: ["2 and 3", "1 and 6", "-2 and -3", "5 and 6"],
        answer: 0,
      },
      {
        stem: "If $f(x) = \\dfrac{1}{x}$, $x \\neq 0$, then $f^{-1}(x)$ is:",
        options: ["$\\dfrac{1}{x}$", "$x$", "$-x$", "$x^2$"],
        answer: 0,
      },
      {
        stem: "The graph of $y = x^2$ translated 3 units right becomes:",
        options: ["$y = (x-3)^2$", "$y = (x+3)^2$", "$y = x^2 + 3$", "$y = x^2 - 3$"],
        answer: 0,
      },
      {
        stem: "If $f(x) = 3x - 2$ and $g(x) = x^2$, then $gf(2)$ is:",
        options: ["16", "10", "22", "36"],
        answer: 0,
      },
      {
        stem: "The range of $y = x^2$ for $x \\geq 0$ is:",
        options: ["$y \\geq 0$", "$y > 0$", "all real $y$", "$y \\leq 0$"],
        answer: 0,
      },
      {
        stem: "The equation $2^{2x} = 16$ has solution:",
        options: ["$x = 2$", "$x = 4$", "$x = 8$", "$x = 16$"],
        answer: 0,
      },
      {
        stem: "If $f(x) = x^2 - 1$, the value of $f(-2)$ is:",
        options: ["3", "-3", "5", "-5"],
        answer: 0,
      },
      {
        stem: "The axis of symmetry of $y = x^2 - 6x + 8$ is:",
        options: ["$x = 3$", "$x = -3$", "$x = 6$", "$x = 2$"],
        answer: 0,
      },
      {
        stem: "If $f(x) = 2x$ and $g(x) = x + 1$, then $fg(x)$ is:",
        options: ["$2x + 2$", "$2x + 1$", "$x + 2$", "$2x$"],
        answer: 0,
      },
      {
        stem: "The minimum value of $y = x^2 + 2x + 1$ is:",
        options: ["0", "1", "2", "-1"],
        answer: 0,
      },
      {
        stem: "For $f(x) = \\sqrt{x}$, the domain is:",
        options: ["$x \\geq 0$", "$x > 0$", "all real $x$", "$x \\leq 0$"],
        answer: 0,
      },
      {
        stem: "The graph of $y = -x^2$ is the graph of $y = x^2$:",
        options: ["reflected in the $x$-axis", "translated down", "translated up", "stretched"],
        answer: 0,
      },
      {
        stem: "If $f(x) = x^3$, then $f^{-1}(x)$ is:",
        options: ["$\\sqrt[3]{x}$", "$x^3$", "$\\dfrac{1}{x^3}$", "$3x$"],
        answer: 0,
      },
      {
        stem: "The sum of the roots of $2x^2 - 6x + 3 = 0$ is:",
        options: ["3", "-3", "$\\dfrac{3}{2}$", "6"],
        answer: 0,
      },
      {
        stem: "If $f(x) = x + 2$ and $g(x) = 3x$, then $gf(x)$ is:",
        options: ["$3x + 6$", "$3x + 2$", "$x + 6$", "$3x$"],
        answer: 0,
      },
      {
        stem: "The graph of $y = |x|$ at $x = 0$ has:",
        options: [
          "a sharp corner",
          "a smooth curve",
          "a vertical asymptote",
          "a horizontal asymptote",
        ],
        answer: 0,
      },
      {
        stem: "If $f(x) = \\dfrac{x+1}{x-1}$, $x \\neq 1$, then $f(3)$ is:",
        options: ["2", "4", "$\\dfrac{1}{2}$", "3"],
        answer: 0,
      },
      {
        stem: "The product of the roots of $x^2 - 4x + 7 = 0$ is:",
        options: ["7", "4", "-4", "-7"],
        answer: 0,
      },
      {
        stem: "The graph of $y = (x+1)^2$ has turning point:",
        options: ["(-1, 0)", "(1, 0)", "(0, 1)", "(0, -1)"],
        answer: 0,
      },
      {
        stem: "If $f(x) = 2x - 1$, then $f^{-1}(3)$ is:",
        options: ["2", "5", "1", "4"],
        answer: 0,
      },
      {
        stem: "The equation $x^2 - 2x + 5 = 0$ has:",
        options: ["no real roots", "two distinct real roots", "one repeated root", "three roots"],
        answer: 0,
      },
      {
        stem: "If $f(x) = x^2$ and $g(x) = 2x$, then $fg(3)$ is:",
        options: ["36", "18", "12", "9"],
        answer: 0,
      },
      {
        stem: "The range of $f(x) = x^2 + 1$ is:",
        options: ["$y \\geq 1$", "$y > 1$", "all real $y$", "$y \\geq 0$"],
        answer: 0,
      },
      {
        stem: "The graph of $y = x^2$ stretched vertically by factor 2 becomes:",
        options: ["$y = 2x^2$", "$y = x^4$", "$y = (2x)^2$", "$y = x^2 + 2$"],
        answer: 0,
      },
      {
        stem: "If $f(x) = \\dfrac{2}{x}$, then $f^{-1}(x)$ is:",
        options: ["$\\dfrac{2}{x}$", "$\\dfrac{x}{2}$", "$2x$", "$-\\dfrac{2}{x}$"],
        answer: 0,
      },
      {
        stem: "The discriminant of $x^2 - 4x + 4 = 0$ is:",
        options: ["0", "16", "-16", "4"],
        answer: 0,
      },
      {
        stem: "If $f(x) = x + 1$ and $g(x) = x - 1$, then $fg(x)$ is:",
        options: ["$x$", "$x^2 - 1$", "$x + 2$", "$x - 2$"],
        answer: 0,
      },
    ],
    // Topic 1: Introductory calculus
    [
      {
        stem: "The derivative of $x^3$ is:",
        options: ["$3x^2$", "$x^2$", "$3x$", "$\\dfrac{x^4}{4}$"],
        answer: 0,
      },
      {
        stem: "The derivative of $5x^2$ is:",
        options: ["$10x$", "$5x$", "$2x$", "$25x$"],
        answer: 0,
      },
      {
        stem: "The derivative of a constant is:",
        options: ["0", "1", "the constant itself", "undefined"],
        answer: 0,
      },
      {
        stem: "$\\int 2x\\,dx$ is:",
        options: ["$x^2 + c$", "$2x^2 + c$", "$x + c$", "$\\dfrac{x^2}{2} + c$"],
        answer: 0,
      },
      {
        stem: "The gradient of $y = x^2$ at $x = 3$ is:",
        options: ["6", "9", "3", "12"],
        answer: 0,
      },
      {
        stem: "The derivative of $\\dfrac{1}{x}$ is:",
        options: ["$-\\dfrac{1}{x^2}$", "$\\dfrac{1}{x^2}$", "$-x^2$", "$\\ln x$"],
        answer: 0,
      },
      {
        stem: "$\\int 3\\,dx$ is:",
        options: ["$3x + c$", "$\\dfrac{3x^2}{2} + c$", "$x^3 + c$", "$3 + c$"],
        answer: 0,
      },
      {
        stem: "A stationary point occurs where:",
        options: ["$\\dfrac{dy}{dx} = 0$", "$y = 0$", "$x = 0$", "$\\dfrac{dy}{dx} = 1$"],
        answer: 0,
      },
      {
        stem: "The derivative of $x^2 + 3x$ is:",
        options: ["$2x + 3$", "$2x$", "$x^2 + 3$", "$2x^2 + 3x$"],
        answer: 0,
      },
      { stem: "$\\int_0^1 x\\,dx$ is:", options: ["$\\dfrac{1}{2}$", "1", "0", "2"], answer: 0 },
      {
        stem: "The second derivative of $x^3$ is:",
        options: ["$6x$", "$3x^2$", "$6x^2$", "$3x$"],
        answer: 0,
      },
      {
        stem: "The equation of the tangent to $y = x^2$ at $(1, 1)$ is:",
        options: ["$y = 2x - 1$", "$y = x$", "$y = 2x + 1$", "$y = x - 1$"],
        answer: 0,
      },
      {
        stem: "If $\\dfrac{dy}{dx} = 2x$ and $y = 1$ when $x = 0$, then $y$ is:",
        options: ["$x^2 + 1$", "$x^2$", "$2x + 1$", "$x^2 - 1$"],
        answer: 0,
      },
      {
        stem: "The derivative of $\\sqrt{x}$ is:",
        options: [
          "$\\dfrac{1}{2\\sqrt{x}}$",
          "$\\dfrac{1}{\\sqrt{x}}$",
          "$2\\sqrt{x}$",
          "$\\dfrac{1}{2}x$",
        ],
        answer: 0,
      },
      {
        stem: "The area under $y = x$ from $x = 0$ to $x = 2$ is:",
        options: ["2", "4", "1", "3"],
        answer: 0,
      },
      {
        stem: "A maximum point has:",
        options: [
          "$\\dfrac{dy}{dx} = 0$ and $\\dfrac{d^2y}{dx^2} < 0$",
          "$\\dfrac{dy}{dx} = 0$ and $\\dfrac{d^2y}{dx^2} > 0$",
          "$\\dfrac{dy}{dx} > 0$",
          "$\\dfrac{d^2y}{dx^2} = 0$",
        ],
        answer: 0,
      },
      {
        stem: "The derivative of $4x^3 - 2x$ is:",
        options: ["$12x^2 - 2$", "$12x^2$", "$4x^2 - 2$", "$12x^3 - 2$"],
        answer: 0,
      },
      {
        stem: "$\\int (x^2 + 1)\\,dx$ is:",
        options: [
          "$\\dfrac{x^3}{3} + x + c$",
          "$x^3 + x + c$",
          "$\\dfrac{x^3}{3} + c$",
          "$2x + c$",
        ],
        answer: 0,
      },
      { stem: "The gradient of $y = 3x - 2$ is:", options: ["3", "-2", "2", "1"], answer: 0 },
      {
        stem: "If $s = t^2$, the velocity when $t = 3$ is:",
        options: ["6", "9", "3", "12"],
        answer: 0,
      },
      {
        stem: "The derivative of $x^4$ is:",
        options: ["$4x^3$", "$x^3$", "$4x$", "$\\dfrac{x^5}{5}$"],
        answer: 0,
      },
      {
        stem: "$\\int \\dfrac{1}{x^2}\\,dx$ is:",
        options: ["$-\\dfrac{1}{x} + c$", "$\\dfrac{1}{x} + c$", "$\\ln x + c$", "$-x + c$"],
        answer: 0,
      },
      {
        stem: "The turning point of $y = x^2 - 2x$ is:",
        options: ["(1, -1)", "(-1, 3)", "(1, 1)", "(2, 0)"],
        answer: 0,
      },
      {
        stem: "The derivative of $y = (2x+1)^2$ is:",
        options: ["$8x + 4$", "$4x + 2$", "$2(2x+1)$", "$4x$"],
        answer: 0,
      },
      { stem: "$\\int_0^1 2x\\,dx$ is:", options: ["1", "2", "0", "4"], answer: 0 },
      {
        stem: "If $\\dfrac{dy}{dx} = 3x^2$, then $y$ is:",
        options: ["$x^3 + c$", "$3x^3 + c$", "$6x + c$", "$\\dfrac{x^3}{3} + c$"],
        answer: 0,
      },
      {
        stem: "The normal to a curve is perpendicular to the:",
        options: ["tangent", "curve itself", "$x$-axis", "$y$-axis"],
        answer: 0,
      },
      {
        stem: "The derivative of $2x^3$ is:",
        options: ["$6x^2$", "$2x^2$", "$6x^3$", "$3x^2$"],
        answer: 0,
      },
      {
        stem: "$\\int (3x^2 - 2)\\,dx$ is:",
        options: ["$x^3 - 2x + c$", "$3x^3 - 2x + c$", "$x^3 - 2 + c$", "$6x - 2 + c$"],
        answer: 0,
      },
      {
        stem: "The area under $y = x^2$ from $x = 0$ to $x = 1$ is:",
        options: ["$\\dfrac{1}{3}$", "1", "$\\dfrac{1}{2}$", "2"],
        answer: 0,
      },
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// French — hard topic-wise structural questions
// ---------------------------------------------------------------------------

function structuralFrench(topicIndex, paperSeed) {
  const s = paperSeed;
  const banks = [
    // ---- Topic 0: Grammaire et conjugaison ----
    [
      `**Q1.** Mettez les verbes au temps qui convient:\n\n(a) Quand je (arriver) ____, ils (déjà partir) ____. *(4 marks)*\n\n(b) Si j'avais su, je (venir) ____ plus tôt. *(3 marks)*\n\n(c) Demain, nous (aller) ____ au marché. *(2 marks)*`,
      `**Q2.** Accordez correctement les participes passés:\n\n(a) Les fleurs que j'ai (acheter) ____ sont belles. *(3 marks)*\n\n(b) Elles se sont (laver) ____ les mains. *(3 marks)*\n\n(c) La lettre qu'il a (écrire) ____ était longue. *(3 marks)*`,
      `**Q3.** Transformez au discours indirect:\n\n(a) Il dit: "Je viendrai demain." *(4 marks)*\n\n(b) Elle demande: "Où est la gare?" *(4 marks)*\n\n(c) Le professeur dit: "Faites vos devoirs." *(4 marks)*`,
      `**Q4.** Remplacez les mots soulignés par un pronom:\n\n(a) Je donne le livre à Marie. *(3 marks)*\n\n(b) Il parle de ses vacances. *(3 marks)*\n\n(c) Nous avons vu les enfants. *(3 marks)*`,
      `**Q5.** Mettez au pluriel:\n\n(a) Le cheval blanc. *(2 marks)*\n\n(b) Un travail difficile. *(2 marks)\n\n(c) Le journal du matin. *(2 marks)*\n\n(d) Un prix spécial. *(2 marks)*`,
      `**Q6.** Conjuguez au passé composé:\n\n(a) Elle (partir) ____ tôt. *(3 marks)*\n\n(b) Nous (finir) ____ le travail. *(3 marks)*\n\n(c) Ils (se lever) ____ à six heures. *(3 marks)*`,
      `**Q7.** Complétez avec l'article qui convient (le, la, les, un, une, des, du, de la):\n\n(a) ____ eau est importante pour la santé. *(2 marks)*\n\n(b) J'achète ____ pain et ____ beurre. *(4 marks)*\n\n(c) ____ enfants jouent dans la cour. *(2 marks)*`,
      `**Q8.** Mettez les phrases au négatif:\n\n(a) Il a mangé quelque chose. *(3 marks)*\n\n(b) Nous avons vu quelqu'un. *(3 marks)*\n\n(c) Elle vient souvent. *(3 marks)*`,
      `**Q9.** Transformez au futur simple:\n\n(a) Je (être) ____ content. *(2 marks)*\n\n(b) Nous (avoir) ____ le temps. *(2 marks)*\n\n(c) Ils (faire) ____ un effort. *(2 marks)*\n\n(d) Tu (aller) ____ à l'école. *(2 marks)*`,
      `**Q10.** Complétez avec le pronom relatif qui convient (qui, que, dont, où):\n\n(a) La ville ____ je suis né est belle. *(2 marks)*\n\n(b) Le livre ____ tu parles est intéressant. *(2 marks)*\n\n(c) La femme ____ chante est ma mère. *(2 marks)*\n\n(d) Le film ____ nous avons vu était long. *(2 marks)*`,
      `**Q11.** Mettez au féminin:\n\n(a) Un acteur célèbre. *(2 marks)*\n\n(b) Le directeur est gentil. *(2 marks)*\n\n(c) Un sportif courageux. *(2 marks)*\n\n(d) Le voisin est patient. *(2 marks)*`,
      `**Q12.** Conjuguez à l'imparfait:\n\n(a) Quand j'étais petit, je (jouer) ____ au football. *(3 marks)*\n\n(b) Il (pleuvoir) ____ souvent. *(3 marks)*\n\n(c) Nous (habiter) ____ à Douala. *(3 marks)*`,
      `**Q13.** Complétez avec la préposition qui convient (à, de, en, dans, sur, pour):\n\n(a) Il va ____ France. *(2 marks)*\n\n(b) Elle habite ____ Douala. *(2 marks)*\n\n(c) Nous partons ____ l'école. *(2 marks)*\n\n(d) Le livre est ____ la table. *(2 marks)*`,
      `**Q14.** Transformez au plus-que-parfait:\n\n(a) Il (finir) ____ son travail avant de partir. *(3 marks)*\n\n(b) Nous (déjà voir) ____ ce film. *(3 marks)*\n\n(c) Elle (manger) ____ avant d'arriver. *(3 marks)*`,
      `**Q15.** Complétez avec le bon déterminant (ce, cette, ces, mon, ma, mes):\n\n(a) ____ livre est intéressant. *(2 marks)*\n\n(b) ____ maison est grande. *(2 marks)*\n\n(c) J'aime ____ fleurs. *(2 marks)*\n\n(d) ____ père travaille à l'hôpital. *(2 marks)*`,
      `**Q16.** Mettez au comparatif ou superlatif:\n\n(a) Paul est ____ (grand) que Pierre. *(3 marks)*\n\n(b) C'est ____ (bon) élève de la classe. *(3 marks)*\n\n(c) Elle parle ____ (lentement) que moi. *(3 marks)*`,
      `**Q17.** Transformez au conditionnel présent:\n\n(a) Je (aimer) ____ voyager. *(3 marks)*\n\n(b) Nous (pouvoir) ____ vous aider. *(3 marks)*\n\n(c) Elle (venir) ____ si elle avait le temps. *(3 marks)*`,
      `**Q18.** Complétez avec le subjonctif:\n\n(a) Il faut que tu (venir) ____. *(3 marks)*\n\n(b) Je veux qu'il (faire) ____ son travail. *(3 marks)*\n\n(c) Bien qu'il (être) ____ fatigué, il continue. *(3 marks)*`,
      `**Q19.** Corrigez les erreurs dans les phrases suivantes:\n\n(a) "Je suis allé au marché hier." *(2 marks)*\n\n(b) "Elle a mangé des pommes." *(2 marks)*\n\n(c) "Nous avons vu un film intéressant." *(2 marks)*\n\n(d) "Ils sont arrivés à temps." *(2 marks)*`,
      `**Q20.** Complétez avec le temps qui convient (présent, passé composé, imparfait):\n\n(a) Hier, je (rencontrer) ____ un ami. *(3 marks)*\n\n(b) Quand j'étais jeune, je (jouer) ____ au tennis. *(3 marks)*\n\n(c) Maintenant, nous (étudier) ____ le français. *(3 marks)*`,
    ],
    // ---- Topic 1: Comprehension et expression ecrite ----
    [
      `**Q1.** Lisez le texte et répondez aux questions:\n\n*"Le Cameroun est souvent appelé 'l'Afrique en miniature' à cause de sa diversité. On y trouve des plages, des montagnes, des forêts et des savanes. Cette diversité se reflète aussi dans sa culture, avec plus de 250 groupes ethniques."*\n\n(a) Pourquoi appelle-t-on le Cameroun "l'Afrique en miniature"? *(3 marks)*\n\n(b) Citez deux types de paysages qu'on trouve au Cameroun. *(3 marks)*\n\n(c) Combien de groupes ethniques compte le Cameroun? *(2 marks)*`,
      `**Q2.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:\n\n"Ma ville natale"\n\nDécrivez les lieux, les gens et les activités. *(10 marks)*`,
      `**Q3.** Lisez le texte et répondez aux questions:\n\n*"La pluie tombait depuis trois jours. Les rues de la ville étaient transformées en rivières. Les enfants, ravis, jouaient dans les flaques d'eau, tandis que les adultes cherchaient un abri. Soudain, le soleil perça les nuages et tout le monde sortit pour admirer l'arc-en-ciel."*\n\n(a) Depuis combien de temps pleuvait-il? *(2 marks)*\n\n(b) Que faisaient les enfants? *(3 marks)*\n\n(c) Qu'est-ce qui est apparu à la fin? *(2 marks)*\n\n(d) Quel temps fait-il dans ce texte? *(3 marks)*`,
      `**Q4.** Écrivez une lettre à votre ami(e) pour l'inviter à votre anniversaire. (80 à 100 mots)\n\nIncluez la date, le lieu, l'heure et ce que vous prévoyez. *(10 marks)*`,
      `**Q5.** Lisez le texte et répondez aux questions:\n\n*"Le marché de Mokolo est l'un des plus grands marchés de Yaoundé. Chaque jour, des milliers de personnes y viennent pour acheter des vêtements, des fruits, des légumes et des articles ménagers. Les vendeurs crient pour attirer les clients, et l'air est rempli d'odeurs variées."*\n\n(a) Où se trouve le marché de Mokolo? *(2 marks)*\n\n(b) Qu'est-ce qu'on peut acheter au marché? *(3 marks)*\n\n(c) Comment les vendeurs attirent-ils les clients? *(3 marks)*`,
      `**Q6.** Rédigez un dialogue de 80 à 100 mots entre deux amis qui discutent de leurs projets pour les vacances. *(10 marks)*`,
      `**Q7.** Lisez le texte et répondez aux questions:\n\n*"L'éducation est la clé du développement. Un pays qui investit dans l'éducation de ses enfants investit dans son avenir. Les écoles forment non seulement des travailleurs qualifiés, mais aussi des citoyens responsables capables de prendre de bonnes décisions."*\n\n(a) Pourquoi l'éducation est-elle importante selon le texte? *(3 marks)*\n\n(b) Que forment les écoles? *(3 marks)*\n\n(c) Donnez un titre au texte. *(2 marks)*`,
      `**Q8.** Traduisez en français:\n\n(a) "I am going to the market." *(3 marks)*\n\n(b) "She has three brothers." *(3 marks)*\n\n(c) "We visited our grandparents last week." *(4 marks)*`,
      `**Q9.** Lisez le texte et répondez aux questions:\n\n*"La santé est notre bien le plus précieux. Pour rester en bonne santé, il faut manger équilibré, faire du sport et dormir suffisamment. Il faut aussi éviter le tabac et l'alcool. Les médecins conseillent de boire beaucoup d'eau et de consulter régulièrement."*\n\n(a) Citez trois habitudes pour rester en bonne santé. *(3 marks)*\n\n(b) Que faut-il éviter? *(2 marks)*\n\n(c) Que conseillent les médecins? *(3 marks)*`,
      `**Q10.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:\n\n"Ce que je ferai après mes examens"\n\nParlez de vos projets et de vos rêves. *(10 marks)*`,
      `**Q11.** Lisez le texte et répondez aux questions:\n\n*"Le football est le sport le plus populaire au Cameroun. Les Lions Indomptables, l'équipe nationale, ont gagné plusieurs coupes d'Afrique. Dans les rues, les enfants jouent au football avec des ballons improvisés, rêvant de devenir des stars comme Samuel Eto'o."*\n\n(a) Quel est le sport le plus populaire au Cameroun? *(2 marks)*\n\n(b) Comment s'appelle l'équipe nationale? *(2 marks)*\n\n(c) Avec quoi les enfants jouent-ils? *(3 marks)*\n\n(d) De quoi rêvent les enfants? *(3 marks)*`,
      `**Q12.** Écrivez un texte de 80 à 100 mots décrivant votre journée typique.\n\nCommencez par: "Ma journée commence à..." *(10 marks)*`,
      `**Q13.** Lisez le texte et répondez aux questions:\n\n*"La technologie a changé notre façon de communiquer. Avec un téléphone portable, on peut appeler, envoyer des messages et même voir ses proches à l'écran. Mais certains pensent que la technologie nous éloigne les uns des autres."*\n\n(a) Qu'est-ce qu'on peut faire avec un téléphone portable? *(3 marks)*\n\n(b) Quel est l'inconvénient de la technologie selon certains? *(3 marks)*\n\n(c) Êtes-vous d'accord? Justifiez votre réponse. *(3 marks)*`,
      `**Q14.** Traduisez en anglais:\n\n(a) "Je vais au marché avec ma mère." *(3 marks)*\n\n(b) "Nous avons mangé du poisson hier soir." *(3 marks)*\n\n(c) "Elle est plus grande que son frère." *(4 marks)*`,
      `**Q15.** Lisez le texte et répondez aux questions:\n\n*"Le respect de l'environnement commence à la maison. Il faut trier les déchets, économiser l'eau et l'électricité, et éviter de jeter les ordures dans la nature. Chaque petit geste compte pour protéger notre planète."*\n\n(a) Citez trois gestes pour protéger l'environnement. *(3 marks)*\n\n(b) Où commence le respect de l'environnement? *(2 marks)*\n\n(c) Que signifie "Chaque petit geste compte"? *(3 marks)*`,
      `**Q16.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:\n\n"Pourquoi j'apprends le français"\n\nDonnez au moins trois raisons. *(10 marks)*`,
      `**Q17.** Lisez le texte et répondez aux questions:\n\n*"La famille est très importante dans la culture camerounaise. Les enfants respectent leurs parents et leurs aînés. Les grandes occasions comme les mariages et les funérailles rassemblent toute la famille, parfois des centaines de personnes."*\n\n(a) Pourquoi la famille est-elle importante? *(2 marks)*\n\n(b) Comment les enfants traitent-ils leurs aînés? *(3 marks)*\n\n(c) Quelles occasions rassemblent la famille? *(3 marks)*`,
      `**Q18.** Écrivez un texte de 80 à 100 mots racontant ce que vous avez fait le week-end dernier.\n\nUtilisez le passé composé. *(10 marks)*`,
      `**Q19.** Lisez le texte et répondez aux questions:\n\n*"Le commerce équitable garantit que les producteurs reçoivent un prix juste pour leur travail. Au Cameroun, le cacao et le café sont les principales cultures d'exportation. En achetant des produits équitables, les consommateurs aident les agriculteurs à améliorer leurs conditions de vie."*\n\n(a) Qu'est-ce que le commerce équitable garantit? *(3 marks)*\n\n(b) Quelles sont les principales cultures d'exportation du Cameroun? *(3 marks)*\n\n(c) Comment les consommateurs peuvent-ils aider les agriculteurs? *(3 marks)*`,
      `**Q20.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:\n\n"Mon plat préféré"\n\nDécrivez le plat, ses ingrédients et pourquoi vous l'aimez. *(10 marks)*`,
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// French — MCQ banks (30 per topic)
// ---------------------------------------------------------------------------

function mcqFrench(topicIndex) {
  const banks = [
    // Topic 0: Grammaire et conjugaison
    [
      {
        stem: "Complétez: Je ____ au marché.",
        options: ["vais", "va", "vont", "allons"],
        answer: 0,
      },
      {
        stem: "Complétez: Nous ____ français.",
        options: ["parlons", "parlez", "parlent", "parle"],
        answer: 0,
      },
      {
        stem: "Complétez: Elle ____ une lettre.",
        options: ["écrit", "écris", "écrivent", "écrivez"],
        answer: 0,
      },
      {
        stem: "Le passé composé de 'manger' avec 'je' est:",
        options: ["j'ai mangé", "je mange", "je mangerai", "je mangeais"],
        answer: 0,
      },
      {
        stem: "Complétez: Ils ____ à l'école.",
        options: ["vont", "va", "vais", "allons"],
        answer: 0,
      },
      {
        stem: "Le futur de 'être' avec 'je' est:",
        options: ["je serai", "je suis", "j'étais", "je fus"],
        answer: 0,
      },
      { stem: "Complétez: Tu ____ ton livre.", options: ["as", "a", "avez", "ont"], answer: 0 },
      {
        stem: "L'imparfait de 'avoir' avec 'nous' est:",
        options: ["nous avions", "nous avons", "nous aurons", "nous eûmes"],
        answer: 0,
      },
      {
        stem: "Complétez: Le livre ____ je parle est intéressant.",
        options: ["dont", "qui", "que", "où"],
        answer: 0,
      },
      {
        stem: "Complétez: La femme ____ chante est ma mère.",
        options: ["qui", "que", "dont", "où"],
        answer: 0,
      },
      {
        stem: "Le pluriel de 'le cheval' est:",
        options: ["les chevaux", "les chevals", "les chevaus", "les chevauxs"],
        answer: 0,
      },
      { stem: "Complétez: ____ eau est bonne.", options: ["L'", "Le", "La", "Les"], answer: 0 },
      { stem: "Complétez: J'achète ____ pain.", options: ["du", "de la", "des", "le"], answer: 0 },
      {
        stem: "La négation de 'Il a mangé' est:",
        options: ["Il n'a pas mangé", "Il a pas mangé", "Il ne mange pas", "Il n'a mangé pas"],
        answer: 0,
      },
      {
        stem: "Complétez: Elle est ____ grande que sa sœur.",
        options: ["plus", "moins", "aussi", "très"],
        answer: 0,
      },
      {
        stem: "Le féminin de 'acteur' est:",
        options: ["actrice", "acteure", "acteurse", "acteuse"],
        answer: 0,
      },
      {
        stem: "Complétez: Il faut que tu ____.",
        options: ["viennes", "viens", "viendras", "venais"],
        answer: 0,
      },
      {
        stem: "Complétez: Je ____ voyager.",
        options: ["voudrais", "voudrai", "veux", "voulais"],
        answer: 0,
      },
      {
        stem: "Complétez: ____ maison est grande.",
        options: ["Cette", "Ce", "Ces", "Cet"],
        answer: 0,
      },
      {
        stem: "Complétez: ____ père travaille à l'hôpital.",
        options: ["Mon", "Ma", "Mes", "Ton"],
        answer: 0,
      },
      {
        stem: "Complétez: Nous ____ à Douala.",
        options: ["habitons", "habitez", "habitent", "habite"],
        answer: 0,
      },
      {
        stem: "Le passé composé de 'partir' avec 'elle' est:",
        options: ["elle est partie", "elle a parti", "elle est parti", "elle a partie"],
        answer: 0,
      },
      { stem: "Complétez: Il va ____ France.", options: ["en", "à", "au", "aux"], answer: 0 },
      {
        stem: "Complétez: Le livre est ____ la table.",
        options: ["sur", "dans", "à", "de"],
        answer: 0,
      },
      {
        stem: "Complétez: ____ enfants jouent dans la cour.",
        options: ["Les", "Le", "La", "Un"],
        answer: 0,
      },
      {
        stem: "Le pluriel de 'un travail' est:",
        options: ["des travaux", "des travails", "des travailes", "des travail"],
        answer: 0,
      },
      { stem: "Complétez: Je ____ content.", options: ["suis", "es", "est", "sommes"], answer: 0 },
      {
        stem: "Complétez: Nous ____ le temps.",
        options: ["aurons", "avons", "avions", "eûmes"],
        answer: 0,
      },
      {
        stem: "Complétez: Elle ____ souvent.",
        options: ["vient", "viennent", "venez", "viens"],
        answer: 0,
      },
      {
        stem: "Complétez: Ils ____ leurs devoirs.",
        options: ["font", "fait", "fais", "faisons"],
        answer: 0,
      },
    ],
    // Topic 1: Comprehension et expression ecrite
    [
      {
        stem: "Le Cameroun est appelé:",
        options: [
          "l'Afrique en miniature",
          "le pays des lions",
          "la perle de l'Afrique",
          "le grenier de l'Afrique",
        ],
        answer: 0,
      },
      {
        stem: "Combien de groupes ethniques compte le Cameroun?",
        options: ["plus de 250", "environ 50", "plus de 1000", "moins de 100"],
        answer: 0,
      },
      {
        stem: "Le marché de Mokolo se trouve à:",
        options: ["Yaoundé", "Douala", "Bafoussam", "Garoua"],
        answer: 0,
      },
      {
        stem: "L'équipe nationale de football du Cameroun s'appelle:",
        options: ["les Lions Indomptables", "les Éléphants", "les Aigles", "les Panthères"],
        answer: 0,
      },
      {
        stem: "Samuel Eto'o est un célèbre:",
        options: ["footballeur", "chanteur", "écrivain", "médecin"],
        answer: 0,
      },
      {
        stem: "Pour rester en bonne santé, il faut:",
        options: ["manger équilibré", "fumer", "boire de l'alcool", "ne pas dormir"],
        answer: 0,
      },
      {
        stem: "Le texte sur la pluie se termine par:",
        options: ["un arc-en-ciel", "une tempête", "de la neige", "un orage"],
        answer: 0,
      },
      {
        stem: "Dans le texte sur le marché, les vendeurs:",
        options: [
          "crient pour attirer les clients",
          "chantent des chansons",
          "dorment",
          "lisent des livres",
        ],
        answer: 0,
      },
      {
        stem: "L'éducation est importante parce qu'elle:",
        options: [
          "forme des travailleurs qualifiés",
          "coûte cher",
          "est obligatoire",
          "est facile",
        ],
        answer: 0,
      },
      {
        stem: "Les principales cultures d'exportation du Cameroun sont:",
        options: [
          "le cacao et le café",
          "le riz et le blé",
          "le coton et le tabac",
          "les bananes et les oranges",
        ],
        answer: 0,
      },
      {
        stem: "Le commerce équitable garantit:",
        options: [
          "un prix juste pour les producteurs",
          "des produits gratuits",
          "plus de publicité",
          "des prix plus élevés",
        ],
        answer: 0,
      },
      {
        stem: "Dans la culture camerounaise, les enfants:",
        options: [
          "respectent leurs aînés",
          "ignorent leurs parents",
          "quittent la maison",
          "ne parlent pas",
        ],
        answer: 0,
      },
      {
        stem: "Pour protéger l'environnement, il faut:",
        options: [
          "trier les déchets",
          "jeter les ordures dans la nature",
          "gaspiller l'eau",
          "couper les arbres",
        ],
        answer: 0,
      },
      {
        stem: "La technologie permet de:",
        options: [
          "voir ses proches à l'écran",
          "voyager gratuitement",
          "cuisiner plus vite",
          "apprendre sans effort",
        ],
        answer: 0,
      },
      {
        stem: "Le texte sur la santé conseille de:",
        options: ["boire beaucoup d'eau", "fumer", "manger trop", "ne pas consulter le médecin"],
        answer: 0,
      },
      {
        stem: "Dans le texte sur la pluie, les enfants:",
        options: ["jouaient dans les flaques d'eau", "pleuraient", "dormaient", "travaillaient"],
        answer: 0,
      },
      {
        stem: "Le football est le sport le plus populaire:",
        options: ["au Cameroun", "en France", "en Chine", "au Brésil"],
        answer: 0,
      },
      {
        stem: "Les enfants jouent au football avec:",
        options: [
          "des ballons improvisés",
          "des ballons officiels",
          "des pierres",
          "des bouteilles",
        ],
        answer: 0,
      },
      {
        stem: "Une lettre à un ami doit commencer par:",
        options: [
          "Cher/Cher ami",
          "Monsieur le Président",
          "À qui de droit",
          "Bonjour tout le monde",
        ],
        answer: 0,
      },
      {
        stem: "Pour décrire sa journée typique, on utilise:",
        options: ["le présent", "le passé composé", "le futur", "le subjonctif"],
        answer: 0,
      },
      {
        stem: "Pour raconter ce qu'on a fait le week-end dernier, on utilise:",
        options: ["le passé composé", "le présent", "le futur simple", "l'impératif"],
        answer: 0,
      },
      {
        stem: "Un dialogue est un échange entre:",
        options: [
          "deux personnes",
          "une seule personne",
          "un groupe de spectateurs",
          "un professeur et un tableau",
        ],
        answer: 0,
      },
      {
        stem: "Le texte sur la famille dit que les grandes occasions:",
        options: [
          "rassemblent toute la famille",
          "sont rares",
          "sont tristes",
          "ne concernent que les enfants",
        ],
        answer: 0,
      },
      {
        stem: "Pour inviter un ami à son anniversaire, on écrit:",
        options: [
          "une lettre d'invitation",
          "une lettre de réclamation",
          "une lettre de démission",
          "un poème",
        ],
        answer: 0,
      },
      {
        stem: "Le texte sur l'environnement dit que le respect commence:",
        options: ["à la maison", "à l'école", "au marché", "à la plage"],
        answer: 0,
      },
      {
        stem: "Dans le texte sur le marché, l'air est rempli:",
        options: ["d'odeurs variées", "de musique", "de fumée", "de silence"],
        answer: 0,
      },
      {
        stem: "Le texte sur l'éducation dit que l'éducation est:",
        options: [
          "la clé du développement",
          "un luxe",
          "une perte de temps",
          "réservée aux riches",
        ],
        answer: 0,
      },
      {
        stem: "Pour rester en bonne santé, il faut éviter:",
        options: [
          "le tabac et l'alcool",
          "l'eau et les fruits",
          "le sport et le sommeil",
          "les légumes",
        ],
        answer: 0,
      },
      {
        stem: "Le texte sur la technologie dit que certains pensent qu'elle:",
        options: [
          "nous éloigne les uns des autres",
          "nous rapproche toujours",
          "est inutile",
          "est trop chère",
        ],
        answer: 0,
      },
      {
        stem: "Le texte sur le commerce équitable parle du:",
        options: ["cacao et du café", "pétrole et du gaz", "bois et du fer", "coton et du riz"],
        answer: 0,
      },
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// Paper assembly
// ---------------------------------------------------------------------------

function structuralHeader(cfg, title, subtitle) {
  return [
    `# ${title}`,
    "",
    subtitle,
    "",
    `**Level:** ${cfg.level === "advanced" ? "Advanced Level" : "Ordinary Level"}`,
    `**Class:** ${cfg.classLevel.replace("_", " ").toUpperCase()}`,
    `**Series:** ${cfg.series}`,
    `**Subject:** ${cfg.subject}`,
    "",
    "**Instructions:**",
    "",
    "- Answer all questions in a clear and organized manner.",
    "- Show all working where calculations are required.",
    "- Use correct subject terminology and Cameroon GCE presentation standards.",
    "- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.",
    "",
    "---",
    "",
  ].join("\n");
}

function mcqHeader(cfg, title) {
  return [
    `# ${title}`,
    "",
    "## Multiple Choice Question Bank",
    "",
    `**Level:** ${cfg.level === "advanced" ? "Advanced Level" : "Ordinary Level"}`,
    `**Class:** ${cfg.classLevel.replace("_", " ").toUpperCase()}`,
    `**Series:** ${cfg.series}`,
    `**Subject:** ${cfg.subject}`,
    "",
    "**Instructions:**",
    "",
    "- Choose the correct option A, B, C or D for each question.",
    "- Record your answers clearly on the answer sheet provided.",
    "- Each question carries equal marks. No marks is deducted for wrong answers.",
    "- Use the answer key at the end of the paper to check your responses.",
    "",
    "---",
    "",
  ].join("\n");
}

function buildStructuralPaper(cfg, topic, questions, title) {
  const lines = [structuralHeader(cfg, title, `## Structural Question Bank — ${topic.title}`)];
  lines.push(`## SECTION 1: ${topic.title.toUpperCase()}`, "");
  questions.forEach((q, i) => {
    lines.push(q, "");
    if (i < questions.length - 1) lines.push("---", "");
  });
  return lines.join("\n").trim() + "\n";
}

// All 24 permutations of 4 options. Used to place the correct answer in a
// varied position across questions so the answer key is not always A.
const PERMS = [
  [0, 1, 2, 3],
  [0, 1, 3, 2],
  [0, 2, 1, 3],
  [0, 2, 3, 1],
  [0, 3, 1, 2],
  [0, 3, 2, 1],
  [1, 0, 2, 3],
  [1, 0, 3, 2],
  [1, 2, 0, 3],
  [1, 2, 3, 0],
  [1, 3, 0, 2],
  [1, 3, 2, 0],
  [2, 0, 1, 3],
  [2, 0, 3, 1],
  [2, 1, 0, 3],
  [2, 1, 3, 0],
  [2, 3, 0, 1],
  [2, 3, 1, 0],
  [3, 0, 1, 2],
  [3, 0, 2, 1],
  [3, 1, 0, 2],
  [3, 1, 2, 0],
  [3, 2, 0, 1],
  [3, 2, 1, 0],
];

// Deterministically permute a question's options for question index `i`,
// returning { options, answer } with the answer remapped to the new position.
function permuteQuestion(q, i) {
  const perm = PERMS[i % PERMS.length];
  const options = perm.map((src) => q.options[src]);
  const answer = perm.indexOf(q.answer);
  return { options, answer };
}

function buildMcqPaper(cfg, mcqSet, title) {
  const lines = [mcqHeader(cfg, title)];
  lines.push("## QUESTIONS", "");
  mcqSet.forEach((q, i) => {
    const { options, answer } = permuteQuestion(q, i);
    lines.push(`**Q${i + 1}.** ${q.stem}`, "");
    options.forEach((opt, j) => {
      lines.push(`${String.fromCharCode(65 + j)}. ${opt}  `);
    });
    lines.push("", "---", "");
    q._answerKey = String.fromCharCode(65 + answer);
  });
  lines.push("## ANSWER KEY", "");
  mcqSet.forEach((q, i) => {
    lines.push(`${i + 1}. ${q._answerKey}`);
  });
  return lines.join("\n").trim() + "\n";
}

function titleFor(cfg, kind, index) {
  const level = cfg.level === "advanced" ? "ADVANCED LEVEL" : "ORDINARY LEVEL";
  if (kind === "structural") {
    return `CAMEROON GCE ${level} ${cfg.subject.toUpperCase()} P2 SET ${index}`;
  }
  return `CAMEROON GCE ${level} ${cfg.subject.toUpperCase()} P1 SET ${index}`;
}

// ---------------------------------------------------------------------------
// Manifest handling
// ---------------------------------------------------------------------------

function readManifestRows() {
  const path = join(papersDir, "manifest.csv");
  let content = "";
  try {
    content = readFileSync(path, "utf8");
  } catch {
    return {
      header: "subject,level,class_level,series,paper,title,path",
      rows: [],
      byPath: new Map(),
    };
  }
  const lines = content.split("\n").filter((l) => l.trim() !== "");
  const header = lines[0];
  const rows = lines.slice(1);
  const byPath = new Map();
  rows.forEach((r) => byPath.set(extractPath(r), r));
  return { header, rows, byPath };
}

function extractPath(row) {
  const m = row.match(/,"([^"]+)"$/);
  return m ? m[1] : row;
}

function manifestLine(cfg, paperNumber, title, relPath) {
  return `"${cfg.subject}",${cfg.level},${cfg.classLevel},"${cfg.series}",${paperNumber},"${title}","${relPath}"`;
}

// ---------------------------------------------------------------------------
// SQL migration generation
// ---------------------------------------------------------------------------

function buildSqlMigration(papers) {
  const paperRows = papers
    .map((p) => {
      const changeNote = p.changeNote;
      return (
        `(\n` +
        `  ${sql(uuid(p.uuidName))},\n` +
        `  ${sql(p.topicId)},\n` +
        `  ${sql(p.subject)},\n` +
        `  ${sql(p.title)},\n` +
        `  'english',\n` +
        `  ${sql(p.level)},\n` +
        `  ${list(p.classLevels)},\n` +
        `  ${list(p.series)},\n` +
        `  'published',\n` +
        `  $md$\n${p.markdown}$md$,\n` +
        `  'paper',\n` +
        `  'paper',\n` +
        `  'gce',\n` +
        `  ${sql(p.exam)},\n` +
        `  '2026',\n` +
        `  'teacher_authored',\n` +
        `  'StudySpark authored GCE practice paper',\n` +
        `  'approved',\n` +
        `  'approved',\n` +
        `  '1.0.0',\n` +
        `  ${sql(changeNote)}\n` +
        `)`
      );
    })
    .join(",\n");

  const paperUpdate = `on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  content_kind = excluded.content_kind,
  doc_type = excluded.doc_type,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();`;

  return `begin;

-- English GCE hard practice papers: topic-wise structural sets and MCQ sets.
-- Generated by scripts/generate-hard-papers.mjs.
-- Every row carries an explicit topic_id so topic-wise papers land on the
-- correct syllabus topic instead of a subject-level default.

insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, content_kind, doc_type, curriculum_path, exam, content_year,
  source_type, source_reference, permission_status, review_status, content_version, change_note
)
values
${paperRows}
${paperUpdate}

notify pgrst, 'reload schema';

commit;
`;
}

// ---------------------------------------------------------------------------
// Main generation
// ---------------------------------------------------------------------------

function generateSubject(slugKey) {
  const cfg = subjects[slugKey];
  if (!cfg) {
    console.error(`Unknown subject: ${slugKey}`);
    process.exitCode = 1;
    return null;
  }

  const subjectDir = join(papersDir, slugKey);
  mkdirSync(subjectDir, { recursive: true });

  const manifest = readManifestRows();
  const newManifestRows = [];
  const migrationPapers = [];

  // --- 5 topic-wise hard structural papers (SET 4..8) ---
  for (let i = 0; i < 5; i += 1) {
    const setNumber = 4 + i;
    const topic = cfg.topics[i % cfg.topics.length];
    const paperSeed = Math.floor(i / cfg.topics.length); // 0 for first cycle, 1 for wrap
    const questions = cfg.structural(cfg.topics.indexOf(topic), paperSeed);
    const title = titleFor(cfg, "structural", setNumber);
    const relPath = `content/papers/${slugKey}/set-${setNumber}.md`;
    const absPath = join(subjectDir, `set-${setNumber}.md`);
    const markdown = buildStructuralPaper(cfg, topic, questions, title);
    writeFileSync(absPath, markdown);

    newManifestRows.push(manifestLine(cfg, setNumber, title, relPath));
    migrationPapers.push({
      uuidName: `paper:${slugKey}:set-${setNumber}`,
      topicId: topic.id,
      subject: cfg.subject,
      title,
      level: cfg.level,
      classLevels: [cfg.classLevel],
      series: cfg.series.split(", "),
      markdown,
      exam: cfg.exam,
      changeNote: `Adds ${cfg.subject} topic-wise hard structural paper set ${setNumber} (${topic.title})`,
    });
  }

  // --- 3 MCQ papers (P1 SET 1..3) ---
  for (let set = 1; set <= 3; set += 1) {
    // Each MCQ paper draws 60 questions spread across all topics: 60 = 15 per
    // topic for a 4-topic subject. We concatenate per-topic banks and cycle.
    const perTopic = Math.floor(60 / cfg.topics.length);
    const mcqSet = [];
    for (let t = 0; t < cfg.topics.length; t += 1) {
      const bank = cfg.mcq(t);
      for (let k = 0; k < perTopic; k += 1) {
        // Rotate starting index per set so papers differ.
        mcqSet.push(bank[(k + (set - 1) * 3) % bank.length]);
      }
    }
    // Top up to exactly 60 if topics don't divide evenly.
    while (mcqSet.length < 60) {
      const t = mcqSet.length % cfg.topics.length;
      const bank = cfg.mcq(t);
      mcqSet.push(bank[mcqSet.length % bank.length]);
    }
    mcqSet.length = 60;

    const title = titleFor(cfg, "mcq", set);
    const relPath = `content/papers/${slugKey}/mcq-${set}.md`;
    const absPath = join(subjectDir, `mcq-${set}.md`);
    const markdown = buildMcqPaper(cfg, mcqSet, title);
    writeFileSync(absPath, markdown);

    newManifestRows.push(manifestLine(cfg, set, title, relPath));
    migrationPapers.push({
      uuidName: `paper:${slugKey}:mcq-${set}`,
      // MCQ papers span all topics; anchor them to the subject's first topic.
      topicId: cfg.topics[0].id,
      subject: cfg.subject,
      title,
      level: cfg.level,
      classLevels: [cfg.classLevel],
      series: cfg.series.split(", "),
      markdown,
      exam: cfg.exam,
      changeNote: `Adds ${cfg.subject} MCQ practice paper set ${set} (60 questions)`,
    });
  }

  // --- Merge manifest ---
  const rowsByKey = new Map(manifest.byPath);
  newManifestRows.forEach((r) => rowsByKey.set(extractPath(r), r));
  const merged = [...rowsByKey.values()];
  writeFileSync(join(papersDir, "manifest.csv"), [manifest.header, ...merged, ""].join("\n"));

  return { cfg, migrationPapers };
}

const requested = process.argv.slice(2);
const keys = requested.length > 0 ? requested : Object.keys(subjects);

const allMigrationPapers = [];
let lastNumbered = 57;
for (const key of keys) {
  const result = generateSubject(key);
  if (result) allMigrationPapers.push(...result.migrationPapers);
}

if (allMigrationPapers.length > 0) {
  mkdirSync(outDir, { recursive: true });
  // Determine next migration number by scanning existing numbered files.
  const { readdirSync } = await import("node:fs");
  const files = readdirSync(outDir);
  let maxN = lastNumbered;
  for (const f of files) {
    const m = f.match(/^(\d+)_/);
    if (m) maxN = Math.max(maxN, Number(m[1]));
  }
  const nextN = maxN + 1;
  const outPath = join(outDir, `${String(nextN).padStart(3, "0")}_english_hard_papers.sql`);
  writeFileSync(outPath, buildSqlMigration(allMigrationPapers));

  console.log(
    JSON.stringify(
      {
        subjects: keys,
        structuralPapers: allMigrationPapers.filter((p) => p.title.includes(" P2 ")).length,
        mcqPapers: allMigrationPapers.filter((p) => p.title.includes(" P1 ")).length,
        totalPapers: allMigrationPapers.length,
        migration: outPath,
      },
      null,
      2,
    ),
  );
}
