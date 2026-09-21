begin;

insert into public.topics (
  id,
  subject,
  title,
  description,
  level,
  class_levels,
  series,
  question_count,
  estimated_minutes
)
values (
  'fr-math-bac-analyse',
  'Mathématiques',
  'Analyse, limites et dérivation — Baccalauréat C/D/TI',
  'Thème francophone pour organiser les épreuves de mathématiques de Terminale autour des fonctions, limites, dérivées et variations.',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  5,
  90
)
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
  id,
  topic_id,
  subject,
  title,
  language,
  level,
  class_levels,
  series,
  status,
  markdown_content,
  content_kind,
  doc_type
)
values (
  '775b973c-086f-13ff-bc09-2427e8620020',
  'fr-math-bac-analyse',
  'Mathématiques',
  'BACCALAURÉAT C/D/TI — MATHÉMATIQUES — ANALYSE, LIMITES ET DÉRIVATION — SUJET D''ENTRAÎNEMENT 2026',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','e','ti']::text[],
  'published',
  $markdown$
# BACCALAURÉAT C/D/TI — MATHÉMATIQUES — ANALYSE, LIMITES ET DÉRIVATION

## SECTION 1 : LIMITES ET CONTINUITÉ

**Q1.** Soit la fonction \(f\) définie par

\[
f(x)=\frac{x^2-5x+6}{x-2}.
\]

1. Déterminer l'ensemble de définition de \(f\). *(2 points)*
2. Simplifier \(f(x)\) lorsque cela est possible, puis calculer \(\lim_{x\to 2} f(x)\). *(3 points)*
3. Interpréter graphiquement le résultat obtenu. *(2 points)*

**Q2.** On considère

\[
g(x)=\sqrt{x+1}-\sqrt{x-3}.
\]

1. Préciser le domaine de définition de \(g\). *(2 points)*
2. Étudier le signe de \(g(x)\) sur son domaine. *(3 points)*
3. Calculer \(\lim_{x\to +\infty} g(x)\) après rationalisation. *(4 points)*

## SECTION 2 : DÉRIVATION ET VARIATIONS

**Q3.** Soit \(h(x)=x^3-3x^2-9x+5\).

1. Calculer \(h'(x)\). *(2 points)*
2. Étudier le signe de \(h'(x)\). *(4 points)*
3. Dresser le tableau de variations de \(h\). *(5 points)*
4. En déduire le nombre de solutions de l'équation \(h(x)=0\). *(3 points)*

**Q4.** Une entreprise fabrique \(x\) cahiers par jour. Le coût total, en milliers de FCFA, est

\[
C(x)=0,02x^2+4x+120,\quad 0\le x\le 300.
\]

1. Calculer le coût moyen \(M(x)=\frac{C(x)}{x}\) pour \(x>0\). *(2 points)*
2. Déterminer la quantité \(x\) qui minimise le coût moyen. *(5 points)*
3. Donner une interprétation concrète du résultat. *(3 points)*

## SECTION 3 : SUITES ET RAISONNEMENT

**Q5.** On définit la suite \((u_n)\) par \(u_0=2\) et

\[
u_{n+1}=\frac{3u_n+4}{u_n+3}.
\]

1. Montrer que \(u_n>0\) pour tout entier naturel \(n\). *(3 points)*
2. Si la suite converge vers \(l\), déterminer les valeurs possibles de \(l\). *(3 points)*
3. Étudier la convergence de la suite en justifiant clairement. *(5 points)*

> Cette épreuve de démonstration sert de contenu test pour vérifier le workflow francophone : langue française, Terminale, séries C/D/E/TI, titre long et rendu mobile.
$markdown$,
  'paper',
  'paper'
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
  updated_at = now();

commit;
