-- Seed Francophone (OBC) content for Cameroon learners
-- BEPC, Probatoire, and Baccalauréat papers, courses, and cheatsheets
-- Run this after the base schema is in place

-- ============================================================
-- FRANCOPHONE COURSES (cours complets)
-- ============================================================

insert into public.course_documents (
  title, subject, kind, content_markdown, status,
  level, class_levels, series, language,
  question_count, estimated_minutes, curriculum_path
) values
(
  'Mathématiques — Algèbre et équations (BEPC)',
  'Mathématiques',
  'course',
  E'# Algèbre et équations pour le BEPC\n\n## 1. Les équations du premier degré\n\nUne équation du premier degré à une inconnue x est de la forme : **ax + b = 0**\n\n### Méthode de résolution\n1. Isoler le terme en x d\'un côté\n2. Diviser par le coefficient de x\n3. Vérifier la solution\n\n**Exemple :** 3x + 6 = 0 → 3x = -6 → x = -2\n\n## 2. Les systèmes d\'équations\n\nMéthode de substitution ou d\'addition.\n\n**Exemple BEPC :**\n```\nx + y = 10\nx - y = 4\n```\nPar addition : 2x = 14 → x = 7, donc y = 3\n\n## 3. Les équations du second degré\n\nForme : **ax² + bx + c = 0**\n\nDiscriminant : Δ = b² - 4ac\n\n- Si Δ > 0 : deux solutions réelles distinctes\n- Si Δ = 0 : une solution double\n- Si Δ < 0 : pas de solution réelle\n\n**Exemple :** x² - 5x + 6 = 0\nΔ = 25 - 24 = 1 > 0 → x₁ = 2, x₂ = 3\n',
  'published',
  'ordinary',
  '{"troisieme"}',
  '{"tronc_commun"}',
  'french',
  25,
  45,
  'francophone'
),
(
  'Mathématiques — Analyse (Terminale Série C)',
  'Mathématiques',
  'course',
  E'# Analyse pour la Terminale Série C\n\n## 1. Limites et continuité\n\n### Définition de la limite\nOn dit que lim(x→a) f(x) = L si pour tout ε > 0, il existe δ > 0 tel que |x - a| < δ implique |f(x) - L| < ε.\n\n### Théorèmes de comparaison\n- Si f(x) ≤ g(x) et lim f = lim g = L, alors par encadrement...\n\n## 2. Dérivation\n\n### Définition\nf\'(x) = lim(h→0) [f(x+h) - f(x)] / h\n\n### Tableau des dérivées usuelles\n| Fonction | Dérivée |\n|----------|---------|\n| xⁿ | nxⁿ⁻¹ |\n| sin(x) | cos(x) |\n| cos(x) | -sin(x) |\n| eˣ | eˣ |\n| ln(x) | 1/x |\n\n## 3. Étude de fonction\n\n### Plan d\'étude\n1. Ensemble de définition\n2. Parité, périodicité\n3. Variations (signe de f\')\n4. Limites aux bornes\n5. Tableau de variations\n6. Tracé de la courbe\n\n**Exercice type Bac C :** Étudier la fonction f(x) = x³ - 3x + 2\n',
  'published',
  'advanced',
  '{"terminale"}',
  '{"c"}',
  'french',
  40,
  60,
  'francophone'
),
(
  'Physique — Électromagnétisme (Terminale Série C)',
  'Physique',
  'course',
  E'# Électromagnétisme — Terminale Série C\n\n## 1. Le champ électrique\n\n### Force de Coulomb\nDeux charges q₁ et q₂ séparées par une distance r s\'exercent une force :\n\n**F = k · |q₁q₂| / r²**  avec k = 9×10⁹ N·m²/C²\n\n### Champ électrique créé par une charge ponctuelle\n**E = k · |q| / r²**\n\n## 2. Le champ magnétique\n\n### Force de Lorentz\nUne charge q en mouvement dans un champ magnétique B subit une force :\n\n**F = q · v · B · sin(θ)**\n\n## 3. Induction électromagnétique\n\n### Loi de Faraday\nLa force électromotrice induite est proportionnelle à la variation du flux magnétique :\n\n**e = -dΦ/dt**\n\n### Loi de Lenz\nLe courant induit s\'oppose par ses effets à la cause qui lui a donné naissance.\n\n## Exercice type Bac C\n\nUne charge q = 2×10⁻⁶ C se déplace à v = 5×10⁴ m/s dans un champ B = 0,2 T perpendiculairement à sa trajectoire. Calculer la force de Lorentz.\n\n**Solution :** F = qvB = 2×10⁻⁶ × 5×10⁴ × 0,2 = 2×10⁻² N\n',
  'published',
  'advanced',
  '{"premiere","terminale"}',
  '{"c","e"}',
  'french',
  35,
  55,
  'francophone'
),
(
  'SVT — Génétique et évolution (Terminale Série C/D)',
  'Sciences de la Vie et de la Terre',
  'course',
  E'# Génétique et évolution — Terminale\n\n## 1. Les lois de Mendel\n\n### Première loi : uniformité des hybrides de première génération\nLe croisement de deux individus homozygotes donnent des hybrides tous identiques (phénotype du parent dominant).\n\n### Deuxième loi : disjonction des caractères\nLes hybrides F₂ se séparent suivant une proportion statistique de 3:1 (dominant:récessif).\n\n## 2. L\'ADN et la réplication\n\n### Structure de l\'ADN\n- Double hélice (Watson et Crick, 1953)\n- Appariement des bases : A-T (2 liaisons H) et G-C (3 liaisons H)\n\n### Réplication semi-conservative\nChaque brane fille contient un brin parental et un brin néoformé.\n\n## 3. La sélection naturelle\n\n### Théorie de Darwin\n1. Variabilité au sein des populations\n2. Lutte pour l\'existence\n3. Sélection des individus les plus adaptés\n4. Hérédité des caractères favorables\n\n## Exercice type Bac\n\nDans une population de 1000 individus, l\'allèle récessif a une fréquence q = 0,3. Calculer les fréquences génotypiques selon Hardy-Weinberg.\n\n**Solution :** p = 0,7\n- f(AA) = p² = 0,49\n- f(Aa) = 2pq = 0,42\n- f(aa) = q² = 0,09\n',
  'published',
  'advanced',
  '{"premiere","terminale"}',
  '{"c","d","ti"}',
  'french',
  30,
  50,
  'francophone'
),
(
  'Français — Étude de texte (BEPC)',
  'Français',
  'course',
  E'# Étude de texte pour le BEPC\n\n## 1. Identifier le genre et le registre\n\n### Genres littéraires\n- **Narratif** : conte, roman, nouvelle, récit\n- **Poétique** : poème en vers, prose poétique\n- **Théâtral** : comédie, tragédie, drame\n- **Argumentatif** : essai, pamphlet, discours\n\n### Registres de langue\n- **Soutenu** : vocabulaire recherché, syntaxe complexe\n- **Courant** : langage quotidien\n- **Familier** : expressions familières, argot\n\n## 2. Les figures de style\n\n| Figure | Définition | Exemple |\n|--------|-----------|---------|\n| Métaphore | Comparaison sans outil | "La mer est un champ de blé" |\n| Comparaison | Rapport explicite avec "comme" | "Blanc comme neige" |\n| Personnification | Attributs humains à un objet | "La nature sourit" |\n| Hyperbole | Exagération | "Je t\'ai dit mille fois" |\n| Litote | Atténuation | "Ce n\'est pas mal" (= c\'est bien) |\n\n## 3. Analyse d\'un texte argumentatif\n\n### Structure\n1. **Exorde** : accrocher l\'attention, annoncer le sujet\n2. **Développement** : arguments + exemples\n3. **Conclusion** : synthèse, ouverture\n\n**Exercice BEPC :** Analyser les procédés argumentatifs dans un extrait de discours.\n',
  'published',
  'ordinary',
  '{"troisieme"}',
  '{"tronc_commun"}',
  'french',
  20,
  40,
  'francophone'
),
(
  'Histoire-Géographie — L\'Afrique contemporaine (Terminale)',
  'Histoire-Géographie',
  'course',
  E'# L\'Afrique contemporaine — Terminale\n\n## 1. La décolonisation (1945-1965)\n\n### Facteurs de la décolonisation\n- Affaiblissement des puissances coloniales après la Seconde Guerre mondiale\n- Montée des nationalismes africains\n- Rôle de l\'ONU et des puissances rivales (URSS, USA)\n\n### Chronologie\n- 1957 : Indépendance du Ghana (première nation noire africaine)\n- 1960 : Année des indépendances (17 pays)\n- 1962 : Indépendance de l\'Algérie\n\n## 2. Les défis du développement\n\n### Problématiques\n- Démographie galopante (taux de fécondité élevés)\n- Pauvreté et inégalités\n- Dette extérieure\n- Instabilité politique\n\n### Le cas du Cameroun\n- Indépendance : 1er janvier 1960\n- Réunification : 1er octobre 1961\n- Bilinguisme officiel : français et anglais\n\n## 3. L\'intégration régionale\n\n### CEEAC et CEMAC\n- Promotion du commerce intra-africain\n- Défis : infrastructure, harmonisation des politiques\n\n**Exercice type Bac :** Analyser les causes et conséquences de la décolonisation en Afrique subsaharienne.\n',
  'published',
  'advanced',
  '{"premiere","terminale"}',
  '{"a1","a2","a4","abi","c","d","e","ti","acc","cg","fig","ses"}',
  'french',
  25,
  45,
  'francophone'
)

