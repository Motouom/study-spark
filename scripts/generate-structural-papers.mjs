import { mkdirSync, writeFileSync } from "node:fs";
import { join } from "node:path";

const outDir = join(process.cwd(), "content", "papers");

const subjects = [
  [
    "Mathematics",
    "ordinary",
    "form_5",
    "general, science, technical",
    [
      "Number and calculation",
      "Algebra and graphs",
      "Geometry and mensuration",
      "Trigonometry",
      "Statistics and probability",
      "Vectors and transformations",
      "Commercial arithmetic",
      "Sequences and variation",
    ],
  ],
  [
    "Additional Mathematics",
    "ordinary",
    "form_5",
    "science, technical",
    [
      "Functions",
      "Quadratics and inequalities",
      "Polynomial and remainder theorem",
      "Trigonometry",
      "Coordinate geometry",
      "Differentiation",
      "Integration",
      "Vectors and matrices",
    ],
  ],
  [
    "Pure Mathematics with Mechanics",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Algebra",
      "Binomial theorem",
      "Functions",
      "Trigonometry",
      "Calculus",
      "Differential equations",
      "Vectors",
      "Mechanics",
    ],
  ],
  [
    "Pure Mathematics with Statistics",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Algebra",
      "Series",
      "Functions",
      "Calculus",
      "Probability",
      "Discrete distributions",
      "Continuous distributions",
      "Hypothesis testing",
    ],
  ],
  [
    "Further Mathematics",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Complex numbers",
      "Matrices",
      "Further calculus",
      "Numerical methods",
      "Differential equations",
      "Mechanics",
      "Statistics",
      "Proof",
    ],
  ],
  [
    "English Language",
    "ordinary",
    "form_5",
    "general, science, arts, commercial, technical",
    [
      "Comprehension",
      "Summary",
      "Directed writing",
      "Essay writing",
      "Grammar",
      "Vocabulary",
      "Register",
      "Oral English",
    ],
  ],
  [
    "English Literature",
    "advanced",
    "upper_sixth",
    "a_arts",
    [
      "Drama",
      "Poetry",
      "Prose",
      "African literature",
      "Characterisation",
      "Theme",
      "Narrative technique",
      "Context",
    ],
  ],
  [
    "French",
    "ordinary",
    "form_5",
    "general, science, arts, commercial, technical",
    [
      "Comprehension",
      "Grammar",
      "Translation",
      "Essay writing",
      "Vocabulary",
      "Dialogue",
      "Letter writing",
      "Culture",
    ],
  ],
  [
    "Special Bilingual Education French",
    "ordinary",
    "form_5",
    "arts",
    [
      "Advanced comprehension",
      "Translation",
      "Expression ecrite",
      "Grammar",
      "Oral production",
      "Culture",
      "Register",
      "Text analysis",
    ],
  ],
  [
    "Religious Studies",
    "ordinary",
    "form_5",
    "general, arts",
    [
      "Old Testament",
      "New Testament",
      "Christian ethics",
      "African traditional religion",
      "Islam",
      "Church history",
      "Moral decision making",
      "Religion and society",
    ],
  ],
  [
    "Philosophy",
    "advanced",
    "upper_sixth",
    "a_arts",
    [
      "Logic and argument",
      "Epistemology",
      "Ethics",
      "Political philosophy",
      "Metaphysics",
      "African philosophy",
      "Philosophy of science",
      "Human freedom",
    ],
  ],
  [
    "Citizenship Education",
    "ordinary",
    "form_5",
    "general, arts",
    [
      "State and nation",
      "Rights and duties",
      "Democracy",
      "Elections",
      "Constitution",
      "Peace and conflict",
      "National integration",
      "Civic responsibility",
    ],
  ],
  [
    "Physics",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Measurements",
      "Mechanics",
      "Waves",
      "Electricity",
      "Magnetism",
      "Thermal physics",
      "Atomic physics",
      "Practical analysis",
    ],
  ],
  [
    "Chemistry",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Atomic structure",
      "Bonding",
      "Energetics",
      "Kinetics",
      "Equilibrium",
      "Organic chemistry",
      "Electrochemistry",
      "Qualitative analysis",
    ],
  ],
  [
    "Biology",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Cell biology",
      "Biochemistry",
      "Genetics",
      "Ecology",
      "Plant physiology",
      "Animal physiology",
      "Evolution",
      "Practical biology",
    ],
  ],
  [
    "Human Biology",
    "ordinary",
    "form_5",
    "general, science",
    [
      "Cells and tissues",
      "Nutrition",
      "Respiration",
      "Circulation",
      "Excretion",
      "Coordination",
      "Reproduction",
      "Disease and immunity",
    ],
  ],
  [
    "Geology",
    "advanced",
    "upper_sixth",
    "a_science, a_arts",
    [
      "Earth structure",
      "Minerals",
      "Rocks",
      "Plate tectonics",
      "Weathering",
      "Stratigraphy",
      "Economic geology",
      "Geological maps",
    ],
  ],
  [
    "Economics",
    "advanced",
    "upper_sixth",
    "a_arts, a_commercial",
    [
      "Basic concepts",
      "Demand and supply",
      "Elasticity",
      "Production and costs",
      "Market structures",
      "National income",
      "Money and banking",
      "International trade",
    ],
  ],
  [
    "Geography",
    "advanced",
    "upper_sixth",
    "a_arts",
    [
      "Map work",
      "Geomorphology",
      "Climatology",
      "Population",
      "Settlement",
      "Agriculture",
      "Industry",
      "Regional geography of Cameroon",
    ],
  ],
  [
    "History",
    "advanced",
    "upper_sixth",
    "a_arts",
    [
      "Cameroon history",
      "West Africa",
      "European imperialism",
      "World wars",
      "Decolonisation",
      "Cold War",
      "Nationalism",
      "International organisations",
    ],
  ],
  [
    "Commerce",
    "ordinary",
    "form_5",
    "commercial, technical",
    [
      "Trade",
      "Retail and wholesale",
      "Business units",
      "Transport",
      "Warehousing",
      "Insurance",
      "Banking",
      "International trade",
    ],
  ],
  [
    "Accounting",
    "ordinary",
    "form_5",
    "commercial",
    [
      "Source documents",
      "Books of original entry",
      "Ledger accounts",
      "Trial balance",
      "Final accounts",
      "Control accounts",
      "Bank reconciliation",
      "Depreciation",
    ],
  ],
  [
    "Business Studies",
    "ordinary",
    "form_5",
    "commercial, technical",
    [
      "Enterprise",
      "Business ownership",
      "Management",
      "Marketing",
      "Finance",
      "Human resources",
      "Production",
      "Business environment",
    ],
  ],
  [
    "Computer Science",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Data representation",
      "Computer architecture",
      "Algorithms",
      "Programming",
      "Databases",
      "Networks",
      "Systems analysis",
      "Cybersecurity",
    ],
  ],
  [
    "ICT",
    "ordinary",
    "form_5",
    "commercial, technical, science",
    [
      "Computer systems",
      "Word processing",
      "Spreadsheets",
      "Databases",
      "Internet",
      "Presentation software",
      "Digital safety",
      "ICT in society",
    ],
  ],
  [
    "Food and Nutrition",
    "ordinary",
    "form_5",
    "general",
    [
      "Nutrients",
      "Meal planning",
      "Food hygiene",
      "Cooking methods",
      "Food preservation",
      "Diet and health",
      "Consumer education",
      "Practical planning",
    ],
  ],
  [
    "Food Science and Nutrition",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Food chemistry",
      "Microbiology",
      "Nutritional biochemistry",
      "Food processing",
      "Quality control",
      "Diet therapy",
      "Public health nutrition",
      "Food product development",
    ],
  ],
  [
    "Logic",
    "ordinary",
    "form_5",
    "general, arts",
    [
      "Terms and propositions",
      "Categorical logic",
      "Truth tables",
      "Arguments",
      "Fallacies",
      "Definitions",
      "Induction",
      "Deduction",
    ],
  ],
  [
    "Agricultural Science",
    "advanced",
    "upper_sixth",
    "a_science",
    [
      "Soil science",
      "Crop production",
      "Animal production",
      "Farm management",
      "Agricultural economics",
      "Pests and diseases",
      "Agroforestry",
      "Practical agriculture",
    ],
  ],
];

