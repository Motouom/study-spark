begin;

-- Repair legacy French profiles that were created before francophone classes
-- existed. Without this, those learners can keep seeing empty GCE-filtered
-- French sections even after the francophone catalog exists.
update public.student_profiles
set education_system = 'francophone',
    class_level = case
      when class_level in ('lower_sixth', 'upper_sixth') then 'terminale'
      else 'troisieme'
    end,
    level = case
      when class_level in ('lower_sixth', 'upper_sixth') then 'advanced'
      else 'ordinary'
    end,
    series = case
      when class_level in ('lower_sixth', 'upper_sixth') then 'a4'
      else 'tronc_commun'
    end,
    subjects = case
      when class_level in ('lower_sixth', 'upper_sixth') then
        array['Français','Philosophie','Histoire-Géographie','Anglais','Mathématiques']::text[]
      else
        array['Français','Mathématiques','Physique-Chimie','Sciences de la Vie et de la Terre','Histoire-Géographie','Anglais']::text[]
    end,
    updated_at = now()
where language = 'french'
  and coalesce(education_system, 'gce') <> 'francophone';

insert into public.topics (
  id, subject, title, description, level, class_levels, series, question_count, estimated_minutes
)
values
  ('fr-bepc-francais-expression', 'Français', 'Expression écrite et étude de texte — BEPC',
   'Compréhension, vocabulaire, grammaire, résumé et rédaction guidée pour la Troisième.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 14, 60),
  ('fr-bepc-pc-bases', 'Physique-Chimie', 'Bases de physique-chimie — BEPC',
   'Mesures, électricité simple, matière, réactions chimiques et sécurité au laboratoire.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 16, 70),
  ('fr-premiere-a4-philo-methodologie', 'Philosophie', 'Méthodologie philosophique — Probatoire A4',
   'Définition des notions, problématique, plan dialectique, introduction et conclusion.',
   'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 18, 85),
  ('fr-premiere-a4-francais-dissertation', 'Français', 'Dissertation, commentaire et contraction — Probatoire A4',
   'Méthodes d’analyse littéraire, dissertation, commentaire composé, résumé et discussion.',
   'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 20, 95),
  ('fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Histoire et géographie du Cameroun — Probatoire A4',
   'Colonisation, nationalisme, relief, climat, population, économie et lecture de documents.',
   'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 18, 90)
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
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52001',
  'fr-bepc-francais-expression',
  'Français',
  'BEPC — Français — Étude de texte et expression écrite',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Français — Étude de texte et expression écrite

## Objectifs
- Lire un texte et identifier le thème, la thèse et les indices importants.
- Répondre avec des phrases complètes.
- Réviser grammaire, vocabulaire, conjugaison et orthographe.
- Produire un paragraphe clair pour la rédaction.

## Méthode pour l'étude de texte
1. Lire le texte deux fois.
2. Souligner les mots clés.
3. Identifier qui parle, à qui, de quoi et pourquoi.
4. Répondre en reprenant les mots de la question.
5. Justifier avec un passage du texte quand c'est demandé.

## Points de langue
| Notion | À vérifier |
|---|---|
| Nature | nom, verbe, adjectif, pronom, adverbe |
| Fonction | sujet, COD, COI, complément circonstanciel |
| Temps | présent, imparfait, passé composé, futur |
| Accord | sujet-verbe, nom-adjectif, participe passé |

## Sujet type
**Q1.** Donne le thème du texte. *(2 points)*

**Q2.** Relève deux expressions qui montrent l'opinion de l'auteur. *(3 points)*

**Q3.** Explique le sens de deux mots dans le contexte. *(4 points)*

**Q4.** Transforme une phrase au discours indirect. *(3 points)*

**Q5.** Rédige un paragraphe de 12 à 15 lignes sur l'importance du travail scolaire. *(8 points)*

## Pièges fréquents
- Répondre par un seul mot quand une phrase est attendue.
- Confondre résumé et commentaire personnel.
- Oublier les accents et la ponctuation.
$md$,
  'course',
  'course',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC French topic course',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC French topic coverage'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52002',
  'fr-bepc-math-equations',
  'Mathématiques',
  'Fiche — BEPC — Équations, systèmes et géométrie',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# Fiche — BEPC — Mathématiques

## Algèbre
$$ax+b=0 \Rightarrow x=-\frac{b}{a},\quad a\ne0$$

$$(x-a)(x-b)=0 \Rightarrow x=a \text{ ou } x=b$$

Pour un système :
$$\begin{cases} ax+by=c \\ a'x+b'y=c' \end{cases}$$
utilise substitution ou combinaison.

## Géométrie
Théorème de Pythagore :
$$AB^2+AC^2=BC^2$$

Aire du disque :
$$A=\pi r^2$$

Circonférence :
$$C=2\pi r$$

## Statistiques
Moyenne :
$$\bar{x}=\frac{\sum n_ix_i}{\sum n_i}$$

## Avant de rendre
- Écrire les unités.
- Vérifier les signes.
- Encadrer la réponse finale.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC formula sheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC mathematics cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52003',
  'fr-bepc-francais-expression',
  'Français',
  'BEPC — Sujet d’entraînement — Français',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Sujet d’entraînement — Français

## Texte
Un élève qui prépare un examen doit organiser son temps, revoir ses leçons et s'entraîner régulièrement. La réussite ne dépend pas seulement de l'intelligence, mais aussi de la discipline et de la persévérance.

## Questions
**Q1.** Quel est le thème principal du texte ? *(2 points)*

**Q2.** Relève deux qualités nécessaires à la réussite. *(2 points)*

**Q3.** Donne un synonyme de « persévérance ». *(2 points)*

**Q4.** Analyse grammaticalement : « Un élève prépare un examen. » *(4 points)*

**Q5.** Rédaction : explique en 15 lignes comment un élève peut mieux préparer le BEPC. *(10 points)*
$md$,
  'paper',
  'paper',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC French practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC French practice paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52004',
  'fr-premiere-a4-philo-methodologie',
  'Philosophie',
  'Probatoire A4 — Philosophie — Méthodologie et notions clés',
  'french',
  'advanced',
  array['premiere']::text[],
  array['a1','a2','a4','abi']::text[],
  'published',
  $md$
# Probatoire A4 — Philosophie — Méthodologie et notions clés

## Ce qu'il faut maîtriser
- Lire un sujet et repérer la notion centrale.
- Transformer le sujet en problème philosophique.
- Construire un plan cohérent.
- Utiliser des exemples simples et précis.

## Structure d'une dissertation
### Introduction
1. Amorce.
2. Définition des termes.
3. Problématique.
4. Annonce du plan.

### Développement
- Une idée directrice par partie.
- Une explication claire.
- Un exemple.
- Une transition.

### Conclusion
- Réponse synthétique au problème.
- Ouverture sobre.

## Notions fréquentes
| Notion | Questions classiques |
|---|---|
| Liberté | Sommes-nous toujours responsables de nos actes ? |
| Conscience | Peut-on se connaître parfaitement ? |
| Société | L'homme peut-il vivre seul ? |
| Travail | Le travail libère-t-il l'homme ? |

## Entraînement
**Q1.** Explique la différence entre thème, problème et thèse. *(4 points)*

**Q2.** Propose une problématique pour : « La liberté consiste-t-elle à faire tout ce que l'on veut ? » *(4 points)*

**Q3.** Rédige une introduction complète sur le sujet précédent. *(12 points)*
$md$,
  'course',
  'course',
  'francophone',
  'Probatoire',
  '2026',
  'teacher_authored',
  'StudySpark authored Probatoire philosophy topic',
  'approved',
  'approved',
  '1.0.0',
  'Adds Première A4 philosophy coverage'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52005',
  'fr-premiere-a4-francais-dissertation',
  'Français',
  'Probatoire A4 — Français — Dissertation et commentaire',
  'french',
  'advanced',
  array['premiere']::text[],
  array['a1','a2','a4','abi']::text[],
  'published',
  $md$
# Probatoire A4 — Français — Dissertation et commentaire

## Dissertation littéraire
Une dissertation répond à une question sur la littérature. Elle demande une thèse, des arguments et des exemples.

### Méthode
1. Identifier les mots clés.
2. Reformuler le sujet.
3. Trouver le problème.
4. Préparer deux ou trois parties.
5. Utiliser des exemples d'œuvres, de personnages ou de mouvements littéraires.

## Commentaire composé
Le commentaire analyse comment le texte produit du sens.

| Axe possible | Indices à chercher |
|---|---|
| Portrait | adjectifs, comparaisons, champs lexicaux |
| Critique sociale | ironie, opposition, modalisation |
| Émotion | ponctuation, rythme, images |

## Contraction de texte
- Garder les idées principales.
- Supprimer exemples secondaires et répétitions.
- Respecter le nombre de mots demandé.

## Sujet type
**Q1.** Trouve deux axes de commentaire pour un texte narratif. *(4 points)*

**Q2.** Rédige une introduction de commentaire. *(6 points)*

**Q3.** Fais le plan détaillé d'une dissertation sur le rôle de la littérature dans la société. *(10 points)*
$md$,
  'course',
  'course',
  'francophone',
  'Probatoire',
  '2026',
  'teacher_authored',
  'StudySpark authored Probatoire French literature topic',
  'approved',
  'approved',
  '1.0.0',
  'Adds Première A4 French coverage'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52006',
  'fr-premiere-a4-philo-methodologie',
  'Philosophie',
  'Fiche — Probatoire A4 — Philosophie',
  'french',
  'advanced',
  array['premiere']::text[],
  array['a1','a2','a4','abi']::text[],
  'published',
  $md$
# Fiche — Probatoire A4 — Philosophie

## Méthode express
Introduction :
1. Amorce.
2. Définition.
3. Problème.
4. Plan.

Développement :
- idée ;
- explication ;
- exemple ;
- transition.

Conclusion :
- bilan ;
- réponse ;
- ouverture.

## Notions
| Notion | Idée utile |
|---|---|
| Liberté | Absence de contrainte, mais aussi autonomie rationnelle |
| Conscience | Capacité de se représenter soi-même et le monde |
| Travail | Transformation de la nature et de soi |
| Société | Ensemble organisé d'individus liés par des règles |

## Pièges
- Réciter le cours sans répondre au sujet.
- Faire un plan catalogue.
- Oublier la problématique.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Probatoire',
  '2026',
  'teacher_authored',
  'StudySpark authored philosophy cheatsheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds Première A4 philosophy cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52007',
  'fr-premiere-a4-francais-dissertation',
  'Français',
  'Probatoire A4 — Sujet d’entraînement — Français et Philosophie',
  'french',
  'advanced',
  array['premiere']::text[],
  array['a1','a2','a4','abi']::text[],
  'published',
  $md$
# Probatoire A4 — Sujet d’entraînement — Français et Philosophie

## Français
**Q1.** Explique le rôle de l'introduction dans une dissertation littéraire. *(4 points)*

**Q2.** À partir d'un texte narratif, propose deux axes de commentaire possibles et justifie-les. *(6 points)*

**Q3.** Sujet : « La littérature doit-elle seulement divertir ? » Propose un plan détaillé. *(10 points)*

## Philosophie
**Q4.** Définis liberté, responsabilité et contrainte. *(6 points)*

**Q5.** Sujet : « Être libre, est-ce refuser toute règle ? » Rédige l'introduction et le plan. *(14 points)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Probatoire',
  '2026',
  'teacher_authored',
  'StudySpark authored Probatoire A4 practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds Première A4 practice paper'
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
