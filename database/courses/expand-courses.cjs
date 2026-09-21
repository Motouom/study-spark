const fs = require("fs");
const path = require("path");

const BASE = __dirname;
const ENV_PATH = path.join(BASE, "..", "..", ".env.local");

function loadEnv() {
  const env = {};
  try {
    const raw = fs.readFileSync(ENV_PATH, "utf8");
    for (const line of raw.split("\n")) {
      const match = line.match(/^([A-Z0-9_]+)=(.*)$/);
      if (match) env[match[1]] = match[2].replace(/^["']|["']$/g, "");
    }
  } catch {
    // .env.local may not exist; rely on process.env.
  }
  return { ...process.env, ...env };
}

const env = loadEnv();
const apiKey = env.OPENROUTER_API_KEY || env.AI_API_KEY;
const model = MODELS[0];
const baseUrl = env.AI_BASE_URL || "https://openrouter.ai/api/v1";

if (!apiKey) {
  console.error("No OPENROUTER_API_KEY found in .env.local — cannot expand courses.");
  process.exit(1);
}

const COURSES = [
  { file: "ordinary/mathematics.md", subject: "Mathematics" },
  { file: "ordinary/english-language.md", subject: "English Language" },
  { file: "ordinary/physics.md", subject: "Physics" },
  { file: "ordinary/chemistry.md", subject: "Chemistry" },
  { file: "ordinary/biology.md", subject: "Biology" },
  { file: "ordinary/economics.md", subject: "Economics" },
  { file: "ordinary/commerce.md", subject: "Commerce" },
  { file: "ordinary/computer-science.md", subject: "Computer Science" },
  { file: "ordinary/ict.md", subject: "ICT" },
  { file: "ordinary/french.md", subject: "French" },
  { file: "ordinary/history.md", subject: "History" },
  { file: "ordinary/geography.md", subject: "Geography" },
  { file: "ordinary/citizenship-education.md", subject: "Citizenship Education" },
  { file: "ordinary/religious-studies.md", subject: "Religious Studies" },
  { file: "ordinary/logic.md", subject: "Logic" },
  { file: "ordinary/agricultural-science.md", subject: "Agricultural Science" },
  { file: "ordinary/human-biology.md", subject: "Human Biology" },
  { file: "ordinary/additional-mathematics.md", subject: "Additional Mathematics" },
  { file: "ordinary/food-and-nutrition.md", subject: "Food and Nutrition" },
  { file: "ordinary/english-literature.md", subject: "English Literature" },
  { file: "ordinary/accounting.md", subject: "Accounting" },
  { file: "ordinary/business-studies.md", subject: "Business Studies" },
  { file: "ordinary/geology.md", subject: "Geology" },
  { file: "ordinary/special-bilingual-french.md", subject: "Special Bilingual Education French" },
  { file: "advanced/pure-math-mechanics.md", subject: "Pure Mathematics with Mechanics" },
  { file: "advanced/pure-math-statistics.md", subject: "Pure Mathematics with Statistics" },
  { file: "advanced/further-mathematics.md", subject: "Further Mathematics" },
  { file: "advanced/mathematics.md", subject: "Mathematics" },
  { file: "advanced/physics.md", subject: "Physics" },
  { file: "advanced/chemistry.md", subject: "Chemistry" },
  { file: "advanced/biology.md", subject: "Biology" },
  { file: "advanced/economics.md", subject: "Economics" },
  { file: "advanced/accounting.md", subject: "Accounting" },
  { file: "advanced/english-literature.md", subject: "English Literature" },
  { file: "advanced/english-language.md", subject: "English Language" },
  { file: "advanced/french.md", subject: "French" },
  { file: "advanced/history.md", subject: "History" },
  { file: "advanced/computer-science.md", subject: "Computer Science" },
  { file: "advanced/philosophy.md", subject: "Philosophy" },
  { file: "advanced/food-science-nutrition.md", subject: "Food Science and Nutrition" },
];

const TARGET_WORDS = 3000;
const REQUEST_TIMEOUT_MS = 300000;
const MAX_ATTEMPTS = 4;
const MODELS = [
  env.EXPAND_MODEL || "deepseek/deepseek-v4-flash-0731:free",
  "nex-agi/nex-n2.5-pro:free",
  "openrouter/free",
];

async function callAi(system, prompt, model) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), REQUEST_TIMEOUT_MS);
  try {
    const response = await fetch(`${baseUrl.replace(/\/$/, "")}/chat/completions`, {
      method: "POST",
      headers: {
        Authorization: `Bearer ${apiKey}`,
        "Content-Type": "application/json",
        "HTTP-Referer": env.APP_PUBLIC_URL || "https://studyspark.cm",
        "X-Title": "StudySpark",
      },
      body: JSON.stringify({
        model,
        messages: [
          { role: "system", content: system },
          { role: "user", content: prompt },
        ],
        temperature: 0.4,
        max_tokens: 8000,
      }),
      signal: controller.signal,
    });

    if (!response.ok) {
      const body = await response.text().catch(() => "");
      throw new Error(`HTTP ${response.status} ${body.slice(0, 200)}`);
    }

    const payload = await response.json();
    const content = payload?.choices?.[0]?.message?.content?.trim();
    if (!content) {
      throw new Error(
        `empty AI response (finish=${payload?.choices?.[0]?.finish_reason ?? "?"}, raw=${JSON.stringify(payload).slice(0, 200)})`,
      );
    }
    return content;
  } finally {
    clearTimeout(timer);
  }
}

