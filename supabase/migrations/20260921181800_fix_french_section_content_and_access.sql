begin;

-- Keep the content RPC aligned with the frontend. The app expects
-- content_kind/access_status/is_locked so it can separate papers, courses,
-- and cheatsheets and avoid showing locked documents as free.
drop function if exists public.list_allowed_course_documents();
create or replace function public.list_allowed_course_documents()
returns table (
  id uuid,
  topic_id text,
  subject text,
  title text,
  language text,
  level text,
  class_levels text[],
  series text[],
  markdown_content text,
  content_kind text,
  updated_at timestamptz,
  access_status text,
  is_locked boolean
)
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if auth.uid() is null then
    raise exception 'authentication required';
  end if;

  return query
    with matching_documents as (
      select
        document.id,
        document.topic_id,
        document.subject,
        document.title,
        document.language,
        document.level,
        document.class_levels,
        document.series,
        document.markdown_content,
        coalesce(document.content_kind, 'course') as content_kind,
        document.updated_at,
        (
          profile.plan = 'premium'
          and (profile.premium_until is null or profile.premium_until > now())
        ) as premium_active,
        row_number() over (
          partition by coalesce(document.content_kind, 'course'), document.subject
          order by document.title asc, document.id asc
        ) as access_position
      from public.course_documents document
      join public.student_profiles profile on profile.user_id = auth.uid()
      where document.status = 'published'
        and profile.language = document.language
        and profile.class_level = any(document.class_levels)
        and profile.series = any(document.series)
        and document.subject = any(profile.subjects)
    )
    select
      document.id,
      document.topic_id,
      document.subject,
      document.title,
      document.language,
      document.level,
      document.class_levels,
      document.series,
      case
        when document.premium_active or document.access_position <= 2
          then document.markdown_content
        else null::text
      end as markdown_content,
      document.content_kind,
      document.updated_at,
      case
        when document.premium_active then 'premium'
        when document.access_position <= 2 then 'free_preview'
        else 'premium_locked'
      end as access_status,
      not (document.premium_active or document.access_position <= 2) as is_locked
    from matching_documents document
    order by document.content_kind asc, document.access_position asc, document.title asc;
end;
$$;

revoke all on function public.list_allowed_course_documents() from public;
grant execute on function public.list_allowed_course_documents() to authenticated;

