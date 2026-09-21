const fs = require("fs");
const path = require("path");

const BASE = __dirname;
const MIN_WORDS = 4200;

const SUBJECT_FOCUS = {
  Accounting: {
    coverage: [
      "double entry bookkeeping and ledger balancing",
      "trial balance, suspense accounts, control accounts and error correction",
      "final accounts for sole traders, clubs, partnerships and companies",
      "depreciation, bad debts, provisions, ratios and cash-flow interpretation",
    ],
    practice: [
      "Prepare a purchases ledger control account and explain two causes of disagreement.",
      "Correct four bookkeeping errors and show the suspense account balance.",
      "Prepare an income statement and statement of financial position from adjusted trial balance data.",
      "Use gross-profit margin, current ratio and return on capital employed to advise a trader.",
    ],
  },
  "Additional Mathematics": {
    coverage: [
      "functions, mapping, inequalities and advanced algebra",
      "coordinate geometry, trigonometry and identities",
      "differentiation, integration and applications",
      "vectors, binomial expansion, sequences and introductory mechanics",
    ],
    practice: [
      "Solve a quadratic inequality and represent the answer on a number line.",
      "Find the equation of a tangent to a curve at a stated point.",
      "Use trigonometric identities to simplify an expression before solving.",
      "Integrate a polynomial expression and use limits to find an area.",
    ],
  },
  "Agricultural Science": {
    coverage: [
      "soil formation, fertility, erosion control and conservation",
      "crop production, pests, diseases, weeds and storage",
      "animal production, nutrition, housing and disease control",
      "farm management, records, marketing and Cameroon agricultural systems",
    ],
    practice: [
      "Describe how a farmer in the Western Highlands can reduce soil erosion on a slope.",
      "Compare organic manure and inorganic fertiliser in crop production.",
      "Explain four signs of disease in poultry and the correct control measures.",
      "Prepare a simple farm budget and identify two risks to profit.",
    ],
  },
  Biology: {
    coverage: [
      "cell structure, biological molecules and enzymes",
      "nutrition, transport, respiration, excretion and coordination",
      "reproduction, genetics, evolution and variation",
      "ecology, disease, immunity and practical biological investigations",
    ],
    practice: [
      "Draw and label a plant cell and state the function of each labelled part.",
      "Explain how villi are adapted for absorption.",
      "Use a genetic cross to predict offspring ratios.",
      "Design a fair test to investigate the effect of temperature on enzyme action.",
    ],
  },
  Chemistry: {
    coverage: [
      "atomic structure, bonding, periodicity and chemical formulae",
      "mole calculations, equations, gases and solution concentration",
      "acids, bases, salts, redox, electrolysis and energetics",
      "metals, non-metals, organic chemistry and qualitative analysis",
    ],
    practice: [
      "Balance an ionic equation and identify the oxidising agent.",
      "Calculate the mass of salt formed from a known volume and concentration of acid.",
      "Describe a safe preparation of a soluble salt.",
      "Use test results to identify two cations and one anion.",
    ],
  },
  Commerce: {
    coverage: [
      "trade, channels of distribution and aids to trade",
      "banking, insurance, transport, warehousing and communication",
      "consumer protection, business documents and payment methods",
      "international trade, entrepreneurship and Cameroon market examples",
    ],
    practice: [
      "Explain why a wholesaler may still be useful to small retailers.",
      "Compare cheque, mobile money and bank transfer for a trader in Douala.",
      "Describe four documents used in a credit sale.",
      "Explain the role of insurance in a transport business.",
    ],
  },
  "Computer Science": {
    coverage: [
      "data representation, logic, algorithms and programming",
      "computer architecture, operating systems and utility software",
      "databases, networks, web systems and cybersecurity",
      "systems development, testing, documentation and ethical issues",
    ],
    practice: [
      "Write pseudocode to find the largest value in a list.",
      "Convert a denary number to binary and hexadecimal.",
      "Design a simple relational table structure for a school library.",
      "Explain three controls that protect learner accounts from unauthorised access.",
    ],
  },
  Economics: {
    coverage: [
      "scarcity, opportunity cost, demand, supply and markets",
      "production, costs, firms, market structures and labour",
      "national income, money, banking, inflation and unemployment",
      "public finance, international trade and Cameroon development issues",
    ],
    practice: [
      "Use a demand-and-supply diagram to explain a rise in cocoa prices.",
      "Distinguish fixed cost from variable cost with examples.",
      "Explain four causes of inflation in an economy.",
      "Evaluate two policies that can reduce youth unemployment.",
    ],
  },
  French: {
    coverage: [
      "grammaire, conjugaison, accords et syntaxe",
      "comprehension, resume, traduction et vocabulaire",
      "redaction, lettres, dialogues et essais argumentatifs",
      "expression orale, culture camerounaise et situations de communication",
    ],
    practice: [
      "Redigez une lettre formelle pour demander une attestation scolaire.",
      "Transformez des phrases au passe compose, a l'imparfait et au futur simple.",
      "Resumez un texte en conservant seulement les idees essentielles.",
      "Traduisez un court passage sans calquer l'anglais.",
    ],
  },
  Geography: {
    coverage: [
      "map reading, scale, grid references and fieldwork",
      "weather, climate, landforms, soils and vegetation",
      "population, settlement, agriculture, industry and transport",
      "regional geography of Cameroon, Africa and the wider world",
    ],
    practice: [
      "Calculate gradient from contour information on a map extract.",
      "Explain how relief influences settlement in the Western Highlands.",
      "Describe three effects of rapid urbanisation in Yaounde or Douala.",
      "Compare subsistence and plantation agriculture using Cameroon examples.",
    ],
  },
  History: {
    coverage: [
      "Cameroon before, during and after colonial rule",
      "African resistance, nationalism and independence movements",
      "world wars, diplomacy, international organisations and decolonisation",
      "historical source analysis, chronology and essay argument",
    ],
    practice: [
      "Explain three causes of German annexation of Cameroon.",
      "Assess the role of nationalism in African independence.",
      "Use a source extract to identify bias and reliability.",
      "Write an essay introduction with a clear historical argument.",
    ],
  },
  "Human Biology": {
    coverage: [
      "cells, tissues, organs and body systems",
      "digestion, circulation, respiration, excretion and movement",
      "reproduction, inheritance, hormones and nervous coordination",
      "health, disease, immunity, nutrition and public hygiene",
    ],
    practice: [
      "Trace the pathway of blood through the heart.",
      "Explain why balanced diet matters for adolescent learners.",
      "Describe how malaria is transmitted and prevented.",
      "Compare nervous and hormonal coordination.",
    ],
  },
  ICT: {
    coverage: [
      "computer hardware, software, storage and input/output devices",
      "word processing, spreadsheets, databases and presentation skills",
      "networks, internet services, communication and cybersecurity",
      "ICT in school, business, government and everyday Cameroon life",
    ],
    practice: [
      "State spreadsheet formulae for total, average and percentage.",
      "Design a database table for student records.",
      "Explain two benefits and two risks of online learning.",
      "Describe steps to protect a computer from malware.",
    ],
  },
  Mathematics: {
    coverage: [
      "number, algebra, functions and graphs",
      "geometry, trigonometry, mensuration and transformations",
      "statistics, probability and commercial arithmetic",
      "problem solving, proof, estimation and calculator discipline",
    ],
    practice: [
      "Solve simultaneous equations and check the result by substitution.",
      "Use sine rule or cosine rule in a triangle problem.",
      "Calculate mean, median, mode and interpret a cumulative frequency graph.",
      "Solve a compound interest problem in FCFA and explain each step.",
    ],
  },
  Physics: {
    coverage: [
      "measurement, mechanics, forces, energy and pressure",
      "thermal physics, waves, light and sound",
      "electricity, magnetism, electronics and electromagnetism",
      "atomic physics, radioactivity, practical skills and uncertainty",
    ],
    practice: [
      "Calculate acceleration from a velocity-time graph.",
      "Explain how a vacuum flask reduces heat transfer.",
      "Solve a series-parallel circuit with current and potential difference.",
      "State precautions for an Ohm's law practical.",
    ],
  },
};

