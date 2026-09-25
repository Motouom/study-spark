import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { join } from "node:path";

const manifestPath = join(process.cwd(), "content", "papers", "manifest.csv");
const outDir = join(process.cwd(), "content", "papers", "import-sql");
const schemaMigrationPaths = [
  "020_premium_paper_access.sql",
  "021_premium_features.sql",
  "023_fapshi_payments.sql",
].map((fileName) => join(process.cwd(), "database", "supabase", fileName));

const classLevelsByLevel = {
  ordinary: ["form_3", "form_4", "form_5"],
  advanced: ["lower_sixth", "upper_sixth"],
};
const broadSeries = [
  "general",
  "science",
  "arts",
  "commercial",
  "technical",
  "a_science",
  "a_arts",
  "a_commercial",
  "a_technical",
];

function sql(value) {
  return `'${String(value).replace(/'/g, "''")}'`;
}

function parseManifest() {
  const lines = readFileSync(manifestPath, "utf8").split("\n").slice(1).filter(Boolean);

  return lines.map((line) => {
    const match = line.match(/^"([^"]+)",([^,]+),([^,]+),"([^"]+)",(\d+),"([^"]+)","([^"]+)"$/);
    if (!match) {
      throw new Error(`Could not parse manifest line: ${line}`);
    }

    return {
      subject: match[1],
      level: match[2],
      classLevel: match[3],
      series: match[4],
      paper: Number(match[5]),
      title: match[6],
      file: match[7],
    };
  });
}

function upsertStatement(row) {
  const markdown = readFileSync(join(process.cwd(), row.file), "utf8");
  const classLevels = classLevelsByLevel[row.level] ?? classLevelsByLevel.ordinary;

  return `
with chosen_topic as (
  select id
  from public.topics
  where subject = ${sql(row.subject)}
  order by case when level = ${sql(row.level)} then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = ${sql(row.title)}
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  ${sql(row.subject)},
  ${sql(row.title)},
  'english',
  ${sql(row.level)},
  array[${classLevels.map(sql).join(", ")}]::text[],
  array[${broadSeries.map(sql).join(", ")}]::text[],
  'published',
  ${sql(markdown)},
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();
`.trim();
}

const rows = parseManifest();
mkdirSync(outDir, { recursive: true });

const fullImportPath = join(outDir, "all-papers-one-shot.sql");
const allStatements = rows.map(upsertStatement);
const schemaMigrations = schemaMigrationPaths
  .map((migrationPath) => readFileSync(migrationPath, "utf8").trim())
  .join("\n\n");
writeFileSync(
  fullImportPath,
  [
    "-- One-shot StudySpark paper import.",
    "-- Includes Premium feature migrations and all generated published papers.",
    schemaMigrations,
    "begin;",
    ...allStatements,
    "commit;",
    "notify pgrst, 'reload schema';",
  ].join("\n\n"),
);

const chunkPaths = [];
for (let index = 0; index < rows.length; index += 10) {
  const chunkNumber = chunkPaths.length + 1;
  const chunkRows = rows.slice(index, index + 10);
  const filePath = join(outDir, `chunk-${String(chunkNumber).padStart(2, "0")}.sql`);
  writeFileSync(filePath, ["begin;", ...chunkRows.map(upsertStatement), "commit;"].join("\n\n"));
  chunkPaths.push(filePath);
}

writeFileSync(
  join(outDir, "README.md"),
  `# Import SQL chunks

Generated ${rows.length} course document upserts in ${chunkPaths.length} chunks.

For a one-shot import, run:

- \`all-papers-one-shot.sql\`

If the Supabase SQL editor struggles with the full file size, run the chunk files in order.

These chunks update existing papers with the same title and insert missing papers as published course documents.
`,
);

console.log(JSON.stringify({ rows: rows.length, fullImportPath, chunks: chunkPaths }, null, 2));
