const fs = require("fs");
const path = require("path");

const BASE = __dirname;

const O_SERIES = ["general", "science", "arts", "commercial", "technical"];
const A_SERIES = ["a_science", "a_arts", "a_commercial"];
const O_CLASSES = ["form_3", "form_4", "form_5"];
const A_CLASSES = ["lower_sixth", "upper_sixth"];

const COURSES = [
  { file: "ordinary/mathematics.md", subject: "Mathematics", slug: "math" },
  { file: "ordinary/english-language.md", subject: "English Language", slug: "eng" },
  { file: "ordinary/physics.md", subject: "Physics", slug: "phys" },
  { file: "ordinary/chemistry.md", subject: "Chemistry", slug: "chem" },
  { file: "ordinary/biology.md", subject: "Biology", slug: "bio" },
  { file: "ordinary/economics.md", subject: "Economics", slug: "econ" },
  { file: "ordinary/commerce.md", subject: "Commerce", slug: "comm" },
  { file: "ordinary/computer-science.md", subject: "Computer Science", slug: "cs" },
  { file: "ordinary/ict.md", subject: "ICT", slug: "ict" },
  { file: "ordinary/french.md", subject: "French", slug: "fr", language: "french" },
  { file: "ordinary/history.md", subject: "History", slug: "hist" },
  { file: "ordinary/geography.md", subject: "Geography", slug: "geo" },
  { file: "ordinary/citizenship-education.md", subject: "Citizenship Education", slug: "civ" },
  { file: "ordinary/religious-studies.md", subject: "Religious Studies", slug: "rel" },
  { file: "ordinary/logic.md", subject: "Logic", slug: "log" },
  { file: "ordinary/agricultural-science.md", subject: "Agricultural Science", slug: "agr" },
  { file: "ordinary/human-biology.md", subject: "Human Biology", slug: "hbio" },
  { file: "ordinary/additional-mathematics.md", subject: "Additional Mathematics", slug: "amath" },
  { file: "ordinary/food-and-nutrition.md", subject: "Food and Nutrition", slug: "fnut" },
  { file: "ordinary/english-literature.md", subject: "English Literature", slug: "lit" },
  { file: "ordinary/accounting.md", subject: "Accounting", slug: "acct" },
  { file: "ordinary/business-studies.md", subject: "Business Studies", slug: "biz" },
  { file: "ordinary/geology.md", subject: "Geology", slug: "geol" },
  {
    file: "ordinary/special-bilingual-french.md",
    subject: "Special Bilingual Education French",
    slug: "sbf",
    language: "french",
  },
  {
    file: "advanced/pure-math-mechanics.md",
    subject: "Pure Mathematics with Mechanics",
    slug: "pmm",
  },
  {
    file: "advanced/pure-math-statistics.md",
    subject: "Pure Mathematics with Statistics",
    slug: "pms",
  },
  { file: "advanced/further-mathematics.md", subject: "Further Mathematics", slug: "fmath" },
  { file: "advanced/mathematics.md", subject: "Mathematics", slug: "amaths" },
  { file: "advanced/physics.md", subject: "Physics", slug: "aphys" },
  { file: "advanced/chemistry.md", subject: "Chemistry", slug: "achem" },
  { file: "advanced/biology.md", subject: "Biology", slug: "abio" },
  { file: "advanced/economics.md", subject: "Economics", slug: "aecon" },
  { file: "advanced/accounting.md", subject: "Accounting", slug: "aacct" },
  { file: "advanced/english-literature.md", subject: "English Literature", slug: "alit" },
  { file: "advanced/english-language.md", subject: "English Language", slug: "aeng" },
  { file: "advanced/french.md", subject: "French", slug: "afr", language: "french" },
  { file: "advanced/history.md", subject: "History", slug: "ahist" },
  { file: "advanced/computer-science.md", subject: "Computer Science", slug: "acs" },
  { file: "advanced/philosophy.md", subject: "Philosophy", slug: "phil" },
  {
    file: "advanced/food-science-nutrition.md",
    subject: "Food Science and Nutrition",
    slug: "fsn",
  },
];

function sqlStr(value) {
  return "'" + String(value).replace(/'/g, "''") + "'";
}

function stableCourseId(topicId) {
  // Deterministic UUID from the topic id. Keeping seeded course ids stable
  // prevents reading-progress foreign keys from breaking when content is refreshed.
  const crypto = require("crypto");
  const hex = crypto.createHash("md5").update(`studyspark:${topicId}`).digest("hex");
  return `${hex.slice(0, 8)}-${hex.slice(8, 12)}-${hex.slice(12, 16)}-${hex.slice(16, 20)}-${hex.slice(20)}`;
}

const topicInserts = [];
const docInserts = [];

for (const course of COURSES) {
  const filePath = path.join(BASE, course.file);
  if (!fs.existsSync(filePath)) {
    console.error("MISSING FILE: " + course.file);
    continue;
  }
  const markdown = fs.readFileSync(filePath, "utf8").trim();
  const isAdvanced = course.file.startsWith("advanced/");
  const level = isAdvanced ? "advanced" : "ordinary";
  const series = isAdvanced ? A_SERIES : O_SERIES;
  const classLevels = isAdvanced ? A_CLASSES : O_CLASSES;
  const language = course.language ?? "english";
  const topicId = `course-${course.slug}-${level}`;
  const title = markdown.match(/^# (.+)$/m)?.[1] ?? course.subject + " Course";
  const description =
    markdown.match(/^## How to use this course\n\n(.{0,180})/m)?.[1] ??
    markdown.match(/^## Comment utiliser ce cours\n\n(.{0,180})/m)?.[1] ??
    `Complete structured course for ${course.subject}.`;
  const estimatedMinutes = Math.max(60, Math.round(markdown.length / 120));

  topicInserts.push(
    `insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)\n` +
      `values (${sqlStr(topicId)}, ${sqlStr(course.subject)}, ${sqlStr(title)}, ${sqlStr(description)}, ${sqlStr(level)}, ` +
      `array[${classLevels.map(sqlStr).join(",")}]::text[], array[${series.map(sqlStr).join(",")}]::text[], 0, ${estimatedMinutes})\n` +
      `on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();`,
  );

  const documentId = stableCourseId(topicId);
  docInserts.push(
    `insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)\n` +
      `values (${sqlStr(documentId)}::uuid, ${sqlStr(topicId)}, ${sqlStr(course.subject)}, ${sqlStr(title)}, ${sqlStr(language)}, ${sqlStr(level)}, ` +
      `array[${classLevels.map(sqlStr).join(",")}]::text[], array[${series.map(sqlStr).join(",")}]::text[], 'published', ${sqlStr(markdown)}, 'course', 'course')\n` +
      `on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, ` +
      `level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, ` +
      `content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();`,
  );
}

const sql = ["begin;", ...topicInserts, ...docInserts, "commit;"].join("\n\n");

fs.writeFileSync(path.join(__dirname, "insert_courses.sql"), sql);
fs.writeFileSync(path.join(BASE, "..", "supabase", "033_expanded_gce_course_catalog.sql"), sql);
console.log(`Generated ${topicInserts.length} topics and ${docInserts.length} course documents.`);
console.log("Total SQL size:", (sql.length / 1024).toFixed(0), "KB");