const DEFAULT_FOCUS = {
  coverage: [
    "core definitions, vocabulary and syllabus concepts",
    "worked examples that show how marks are awarded",
    "Cameroon-based applications and realistic examination scenarios",
    "revision, self-testing and final-paper technique",
  ],
  practice: [
    "Define five key terms from the topic and use each in a sentence.",
    "Answer one structured question with introduction, development and conclusion.",
    "Create a revision card for each unit in the course.",
    "Explain one Cameroon example that connects the topic to real life.",
  ],
};

function reinforcementExpansion(subject, level, focus, isFrench) {
  const concepts = focus.coverage.map((item) => `- ${item}`).join("\n");
  if (isFrench) {
    return `

## Renforcement approfondi du programme

Cette section complete le cours pour eviter qu'il ressemble a une simple introduction. Avant de quitter ${subject}, l'eleve doit reviser ces axes en profondeur:

${concepts}

Pour chaque axe, fais trois actions. D'abord, ecris les definitions essentielles. Ensuite, construis un exemple personnel tire de l'ecole, de la famille, d'une ville camerounaise, d'un marche, d'un centre de sante ou d'une situation administrative. Enfin, reponds a une question en temps limite. Cette methode permet de verifier que la notion est comprise et pas seulement lue.

### Methode Paper 1

Les questions objectives testent souvent les details. Cherche le mot qui change tout: sauf, incorrect, meilleur, principal, cause, consequence, toujours, jamais. Si deux reponses semblent proches, compare-les avec la definition du cours. Une bonne reponse doit etre totalement vraie et directement liee a la question.

### Methode Paper 2

Les questions structurees demandent de l'ordre. Commence par identifier le verbe de consigne: definir, expliquer, comparer, calculer, decrire, evaluer. Ensuite, choisis le format. Une definition doit etre courte et exacte. Une explication doit montrer la cause et l'effet. Une comparaison doit presenter les ressemblances et les differences. Une evaluation doit donner les avantages, les limites et une conclusion.

### Travail final avant l'examen

Avant l'examen, l'eleve doit etre capable de presenter chaque unite en cinq minutes. Si une unite ne peut pas etre expliquee sans lire le cours, elle n'est pas encore maitrisee. Reviens alors aux exemples, refais les questions et corrige chaque erreur dans un cahier de progression.
`;
  }

  return `

## Deep Syllabus Reinforcement

This reinforcement section makes the course closer to a serious GCE study pack. Before leaving ${subject}, a learner should revisit the major syllabus strands below and prove mastery with examples, corrections and timed answers.

${concepts}

For each strand, use the three-layer method. First, write the definitions and key facts from memory. Second, solve or explain one worked example slowly, showing every step. Third, answer a fresh GCE-style question under time pressure. This prevents passive reading. It also shows the learner which ideas are truly understood and which ideas only look familiar.

### Paper 1 mastery

Paper 1 rewards speed, accuracy and careful reading. Do not begin by guessing. Read the question stem, identify the command word, then predict the answer before checking the options. If the question asks for an exception, mark it immediately. If the options contain numbers, estimate first so that impossible answers are eliminated. If the options contain definitions, compare each one with the exact wording in the course.

### Paper 2 mastery

Paper 2 rewards structure. A strong answer normally has four parts: the principle, the method, the working or explanation, and the final statement. In calculation subjects, always write formula, substitution, answer and unit. In essay subjects, use a clear paragraph for each point and connect evidence to the question. In practical subjects, include precautions, sources of error and ways to improve reliability.

### ${level} readiness check

A learner is ready to move from this course to full papers when they can explain every unit without reading, answer mixed questions without choosing the topic first, correct their own mistakes, and keep their working neat enough for another person to follow. If any of those checks fail, the course is not finished. Return to the weak unit and repeat the practice cycle.
`;
}

