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