on conflict do nothing;

-- ============================================================
-- FRANCOPHONE CHEATSHEETS (fiches de révision)
-- ============================================================

insert into public.course_documents (
  title, subject, kind, content_markdown, status,
  level, class_levels, series, language,
  question_count, estimated_minutes, curriculum_path
) values
(
  'Fiche — Formules de trigonométrie (BEPC à Terminale)',
  'Mathématiques',
  'cheatsheet',
  E'# Formules de trigonomométrie\n\n## Valeurs remarquables\n\n| α | 0 | π/6 | π/4 | π/3 | π/2 |\n|---|---|-----|-----|-----|-----|\n| sin(α) | 0 | 1/2 | √2/2 | √3/2 | 1 |\n| cos(α) | 1 | √3/2 | √2/2 | 1/2 | 0 |\n| tan(α) | 0 | √3/3 | 1 | √3 | ∞ |\n\n## Formules fondamentales\n\n- **sin²(x) + cos²(x) = 1**\n- **1 + tan²(x) = 1/cos²(x)**\n- **sin(2x) = 2sin(x)cos(x)**\n- **cos(2x) = cos²(x) - sin²(x) = 2cos²(x) - 1 = 1 - 2sin²(x)**\n\n## Formules d\'addition\n\n- **sin(a+b) = sin(a)cos(b) + cos(a)sin(b)**\n- **cos(a+b) = cos(a)cos(b) - sin(a)sin(b)**\n- **sin(a-b) = sin(a)cos(b) - cos(a)sin(b)**\n- **cos(a-b) = cos(a)cos(b) + sin(a)sin(b)**\n\n## Équations trigonométriques\n\n- sin(x) = sin(α) → x = α + 2kπ ou x = π - α + 2kπ\n- cos(x) = cos(α) → x = α + 2kπ ou x = -α + 2kπ\n',
  'published',
  'ordinary',
  '{"sixieme","cinquieme","quatrieme","troisieme","seconde","premiere","terminale"}',
  '{"tronc_commun","a1","a2","a4","abi","c","d","e","ti"}',
  'french',
  15,
  20,
  'francophone'
),
(
  'Fiche — Tableau périodique et classifications (BEPC)',
  'Physique-Chimie',
  'cheatsheet',
  E'# Tableau périodique et classifications\n\n## Classification périodique\n\n### Familles principales\n| Famille | Colonne | Caractéristique |\n|---------|---------|------------------|\n| Alcalins | 1 | Un électron de valence, très réactifs |\n| Alcalino-terreux | 2 | Deux électrons de valence |\n| Halogènes | 17 | Sept électrons, très réactifs |\n| Gaz nobles | 18 | Huit électrons, stables |\n\n## Calcul de la charge ionique\n\n- **Métaux** : perdent des électrons → cations positifs\n- **Non-métaux** : gagnent des électrons → anions négatifs\n\n**Exemple :** Na (11e⁻) → Na⁺ (10e⁻, configuration de Ne)\n\n## Les types de liaisons\n\n1. **Ionique** : transfert d\'électrons (ex: NaCl)\n2. **Covalente** : mise en commun d\'électrons (ex: H₂O)\n3. **Métallique** : nuage d\'électrons délocalisés\n',
  'published',
  'ordinary',
  '{"quatrieme","troisieme"}',
  '{"tronc_commun"}',
  'french',
  10,
  15,
  'francophone'
),
(
  'Fiche — Figures de style (Français)',
  'Français',
  'cheatsheet',
  E'# Figures de style essentielles\n\n## Figures de substitution\n\n| Figure | Définition | Exemple |\n|--------|-----------|---------|\n| Métaphore | Identification implicite | "Le temps est un grand maître" |\n| Comparaison | Rapport explicite | "Fort comme un lion" |\n| Métaphore | Identification sans outil | "La mer est un champ de blé" |\n| Personnification | Humanisation | "La nuit tombe" |\n| Synesthésie | Mélange des sens | "Une voix bleue" |\n\n## Figures de opposition\n\n| Figure | Définition | Exemple |\n|--------|-----------|---------|\n| Antithèse | Opposition de termes | "C\'est la fête du village et le deuil de la maison" |\n| Oxymore | Union de contraires | "Un silence assourdissant" |\n| Paradoxe | Apparente contradiction | "Il faut savoir perdre pour gagner" |\n\n## Figures de répétition\n\n| Figure | Définition | Exemple |\n|--------|-----------|---------|\n| Anaphore | Répétition en début de vers/phrase | "Nous voulons... Nous voulons..." |\n| Parallélisme | Structure identique | "Voir, sentir, comprendre" |\n| Chiasme | Inversion symétrique | "Il faut manger pour vivre et non vivre pour manger" |\n',
  'published',
  'ordinary',
  '{"sixieme","cinquieme","quatrieme","troisieme","seconde","premiere","terminale"}',
  '{"tronc_commun","a1","a2","a4","abi"}',
  'french',
  12,
  18,
  'francophone'
)

