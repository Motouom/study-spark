import { createHash } from "node:crypto";
import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { join } from "node:path";

// Generates database/supabase/052_french_papers.sql from the Francophone
// paper markdown in content/papers/. Run: node scripts/build-french-papers-sql.mjs
//
// Subject values must be selectable in the target series (study-reference-data
// FR_SERIES_SUBJECTS), otherwise the RPC (profile.subjects filter) hides them.

const root = process.cwd();
const papersDir = join(root, "content", "papers");
const outDir = join(root, "database", "supabase");
const outPath = join(outDir, "052_french_papers.sql");

function sql(value) {
  return `'${String(value).replace(/'/g, "''")}'`;
}

function list(values) {
  return `array[${values.map(sql).join(", ")}]::text[]`;
}

// Deterministic UUID (v5-shaped) so re-running the generator keeps ids stable
// and the migration stays idempotent via ON CONFLICT (id).
function uuid(name) {
  const hash = createHash("sha1").update(`study-spark:${name}`).digest();
  const bytes = [...hash.slice(0, 16)];
  bytes[6] = (bytes[6] & 0x0f) | 0x50;
  bytes[8] = (bytes[8] & 0x3f) | 0x80;
  const hex = bytes.map((b) => b.toString(16).padStart(2, "0")).join("");
  return `${hex.slice(0, 8)}-${hex.slice(8, 12)}-${hex.slice(12, 16)}-${hex.slice(16, 20)}-${hex.slice(20, 32)}`;
}

// Topics that do not exist yet in 049/051 but are required as FK targets.
const newTopics = [
  {
    id: "fr-stt-economie-entreprise",
    subject: "Économie d'Entreprise",
    title: "Markets, enterprise and national economy — Probatoire/Bac STT",
    description:
      "Supply, demand, enterprise, money, inflation, growth, unemployment, public finance and basic economic reasoning.",
    level: "advanced",
    classLevels: ["premiere", "terminale"],
    series: ["acc", "cg", "fig", "ses", "ti"],
    questionCount: 28,
    estimatedMinutes: 125,
  },
  {
    id: "fr-bac-maths-appliquees",
    subject: "Mathématiques Appliquées",
    title: "Applied mathematics — Baccalauréat STT",
    description:
      "Practical algebra, functions, statistics, financial mathematics and applied modelling for the STT Baccalauréat.",
    level: "advanced",
    classLevels: ["terminale"],
    series: ["acc", "cg", "fig", "ses"],
    questionCount: 24,
    estimatedMinutes: 120,
  },
  {
    id: "fr-bac-ses",
    subject: "Sciences Économiques et Sociales",
    title: "Economics and social sciences — Baccalauréat SES",
    description:
      "Economic reasoning, social structures, institutions, inequality, globalisation and data interpretation for the SES series.",
    level: "advanced",
    classLevels: ["terminale"],
    series: ["ses"],
    questionCount: 26,
    estimatedMinutes: 120,
  },
];

// One entry per paper folder. `topicId` must already exist (049/051) or be
// created above. `series` lists only series where `subject` is selectable.
const folders = [
  {
    folder: "mathematiques",
    subject: "Mathématiques",
    level: "ordinary",
    classLevels: ["troisieme"],
    series: ["tronc_commun"],
    exam: "BEPC",
    topicId: "fr-bepc-math-equations",
  },
  {
    folder: "physique-chimie",
    subject: "Physique-Chimie",
    level: "ordinary",
    classLevels: ["troisieme"],
    series: ["tronc_commun"],
    exam: "BEPC",
    topicId: "fr-bepc-pc-electricite-chimie",
  },
  {
    folder: "svt",
    subject: "Sciences de la Vie et de la Terre",
    level: "ordinary",
    classLevels: ["troisieme"],
    series: ["tronc_commun"],
    exam: "BEPC",
    topicId: "fr-bepc-svt-vivant-terre",
  },
  {
    folder: "histoire-geographie",
    subject: "Histoire-Géographie",
    level: "ordinary",
    classLevels: ["troisieme"],
    series: ["tronc_commun"],
    exam: "BEPC",
    topicId: "fr-bepc-hg-cameroun-afrique",
  },
  {
    folder: "francais",
    subject: "Français",
    level: "ordinary",
    classLevels: ["troisieme"],
    series: ["tronc_commun"],
    exam: "BEPC",
    topicId: "fr-bepc-francais-expression",
  },
  {
    folder: "anglais-fr",
    subject: "Anglais",
    level: "ordinary",
    classLevels: ["troisieme"],
    series: ["tronc_commun"],
    exam: "BEPC",
    topicId: "fr-bepc-anglais-communication",
  },
  {
    folder: "ecm",
    subject: "Éducation à la Citoyenneté et à la Morale",
    level: "ordinary",
    classLevels: ["troisieme"],
    series: ["tronc_commun"],
    exam: "BEPC",
    topicId: "fr-bepc-ecm-citoyennete",
  },
  {
    folder: "informatique-fr",
    subject: "Informatique",
    level: "ordinary",
    classLevels: ["troisieme"],
    series: ["tronc_commun"],
    exam: "BEPC",
    topicId: "fr-bepc-info-bureautique",
  },
  {
    folder: "economie-fr",
    // "Économie" is not selectable in any series; "Économie d'Entreprise" is.
    subject: "Économie d'Entreprise",
    level: "advanced",
    classLevels: ["premiere"],
    series: ["acc", "cg", "fig", "ses", "ti"],
    exam: "Probatoire",
    topicId: "fr-stt-economie-entreprise",
  },
  {
    folder: "comptabilite",
    subject: "Comptabilité",
    level: "advanced",
    classLevels: ["premiere"],
    series: ["cg", "fig"],
    exam: "Probatoire",
    topicId: "fr-stt-economie-comptabilite",
  },
  {
    folder: "philosophie",
    subject: "Philosophie",
    level: "advanced",
    classLevels: ["terminale"],
    series: ["a1", "a2", "a4"],
    exam: "Baccalauréat",
    topicId: "fr-premiere-a4-philo-methodologie",
  },
  {
    folder: "mathematiques-appliquees",
    subject: "Mathématiques Appliquées",
    level: "advanced",
    classLevels: ["terminale"],
    series: ["acc", "cg", "fig", "ses"],
    exam: "Baccalauréat",
    topicId: "fr-bac-maths-appliquees",
  },
  {
    folder: "ses",
    subject: "Sciences Économiques et Sociales",
    level: "advanced",
    classLevels: ["terminale"],
    series: ["ses"],
    exam: "Baccalauréat",
    topicId: "fr-bac-ses",
  },
];

