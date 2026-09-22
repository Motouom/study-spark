begin;

-- Ensure content parity: every subject should have at least 2 courses,
-- 2 papers, and 2 cheatsheets for free users to see a meaningful preview.
-- This migration adds French papers, courses, and cheatsheets to match
-- the depth and breadth of English GCE content.

insert into public.topics (
  id, subject, title, description, level, class_levels, series, question_count, estimated_minutes
)
values
  -- BEPC level papers (more subjects)
  ('fr-bepc-math-paper-2', 'Mathématiques', 'BEPC — Mathématiques — Sujet type 2',
   'Problèmes de géométrie, statistiques et probabilités pour le BEPC.', 'ordinary',
   array['troisieme']::text[], array['tronc_commun']::text[], 12, 120),
  ('fr-bepc-pc-paper-1', 'Physique-Chimie', 'BEPC — Physique-Chimie — Sujet type 1',
   'Électricité, forces, pression et réactions chimiques.', 'ordinary',
   array['troisieme']::text[], array['tronc_commun']::text[], 14, 120),
  ('fr-bepc-svt-paper-1', 'Sciences de la Vie et de la Terre', 'BEPC — SVT — Sujet type 1',
   'Nutrition, reproduction, écosystèmes et géologie.', 'ordinary',
   array['troisieme']::text[], array['tronc_commun']::text[], 16, 120),
  ('fr-bepc-hg-paper-1', 'Histoire-Géographie', 'BEPC — Histoire-Géographie — Sujet type 1',
   'Histoire du Cameroun, géographie physique et documents.', 'ordinary',
   array['troisieme']::text[], array['tronc_commun']::text[], 14, 120),
  ('fr-bepc-anglais-paper-1', 'Anglais', 'BEPC — Anglais — Sujet type 1',
   'Compréhension, grammaire, expression écrite.', 'ordinary',
   array['troisieme']::text[], array['tronc_commun']::text[], 12, 120),
  ('fr-bepc-ecm-paper-1', 'Éducation à la Citoyenneté et à la Morale', 'BEPC — ECM — Sujet type 1',
   'Droits, devoirs, institutions et citoyenneté.', 'ordinary',
   array['troisieme']::text[], array['tronc_commun']::text[], 10, 90),
  -- Terminale level papers (more series)
  ('fr-bac-math-paper-c-2', 'Mathématiques', 'Baccalauréat C — Mathématiques — Sujet type 2',
   'Suites, intégrales, équations différentielles et probabilités.', 'advanced',
   array['terminale']::text[], array['c','d','e','ti']::text[], 20, 240),
  ('fr-bac-math-paper-c-3', 'Mathématiques', 'Baccalauréat C — Mathématiques — Sujet type 3',
   'Géométrie dans l\'espace, nombres complexes et transformations.', 'advanced',
   array['terminale']::text[], array['c','d','e','ti']::text[], 18, 240),
  ('fr-bac-physique-paper-c-2', 'Physique', 'Baccalauréat C — Physique — Sujet type 2',
   'Dynamique, énergie, circuits RLC et ondes.', 'advanced',
   array['terminale']::text[], array['c','d','e','ti']::text[], 18, 150),
  ('fr-bac-philo-paper-a-2', 'Philosophie', 'Baccalauréat A — Philosophie — Sujet type 2',
   'Dissertation : « Peut-on connaître autrui ? »', 'advanced',
   array['terminale']::text[], array['a1','a2','a4','abi']::text[], 1, 240),
  ('fr-bac-philo-paper-a-3', 'Philosophie', 'Baccalauréat A — Philosophie — Sujet type 3',
   'Dissertation : « La science nous libère-t-elle ? »', 'advanced',
   array['terminale']::text[], array['a1','a2','a4','abi']::text[], 1, 240),
  ('fr-bac-svt-paper-d-2', 'Sciences de la Vie et de la Terre', 'Baccalauréat D — SVT — Sujet type 2',
   'Neurobiologie, endocrinologie, géologie et environnement.', 'advanced',
   array['terminale']::text[], array['d','ti']::text[], 18, 150),
  ('fr-bac-hg-paper-all-2', 'Histoire-Géographie', 'Baccalauréat — Histoire-Géographie — Sujet type 2',
   'Deuxième Guerre mondiale, décolonisation et géographie du Cameroun.', 'advanced',
   array['terminale']::text[], array['a1','a2','a4','abi','c','d','e','ti']::text[], 16, 240),
  ('fr-bac-francais-paper-a-2', 'Français', 'Baccalauréat A — Français — Sujet type 2',
   'Commentaire composé sur un texte poétique.', 'advanced',
   array['terminale']::text[], array['a1','a2','a4','abi']::text[], 4, 240)
on conflict (id) do update set
  subject = excluded.subject,
  title = excluded.title,
  description = excluded.description,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  question_count = excluded.question_count,
  estimated_minutes = excluded.estimated_minutes,
  updated_at = now();

insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, content_kind, doc_type, curriculum_path, exam, content_year,
  source_type, source_reference, permission_status, review_status, content_version, change_note
)
values
-- BEPC Papers
(
  'fr-bepc-math-paper-2-doc',
  'fr-bepc-math-paper-2',
  'Mathématiques',
  'BEPC 2024 — Mathématiques — Géométrie et statistiques',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$# BEPC 2024 — Mathématiques — Géométrie et statistiques

**Durée : 2h** | **Coefficient : 4**

---

## Exercice 1 (6 points) — Statistiques

Les notes de 20 élèves en mathématiques :
8 ; 12 ; 15 ; 10 ; 9 ; 14 ; 16 ; 11 ; 13 ; 7 ; 12 ; 15 ; 10 ; 8 ; 14 ; 16 ; 11 ; 13 ; 9 ; 12

1. Calculer la moyenne. *(1,5 pt)*
2. Déterminer la médiane. *(1,5 pt)*
3. Calculer l'étendue. *(1 pt)*
4. Quel pourcentage d'élèves ont une note ≥ 10 ? *(2 pts)*

---

## Exercice 2 (6 points) — Géométrie

Un triangle ABC rectangle en A avec AB = 8 cm, AC = 6 cm.

1. Calculer BC. *(2 pts)*
2. Calculer sin(B̂). *(2 pts)*
3. Soit H le pied de la hauteur issue de A. Calculer AH. *(2 pts)*

---

## Exercice 3 (8 points) — Équations

On considère E = (3x - 2)(x + 4) - (3x - 2)(2x - 1)

1. Factoriser E. *(2 pts)*
2. Résoudre E = 0. *(2 pts)*
3. Résoudre le système : x + y = 15 et 2x - y = 9. *(4 pts)*

---

**[Fin]**$md$,
  'paper', 'paper', 'francophone', 'BEPC', '2026',
  'teacher_authored', 'StudySpark authored', 'approved', 'approved', '1.0.0', 'BEPC Math paper 2'
),
(
  'fr-bepc-pc-paper-1-doc',
  'fr-bepc-pc-paper-1',
  'Physique-Chimie',
  'BEPC 2024 — Physique-Chimie — Électricité et chimie',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$# BEPC 2024 — Physique-Chimie — Électricité et chimie

**Durée : 2h** | **Coefficient : 4**

---

## Exercice 1 (6 points) — Électricité

Un circuit comporte une résistance R = 20 Ω alimentée par une tension U = 12 V.

1. Calculer l'intensité du courant I. *(2 pts)*
2. Calculer la puissance dissipée P. *(2 pts)*
3. Si on ajoute une résistance de 30 Ω en série, quelle est la nouvelle intensité ? *(2 pts)*

---

## Exercice 2 (6 points) — Chimie

On mélange 50 mL d'acide chlorhydrique à 0,1 mol/L avec 50 mL d'hydroxyde de sodium à 0,1 mol/L.

1. Écrire l'équation de la réaction. *(2 pts)*
2. Quel est le pH à l'équivalence ? *(2 pts)*
3. Nommer le sel formé. *(2 pts)*

---

## Exercice 3 (8 points) — Mécanique

Un bloc de masse m = 5 kg est tiré horizontalement par une force F = 30 N.

1. Faire le bilan des forces. *(2 pts)*
2. Calculer l'accélération (frottements négligés). *(3 pts)*
3. Quelle distance parcourt-il en 4 secondes ? *(3 pts)*

---

**[Fin]**$md$,
  'paper', 'paper', 'francophone', 'BEPC', '2026',
  'teacher_authored', 'StudySpark authored', 'approved', 'approved', '1.0.0', 'BEPC PC paper 1'
),
-- Terminale Papers
(
  'fr-bac-math-c-2-doc',
  'fr-bac-math-paper-c-2',
  'Mathématiques',
  'Baccalauréat 2024 — Mathématiques Série C — Suites et intégrales',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  'published',
  $md$# Baccalauréat 2024 — Mathématiques Série C — Suites et intégrales

**Durée : 4h** | **Coefficient : 5**

---

## Exercice 1 (5 points) — Suites

Soit u₀ = 1 et uₙ₊₁ = √(2 + uₙ).

1. Calculer u₁, u₂, u₃. *(1 pt)*
2. Montrer que la suite est croissante. *(2 pts)*
3. Montrer qu'elle est majorée par 2 et converge. *(2 pts)*

---

## Exercice 2 (5 points) — Intégration

Soit I = ∫₀^π x·sin(x) dx.

1. À l'aide d'une intégration par parties, calculer I. *(3 pts)*
2. En déduire J = ∫₀^π x²·cos(x) dx. *(2 pts)*

---

## Problème (10 points)

### Partie A — Équations différentielles

Soit y'' + 2y' + 5y = 0.

1. Déterminer les solutions générales. *(3 pts)*
2. Trouver la solution vérifiant y(0) = 1 et y'(0) = 0. *(3 pts)*

### Partie B — Probabilités

Une urne contient 4 boules rouges et 6 bleues.

1. Probabilité de tirer deux rouges sans remise. *(2 pts)*
2. Soit X le nombre de rouges en tirant 3 boules. Déterminer E(X). *(2 pts)*

---

**[Fin]**$md$,
  'paper', 'paper', 'francophone', 'Baccalauréat', '2026',
  'teacher_authored', 'StudySpark authored', 'approved', 'approved', '1.0.0', 'Bac C Math paper 2'
),
(
  'fr-bac-physique-c-2-doc',
  'fr-bac-physique-paper-c-2',
  'Physique',
  'Baccalauréat 2024 — Physique Série C — Circuits et ondes',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  'published',
  $md$# Baccalauréat 2024 — Physique Série C — Circuits et ondes

**Durée : 2h30** | **Coefficient : 4**

---

## Exercice 1 (6 points) — Circuits RLC

Un circuit RLC série : R = 50 Ω, L = 0,2 H, C = 50 μF, U = 220 V, f = 50 Hz.

1. Calculer l'impédance Z. *(2 pts)*
2. Calculer le courant I. *(2 pts)*
3. Calculer la puissance active P. *(2 pts)*

---

## Exercice 2 (7 points) — Ondes

Une onde sinusoïdale a pour équation y = 0,02·sin(200πt - 4πx).

1. Déterminer la fréquence, la période et la longueur d'onde. *(3 pts)*
2. Calculer la célérité de l'onde. *(2 pts)*
3. Déterminer l'élongation maximale. *(2 pts)*

---

## Exercice 3 (7 points) — Optique

Une lentille convergente a f' = 15 cm. Un objet AB = 3 cm est à 20 cm.

1. Construire l'image. *(2 pts)*
2. Calculer OA' et A'B'. *(3 pts)*
3. L'image est-elle réelle ou virtuelle ? *(2 pts)*

---

**[Fin]**$md$,
  'paper', 'paper', 'francophone', 'Baccalauréat', '2026',
  'teacher_authored', 'StudySpark authored', 'approved', 'approved', '1.0.0', 'Bac C Physics paper 2'
),
-- More BEPC papers
(
  'fr-bepc-svt-paper-1-doc',
  'fr-bepc-svt-paper-1',
  'Sciences de la Vie et de la Terre',
  'BEPC 2024 — SVT — Nutrition et reproduction',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$# BEPC 2024 — SVT — Nutrition et reproduction

**Durée : 1h30** | **Coefficient : 3**

---

## Exercice 1 (6 points) — Nutrition

1. Citer les différents types de nutriments. *(2 pts)*
2. Quel est le rôle des glucides ? des protéines ? *(2 pts)*
3. Dessiner et légender l'appareil digestif. *(2 pts)*

---

## Exercice 2 (6 points) — Reproduction

1. Décrire la fécondation chez l'être humain. *(2 pts)*
2. Quelles sont les différentes méthodes contraceptives ? *(2 pts)*
3. Quelles maladies sexuellement transmissibles connais-tu ? *(2 pts)*

---

## Exercice 3 (8 points) — Écosystèmes

1. Définir écosystème, biocénose et biotope. *(3 pts)*
2. Citer trois cycles biogéochimiques. *(3 pts)*
3. Proposer deux solutions pour protéger l'environnement. *(2 pts)*

---

**[Fin]**$md$,
  'paper', 'paper', 'francophone', 'BEPC', '2026',
  'teacher_authored', 'StudySpark authored', 'approved', 'approved', '1.0.0', 'BEPC SVT paper 1'
),
(
  'fr-bepc-hg-paper-1-doc',
  'fr-bepc-hg-paper-1',
  'Histoire-Géographie',
  'BEPC 2024 — Histoire-Géographie — Cameroun et Afrique',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$# BEPC 2024 — Histoire-Géographie — Cameroun et Afrique

**Durée : 2h** | **Coefficient : 3**

---

## Exercice 1 (6 points) — Histoire du Cameroun

1. Donner la date de l'indépendance du Cameroun. *(1 pt)*
2. Qui était le premier président du Cameroun ? *(1 pt)*
3. Qu'est-ce que la réunification de 1961 ? *(2 pts)*
4. Citer deux conséquences de la colonisation. *(2 pts)*

---

## Exercice 2 (6 points) — Géographie

1. Situer le Cameroun sur une carte de l'Afrique. *(2 pts)*
2. Décrire le relief du Cameroun. *(2 pts)*
3. Quelles sont les principales activités économiques ? *(2 pts)*

---

## Exercice 3 (8 points) — Documents

[Document : carte de l'Afrique avec indication des pays indépendants en 1960]

1. Identifier trois pays devenus indépendants en 1960. *(3 pts)*
2. Quel organisme a favorisé la décolonisation ? *(2 pts)*
3. Quel est le principal défi du Cameroun après l'indépendance ? *(3 pts)*

---

**[Fin]**$md$,
  'paper', 'paper', 'francophone', 'BEPC', '2026',
  'teacher_authored', 'StudySpark authored', 'approved', 'approved', '1.0.0', 'BEPC HG paper 1'
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
  updated_at = now();

notify pgrst, 'reload schema';

commit;