on conflict do nothing;

-- ============================================================
-- FRANCOPHONE PAPERS (épreuves BEPC et Baccalauréat)
-- ============================================================

insert into public.course_documents (
  title, subject, kind, content_markdown, status,
  level, class_levels, series, language,
  question_count, estimated_minutes, curriculum_path
) values
(
  'BEPC 2023 — Mathématiques (Zone Centre)',
  'Mathématiques',
  'paper',
  E'# BEPC 2023 — Mathématiques\n\n**Durée : 2h** | **Coefficient : 4**\n\n---\n\n## Exercice 1 (6 points) — Arithmétique et statistiques\n\nUn élève a obtenu les notes suivantes en mathématiques sur 20 :\n12 ; 15 ; 8 ; 14 ; 10 ; 16 ; 7 ; 13\n\n1. Calculer la moyenne de ces notes. (1,5 pt)\n2. Déterminer la médiane. (1,5 pt)\n3. Calculer l\'étendue. (1 pt)\n4. Quel pourcentage représentent les notes supérieures ou égales à 10 ? (2 pts)\n\n---\n\n## Exercice 2 (6 points) — Géométrie\n\nDans un triangle ABC rectangle en A, on a AB = 6 cm et AC = 8 cm.\n\n1. Calculer BC. (2 pts)\n2. Calculer sin(B̂) et cos(Ĉ). (2 pts)\n3. Soit H le pied de la hauteur issue de A. Calculer AH. (2 pts)\n\n---\n\n## Exercice 3 (8 points) — Algèbre\n\nOn considère l\'expression E = (2x - 3)² - (x + 1)(2x - 3)\n\n1. Factoriser E. (2 pts)\n2. Résoudre l\'équation E = 0. (2 pts)\n3. Soit f(x) = 2x - 3. Calculer f(-1) et f(3/2). (2 pts)\n4. Représenter graphiquement la fonction affine f. (2 pts)\n\n---\n\n**[Fin de l\'épreuve]**\n',
  'published',
  'ordinary',
  '{"troisieme"}',
  '{"tronc_commun"}',
  'french',
  12,
  120,
  'francophone'
),
(
  'Baccalauréat 2023 — Mathématiques Série C (Zone Centre)',
  'Mathématiques',
  'paper',
  E'# Baccalauréat 2023 — Mathématiques Série C\n\n**Durée : 4h** | **Coefficient : 5**\n\n---\n\n## Exercice 1 (5 points) — Analyse\n\nSoit f la fonction définie sur ℝ par : f(x) = x³ - 3x + 2\n\n1. Étudier les variations de f. (2 pts)\n2. Déterminer les points d\'inflexion de la courbe représentative. (1,5 pt)\n3. Tracer la courbe dans un repère orthonormé. (1,5 pt)\n\n---\n\n## Exercice 2 (5 points) — Suites numériques\n\nOn définit la suite (uₙ) par : u₀ = 2 et uₙ₊₁ = ½uₙ + 3\n\n1. Calculer u₁, u₂ et u₃. (1 pt)\n2. Montrer que (uₙ) est convergente et déterminer sa limite. (2 pts)\n3. Soit vₙ = uₙ - 6. Montrer que (vₙ) est géométrique. (2 pts)\n\n---\n\n## Problème (10 points)\n\n### Partie A — Équations différentielles (5 pts)\n\nOn considère l\'équation différentielle : y\'\' + 4y = 0\n\n1. Déterminer les solutions générales de cette équation. (2 pts)\n2. Trouver la solution vérifiant y(0) = 1 et y\'(0) = 0. (2 pts)\n3. Quelle est la période de cette solution ? (1 pt)\n\n### Partie B — Probabilités (5 pts)\n\nUne urne contient 3 boules rouges et 5 boules blanches. On tire successivement sans remise 2 boules.\n\n1. Calculer la probabilité d\'obtenir deux boules rouges. (2 pts)\n2. Calculer la probabilité d\'obtenir deux boules de même couleur. (2 pts)\n3. Soit X la variable aléatoire donnant le nombre de boules rouges obtenues. Déterminer la loi de probabilité de X et calculer E(X). (1 pt)\n\n---\n\n**[Fin de l\'épreuve]**\n',
  'published',
  'advanced',
  '{"terminale"}',
  '{"c"}',
  'french',
  20,
  240,
  'francophone'
),
(
  'Baccalauréat 2023 — Physique Série C (Zone Centre)',
  'Physique',
  'paper',
  E'# Baccalauréat 2023 — Physique Série C\n\n**Durée : 2h30** | **Coefficient : 4**\n\n---\n\n## Exercice 1 (6 points) — Mécanique\n\nUn solide de masse m = 2 kg glisse sur un plan incliné d\'un angle α = 30° par rapport à l\'horizontal. On néglige les frottements.\n\n1. Faire le bilan des forces et les représenter sur un schéma. (2 pts)\n2. Déterminer l\'accélération du solide. (2 pts)\n3. Quelle distance parcourt le solide en 2 secondes s\'il part du repos ? (2 pts)\n\n---\n\n## Exercice 2 (7 points) — Électricité\n\nUn circuit RLC série est alimenté par une tension alternative sinusoïdale de fréquence f = 50 Hz. On a R = 100 Ω, L = 0,5 H, C = 20 μF.\n\n1. Calculer l\'impédance du circuit. (2 pts)\n2. Calculer la fréquence de résonance. (2 pts)\n3. À la résonance, quelle est l\'intensité du courant si U = 220 V ? (2 pts)\n4. Calculer le facteur de qualité Q. (1 pt)\n\n---\n\n## Exercice 3 (7 points) — Optique\n\nUne lentille convergente a une distance focale f\' = 10 cm. Un objet AB de hauteur 2 cm est placé à 15 cm devant la lentille.\n\n1. Construire l\'image A\'B\' sur un schéma à l\'échelle 1/2. (2 pts)\n2. Par le calcul, déterminer la position et la taille de l\'image. (3 pts)\n3. L\'image est-elle réelle ou virtuelle ? Droite ou renversée ? (2 pts)\n\n---\n\n**[Fin de l\'épreuve]**\n',
  'published',
  'advanced',
  '{"terminale"}',
  '{"c","e"}',
  'french',
  18,
  150,
  'francophone'
),
(
  'Baccalauréat 2023 — Philosophie Série A (Zone Centre)',
  'Philosophie',
  'paper',
  E'# Baccalauréat 2023 — Philosophie Série A\n\n**Durée : 4h** | **Coefficient : 4**\n\n---\n\n## Sujet de dissertation\n\n**« La liberté est-elle une illusion ? »**\n\n---\n\n## Instructions\n\n1. Vous devez traiter le sujet sous forme de dissertation philosophique.\n2. La dissertation doit comporter :\n   - Une introduction (présentation du sujet, problématique, annonce du plan)\n   - Un développement en deux parties, chacune comportant deux sous-parties\n   - Une conclusion (bilan, ouverture)\n\n3. Vous devez mobiliser au moins deux références philosophiques.\n\n---\n\n## Éléments de réflexion\n\n### Pour la liberté comme réalité :\n- L\'expérience intime du choix (Sartre : "L\'homme est condamné à être libre")\n- La responsabilité morale implique la liberté (Kant)\n- L\'action politique comme affirmation de la liberté\n\n### Pour la liberté comme illusion :\n- Le déterminisme causal (Spinoza : "Les hommes se croient libres parce qu\'ils ignorent les causes de leurs actions")\n- La conscience n\'est que le spectateur de nos déterminismes (Freud, l\'inconscient)\n- Les contraintes sociales et économiques\n\n### Dépassement :\n- La liberté comme degré (n\'est pas tout ou rien)\n- La liberté négative et la liberté positive (Isaiah Berlin)\n- L\'émancipation comme processus historique\n\n---\n\n**[Fin de l\'épreuve]**\n',
  'published',
  'advanced',
  '{"terminale"}',
  '{"a1","a2","a4","abi"}',
  'french',
  1,
  240,
  'francophone'
),
(
  'BEPC 2023 — Français (Zone Centre)',
  'Français',
  'paper',
  E'# BEPC 2023 — Français\n\n**Durée : 2h** | **Coefficient : 3**\n\n---\n\n## I. Grammaire et expression écrite (10 points)\n\n### A. Analyse grammaticale (4 pts)\n\nDans la phrase suivante :\n\n> "Les élèves qui travaillent avec assiduité réussissent toujours à leurs examens."\n\n1. Quelle est la nature de "qui" ? (1 pt)\n2. Quel est l\'antécédent de "qui" ? (0,5 pt)\n3. Analyser le verbe "réussissent" (mode, temps, personne, nombre). (2 pts)\n4. Quel est le complément du nom dans "assiduité" ? (0,5 pt)\n\n### B. Réécriture (3 pts)\n\nTransformer les phrases suivantes selon les indications :\n\n1. "Il fait très chaud." (Exclamative) (1 pt)\n2. "Il a fini ses devoirs." (Passé composé → Plus-que-parfait) (1 pt)\n3. "Le professeur dit aux élèves : \'Travaillez sérieusement.\'" (Discours indirect) (1 pt)\n\n### C. Expression (3 pts)\n\nRédiger un texte argumentatif de 15 à 20 lignes sur le thème :\n**« L\'éducation est la clé du développement du Cameroun. »**\n\n---\n\n## II. Compréhension et expression orale (10 points)\n\n### A. Lecture et questions (5 pts)\n\n**Texte :** Extrait du discours de Paul Biya sur l\'éducation nationale\n\n[Le candidat lit le texte à voix haute, puis répond aux questions de compréhension]\n\n### B. Expression orale (5 pts)\n\nPrésenter oralement en 3 minutes votre parcours scolaire et vos projets d\'avenir.\n\n---\n\n**[Fin de l\'épreuve]**\n',
  'published',
  'ordinary',
  '{"troisieme"}',
  '{"tronc_commun"}',
  'french',
  8,
  120,
  'francophone'
),
(
  'Probatoire 2023 — Mathématiques Série C (Zone Centre)',
  'Mathématiques',
  'paper',
  E'# Probatoire 2023 — Mathématiques Série C\n\n**Durée : 3h** | **Coefficient : 4**\n\n---\n\n## Exercice 1 (5 points) — Fonctions numériques\n\nSoit f la fonction définie sur ]0 ; +∞[ par : f(x) = x - 2 + ln(x)\n\n1. Déterminer les limites aux bornes de l\'ensemble de définition. (1 pt)\n2. Calculer f\'(x) et étudier le signe de f\'. (2 pts)\n3. Dresser le tableau de variations de f. (1 pt)\n4. Montrer que l\'équation f(x) = 0 admet une unique solution α dans ]1 ; 2[. (1 pt)\n\n---\n\n## Exercice 2 (5 points) — Géométrie dans l\'espace\n\nDans l\'espace rapporté à un repère orthonormé (O; i⃗, j⃗, k⃗), on considère les points :\nA(1; 0; 0), B(0; 2; 0), C(0; 0; 3)\n\n1. Déterminer une équation cartésienne du plan (ABC). (2 pts)\n2. Calculer la distance du point O au plan (ABC). (2 pts)\n3. Calculer le volume du tétraèdre OABC. (1 pt)\n\n---\n\n## Problème (10 points)\n\n### Partie A — Nombres complexes (5 pts)\n\nOn considère le nombre complexe : z = 1 + i√3\n\n1. Déterminer le module et un argument de z. (2 pts)\n2. Écrire z sous forme trigonométrique. (1 pt)\n3. Calculer z²⁰²³. (2 pts)\n\n### Partie B — Intégration (5 pts)\n\nSoit I = ∫₀¹ x·eˣ dx\n\n1. À l\'aide d\'une intégration par parties, calculer I. (3 pts)\n2. En déduire la valeur de J = ∫₀¹ x²·eˣ dx. (2 pts)\n\n---\n\n**[Fin de l\'épreuve]**\n',
  'published',
  'advanced',
  '{"premiere"}',
  '{"c"}',
  'french',
  16,
  180,
  'francophone'
)

on conflict do nothing;