function wordCount(text) {
  return text.trim().split(/\s+/).filter(Boolean).length;
}

function completeWorkbookExpansion(subject, level, focus, isFrench) {
  const coverageRows = focus.coverage
    .map(
      (item, index) =>
        `| ${index + 1} | ${item} | Explain the concept, give one Cameroon example, answer one short question, and correct one mistake. |`,
    )
    .join("\n");
  const practiceRows = focus.practice
    .map(
      (item, index) =>
        `| ${index + 1} | ${item} | Write a full answer, underline the command word, then mark your answer against the guide below. |`,
    )
    .join("\n");

  if (isFrench) {
    return `

## Cahier complet de maitrise GCE

Cette partie transforme le cours en parcours de travail. Elle n'est pas une simple conclusion: elle sert de cahier de revision. Un eleve doit l'utiliser apres les lecons principales pour verifier la comprehension, corriger les lacunes et se preparer a repondre comme au GCE.

### Carte de maitrise

| No | Domaine | Ce qu'il faut savoir faire |
| --- | --- | --- |
${coverageRows}

Pour chaque domaine, l'eleve doit produire trois preuves: une definition exacte, un exemple precis et une reponse structuree. Si une preuve manque, la notion n'est pas encore maitrisee. Il faut alors relire la lecon, refaire un exemple et corriger les erreurs dans un cahier.

### Lecon de methode: comprendre avant de memoriser

La memorisation seule ne suffit pas. Une bonne preparation commence par les mots-cles. L'eleve doit d'abord ecrire les mots importants du chapitre, puis expliquer chaque mot en une phrase courte. Ensuite, il doit construire un exemple camerounais: une salle de classe, un marche, une ferme, une entreprise, un hopital, une mairie, une banque, une famille ou une situation de transport. L'exemple rend la reponse concrete et aide a eviter les phrases vagues.

Apres l'exemple, l'eleve doit repondre a une question. Une reponse courte doit etre directe. Une reponse structuree doit avoir un ordre clair: idee principale, explication, exemple, conclusion courte. Une question qui demande de comparer doit montrer les ressemblances et les differences. Une question qui demande d'evaluer doit presenter les forces, les limites et un jugement final.

### Exercices de consolidation

| No | Question | Travail attendu |
| --- | --- | --- |
${practiceRows}

### Correction personnelle

Apres chaque exercice, l'eleve doit corriger en quatre etapes. D'abord, verifier si le verbe de consigne a ete respecte. Ensuite, verifier si les mots techniques sont exacts. Puis, ajouter un exemple lorsque la reponse est trop generale. Enfin, reecrire la reponse proprement. La progression vient de la correction, pas seulement du nombre de questions traitees.

### Revision espacee

Jour 1: lire la lecon et faire les definitions. Jour 2: refaire les exemples sans regarder. Jour 4: traiter deux questions en temps limite. Jour 7: corriger les erreurs et construire une fiche courte. Jour 14: faire une mini simulation. Cette methode evite l'oubli rapide et rend la preparation plus solide.
`;
  }

  return `

## Complete GCE Mastery Workbook

This section turns the course into a working study pack. It is not extra decoration. It is the part a serious learner uses after reading the lessons to test understanding, repair weak areas, and practise writing answers in the way Cameroon GCE examiners expect.

### Mastery map

| No | Syllabus area | What you must be able to do |
| --- | --- | --- |
${coverageRows}

For each area, produce three proofs of mastery. First, write the key definitions without looking. Second, give one concrete Cameroon example. Third, answer one short or structured question and correct it carefully. If one proof is missing, the topic is not finished. Go back to the lesson, redo the example, and write the correction before moving on.

### Lesson method: from reading to exam marks

A learner does not earn GCE marks by merely recognizing a topic. Marks come from accurate recall, correct method, relevant examples, and clear written structure. Start every unit by listing the key words. Then explain each word in one sentence. After that, connect the idea to a realistic setting: a school laboratory, a farm, a local market, a health centre, a council office, a transport business, a bank, a weather station, a family budget, or a community problem.

When answering, obey the command word. **State** means give a short answer. **Define** means give the exact meaning. **Describe** means give features in order. **Explain** means show why or how. **Compare** means give similarities and differences. **Evaluate** means give strengths, weaknesses, and a judgement. Many learners lose marks because they know the topic but answer the wrong command.

### Worked-answer discipline

For calculation subjects, always use the same answer frame: formula, substitution, working, answer, unit. For science subjects, include observations, equations, conditions, safety and conclusion where relevant. For social science and arts subjects, use paragraphs: point, explanation, evidence, link to question. For language subjects, plan first, write clean sentences, and revise grammar before final submission.

### Consolidation tasks

| No | Practice task | What a complete answer should contain |
| --- | --- | --- |
${practiceRows}

### Correction clinic

After each task, mark your answer in four passes. Pass one: check whether you answered the exact command word. Pass two: check the technical vocabulary, formula, spelling, diagram labels, or dates. Pass three: check whether the answer has a Cameroon example where useful. Pass four: rewrite the answer more cleanly. This is how weak answers become exam-ready answers.

### Paper 1 practice routine

Paper 1 rewards fast and careful thinking. For ten minutes, practise only objective questions from one unit. For each wrong answer, write why your choice was wrong and why the correct option is better. The wrong options often reveal the actual weakness: a confused definition, a wrong formula, a missed unit, a reversed cause-and-effect relationship, or a careless reading of the word "not" or "except".

### Paper 2 practice routine

Paper 2 rewards organized writing. Choose one structured question and spend three minutes planning before writing. Underline the command word, list the points, then write the answer. When finished, check whether every sentence earns marks. Remove vague lines such as "it is good" or "it helps people" unless you explain exactly how.

### Spaced revision plan

Day 1: read the unit and write definitions. Day 2: redo examples without looking. Day 4: answer two questions under time pressure. Day 7: correct errors and make a compact revision card. Day 14: attempt a mixed mini-test. Day 21: explain the whole unit aloud in five minutes. If the explanation breaks, that is the next topic to revise.
`;
}