function slug(value) {
  return value
    .toLowerCase()
    .replace(/&/g, "and")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/(^-|-$)/g, "");
}

function cleanTitle(subject, paper) {
  const level =
    subjects.find(([candidate]) => candidate === subject)?.[1] === "advanced"
      ? "ADVANCED LEVEL"
      : "ORDINARY LEVEL";
  return `CAMEROON GCE ${level} ${subject} P2 SET ${paper}`.toUpperCase();
}

function marks(q) {
  return [6, 8, 10, 12][q % 4];
}

function isMath(subject) {
  return /mathematics|logic/i.test(subject);
}

function isScience(subject) {
  return /physics|chemistry|biology|geology|computer|ict|food|agricultural/i.test(subject);
}

function isHumanities(subject) {
  return /english|french|literature|philosophy|religious|history|citizenship/i.test(subject);
}

function isBusiness(subject) {
  return /economics|commerce|accounting|business/i.test(subject);
}

function subjectTask(subject, topic, n, paper) {
  const a = paper + n;
  const b = paper * 2 + n;
  const c = paper * 3 + n;

  if (isMath(subject)) {
    if (/trigonometry/i.test(topic))
      return `In triangle ABC, AB = ${a + 4} cm, AC = ${b + 5} cm, and angle BAC = ${30 + ((n * 5) % 45)} degrees. Determine the missing side or angle and interpret the result.`;
    if (/calculus|differentiation|integration/i.test(topic))
      return `For f(x) = x^3 - ${a}x^2 + ${b}x - ${c}, find the required derivative, stationary value, tangent, area, or integral connected to the function.`;
    if (/mechanics/i.test(topic))
      return `A particle of mass ${a} kg moves under forces (${b}i - ${paper + 3}j) N and (${paper - n}i + ${c}j) N. Analyse the motion and resultant effect.`;
    if (/statistics|probability|distribution|testing/i.test(topic))
      return `The marks of ${30 + n} candidates are grouped into intervals of width ${paper + 4}. Use the data description to estimate centre, spread, probability, or a test conclusion.`;
    if (/vectors|matrices/i.test(topic))
      return `Given vectors or matrices with entries involving ${a}, ${b}, and ${c}, determine the required resultant, inverse, transformation, or intersection condition.`;
    if (/series|sequence|binomial/i.test(topic))
      return `A sequence begins with u1 = ${paper + 2} and follows u(n+1) = ${paper + 1}u(n) - ${n}. Establish the pattern and solve the required sum or approximation.`;
    if (/complex|proof|numerical/i.test(topic))
      return `Solve a structured problem in ${topic.toLowerCase()} using exact reasoning first, then give a numerical or graphical interpretation where required.`;
    return `Given f(x) = x^3 - ${a}x^2 + ${b}x - ${c}, investigate its roots, signs, and graph over a suitable interval.`;
  }

  if (isScience(subject)) {
    if (/physics|mechanics|waves|electricity|magnetism|thermal|atomic/i.test(subject + topic))
      return `A laboratory setup for ${topic.toLowerCase()} records readings ${a}, ${b}, ${c}, and ${c + n} in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.`;
    if (/chemistry|bonding|organic|electrochemistry|kinetics|equilibrium/i.test(subject + topic))
      return `Experiment ${n} studies ${topic.toLowerCase()} by changing concentration ${a / 10} mol dm-3, temperature ${20 + n} degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.`;
    if (/biology|nutrition|agricultural/i.test(subject + topic))
      return `A biological investigation on ${topic.toLowerCase()} compares sample A with sample B after ${n + 2} days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.`;
    if (/computer|ict|algorithm|database|network|cyber/i.test(subject + topic))
      return `A school system with ${30 + n} learner records must process ${topic.toLowerCase()} securely. Design or analyse the algorithm, data representation, database, network, or safety control required.`;
    if (/geology|rocks|minerals|tectonics|maps/i.test(subject + topic))
      return `A field study on ${topic.toLowerCase()} describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.`;
    return `A practical investigation on ${topic.toLowerCase()} produces ${4 + paper} readings with one possible error. Analyse the data, method, conclusion, and correction.`;
  }

  if (isHumanities(subject)) {
    if (/english language|french|bilingual/i.test(subject))
      return `Read original passage ${n}: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on ${topic.toLowerCase()}.`;
    if (/literature/i.test(subject))
      return `Original passage ${n} presents a speaker facing ambition, loyalty, disappointment, and social pressure. Analyse how ${topic.toLowerCase()} shapes meaning and reader response.`;
    if (/history/i.test(subject))
      return `Source ${n} describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine ${topic.toLowerCase()} with evidence.`;
    if (/citizenship/i.test(subject))
      return `Community case ${n} involves rights, duties, elections, public property, conflict, and peaceful participation. Apply ${topic.toLowerCase()} to resolve the case.`;
    if (/philosophy|logic/i.test(subject))
      return `Argument ${n} defends a claim about knowledge, morality, freedom, or society. Analyse it using ${topic.toLowerCase()} and test its validity.`;
    if (/religious/i.test(subject))
      return `Moral case ${n} in family, school, or public life is presented for religious and ethical interpretation. Use ${topic.toLowerCase()} to support your answer.`;
    return `Original source ${n} raises a question about ${topic.toLowerCase()}. Interpret, explain, and evaluate it in Cameroon GCE essay style.`;
  }

  if (isBusiness(subject)) {
    if (/accounting/i.test(subject))
      return `A business records transactions involving cash ${a * 1000}, credit sales ${b * 1000}, purchases ${c * 1000}, returns, and depreciation. Prepare or correct the required accounting records.`;
    if (/economics/i.test(subject))
      return `Market case ${n} for a staple good changes after income, price, taxation, and supply conditions shift. Analyse ${topic.toLowerCase()} using diagrams and Cameroon examples.`;
    if (/commerce/i.test(subject))
      return `Trader case ${n} in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.`;
    if (/business/i.test(subject))
      return `Enterprise case ${n} must decide on ownership, finance, staffing, production, marketing, and ethics. Apply ${topic.toLowerCase()} to the decision.`;
    return `A business case involving ${topic.toLowerCase()} requires calculation, judgement, and clear recommendations.`;
  }

  return `A structured Cameroon GCE case is set on ${topic.toLowerCase()} and requires practical analysis.`;
}

