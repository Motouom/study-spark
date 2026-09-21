begin;

-- Expand first-class French coverage so Francophone learners do not see a
-- thin catalog compared with the English GCE path. Content is StudySpark-authored
-- and topic based; official past-paper imports should still follow the review
-- and sourcing workflow before publication.

insert into public.topics (
  id, subject, title, description, level, class_levels, series, question_count, estimated_minutes
)
values
  ('fr-bepc-anglais-communication', 'Anglais', 'Communication, grammar and guided writing — BEPC',
   'Core BEPC English revision for reading comprehension, grammar, vocabulary, dialogue and short composition.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 18, 75),
  ('fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'Cameroon, Africa and map work — BEPC',
   'National history, African decolonisation, physical geography, population, economy and document analysis.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 20, 90),
  ('fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'Citizenship, institutions and moral education — BEPC',
   'Rights, duties, national symbols, institutions, democracy, corruption, hygiene and civic responsibility.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 16, 65),
  ('fr-bepc-info-bureautique', 'Informatique', 'Computer basics, files and office tools — BEPC',
   'Hardware, software, operating systems, files, keyboard shortcuts, word processing, spreadsheets and internet safety.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 18, 70),
  ('fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'Human body, reproduction, ecology and geology — BEPC',
   'Cells, nutrition, respiration, reproduction, health, ecosystems, rocks, soils and environmental protection.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 22, 95),
  ('fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'Electricity, mechanics, matter and reactions — BEPC',
   'Measurements, forces, pressure, current, voltage, resistance, mixtures, atoms, ions, acids and bases.',
   'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 24, 100),
  ('fr-lycee-maths-analyse-algebre', 'Mathématiques', 'Analysis, algebra, probability and geometry — Probatoire/Bac',
   'Functions, limits, derivatives, integrals, complex numbers, sequences, probability, vectors and analytic geometry.',
   'advanced', array['seconde','premiere','terminale']::text[], array['c','d','e','ti','a1','a2','a4','abi','acc','cg','fig','ses']::text[], 36, 150),
  ('fr-lycee-physique-meca-elec', 'Physique', 'Mechanics, electricity, optics and waves — Bac C/D/TI',
   'Kinematics, dynamics, energy, circuits, capacitors, electromagnetism, lenses, interference and oscillations.',
   'advanced', array['premiere','terminale']::text[], array['c','d','ti']::text[], 32, 145),
  ('fr-lycee-chimie-solutions-organique', 'Chimie', 'Solutions, equilibrium and organic chemistry — Bac C/D',
   'Mole concept, pH, acids and bases, redox, kinetics, equilibrium, hydrocarbons, alcohols, esters and polymers.',
   'advanced', array['premiere','terminale']::text[], array['c','d']::text[], 32, 140),
  ('fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Genetics, immunity, geology and ecology — Bac D',
   'DNA, heredity, meiosis, immunity, nervous regulation, plate tectonics, rocks, cycles and environmental management.',
   'advanced', array['premiere','terminale']::text[], array['d','c','ti','a1','a2','a4','abi']::text[], 30, 140),
  ('fr-lycee-info-algo-systemes', 'Informatique', 'Algorithms, systems, web and data — Lycée',
   'Algorithms, variables, conditions, loops, databases, networks, HTML/CSS basics, security and responsible computing.',
   'advanced', array['seconde','premiere','terminale']::text[], array['ti','c','d','e','acc','cg','fig','ses','a1','a2','a4','abi']::text[], 26, 110),
  ('fr-stt-economie-comptabilite', 'Comptabilité', 'Accounting, business records and financial statements — STT',
   'Journal, ledger, trial balance, depreciation, stock, VAT, final accounts, cost calculation and basic analysis.',
   'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 30, 135)
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
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52101',
  'fr-bepc-anglais-communication',
  'Anglais',
  'BEPC — Anglais — Communication, grammar and writing',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Anglais — Communication, grammar and writing

## Reading comprehension
Read the passage twice. First, identify the people, place, problem and main idea. Then underline words that show time, cause, contrast and opinion.

| Question type | Good answer habit |
|---|---|
| Main idea | Give one clear sentence, not a copied paragraph. |
| True/false | Write true or false and quote the proof. |
| Vocabulary | Use the meaning in the passage, not only dictionary memory. |
| Reference | Say exactly who or what the pronoun refers to. |

## Grammar essentials
### Tenses
- Simple present: habits and facts. Example: *She studies every evening.*
- Present continuous: action happening now. Example: *They are revising.*
- Simple past: finished action. Example: *He wrote the test yesterday.*
- Present perfect: past action linked to now. Example: *I have finished my homework.*

### Common transformations
- Active: *The teacher explains the lesson.*
- Passive: *The lesson is explained by the teacher.*
- Direct: *He said, "I am ready."*
- Reported: *He said that he was ready.*

## Guided writing
Use this paragraph pattern:
1. Topic sentence.
2. First reason with example.
3. Second reason with example.
4. Short conclusion.

## BEPC practice
**Q1.** Answer five comprehension questions from a short passage. *(10 marks)*

**Q2.** Rewrite five sentences using the correct tense, passive voice or reported speech. *(10 marks)*

**Q3.** Write a dialogue between two students planning revision. *(8 marks)*

**Q4.** Write a composition of 120 words on the importance of discipline. *(12 marks)*
$md$,
  'course',
  'course',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC English topic course',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC English language coverage'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52102',
  'fr-bepc-anglais-communication',
  'Anglais',
  'Fiche — BEPC — Anglais',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# Fiche — BEPC — Anglais

## Tense signals
| Signal | Tense |
|---|---|
| every day, usually, often | Simple present |
| now, at the moment | Present continuous |
| yesterday, last year, ago | Simple past |
| already, yet, since, for | Present perfect |

## Irregular verbs
| Base | Past | Participle |
|---|---|---|
| go | went | gone |
| write | wrote | written |
| speak | spoke | spoken |
| take | took | taken |
| see | saw | seen |

## Linkers
- Addition: also, moreover, in addition.
- Contrast: but, however, although.
- Cause: because, since, as.
- Consequence: therefore, so, as a result.

## Writing checklist
- Capital letter at the beginning.
- Full stop at the end.
- One idea per paragraph.
- Check subject-verb agreement.
- Avoid French word order inside English sentences.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC English cheatsheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC English cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52103',
  'fr-bepc-hg-cameroun-afrique',
  'Histoire-Géographie',
  'BEPC — Histoire-Géographie — Cameroun, Afrique et cartes',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Histoire-Géographie — Cameroun, Afrique et cartes

## Histoire: méthode
Pour une question d'histoire, organise la réponse avec dates, acteurs, causes, événements et conséquences.

### Nationalisme et indépendance
- Causes: exploitation coloniale, inégalités, travail forcé, montée des élites scolarisées.
- Acteurs: partis politiques, leaders syndicaux, autorités coloniales, populations locales.
- Conséquences: autonomie interne, indépendance, construction de l'État.

## Géographie: méthode
Décris toujours un phénomène avec localisation, facteurs, manifestations et conséquences.

### Relief et climat du Cameroun
| Élément | Points à retenir |
|---|---|
| Relief | plaines côtières, plateaux, montagnes, cuvettes |
| Climat | équatorial humide au sud, tropical au nord |
| Hydrographie | Sanaga, Bénoué, Nyong, Wouri |
| Activités | agriculture, pêche, commerce, industrie, services |

## Lecture de document
1. Identifier la nature du document.
2. Lire le titre, la légende et l'échelle.
3. Extraire deux informations précises.
4. Expliquer avec les connaissances du cours.

## BEPC practice
**Q1.** Donne deux causes du nationalisme au Cameroun. *(4 marks)*

**Q2.** Explique deux conséquences de l'urbanisation rapide. *(6 marks)*

**Q3.** À partir d'une carte, localise deux zones climatiques et leurs activités. *(10 marks)*
$md$,
  'course',
  'course',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC history-geography course',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC history-geography coverage'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52104',
  'fr-bepc-hg-cameroun-afrique',
  'Histoire-Géographie',
  'Fiche — BEPC — Histoire-Géographie',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# Fiche — BEPC — Histoire-Géographie

## Réponse courte
Une bonne réponse contient:
- une idée claire;
- une date ou un lieu quand c'est possible;
- un exemple précis;
- une conséquence.

## Carte
Formule d'échelle:

$$Distance\ réelle = Distance\ sur\ la\ carte \times Dénominateur\ de\ l'échelle$$

## Mots utiles
| Mot | Sens |
|---|---|
| Migration | déplacement durable d'une population |
| Densité | nombre d'habitants par km² |
| Décolonisation | processus d'accès à l'indépendance |
| Urbanisation | croissance des villes et de la population urbaine |

## Pièges
- Raconter toute la leçon sans répondre à la question.
- Oublier l'unité sur une distance ou une densité.
- Confondre cause et conséquence.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC history-geography cheatsheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC history-geography cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52105',
  'fr-bepc-ecm-citoyennete',
  'Éducation à la Citoyenneté et à la Morale',
  'BEPC — ECM — Institutions, droits et responsabilités',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — ECM — Institutions, droits et responsabilités

## Citoyen et citoyenneté
Un citoyen appartient à une communauté politique. Il a des droits, mais aussi des devoirs envers l'État, la famille, l'école et la société.

| Droits | Devoirs |
|---|---|
| droit à l'éducation | respecter le règlement intérieur |
| droit à la santé | protéger l'environnement |
| droit à la sécurité | respecter les lois |
| liberté d'expression | respecter les autres |

## Institutions
- Le Président de la République représente l'État.
- Le Parlement vote les lois.
- Le Gouvernement applique la politique nationale.
- Les tribunaux rendent justice.

## Morale et vie sociale
### Corruption
La corruption est l'utilisation abusive d'une position pour obtenir un avantage injuste. Elle détruit la confiance et ralentit le développement.

### Hygiène et santé
L'hygiène individuelle et collective limite les maladies: eau propre, lavage des mains, latrines, vaccination, environnement sain.

## BEPC practice
**Q1.** Cite trois symboles de l'État camerounais. *(3 marks)*

**Q2.** Donne deux conséquences de la corruption. *(4 marks)*

**Q3.** Propose trois gestes pour améliorer l'hygiène dans ton établissement. *(6 marks)*
$md$,
  'course',
  'course',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC civic education course',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC civic education coverage'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52106',
  'fr-bepc-info-bureautique',
  'Informatique',
  'BEPC — Informatique — Bureautique, fichiers et sécurité',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Informatique — Bureautique, fichiers et sécurité

## Ordinateur
Un ordinateur reçoit des données, les traite, les stocke et produit des résultats.

| Élément | Exemple |
|---|---|
| Matériel | clavier, souris, écran, unité centrale |
| Logiciel | système d'exploitation, traitement de texte, navigateur |
| Stockage | disque dur, clé USB, carte mémoire, cloud |

## Fichiers
Un fichier a un nom, une extension et un emplacement. Exemples: `.docx`, `.pdf`, `.xlsx`, `.jpg`.

## Raccourcis
| Action | Raccourci |
|---|---|
| Copier | Ctrl+C |
| Coller | Ctrl+V |
| Couper | Ctrl+X |
| Enregistrer | Ctrl+S |
| Annuler | Ctrl+Z |

## Tableur
Formules fréquentes:

$$Somme = SOMME(A1:A10)$$

$$Moyenne = MOYENNE(B1:B10)$$

## Sécurité
- Utiliser un mot de passe fort.
- Ne pas partager ses codes.
- Vérifier l'adresse d'un site.
- Éviter les pièces jointes suspectes.

## BEPC practice
**Q1.** Différencie matériel et logiciel avec deux exemples. *(4 marks)*

**Q2.** Donne trois règles de sécurité numérique. *(6 marks)*

**Q3.** Explique l'utilité d'un tableur dans une boutique. *(6 marks)*
$md$,
  'course',
  'course',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC ICT course',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC ICT coverage'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52107',
  'fr-bepc-pc-electricite-chimie',
  'Physique-Chimie',
  'Fiche — BEPC — Physique-Chimie',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# Fiche — BEPC — Physique-Chimie

## Mesures
Masse volumique:

$$\rho=\frac{m}{V}$$

Poids:

$$P=mg$$

Pression:

$$p=\frac{F}{S}$$

## Électricité
Loi d'Ohm:

$$U=RI$$

Puissance électrique:

$$P=UI$$

Énergie consommée:

$$E=Pt$$

## Chimie
Concentration massique:

$$C_m=\frac{m}{V}$$

Concentration molaire:

$$C=\frac{n}{V}$$

Quantité de matière:

$$n=\frac{m}{M}$$

## Laboratoire
- Lunettes, blouse, pas de goût ni d'odeur directe.
- Toujours verser l'acide dans l'eau, jamais l'inverse.
- Lire les pictogrammes de danger.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC physics-chemistry formulas',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC physics-chemistry cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52108',
  'fr-bepc-svt-vivant-terre',
  'Sciences de la Vie et de la Terre',
  'Fiche — BEPC — SVT',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# Fiche — BEPC — SVT

## Cellule
| Élément | Rôle |
|---|---|
| Membrane | limite et échanges |
| Cytoplasme | lieu des réactions |
| Noyau | information génétique |
| Chloroplaste | photosynthèse chez les végétaux |

## Nutrition
Équation de la photosynthèse:

$$6CO_2+6H_2O \xrightarrow{lumière} C_6H_{12}O_6+6O_2$$

Respiration:

$$C_6H_{12}O_6+6O_2 \rightarrow 6CO_2+6H_2O+énergie$$

## Reproduction
- Gamètes: spermatozoïde et ovule.
- Fécondation: union des gamètes.
- Nidation: fixation de l'embryon dans l'utérus.

## Écologie
Chaîne alimentaire:

$$Producteur \rightarrow Consommateur\ primaire \rightarrow Consommateur\ secondaire$$

## Géologie
Les roches peuvent être magmatiques, sédimentaires ou métamorphiques.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC SVT cheatsheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC SVT cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52109',
  'fr-bepc-pc-electricite-chimie',
  'Physique-Chimie',
  'BEPC — Sujet d’entraînement — Physique-Chimie et SVT',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Sujet d'entraînement — Physique-Chimie et SVT

## Physique-Chimie
**Q1.** Un conducteur ohmique est traversé par un courant de $0,4A$ sous une tension de $12V$. Calcule sa résistance. *(4 marks)*

**Q2.** Un corps de masse $2kg$ est soumis à $g=10N/kg$. Calcule son poids. *(3 marks)*

**Q3.** On dissout $5g$ de sel dans $250mL$ d'eau. Calcule la concentration massique en $g/L$. *(5 marks)*

**Q4.** Cite quatre règles de sécurité au laboratoire. *(4 marks)*

## SVT
**Q5.** Nomme quatre organites cellulaires et donne un rôle pour deux d'entre eux. *(6 marks)*

**Q6.** Écris l'équation simplifiée de la photosynthèse. *(4 marks)*

**Q7.** Explique deux conséquences de la déforestation sur un écosystème. *(4 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC science practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC science practice paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52110',
  'fr-lycee-maths-analyse-algebre',
  'Mathématiques',
  'Fiche — Probatoire/Bac — Mathématiques',
  'french',
  'advanced',
  array['seconde','premiere','terminale']::text[],
  array['c','d','e','ti','a1','a2','a4','abi','acc','cg','fig','ses']::text[],
  'published',
  $md$
# Fiche — Probatoire/Bac — Mathématiques

## Fonctions
Dérivée des puissances:

$$\frac{d}{dx}(x^n)=nx^{n-1}$$

Tangente en $x=a$:

$$y=f'(a)(x-a)+f(a)$$

Tableau de variation:
- $f'(x)>0$: fonction croissante.
- $f'(x)<0$: fonction décroissante.
- $f'(x)=0$: extremum possible.

## Limites
Formes indéterminées fréquentes:

$$\frac{0}{0},\quad \frac{\infty}{\infty},\quad \infty-\infty,\quad 0\times\infty$$

## Suites
Suite arithmétique:

$$u_n=u_0+nr,\qquad S_n=\frac{n}{2}(u_1+u_n)$$

Suite géométrique:

$$u_n=u_0q^n,\qquad S_n=u_0\frac{1-q^{n+1}}{1-q},\ q\ne1$$

## Probabilités

$$P(A\cup B)=P(A)+P(B)-P(A\cap B)$$

$$P_A(B)=P(B|A)=\frac{P(A\cap B)}{P(A)}$$

## Géométrie analytique
Distance:

$$AB=\sqrt{(x_B-x_A)^2+(y_B-y_A)^2}$$

Produit scalaire:

$$\vec u\cdot \vec v=||\vec u||\,||\vec v||\cos\theta$$
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored French math formulas',
  'approved',
  'approved',
  '1.0.0',
  'Adds lycée mathematics formula cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52111',
  'fr-lycee-physique-meca-elec',
  'Physique',
  'Fiche — Bac C/D/TI — Physique',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['c','d','ti']::text[],
  'published',
  $md$
# Fiche — Bac C/D/TI — Physique

## Cinématique

$$v=\frac{dx}{dt},\qquad a=\frac{dv}{dt}$$

Mouvement uniformément accéléré:

$$v=v_0+at$$

$$x=x_0+v_0t+\frac{1}{2}at^2$$

## Dynamique
Deuxième loi de Newton:

$$\sum \vec F=m\vec a$$

Énergie cinétique:

$$E_c=\frac{1}{2}mv^2$$

Énergie potentielle:

$$E_p=mgh$$

## Électricité
Loi d'Ohm:

$$U=RI$$

Puissance:

$$P=UI=RI^2=\frac{U^2}{R}$$

Condensateur:

$$q=CU,\qquad E=\frac{1}{2}CU^2$$

## Optique
Lentille mince:

$$\frac{1}{f}=\frac{1}{OA'}-\frac{1}{OA}$$

Grandissement:

$$\gamma=\frac{A'B'}{AB}=\frac{OA'}{OA}$$
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored French physics formulas',
  'approved',
  'approved',
  '1.0.0',
  'Adds Bac physics formula cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52112',
  'fr-lycee-chimie-solutions-organique',
  'Chimie',
  'Fiche — Bac C/D — Chimie',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['c','d']::text[],
  'published',
  $md$
# Fiche — Bac C/D — Chimie

## Quantité de matière

$$n=\frac{m}{M},\qquad C=\frac{n}{V},\qquad C_m=\frac{m}{V}$$

Dilution:

$$C_1V_1=C_2V_2$$

## pH

$$pH=-\log[H_3O^+]$$

$$[H_3O^+]=10^{-pH}$$

Produit ionique de l'eau:

$$K_e=[H_3O^+][OH^-]=10^{-14}\quad à\ 25^\circ C$$

## Oxydoréduction
- Oxydation: perte d'électrons.
- Réduction: gain d'électrons.
- Oxydant: capte les électrons.
- Réducteur: donne les électrons.

## Chimie organique
| Fonction | Groupe caractéristique |
|---|---|
| Alcool | $-OH$ |
| Aldéhyde | $-CHO$ |
| Cétone | $>C=O$ |
| Acide carboxylique | $-COOH$ |
| Ester | $-COO-$ |

## Rendement

$$r=\frac{m_{obtenue}}{m_{théorique}}\times100$$
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored French chemistry formulas',
  'approved',
  'approved',
  '1.0.0',
  'Adds Bac chemistry formula cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52113',
  'fr-lycee-maths-analyse-algebre',
  'Mathématiques',
  'Baccalauréat — Sujet d’entraînement — Mathématiques Série C/D/TI',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','ti']::text[],
  'published',
  $md$
# Baccalauréat — Sujet d'entraînement — Mathématiques Série C/D/TI

## Analyse
**Q1.** Soit $f(x)=x^3-3x^2+2$. Étudie les variations de $f$ et dresse son tableau de variation. *(8 marks)*

**Q2.** Calcule les limites de $g(x)=\frac{x^2-1}{x-1}$ en $x=1$ et en $+\infty$. *(6 marks)*

## Suites
**Q3.** Une suite géométrique vérifie $u_0=3$ et $q=2$. Donne $u_n$ et calcule $S_5$. *(6 marks)*

## Probabilités
**Q4.** Dans une classe, $60\%$ des élèves aiment les maths, $45\%$ aiment la physique et $30\%$ aiment les deux. Calcule la probabilité qu'un élève aime au moins une des deux matières. *(5 marks)*

## Géométrie
**Q5.** Dans le plan, $A(1,2)$, $B(5,4)$ et $C(3,-1)$. Calcule $AB$, puis l'équation de la droite $(AB)$. *(10 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored Bac math practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds Bac math practice paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52114',
  'fr-lycee-physique-meca-elec',
  'Physique',
  'Baccalauréat — Sujet d’entraînement — Physique-Chimie',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d','ti']::text[],
  'published',
  $md$
# Baccalauréat — Sujet d'entraînement — Physique-Chimie

## Physique
**Q1.** Un solide de masse $0,5kg$ glisse sans frottement sur un plan incliné. Établis l'expression de son accélération en fonction de $g$ et de l'angle $\alpha$. *(6 marks)*

**Q2.** Un condensateur de capacité $220\mu F$ est chargé sous $12V$. Calcule sa charge et l'énergie stockée. *(6 marks)*

**Q3.** Une lentille convergente de distance focale $10cm$ forme l'image d'un objet placé à $30cm$. Détermine la position de l'image. *(6 marks)*

## Chimie
**Q4.** Calcule le pH d'une solution où $[H_3O^+]=10^{-3}mol/L$. *(4 marks)*

**Q5.** On prépare $250mL$ d'une solution de concentration $0,1mol/L$ à partir d'une solution mère de concentration $1mol/L$. Calcule le volume à prélever. *(6 marks)*

**Q6.** Donne la fonction chimique et le groupe caractéristique d'un alcool et d'un acide carboxylique. *(4 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored Bac physics-chemistry practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds Bac physics-chemistry practice paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52115',
  'fr-stt-economie-comptabilite',
  'Comptabilité',
  'Fiche — Probatoire/Bac STT — Comptabilité',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['acc','cg','fig','ses']::text[],
  'published',
  $md$
# Fiche — Probatoire/Bac STT — Comptabilité

## Écriture comptable
Principe:

$$Débit = Crédit$$

Une opération modifie au moins deux comptes.

## Documents
| Document | Utilité |
|---|---|
| Journal | enregistre les opérations chronologiquement |
| Grand livre | regroupe les mouvements par compte |
| Balance | vérifie l'égalité débit-crédit |
| Bilan | présente patrimoine: actif et passif |
| Compte de résultat | présente charges, produits et résultat |

## Amortissement linéaire

$$Annuité=\frac{Valeur\ d'origine - Valeur\ résiduelle}{Durée}$$

## Stock
Coût d'achat:

$$Coût\ d'achat=Prix\ d'achat+Frais\ accessoires$$

Marge commerciale:

$$Marge=Ventes-Coût\ d'achat\ des\ marchandises\ vendues$$

## TVA

$$TVA = Prix\ HT \times Taux$$

$$Prix\ TTC = Prix\ HT + TVA$$
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored STT accounting formulas',
  'approved',
  'approved',
  '1.0.0',
  'Adds STT accounting cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52116',
  'fr-lycee-info-algo-systemes',
  'Informatique',
  'Fiche — Lycée — Informatique et algorithmique',
  'french',
  'advanced',
  array['seconde','premiere','terminale']::text[],
  array['ti','c','d','e','acc','cg','fig','ses','a1','a2','a4','abi']::text[],
  'published',
  $md$
# Fiche — Lycée — Informatique et algorithmique

## Algorithmique
Structure minimale:

```text
Début
  lire données
  traiter données
  afficher résultat
Fin
```

## Variables
| Type | Exemple |
|---|---|
| entier | 12 |
| réel | 3.14 |
| chaîne | "Yaoundé" |
| booléen | vrai/faux |

## Conditions

```text
Si condition Alors
  instruction
Sinon
  autre instruction
FinSi
```

## Boucles

```text
Pour i de 1 à n Faire
  instruction
FinPour
```

```text
TantQue condition Faire
  instruction
FinTantQue
```

## Web
- HTML structure le contenu.
- CSS présente le contenu.
- JavaScript rend la page interactive.

## Bases de données
Une table contient des lignes et colonnes. Une clé primaire identifie chaque ligne.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored lycée computing cheatsheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds lycée computing cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52117',
  'fr-bepc-hg-cameroun-afrique',
  'Histoire-Géographie',
  'BEPC — Sujet d’entraînement — Histoire-Géographie et ECM',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Sujet d'entraînement — Histoire-Géographie et ECM

## Histoire
**Q1.** Présente deux causes du nationalisme au Cameroun et une conséquence politique. *(6 marks)*

**Q2.** Explique le rôle des partis politiques dans la marche vers l'indépendance. *(6 marks)*

## Géographie
**Q3.** Décris deux facteurs naturels qui influencent l'agriculture au Cameroun. *(6 marks)*

**Q4.** À partir d'une carte, explique l'importance de la légende et de l'échelle. *(4 marks)*

## ECM
**Q5.** Cite trois droits et trois devoirs d'un citoyen. *(6 marks)*

**Q6.** Propose deux moyens de lutter contre la corruption en milieu scolaire. *(4 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC social studies practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC social studies practice paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52118',
  'fr-bepc-anglais-communication',
  'Anglais',
  'BEPC — Sujet d’entraînement — Anglais',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Sujet d'entraînement — Anglais

## Passage
A good student prepares early, asks questions when a lesson is not clear, and avoids waiting until the last week before the exam. Success comes from regular work, discipline and confidence.

## Questions
**Q1.** What is the main idea of the passage? *(3 marks)*

**Q2.** Give two habits of a good student according to the passage. *(4 marks)*

**Q3.** Find one word in the passage that means "belief in oneself". *(2 marks)*

**Q4.** Rewrite in the past tense: "A good student prepares early." *(3 marks)*

**Q5.** Change to passive voice: "The teacher explains the lesson." *(4 marks)*

**Q6.** Write a short composition on how you prepare for exams. *(10 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC English practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC English practice paper'
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

insert into public.topics (
  id, subject, title, description, level, class_levels, series, question_count, estimated_minutes
)
values
  ('fr-lycee-economie-entreprise-marche', 'Économie', 'Markets, enterprise and national economy — STT/SES',
   'Supply, demand, enterprise, money, inflation, growth, unemployment, public finance and basic economic reasoning.',
   'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 28, 125),
  ('fr-lycee-francais-methodes-bac', 'Français', 'French literature methods — Probatoire/Bac',
   'Dissertation, commentaire composé, contraction, discussion, oral expression and common exam traps.',
   'advanced', array['premiere','terminale']::text[], array['a1','a2','a4','abi','c','d','e','ti','acc','cg','fig','ses']::text[], 26, 115)
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
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52119',
  'fr-lycee-francais-methodes-bac',
  'Français',
  'Fiche — Probatoire/Bac — Français',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['a1','a2','a4','abi','c','d','e','ti','acc','cg','fig','ses']::text[],
  'published',
  $md$
# Fiche — Probatoire/Bac — Français

## Dissertation
Plan minimal:
1. Introduction: amorce, définition, problématique, annonce du plan.
2. Développement: argument, explication, exemple, mini-bilan.
3. Conclusion: bilan, réponse, ouverture.

## Commentaire composé
Cherche les procédés:
- champ lexical;
- figures de style;
- rythme des phrases;
- point de vue narratif;
- tonalité;
- valeur des temps verbaux.

## Contraction
Méthode:
1. Dégager le thème.
2. Repérer les idées principales.
3. Supprimer exemples et répétitions.
4. Reformuler sans trahir le sens.
5. Respecter le nombre de mots demandé.

## Figures utiles
| Figure | Effet |
|---|---|
| Métaphore | rapproche deux réalités |
| Comparaison | rapproche avec un outil comparatif |
| Hyperbole | exagère |
| Antithèse | oppose deux idées |
| Personnification | donne une qualité humaine |

## Pièges
- Commencer sans problématique.
- Raconter le texte au lieu de l'analyser.
- Citer sans expliquer.
- Faire des paragraphes trop longs.
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored French literature methods cheatsheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds French literature cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52120',
  'fr-bepc-ecm-citoyennete',
  'Éducation à la Citoyenneté et à la Morale',
  'Fiche — BEPC — ECM',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# Fiche — BEPC — ECM

## Symboles de l'État
- Drapeau.
- Hymne national.
- Devise.
- Armoiries.
- Sceau.

## Institutions
| Institution | Rôle |
|---|---|
| Présidence | représente l'État et oriente la politique nationale |
| Parlement | vote les lois |
| Gouvernement | applique la politique nationale |
| Justice | règle les conflits selon la loi |

## Droits et devoirs
Un droit donne une liberté protégée. Un devoir impose une responsabilité.

## Définitions rapides
| Notion | Définition courte |
|---|---|
| Civisme | respect des règles de la vie collective |
| Patriotisme | amour et service de la patrie |
| Corruption | avantage injuste obtenu par abus de fonction |
| Démocratie | pouvoir exercé par le peuple directement ou par représentants |
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC civic education cheatsheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC civic education cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52121',
  'fr-bepc-pc-electricite-chimie',
  'Physique-Chimie',
  'BEPC — Physique-Chimie — Électricité, matière et réactions',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Physique-Chimie — Électricité, matière et réactions

## Électricité
Un circuit fermé permet le passage du courant. Un ampèremètre se branche en série; un voltmètre se branche en dérivation.

### Grandeurs
| Grandeur | Symbole | Unité |
|---|---|---|
| Tension | $U$ | volt $(V)$ |
| Intensité | $I$ | ampère $(A)$ |
| Résistance | $R$ | ohm $(\Omega)$ |
| Puissance | $P$ | watt $(W)$ |

## Mécanique
Le poids d'un corps est:

$$P=mg$$

La masse est constante, le poids dépend de l'intensité de la pesanteur.

## Matière
- Corps pur: une seule espèce chimique.
- Mélange homogène: une seule phase visible.
- Mélange hétérogène: plusieurs phases visibles.

## Réactions chimiques
Pour équilibrer une équation, on conserve le nombre d'atomes de chaque élément.

## Exercices types
**Q1.** Calculer $R$ connaissant $U$ et $I$.

**Q2.** Identifier acide, base et sel dans une réaction.

**Q3.** Équilibrer une équation simple.
$md$,
  'course',
  'course',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC physics-chemistry course',
  'approved',
  'approved',
  '1.0.0',
  'Adds BEPC physics-chemistry course'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52122',
  'fr-lycee-chimie-solutions-organique',
  'Chimie',
  'Bac C/D — Chimie — Solutions, équilibres et organique',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['c','d']::text[],
  'published',
  $md$
# Bac C/D — Chimie — Solutions, équilibres et organique

## Solutions
La résolution commence par les unités: volume en litre, masse en gramme, quantité en mole.

$$n=\frac{m}{M},\quad C=\frac{n}{V}$$

## Acides et bases
Un acide libère $H_3O^+$ en solution. Une base libère ou capte selon le couple considéré.

### Méthode pH
1. Identifier l'espèce dominante.
2. Écrire la relation utile.
3. Remplacer avec des unités cohérentes.
4. Vérifier si le résultat est acide, neutre ou basique.

## Cinétique
La vitesse dépend de la concentration, de la température, de la surface de contact et d'un catalyseur.

## Organique
| Famille | Test ou indice |
|---|---|
| Alcène | décolore l'eau de brome |
| Alcool | oxydation possible |
| Aldéhyde | réactif de Tollens positif |
| Acide carboxylique | pH acide |
| Ester | odeur fruitée, hydrolyse possible |

## Entraînement
**Q1.** Prépare une dilution avec $C_1V_1=C_2V_2$.

**Q2.** Calcule le pH d'une solution d'acide fort.

**Q3.** Nomme une molécule organique simple à partir de sa formule semi-développée.
$md$,
  'course',
  'course',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored Bac chemistry course',
  'approved',
  'approved',
  '1.0.0',
  'Adds Bac chemistry course'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52123',
  'fr-lycee-economie-entreprise-marche',
  'Économie',
  'Probatoire/Bac STT — Économie — Marchés, entreprise et croissance',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['acc','cg','fig','ses']::text[],
  'published',
  $md$
# Probatoire/Bac STT — Économie — Marchés, entreprise et croissance

## Marché
Un marché met en relation offre et demande. Le prix d'équilibre se forme quand la quantité offerte égale la quantité demandée.

| Hausse de | Effet possible |
|---|---|
| demande | prix augmente |
| offre | prix baisse |
| coût de production | prix augmente |
| revenu des ménages | demande peut augmenter |

## Entreprise
Une entreprise combine travail, capital et organisation pour produire des biens ou services.

## Inflation
L'inflation est la hausse générale et durable des prix. Elle réduit le pouvoir d'achat si les revenus ne suivent pas.

## Chômage
Le chômage touche les personnes sans emploi, disponibles et à la recherche d'un travail.

## Croissance
La croissance correspond à l'augmentation durable de la production. Elle se mesure souvent par le PIB réel.

## Questions types
**Q1.** Différencie offre et demande. *(4 marks)*

**Q2.** Explique deux causes de l'inflation. *(6 marks)*

**Q3.** Donne deux rôles économiques de l'entreprise. *(4 marks)*
$md$,
  'course',
  'course',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored STT economics course',
  'approved',
  'approved',
  '1.0.0',
  'Adds STT economics course'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52124',
  'fr-lycee-economie-entreprise-marche',
  'Économie',
  'Fiche — Probatoire/Bac STT — Économie',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['acc','cg','fig','ses']::text[],
  'published',
  $md$
# Fiche — Probatoire/Bac STT — Économie

## Formules et notions
Taux de croissance:

$$Taux=\frac{Valeur\ finale - Valeur\ initiale}{Valeur\ initiale}\times100$$

Indice:

$$Indice=\frac{Valeur\ courante}{Valeur\ de\ base}\times100$$

Productivité:

$$Productivité=\frac{Production}{Facteur\ utilisé}$$

## Définitions
| Notion | Définition |
|---|---|
| PIB | valeur des biens et services finaux produits dans un pays |
| Inflation | hausse générale et durable des prix |
| Pouvoir d'achat | quantité de biens et services achetables avec un revenu |
| Investissement | acquisition de capital pour produire |
| Épargne | revenu non consommé |
$md$,
  'cheatsheet',
  'cheatsheet',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored STT economics cheatsheet',
  'approved',
  'approved',
  '1.0.0',
  'Adds STT economics cheatsheet'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52125',
  'fr-stt-economie-comptabilite',
  'Comptabilité',
  'Probatoire/Bac STT — Comptabilité générale',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['acc','cg','fig','ses']::text[],
  'published',
  $md$
# Probatoire/Bac STT — Comptabilité générale

## Logique débit-crédit
Chaque opération doit conserver l'égalité:

$$Total\ débit = Total\ crédit$$

## Journal
Pour enregistrer:
1. Identifier les comptes concernés.
2. Dire quel compte augmente et quel compte diminue.
3. Appliquer débit/crédit selon la nature du compte.
4. Vérifier l'équilibre.

## Bilan
| Actif | Passif |
|---|---|
| immobilisations | capitaux propres |
| stocks | dettes |
| créances | résultat |
| banque/caisse | fournisseurs |

## Compte de résultat
Le résultat se calcule par:

$$Résultat = Produits - Charges$$

## Entraînement
**Q1.** Enregistre un achat de marchandises à crédit.

**Q2.** Calcule une annuité d'amortissement linéaire.

**Q3.** Présente une balance simplifiée.
$md$,
  'course',
  'course',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored STT accounting course',
  'approved',
  'approved',
  '1.0.0',
  'Adds STT accounting course'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52126',
  'fr-lycee-economie-entreprise-marche',
  'Économie',
  'Baccalauréat STT — Sujet d’entraînement — Économie et Comptabilité',
  'french',
  'advanced',
  array['terminale']::text[],
  array['acc','cg','fig','ses']::text[],
  'published',
  $md$
# Baccalauréat STT — Sujet d'entraînement — Économie et Comptabilité

## Économie
**Q1.** Définis inflation, chômage et croissance économique. *(6 marks)*

**Q2.** Explique deux effets d'une hausse générale des prix sur les ménages. *(6 marks)*

**Q3.** Calcule le taux de croissance quand une production passe de 800 à 1000 unités. *(4 marks)*

## Comptabilité
**Q4.** Une entreprise achète des marchandises à crédit pour 150 000 FCFA. Présente l'écriture au journal. *(6 marks)*

**Q5.** Un matériel de 600 000 FCFA est amorti linéairement sur 5 ans. Calcule l'annuité. *(4 marks)*

**Q6.** Explique la différence entre bilan et compte de résultat. *(4 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored STT economics-accounting practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds STT economics-accounting practice paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52127',
  'fr-lycee-svt-genetique-immunologie',
  'Sciences de la Vie et de la Terre',
  'Baccalauréat D — Sujet d’entraînement — SVT',
  'french',
  'advanced',
  array['terminale']::text[],
  array['d','c']::text[],
  'published',
  $md$
# Baccalauréat D — Sujet d'entraînement — SVT

## Génétique
**Q1.** Définis gène, allèle, génotype et phénotype. *(4 marks)*

**Q2.** Réalise un croisement monohybride simple et interprète les proportions obtenues. *(8 marks)*

## Immunologie
**Q3.** Explique le rôle des lymphocytes B et T dans la réponse immunitaire. *(6 marks)*

## Géologie
**Q4.** Présente deux arguments en faveur de la tectonique des plaques. *(6 marks)*

## Écologie
**Q5.** Analyse les conséquences d'une pollution d'eau sur une chaîne alimentaire. *(6 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored Bac SVT practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds Bac SVT practice paper'
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

insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, content_kind, doc_type, curriculum_path, exam, content_year,
  source_type, source_reference, permission_status, review_status, content_version, change_note
)
values
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52128',
  'fr-lycee-chimie-solutions-organique',
  'Chimie',
  'Baccalauréat — Sujet d’entraînement — Chimie',
  'french',
  'advanced',
  array['terminale']::text[],
  array['c','d']::text[],
  'published',
  $md$
# Baccalauréat — Sujet d'entraînement — Chimie

## Solutions
**Q1.** On dissout $4,0g$ de soude $NaOH$ dans $500mL$ d'eau. Calcule la concentration molaire. On donne $M(NaOH)=40g/mol$. *(6 marks)*

**Q2.** Explique comment préparer $100mL$ d'une solution $0,10mol/L$ à partir d'une solution mère $1,0mol/L$. *(5 marks)*

## Acides-bases
**Q3.** Calcule le pH d'une solution d'acide fort de concentration $10^{-2}mol/L$. *(4 marks)*

**Q4.** Donne deux précautions à prendre lors d'une manipulation acide-base. *(3 marks)*

## Organique
**Q5.** Identifie les fonctions organiques suivantes: $CH_3CH_2OH$, $CH_3COOH$, $CH_3COOCH_3$. *(6 marks)*

**Q6.** Écris l'équation générale d'une estérification et donne deux caractéristiques de cette réaction. *(6 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored Bac chemistry practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds dedicated Bac chemistry paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52129',
  'fr-stt-economie-comptabilite',
  'Comptabilité',
  'Baccalauréat STT — Sujet d’entraînement — Comptabilité',
  'french',
  'advanced',
  array['terminale']::text[],
  array['acc','cg','fig','ses']::text[],
  'published',
  $md$
# Baccalauréat STT — Sujet d'entraînement — Comptabilité

## Journal
**Q1.** Une entreprise achète des marchandises pour 250 000 FCFA, moitié au comptant par banque et moitié à crédit. Passe l'écriture au journal. *(8 marks)*

**Q2.** Elle vend des marchandises à crédit pour 400 000 FCFA. Enregistre l'opération. *(5 marks)*

## Amortissement
**Q3.** Un matériel coûte 1 200 000 FCFA et s'amortit linéairement sur 4 ans. Calcule l'annuité et la valeur nette après 2 ans. *(7 marks)*

## États financiers
**Q4.** Explique la différence entre actif immobilisé, actif circulant, capitaux propres et dettes. *(8 marks)*

**Q5.** Calcule le résultat si les produits valent 2 500 000 FCFA et les charges 1 850 000 FCFA. *(4 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored STT accounting practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds dedicated STT accounting paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52130',
  'fr-bepc-ecm-citoyennete',
  'Éducation à la Citoyenneté et à la Morale',
  'BEPC — Sujet d’entraînement — ECM',
  'french',
  'ordinary',
  array['troisieme']::text[],
  array['tronc_commun']::text[],
  'published',
  $md$
# BEPC — Sujet d'entraînement — ECM

## Citoyenneté
**Q1.** Définis citoyen, civisme et patriotisme. *(6 marks)*

**Q2.** Cite trois droits et trois devoirs d'un élève citoyen. *(6 marks)*

## Institutions
**Q3.** Donne le rôle du Parlement et celui de la Justice. *(4 marks)*

**Q4.** Cite quatre symboles de l'État camerounais. *(4 marks)*

## Morale
**Q5.** Explique deux conséquences de la corruption dans un établissement scolaire. *(6 marks)*

**Q6.** Propose trois actions pour protéger l'environnement dans ton quartier. *(6 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'BEPC',
  '2026',
  'teacher_authored',
  'StudySpark authored BEPC civic education practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds dedicated BEPC ECM paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52131',
  'fr-lycee-info-algo-systemes',
  'Informatique',
  'Lycée — Sujet d’entraînement — Informatique',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['ti','c','d','e','acc','cg','fig','ses','a1','a2','a4','abi']::text[],
  'published',
  $md$
# Lycée — Sujet d'entraînement — Informatique

## Algorithmique
**Q1.** Écris un algorithme qui lit trois notes, calcule la moyenne et affiche "admis" si la moyenne est au moins 10. *(8 marks)*

**Q2.** Différencie boucle `Pour` et boucle `TantQue` avec un exemple. *(6 marks)*

## Bases de données
**Q3.** Définis table, champ, enregistrement et clé primaire. *(6 marks)*

**Q4.** Propose une table `Eleves` avec quatre champs utiles. *(4 marks)*

## Web et sécurité
**Q5.** Explique le rôle de HTML, CSS et JavaScript. *(6 marks)*

**Q6.** Donne quatre règles de sécurité numérique pour un élève. *(4 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored lycée computing practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds dedicated lycée computing paper'
),
(
  '2b47cf2a-b1ec-4527-a8fe-4a64fca52132',
  'fr-premiere-a4-philo-methodologie',
  'Philosophie',
  'Baccalauréat — Sujet d’entraînement — Philosophie',
  'french',
  'advanced',
  array['premiere','terminale']::text[],
  array['a1','a2','a4','abi']::text[],
  'published',
  $md$
# Baccalauréat — Sujet d'entraînement — Philosophie

## Méthodologie
**Q1.** Explique la différence entre thème, problème, thèse et antithèse. *(8 marks)*

**Q2.** Pour le sujet "La science peut-elle tout expliquer ?", propose une problématique et un plan détaillé. *(12 marks)*

## Dissertation
**Q3.** Sujet: "La liberté consiste-t-elle à faire ce que l'on veut ?" Rédige une introduction complète. *(10 marks)*

**Q4.** Donne deux arguments pour et deux limites, avec un exemple pour chaque partie. *(10 marks)*
$md$,
  'paper',
  'paper',
  'francophone',
  'Baccalauréat',
  '2026',
  'teacher_authored',
  'StudySpark authored Bac philosophy practice paper',
  'approved',
  'approved',
  '1.0.0',
  'Adds dedicated philosophy paper'
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
