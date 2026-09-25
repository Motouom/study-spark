const fs = require("fs");
const path = require("path");
const crypto = require("crypto");

function sqlStr(value) {
  return "'" + String(value).replace(/'/g, "''") + "'";
}

function stableDocumentId(seed) {
  const hex = crypto.createHash("md5").update(`studyspark:${seed}`).digest("hex");
  return `${hex.slice(0, 8)}-${hex.slice(8, 12)}-${hex.slice(12, 16)}-${hex.slice(16, 20)}-${hex.slice(20)}`;
}

function topicIdFor(sheet, level) {
  return `cheat-${level}-${sheet.slug}-${sheet.topic
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "")}`;
}

function enrichCheatsheet(sheet) {
  const cleanBody = sheet.body.trim();
  const isFrench = sheet.language === "french";
  if (isFrench) {
    return `# ${sheet.title}

> **Poids à l'examen :** ${sheet.examWeight ?? "élevé"} · **Temps de maîtrise :** ${sheet.estimatedMinutes ?? 20} min · **Niveau :** ${sheet.level === "advanced" ? "Lycée" : "Form 5"}

${cleanBody}

## Auto-évaluation

Tu es prêt(e) à quitter cette fiche lorsque tu peux :

- [ ] Expliquer chaque notion sans regarder la fiche.
- [ ] Refaire les exercices d'entraînement sans aide.
- [ ] Citer au moins un piège fréquent et l'éviter.
- [ ] Rédiger une réponse d'examen propre et complète avec le bon vocabulaire.`;
  }

  return `# ${sheet.title}

> **Exam weight:** ${sheet.examWeight ?? "high"} · **Time to master:** ${sheet.estimatedMinutes ?? 20} min · **Level:** ${sheet.level === "advanced" ? "Advanced (Lower/Upper Sixth)" : "Ordinary (Form 5)"}

${cleanBody}

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.`;
}

function buildInserts(sheets, level, classLevels, series) {
  const topicInserts = [];
  const docInserts = [];
  for (const sheet of sheets) {
    const topicId = topicIdFor(sheet, level);
    const description = `Detailed revision cheatsheet: ${sheet.topic}.`;
    topicInserts.push(
      `insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)\n` +
        `values (${sqlStr(topicId)}, ${sqlStr(sheet.subject)}, ${sqlStr(sheet.title)}, ${sqlStr(description)}, ${sqlStr(level)}, ` +
        `array[${classLevels.map(sqlStr).join(",")}]::text[], array[${series.map(sqlStr).join(",")}]::text[], 0, ${sheet.estimatedMinutes ?? 20})\n` +
        `on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();`,
    );
    const markdown = enrichCheatsheet(sheet);
    const documentId = stableDocumentId(topicId);
    docInserts.push(
      `insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)\n` +
        `values (${sqlStr(documentId)}::uuid, ${sqlStr(topicId)}, ${sqlStr(sheet.subject)}, ${sqlStr(sheet.title)}, ${sqlStr(sheet.language ?? "english")}, ${sqlStr(level)}, ` +
        `array[${classLevels.map(sqlStr).join(",")}]::text[], array[${series.map(sqlStr).join(",")}]::text[], 'published', 'cheatsheet', 'cheatsheet', ${sqlStr(markdown)})\n` +
        `on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, ` +
        `level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, ` +
        `content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();`,
    );
  }
  return { topicInserts, docInserts };
}

function main() {
  const ordinary = require("./ordinary/index.cjs");
  const advanced = require("./advanced/index.cjs");

  const ordinarySql = buildInserts(
    ordinary,
    "ordinary",
    ["form_3", "form_4", "form_5"],
    ["general", "science", "arts", "commercial", "technical"],
  );
  const advancedSql = buildInserts(
    advanced,
    "advanced",
    ["lower_sixth", "upper_sixth"],
    ["a_science", "a_arts", "a_commercial"],
  );

  const write = (file, inserts) => {
    const sql = ["begin;", ...inserts.topicInserts, ...inserts.docInserts, "commit;"].join("\n\n");
    fs.writeFileSync(path.join(__dirname, file), sql);
    console.log(
      `Generated ${file}: ${inserts.topicInserts.length} cheatsheets, ${(sql.length / 1024).toFixed(0)} KB`,
    );
  };

  write("insert_cheatsheets_v2_ordinary.sql", ordinarySql);
  write("insert_cheatsheets_v2_advanced.sql", advancedSql);
}

main();