function advancedMathQuestion(n) {
  const questions = [
    `**Q1.** The polynomial $P(x) = 2x^4 - 3x^3 + ax^2 + bx - 6$ has $(2x - 1)$ and $(x + 2)$ as factors.\n\n(a) Find the values of $a$ and $b$. *(4 marks)*\n\n(b) Factorise $P(x)$ completely over $\\mathbb{R}$. *(3 marks)*\n\n(c) Hence, solve the inequality $P(x) \\geq 0$, expressing your answer in interval notation. *(3 marks)*`,
    `**Q2.** Given that $f(x) = \\dfrac{3x^3 - x^2 - 13x + 7}{(x-2)(x^2 - x - 1)}$:\n\n(a) Express $f(x)$ in partial fractions. *(6 marks)*\n\n(b) Hence evaluate $\\displaystyle\\int_0^{1} f(x)\\, dx$, leaving your answer in the form $a\\ln 2 + b\\ln 5 + c\\ln 3$. *(4 marks)*`,
    `**Q3.** (a) Show that the equation $x^4 - 6x^2 + 2x + 3 = 0$ has a root between $x = 2$ and $x = 3$. *(2 marks)*\n\n(b) Using the substitution $x = u + \\dfrac{1}{u}$, or otherwise, solve $x^4 - 6x^2 + 2x + 3 = 0$ giving all real roots correct to 3 significant figures. *(6 marks)*\n\n(c) Without further calculation, state the nature and number of complex roots. *(2 marks)*`,
    `**Q4.** Solve simultaneously the system:\n\n$$\\log_2(x + y) = 3, \\quad \\log_4(x - y) = 2, \\quad x, y \\in \\mathbb{R}$$\n\nHence find all pairs $(x, y)$ that also satisfy $\\dfrac{x^2 - y^2}{x + y} = 2y - 1$. *(10 marks)*`,
    `**Q5.** Given that $\\alpha, \\beta, \\gamma$ are the roots of $x^3 - px + q = 0$, where $p, q \\neq 0$:\n\n(a) Find $\\alpha^2+\\beta^2+\\gamma^2$, $\\alpha^3+\\beta^3+\\gamma^3$, and $\\alpha^4+\\beta^4+\\gamma^4$ in terms of $p$ and $q$. *(6 marks)*\n\n(b) Find the cubic equation whose roots are $\\alpha^2, \\beta^2, \\gamma^2$. *(4 marks)*`,
    `**Q6.** (a) Find the first four terms in the expansion of $(1 - 3x)^{-2}$ in ascending powers of $x$, stating the range of validity. *(4 marks)*\n\n(b) Use your expansion to estimate $\\dfrac{1}{0.97^2}$ correct to 5 decimal places. *(3 marks)*\n\n(c) Find the coefficient of $x^8$ in $(1 + x + x^2)^9$. *(5 marks)*`,
    `**Q7.** The functions $f$ and $g$ are defined by $f(x)=e^{2x}-5$ and $g(x)=\\dfrac{x+1}{x-3}$, $x \\neq 3$.\n\n(a) Find $f^{-1}(x)$ and state its domain. *(4 marks)*\n\n(b) Solve $f(g(x)) = g(f(x))$ where both sides are defined. *(6 marks)*\n\n(c) Find the fixed points of $g \\circ g$. *(4 marks)*`,
    `**Q8.** The function $h(x)=x^2-6x+11$ is restricted to a domain on which it is one-to-one.\n\n(a) State a suitable maximal domain and find $h^{-1}(x)$. *(4 marks)*\n\n(b) Sketch $y=h(x)$ and $y=h^{-1}(x)$ on the same axes. *(3 marks)*\n\n(c) Solve $h(x)=h^{-1}(x)$ for all possible values on the chosen domain. *(5 marks)*`,
    `**Q9.** (a) Prove that $\\cot\\theta - \\tan\\theta \\equiv 2\\cot 2\\theta$. *(4 marks)*\n\n(b) Solve $2\\sin^2 x + 5\\cos x - 4 = 0$ for $0^\\circ \\leq x \\leq 360^\\circ$. *(4 marks)*\n\n(c) Find the general solution of $\\cos 3x + \\cos x = \\cos 2x$. *(5 marks)*`,
    `**Q10.** In triangle $ABC$, $a=7$, $b=8$, and $c=9$.\n\n(a) Find all angles of the triangle correct to the nearest $0.1^\\circ$. *(4 marks)*\n\n(b) Find the area of the triangle using Heron's formula. *(3 marks)*\n\n(c) Hence find the radius of the incircle and the circumcircle. *(5 marks)*`,
    `**Q11.** (a) Prove that $\\cosh^2 x - \\sinh^2 x = 1$. *(3 marks)*\n\n(b) Solve $\\cosh x + 3\\sinh x = 5$, giving exact answers in logarithmic form. *(6 marks)*\n\n(c) Evaluate $\\displaystyle\\int_0^{1/2}\\tanh^{-1}x\\,dx$. *(5 marks)*`,
    `**Q12.** (a) Solve $\\log_3(x+5)+\\log_9(x+5)=\\log_3(x+5)\\log_9(x+5)+1$ for $x>-5$. *(5 marks)*\n\n(b) Show that $\\dfrac{\\ln 2}{\\ln 3}\\cdot\\dfrac{\\ln 3}{\\ln 5}\\cdot\\dfrac{\\ln 5}{\\ln 8}=\\dfrac13$. *(3 marks)*\n\n(c) Find the exact solution of $2^x=3^{x-1}5^{2-x}$. *(5 marks)*`,
    `**Q13.** The complex number $z$ satisfies $|z-3i|=|z+3|$ and $\\arg(z-1)=\\dfrac{\\pi}{4}$.\n\n(a) Describe each locus geometrically and sketch them on an Argand diagram. *(4 marks)*\n\n(b) Find the complex number satisfying both conditions. *(4 marks)*\n\n(c) Find all cube roots of $-8i$ in exact polar form. *(5 marks)*`,
    `**Q14.** (a) Differentiate from first principles $f(x)=\\dfrac{1}{\\sqrt{2x+1}}$. *(4 marks)*\n\n(b) Given $y=x^{\\sin x}$, $x>0$, find $\\dfrac{dy}{dx}$. *(5 marks)*\n\n(c) The equation $e^{xy}=x+y$ defines $y$ implicitly. Find $\\dfrac{dy}{dx}$ at $(1,0)$. *(4 marks)*`,
    `**Q15.** A curve is defined parametrically by $x=\\dfrac{3t}{1+t^3}$ and $y=\\dfrac{3t^2}{1+t^3}$, $t \\neq -1$.\n\n(a) Show that $x^3+y^3=3xy$. *(3 marks)*\n\n(b) Find the equation of the tangent at $t=1$. *(4 marks)*\n\n(c) Show that $x+y+1=0$ is an asymptote. *(4 marks)*`,
    `**Q16.** (a) Use the Mean Value Theorem to prove that for $0<a<b$, $\\dfrac{b-a}{b}<\\ln\\dfrac{b}{a}<\\dfrac{b-a}{a}$. *(5 marks)*\n\n(b) Find the stationary points of $y=x^3-6x^2+9x+4$ and determine their nature. *(5 marks)*`,
    `**Q17.** (a) Evaluate $\\displaystyle\\int \\dfrac{2x+5}{x^2+5x+6}\\,dx$. *(4 marks)*\n\n(b) Use integration by parts to evaluate $\\displaystyle\\int_0^1 x^2e^x\\,dx$. *(5 marks)*\n\n(c) Find the area enclosed by $y=x^2$ and $y=2x+3$. *(5 marks)*`,
    `**Q18.** (a) Find a reduction formula for $I_n=\\displaystyle\\int_0^{\\pi/2}\\sin^n x\\,dx$. *(6 marks)*\n\n(b) Hence evaluate $I_6$. *(3 marks)*\n\n(c) Use the result to estimate $\\displaystyle\\int_0^{\\pi/2}\\sin^6x\\cos^2x\\,dx$. *(5 marks)*`,
    `**Q19.** A particle moves in a straight line with displacement $s=t^3-6t^2+9t+4$ metres after $t$ seconds.\n\n(a) Find its velocity and acceleration at time $t$. *(3 marks)*\n\n(b) Determine when the particle is at rest. *(3 marks)*\n\n(c) Find the total distance travelled in the first 5 seconds. *(6 marks)*`,
    `**Q20.** A projectile is fired with speed $40\\,\\text{m s}^{-1}$ at an angle $30^\\circ$ to the horizontal from level ground.\n\n(a) Find the time of flight. *(3 marks)*\n\n(b) Find the greatest height reached. *(3 marks)*\n\n(c) Find the horizontal range, taking $g=10\\,\\text{m s}^{-2}$. *(4 marks)*`,
    `**Q21.** A body of mass $5\\,\\text{kg}$ rests on a rough plane inclined at $30^\\circ$ to the horizontal. The coefficient of friction is $0.25$.\n\n(a) Find the component of weight down the plane. *(2 marks)*\n\n(b) Determine whether the body will slide. *(4 marks)*\n\n(c) Find the least force parallel to the plane needed to move the body upwards. *(5 marks)*`,
    `**Q22.** Two particles of masses $3\\,\\text{kg}$ and $5\\,\\text{kg}$ are connected by a light inextensible string over a smooth pulley.\n\n(a) Find the acceleration of the system. *(4 marks)*\n\n(b) Find the tension in the string. *(4 marks)*\n\n(c) State how your answer changes if the pulley is rough. *(2 marks)*`,
    `**Q23.** A random variable $X$ has probability distribution $P(X=x)=kx$ for $x=1,2,3,4$.\n\n(a) Find $k$. *(2 marks)*\n\n(b) Find $E(X)$ and $\\operatorname{Var}(X)$. *(5 marks)*\n\n(c) Find $P(X\\geq 3\\mid X>1)$. *(3 marks)*`,
    `**Q24.** The marks of 60 candidates are grouped as follows: $0-9:4$, $10-19:8$, $20-29:15$, $30-39:18$, $40-49:10$, $50-59:5$.\n\n(a) Estimate the mean mark. *(4 marks)*\n\n(b) Estimate the median. *(4 marks)*\n\n(c) Draw a cumulative frequency curve and use it to estimate the interquartile range. *(5 marks)*`,
    `**Q25.** A sample of 100 bulbs has mean lifetime 1240 hours and standard deviation 80 hours.\n\n(a) Construct a 95% confidence interval for the population mean. *(5 marks)*\n\n(b) Test at the 5% level whether the mean lifetime differs from 1200 hours. *(6 marks)*`,
    `**Q26.** (a) Use Newton-Raphson iteration to find a root of $x^3-x-1=0$ starting with $x_0=1$. Give three iterations. *(6 marks)*\n\n(b) Explain, using the graph of the function, why the iteration converges to the real root. *(3 marks)*`,
    `**Q27.** (a) Show that the matrix $A=\\begin{pmatrix}2&1\\\\1&3\\end{pmatrix}$ is invertible and find $A^{-1}$. *(4 marks)*\n\n(b) Solve the system $2x+y=5$, $x+3y=7$ using the inverse matrix method. *(4 marks)*\n\n(c) Interpret the transformation represented by $A$ geometrically. *(4 marks)*`,
    `**Q28.** (a) Prove by induction that $1^2+2^2+\\cdots+n^2=\\dfrac{n(n+1)(2n+1)}{6}$. *(6 marks)*\n\n(b) Hence find $\\sum_{r=1}^{20}(3r^2-2r+1)$. *(4 marks)*`,
    `**Q29.** The roots of $x^2-5x+6=0$ are $\\alpha$ and $\\beta$.\n\n(a) Find a quadratic equation whose roots are $\\alpha^2$ and $\\beta^2$. *(4 marks)*\n\n(b) Find a quadratic equation whose roots are $\\dfrac{1}{\\alpha}$ and $\\dfrac{1}{\\beta}$. *(4 marks)*\n\n(c) Hence evaluate $\\alpha^4+\\beta^4$. *(3 marks)*`,
    `**Q30.** (a) Solve $|2x-3|+|x+1|=8$. *(5 marks)*\n\n(b) Solve $\\dfrac{x^2-4x+3}{x^2-x-6}\\leq 0$. *(5 marks)*\n\n(c) Represent both solution sets on separate number lines. *(2 marks)*`,
    `**Q31.** (a) Find the equation of the circle passing through $(1,2)$, $(3,4)$, and $(5,0)$. *(6 marks)*\n\n(b) Find the tangent to the circle at $(1,2)$. *(4 marks)*`,
    `**Q32.** A line $y=mx+c$ is tangent to the parabola $y=x^2-4x+1$.\n\n(a) Find the condition relating $m$ and $c$. *(5 marks)*\n\n(b) Find the two tangents from the point $(0,-3)$ to the parabola. *(6 marks)*`,
    `**Q33.** (a) Solve $\\sin x + \\sqrt3\\cos x = 1$ for $0\\leq x\\leq 2\\pi$. *(5 marks)*\n\n(b) Prove that $\\dfrac{1-\\cos 2x}{\\sin 2x}=\\tan x$ where both sides are defined. *(3 marks)*\n\n(c) Find all $x$ such that $\\tan 2x=\\sqrt3$ in the interval $0^\\circ\\leq x\\leq 180^\\circ$. *(4 marks)*`,
    `**Q34.** The arithmetic progression has first term $a$ and common difference $d$. The 5th term is 17 and the sum of the first 10 terms is 200.\n\n(a) Find $a$ and $d$. *(5 marks)*\n\n(b) Find the least value of $n$ for which the sum of the first $n$ terms exceeds 500. *(5 marks)*`,
    `**Q35.** A geometric progression has first term 81 and common ratio $\\dfrac{2}{3}$.\n\n(a) Find the 8th term. *(3 marks)*\n\n(b) Find the sum to infinity. *(3 marks)*\n\n(c) Find the number of terms required for the partial sum to exceed 230. *(5 marks)*`,
    `**Q36.** (a) Solve the differential equation $\\dfrac{dy}{dx}=3x^2(1+y)$ given that $y=0$ when $x=0$. *(6 marks)*\n\n(b) Find the value of $y$ when $x=1$. *(2 marks)*\n\n(c) Sketch the solution curve. *(3 marks)*`,
    `**Q37.** A population model is given by $P(t)=\\dfrac{5000}{1+4e^{-0.3t}}$.\n\n(a) Find the initial population. *(2 marks)*\n\n(b) Find the time when the population first reaches 3000. *(4 marks)*\n\n(c) State the limiting population as $t\\to\\infty$. *(2 marks)*`,
    `**Q38.** (a) Use Simpson's rule with four strips to estimate $\\displaystyle\\int_0^2 \\dfrac{1}{1+x^2}\\,dx$. *(6 marks)*\n\n(b) Compare your estimate with $\\tan^{-1}2$ and comment on the accuracy. *(4 marks)*`,
    `**Q39.** The vectors $\\mathbf{a}=2\\mathbf{i}-\\mathbf{j}+3\\mathbf{k}$ and $\\mathbf{b}=\\mathbf{i}+4\\mathbf{j}-2\\mathbf{k}$ are given.\n\n(a) Find $\\mathbf{a}\\cdot\\mathbf{b}$ and the angle between them. *(5 marks)*\n\n(b) Find $\\mathbf{a}\\times\\mathbf{b}$. *(4 marks)*\n\n(c) Find the area of the parallelogram formed by $\\mathbf{a}$ and $\\mathbf{b}$. *(3 marks)*`,
    `**Q40.** The plane $2x-y+3z=6$ meets the coordinate axes at $A$, $B$, and $C$.\n\n(a) Find the coordinates of $A$, $B$, and $C$. *(3 marks)*\n\n(b) Find the area of triangle $ABC$. *(5 marks)*\n\n(c) Find the shortest distance from the origin to the plane. *(4 marks)*`,
  ];

  return questions[n - 1];
}

