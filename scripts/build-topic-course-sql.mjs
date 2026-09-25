import { createHash } from "node:crypto";
import { readFileSync, writeFileSync } from "node:fs";
import { join } from "node:path";

const subjects = {
  mathematics: {
    subject: "Mathematics",
    level: "ordinary",
    classLevels: ["form_4", "form_5"],
    series: ["general", "science", "commercial", "technical"],
    archiveTopicId: "course-math-ordinary",
    migrationFile: "066_form5_math_topic_courses.sql",
    topics: [
      {
        id: "math-number-numeration",
        title: "Number and Numeration",
        description:
          "Number bases, fractions, decimals, percentages, ratio, proportion, standard form, indices, logarithms, and commercial arithmetic.",
        file: "01-number-and-numeration.md",
      },
      {
        id: "math-algebra",
        title: "Algebra",
        description:
          "Expressions, factorization, equations, inequalities, sequences, functions, graphs, and coordinate geometry.",
        file: "02-algebra.md",
      },
      {
        id: "math-plane-geometry",
        title: "Plane Geometry",
        description:
          "Angles, triangles, quadrilaterals, polygons, circles, congruency, similarity, and symmetry.",
        file: "03-plane-geometry.md",
      },
      {
        id: "math-trigonometry-ratios",
        title: "Trigonometry",
        description: "Trig ratios, sine rule, cosine rule, bearings, heights, and distances.",
        file: "04-trigonometry.md",
      },
      {
        id: "math-mensuration",
        title: "Mensuration",
        description: "Perimeter, area, volume, and surface area of plane figures and solids.",
        file: "05-mensuration.md",
      },
      {
        id: "math-data-probability",
        title: "Statistics and Probability",
        description: "Data representation, averages, dispersion, and probability.",
        file: "06-statistics-and-probability.md",
      },
      {
        id: "math-sets-matrices",
        title: "Sets and Matrices",
        description: "Set notation, Venn diagrams, matrix operations, determinants, and inverses.",
        file: "07-sets-and-matrices.md",
      },
      {
        id: "math-vectors-transformations",
        title: "Vectors and Transformations",
        description: "Vectors, magnitude, translations, reflections, rotations, and enlargements.",
        file: "08-vectors-and-transformations.md",
      },
    ],
  },
  physics: {
    subject: "Physics",
    level: "ordinary",
    classLevels: ["form_4", "form_5"],
    series: ["science", "technical"],
    archiveTopicId: "course-phys-ordinary",
    migrationFile: "068_form5_physics_topic_courses.sql",
    topics: [
      {
        id: "phys-measurement",
        title: "Measurement",
        description: "SI units, measuring instruments, accuracy, and density.",
        file: "01-measurement.md",
      },
      {
        id: "phys-mechanics",
        title: "Mechanics",
        description:
          "Motion, forces, Newton's laws, work, energy, power, pressure, moments, and machines.",
        file: "02-mechanics.md",
      },
      {
        id: "phys-thermal-physics",
        title: "Thermal Physics",
        description:
          "Temperature, expansion, heat transfer, specific heat capacity, and latent heat.",
        file: "03-thermal-physics.md",
      },
      {
        id: "phys-waves",
        title: "Waves",
        description: "Wave properties, reflection, refraction, light, and sound.",
        file: "04-waves.md",
      },
      {
        id: "phys-electricity",
        title: "Electricity",
        description: "Current, voltage, resistance, Ohm's law, circuits, and electrical power.",
        file: "05-electricity.md",
      },
      {
        id: "phys-magnetism",
        title: "Magnetism and Electromagnetism",
        description:
          "Magnets, magnetic fields, electromagnets, motors, and electromagnetic induction.",
        file: "06-magnetism.md",
      },
      {
        id: "phys-atomic-nuclear",
        title: "Atomic and Nuclear Physics",
        description: "Atomic structure, radioactivity, half-life, and uses of radiation.",
        file: "07-atomic-nuclear.md",
      },
    ],
  },
  "english-language": {
    subject: "English Language",
    level: "ordinary",
    classLevels: ["form_4", "form_5"],
    series: ["general", "science", "arts", "commercial", "technical"],
    archiveTopicId: "course-eng-ordinary",
    migrationFile: "067_form5_english_language_topic_courses.sql",
    topics: [
      {
        id: "eng-comprehension",
        title: "Comprehension",
        description:
          "Reading comprehension, literal and inferential questions, and vocabulary in context.",
        file: "01-comprehension.md",
      },
      {
        id: "eng-summary-writing",
        title: "Summary Writing",
        description:
          "Identifying main points, paraphrasing, and writing concise summaries within a word limit.",
        file: "02-summary-writing.md",
      },
      {
        id: "eng-composition-writing",
        title: "Essay Writing",
        description:
          "Narrative, descriptive, argumentative, and expository essays with clear structure.",
        file: "03-essay-writing.md",
      },
      {
        id: "eng-directed-writing",
        title: "Directed Writing",
        description:
          "Formal and informal letters, reports, speeches, and dialogues with correct format.",
        file: "04-directed-writing.md",
      },
      {
        id: "eng-grammar",
        title: "Grammar",
        description:
          "Tenses, subject-verb agreement, clauses, articles, prepositions, and punctuation.",
        file: "05-grammar.md",
      },
      {
        id: "eng-vocabulary",
        title: "Vocabulary",
        description: "Synonyms, antonyms, word formation, and idioms.",
        file: "06-vocabulary.md",
      },
      {
        id: "eng-register",
        title: "Register",
        description: "Formal and informal language, and choosing the right style for the audience.",
        file: "07-register.md",
      },
      {
        id: "eng-oral-english",
        title: "Oral English",
        description: "Pronunciation, vowel and consonant sounds, word stress, and intonation.",
        file: "08-oral-english.md",
      },
    ],
  },
  chemistry: {
    subject: "Chemistry",
    level: "ordinary",
    classLevels: ["form_4", "form_5"],
    series: ["science", "technical"],
    archiveTopicId: "course-chem-ordinary",
    migrationFile: "069_form5_chemistry_topic_courses.sql",
    topics: [
      {
        id: "chem-atomic-structure",
        title: "Atomic Structure and the Periodic Table",
        description:
          "Subatomic particles, atomic number, mass number, isotopes, electron arrangement, and the periodic table.",
        file: "01-atomic-structure.md",
      },
      {
        id: "chem-bonding",
        title: "Bonding and Structure",
        description:
          "Ionic, covalent, and metallic bonding; giant covalent structures (diamond, graphite); and key comparisons.",
        file: "02-bonding.md",
      },
      {
        id: "chem-stoichiometry",
        title: "Stoichiometry — the Mole",
        description: "The mole, molar mass, balancing equations, concentration, and gas volumes.",
        file: "03-stoichiometry.md",
      },
      {
        id: "chem-acids-bases-salts",
        title: "Acids, Bases and Salts",
        description:
          "Acids, bases, alkalis, neutralisation, salt preparation methods, and common ion tests.",
        file: "04-acids-bases-and-salts.md",
      },
      {
        id: "chem-electrolysis",
        title: "Electrolysis",
        description:
          "Electrolysis of molten ionic compounds and aqueous solutions; electrode products and half-equations.",
        file: "05-electrolysis.md",
      },
      {
        id: "chem-metals-nonmetals",
        title: "Metals and Non-metals",
        description:
          "The reactivity series, extraction of metals, reactions with oxygen/acids, and properties of non-metals.",
        file: "06-metals-and-non-metals.md",
      },
      {
        id: "chem-organic",
        title: "Organic Chemistry",
        description:
          "Alkanes, alkenes, functional groups (alcohols, carboxylic acids), esters, and polymerisation.",
        file: "07-organic-chemistry.md",
      },
    ],
  },
};

