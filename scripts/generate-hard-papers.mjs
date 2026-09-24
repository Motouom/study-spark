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
  biology: {
    subject: "Biology",
    level: "ordinary",
    classLevel: "form_5",
    series: "general, science",
    exam: "GCE",
    topics: [
      {
        id: "bio-cell-transport",
        title: "Cells and transport",
        description:
          "Cell structure, microscopy, diffusion, osmosis, active transport, and enzymes.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science"],
        questionCount: 35,
        estimatedMinutes: 120,
      },
      {
        id: "bio-nutrition-respiration",
        title: "Nutrition, respiration, and excretion",
        description:
          "Photosynthesis, food tests, digestion, gas exchange, respiration, kidneys, and homeostasis.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["general", "science"],
        questionCount: 40,
        estimatedMinutes: 120,
      },
      {
        id: "bio-reproduction-ecology",
        title: "Reproduction, genetics, and ecology",
        description:
          "Reproduction, inheritance, variation, evolution, ecosystems, cycles, and conservation.",
        level: "ordinary",
        classLevels: ["form_4", "form_5"],
        series: ["general", "science"],
        questionCount: 45,
        estimatedMinutes: 120,
      },
    ],
    structural: structuralBiology,
    mcq: mcqBiology,
  },
  chemistry: {
    subject: "Chemistry",
    level: "ordinary",
    classLevel: "form_5",
    series: "science, technical",
    exam: "GCE",
    topics: [
      {
        id: "chem-structure-bonding",
        title: "Atomic structure and bonding",
        description:
          "Atoms, periodicity, ionic bonding, covalent bonding, metallic bonding, and structure.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["science", "technical"],
        questionCount: 40,
        estimatedMinutes: 120,
      },
      {
        id: "chem-stoichiometry-reactions",
        title: "Stoichiometry and reactions",
        description: "Moles, equations, acids, bases, salts, redox, rates, and equilibrium.",
        level: "ordinary",
        classLevels: ["form_4", "form_5"],
        series: ["science", "technical"],
        questionCount: 45,
        estimatedMinutes: 120,
      },
    ],
    structural: structuralChemistry,
    mcq: mcqChemistry,
  },
  physics: {
    subject: "Physics",
    level: "ordinary",
    classLevel: "form_5",
    series: "science, technical",
    exam: "GCE",
    topics: [
      {
        id: "physics-mechanics",
        title: "Mechanics",
        description: "Motion, forces, work, energy, power, pressure, moments, and machines.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["science", "technical"],
        questionCount: 40,
        estimatedMinutes: 120,
      },
      {
        id: "physics-waves-electricity",
        title: "Waves, electricity, and magnetism",
        description:
          "Light, sound, heat, current electricity, circuits, magnetism, and electromagnetism.",
        level: "ordinary",
        classLevels: ["form_4", "form_5"],
        series: ["science", "technical"],
        questionCount: 45,
        estimatedMinutes: 120,
      },
    ],
    structural: structuralPhysics,
    mcq: mcqPhysics,
  },
  ict: {
    subject: "ICT",
    level: "ordinary",
    classLevel: "form_5",
    series: "science, commercial, technical",
    exam: "GCE",
    topics: [
      {
        id: "ict-productivity-tools",
        title: "Productivity tools and digital communication",
        description:
          "Word processing, spreadsheets, presentations, internet, email, collaboration, and digital citizenship.",
        level: "ordinary",
        classLevels: ["form_3", "form_4", "form_5"],
        series: ["science", "commercial", "technical"],
        questionCount: 35,
        estimatedMinutes: 120,
      },
      {
        id: "ict-data-web",
        title: "Data, web, and information systems",
        description:
          "Databases, web concepts, networks, information systems, security, and practical ICT tasks.",
        level: "ordinary",
        classLevels: ["form_4", "form_5"],
        series: ["science", "commercial", "technical"],
        questionCount: 40,
        estimatedMinutes: 120,
      },
    ],
    structural: structuralIct,
    mcq: mcqIct,
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
// Biology — hard topic-wise structural questions
// ---------------------------------------------------------------------------

function structuralBiology(topicIndex, paperSeed) {
  const s = paperSeed;
  const banks = [
    // ---- Topic 0: Cells and transport ----
    [
      `**Q1.** (a) Draw a labelled diagram of a plant cell as seen under a light microscope. *(5 marks)*\n\n(b) State three differences between a plant cell and an animal cell. *(3 marks)*\n\n(c) Explain how the structure of the cell membrane is related to its function. *(4 marks)*`,
      `**Q2.** An experiment was set up with a potato cylinder placed in distilled water and another in a concentrated salt solution.\n\n(a) State what would happen to each cylinder. *(4 marks)*\n\n(b) Explain your answers using the terms osmosis, turgor, and plasmolysis. *(6 marks)*\n\n(c) Name the process involved and state its importance in plants. *(3 marks)*`,
      `**Q3.** (a) Define diffusion and give two examples in living organisms. *(4 marks)*\n\n(b) State three factors that affect the rate of diffusion. *(3 marks)*\n\n(c) Explain why diffusion is important in the human respiratory system. *(4 marks)*`,
      `**Q4.** (a) What is active transport? *(3 marks)*\n\n(b) Give two differences between active transport and diffusion. *(4 marks)*\n\n(c) Explain the role of active transport in the absorption of mineral salts by plant roots. *(5 marks)*`,
      `**Q5.** (a) State the functions of the following cell organelles: nucleus, mitochondria, ribosomes, chloroplast. *(4 marks)*\n\n(b) A cell is found to contain many mitochondria. What does this suggest about its activity? Explain. *(4 marks)*\n\n(c) Distinguish between a tissue and an organ, giving one example of each. *(4 marks)*`,
      `**Q6.** (a) Describe how you would prepare and observe an onion epidermal cell under a microscope. *(6 marks)*\n\n(b) State the function of iodine solution in this preparation. *(2 marks)*\n\n(c) Explain why the onion cell appears as a regular shape. *(3 marks)*`,
      `**Q7.** (a) What are enzymes? *(2 marks)*\n\n(b) State three properties of enzymes. *(3 marks)*\n\n(c) Describe an experiment to show the effect of temperature on the activity of an enzyme. *(6 marks)*`,
      `**Q8.** (a) Define the term "lock and key hypothesis" as applied to enzymes. *(4 marks)*\n\n(b) Explain what happens when an enzyme is boiled. *(3 marks)*\n\n(c) State two factors, other than temperature, that affect enzyme activity. *(2 marks)*`,
      `**Q9.** (a) Distinguish between osmosis and diffusion. *(4 marks)*\n\n(b) A red blood cell is placed in distilled water. State and explain what happens. *(4 marks)*\n\n(c) Explain why a plant cell placed in distilled water does not burst. *(4 marks)*`,
      `**Q10.** (a) Draw and label a diagram of an animal cell. *(5 marks)*\n\n(b) State the function of each labelled part. *(5 marks)*\n\n(c) Explain how the animal cell differs from a plant cell in terms of shape and why. *(3 marks)*`,
      `**Q11.** (a) What is meant by the term "concentration gradient"? *(2 marks)*\n\n(b) Explain how a concentration gradient affects the rate of diffusion. *(4 marks)*\n\n(c) Describe how oxygen moves from the alveoli into the blood. *(4 marks)*`,
      `**Q12.** (a) State the role of the cell wall in plants. *(3 marks)*\n\n(b) Explain why the cell wall is described as "fully permeable". *(3 marks)*\n\n(c) Compare the cell wall with the cell membrane in terms of permeability. *(4 marks)*`,
      `**Q13.** (a) What is a selectively permeable membrane? *(3 marks)*\n\n(b) Give two examples of selectively permeable membranes in living organisms. *(2 marks)*\n\n(c) Explain how selective permeability is important in the kidney. *(5 marks)*`,
      `**Q14.** (a) Define the term "turgidity". *(2 marks)*\n\n(b) Explain how turgidity supports non-woody plants. *(4 marks)*\n\n(c) Describe what happens to a plant when it wilts. *(4 marks)*`,
      `**Q15.** (a) State three functions of the nucleus. *(3 marks)*\n\n(b) Explain why the nucleus is described as the "control centre" of the cell. *(4 marks)*\n\n(c) Distinguish between a gene and a chromosome. *(3 marks)*`,
      `**Q16.** (a) What is the function of the mitochondria? *(2 marks)*\n\n(b) Explain why muscle cells contain more mitochondria than skin cells. *(4 marks)*\n\n(c) State the equation for aerobic respiration. *(3 marks)*`,
      `**Q17.** (a) Define the term "enzyme specificity". *(3 marks)*\n\n(b) Explain why amylase cannot digest proteins. *(4 marks)*\n\n(c) Give two examples of enzymes and the substrates they act on. *(4 marks)*`,
      `**Q18.** (a) Describe an experiment to demonstrate osmosis using a Visking tubing. *(6 marks)*\n\n(b) State the results you would expect. *(3 marks)*\n\n(c) Explain the results in terms of osmosis. *(4 marks)*`,
      `**Q19.** (a) What is the difference between a unicellular and a multicellular organism? *(3 marks)*\n\n(b) Give one example of each. *(2 marks)*\n\n(c) Explain how the cells of a multicellular organism become specialised. *(4 marks)*`,
      `**Q20.** (a) State three differences between diffusion and active transport. *(3 marks)*\n\n(b) Explain why energy is required for active transport. *(3 marks)*\n\n(c) Describe how the small intestine uses active transport to absorb glucose. *(5 marks)*`,
    ],
    // ---- Topic 1: Nutrition, respiration, and excretion ----
    [
      `**Q1.** (a) State the word equation for photosynthesis. *(2 marks)*\n\n(b) Name three factors that affect the rate of photosynthesis. *(3 marks)*\n\n(c) Describe an experiment to show that light is necessary for photosynthesis. *(6 marks)*`,
      `**Q2.** (a) What is the role of chlorophyll in photosynthesis? *(3 marks)*\n\n(b) Explain why a destarched plant is used in photosynthesis experiments. *(3 marks)*\n\n(c) Describe how you would test a leaf for starch. *(5 marks)*`,
      `**Q3.** (a) Name the products of photosynthesis. *(2 marks)*\n\n(b) State the uses of glucose in plants. *(4 marks)*\n\n(c) Explain why photosynthesis is important to animals. *(4 marks)*`,
      `**Q4.** (a) Describe the process of digestion in the mouth. *(4 marks)*\n\n(b) State the role of the stomach in digestion. *(4 marks)*\n\n(c) Explain how the small intestine is adapted for absorption. *(5 marks)*`,
      `**Q5.** (a) Name the enzymes that digest carbohydrates, proteins, and fats. *(3 marks)*\n\n(b) State the products of digestion of each. *(3 marks)*\n\n(c) Explain the role of bile in digestion. *(4 marks)*`,
      `**Q6.** (a) What is a balanced diet? *(2 marks)*\n\n(b) Name the seven components of a balanced diet and state one function of each. *(7 marks)*\n\n(c) Explain why a pregnant woman needs more iron in her diet. *(3 marks)*`,
      `**Q7.** (a) Describe the structure of the human respiratory system. *(5 marks)*\n\n(b) Explain how gaseous exchange occurs in the alveoli. *(5 marks)*\n\n(c) State two ways in which the alveoli are adapted for gaseous exchange. *(3 marks)*`,
      `**Q8.** (a) State the word equation for aerobic respiration. *(2 marks)*\n\n(b) Distinguish between aerobic and anaerobic respiration. *(4 marks)*\n\n(c) Explain why anaerobic respiration produces less energy than aerobic respiration. *(4 marks)*`,
      `**Q9.** (a) What is anaerobic respiration in muscles? *(2 marks)*\n\n(b) Name the product of anaerobic respiration in muscles and explain why it causes fatigue. *(4 marks)*\n\n(c) Explain what is meant by "oxygen debt". *(4 marks)*`,
      `**Q10.** (a) Name the excretory organs of the human body. *(3 marks)*\n\n(b) State the main excretory product of each organ. *(3 marks)*\n\n(c) Explain the role of the kidney in excretion and osmoregulation. *(6 marks)*`,
      `**Q11.** (a) Describe the structure of a nephron. *(5 marks)*\n\n(b) Explain how ultrafiltration occurs in the glomerulus. *(4 marks)*\n\n(c) State what happens to glucose in the kidney tubule. *(3 marks)*`,
      `**Q12.** (a) What is homeostasis? *(2 marks)*\n\n(b) Give two examples of homeostasis in the human body. *(2 marks)*\n\n(c) Explain how the body regulates its temperature when it is too hot. *(6 marks)*`,
      `**Q13.** (a) Define the term "transpiration". *(2 marks)*\n\n(b) State three factors that affect the rate of transpiration. *(3 marks)*\n\n(c) Describe an experiment to demonstrate transpiration. *(5 marks)*`,
      `**Q14.** (a) Explain how water and mineral salts are transported in plants. *(5 marks)*\n\n(b) State the role of the xylem and phloem. *(4 marks)*\n\n(c) Explain how the products of photosynthesis are transported in plants. *(4 marks)*`,
      `**Q15.** (a) What is the function of the liver in the body? *(4 marks)*\n\n(b) Name two substances the liver produces or processes. *(2 marks)*\n\n(c) Explain how the liver regulates blood glucose level. *(5 marks)*`,
      `**Q16.** (a) State the function of the large intestine. *(2 marks)*\n\n(b) Explain how water is reabsorbed in the large intestine. *(3 marks)*\n\n(c) Describe what happens when too much water is absorbed. *(3 marks)*`,
      `**Q17.** (a) Distinguish between breathing and respiration. *(4 marks)*\n\n(b) Explain why breathing rate increases during exercise. *(4 marks)*\n\n(c) State the effect of exercise on the rate of respiration. *(3 marks)*`,
      `**Q18.** (a) Name the parts of the human digestive system in order. *(4 marks)*\n\n(b) State the function of the pancreas. *(3 marks)*\n\n(c) Explain how the villi increase the rate of absorption. *(4 marks)*`,
      `**Q19.** (a) What is the role of the skin in excretion? *(3 marks)*\n\n(b) Name the substances lost through the skin. *(3 marks)*\n\n(c) Explain how sweating helps to cool the body. *(4 marks)*`,
      `**Q20.** (a) State the importance of photosynthesis to the ecosystem. *(4 marks)*\n\n(b) Explain why plants are described as producers. *(3 marks)*\n\n(c) Describe the carbon cycle, naming the processes involved. *(5 marks)*`,
    ],
    // ---- Topic 2: Reproduction, genetics, and ecology ----
    [
      `**Q1.** (a) Draw a labelled diagram of a flower. *(5 marks)*\n\n(b) State the function of each labelled part. *(5 marks)*\n\n(c) Distinguish between pollination and fertilisation. *(4 marks)*`,
      `**Q2.** (a) What is pollination? *(2 marks)*\n\n(b) State three features of insect-pollinated flowers. *(3 marks)*\n\n(c) Describe the process of fertilisation in a flowering plant. *(5 marks)*`,
      `**Q3.** (a) Describe the process of germination in a bean seed. *(5 marks)*\n\n(b) State the conditions necessary for germination. *(3 marks)*\n\n(c) Explain the role of the cotyledons during germination. *(3 marks)*`,
      `**Q4.** (a) Name the male and female reproductive organs of a flowering plant. *(2 marks)*\n\n(b) Explain how seeds are dispersed by wind and by animals. *(4 marks)*\n\n(c) State two advantages of seed dispersal. *(4 marks)*`,
      `**Q5.** (a) Describe the structure of the human male reproductive system. *(5 marks)*\n\n(b) State the function of each part. *(5 marks)*\n\n(c) Explain the role of hormones in the male reproductive system. *(4 marks)*`,
      `**Q6.** (a) Describe the structure of the human female reproductive system. *(5 marks)*\n\n(b) State the function of each part. *(5 marks)*\n\n(c) Explain what happens during the menstrual cycle. *(5 marks)*`,
      `**Q7.** (a) What is fertilisation in humans? *(2 marks)*\n\n(b) Describe the development of the embryo in the uterus. *(5 marks)*\n\n(c) Explain the role of the placenta. *(4 marks)*`,
      `**Q8.** (a) Define the terms gene, allele, and genotype. *(3 marks)*\n\n(b) Explain the difference between genotype and phenotype. *(4 marks)*\n\n(c) State the difference between homozygous and heterozygous. *(3 marks)*`,
      `**Q9.** (a) In a monohybrid cross between a tall plant (TT) and a short plant (tt), show the genotypes and phenotypes of the F1 and F2 generations. *(6 marks)*\n\n(b) State the phenotypic ratio of the F2 generation. *(2 marks)*\n\n(c) Explain what is meant by a dominant allele. *(3 marks)*`,
      `**Q10.** (a) What is a sex-linked characteristic? *(3 marks)*\n\n(b) Explain how colour blindness is inherited. *(5 marks)*\n\n(c) State why sex-linked disorders are more common in males. *(4 marks)*`,
      `**Q11.** (a) Define the term "variation". *(2 marks)*\n\n(b) Distinguish between continuous and discontinuous variation, giving an example of each. *(4 marks)*\n\n(c) Explain the role of variation in natural selection. *(5 marks)*`,
      `**Q12.** (a) What is natural selection? *(3 marks)*\n\n(b) Explain how antibiotic resistance in bacteria illustrates natural selection. *(5 marks)*\n\n(c) State the role of mutation in evolution. *(4 marks)*`,
      `**Q13.** (a) Define the term "ecosystem". *(2 marks)*\n\n(b) Name the components of an ecosystem. *(4 marks)*\n\n(c) Explain how energy flows through an ecosystem. *(5 marks)*`,
      `**Q14.** (a) What is a food chain? *(2 marks)*\n\n(b) Construct a food chain with four organisms found in a Cameroon ecosystem. *(3 marks)*\n\n(c) Explain why the number of organisms decreases along a food chain. *(5 marks)*`,
      `**Q15.** (a) Define the term "food web". *(2 marks)*\n\n(b) Explain why food webs are more stable than food chains. *(4 marks)*\n\n(c) Describe the effect of removing a top predator from a food web. *(4 marks)*`,
      `**Q16.** (a) Describe the carbon cycle. *(5 marks)*\n\n(b) Name the processes by which carbon is returned to the atmosphere. *(3 marks)*\n\n(c) Explain the effect of deforestation on the carbon cycle. *(4 marks)*`,
      `**Q17.** (a) Describe the nitrogen cycle. *(5 marks)*\n\n(b) Name the bacteria involved in the nitrogen cycle. *(3 marks)*\n\n(c) Explain why nitrogen is important to living organisms. *(3 marks)*`,
      `**Q18.** (a) What is a population? *(2 marks)*\n\n(b) State three factors that affect population size. *(3 marks)*\n\n(c) Explain how a predator-prey relationship affects population sizes. *(5 marks)*`,
      `**Q19.** (a) Define the term "conservation". *(2 marks)*\n\n(b) State three reasons why conservation is important. *(3 marks)*\n\n(c) Describe two methods of conserving wildlife in Cameroon. *(5 marks)*`,
      `**Q20.** (a) What is pollution? *(2 marks)*\n\n(b) Name three types of pollution and their causes. *(6 marks)*\n\n(c) Explain the effect of water pollution on aquatic life. *(4 marks)*`,
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// Biology — MCQ banks (20 per topic)
// ---------------------------------------------------------------------------

function mcqBiology(topicIndex) {
  const banks = [
    // Topic 0: Cells and transport
    [
      {
        stem: "The control centre of the cell is the:",
        options: ["nucleus", "cytoplasm", "cell wall", "vacuole"],
        answer: 0,
      },
      {
        stem: "The site of respiration in the cell is the:",
        options: ["mitochondrion", "ribosome", "nucleus", "chloroplast"],
        answer: 0,
      },
      {
        stem: "The site of protein synthesis is the:",
        options: ["ribosome", "mitochondrion", "nucleus", "cell wall"],
        answer: 0,
      },
      {
        stem: "Which structure is found in plant cells but not animal cells?",
        options: ["cell wall", "nucleus", "mitochondrion", "ribosome"],
        answer: 0,
      },
      {
        stem: "The movement of water molecules from a dilute to a concentrated solution through a partially permeable membrane is called:",
        options: ["osmosis", "diffusion", "active transport", "transpiration"],
        answer: 0,
      },
      {
        stem: "The movement of molecules from a region of high concentration to low concentration is called:",
        options: ["diffusion", "osmosis", "active transport", "translocation"],
        answer: 0,
      },
      {
        stem: "Active transport requires:",
        options: ["energy", "no energy", "light", "chlorophyll"],
        answer: 0,
      },
      {
        stem: "The cell wall of a plant is made of:",
        options: ["cellulose", "protein", "lipid", "starch"],
        answer: 0,
      },
      {
        stem: "The green pigment found in chloroplasts is:",
        options: ["chlorophyll", "haemoglobin", "carotene", "melanin"],
        answer: 0,
      },
      {
        stem: "A red blood cell placed in distilled water will:",
        options: ["burst", "shrink", "remain unchanged", "divide"],
        answer: 0,
      },
      {
        stem: "A plant cell placed in a concentrated salt solution will:",
        options: ["become plasmolysed", "burst", "swell", "remain unchanged"],
        answer: 0,
      },
      {
        stem: "Enzymes are made of:",
        options: ["protein", "carbohydrate", "lipid", "mineral salts"],
        answer: 0,
      },
      {
        stem: "Enzymes work best at an optimum temperature of about:",
        options: ["37°C", "100°C", "0°C", "60°C"],
        answer: 0,
      },
      {
        stem: "When an enzyme is boiled, it becomes:",
        options: ["denatured", "more active", "larger", "green"],
        answer: 0,
      },
      {
        stem: "The process by which a cell takes in large particles is called:",
        options: ["phagocytosis", "osmosis", "diffusion", "transpiration"],
        answer: 0,
      },
      {
        stem: "The jelly-like substance that fills the cell is the:",
        options: ["cytoplasm", "nucleus", "cell wall", "membrane"],
        answer: 0,
      },
      {
        stem: "The cell membrane is described as:",
        options: ["partially permeable", "fully permeable", "impermeable", "rigid"],
        answer: 0,
      },
      {
        stem: "The cell wall is described as:",
        options: ["fully permeable", "partially permeable", "impermeable", "selectively permeable"],
        answer: 0,
      },
      {
        stem: "The organelle that carries out photosynthesis is the:",
        options: ["chloroplast", "mitochondrion", "ribosome", "nucleus"],
        answer: 0,
      },
      {
        stem: "A group of similar cells working together forms a:",
        options: ["tissue", "organ", "system", "organism"],
        answer: 0,
      },
    ],
    // Topic 1: Nutrition, respiration, and excretion
    [
      {
        stem: "The process by which plants make food is called:",
        options: ["photosynthesis", "respiration", "digestion", "transpiration"],
        answer: 0,
      },
      {
        stem: "The gas used in photosynthesis is:",
        options: ["carbon dioxide", "oxygen", "nitrogen", "hydrogen"],
        answer: 0,
      },
      {
        stem: "The gas released during photosynthesis is:",
        options: ["oxygen", "carbon dioxide", "nitrogen", "ammonia"],
        answer: 0,
      },
      {
        stem: "The green pigment needed for photosynthesis is:",
        options: ["chlorophyll", "haemoglobin", "carotene", "melanin"],
        answer: 0,
      },
      {
        stem: "The enzyme that digests starch is:",
        options: ["amylase", "protease", "lipase", "maltase"],
        answer: 0,
      },
      {
        stem: "The enzyme that digests proteins is:",
        options: ["protease", "amylase", "lipase", "catalase"],
        answer: 0,
      },
      {
        stem: "The enzyme that digests fats is:",
        options: ["lipase", "amylase", "protease", "maltase"],
        answer: 0,
      },
      {
        stem: "Bile is produced by the:",
        options: ["liver", "pancreas", "stomach", "gall bladder"],
        answer: 0,
      },
      {
        stem: "Bile is stored in the:",
        options: ["gall bladder", "liver", "pancreas", "small intestine"],
        answer: 0,
      },
      {
        stem: "The part of the gut where most absorption occurs is the:",
        options: ["small intestine", "stomach", "large intestine", "mouth"],
        answer: 0,
      },
      {
        stem: "The finger-like projections in the small intestine are called:",
        options: ["villi", "alveoli", "nephrons", "bronchi"],
        answer: 0,
      },
      {
        stem: "The site of gaseous exchange in the lungs is the:",
        options: ["alveoli", "bronchi", "trachea", "diaphragm"],
        answer: 0,
      },
      {
        stem: "Aerobic respiration uses:",
        options: ["oxygen", "carbon dioxide", "nitrogen", "chlorophyll"],
        answer: 0,
      },
      {
        stem: "The product of anaerobic respiration in muscles is:",
        options: ["lactic acid", "ethanol", "carbon dioxide", "glucose"],
        answer: 0,
      },
      {
        stem: "The main excretory organ of the body is the:",
        options: ["kidney", "liver", "heart", "stomach"],
        answer: 0,
      },
      {
        stem: "The functional unit of the kidney is the:",
        options: ["nephron", "alveolus", "neuron", "villus"],
        answer: 0,
      },
      {
        stem: "The process of maintaining a constant internal environment is called:",
        options: ["homeostasis", "excretion", "respiration", "digestion"],
        answer: 0,
      },
      {
        stem: "The loss of water vapour from plant leaves is called:",
        options: ["transpiration", "translocation", "osmosis", "diffusion"],
        answer: 0,
      },
      {
        stem: "The tissue that transports water in plants is the:",
        options: ["xylem", "phloem", "epidermis", "cortex"],
        answer: 0,
      },
      {
        stem: "The tissue that transports food in plants is the:",
        options: ["phloem", "xylem", "epidermis", "cortex"],
        answer: 0,
      },
    ],
    // Topic 2: Reproduction, genetics, and ecology
    [
      {
        stem: "The male reproductive organ of a flower is the:",
        options: ["stamen", "carpel", "petal", "sepal"],
        answer: 0,
      },
      {
        stem: "The female reproductive organ of a flower is the:",
        options: ["carpel", "stamen", "petal", "sepal"],
        answer: 0,
      },
      {
        stem: "The transfer of pollen from anther to stigma is called:",
        options: ["pollination", "fertilisation", "germination", "transpiration"],
        answer: 0,
      },
      {
        stem: "The fusion of male and female gametes is called:",
        options: ["fertilisation", "pollination", "germination", "dispersal"],
        answer: 0,
      },
      {
        stem: "The male gamete in humans is the:",
        options: ["sperm", "egg", "ovum", "zygote"],
        answer: 0,
      },
      {
        stem: "The female gamete in humans is the:",
        options: ["ovum", "sperm", "zygote", "embryo"],
        answer: 0,
      },
      {
        stem: "The organ that connects the foetus to the mother is the:",
        options: ["placenta", "uterus", "ovary", "umbilical cord"],
        answer: 0,
      },
      {
        stem: "The process of cell division that produces gametes is called:",
        options: ["meiosis", "mitosis", "osmosis", "diffusion"],
        answer: 0,
      },
      {
        stem: "The process of cell division that produces body cells is called:",
        options: ["mitosis", "meiosis", "osmosis", "diffusion"],
        answer: 0,
      },
      {
        stem: "The basic unit of heredity is the:",
        options: ["gene", "chromosome", "cell", "tissue"],
        answer: 0,
      },
      {
        stem: "The genetic make-up of an organism is its:",
        options: ["genotype", "phenotype", "chromosome", "gene"],
        answer: 0,
      },
      {
        stem: "The physical appearance of an organism is its:",
        options: ["phenotype", "genotype", "gene", "allele"],
        answer: 0,
      },
      {
        stem: "In a monohybrid cross TT × tt, the F1 generation is:",
        options: ["all Tt", "all TT", "all tt", "half TT, half tt"],
        answer: 0,
      },
      {
        stem: "The phenotypic ratio of the F2 generation in a monohybrid cross is:",
        options: ["3:1", "1:1", "1:2:1", "9:3:3:1"],
        answer: 0,
      },
      {
        stem: "A community of organisms and their environment forms an:",
        options: ["ecosystem", "population", "organism", "tissue"],
        answer: 0,
      },
      {
        stem: "A group of organisms of the same species in an area is a:",
        options: ["population", "community", "ecosystem", "habitat"],
        answer: 0,
      },
      {
        stem: "The sequence of organisms through which energy flows is a:",
        options: ["food chain", "food web", "ecosystem", "population"],
        answer: 0,
      },
      {
        stem: "Organisms that make their own food are called:",
        options: ["producers", "consumers", "decomposers", "predators"],
        answer: 0,
      },
      {
        stem: "Organisms that break down dead matter are called:",
        options: ["decomposers", "producers", "consumers", "predators"],
        answer: 0,
      },
      {
        stem: "The process by which organisms best adapted to their environment survive is called:",
        options: ["natural selection", "artificial selection", "pollination", "germination"],
        answer: 0,
      },
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// Chemistry — hard topic-wise structural questions
// ---------------------------------------------------------------------------

function structuralChemistry(topicIndex, paperSeed) {
  const s = paperSeed;
  const banks = [
    // ---- Topic 0: Atomic structure and bonding ----
    [
      `**Q1.** (a) Define the terms atomic number and mass number. *(4 marks)*\n\n(b) An atom of chlorine has atomic number 17 and mass number 35. State the number of protons, neutrons, and electrons. *(3 marks)*\n\n(c) Write the electronic configuration of chlorine and state its group and period. *(4 marks)*`,
      `**Q2.** (a) What is an isotope? *(2 marks)*\n\n(b) Chlorine has two isotopes, $^{35}Cl$ and $^{37}Cl$. Explain why they have the same chemical properties. *(4 marks)*\n\n(c) Calculate the relative atomic mass of chlorine given that it is 75% $^{35}Cl$ and 25% $^{37}Cl$. *(4 marks)*`,
      `**Q3.** (a) Define the term "ionic bond". *(2 marks)*\n\n(b) Describe, with the aid of a diagram, how sodium and chlorine form an ionic bond. *(6 marks)*\n\n(c) State two properties of ionic compounds. *(2 marks)*`,
      `**Q4.** (a) Define the term "covalent bond". *(2 marks)*\n\n(b) Draw a dot-and-cross diagram to show the bonding in a water molecule. *(4 marks)*\n\n(c) State two properties of covalent compounds. *(2 marks)*`,
      `**Q5.** (a) What is a metallic bond? *(3 marks)*\n\n(b) Explain why metals are good conductors of electricity. *(4 marks)*\n\n(c) Explain why metals are malleable and ductile. *(4 marks)*`,
      `**Q6.** (a) Describe the structure of graphite. *(4 marks)*\n\n(b) Explain why graphite conducts electricity. *(3 marks)*\n\n(c) Explain why graphite is used as a lubricant. *(3 marks)*`,
      `**Q7.** (a) Describe the structure of diamond. *(4 marks)*\n\n(b) Explain why diamond is very hard. *(3 marks)*\n\n(c) Explain why diamond does not conduct electricity. *(3 marks)*`,
      `**Q8.** (a) What is the periodic table? *(2 marks)*\n\n(b) State the trend in metallic character across a period. *(3 marks)*\n\n(c) Explain why elements in the same group have similar chemical properties. *(4 marks)*`,
      `**Q9.** (a) Describe the trend in atomic radius down a group. *(3 marks)*\n\n(b) Explain this trend. *(4 marks)*\n\n(c) State how the reactivity of alkali metals changes down Group I. *(3 marks)*`,
      `**Q10.** (a) What is an ion? *(2 marks)*\n\n(b) Write the formula of the ions formed by sodium, magnesium, chlorine, and oxygen. *(4 marks)*\n\n(c) Explain why sodium forms a positive ion. *(3 marks)*`,
      `**Q11.** (a) Define the term "electronegativity". *(3 marks)*\n\n(b) Explain how electronegativity affects the type of bond formed between two atoms. *(4 marks)*\n\n(c) State the trend in electronegativity across a period. *(3 marks)*`,
      `**Q12.** (a) What is a molecule? *(2 marks)*\n\n(b) Draw the structure of a carbon dioxide molecule. *(3 marks)*\n\n(c) Explain why carbon dioxide is a gas at room temperature. *(4 marks)*`,
      `**Q13.** (a) State the three states of matter. *(2 marks)*\n\n(b) Describe the arrangement of particles in each state. *(6 marks)*\n\n(c) Explain what happens to the particles when a solid melts. *(4 marks)*`,
      `**Q14.** (a) What is meant by the term "giant structure"? *(3 marks)*\n\n(b) Give two examples of substances with giant structures. *(2 marks)*\n\n(c) Explain why giant structures have high melting points. *(4 marks)*`,
      `**Q15.** (a) Define the term "valency". *(2 marks)*\n\n(b) State the valency of hydrogen, oxygen, nitrogen, and carbon. *(4 marks)*\n\n(c) Use valency to write the formula of water, carbon dioxide, and ammonia. *(4 marks)*`,
      `**Q16.** (a) What is the difference between an atom and an ion? *(3 marks)*\n\n(b) Explain how a cation and an anion are formed. *(4 marks)*\n\n(c) Give the symbol and charge of a calcium ion and a fluoride ion. *(3 marks)*`,
      `**Q17.** (a) Describe the structure of a simple covalent molecule. *(3 marks)*\n\n(b) Explain why simple covalent molecules have low melting points. *(4 marks)*\n\n(c) Give two examples of simple covalent molecules. *(2 marks)*`,
      `**Q18.** (a) What is the difference between a physical change and a chemical change? *(4 marks)*\n\n(b) Give one example of each. *(2 marks)*\n\n(c) State two observations that indicate a chemical change has occurred. *(4 marks)*`,
      `**Q19.** (a) Define the term "relative atomic mass". *(3 marks)*\n\n(b) Explain why the relative atomic mass of an element may not be a whole number. *(4 marks)*\n\n(c) State the relative atomic mass of carbon, oxygen, and hydrogen. *(3 marks)*`,
      `**Q20.** (a) What is the difference between an element, a compound, and a mixture? *(4 marks)*\n\n(b) Give one example of each. *(3 marks)*\n\n(c) Describe how you would separate a mixture of sand and salt. *(4 marks)*`,
    ],
    // ---- Topic 1: Stoichiometry and reactions ----
    [
      `**Q1.** (a) Define the term "mole". *(2 marks)*\n\n(b) Calculate the number of moles in 8 g of oxygen gas ($O_2$). (Relative atomic mass: O = 16) *(4 marks)*\n\n(c) Calculate the mass of 0.5 moles of carbon dioxide ($CO_2$). (Relative atomic masses: C = 12, O = 16) *(4 marks)*`,
      `**Q2.** (a) State Avogadro's constant. *(2 marks)*\n\n(b) Calculate the number of molecules in 0.25 moles of water. *(3 marks)*\n\n(c) Calculate the number of atoms in 0.5 moles of oxygen gas ($O_2$). *(4 marks)*`,
      `**Q3.** (a) Balance the following equation:\n\n$Mg + O_2 \\rightarrow MgO$ *(3 marks)*\n\n(b) Calculate the mass of magnesium oxide formed when 4.8 g of magnesium burns completely in oxygen. (Relative atomic masses: Mg = 24, O = 16) *(6 marks)*`,
      `**Q4.** (a) What is a limiting reactant? *(3 marks)*\n\n(b) 2 g of hydrogen reacts with 16 g of oxygen to form water. Determine the limiting reactant and the mass of water formed. (Relative atomic masses: H = 1, O = 16) *(6 marks)*`,
      `**Q5.** (a) Define the term "acid". *(2 marks)*\n\n(b) State three properties of acids. *(3 marks)*\n\n(c) Write the word equation for the reaction between hydrochloric acid and sodium hydroxide. *(3 marks)*`,
      `**Q6.** (a) Define the term "base". *(2 marks)*\n\n(b) Distinguish between a base and an alkali. *(3 marks)*\n\n(c) Describe the reaction between an acid and a metal carbonate, naming the products. *(4 marks)*`,
      `**Q7.** (a) What is a salt? *(2 marks)*\n\n(b) Describe how you would prepare a sample of copper(II) sulfate from copper(II) oxide and sulfuric acid. *(6 marks)*\n\n(c) Name the method used to obtain the salt crystals from the solution. *(2 marks)*`,
      `**Q8.** (a) Define the term "pH". *(2 marks)*\n\n(b) State the pH range of acids, bases, and neutral solutions. *(3 marks)*\n\n(c) Describe how you would use universal indicator to determine the pH of a solution. *(4 marks)*`,
      `**Q9.** (a) What is a redox reaction? *(3 marks)*\n\n(b) In the reaction $Zn + CuSO_4 \\rightarrow ZnSO_4 + Cu$, identify the substance oxidised and the substance reduced. *(4 marks)*\n\n(c) Explain your answer using the gain or loss of electrons. *(4 marks)*`,
      `**Q10.** (a) Define the term "oxidation" in terms of electrons. *(2 marks)*\n\n(b) Define the term "reduction" in terms of electrons. *(2 marks)*\n\n(c) In the reaction $2Mg + O_2 \\rightarrow 2MgO$, state which substance is oxidised and which is reduced. *(4 marks)*`,
      `**Q11.** (a) What is the rate of a chemical reaction? *(2 marks)*\n\n(b) State three factors that affect the rate of a chemical reaction. *(3 marks)*\n\n(c) Explain how increasing temperature increases the rate of reaction. *(4 marks)*`,
      `**Q12.** (a) Describe an experiment to investigate the effect of concentration on the rate of reaction between hydrochloric acid and sodium thiosulfate. *(6 marks)*\n\n(b) State the results you would expect. *(3 marks)*\n\n(c) Explain the results in terms of collision theory. *(4 marks)*`,
      `**Q13.** (a) What is a catalyst? *(2 marks)*\n\n(b) State two uses of catalysts in industry. *(2 marks)*\n\n(c) Explain how a catalyst increases the rate of a reaction. *(4 marks)*`,
      `**Q14.** (a) Define the term "equilibrium". *(3 marks)*\n\n(b) State Le Chatelier's principle. *(3 marks)*\n\n(c) Explain the effect of increasing pressure on the equilibrium $N_2 + 3H_2 \\rightleftharpoons 2NH_3$. *(4 marks)*`,
      `**Q15.** (a) What is a reversible reaction? *(2 marks)*\n\n(b) Give one example of a reversible reaction. *(2 marks)*\n\n(c) Explain what is meant by a "closed system" in equilibrium. *(4 marks)*`,
      `**Q16.** (a) Define the term "concentration". *(2 marks)*\n\n(b) Calculate the concentration in mol/dm³ of a solution containing 0.5 moles of sodium chloride in 250 cm³ of solution. *(4 marks)*\n\n(c) Calculate the number of moles in 100 cm³ of a 0.2 mol/dm³ solution. *(4 marks)*`,
      `**Q17.** (a) What is a titration? *(2 marks)*\n\n(b) Describe how you would carry out a titration to find the concentration of a hydrochloric acid solution. *(6 marks)*\n\n(c) State the indicator used and the colour change at the end point. *(3 marks)*`,
      `**Q18.** (a) Define the term "empirical formula". *(2 marks)*\n\n(b) A compound contains 40% carbon, 6.7% hydrogen, and 53.3% oxygen. Find its empirical formula. (Relative atomic masses: C = 12, H = 1, O = 16) *(6 marks)*\n\n(c) If the relative molecular mass of the compound is 60, find its molecular formula. *(4 marks)*`,
      `**Q19.** (a) Define the term "molar volume". *(2 marks)*\n\n(b) Calculate the volume occupied by 0.5 moles of carbon dioxide at room temperature and pressure. (Molar volume = 24 dm³/mol) *(4 marks)*\n\n(c) Calculate the number of moles in 48 dm³ of oxygen gas at room temperature and pressure. *(4 marks)*`,
      `**Q20.** (a) What is the difference between an exothermic and an endothermic reaction? *(4 marks)*\n\n(b) Give one example of each. *(2 marks)*\n\n(c) Describe an experiment to show that the reaction between hydrochloric acid and sodium hydroxide is exothermic. *(5 marks)*`,
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// Chemistry — MCQ banks (30 per topic)
// ---------------------------------------------------------------------------

function mcqChemistry(topicIndex) {
  const banks = [
    // Topic 0: Atomic structure and bonding
    [
      {
        stem: "The number of protons in an atom is called the:",
        options: ["atomic number", "mass number", "valency", "isotope number"],
        answer: 0,
      },
      {
        stem: "The total number of protons and neutrons is the:",
        options: ["mass number", "atomic number", "valency", "atomic mass"],
        answer: 0,
      },
      {
        stem: "An atom of carbon has 6 protons and 6 neutrons. Its mass number is:",
        options: ["12", "6", "18", "24"],
        answer: 0,
      },
      {
        stem: "The electronic configuration of sodium (atomic number 11) is:",
        options: ["2, 8, 1", "2, 8, 2", "2, 8, 3", "2, 9"],
        answer: 0,
      },
      {
        stem: "Atoms of the same element with different numbers of neutrons are called:",
        options: ["isotopes", "ions", "molecules", "compounds"],
        answer: 0,
      },
      {
        stem: "An ionic bond is formed by:",
        options: [
          "transfer of electrons",
          "sharing of electrons",
          "sharing of protons",
          "transfer of neutrons",
        ],
        answer: 0,
      },
      {
        stem: "A covalent bond is formed by:",
        options: [
          "sharing of electrons",
          "transfer of electrons",
          "transfer of protons",
          "sharing of neutrons",
        ],
        answer: 0,
      },
      {
        stem: "The bond in sodium chloride is:",
        options: ["ionic", "covalent", "metallic", "hydrogen"],
        answer: 0,
      },
      {
        stem: "The bond in water is:",
        options: ["covalent", "ionic", "metallic", "hydrogen"],
        answer: 0,
      },
      {
        stem: "The bond in iron is:",
        options: ["metallic", "ionic", "covalent", "hydrogen"],
        answer: 0,
      },
      {
        stem: "Ionic compounds conduct electricity when:",
        options: ["molten or dissolved", "solid", "gaseous", "frozen"],
        answer: 0,
      },
      { stem: "The formula of a sodium ion is:", options: ["Na⁺", "Na⁻", "Na²⁺", "Na"], answer: 0 },
      {
        stem: "The formula of a chloride ion is:",
        options: ["Cl⁻", "Cl⁺", "Cl²⁻", "Cl"],
        answer: 0,
      },
      { stem: "The valency of oxygen is:", options: ["2", "1", "3", "4"], answer: 0 },
      { stem: "The valency of nitrogen is:", options: ["3", "1", "2", "4"], answer: 0 },
      { stem: "The formula of water is:", options: ["H₂O", "HO₂", "H₂O₂", "HO"], answer: 0 },
      {
        stem: "The formula of carbon dioxide is:",
        options: ["CO₂", "CO", "C₂O", "CO₃"],
        answer: 0,
      },
      { stem: "The formula of ammonia is:", options: ["NH₃", "NH₄", "N₂H", "NH₂"], answer: 0 },
      {
        stem: "Graphite conducts electricity because it has:",
        options: ["free electrons", "ions", "protons", "neutrons"],
        answer: 0,
      },
      {
        stem: "Diamond is very hard because:",
        options: [
          "each carbon atom is bonded to four others",
          "it has free electrons",
          "it is a metal",
          "it contains water",
        ],
        answer: 0,
      },
      {
        stem: "The particles in a solid are:",
        options: [
          "closely packed and vibrating",
          "far apart and moving freely",
          "far apart and stationary",
          "closely packed and moving freely",
        ],
        answer: 0,
      },
      {
        stem: "The particles in a gas are:",
        options: [
          "far apart and moving freely",
          "closely packed and vibrating",
          "closely packed and moving freely",
          "far apart and stationary",
        ],
        answer: 0,
      },
      {
        stem: "Elements in the same group have the same number of:",
        options: ["outer electrons", "protons", "neutrons", "shells"],
        answer: 0,
      },
      {
        stem: "The most reactive metal in Group I is:",
        options: ["caesium", "lithium", "sodium", "potassium"],
        answer: 0,
      },
      {
        stem: "The most reactive halogen is:",
        options: ["fluorine", "chlorine", "bromine", "iodine"],
        answer: 0,
      },
      {
        stem: "A mixture of sand and salt can be separated by:",
        options: [
          "dissolving in water and filtering",
          "distillation only",
          "chromatography only",
          "evaporation only",
        ],
        answer: 0,
      },
      {
        stem: "The relative atomic mass of carbon is:",
        options: ["12", "6", "24", "1"],
        answer: 0,
      },
      {
        stem: "The relative atomic mass of oxygen is:",
        options: ["16", "8", "32", "1"],
        answer: 0,
      },
      {
        stem: "A substance made of two or more elements chemically combined is a:",
        options: ["compound", "mixture", "element", "solution"],
        answer: 0,
      },
      {
        stem: "The number of electrons in a neutral atom equals the number of:",
        options: ["protons", "neutrons", "protons plus neutrons", "shells"],
        answer: 0,
      },
    ],
    // Topic 1: Stoichiometry and reactions
    [
      {
        stem: "One mole of a substance contains:",
        options: [
          "6.02 × 10²³ particles",
          "6.02 × 10²² particles",
          "1.0 × 10²³ particles",
          "6.02 × 10²⁴ particles",
        ],
        answer: 0,
      },
      {
        stem: "The number of moles in 8 g of oxygen gas (O₂, Ar = 16) is:",
        options: ["0.25", "0.5", "1", "2"],
        answer: 0,
      },
      {
        stem: "The mass of 0.5 moles of CO₂ (Mr = 44) is:",
        options: ["22 g", "44 g", "11 g", "88 g"],
        answer: 0,
      },
      {
        stem: "The molar volume of a gas at room temperature and pressure is:",
        options: ["24 dm³", "22.4 dm³", "6.02 dm³", "100 dm³"],
        answer: 0,
      },
      {
        stem: "The volume of 0.5 moles of CO₂ at r.t.p. is:",
        options: ["12 dm³", "24 dm³", "6 dm³", "48 dm³"],
        answer: 0,
      },
      {
        stem: "An acid turns blue litmus:",
        options: ["red", "blue", "green", "colourless"],
        answer: 0,
      },
      {
        stem: "A base turns red litmus:",
        options: ["blue", "red", "green", "colourless"],
        answer: 0,
      },
      { stem: "The pH of a neutral solution is:", options: ["7", "0", "14", "1"], answer: 0 },
      { stem: "The pH of a strong acid is:", options: ["1", "7", "14", "10"], answer: 0 },
      { stem: "The pH of a strong alkali is:", options: ["14", "1", "7", "5"], answer: 0 },
      {
        stem: "The reaction between an acid and a base is called:",
        options: ["neutralisation", "oxidation", "reduction", "combustion"],
        answer: 0,
      },
      {
        stem: "The products of the reaction between an acid and an alkali are:",
        options: [
          "salt and water",
          "salt and hydrogen",
          "salt and carbon dioxide",
          "water and oxygen",
        ],
        answer: 0,
      },
      {
        stem: "The products of the reaction between an acid and a metal are:",
        options: [
          "salt and hydrogen",
          "salt and water",
          "salt and carbon dioxide",
          "water and hydrogen",
        ],
        answer: 0,
      },
      {
        stem: "The products of the reaction between an acid and a carbonate are:",
        options: [
          "salt, water, and carbon dioxide",
          "salt and hydrogen",
          "salt and water",
          "water and oxygen",
        ],
        answer: 0,
      },
      {
        stem: "In the reaction Zn + CuSO₄ → ZnSO₄ + Cu, the substance oxidised is:",
        options: ["zinc", "copper", "sulfate", "oxygen"],
        answer: 0,
      },
      {
        stem: "Oxidation is the:",
        options: ["loss of electrons", "gain of electrons", "gain of protons", "loss of neutrons"],
        answer: 0,
      },
      {
        stem: "Reduction is the:",
        options: ["gain of electrons", "loss of electrons", "gain of protons", "loss of neutrons"],
        answer: 0,
      },
      {
        stem: "A substance that speeds up a reaction without being used up is a:",
        options: ["catalyst", "reactant", "product", "indicator"],
        answer: 0,
      },
      {
        stem: "Increasing the temperature of a reaction:",
        options: [
          "increases the rate",
          "decreases the rate",
          "has no effect",
          "stops the reaction",
        ],
        answer: 0,
      },
      {
        stem: "Increasing the surface area of a solid reactant:",
        options: [
          "increases the rate",
          "decreases the rate",
          "has no effect",
          "stops the reaction",
        ],
        answer: 0,
      },
      {
        stem: "The concentration of a solution containing 0.5 moles in 250 cm³ is:",
        options: ["2 mol/dm³", "0.5 mol/dm³", "1 mol/dm³", "0.25 mol/dm³"],
        answer: 0,
      },
      {
        stem: "The number of moles in 100 cm³ of a 0.2 mol/dm³ solution is:",
        options: ["0.02", "0.2", "2", "20"],
        answer: 0,
      },
      {
        stem: "A reaction that releases heat energy is:",
        options: ["exothermic", "endothermic", "reversible", "neutral"],
        answer: 0,
      },
      {
        stem: "A reaction that absorbs heat energy is:",
        options: ["endothermic", "exothermic", "reversible", "neutral"],
        answer: 0,
      },
      {
        stem: "The indicator used in a titration between a strong acid and a strong alkali is:",
        options: [
          "methyl orange or phenolphthalein",
          "universal indicator only",
          "litmus only",
          "starch",
        ],
        answer: 0,
      },
      {
        stem: "The empirical formula of a compound with 40% C, 6.7% H, and 53.3% O is:",
        options: ["CH₂O", "CHO", "C₂H₄O₂", "CH₄O"],
        answer: 0,
      },
      {
        stem: "In the reaction 2Mg + O₂ → 2MgO, the substance reduced is:",
        options: ["oxygen", "magnesium", "magnesium oxide", "none"],
        answer: 0,
      },
      {
        stem: "Le Chatelier's principle states that a system at equilibrium responds to a change by:",
        options: [
          "counteracting the change",
          "increasing the change",
          "ignoring the change",
          "stopping the reaction",
        ],
        answer: 0,
      },
      {
        stem: "Increasing the pressure on N₂ + 3H₂ ⇌ 2NH₃ favours:",
        options: [
          "the forward reaction",
          "the backward reaction",
          "neither direction",
          "no change",
        ],
        answer: 0,
      },
      {
        stem: "The number of moles in 48 dm³ of oxygen gas at r.t.p. is:",
        options: ["2", "1", "0.5", "4"],
        answer: 0,
      },
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// Physics — hard topic-wise structural questions
// ---------------------------------------------------------------------------

function structuralPhysics(topicIndex, paperSeed) {
  const s = paperSeed;
  const banks = [
    // ---- Topic 0: Mechanics ----
    [
      `**Q1.** (a) Define the terms distance and displacement. *(3 marks)*\n\n(b) A car travels 60 km north then 80 km east. Calculate the total distance travelled and the magnitude of the displacement. *(5 marks)*\n\n(c) State the difference between speed and velocity. *(3 marks)*`,
      `**Q2.** (a) Define acceleration. *(2 marks)*\n\n(b) A car accelerates uniformly from rest to 20 m/s in 8 s. Calculate its acceleration. *(3 marks)*\n\n(c) Using the equations of motion, calculate the distance travelled by the car in part (b). *(4 marks)*`,
      `**Q3.** (a) State Newton's three laws of motion. *(6 marks)*\n\n(b) A force of 12 N acts on a mass of 3 kg. Calculate the acceleration produced. *(3 marks)*\n\n(c) Explain why a passenger lurches forward when a bus stops suddenly. *(3 marks)*`,
      `**Q4.** (a) Define the term "momentum". *(2 marks)*\n\n(b) A ball of mass 0.5 kg moving at 4 m/s hits a wall and rebounds at 3 m/s. Calculate the change in momentum. *(4 marks)*\n\n(c) State the principle of conservation of momentum. *(3 marks)*`,
      `**Q5.** (a) Define the term "work". *(2 marks)*\n\n(b) A force of 50 N moves an object 4 m in the direction of the force. Calculate the work done. *(3 marks)*\n\n(c) A crane lifts a 200 kg load through 10 m. Calculate the work done. (Take g = 10 m/s²) *(4 marks)*`,
      `**Q6.** (a) Define the term "power". *(2 marks)*\n\n(b) A machine does 600 J of work in 20 s. Calculate its power. *(3 marks)*\n\n(c) A motor lifts a 500 kg load through 12 m in 30 s. Calculate the power output. (Take g = 10 m/s²) *(5 marks)*`,
      `**Q7.** (a) Define the terms kinetic energy and potential energy. *(4 marks)*\n\n(b) A car of mass 1000 kg moves at 20 m/s. Calculate its kinetic energy. *(3 marks)*\n\n(c) A ball of mass 2 kg is raised 5 m. Calculate its gravitational potential energy. (Take g = 10 m/s²) *(3 marks)*`,
      `**Q8.** (a) State the principle of conservation of energy. *(3 marks)*\n\n(b) A ball of mass 0.2 kg is dropped from a height of 20 m. Calculate its speed just before hitting the ground. (Take g = 10 m/s²) *(5 marks)*\n\n(c) Explain what happens to the energy when the ball hits the ground and bounces. *(4 marks)*`,
      `**Q9.** (a) Define the term "pressure". *(2 marks)*\n\n(b) A force of 100 N acts on an area of 0.5 m². Calculate the pressure. *(3 marks)*\n\n(c) Explain why a sharp knife cuts better than a blunt knife. *(3 marks)*`,
      `**Q10.** (a) State the principle of moments. *(3 marks)*\n\n(b) A uniform metre rule is balanced at its centre. A 2 N weight is placed at the 20 cm mark. Calculate the force needed at the 80 cm mark to balance it. *(5 marks)*\n\n(c) State two conditions for a body to be in equilibrium. *(3 marks)*`,
      `**Q11.** (a) Define the term "centre of gravity". *(2 marks)*\n\n(b) Explain why a tall narrow object is more likely to topple than a short wide one. *(4 marks)*\n\n(c) Describe how you would find the centre of gravity of an irregular lamina. *(4 marks)*`,
      `**Q12.** (a) What is a simple machine? *(2 marks)*\n\n(b) Define the terms mechanical advantage, velocity ratio, and efficiency. *(6 marks)*\n\n(c) A machine has a mechanical advantage of 4 and an efficiency of 80%. Calculate its velocity ratio. *(4 marks)*`,
      `**Q13.** (a) A lever has a load arm of 0.5 m and an effort arm of 2 m. Calculate the velocity ratio. *(3 marks)*\n\n(b) If the load is 200 N and the effort is 60 N, calculate the mechanical advantage. *(3 marks)*\n\n(c) Calculate the efficiency of the lever. *(4 marks)*`,
      `**Q14.** (a) Define the term "friction". *(2 marks)*\n\n(b) State two advantages and two disadvantages of friction. *(4 marks)*\n\n(c) Describe two ways of reducing friction. *(4 marks)*`,
      `**Q15.** (a) Define the term "density". *(2 marks)*\n\n(b) A block of metal has a mass of 270 g and a volume of 100 cm³. Calculate its density in g/cm³ and in kg/m³. *(5 marks)*\n\n(c) Explain why ice floats on water. *(3 marks)*`,
      `**Q16.** (a) State Archimedes' principle. *(3 marks)*\n\n(b) A stone weighs 5 N in air and 3 N in water. Calculate the upthrust. *(3 marks)*\n\n(c) Calculate the volume of the stone. (Density of water = 1000 kg/m³, g = 10 m/s²) *(4 marks)*`,
      `**Q17.** (a) Define the term "relative density". *(2 marks)*\n\n(b) A body has a density of 800 kg/m³. Calculate its relative density. *(3 marks)*\n\n(c) Explain why a ship made of steel floats on water. *(4 marks)*`,
      `**Q18.** (a) State the law of floatation. *(3 marks)*\n\n(b) A floating object displaces 0.5 m³ of water. Calculate the upthrust on it. (Density of water = 1000 kg/m³, g = 10 m/s²) *(4 marks)*\n\n(c) Explain how a submarine controls its depth. *(4 marks)*`,
      `**Q19.** (a) Define the term "velocity ratio" of a pulley system. *(2 marks)*\n\n(b) A pulley system with 4 ropes supports a load of 400 N with an effort of 120 N. Calculate the mechanical advantage and velocity ratio. *(5 marks)*\n\n(c) Calculate the efficiency of the pulley system. *(3 marks)*`,
      `**Q20.** (a) A car accelerates from 10 m/s to 30 m/s in 5 s. Calculate its acceleration. *(3 marks)*\n\n(b) Calculate the distance travelled during this time. *(3 marks)*\n\n(c) Sketch a velocity-time graph for this motion and state what the gradient represents. *(5 marks)*`,
    ],
    // ---- Topic 1: Waves, electricity, and magnetism ----
    [
      `**Q1.** (a) Define the term "wave". *(2 marks)*\n\n(b) Distinguish between transverse and longitudinal waves, giving one example of each. *(4 marks)*\n\n(c) A wave has a frequency of 50 Hz and a wavelength of 4 m. Calculate its speed. *(4 marks)*`,
      `**Q2.** (a) Define the terms frequency, wavelength, and amplitude. *(3 marks)*\n\n(b) A wave travels at 340 m/s with a frequency of 170 Hz. Calculate its wavelength. *(3 marks)*\n\n(c) State the relationship between frequency, wavelength, and wave speed. *(2 marks)*`,
      `**Q3.** (a) State the laws of reflection. *(4 marks)*\n\n(b) Describe an experiment to verify the laws of reflection. *(5 marks)*\n\n(c) A ray of light strikes a plane mirror at an angle of 30° to the normal. Calculate the angle of reflection. *(3 marks)*`,
      `**Q4.** (a) Define the terms real image and virtual image. *(4 marks)*\n\n(b) Describe the image formed by a plane mirror. *(4 marks)*\n\n(c) Explain why the image in a plane mirror is laterally inverted. *(3 marks)*`,
      `**Q5.** (a) State the laws of refraction. *(4 marks)*\n\n(b) Define the term "refractive index". *(2 marks)*\n\n(c) Light travels from air into glass with a refractive index of 1.5. If the angle of incidence is 45°, calculate the angle of refraction. *(5 marks)*`,
      `**Q6.** (a) Define the term "critical angle". *(3 marks)*\n\n(b) The critical angle for glass is 42°. Calculate the refractive index of the glass. *(4 marks)*\n\n(c) Explain what happens when light strikes the glass-air boundary at an angle greater than the critical angle. *(4 marks)*`,
      `**Q7.** (a) What is total internal reflection? *(3 marks)*\n\n(b) State two applications of total internal reflection. *(2 marks)*\n\n(c) Explain how an optical fibre transmits light. *(4 marks)*`,
      `**Q8.** (a) Define the terms focal length and principal focus of a converging lens. *(4 marks)*\n\n(b) A converging lens has a focal length of 10 cm. An object is placed 30 cm from the lens. Using the lens formula, calculate the image distance. *(5 marks)*\n\n(c) State the nature of the image formed. *(3 marks)*`,
      `**Q9.** (a) Define the term "magnification". *(2 marks)*\n\n(b) An object 2 cm tall is placed 20 cm from a converging lens of focal length 10 cm. Calculate the image distance and the height of the image. *(6 marks)*\n\n(c) State whether the image is real or virtual. *(2 marks)*`,
      `**Q10.** (a) What is sound? *(2 marks)*\n\n(b) State three properties of sound waves. *(3 marks)*\n\n(c) Explain why sound cannot travel through a vacuum. *(3 marks)*`,
      `**Q11.** (a) Define the term "echo". *(2 marks)*\n\n(b) A boy shouts near a cliff and hears the echo after 2 s. If the speed of sound is 340 m/s, calculate the distance of the cliff. *(4 marks)*\n\n(c) State two uses of echoes. *(2 marks)*`,
      `**Q12.** (a) Define the terms pitch and loudness. *(4 marks)*\n\n(b) State the factors that determine the pitch and loudness of a sound. *(4 marks)*\n\n(c) Explain how the human ear detects sound. *(4 marks)*`,
      `**Q13.** (a) Define the terms heat, temperature, and specific heat capacity. *(4 marks)*\n\n(b) Calculate the heat needed to raise the temperature of 2 kg of water from 20°C to 80°C. (Specific heat capacity of water = 4200 J/kg°C) *(4 marks)*\n\n(c) State the principle of conservation of energy as applied to heat. *(3 marks)*`,
      `**Q14.** (a) Define the term "latent heat". *(2 marks)*\n\n(b) Calculate the heat needed to melt 0.5 kg of ice at 0°C. (Specific latent heat of fusion of ice = 3.34 × 10⁵ J/kg) *(4 marks)*\n\n(c) Explain why ice at 0°C is more effective at cooling than water at 0°C. *(4 marks)*`,
      `**Q15.** (a) Define the term "electric current". *(2 marks)*\n\n(b) A current of 2 A flows through a wire for 5 minutes. Calculate the charge that passes. *(4 marks)*\n\n(c) State the unit of charge. *(2 marks)*`,
      `**Q16.** (a) State Ohm's law. *(3 marks)*\n\n(b) A resistor of 12 Ω has a current of 0.5 A flowing through it. Calculate the potential difference across it. *(3 marks)*\n\n(c) Calculate the resistance of a wire that carries 2 A when 24 V is applied. *(3 marks)*`,
      `**Q17.** (a) Define the terms resistance and resistivity. *(4 marks)*\n\n(b) Two resistors of 6 Ω and 3 Ω are connected in series. Calculate the total resistance. *(3 marks)*\n\n(c) The same resistors are now connected in parallel. Calculate the total resistance. *(4 marks)*`,
      `**Q18.** (a) State the formula for electrical power. *(2 marks)*\n\n(b) An electric heater operates at 240 V and draws a current of 5 A. Calculate its power. *(3 marks)*\n\n(c) Calculate the energy used by the heater in 2 hours, in joules and in kWh. *(5 marks)*`,
      `**Q19.** (a) State the properties of a magnet. *(3 marks)*\n\n(b) Describe how you would magnetise a steel bar using the stroking method. *(4 marks)*\n\n(c) Explain the difference between a magnet and a magnetic material. *(3 marks)*`,
      `**Q20.** (a) State the factors that affect the strength of an electromagnet. *(3 marks)*\n\n(b) Describe how an electric bell works. *(5 marks)*\n\n(c) State two uses of electromagnets. *(2 marks)*`,
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// Physics — MCQ banks (30 per topic)
// ---------------------------------------------------------------------------

function mcqPhysics(topicIndex) {
  const banks = [
    // Topic 0: Mechanics
    [
      {
        stem: "The SI unit of force is the:",
        options: ["newton", "joule", "watt", "pascal"],
        answer: 0,
      },
      {
        stem: "The SI unit of work is the:",
        options: ["joule", "newton", "watt", "pascal"],
        answer: 0,
      },
      {
        stem: "The SI unit of power is the:",
        options: ["watt", "joule", "newton", "pascal"],
        answer: 0,
      },
      {
        stem: "The SI unit of pressure is the:",
        options: ["pascal", "newton", "joule", "watt"],
        answer: 0,
      },
      {
        stem: "The rate of change of velocity is called:",
        options: ["acceleration", "speed", "displacement", "momentum"],
        answer: 0,
      },
      {
        stem: "The distance travelled per unit time is called:",
        options: ["speed", "velocity", "acceleration", "displacement"],
        answer: 0,
      },
      {
        stem: "A car accelerates uniformly from rest to 20 m/s in 5 s. Its acceleration is:",
        options: ["4 m/s²", "5 m/s²", "100 m/s²", "0.25 m/s²"],
        answer: 0,
      },
      {
        stem: "The product of mass and velocity is called:",
        options: ["momentum", "force", "work", "power"],
        answer: 0,
      },
      {
        stem: "The force that opposes motion is called:",
        options: ["friction", "gravity", "tension", "upthrust"],
        answer: 0,
      },
      {
        stem: "The energy of a moving object is called:",
        options: ["kinetic energy", "potential energy", "heat energy", "sound energy"],
        answer: 0,
      },
      {
        stem: "The energy stored in a raised object is called:",
        options: ["potential energy", "kinetic energy", "heat energy", "light energy"],
        answer: 0,
      },
      {
        stem: "The kinetic energy of a 2 kg object moving at 3 m/s is:",
        options: ["9 J", "6 J", "18 J", "12 J"],
        answer: 0,
      },
      {
        stem: "The work done when a force of 10 N moves an object 5 m is:",
        options: ["50 J", "2 J", "15 J", "0.5 J"],
        answer: 0,
      },
      {
        stem: "The power of a machine that does 300 J of work in 10 s is:",
        options: ["30 W", "3000 W", "3 W", "0.03 W"],
        answer: 0,
      },
      {
        stem: "The pressure exerted by a force of 50 N on an area of 2 m² is:",
        options: ["25 Pa", "100 Pa", "52 Pa", "0.04 Pa"],
        answer: 0,
      },
      {
        stem: "The principle of moments states that for equilibrium:",
        options: [
          "sum of clockwise moments = sum of anticlockwise moments",
          "sum of forces = 0",
          "work done = energy",
          "power = work × time",
        ],
        answer: 0,
      },
      {
        stem: "The density of a substance is defined as:",
        options: [
          "mass per unit volume",
          "weight per unit volume",
          "mass per unit area",
          "volume per unit mass",
        ],
        answer: 0,
      },
      {
        stem: "A block of mass 270 g and volume 100 cm³ has a density of:",
        options: ["2.7 g/cm³", "0.37 g/cm³", "27 g/cm³", "27000 g/cm³"],
        answer: 0,
      },
      {
        stem: "The upthrust on a body in a fluid is equal to:",
        options: [
          "weight of fluid displaced",
          "weight of the body",
          "mass of the body",
          "volume of the body",
        ],
        answer: 0,
      },
      {
        stem: "A machine with a mechanical advantage of 4 and velocity ratio of 5 has an efficiency of:",
        options: ["80%", "20%", "125%", "9%"],
        answer: 0,
      },
      {
        stem: "The velocity ratio of a lever with effort arm 2 m and load arm 0.5 m is:",
        options: ["4", "0.25", "2.5", "1.5"],
        answer: 0,
      },
      {
        stem: "A body moving with constant velocity has:",
        options: [
          "zero acceleration",
          "increasing acceleration",
          "decreasing acceleration",
          "constant acceleration",
        ],
        answer: 0,
      },
      {
        stem: "The SI unit of momentum is:",
        options: ["kg m/s", "kg m/s²", "N m", "J"],
        answer: 0,
      },
      {
        stem: "The gravitational potential energy of a 2 kg mass raised 5 m (g = 10 m/s²) is:",
        options: ["100 J", "10 J", "50 J", "20 J"],
        answer: 0,
      },
      {
        stem: "The speed of a ball dropped from 20 m just before hitting the ground (g = 10 m/s²) is:",
        options: ["20 m/s", "10 m/s", "40 m/s", "200 m/s"],
        answer: 0,
      },
      {
        stem: "The centre of gravity of a uniform rod is at its:",
        options: ["midpoint", "end", "one-quarter point", "centre of mass of the rod"],
        answer: 0,
      },
      {
        stem: "A body floats when its weight is:",
        options: [
          "equal to the upthrust",
          "greater than the upthrust",
          "less than the upthrust",
          "zero",
        ],
        answer: 0,
      },
      {
        stem: "The relative density of a substance with density 800 kg/m³ (water = 1000 kg/m³) is:",
        options: ["0.8", "8", "80", "1.25"],
        answer: 0,
      },
      {
        stem: "The change in momentum of a 0.5 kg ball going from 4 m/s to 3 m/s in the opposite direction is:",
        options: ["3.5 kg m/s", "0.5 kg m/s", "7 kg m/s", "1 kg m/s"],
        answer: 0,
      },
      {
        stem: "A car travelling at 20 m/s has a kinetic energy of 200 kJ. Its mass is:",
        options: ["1000 kg", "2000 kg", "500 kg", "10000 kg"],
        answer: 0,
      },
    ],
    // Topic 1: Waves, electricity, and magnetism
    [
      {
        stem: "The SI unit of frequency is the:",
        options: ["hertz", "watt", "joule", "newton"],
        answer: 0,
      },
      {
        stem: "The distance between two successive crests of a wave is the:",
        options: ["wavelength", "amplitude", "frequency", "period"],
        answer: 0,
      },
      {
        stem: "The maximum displacement of a wave from its rest position is the:",
        options: ["amplitude", "wavelength", "frequency", "speed"],
        answer: 0,
      },
      {
        stem: "Sound waves are:",
        options: ["longitudinal", "transverse", "electromagnetic", "stationary"],
        answer: 0,
      },
      {
        stem: "Light waves are:",
        options: ["transverse", "longitudinal", "mechanical", "sound"],
        answer: 0,
      },
      {
        stem: "The speed of a wave with frequency 50 Hz and wavelength 4 m is:",
        options: ["200 m/s", "12.5 m/s", "54 m/s", "46 m/s"],
        answer: 0,
      },
      {
        stem: "The angle of reflection is equal to the angle of:",
        options: ["incidence", "refraction", "deviation", "critical angle"],
        answer: 0,
      },
      {
        stem: "The image formed by a plane mirror is:",
        options: [
          "virtual and laterally inverted",
          "real and inverted",
          "virtual and upright",
          "real and upright",
        ],
        answer: 0,
      },
      {
        stem: "The bending of light as it passes from one medium to another is called:",
        options: ["refraction", "reflection", "diffraction", "dispersion"],
        answer: 0,
      },
      {
        stem: "The refractive index of a medium is the ratio of:",
        options: [
          "speed of light in vacuum to speed in the medium",
          "speed in the medium to speed in vacuum",
          "angle of incidence to angle of refraction",
          "wavelength to frequency",
        ],
        answer: 0,
      },
      {
        stem: "Total internal reflection occurs when light travels from:",
        options: [
          "a denser to a rarer medium at an angle greater than the critical angle",
          "a rarer to a denser medium",
          "air to glass at any angle",
          "a denser to a rarer medium at any angle",
        ],
        answer: 0,
      },
      {
        stem: "The critical angle for glass is about:",
        options: ["42°", "90°", "30°", "60°"],
        answer: 0,
      },
      {
        stem: "The lens that converges light rays is a:",
        options: ["convex lens", "concave lens", "plane mirror", "prism"],
        answer: 0,
      },
      {
        stem: "The lens formula is:",
        options: ["1/f = 1/v + 1/u", "f = v + u", "1/f = v + u", "f = uv"],
        answer: 0,
      },
      {
        stem: "The SI unit of electric current is the:",
        options: ["ampere", "volt", "ohm", "watt"],
        answer: 0,
      },
      {
        stem: "The SI unit of potential difference is the:",
        options: ["volt", "ampere", "ohm", "watt"],
        answer: 0,
      },
      {
        stem: "The SI unit of resistance is the:",
        options: ["ohm", "volt", "ampere", "watt"],
        answer: 0,
      },
      {
        stem: "Ohm's law states that:",
        options: ["V = IR", "V = I/R", "V = R/I", "I = VR"],
        answer: 0,
      },
      {
        stem: "The charge that passes when 2 A flows for 10 s is:",
        options: ["20 C", "5 C", "0.2 C", "12 C"],
        answer: 0,
      },
      {
        stem: "Two resistors of 6 Ω and 3 Ω in series have a total resistance of:",
        options: ["9 Ω", "2 Ω", "18 Ω", "0.5 Ω"],
        answer: 0,
      },
      {
        stem: "Two resistors of 6 Ω and 3 Ω in parallel have a total resistance of:",
        options: ["2 Ω", "9 Ω", "18 Ω", "0.5 Ω"],
        answer: 0,
      },
      {
        stem: "The power of a device operating at 240 V drawing 5 A is:",
        options: ["1200 W", "48 W", "245 W", "235 W"],
        answer: 0,
      },
      {
        stem: "The energy used by a 1200 W heater in 2 hours is:",
        options: ["2.4 kWh", "2400 kWh", "600 kWh", "0.5 kWh"],
        answer: 0,
      },
      {
        stem: "The specific heat capacity of water is:",
        options: ["4200 J/kg°C", "420 J/kg°C", "42000 J/kg°C", "4.2 J/kg°C"],
        answer: 0,
      },
      {
        stem: "The heat needed to raise 2 kg of water from 20°C to 80°C is:",
        options: ["504000 J", "504 J", "5040 J", "168000 J"],
        answer: 0,
      },
      {
        stem: "The specific latent heat of fusion of ice is:",
        options: ["3.34 × 10⁵ J/kg", "3.34 J/kg", "334 J/kg", "3.34 × 10³ J/kg"],
        answer: 0,
      },
      {
        stem: "A magnet has two poles called:",
        options: ["north and south", "east and west", "positive and negative", "top and bottom"],
        answer: 0,
      },
      {
        stem: "The strength of an electromagnet increases when:",
        options: [
          "the number of turns increases",
          "the current decreases",
          "the core is removed",
          "the wire is thinner",
        ],
        answer: 0,
      },
      {
        stem: "The pitch of a sound depends on its:",
        options: ["frequency", "amplitude", "speed", "wavelength"],
        answer: 0,
      },
      {
        stem: "The loudness of a sound depends on its:",
        options: ["amplitude", "frequency", "speed", "wavelength"],
        answer: 0,
      },
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// ICT — hard topic-wise structural questions
// ---------------------------------------------------------------------------

function structuralIct(topicIndex, paperSeed) {
  const s = paperSeed;
  const banks = [
    // ---- Topic 0: Productivity tools and digital communication ----
    [
      `**Q1.** (a) What is a word processor? *(2 marks)*\n\n(b) State four features of a word processor. *(4 marks)*\n\n(c) Explain the difference between saving a document and printing a document. *(4 marks)*`,
      `**Q2.** (a) Define the terms "cut", "copy", and "paste" as used in word processing. *(3 marks)*\n\n(b) Describe how you would change the font and size of text in a word processor. *(4 marks)*\n\n(c) State two advantages of using a word processor over a typewriter. *(4 marks)*`,
      `**Q3.** (a) What is a spreadsheet? *(2 marks)*\n\n(b) Define the terms cell, row, column, and range. *(4 marks)*\n\n(c) Explain the difference between a formula and a function in a spreadsheet. *(4 marks)*`,
      `**Q4.** (a) State the function of the following spreadsheet functions: SUM, AVERAGE, MAX, MIN. *(4 marks)*\n\n(b) Write the formula to add the values in cells A1 to A10. *(3 marks)*\n\n(c) Explain what happens when a formula is copied to another cell. *(4 marks)*`,
      `**Q5.** (a) What is a presentation? *(2 marks)*\n\n(b) State four features of a presentation program. *(4 marks)*\n\n(c) Explain the importance of using bullet points in a presentation. *(4 marks)*`,
      `**Q6.** (a) Define the terms slide, transition, and animation. *(3 marks)*\n\n(b) Describe how you would add a transition to a slide. *(4 marks)*\n\n(c) State two guidelines for making an effective presentation. *(4 marks)*`,
      `**Q7.** (a) What is the internet? *(2 marks)*\n\n(b) State three services provided by the internet. *(3 marks)*\n\n(c) Explain the difference between the internet and the World Wide Web. *(4 marks)*`,
      `**Q8.** (a) Define the terms URL, browser, and search engine. *(3 marks)*\n\n(b) Describe how you would search for information on the internet. *(4 marks)*\n\n(c) State two ways of evaluating the reliability of a website. *(4 marks)*`,
      `**Q9.** (a) What is email? *(2 marks)*\n\n(b) State the parts of an email address. *(3 marks)*\n\n(c) Explain the difference between "To", "Cc", and "Bcc" fields in an email. *(4 marks)*`,
      `**Q10.** (a) Define the terms attachment and spam. *(2 marks)*\n\n(b) Describe how you would attach a file to an email. *(4 marks)*\n\n(c) State two precautions to take when opening email attachments. *(4 marks)*`,
      `**Q11.** (a) What is a social media platform? *(2 marks)*\n\n(b) State three benefits of social media. *(3 marks)*\n\n(c) Explain two risks of using social media. *(4 marks)*`,
      `**Q12.** (a) Define the term "digital citizenship". *(2 marks)*\n\n(b) State three responsibilities of a digital citizen. *(3 marks)*\n\n(c) Explain what is meant by "digital footprint". *(4 marks)*`,
      `**Q13.** (a) What is cyberbullying? *(2 marks)*\n\n(b) State three ways to protect yourself from cyberbullying. *(3 marks)*\n\n(c) Explain what you should do if you are a victim of cyberbullying. *(4 marks)*`,
      `**Q14.** (a) Define the terms "netiquette" and "copyright". *(4 marks)*\n\n(b) State two examples of good netiquette. *(2 marks)*\n\n(c) Explain why it is important to respect copyright when using online content. *(4 marks)*`,
      `**Q15.** (a) What is cloud computing? *(2 marks)*\n\n(b) State three advantages of cloud storage. *(3 marks)*\n\n(c) Explain one risk of storing data in the cloud. *(4 marks)*`,
      `**Q16.** (a) Define the terms "upload" and "download". *(2 marks)*\n\n(b) Describe how you would share a document using a cloud service. *(4 marks)*\n\n(c) State two benefits of collaborating on documents online. *(4 marks)*`,
      `**Q17.** (a) What is a database? *(2 marks)*\n\n(b) Define the terms table, record, and field. *(3 marks)*\n\n(c) Explain the difference between a primary key and a foreign key. *(4 marks)*`,
      `**Q18.** (a) State the function of a query in a database. *(2 marks)*\n\n(b) Describe how you would sort records in a database. *(4 marks)*\n\n(c) Explain the difference between a filter and a query. *(4 marks)*`,
      `**Q19.** (a) What is a computer virus? *(2 marks)*\n\n(b) State three ways a computer can be infected by a virus. *(3 marks)*\n\n(c) Describe two ways of protecting a computer from viruses. *(4 marks)*`,
      `**Q20.** (a) Define the terms "firewall" and "antivirus software". *(4 marks)*\n\n(b) Explain the difference between a firewall and antivirus software. *(4 marks)*\n\n(c) State two other security measures for protecting data. *(4 marks)*`,
    ],
    // ---- Topic 1: Data, web, and information systems ----
    [
      `**Q1.** (a) What is data? *(2 marks)*\n\n(b) Distinguish between data and information. *(4 marks)*\n\n(c) Give two examples of raw data and the information that can be derived from them. *(4 marks)*`,
      `**Q2.** (a) Define the term "information system". *(2 marks)*\n\n(b) State the components of an information system. *(4 marks)*\n\n(c) Explain the role of a database in an information system. *(4 marks)*`,
      `**Q3.** (a) What is a database management system (DBMS)? *(2 marks)*\n\n(b) State three functions of a DBMS. *(3 marks)*\n\n(c) Give two examples of DBMS software. *(2 marks)*`,
      `**Q4.** (a) Define the terms "entity" and "attribute" in a database. *(4 marks)*\n\n(b) Give an example of an entity with three attributes. *(3 marks)*\n\n(c) Explain what is meant by a "one-to-many" relationship. *(4 marks)*`,
      `**Q5.** (a) What is a relational database? *(2 marks)*\n\n(b) State two advantages of a relational database over a flat-file database. *(4 marks)*\n\n(c) Explain the purpose of a primary key. *(4 marks)*`,
      `**Q6.** (a) Define the term "SQL". *(2 marks)*\n\n(b) Write an SQL statement to select all records from a table called "Students". *(3 marks)*\n\n(c) Write an SQL statement to insert a new record into the "Students" table. *(4 marks)*`,
      `**Q7.** (a) What is a network? *(2 marks)*\n\n(b) Distinguish between a LAN and a WAN. *(4 marks)*\n\n(c) State two advantages of networking computers. *(4 marks)*`,
      `**Q8.** (a) Define the terms "client" and "server". *(2 marks)*\n\n(b) Explain the client-server model. *(4 marks)*\n\n(c) State two examples of client-server applications. *(4 marks)*`,
      `**Q9.** (a) What is the internet? *(2 marks)*\n\n(b) Explain how data is transmitted over the internet using packets. *(5 marks)*\n\n(c) Define the term "IP address". *(3 marks)*`,
      `**Q10.** (a) Define the terms "domain name" and "DNS". *(4 marks)\n\n(b) Explain the purpose of the Domain Name System. *(4 marks)*\n\n(c) Give an example of a domain name and identify its parts. *(4 marks)*`,
      `**Q11.** (a) What is a website? *(2 marks)*\n\n(b) State three components of a website. *(3 marks)*\n\n(c) Explain the difference between a static and a dynamic website. *(4 marks)*`,
      `**Q12.** (a) Define the terms "HTML" and "CSS". *(4 marks)*\n\n(b) State the purpose of each. *(4 marks)*\n\n(c) Write a simple HTML tag to create a heading. *(3 marks)*`,
      `**Q13.** (a) What is a web browser? *(2 marks)*\n\n(b) State three features of a web browser. *(3 marks)*\n\n(c) Explain the function of a "bookmark" in a browser. *(4 marks)*`,
      `**Q14.** (a) Define the terms "e-commerce" and "e-learning". *(4 marks)*\n\n(b) State two advantages of e-commerce. *(2 marks)*\n\n(c) Explain one disadvantage of e-commerce. *(4 marks)*`,
      `**Q15.** (a) What is cybersecurity? *(2 marks)*\n\n(b) State three types of cyber threats. *(3 marks)*\n\n(c) Explain the importance of strong passwords. *(4 marks)*`,
      `**Q16.** (a) Define the terms "phishing" and "malware". *(4 marks)*\n\n(b) Describe how phishing attacks work. *(4 marks)*\n\n(c) State two ways to avoid phishing attacks. *(4 marks)*`,
      `**Q17.** (a) What is encryption? *(2 marks)*\n\n(b) Explain how encryption protects data. *(4 marks)*\n\n(c) State two uses of encryption in everyday life. *(4 marks)*`,
      `**Q18.** (a) Define the term "backup". *(2 marks)*\n\n(b) State three reasons why regular backups are important. *(3 marks)*\n\n(c) Describe two backup strategies. *(4 marks)*`,
      `**Q19.** (a) What is a computer system? *(2 marks)*\n\n(b) State the hardware components of a computer system. *(4 marks)*\n\n(c) Explain the difference between hardware and software. *(4 marks)*`,
      `**Q20.** (a) Define the terms "input device" and "output device". *(4 marks)*\n\n(b) Give two examples of each. *(4 marks)*\n\n(c) Explain the function of the CPU. *(4 marks)*`,
    ],
  ];

  return banks[topicIndex];
}

// ---------------------------------------------------------------------------
// ICT — MCQ banks (30 per topic)
// ---------------------------------------------------------------------------

function mcqIct(topicIndex) {
  const banks = [
    // Topic 0: Productivity tools and digital communication
    [
      {
        stem: "A word processor is used to:",
        options: [
          "create and edit text documents",
          "make calculations",
          "browse the internet",
          "play games",
        ],
        answer: 0,
      },
      {
        stem: "The feature that checks spelling in a word processor is called:",
        options: ["spell checker", "thesaurus", "autocorrect", "grammar checker"],
        answer: 0,
      },
      {
        stem: "The shortcut key for copying text is:",
        options: ["Ctrl + C", "Ctrl + V", "Ctrl + X", "Ctrl + P"],
        answer: 0,
      },
      {
        stem: "The shortcut key for pasting text is:",
        options: ["Ctrl + V", "Ctrl + C", "Ctrl + X", "Ctrl + P"],
        answer: 0,
      },
      {
        stem: "The shortcut key for printing a document is:",
        options: ["Ctrl + P", "Ctrl + C", "Ctrl + V", "Ctrl + S"],
        answer: 0,
      },
      {
        stem: "A spreadsheet is used to:",
        options: ["organise and calculate data", "write letters", "edit photos", "send emails"],
        answer: 0,
      },
      {
        stem: "In a spreadsheet, the intersection of a row and a column is called a:",
        options: ["cell", "range", "worksheet", "chart"],
        answer: 0,
      },
      {
        stem: "The function that adds a range of cells is:",
        options: ["SUM", "AVERAGE", "MAX", "MIN"],
        answer: 0,
      },
      {
        stem: "The function that finds the largest value in a range is:",
        options: ["MAX", "MIN", "SUM", "AVERAGE"],
        answer: 0,
      },
      {
        stem: "A formula in a spreadsheet always begins with:",
        options: ["=", "+", "-", "#"],
        answer: 0,
      },
      {
        stem: "A presentation program is used to:",
        options: ["create slideshows", "write essays", "calculate budgets", "browse the web"],
        answer: 0,
      },
      {
        stem: "The effect used when moving from one slide to the next is called a:",
        options: ["transition", "animation", "hyperlink", "template"],
        answer: 0,
      },
      {
        stem: "The movement of objects within a slide is called:",
        options: ["animation", "transition", "hyperlink", "layout"],
        answer: 0,
      },
      {
        stem: "The internet is:",
        options: [
          "a global network of computers",
          "a single computer",
          "a type of software",
          "a web browser",
        ],
        answer: 0,
      },
      {
        stem: "The software used to access websites is a:",
        options: ["browser", "search engine", "server", "firewall"],
        answer: 0,
      },
      { stem: "A website address is called a:", options: ["URL", "IP", "DNS", "HTML"], answer: 0 },
      {
        stem: "The service used to send and receive messages electronically is:",
        options: ["email", "spreadsheet", "word processor", "presentation"],
        answer: 0,
      },
      {
        stem: "The part of an email address after the @ symbol is the:",
        options: ["domain name", "username", "password", "attachment"],
        answer: 0,
      },
      {
        stem: "An unwanted email sent in bulk is called:",
        options: ["spam", "attachment", "newsletter", "draft"],
        answer: 0,
      },
      {
        stem: "A file sent along with an email is called an:",
        options: ["attachment", "hyperlink", "signature", "header"],
        answer: 0,
      },
      {
        stem: "The responsible use of technology is called:",
        options: ["digital citizenship", "cyberbullying", "hacking", "phishing"],
        answer: 0,
      },
      {
        stem: "The trace of your online activity is called your:",
        options: ["digital footprint", "IP address", "password", "username"],
        answer: 0,
      },
      {
        stem: "Bullying carried out online is called:",
        options: ["cyberbullying", "spamming", "phishing", "hacking"],
        answer: 0,
      },
      {
        stem: "The rules of polite behaviour online are called:",
        options: ["netiquette", "copyright", "licence", "protocol"],
        answer: 0,
      },
      {
        stem: "Storing data on remote servers accessed via the internet is called:",
        options: ["cloud computing", "networking", "programming", "printing"],
        answer: 0,
      },
      {
        stem: "Sending a file from your computer to the internet is called:",
        options: ["uploading", "downloading", "printing", "scanning"],
        answer: 0,
      },
      {
        stem: "Receiving a file from the internet to your computer is called:",
        options: ["downloading", "uploading", "printing", "scanning"],
        answer: 0,
      },
      {
        stem: "A malicious program that spreads between computers is a:",
        options: ["virus", "browser", "spreadsheet", "database"],
        answer: 0,
      },
      {
        stem: "Software that protects a computer from viruses is called:",
        options: ["antivirus", "firewall", "browser", "word processor"],
        answer: 0,
      },
      {
        stem: "A security system that monitors incoming and outgoing network traffic is a:",
        options: ["firewall", "antivirus", "spreadsheet", "database"],
        answer: 0,
      },
    ],
    // Topic 1: Data, web, and information systems
    [
      {
        stem: "Raw facts and figures are called:",
        options: ["data", "information", "knowledge", "wisdom"],
        answer: 0,
      },
      {
        stem: "Data that has been processed and given meaning is called:",
        options: ["information", "raw data", "input", "storage"],
        answer: 0,
      },
      {
        stem: "A collection of related data organised for easy access is a:",
        options: ["database", "spreadsheet", "presentation", "document"],
        answer: 0,
      },
      {
        stem: "In a database table, a row is called a:",
        options: ["record", "field", "query", "report"],
        answer: 0,
      },
      {
        stem: "In a database table, a column is called a:",
        options: ["field", "record", "table", "query"],
        answer: 0,
      },
      {
        stem: "The field that uniquely identifies each record is the:",
        options: ["primary key", "foreign key", "index", "query"],
        answer: 0,
      },
      {
        stem: "Software used to manage a database is called a:",
        options: ["DBMS", "OS", "browser", "compiler"],
        answer: 0,
      },
      {
        stem: "The language used to query a relational database is:",
        options: ["SQL", "HTML", "CSS", "Java"],
        answer: 0,
      },
      {
        stem: "A network that covers a small area such as a school is a:",
        options: ["LAN", "WAN", "MAN", "PAN"],
        answer: 0,
      },
      {
        stem: "A network that covers a large geographical area is a:",
        options: ["WAN", "LAN", "MAN", "PAN"],
        answer: 0,
      },
      {
        stem: "In a client-server model, the computer that provides services is the:",
        options: ["server", "client", "router", "switch"],
        answer: 0,
      },
      {
        stem: "The unique address of a device on a network is its:",
        options: ["IP address", "URL", "domain name", "password"],
        answer: 0,
      },
      {
        stem: "The system that translates domain names into IP addresses is:",
        options: ["DNS", "HTML", "CSS", "SQL"],
        answer: 0,
      },
      {
        stem: "The language used to create web pages is:",
        options: ["HTML", "SQL", "Java", "Python"],
        answer: 0,
      },
      {
        stem: "The language used to style web pages is:",
        options: ["CSS", "HTML", "SQL", "Java"],
        answer: 0,
      },
      {
        stem: "A website that allows users to interact and change content is:",
        options: ["dynamic", "static", "offline", "cached"],
        answer: 0,
      },
      {
        stem: "Buying and selling goods online is called:",
        options: ["e-commerce", "e-learning", "e-banking", "e-mail"],
        answer: 0,
      },
      {
        stem: "Learning using electronic devices and the internet is called:",
        options: ["e-learning", "e-commerce", "e-banking", "e-mail"],
        answer: 0,
      },
      {
        stem: "The practice of protecting systems and data from cyber threats is called:",
        options: ["cybersecurity", "networking", "programming", "printing"],
        answer: 0,
      },
      {
        stem: "A fraudulent attempt to obtain sensitive information by pretending to be a trusted source is:",
        options: ["phishing", "spamming", "hacking", "cracking"],
        answer: 0,
      },
      {
        stem: "Malicious software such as viruses and worms is called:",
        options: ["malware", "shareware", "freeware", "firmware"],
        answer: 0,
      },
      {
        stem: "The process of converting data into a coded form to prevent unauthorised access is:",
        options: ["encryption", "decryption", "compression", "deletion"],
        answer: 0,
      },
      {
        stem: "A copy of data kept for recovery purposes is called a:",
        options: ["backup", "virus", "firewall", "cache"],
        answer: 0,
      },
      {
        stem: "The physical parts of a computer are called:",
        options: ["hardware", "software", "firmware", "shareware"],
        answer: 0,
      },
      {
        stem: "The programs that run on a computer are called:",
        options: ["software", "hardware", "peripherals", "components"],
        answer: 0,
      },
      {
        stem: "The part of the computer that processes instructions is the:",
        options: ["CPU", "monitor", "keyboard", "printer"],
        answer: 0,
      },
      {
        stem: "A keyboard is an example of an:",
        options: ["input device", "output device", "storage device", "processing device"],
        answer: 0,
      },
      {
        stem: "A monitor is an example of an:",
        options: ["output device", "input device", "storage device", "processing device"],
        answer: 0,
      },
      {
        stem: "The process of arranging records in a particular order is called:",
        options: ["sorting", "filtering", "querying", "indexing"],
        answer: 0,
      },
      {
        stem: "The process of displaying only records that meet a condition is called:",
        options: ["filtering", "sorting", "indexing", "backing up"],
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