function ordinaryMathQuestion(n) {
  const questions = [
    `**Q1.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(8 marks)*`,
    `**Q2.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.\n\n(a) Find the selling price. *(3 marks)*\n\n(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(4 marks)*`,
    `**Q3.** Simplify $\\dfrac{2x^2-5x-3}{x^2-9}\\div\\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(8 marks)*`,
    `**Q4.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.\n\n(a) Find the gradient of $AB$. *(2 marks)*\n\n(b) Find $k$ if $AB$ is perpendicular to $AC$. *(5 marks)*`,
    `**Q5.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.\n\n(a) Draw a Venn diagram. *(3 marks)*\n\n(b) Find the number who study neither subject. *(4 marks)*`,
    `**Q6.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(6 marks)*`,
    `**Q7.** A sector of a circle has radius 14 cm and angle $135^\\circ$.\n\n(a) Find the length of the arc. *(3 marks)*\n\n(b) Find the area of the sector. *(3 marks)*`,
    `**Q8.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.\n\n(a) Find the mean, median, and mode. *(5 marks)*\n\n(b) Find the range and interquartile range. *(4 marks)*`,
    `**Q9.** Solve $\\sin x=0.5$ for $0^\\circ\\leq x\\leq 360^\\circ$. *(5 marks)*`,
    `**Q10.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.\n\n(a) Find the height reached on the wall. *(3 marks)*\n\n(b) Find the angle the ladder makes with the ground. *(3 marks)*`,
  ];

  const base = questions[(n - 1) % questions.length];
  const cycle = Math.floor((n - 1) / questions.length);
  if (cycle === 0) return base;
  return base
    .replace(`**Q${((n - 1) % questions.length) + 1}.**`, `**Q${n}.**`)
    .replace(/\*\((\d+) marks\)\*/g, (_, m) => `*(${Number(m) + cycle} marks)*`);
}