async function expandCourse(course) {
  const filePath = path.join(BASE, course.file);
  if (!fs.existsSync(filePath)) {
    console.error("MISSING FILE: " + course.file);
    return false;
  }
  const current = fs.readFileSync(filePath, "utf8").trim();
  const currentWords = current.split(/\s+/).length;
  if (currentWords >= TARGET_WORDS) {
    console.log(`SKIP ${course.file} (already ${currentWords} words)`);
    return true;
  }

  const isFrench = course.file.includes("french") || course.file.includes("bilingual");
  const system = isFrench
    ? "Vous êtes un professeur expert du GCE du Cameroun. Vous rédigez des cours complets et détaillés de niveau manuel pour les élèves. Répondez en français. Retournez uniquement du Markdown."
    : "You are an expert Cameroon GCE teacher. You write complete, textbook-quality courses for students. Return Markdown only.";

  const prompt = `Expand the following ${course.subject} course outline into a COMPLETE, DETAILED course that a student can actually learn from.

REQUIREMENTS:
- Keep the SAME top-level structure: the "# Title" and every "## Unit" heading must be preserved exactly.
- Under each unit, EXPAND every existing lesson and ADD new lessons so the unit is thorough.
- For every concept: give a clear explanation, 2-4 fully worked examples with step-by-step solutions (GCE style), common mistakes students make, and exam technique.
- Add a "## Practice Questions" section at the end of each unit with 6-10 questions AND a separate "### Answers" block with full solutions.
- Keep the "## How to use this course" section and the "## Final exam strategy" section, expanding them.
- Use Cameroon GCE context: FCFA currency, Cameroon examples, GCE paper structure (Paper 1 MCQ, Paper 2 structured).
- Target at least ${TARGET_WORDS} words total. Be generous with detail — this replaces a textbook chapter.
- Do NOT invent exam dates or official statistics. Do NOT use tables for content (Markdown lists and headings only).
- Return ONLY the Markdown, starting with "# ".

CURRENT COURSE CONTENT (expand this):
${current}`;

  for (let attempt = 1; attempt <= MAX_ATTEMPTS; attempt += 1) {
    const model = MODELS[(attempt - 1) % MODELS.length];
    try {
      const content = await callAi(system, prompt, model);
      const words = content.split(/\s+/).length;
      if (words < currentWords) {
        console.error(
          `FAIL ${course.file}: AI output (${words} words) shorter than current (${currentWords})`,
        );
        return false;
      }
      fs.writeFileSync(filePath, content + "\n");
      console.log(`OK   ${course.file}: ${currentWords} -> ${words} words (${model})`);
      return true;
    } catch (error) {
      const message = error instanceof Error ? error.message : String(error);
      console.error(`RETRY ${course.file} (${attempt}/${MAX_ATTEMPTS}, ${model}): ${message}`);
      await new Promise((resolve) => setTimeout(resolve, 10000 * attempt));
    }
  }
  return false;
}

async function main() {
  const only = process.argv[2];
  const targets = only ? COURSES.filter((c) => c.file.includes(only)) : COURSES;
  console.log(`Expanding ${targets.length} courses with model ${model}...`);

  let ok = 0;
  let fail = 0;
  for (const course of targets) {
    const success = await expandCourse(course);
    if (success) ok += 1;
    else fail += 1;
    // Small delay to be gentle on rate limits.
    await new Promise((resolve) => setTimeout(resolve, 1500));
  }

  console.log(`\nDone: ${ok} expanded, ${fail} failed.`);
  if (fail > 0) process.exitCode = 1;
}

main().catch((error) => {
  console.error("Fatal:", error);
  process.exit(1);
});