insert into public.topics (
  id, subject, title, description, level, class_levels, series, question_count, estimated_minutes
)
values
  ('fr-bepc-math-equations', 'Mathématiques', 'Équations et systèmes — BEPC',
   'Équations du premier degré, équations-produits, systèmes simples et problèmes concrets du BEPC.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 18, 65),
  ('fr-bepc-francais-expression', 'Français', 'Expression écrite et étude de texte — BEPC',
   'Compréhension, vocabulaire, grammaire, résumé et rédaction guidée pour la Troisième.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 14, 60),
  ('fr-math-bac-analyse', 'Mathématiques', 'Analyse, limites et dérivation — Baccalauréat C/D/TI',
   'Fonctions, limites, dérivées, variations et optimisation pour Terminale scientifique.',
   'advanced', array['terminale']::text[], array['c','d','e','ti']::text[], 28, 120),
  ('fr-physique-bac-electricite', 'Physique', 'Électricité et circuits — Baccalauréat C/D/TI',
   'Lois d’Ohm et de Kirchhoff, générateurs, condensateurs, bobines et régimes transitoires.',
   'advanced', array['terminale']::text[], array['c','d','e','ti']::text[], 24, 105),
  ('fr-svt-bac-genetique', 'Sciences de la Vie et de la Terre', 'Génétique et immunologie — Baccalauréat D/TI',
   'Transmission des caractères, ADN, brassage génétique, immunité et exploitation de documents.',
   'advanced', array['terminale']::text[], array['d','ti']::text[], 22, 100),
  ('fr-philo-bac-liberte', 'Philosophie', 'La liberté, la conscience et la société — Baccalauréat A',
   'Notions classiques de philosophie avec plans, problématiques et transitions pour Terminale A.',
   'advanced', array['terminale']::text[], array['a1','a2','a4','abi']::text[], 16, 90),
  ('fr-premiere-math-probatoire', 'Mathématiques', 'Suites et fonctions — Probatoire C/D/TI',
   'Suites numériques, fonctions usuelles, dérivation élémentaire et raisonnement pour Première.',
   'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 20, 95)
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
  '775b973c-086f-13ff-bc09-2427e8620020',
  'fr-math-bac-analyse',
  'Mathématiques',
  'Baccalauréat C/D/TI — Mathématiques — Analyse, limites et dérivation',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  'published',
  $md$
# Baccalauréat C/D/TI — Mathématiques — Analyse, limites et dérivation

## Objectifs
- Calculer des limites par factorisation, rationalisation et comparaison.
- Étudier la continuité et la dérivabilité d’une fonction.
- Dresser un tableau de variations complet.
- Résoudre un problème d’optimisation en contexte camerounais.

## Rappels essentiels

### Limites usuelles
$$\lim_{x\to a} (mx+p)=ma+p$$

$$\lim_{x\to +\infty} \frac{ax^n+\cdots}{bx^n+\cdots}=\frac{a}{b}$$

Si une forme est indéterminée, on simplifie avant de conclure.

### Dérivation
| Fonction | Dérivée |
|---|---|
| $x^n$ | $nx^{n-1}$ |
| $\sqrt{x}$ | $\frac{1}{2\sqrt{x}}$ |
| $\frac{1}{x}$ | $-\frac{1}{x^2}$ |
| $uv$ | $u'v+uv'$ |
| $\frac{u}{v}$ | $\frac{u'v-uv'}{v^2}$ |

## Méthode GCE/OBC
1. Déterminer le domaine.
2. Calculer les limites aux bornes.
3. Calculer la dérivée.
4. Étudier le signe de la dérivée.
5. Donner le tableau de variations.
6. Répondre clairement à la question posée.

## Exercices type examen

**Q1.** Soit \(f(x)=\frac{x^2-5x+6}{x-2}\).

1. Déterminer l'ensemble de définition. *(2 points)*
2. Simplifier \(f(x)\) lorsque cela est possible. *(2 points)*
3. Calculer \(\lim_{x\to2} f(x)\). *(3 points)*
4. Interpréter graphiquement le résultat. *(2 points)*

**Q2.** On considère \(g(x)=x^3-3x^2-9x+5\).

1. Calculer \(g'(x)\). *(2 points)*
2. Étudier le signe de \(g'(x)\). *(4 points)*
3. Dresser le tableau de variations. *(5 points)*
4. En déduire le nombre de solutions de \(g(x)=0\). *(3 points)*

**Q3.** Une entreprise fabrique \(x\) cahiers par jour. Le coût total en milliers de FCFA est
$$C(x)=0,02x^2+4x+120,\quad 0<x\le300.$$

1. Écrire le coût moyen \(M(x)=\frac{C(x)}{x}\). *(2 points)*
2. Déterminer la production qui minimise \(M(x)\). *(5 points)*
3. Interpréter le résultat. *(3 points)*

## Pièges fréquents
- Oublier d’exclure les valeurs interdites du domaine.
- Confondre limite et valeur de la fonction.
- Faire un tableau de variations sans signe de la dérivée.
- Donner une réponse d’optimisation sans unité.
$md$,
  'course',
  'course',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored francophone syllabus-aligned content',
  'approved',
  'approved',
  '1.0.0',
  'Initial francophone Terminale mathematics course'
),
(
  '76b65413-8cf0-4230-ab7c-7c8aaa267279',
  'fr-math-bac-analyse',
  'Mathématiques',
  'Baccalauréat C/D/TI — Sujet d’entraînement — Analyse et suites',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  'published',
  $md$
# Baccalauréat C/D/TI — Sujet d’entraînement — Analyse et suites

## SECTION 1 : Polynômes, limites et dérivées

**Q1.** Le polynôme \(P(x)=2x^4-3x^3+ax^2+bx-6\) admet \((2x-1)\) et \((x+2)\) comme facteurs.

1. Déterminer \(a\) et \(b\). *(4 points)*
2. Factoriser complètement \(P(x)\) dans \(\mathbb{R}\). *(3 points)*
3. Résoudre \(P(x)\ge0\). *(3 points)*

**Q2.** Soit \(f(x)=\frac{3x^3-x^2-13x+7}{(x-2)(x^2-x-1)}\).

1. Décomposer \(f(x)\) en éléments simples. *(6 points)*
2. Calculer \(\int_0^1 f(x)\,dx\). *(4 points)*

## SECTION 2 : Variations et optimisation

**Q3.** Soit \(h(x)=x^3-6x^2+9x+1\).

1. Calculer \(h'(x)\). *(2 points)*
2. Étudier les variations de \(h\). *(5 points)*
3. Donner le nombre de solutions de \(h(x)=0\). *(3 points)*

**Q4.** Une coopérative scolaire vend \(x\) cahiers. Son bénéfice, en milliers de FCFA, est
$$B(x)=-0,04x^2+24x-1800,\quad 0\le x\le 700.$$

1. Déterminer le bénéfice maximal. *(5 points)*
2. Préciser le nombre de cahiers à vendre. *(3 points)*
3. Dire quand la coopérative réalise un bénéfice positif. *(4 points)*

## SECTION 3 : Suites

**Q5.** On définit \(u_0=2\) et \(u_{n+1}=\frac{3u_n+4}{u_n+3}\).

1. Montrer que \(u_n>0\). *(3 points)*
2. Trouver les limites possibles. *(3 points)*
3. Étudier la convergence. *(5 points)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored francophone practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Initial francophone Terminale practice paper'
),
(
  '1ed88bf4-0d23-4b56-a8c5-ec847c1f9001',
  'fr-bepc-math-equations',
  'Mathématiques',
  'BEPC — Mathématiques — Équations, systèmes et problèmes',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Mathématiques — Équations, systèmes et problèmes

## Ce qu'il faut maîtriser
- Résoudre une équation du premier degré.
- Utiliser la règle du produit nul.
- Résoudre un système de deux équations à deux inconnues.
- Traduire un problème en équations.

## Formules et méthodes
Pour \(ax+b=0\), avec \(a\ne0\) :
$$x=-\frac{b}{a}$$

Pour un système :
$$\begin{cases} ax+by=c \\ a'x+b'y=c' \end{cases}$$
on peut utiliser substitution, combinaison ou méthode graphique.

## Exercices BEPC

**Q1.** Résoudre \(3x-7=2x+5\). *(3 points)*

**Q2.** Résoudre \((x-4)(2x+3)=0\). *(3 points)*

**Q3.** Résoudre le système :
$$\begin{cases} x+y=18 \\ 2x+3y=43 \end{cases}$$
*(5 points)*

**Q4.** Un élève achète des cahiers à 300 FCFA et des stylos à 150 FCFA. Il paie 2700 FCFA pour 12 articles. Déterminer le nombre de cahiers et de stylos. *(6 points)*

## Erreurs à éviter
- Diviser par une expression qui peut être nulle.
- Oublier de vérifier la solution dans le problème.
- Donner une réponse sans phrase finale.
$md$,
  'course',
  'course',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC topic course',
  'approved',
  'approved',
  '1.0.0',
  'Initial BEPC mathematics topic'
),
(
  '255c5ad1-95b1-4c8c-bf74-1371ab672001',
  'fr-physique-bac-electricite',
  'Physique',
  'Baccalauréat C/D/TI — Électricité et circuits',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  'published',
  $md$
# Baccalauréat C/D/TI — Physique — Électricité et circuits

## Lois fondamentales
$$U=RI$$

$$P=UI=RI^2=\frac{U^2}{R}$$

En série :
$$R_{eq}=R_1+R_2+\cdots$$

En parallèle :
$$\frac{1}{R_{eq}}=\frac{1}{R_1}+\frac{1}{R_2}+\cdots$$

## Condensateur
$$q=CU$$

$$E=\frac{1}{2}CU^2$$

Dans un circuit RC en charge :
$$u_C(t)=E(1-e^{-t/RC})$$

## Bobine
$$u_L=L\frac{di}{dt}$$

L'énergie magnétique vaut :
$$E_L=\frac{1}{2}Li^2$$

## Exercice type
Un générateur de f.é.m. \(12V\) alimente deux résistances \(R_1=4\Omega\) et \(R_2=8\Omega\) en série.

1. Calculer la résistance équivalente. *(2 points)*
2. Déterminer l'intensité du courant. *(3 points)*
3. Calculer la tension aux bornes de chaque résistance. *(4 points)*
4. Vérifier la loi des mailles. *(2 points)*

## Pièges fréquents
- Confondre série et parallèle.
- Oublier l’unité de \(R\), \(U\), \(I\), \(P\).
- Utiliser \(u_C(t)\) de charge pour une décharge.
$md$,
  'course',
  'course',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored francophone physics topic',
  'approved',
  'approved',
  '1.0.0',
  'Initial Terminale physics topic'
),
(
  '4b9a04aa-2838-4932-a7b9-a05ef1422001',
  'fr-svt-bac-genetique',
  'Sciences de la Vie et de la Terre',
  'Baccalauréat D/TI — Génétique et immunologie',
  'french',
  'advanced',
  array['terminale']::text[],
  array['d','ti']::text[],
  'published',
  $md$
# Baccalauréat D/TI — SVT — Génétique et immunologie

## Génétique
L'ADN porte l'information génétique. Un gène peut exister sous plusieurs formes appelées allèles.

### Vocabulaire
| Terme | Sens |
|---|---|
| Génotype | Ensemble des allèles d'un individu |
| Phénotype | Caractères observables |
| Homozygote | Deux allèles identiques |
| Hétérozygote | Deux allèles différents |

## Lois utiles
Pour un croisement monohybride avec dominance complète :
- génération F1 homogène si les parents sont purs ;
- génération F2 souvent proche du rapport \(3:1\).

## Immunologie
Un antigène déclenche une réponse immunitaire. Les lymphocytes B produisent des anticorps spécifiques.

## Exploitation de documents
1. Identifier ce que montre le document.
2. Lire les valeurs importantes.
3. Relier les observations au cours.
4. Conclure en répondant exactement à la question.

## Exercice type
On croise deux plantes hétérozygotes \(Aa\).

1. Faire l'échiquier de croisement. *(4 points)*
2. Donner les proportions génotypiques. *(3 points)*
3. Donner les proportions phénotypiques si \(A\) domine \(a\). *(3 points)*
$md$,
  'course',
  'course',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored francophone SVT topic',
  'approved',
  'approved',
  '1.0.0',
  'Initial Terminale SVT topic'
),
(
  '9df35c26-0a2c-4f8d-a8fa-370599992001',
  'fr-math-bac-analyse',
  'Mathématiques',
  'Fiche — Terminale C/D/TI — Analyse et dérivation',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  'published',
  $md$
# Fiche — Terminale C/D/TI — Analyse et dérivation

## Limites
$$\lim_{x\to+\infty}\frac{a_nx^n+\cdots}{b_nx^n+\cdots}=\frac{a_n}{b_n}$$

$$\lim_{x\to a}\frac{f(x)-f(a)}{x-a}=f'(a)$$

## Dérivées
| Fonction | Dérivée |
|---|---|
| \(x^n\) | \(nx^{n-1}\) |
| \(\sin x\) | \(\cos x\) |
| \(\cos x\) | \(-\sin x\) |
| \(e^x\) | \(e^x\) |
| \(\ln x\) | \(\frac{1}{x}\) |

## Variations
- \(f'(x)>0\) : \(f\) est croissante.
- \(f'(x)<0\) : \(f\) est décroissante.
- \(f'(x)=0\) avec changement de signe : extremum local.

## À vérifier avant de rendre
- Domaine écrit.
- Limites aux bornes.
- Signe de \(f'\).
- Tableau complet.
- Réponse finale encadrée.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored formula sheet',
  'approved',
  'approved',
  '1.0.0',
  'Initial Terminale math cheatsheet'
),
(
  'bc7ebc41-66ac-4381-823a-b6e38d522001',
  'fr-physique-bac-electricite',
  'Physique',
  'Fiche — Terminale C/D/TI — Électricité',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  'published',
  $md$
# Fiche — Terminale C/D/TI — Électricité

## Formules
$$U=RI$$
$$P=UI=RI^2=\frac{U^2}{R}$$
$$q=CU$$
$$E_C=\frac{1}{2}CU^2$$
$$u_C(t)=E(1-e^{-t/RC})$$
$$u_L=L\frac{di}{dt}$$
$$E_L=\frac{1}{2}Li^2$$

## Séries et parallèles
| Montage | Résistance équivalente |
|---|---|
| Série | \(R_{eq}=R_1+R_2+\cdots\) |
| Parallèle | \(\frac{1}{R_{eq}}=\frac{1}{R_1}+\frac{1}{R_2}+\cdots\) |

## Pièges
- En série, le courant est le même.
- En parallèle, la tension est la même.
- Toujours convertir mA en A et kΩ en Ω.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored formula sheet',
  'approved',
  'approved',
  '1.0.0',
  'Initial Terminale physics cheatsheet'
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