const advancedMathSectionTitles = [
  "ALGEBRA - Polynomials, Inequalities and Partial Fractions",
  "FUNCTIONS, SERIES AND TRIGONOMETRY",
  "LOGARITHMS, COMPLEX NUMBERS AND DIFFERENTIATION",
  "INTEGRATION AND MECHANICS",
  "STATISTICS, NUMERICAL METHODS AND MATRICES",
  "PROOF, COORDINATE GEOMETRY AND SEQUENCES",
  "DIFFERENTIAL EQUATIONS, MODELS AND NUMERICAL INTEGRATION",
  "VECTORS AND THREE-DIMENSIONAL GEOMETRY",
];

const ordinaryMathSectionTitles = [
  "NUMBER, ALGEBRA AND COMMERCIAL ARITHMETIC",
  "GEOMETRY, SETS AND STATISTICS",
  "TRIGONOMETRY, MENSURATION AND EQUATIONS",
  "ALGEBRAIC FRACTIONS AND COORDINATE GEOMETRY",
  "PROBABILITY, VECTORS AND TRANSFORMATIONS",
  "NUMBER, ALGEBRA AND COMMERCIAL ARITHMETIC",
  "GEOMETRY, SETS AND STATISTICS",
  "TRIGONOMETRY, MENSURATION AND EQUATIONS",
];