const papers = [];
for (const meta of folders) {
  for (const set of [1, 2, 3]) {
    const rel = `content/papers/${meta.folder}/set-${set}.md`;
    const markdown = readFileSync(join(root, rel), "utf8");
    const heading = markdown.split("\n").find((line) => line.startsWith("# "));
    if (!heading) throw new Error(`No H1 heading found in ${rel}`);
    const title = heading.replace(/^#\s+/, "").trim();
    papers.push({ ...meta, set, title, markdown });
  }
}

const topicRows = newTopics
  .map(
    (t) =>
      `  (${sql(t.id)}, ${sql(t.subject)}, ${sql(t.title)}, ${sql(t.description)},\n` +
      `   ${sql(t.level)}, ${list(t.classLevels)}, ${list(t.series)}, ${t.questionCount}, ${t.estimatedMinutes})`,
  )
  .join(",\n");

const paperRows = papers
  .map((p) => {
    const changeNote = `Adds francophone ${p.exam} ${p.subject} practice paper set ${p.set}`;
    return (
      `(\n` +
      `  ${sql(uuid(`paper:${p.folder}:${p.set}`))},\n` +
      `  ${sql(p.topicId)},\n` +
      `  ${sql(p.subject)},\n` +
      `  ${sql(p.title)},\n` +
      `  'french',\n` +
      `  ${sql(p.level)},\n` +
      `  ${list(p.classLevels)},\n` +
      `  ${list(p.series)},\n` +
      `  'published',\n` +
      `  $md$\n${p.markdown}$md$,\n` +
      `  'paper',\n` +
      `  'paper',\n` +
      `  'francophone',\n` +
      `  ${sql(p.exam)},\n` +
      `  '2026',\n` +
      `  'teacher_authored',\n` +
      `  'StudySpark authored francophone practice paper',\n` +
      `  'approved',\n` +
      `  'approved',\n` +
      `  '1.0.0',\n` +
      `  ${sql(changeNote)}\n` +
      `)`
    );
  })
  .join(",\n");

const topicUpdate = `on conflict (id) do update set
  subject = excluded.subject,
  title = excluded.title,
  description = excluded.description,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  question_count = excluded.question_count,
  estimated_minutes = excluded.estimated_minutes,
  updated_at = now();`;

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

const output = `begin;

-- Francophone practice papers (BEPC / Probatoire / Baccalauréat).
-- Generated by scripts/build-french-papers-sql.mjs from content/papers/.
-- Requires migrations 049 and 051 to have run first (they seed the reused topics).
-- Subject values are chosen so a French profile can actually select them
-- (profile.subjects filter in list_allowed_course_documents).

insert into public.topics (
  id, subject, title, description, level, class_levels, series, question_count, estimated_minutes
)
values
${topicRows}
${topicUpdate}

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

mkdirSync(outDir, { recursive: true });
writeFileSync(outPath, output);
console.log(JSON.stringify({ outPath, topics: newTopics.length, papers: papers.length }, null, 2));