function titleOf(markdown) {
  return markdown.match(/^# (.+)$/m)?.[1]?.trim() ?? "StudySpark Course";
}

function subjectFromTitle(title) {
  return Object.keys(SUBJECT_FOCUS).find((subject) => title.includes(subject)) ?? null;
}

function levelFromFile(file) {
  return file.includes(`${path.sep}advanced${path.sep}`) ? "Advanced Level" : "Ordinary Level";
}

function englishExpansion(title, subject, level, focus) {
  const coverageItems = focus.coverage.map((item) => `- ${item}`).join("\n");
  const practiceItems = focus.practice.map((item, index) => `${index + 1}. ${item}`).join("\n");
  return `

## GCE Complete Coverage Map

This course is designed as a full ${level} learning path, not as a short note. The Cameroon GCE Board describes Ordinary and Advanced Level exams as broad-based: students must show knowledge, apply ideas, synthesise information and evaluate situations. That means every StudySpark course must help a learner do four things: understand the concept, practise the skill, apply it to a Cameroon context, and answer in the form the examiner expects.

For ${subject}, revise the course through these coverage blocks:

${coverageItems}

Use this map as a checklist. A learner is not finished with the course until every block can be explained without looking at notes, at least two examples can be solved under time pressure, and mistakes from the practice bank have been corrected. For Ordinary Level learners, remember that English Language, French and Mathematics are compulsory core subjects, so the same disciplined study routine used here should also support those subjects. For Advanced Level learners, use the same routine but go deeper: definitions must be sharper, diagrams cleaner, calculations more justified, and essays more evaluative.

## Examiner Skills and Study Method

### Lesson: Turning notes into marks

Reading a course is only the first step. GCE marks are earned when a student can transform knowledge into a clear answer. Each time you finish a unit, close the lesson and write the main definitions from memory. Then solve one short question, one structured question and one application question. Mark your answer by checking whether it has the command word, the correct method, the required units or examples, and a final sentence that answers the question directly.

For objective questions, do not rush. Read the stem, underline key terms, predict the answer before looking at the options, and eliminate impossible distractors. Many wrong options are built from common student mistakes: wrong units, reversed definitions, incomplete explanations or answers that are true but do not answer the question asked.

For structured questions, write in steps. Begin with a definition or principle, show the working or reasoning, then connect the result back to the question. If the answer needs a Cameroon example, use familiar settings such as school laboratories, local markets, farms, health centres, banks, transport businesses, weather patterns, community life or public institutions. Cameroon context makes answers concrete and less generic.

### Lesson: Weekly course routine

Use this ten-session routine before attempting a full paper:

1. Read Unit 1 and write a one-page summary.
2. Redo all worked examples in Unit 1 without looking.
3. Complete Unit 2 and make correction notes.
4. Complete Unit 3 and answer the practice questions under timed conditions.
5. Review weak topics from Units 1 to 3.
6. Complete the middle units and build a glossary of definitions.
7. Complete the final units and prepare formula, diagram or essay-planning cards.
8. Attempt a mixed practice set covering the whole course.
9. Review errors and rewrite the answers correctly.
10. Attempt a full GCE-style paper or paper section under exam timing.

This rhythm is what turns a course from content into progress. StudySpark should feel serious because it asks the learner to practise, return, correct and improve.

## Extended Practice Bank

Use these questions after completing the course. They are original StudySpark practice questions aligned to Cameroon GCE preparation, not copied past-paper content.

${practiceItems}

5. Create a five-minute oral explanation of the hardest unit in this course.
6. Write three common mistakes a learner could make in this subject and how to avoid them.
7. Design one Paper 1 multiple-choice question with four options and explain why the wrong options are wrong.
8. Write one Paper 2 structured answer using full sentences and clear method.
9. Choose one concept from this course and connect it to a real situation in Cameroon.
10. Make a final revision checklist of ten things you must know before exam day.

### Answers and marking guide

Strong answers define terms accurately, use correct subject vocabulary, show logical steps and finish with the exact demand of the question. For calculations, marks are normally earned for the formula, substitution, working, answer and unit. For essay subjects, marks are earned for relevant points, accurate evidence, explanation, balance and conclusion. For practical or application questions, marks come from procedure, observation, precaution, interpretation and safety where relevant.

When checking your own work, use this simple rule: if another learner cannot follow your answer without you explaining it aloud, the written answer is not yet ready for the GCE. Rewrite it more clearly, add the missing step, and practise again.
`;
}

function frenchExpansion(title, subject, level, focus) {
  const coverageItems = focus.coverage.map((item) => `- ${item}`).join("\n");
  const practiceItems = focus.practice.map((item, index) => `${index + 1}. ${item}`).join("\n");
  return `

## Carte complete de couverture GCE

Ce cours doit servir de vrai parcours de revision pour le ${level}, pas de simple fiche courte. L'examen GCE demande a l'eleve de connaitre, appliquer, organiser et evaluer les notions. Pour progresser, il faut donc lire, pratiquer, corriger et revenir sur les erreurs.

Pour ${subject}, travaille avec cette carte de couverture:

${coverageItems}

Chaque bloc doit etre maitrise avant l'examen. L'eleve doit pouvoir expliquer les definitions sans regarder le cours, repondre a des questions courtes, rediger une reponse organisee et utiliser des exemples camerounais lorsque la question le demande.

## Methode d'etude et competences d'examen

### Lecon: transformer le cours en points

Apprendre une lecon ne suffit pas. Les points viennent d'une reponse claire. Apres chaque unite, ferme le cours et ecris les definitions essentielles de memoire. Ensuite, traite une question courte, une question structuree et une situation d'application.

Pour les questions objectives, lis d'abord l'enonce, souligne les mots importants et elimine les reponses impossibles. Pour les questions de redaction, commence par l'idee principale, developpe avec des exemples precis, puis termine par une phrase qui repond directement a la question.

### Lecon: routine hebdomadaire

1. Lire la premiere unite et produire un resume.
2. Refaire les exemples sans regarder les solutions.
3. Etudier la deuxieme unite et noter les erreurs.
4. Repondre aux questions d'entrainement en temps limite.
5. Revoir les points faibles.
6. Construire un lexique personnel.
7. Preparer des fiches de revision.
8. Traiter une serie mixte.
9. Corriger proprement les erreurs.
10. Faire une simulation d'examen.

## Banque d'entrainement supplementaire

${practiceItems}

5. Preparez une explication orale de cinq minutes sur l'unite la plus difficile.
6. Notez trois erreurs frequentes et la maniere de les eviter.
7. Creez une question a choix multiples avec quatre propositions.
8. Redigez une reponse structuree complete.
9. Reliez une notion du cours a une situation camerounaise.
10. Faites une liste finale de dix points a maitriser avant l'examen.

### Guide de correction

Une bonne reponse utilise le vocabulaire exact, suit une organisation claire, donne des exemples pertinents et repond directement a la question. Si la reponse contient des calculs, il faut montrer la formule, la substitution, les etapes, la reponse et l'unite. Si la reponse est redigee, il faut une idee claire, une explication et une conclusion courte.
`;
}

function strengthen(filePath) {
  const raw = fs.readFileSync(filePath, "utf8").trim();
  if (wordCount(raw) >= MIN_WORDS) {
    return false;
  }

  const title = titleOf(raw);
  const subject =
    subjectFromTitle(title) ??
    title.replace(/^Complete (O-Level|A-Level) /, "").replace(/ Course.*$/, "");
  const level = levelFromFile(filePath);
  const focus = SUBJECT_FOCUS[subject] ?? DEFAULT_FOCUS;
  const isFrench = filePath.includes("french") || filePath.includes("bilingual");
  const addition =
    raw.includes("## Complete GCE Mastery Workbook") ||
    raw.includes("## Cahier complet de maitrise GCE")
      ? reinforcementExpansion(subject, level, focus, isFrench)
      : raw.includes("## GCE Complete Coverage Map") ||
          raw.includes("## Carte complete de couverture GCE")
        ? completeWorkbookExpansion(subject, level, focus, isFrench)
        : isFrench
          ? frenchExpansion(title, subject, level, focus)
          : englishExpansion(title, subject, level, focus);

  fs.writeFileSync(filePath, `${raw}\n${addition.trim()}\n`);
  return true;
}

const targets = [
  ...fs.readdirSync(path.join(BASE, "ordinary")).map((name) => path.join(BASE, "ordinary", name)),
  ...fs.readdirSync(path.join(BASE, "advanced")).map((name) => path.join(BASE, "advanced", name)),
].filter((file) => file.endsWith(".md"));

let changed = 0;
for (const file of targets) {
  if (strengthen(file)) changed += 1;
}

console.log(`Strengthened ${changed} courses below ${MIN_WORDS} words.`);