function question(subject, topics, paper, n) {
  const topic = topics[(n + paper - 2) % topics.length];
  const m = marks(n);
  const task = subjectTask(subject, topic, n, paper);

  if (isMath(subject)) {
    if (/^mathematics$/i.test(subject)) return ordinaryMathQuestion(n);
    return advancedMathQuestion(n);
  }

  if (isScience(subject)) {
    return `**Q${n}.** ${topic}: ${task}\n\n(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*\n\n(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(${m} marks)*\n\n(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*`;
  }

  if (isHumanities(subject)) {
    return `**Q${n}.** ${topic}: ${task}\n\n(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*\n\n(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(${m} marks)*\n\n(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*`;
  }

  if (isBusiness(subject)) {
    return `**Q${n}.** ${topic}: ${task}\n\n(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*\n\n(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(${m} marks)*\n\n(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*`;
  }

  return `**Q${n}.** ${topic}: ${task}\n\n(a) Explain the key concept tested by the question. *(4 marks)*\n\n(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(${m} marks)*\n\n(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*`;
}

function paperBody(subject, level, classLevel, series, topics, paper) {
  const lines = [
    `# ${cleanTitle(subject, paper)}`,
    "",
    `## Structural Question Bank - Set ${paper}`,
    "",
    `**Level:** ${level === "advanced" ? "Advanced Level" : "Ordinary Level"}`,
    `**Class:** ${classLevel.replace("_", " ").toUpperCase()}`,
    `**Series:** ${series}`,
    `**Subject:** ${subject}`,
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
  ];

  for (let section = 0; section < 8; section += 1) {
    const sectionTitle = isMath(subject)
      ? /^mathematics$/i.test(subject)
        ? ordinaryMathSectionTitles[section]
        : advancedMathSectionTitles[section]
      : topics[section].toUpperCase();
    lines.push(`## SECTION ${section + 1}: ${sectionTitle}`, "");
    for (let offset = 1; offset <= 5; offset += 1) {
      const n = section * 5 + offset;
      lines.push(question(subject, [topics[section]], paper, n), "", "---", "");
    }
  }

  return lines.join("\n").trim() + "\n";
}