function sql(value) {
  return `'${String(value).replace(/'/g, "''")}'`;
}

function uuidFromId(id) {
  const hash = createHash("md5").update(`course:${id}`).digest("hex");
  return `${hash.slice(0, 8)}-${hash.slice(8, 12)}-4${hash.slice(13, 16)}-${(
    (parseInt(hash.slice(16, 17), 16) & 0x3) |
    0x8
  ).toString(16)}${hash.slice(17, 20)}-${hash.slice(20, 32)}`;
}

function arraySql(values) {
  return `array[${values.map(sql).join(", ")}]::text[]`;
}

function buildMigration(config) {
  const coursesDir = join(process.cwd(), "content", "courses", config.slug);
  const statements = [];

  for (const topic of config.topics) {
    const markdown = readFileSync(join(coursesDir, topic.file), "utf8");
    const documentId = uuidFromId(topic.id);

    statements.push(`insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values (${sql(topic.id)}, ${sql(config.subject)}, ${sql(topic.title)}, ${sql(topic.description)}, ${sql(config.level)}, ${arraySql(config.classLevels)}, ${arraySql(config.series)}, 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();`);

    statements.push(`insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values (${sql(documentId)}::uuid, ${sql(topic.id)}, ${sql(config.subject)}, ${sql(topic.title)}, 'english', ${sql(config.level)}, ${arraySql(config.classLevels)}, ${arraySql(config.series)}, 'published', ${sql(markdown)}, 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();`);
  }

  if (config.archiveTopicId) {
    statements.push(`update public.course_documents
set status = 'archived', updated_at = now()
where topic_id = ${sql(config.archiveTopicId)} and status = 'published';`);
  }

  const migration = `-- ${config.subject} (${config.level}): one course per GCE curriculum topic.
-- Replaces the single "Complete O-Level ${config.subject} Course" with concise,
-- example-rich topic courses.

begin;

${statements.join("\n\n")}

commit;

notify pgrst, 'reload schema';
`;

  const outPath = join(process.cwd(), "database", "supabase", config.migrationFile);
  writeFileSync(outPath, migration);
  return { outPath, documents: config.topics.length };
}

const requested = process.argv[2] ?? "all";
const keys = requested === "all" ? Object.keys(subjects) : [requested];

if (!keys.every((key) => subjects[key])) {
  console.error(`Unknown subject "${requested}". Available: ${Object.keys(subjects).join(", ")}`);
  process.exit(1);
}

const results = keys.map((key) => buildMigration({ ...subjects[key], slug: key }));
console.log(JSON.stringify(results, null, 2));