mkdirSync(outDir, { recursive: true });

const manifest = ["subject,level,class_level,series,paper,title,path"];

for (const [subject, level, classLevel, series, topics] of subjects) {
  const subjectDir = join(outDir, slug(subject));
  mkdirSync(subjectDir, { recursive: true });

  for (let paper = 1; paper <= 3; paper += 1) {
    const title = cleanTitle(subject, paper);
    const path = join(subjectDir, `set-${paper}.md`);
    writeFileSync(path, paperBody(subject, level, classLevel, series, topics, paper));
    manifest.push(
      `"${subject}",${level},${classLevel},"${series}",${paper},"${title}","${path.replace(process.cwd() + "/", "")}"`,
    );
  }
}

writeFileSync(join(outDir, "manifest.csv"), manifest.join("\n") + "\n");
writeFileSync(
  join(outDir, "README.md"),
  `# StudySpark Structural Papers\n\nThis folder contains upload-ready Markdown structural question papers.\n\n- Subjects: ${subjects.length}\n- Papers per subject: 3\n- Questions per paper: 40\n- Total papers: ${subjects.length * 3}\n- Total questions: ${subjects.length * 3 * 40}\n\nUse \`manifest.csv\` to track subject, level, class, series, title, and path when uploading through the admin panel.\n\nThese papers are original StudySpark drafts aligned to Cameroon GCE-style structural practice. They should be reviewed by a qualified subject teacher before high-stakes publication.\n`,
);

console.log(`Generated ${subjects.length * 3} papers in ${outDir}`);
