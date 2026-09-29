-- Seed rich French BEPC courses and fiches, update papers with richer content
-- Generated: 2026-09-29T12:05:09.415099
BEGIN;


-- BEPC — Mathématiques — Équations et systèmes
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2d692d5b-e51e-0c2c-0805-d9b750c2c54d', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC — Mathématiques — Équations et systèmes',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Mathématiques — Équations et systèmes

**Niveau :** Troisième — BEPC
**Matière :** Mathématiques

## Objectifs d''apprentissage

Maîtriser la résolution d''équations du premier degré et de systèmes d''équations à deux inconnues.

---

## 1. L''équation du premier degré

Une équation du premier degré à une inconnue $x$ est de la forme $ax + b = 0$ avec $a \neq 0$.

**Méthode de résolution :**
1. Développer et réduire chaque membre si nécessaire.
2. Regrouper les termes en $x$ d''un côté, les constantes de l''autre.
3. Diviser par le coefficient de $x$.
4. Vérifier la solution en la remplaçant dans l''équation initiale.

**Exemple :** Résoudre $3x - 7 = 2x + 5$.
- On soustrait $2x$ : $x - 7 = 5$
- On ajoute 7 : $x = 12$
- **Vérification :** $3(12) - 7 = 36 - 7 = 29$ et $2(12) + 5 = 24 + 5 = 29$. ✓

## 2. Les systèmes d''équations

Un système de deux équations à deux inconnues s''écrit :
$$\begin{cases} ax + by = c \\ a''x + b''y = c'' \end{cases}$$

**Méthode de substitution :** on exprime une inconnue en fonction de l''autre dans une équation, puis on remplace dans la seconde.

**Méthode de combinaison :** on multiplie les équations pour éliminer une inconnue par addition ou soustraction.

**Exemple BEPC :**
$$\begin{cases} x + y = 10 \\ x - y = 4 \end{cases}$$
Par addition : $2x = 14$ donc $x = 7$. En remplaçant : $7 + y = 10$ donc $y = 3$.

## 3. Traduire un problème en équation

**Méthode :**
1. Choisir l''inconnue (ou les inconnues).
2. Traduire chaque phrase en relation mathématique.
3. Résoudre l''équation ou le système.
4. Vérifier que la solution est cohérente avec l''énoncé.

**Exemple :** Un élève achète des cahiers à 300 FCFA et des stylos à 150 FCFA. Il paie 2 700 FCFA pour 12 articles.
Soit $x$ le nombre de cahiers et $y$ le nombre de stylos :
$$\begin{cases} x + y = 12 \\ 300x + 150y = 2700 \end{cases}$$
En divisant la 2e équation par 150 : $2x + y = 18$. Par soustraction : $x = 6$, donc $y = 6$.

## 4. Erreurs à éviter

- Oublier de vérifier la solution.
- Diviser par une expression qui peut être nulle.
- Se tromper de signe lors du regroupement des termes.
- Ne pas convertir les unités dans les problèmes concrets.

## 5. Exercices d''entraînement

**Exercice 1 :** Résoudre $5(x - 2) = 3x + 10$.
**Exercice 2 :** Résoudre le système $\begin{cases} 2x + 3y = 13 \\ x - y = 4 \end{cases}$.
**Exercice 3 :** Un rectangle a un périmètre de 36 cm et une longueur double de sa largeur. Trouver ses dimensions.

', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Mathématiques Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Mathématiques — Géométrie et mesures
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '50274da7-bd3b-40bd-6fff-7e4c1f8f0c52', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC — Mathématiques — Géométrie et mesures',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Mathématiques — Géométrie et mesures

**Niveau :** Troisième — BEPC
**Matière :** Mathématiques

## Objectifs d''apprentissage

Appliquer les théorèmes de géométrie et calculer aires, périmètres et volumes.

---

## 1. Le théorème de Pythagore

Dans un triangle rectangle, le carré de l''hypoténuse est égal à la somme des carrés des deux autres côtés :
$$AB^2 + AC^2 = BC^2$$

**Exemple :** Triangle rectangle en A avec AB = 6 cm et AC = 8 cm.
$$BC^2 = 6^2 + 8^2 = 36 + 64 = 100$$
$$BC = \sqrt{100} = 10 \text{ cm}$$

## 2. Aires et périmètres usuels

| Figure | Périmètre | Aire |
|---|---|---|
| Carré (côté $c$) | $4c$ | $c^2$ |
| Rectangle ($L \times l$) | $2(L + l)$ | $L \times l$ |
| Triangle (base $b$, hauteur $h$) | somme des côtés | $\frac{b \times h}{2}$ |
| Cercle (rayon $r$) | $2\pi r$ | $\pi r^2$ |
| Losange (diagonales $d, D$) | $4 \times$ côté | $\frac{d \times D}{2}$ |

## 3. Volumes usuels

| Solide | Volume |
|---|---|
| Cube (arête $a$) | $a^3$ |
| Pavé droit ($L \times l \times h$) | $L \times l \times h$ |
| Cylindre (rayon $r$, hauteur $h$) | $\pi r^2 h$ |
| Sphère (rayon $r$) | $\frac{4}{3}\pi r^3$ |

**Conversion importante :** $1 \text{ m}^3 = 1 000 \text{ L}$.

## 4. Angles et droites

- La somme des angles d''un triangle est $180°$.
- Deux angles complémentaires : somme $90°$.
- Deux angles supplémentaires : somme $180°$.
- Deux angles opposés par le sommet sont égaux.

## 5. Exercices d''entraînement

**Exercice 1 :** Un triangle rectangle a des côtés de 9 cm et 12 cm. Calculer l''hypoténuse.
**Exercice 2 :** Calculer l''aire d''un disque de rayon 5 cm (π ≈ 3,14).
**Exercice 3 :** Un réservoir cylindrique a un rayon de 1 m et une hauteur de 2 m. Quelle est sa capacité en litres ?

', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Mathématiques Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Mathématiques — Statistiques et probabilités
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ef724742-02b8-d97d-6e47-5c78bb91f8d6', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC — Mathématiques — Statistiques et probabilités',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Mathématiques — Statistiques et probabilités

**Niveau :** Troisième — BEPC
**Matière :** Mathématiques

## Objectifs d''apprentissage

Calculer les indicateurs statistiques et les probabilités simples.

---

## 1. Les indicateurs statistiques

**Moyenne :** $\bar{x} = \frac{\sum n_i x_i}{\sum n_i}$

**Médiane :** valeur qui partage la série en deux parties égales (après tri).

**Étendue :** différence entre la plus grande et la plus petite valeur.

**Exemple :** Notes de 5 élèves : 8, 12, 15, 9, 14.
- Moyenne : $\frac{8+12+15+9+14}{5} = \frac{58}{5} = 11,6$
- Série triée : 8, 9, 12, 14, 15 → médiane = 12
- Étendue : $15 - 8 = 7$

## 2. Les probabilités

La probabilité d''un événement est :
$$P(E) = \frac{\text{nombre de cas favorables}}{\text{nombre de cas possibles}}$$

**Propriétés :**
- $0 \leq P(E) \leq 1$
- $P(\text{événement certain}) = 1$
- $P(\text{événement impossible}) = 0$
- $P(\bar{E}) = 1 - P(E)$

**Exemple :** Un sac contient 3 boules rouges, 2 vertes et 5 bleues (10 boules).
- $P(\text{verte}) = \frac{2}{10} = \frac{1}{5}$
- $P(\text{rouge ou bleue}) = \frac{3+5}{10} = \frac{8}{10} = \frac{4}{5}$

## 3. Exercices d''entraînement

**Exercice 1 :** Calculer la moyenne, la médiane et l''étendue de la série : 4, 7, 9, 11, 14.
**Exercice 2 :** Un dé à 6 faces est lancé. Calculer la probabilité d''obtenir un nombre pair.
**Exercice 3 :** Dans une classe de 30 élèves, 18 sont des filles. Quelle est la probabilité de choisir un garçon au hasard ?

', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Mathématiques Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Mathématiques — Formules essentielles
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '54b776ba-3f4e-4aa5-14e4-11b3d1a5a590', 'fr-bepc-math-equations', 'Mathématiques', 'Fiche — BEPC — Mathématiques — Formules essentielles',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Mathématiques — Formules essentielles

**Niveau :** Troisième — BEPC
**Matière :** Mathématiques

---

# Fiche de révision — Mathématiques BEPC

## Algèbre
- $ax + b = 0 \Rightarrow x = -\frac{b}{a}$, $a \neq 0$
- $(x-a)(x-b) = 0 \Rightarrow x = a$ ou $x = b$
- Système : substitution ou combinaison.
- Identités remarquables :
  - $(a+b)^2 = a^2 + 2ab + b^2$
  - $(a-b)^2 = a^2 - 2ab + b^2$
  - $a^2 - b^2 = (a-b)(a+b)$

## Géométrie
- Pythagore : $AB^2 + AC^2 = BC^2$
- Aire disque : $A = \pi r^2$
- Circonférence : $C = 2\pi r$
- Volume cylindre : $V = \pi r^2 h$
- $1 \text{ m}^3 = 1 000 \text{ L}$

## Statistiques
- Moyenne : $\bar{x} = \frac{\sum n_i x_i}{\sum n_i}$
- Médiane : valeur centrale après tri.
- Étendue : max - min.

## Probabilités
- $P(E) = \frac{\text{cas favorables}}{\text{cas possibles}}$
- $P(\bar{E}) = 1 - P(E)$

## Pourcentages
- Augmentation de $t\%$ : multiplier par $1 + \frac{t}{100}$
- Réduction de $t\%$ : multiplier par $1 - \frac{t}{100}$

## Avant de rendre
- Écrire les unités.
- Vérifier les signes.
- Encadrer la réponse finale.

', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Mathématiques Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Mathématiques — Méthodes pas à pas
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '774895dd-0564-81c5-ed53-99e95d605f7e', 'fr-bepc-math-equations', 'Mathématiques', 'Fiche — BEPC — Mathématiques — Méthodes pas à pas',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Mathématiques — Méthodes pas à pas

**Niveau :** Troisième — BEPC
**Matière :** Mathématiques

---

# Fiche de révision — Méthodes Mathématiques BEPC

## Résoudre une équation
1. Développer et réduire.
2. Regrouper les $x$ d''un côté.
3. Diviser par le coefficient.
4. Vérifier la solution.

## Résoudre un système
1. Substitution : exprimer une inconnue, remplacer.
2. Combinaison : éliminer une inconnue.
3. Vérifier dans les deux équations.

## Calculer une moyenne
1. Multiplier chaque valeur par son effectif.
2. Additionner les produits.
3. Diviser par l''effectif total.

## Calculer une probabilité
1. Compter les cas possibles.
2. Compter les cas favorables.
3. Faire le rapport et simplifier.

## Problème concret
1. Identifier l''inconnue.
2. Traduire en équation.
3. Résoudre.
4. Vérifier la cohérence.
5. Répondre avec l''unité.

', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Mathématiques Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Mathématiques — Pièges à éviter
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ab2835ef-308e-e1c0-cf6f-4d122bfda4a5', 'fr-bepc-math-equations', 'Mathématiques', 'Fiche — BEPC — Mathématiques — Pièges à éviter',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Mathématiques — Pièges à éviter

**Niveau :** Troisième — BEPC
**Matière :** Mathématiques

---

# Fiche de révision — Pièges Mathématiques BEPC

## Erreurs fréquentes
- ❌ Diviser par une expression nulle.
- ❌ Oublier le signe négatif lors du regroupement.
- ❌ Confondre PGCD et PPCM.
- ❌ Oublier les unités (cm², cm³, L, FCFA).
- ❌ Ne pas simplifier les fractions.
- ❌ Confondre aire et périmètre.

## Vérifications rapides
- ✅ Une aire s''exprime en unités carrées.
- ✅ Un volume en unités cubiques.
- ✅ Une probabilité est toujours entre 0 et 1.
- ✅ Une moyenne est comprise entre min et max.
- ✅ Une solution d''équation vérifie l''équation.

## Astuces
- Pour un pourcentage de variation global, appliquer les multiplications successives.
- Pour un problème de partage, utiliser le rapport total.
- Toujours relire l''énoncé avant de répondre.

', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Mathématiques Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Update MCQ 1 for Mathématiques
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC MATHÉMATIQUES — ÉPREUVE 1 (QCM) — SÉRIE 1

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Mathématiques
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Un commerçant achète 25 cahiers à 350 FCFA l''unité. Il les revend tous à 425 FCFA l''unité. Quel est son bénéfice total ?

A. 1 875 FCFA
B. 8 750 FCFA
C. 10 625 FCFA
D. 1 750 FCFA

---

**Question 2.** Dans une classe de 30 élèves, 40% sont des filles. Combien y a-t-il de garçons ?

A. 18
B. 12
C. 20
D. 15

---

**Question 3.** Un réservoir d''eau a la forme d''un pavé droit de 2 m de long, 1,5 m de large et 1 m de haut. Quelle est sa capacité en litres ?

A. 3 000 L
B. 300 L
C. 30 000 L
D. 3,5 L

---

**Question 4.** Résoudre l''équation : $3x - 7 = 2x + 5$.

A. $x = 12$
B. $x = 2$
C. $x = -2$
D. $x = 5$

---

**Question 5.** Un article coûte 8 000 FCFA. Il subit une hausse de 15%. Quel est son nouveau prix ?

A. 9 200 FCFA
B. 8 150 FCFA
C. 9 000 FCFA
D. 8 800 FCFA

---

**Question 6.** Le PGCD de 24 et 36 est :

A. 12
B. 6
C. 18
D. 72

---

**Question 7.** Un train parcourt 240 km en 3 heures. Quelle est sa vitesse moyenne ?

A. 80 km/h
B. 60 km/h
C. 120 km/h
D. 72 km/h

---

**Question 8.** L''aire d''un triangle de base 12 cm et de hauteur 8 cm est :

A. 48 cm²
B. 96 cm²
C. 24 cm²
D. 40 cm²

---

**Question 9.** Résoudre le système : $\begin{cases} x + y = 10 \\ x - y = 4 \end{cases}$.

A. $x = 7$, $y = 3$
B. $x = 3$, $y = 7$
C. $x = 6$, $y = 4$
D. $x = 5$, $y = 5$

---

**Question 10.** Un champ rectangulaire mesure 120 m sur 80 m. Quelle est son aire en hectares ?

A. 0,96 ha
B. 9,6 ha
C. 96 ha
D. 9 600 ha

---

## CORRIGÉ

1. 1 875 FCFA
2. 18
3. 3 000 L
4. $x = 12$
5. 9 200 FCFA
6. 12
7. 80 km/h
8. 48 cm²
9. $x = 7$, $y = 3$
10. 0,96 ha
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '3eb41e0c-6931-8e21-e3ce-cae4380f3137';


-- Update MCQ 2 for Mathématiques
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC MATHÉMATIQUES — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Mathématiques
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** La moyenne de la série 4, 6, 8, 10, 12 est :

A. 8
B. 7
C. 9
D. 10

---

**Question 2.** Un capital de 100 000 FCFA est placé à 5% par an. Quel est l''intérêt simple après 2 ans ?

A. 10 000 FCFA
B. 5 000 FCFA
C. 20 000 FCFA
D. 15 000 FCFA

---

**Question 3.** Le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14) est :

A. 282,6 cm³
B. 94,2 cm³
C. 188,4 cm³
D. 282,6 cm²

---

**Question 4.** Résoudre : $\frac{2x}{3} = 8$.

A. $x = 12$
B. $x = 24$
C. $x = 6$
D. $x = 4$

---

**Question 5.** Un élève obtient les notes 12, 15, 9 et 14. Quelle note doit-il obtenir au 5e devoir pour avoir une moyenne de 13 ?

A. 15
B. 13
C. 14
D. 16

---

**Question 6.** Le prix d''un article passe de 2 500 FCFA à 2 000 FCFA. Quel est le pourcentage de réduction ?

A. 20%
B. 25%
C. 15%
D. 10%

---

**Question 7.** L''équation de la droite passant par l''origine et de pente 3 est :

A. $y = 3x$
B. $y = x + 3$
C. $y = 3x + 1$
D. $x = 3y$

---

**Question 8.** Un sac contient 5 boules rouges, 3 vertes et 2 bleues. On tire une boule au hasard. Quelle est la probabilité de tirer une boule verte ?

A. $\frac{3}{10}$
B. $\frac{1}{3}$
C. $\frac{3}{5}$
D. $\frac{1}{5}$

---

**Question 9.** Le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14) est :

A. 43,96 cm
B. 21,98 cm
C. 153,86 cm
D. 14 cm

---

**Question 10.** Résoudre : $x^2 - 9 = 0$.

A. $x = 3$ ou $x = -3$
B. $x = 3$
C. $x = 9$
D. $x = 4,5$

---

## CORRIGÉ

1. 8
2. 10 000 FCFA
3. 282,6 cm³
4. $x = 12$
5. 15
6. 20%
7. $y = 3x$
8. $\frac{3}{10}$
9. 43,96 cm
10. $x = 3$ ou $x = -3$
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '3e7ee059-8cfc-b4d5-e968-46f9963587c9';


-- Update MCQ 3 for Mathématiques
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC MATHÉMATIQUES — ÉPREUVE 1 (QCM) — SÉRIE 3

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Mathématiques
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Un maçon utilise 3 sacs de ciment pour 12 m² de mur. Combien de sacs faut-il pour 20 m² ?

A. 5 sacs
B. 4 sacs
C. 6 sacs
D. 7 sacs

---

**Question 2.** La somme des angles d''un triangle est :

A. 180°
B. 90°
C. 360°
D. 270°

---

**Question 3.** Un article coûte 5 000 FCFA. On applique une remise de 10% puis une hausse de 10%. Quel est le prix final ?

A. 4 950 FCFA
B. 5 000 FCFA
C. 5 050 FCFA
D. 4 900 FCFA

---

**Question 4.** Le nombre 0,75 en pourcentage est :

A. 75%
B. 7,5%
C. 0,75%
D. 750%

---

**Question 5.** Un triangle rectangle a des côtés de 6 cm et 8 cm. Quelle est la longueur de l''hypoténuse ?

A. 10 cm
B. 14 cm
C. 12 cm
D. 9 cm

---

**Question 6.** Résoudre : $5x - 2 = 3x + 8$.

A. $x = 5$
B. $x = 3$
C. $x = 10$
D. $x = 6$

---

**Question 7.** Un élève lit 15 pages en 20 minutes. Combien de pages lira-t-il en 1 heure ?

A. 45 pages
B. 40 pages
C. 50 pages
D. 60 pages

---

**Question 8.** L''aire d''un losange de diagonales 6 cm et 8 cm est :

A. 24 cm²
B. 48 cm²
C. 14 cm²
D. 28 cm²

---

**Question 9.** Le PPCM de 4 et 6 est :

A. 12
B. 24
C. 6
D. 2

---

**Question 10.** Un commerçant vend un article à 6 250 FCFA alors qu''il l''a acheté 5 000 FCFA. Quel est le pourcentage de bénéfice ?

A. 25%
B. 20%
C. 30%
D. 15%

---

## CORRIGÉ

1. 5 sacs
2. 180°
3. 4 950 FCFA
4. 75%
5. 10 cm
6. $x = 5$
7. 45 pages
8. 24 cm²
9. 12
10. 25%
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '07ed82b8-4104-f812-d986-a11073a42990';


-- Update set 4 for Mathématiques
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC MATHÉMATIQUES — ÉPREUVE 2 — SÉRIE 4

## Épreuve de problèmes et exercices

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Mathématiques
**Durée :** 2 heures
**Coefficient :** 4

**Consignes :**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.
- La qualité de la rédaction et la clarté des explications sont prises en compte.

---

## SECTION 1 : STATISTIQUES ET PROBABILITÉS

**Exercice 1.** La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l''étendue.

*(5 points)*

**Exercice 1.** Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte, puis une boule rouge ou bleue.

*(5 points)*

**Exercice 1.** Un dé à six faces est lancé. Calculer la probabilité d''obtenir un nombre pair, puis un nombre supérieur à 4.

*(5 points)*

**Exercice 1.** Construire un tableau d''effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6 et calculer la moyenne pondérée.

*(5 points)*

**Exercice 1.** La moyenne de 5 nombres est 12. Calculer leur somme, puis la nouvelle moyenne si on ajoute 18.

*(5 points)*

## SECTION 2 : PROBLÈMES CONCRETS

**Exercice 2.** Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²), puis le coût de la clôture à 1 500 FCFA le mètre.

*(5 points)*

**Exercice 2.** Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h, puis le temps pour parcourir 400 km à cette vitesse.

*(5 points)*

**Exercice 2.** Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?

*(5 points)*

**Exercice 2.** Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.

*(5 points)*

**Exercice 2.** Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.

*(5 points)*

## SECTION 3 : ARITHMÉTIQUE ET NOMBRES

**Exercice 3.** Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et leur PPCM.

*(5 points)*

**Exercice 3.** Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier chaque réponse.

*(5 points)*

**Exercice 3.** Calculer : $\frac{7}{12} + \frac{5}{18} - \frac{1}{4}$ et donner le résultat sous forme irréductible.

*(5 points)*

**Exercice 3.** Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final et le pourcentage global de variation.

*(5 points)*

**Exercice 3.** Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique, puis effectuer leur produit.

*(5 points)*

## SECTION 4 : ALGÈBRE ET ÉQUATIONS

**Exercice 4.** Résoudre l''équation : $\frac{2x - 3}{4} = \frac{x + 1}{2}$ et vérifier la solution.

*(5 points)*

**Exercice 4.** Résoudre le système : $\begin{cases} 3x + 2y = 19 \\ 2x - y = 1 \end{cases}$ par la méthode de combinaison.

*(5 points)*

**Exercice 4.** Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.

*(5 points)*

**Exercice 4.** Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.

*(5 points)*

**Exercice 4.** Un père a 40 ans, son fils a 12 ans. Dans combien d''années le père aura-t-il le triple de l''âge du fils ?

*(5 points)*

## SECTION 5 : GÉOMÉTRIE ET MESURES

**Exercice 5.** ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC, puis l''aire du triangle.

*(5 points)*

**Exercice 5.** Calculer l''aire et le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14).

*(5 points)*

**Exercice 5.** Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.

*(5 points)*

**Exercice 5.** Calculer le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).

*(5 points)*

**Exercice 5.** Deux angles sont complémentaires. L''un mesure 35°. Calculer l''autre et donner son supplément.

*(5 points)*
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '3b3358d0-2734-128a-6c44-76e682256505';


-- Update set 5 for Mathématiques
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC MATHÉMATIQUES — ÉPREUVE 2 — SÉRIE 5

## Épreuve de problèmes et exercices

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Mathématiques
**Durée :** 2 heures
**Coefficient :** 4

**Consignes :**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.
- La qualité de la rédaction et la clarté des explications sont prises en compte.

---

## SECTION 1 : PROBLÈMES CONCRETS

**Exercice 1.** Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²), puis le coût de la clôture à 1 500 FCFA le mètre.

*(5 points)*

**Exercice 1.** Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h, puis le temps pour parcourir 400 km à cette vitesse.

*(5 points)*

**Exercice 1.** Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?

*(5 points)*

**Exercice 1.** Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.

*(5 points)*

**Exercice 1.** Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.

*(5 points)*

## SECTION 2 : ARITHMÉTIQUE ET NOMBRES

**Exercice 2.** Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et leur PPCM.

*(5 points)*

**Exercice 2.** Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier chaque réponse.

*(5 points)*

**Exercice 2.** Calculer : $\frac{7}{12} + \frac{5}{18} - \frac{1}{4}$ et donner le résultat sous forme irréductible.

*(5 points)*

**Exercice 2.** Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final et le pourcentage global de variation.

*(5 points)*

**Exercice 2.** Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique, puis effectuer leur produit.

*(5 points)*

## SECTION 3 : ALGÈBRE ET ÉQUATIONS

**Exercice 3.** Résoudre l''équation : $\frac{2x - 3}{4} = \frac{x + 1}{2}$ et vérifier la solution.

*(5 points)*

**Exercice 3.** Résoudre le système : $\begin{cases} 3x + 2y = 19 \\ 2x - y = 1 \end{cases}$ par la méthode de combinaison.

*(5 points)*

**Exercice 3.** Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.

*(5 points)*

**Exercice 3.** Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.

*(5 points)*

**Exercice 3.** Un père a 40 ans, son fils a 12 ans. Dans combien d''années le père aura-t-il le triple de l''âge du fils ?

*(5 points)*

## SECTION 4 : GÉOMÉTRIE ET MESURES

**Exercice 4.** ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC, puis l''aire du triangle.

*(5 points)*

**Exercice 4.** Calculer l''aire et le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14).

*(5 points)*

**Exercice 4.** Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.

*(5 points)*

**Exercice 4.** Calculer le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).

*(5 points)*

**Exercice 4.** Deux angles sont complémentaires. L''un mesure 35°. Calculer l''autre et donner son supplément.

*(5 points)*

## SECTION 5 : STATISTIQUES ET PROBABILITÉS

**Exercice 5.** La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l''étendue.

*(5 points)*

**Exercice 5.** Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte, puis une boule rouge ou bleue.

*(5 points)*

**Exercice 5.** Un dé à six faces est lancé. Calculer la probabilité d''obtenir un nombre pair, puis un nombre supérieur à 4.

*(5 points)*

**Exercice 5.** Construire un tableau d''effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6 et calculer la moyenne pondérée.

*(5 points)*

**Exercice 5.** La moyenne de 5 nombres est 12. Calculer leur somme, puis la nouvelle moyenne si on ajoute 18.

*(5 points)*
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '5ccde18e-b810-4481-73a4-756e3502f3c9';


-- Update set 6 for Mathématiques
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC MATHÉMATIQUES — ÉPREUVE 2 — SÉRIE 6

## Épreuve de problèmes et exercices

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Mathématiques
**Durée :** 2 heures
**Coefficient :** 4

**Consignes :**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.
- La qualité de la rédaction et la clarté des explications sont prises en compte.

---

## SECTION 1 : ARITHMÉTIQUE ET NOMBRES

**Exercice 1.** Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et leur PPCM.

*(5 points)*

**Exercice 1.** Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier chaque réponse.

*(5 points)*

**Exercice 1.** Calculer : $\frac{7}{12} + \frac{5}{18} - \frac{1}{4}$ et donner le résultat sous forme irréductible.

*(5 points)*

**Exercice 1.** Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final et le pourcentage global de variation.

*(5 points)*

**Exercice 1.** Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique, puis effectuer leur produit.

*(5 points)*

## SECTION 2 : ALGÈBRE ET ÉQUATIONS

**Exercice 2.** Résoudre l''équation : $\frac{2x - 3}{4} = \frac{x + 1}{2}$ et vérifier la solution.

*(5 points)*

**Exercice 2.** Résoudre le système : $\begin{cases} 3x + 2y = 19 \\ 2x - y = 1 \end{cases}$ par la méthode de combinaison.

*(5 points)*

**Exercice 2.** Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.

*(5 points)*

**Exercice 2.** Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.

*(5 points)*

**Exercice 2.** Un père a 40 ans, son fils a 12 ans. Dans combien d''années le père aura-t-il le triple de l''âge du fils ?

*(5 points)*

## SECTION 3 : GÉOMÉTRIE ET MESURES

**Exercice 3.** ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC, puis l''aire du triangle.

*(5 points)*

**Exercice 3.** Calculer l''aire et le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14).

*(5 points)*

**Exercice 3.** Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.

*(5 points)*

**Exercice 3.** Calculer le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).

*(5 points)*

**Exercice 3.** Deux angles sont complémentaires. L''un mesure 35°. Calculer l''autre et donner son supplément.

*(5 points)*

## SECTION 4 : STATISTIQUES ET PROBABILITÉS

**Exercice 4.** La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l''étendue.

*(5 points)*

**Exercice 4.** Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte, puis une boule rouge ou bleue.

*(5 points)*

**Exercice 4.** Un dé à six faces est lancé. Calculer la probabilité d''obtenir un nombre pair, puis un nombre supérieur à 4.

*(5 points)*

**Exercice 4.** Construire un tableau d''effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6 et calculer la moyenne pondérée.

*(5 points)*

**Exercice 4.** La moyenne de 5 nombres est 12. Calculer leur somme, puis la nouvelle moyenne si on ajoute 18.

*(5 points)*

## SECTION 5 : PROBLÈMES CONCRETS

**Exercice 5.** Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²), puis le coût de la clôture à 1 500 FCFA le mètre.

*(5 points)*

**Exercice 5.** Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h, puis le temps pour parcourir 400 km à cette vitesse.

*(5 points)*

**Exercice 5.** Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?

*(5 points)*

**Exercice 5.** Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.

*(5 points)*

**Exercice 5.** Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.

*(5 points)*
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'f4c7975a-bd94-6633-9a29-9bd604f1f87e';


-- Update set 7 for Mathématiques
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC MATHÉMATIQUES — ÉPREUVE 2 — SÉRIE 7

## Épreuve de problèmes et exercices

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Mathématiques
**Durée :** 2 heures
**Coefficient :** 4

**Consignes :**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.
- La qualité de la rédaction et la clarté des explications sont prises en compte.

---

## SECTION 1 : ALGÈBRE ET ÉQUATIONS

**Exercice 1.** Résoudre l''équation : $\frac{2x - 3}{4} = \frac{x + 1}{2}$ et vérifier la solution.

*(5 points)*

**Exercice 1.** Résoudre le système : $\begin{cases} 3x + 2y = 19 \\ 2x - y = 1 \end{cases}$ par la méthode de combinaison.

*(5 points)*

**Exercice 1.** Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.

*(5 points)*

**Exercice 1.** Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.

*(5 points)*

**Exercice 1.** Un père a 40 ans, son fils a 12 ans. Dans combien d''années le père aura-t-il le triple de l''âge du fils ?

*(5 points)*

## SECTION 2 : GÉOMÉTRIE ET MESURES

**Exercice 2.** ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC, puis l''aire du triangle.

*(5 points)*

**Exercice 2.** Calculer l''aire et le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14).

*(5 points)*

**Exercice 2.** Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.

*(5 points)*

**Exercice 2.** Calculer le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).

*(5 points)*

**Exercice 2.** Deux angles sont complémentaires. L''un mesure 35°. Calculer l''autre et donner son supplément.

*(5 points)*

## SECTION 3 : STATISTIQUES ET PROBABILITÉS

**Exercice 3.** La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l''étendue.

*(5 points)*

**Exercice 3.** Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte, puis une boule rouge ou bleue.

*(5 points)*

**Exercice 3.** Un dé à six faces est lancé. Calculer la probabilité d''obtenir un nombre pair, puis un nombre supérieur à 4.

*(5 points)*

**Exercice 3.** Construire un tableau d''effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6 et calculer la moyenne pondérée.

*(5 points)*

**Exercice 3.** La moyenne de 5 nombres est 12. Calculer leur somme, puis la nouvelle moyenne si on ajoute 18.

*(5 points)*

## SECTION 4 : PROBLÈMES CONCRETS

**Exercice 4.** Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²), puis le coût de la clôture à 1 500 FCFA le mètre.

*(5 points)*

**Exercice 4.** Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h, puis le temps pour parcourir 400 km à cette vitesse.

*(5 points)*

**Exercice 4.** Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?

*(5 points)*

**Exercice 4.** Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.

*(5 points)*

**Exercice 4.** Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.

*(5 points)*

## SECTION 5 : ARITHMÉTIQUE ET NOMBRES

**Exercice 5.** Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et leur PPCM.

*(5 points)*

**Exercice 5.** Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier chaque réponse.

*(5 points)*

**Exercice 5.** Calculer : $\frac{7}{12} + \frac{5}{18} - \frac{1}{4}$ et donner le résultat sous forme irréductible.

*(5 points)*

**Exercice 5.** Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final et le pourcentage global de variation.

*(5 points)*

**Exercice 5.** Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique, puis effectuer leur produit.

*(5 points)*
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '2a096f48-fa2e-95b6-7142-1d3adbd41b5b';


-- BEPC — SVT — La cellule et la reproduction
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '631ea493-2fd4-cfa2-ae1b-cbe92dffda91', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC — SVT — La cellule et la reproduction',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — SVT — La cellule et la reproduction

**Niveau :** Troisième — BEPC
**Matière :** Sciences de la Vie et de la Terre (SVT)

## Objectifs d''apprentissage

- Décrire la structure et le rôle des organites de la cellule animale et végétale.
- Expliquer les échanges entre la cellule et son milieu (diffusion, osmose).
- Distinguer la respiration cellulaire et la photosynthèse.
- Comprendre la mitose et la méiose et leur rôle dans la reproduction.
- Expliquer la transmission des caractères héréditaires (génétique mendélienne).
- Distinguer reproduction sexuée et reproduction asexuée.

---

## 1. La cellule : unité du vivant

Tout être vivant est constitué de **cellules**. C''est l''unité **structurale** (de construction) et **fonctionnelle** (d''activité) des organismes.

**La cellule animale** comporte :

- la **membrane plasmique** : délimite la cellule et assure les échanges sélectifs ;
- le **cytoplasme** : milieu où baignent les organites ;
- le **noyau** : contient l''ADN, commande les activités de la cellule ;
- les **mitochondries** : siège de la respiration cellulaire (production d''ATP).

**La cellule végétale** possède en plus :

- la **paroi cellulosique** : rigidifie et protège la cellule ;
- les **chloroplastes** : siège de la photosynthèse ;
- une **grande vacuole** : stocke l''eau et assure la turgescence.

> **Méthode :** Pour comparer une cellule animale et végétale, pense toujours aux trois différences clés : paroi cellulosique, chloroplastes, taille de la vacuole.

## 2. Les échanges entre la cellule et son milieu

- **Diffusion** : déplacement des particules d''un milieu concentré vers un milieu moins concentré (suivant le gradient de concentration). Exemple : échanges de gaz respiratoires.
- **Osmose** : passage de l''eau à travers une membrane semi-perméable vers le milieu le plus concentré en solutés.

**Exemple :** Un globule rouge placé dans de l''eau distillée gonfle car l''eau entre (milieu externe moins concentré). Placé dans une solution salée, il se rétracte car l''eau sort.

## 3. Respiration et photosynthèse

**Respiration cellulaire** (dans les mitochondries) :
$$C_6H_{12}O_6 + 6O_2 \rightarrow 6CO_2 + 6H_2O + \text{énergie (ATP)}$$

**Photosynthèse** (dans les chloroplastes) :
$$6CO_2 + 6H_2O \xrightarrow{\text{lumière, chlorophylle}} C_6H_{12}O_6 + 6O_2$$

La respiration fournit l''énergie à toutes les cellules ; la photosynthèse (chez les végétaux verts) produit la matière organique et libère l''oxygène.

## 4. Les divisions cellulaires

- **Mitose** : division des cellules **somatiques** (du corps). Une cellule mère (46 chromosomes) donne 2 cellules filles **identiques** (46 chromosomes). Elle permet la croissance et la réparation.
- **Méiose** : division des cellules **reproductrices**. Une cellule à 46 chromosomes donne des gamètes à **23 chromosomes**. Elle réduit de moitié le nombre de chromosomes.

La **fécondation** (fusion spermatozoïde + ovule) rétablit 46 chromosomes (23 + 23), ce qui maintient le nombre de chromosomes de l''espèce.

## 5. La génétique : transmission des caractères

- **Gène** : fragment d''ADN portant l''information d''un caractère.
- **Allèle** : version d''un gène (ex : allèle A ou a).
- **Génotype** : ensemble des allèles (AA, Aa, aa).
- **Phénotype** : caractère observable.
- **Dominance** : un allèle dominant (A) masque l''allèle récessif (a) chez l''hétérozygote.

**Exemple BEPC — croisement $Aa \times Aa$ :**

|       | A   | a   |
| ----- | --- | --- |
| **A** | AA  | Aa  |
| **a** | Aa  | aa  |

Proportions génotypiques : 1 AA : 2 Aa : 1 aa.
Proportions phénotypiques : 3 dominants : 1 récessif (3:1).

## 6. Reproduction sexuée et asexuée

- **Reproduction sexuée** : intervient la fusion de deux gamètes. Elle produit des individus génétiquement différents (diversité). Exemples : homme, plantes à fleurs.
- **Reproduction asexuée** : un seul individu, sans gamètes, produit des clones identiques. Exemples : bouturage, fission binaire (amibe, bactérie), bourgeonnement.

## 7. Erreurs à éviter

- Confondre mitose (conservation) et méiose (réduction).
- Confondre diffusion (solutés) et osmose (eau).
- Oublier que la photosynthèse produit l''O₂ et la respiration le consomme.
- Ne pas savoir construire un tableau de croisement.
- Confondre phénotype (visible) et génotype (allèles).

## 8. Exercices d''entraînement

**Exercice 1 :** Dessine et légende une cellule végétale. Cite trois différences avec une cellule animale.

**Exercice 2 :** Écris l''équation de la respiration et de la photosynthèse. Précise le lieu et les conditions de chacune.

**Exercice 3 :** Deux parents aux yeux bruns hétérozygotes ($Bb$) ont des enfants. Détermine la probabilité d''avoir un enfant aux yeux bleus ($bb$).

**Exercice 4 :** Explique le rôle de la méiose et de la fécondation dans le maintien du nombre de chromosomes.

**Exercice 5 :** Donne un exemple de reproduction asexuée chez une plante et chez un animal, puis explique l''intérêt de la reproduction sexuée.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Sciences de la Vie et de la Terre Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — SVT — Le corps humain et la santé
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '33815105-136a-65bd-0f48-7846dfba2304', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC — SVT — Le corps humain et la santé',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — SVT — Le corps humain et la santé

**Niveau :** Troisième — BEPC
**Matière :** Sciences de la Vie et de la Terre (SVT)

## Objectifs d''apprentissage

- Décrire l''appareil circulatoire, respiratoire, digestif et excréteur.
- Expliquer le fonctionnement du cœur, des poumons, de l''intestin et du rein.
- Comprendre la composition et le rôle du sang (groupes sanguins, transfusion).
- Expliquer le fonctionnement du système immunitaire (vaccination, sérothérapie).
- Connaître les principales maladies et leurs moyens de prévention.

---

## 1. L''appareil circulatoire et le sang

Le sang circule dans les **vaisseaux** : **artères** (du cœur vers les organes), **veines** (des organes vers le cœur) et **capillaires** (lieu des échanges).

Le **cœur** est une pompe à 4 cavités : 2 oreillettes et 2 ventricules. Les **valvules** empêchent le reflux du sang.

- **Petite circulation (pulmonaire)** : ventricule droit → poumons → oreillette gauche (le sang se charge en O₂).
- **Grande circulation (générale)** : ventricule gauche → organes → oreillette droite (le sang se charge en CO₂).

**Composition du sang :**

- **Plasma** : partie liquide (eau, nutriments, déchets).
- **Globules rouges** : transportent l''O₂ grâce à l''hémoglobine.
- **Globules blancs** : défendent l''organisme.
- **Plaquettes** : participent à la coagulation.

**Groupes sanguins :** A, B, AB, O et facteur Rhésus. Le groupe **O** est **donneur universel** (pas d''antigènes A/B), le groupe **AB** est **receveur universel**. La compatibilité est essentielle lors d''une transfusion pour éviter un rejet.

## 2. La respiration

L''air passe par : nez → pharynx → larynx → trachée → bronches → bronchioles → **alvéoles pulmonaires**.

**Ventilation :** à l''inspiration, le diaphragme se contracte et descend, le volume thoracique augmente, l''air entre ; à l''expiration, il se relâche et l''air sort.

**Échanges gazeux :** au niveau des alvéoles, l''O₂ passe de l''air vers le sang et le CO₂ du sang vers l''air (par diffusion, selon le gradient de concentration). Air inspiré : ~21 % O₂ ; air expiré : ~16 % O₂.

## 3. La digestion et l''absorption

Le **tube digestif** : bouche → œsophage → estomac → intestin grêle → gros intestin → anus.

Les **enzymes** (amylase, pepsine, lipase) transforment les aliments en nutriments :

- glucides → glucose ;
- protides → acides aminés ;
- lipides → acides gras et glycérol.

La **bile** (produite par le foie) émulsionne les graisses. L''**absorption** des nutriments se fait dans l''**intestin grêle** grâce aux **villosités** qui augmentent la surface d''échange.

## 4. L''excrétion : le rein

Les **reins** filtrent le sang. L''unité fonctionnelle est le **néphron**. L''urine se forme par :

1. **filtration** du sang au niveau du glomérule ;
2. **réabsorption** des substances utiles (eau, glucose) ;
3. formation de l''**urine définitive** (eau, urée, acide urique, sels minéraux).

> **À retenir :** L''urine normale ne contient pas de glucose ni de protéines. Sa présence signale une maladie (diabète, insuffisance rénale).

## 5. Le système immunitaire et la santé

- **Antigène** : substance étrangère (microbe) reconnue par l''organisme.
- **Anticorps** : protéine produite par les lymphocytes pour neutraliser l''antigène.
- **Globules blancs** : phagocytes (dévorent les microbes) et lymphocytes (produisent les anticorps).

**Immunité :**

- **Naturelle** : barrières (peau), défenses innées.
- **Acquise** : réponse spécifique après contact avec un antigène (avec mémoire).

**Vaccination** : injection d''un antigène atténué → l''organisme produit lui-même des anticorps (immunité active durable). **Sérothérapie** : injection d''anticorps déjà formés (immunité passive immédiate mais temporaire).

**Maladies et prévention :**

- **Paludisme** : transmis par le moustique anophèle → moustiquaire, antipaludéens.
- **Choléra** : eau/aliments contaminés → hygiène, eau potable.
- **SIDA** : virus VIH détruisant les lymphocytes T → préservatif, dépistage.
- **Tétanos** : vaccination antitétanique.

## 6. Erreurs à éviter

- Confondre artères (du cœur) et veines (vers le cœur).
- Oublier le sens exact des échanges gazeux alvéolaires.
- Confondre vaccination (immunité active) et sérothérapie (passive).
- Penser que les antibiotiques agissent contre les virus (faux : contre les bactéries).

## 7. Exercices d''entraînement

**Exercice 1 :** Décris le trajet du sang dans la circulation pulmonaire et la circulation générale.

**Exercice 2 :** Explique comment se font les échanges gazeux au niveau des alvéoles pulmonaires.

**Exercice 3 :** Cite les étapes de la formation de l''urine et la composition de l''urine normale.

**Exercice 4 :** Différencie vaccination et sérothérapie. Cite une maladie évitable par la vaccination.

**Exercice 5 :** Décris la composition et le rôle du sang. Explique pourquoi la compatibilité des groupes est nécessaire à la transfusion.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Sciences de la Vie et de la Terre Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — SVT — L'écologie et la géologie
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4a50ded5-a72c-1c57-50e5-58eaf030feaa', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC — SVT — L''écologie et la géologie',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — SVT — L''écologie et la géologie

**Niveau :** Troisième — BEPC
**Matière :** Sciences de la Vie et de la Terre (SVT)

## Objectifs d''apprentissage

- Définir écosystème, biotope, biocénose et comprendre les relations entre les êtres vivants.
- Construire des chaînes alimentaires et interpréter les pyramides écologiques.
- Comprendre les grands cycles de la matière (eau, carbone, azote) et l''impact humain.
- Connaître les trois types de roches, les fossiles et la formation des paysages.
- Expliquer la tectonique des plaques, le volcanisme et les séismes.

---

## 1. L''écosystème

Un **écosystème** est l''ensemble formé par un **milieu physique** (le **biotope**) et les êtres vivants qui y vivent (la **biocénose**), en interaction.

- **Biotope** : sol, climat, eau, lumière.
- **Biocénose** : les plantes, les animaux, les micro-organismes.

Une **population** est l''ensemble des individus d''une même espèce vivant dans un même lieu.

**Relations entre êtres vivants :**

- **Prédation** : un animal chasse et tue sa proie (lion → antilope).
- **Parasitisme** : un être vit aux dépens d''un autre sans le tuer (ver solitaire).
- **Symbiose** : association bénéfique aux deux (bactéries et racines de légumineuses).

## 2. Les chaînes et pyramides alimentaires

Une **chaîne alimentaire** est une suite de relations « qui mange qui ». Chaque maillon est un **niveau trophique** :

1. **Producteurs** : végétaux verts (photosynthèse) — base de la chaîne.
2. **Consommateurs primaires** : herbivores.
3. **Consommateurs secondaires** : carnivores.
4. **Décomposeurs** : microbes et champignons qui recyclent la matière.

**Exemple :** herbe → chenille → mésange → épervier.

Une **pyramide alimentaire** représente la diminution du nombre d''individus (ou de la biomasse) à chaque niveau, car une partie de l''énergie est perdue (respiration, chaleur) à chaque transfert. La base (producteurs) est donc la plus large.

> **Méthode BEPC :** Pour construire une chaîne, commence toujours par un producteur (végétal) et termine par un prédateur.

## 3. Les grands cycles de la matière

- **Cycle de l''eau** : évaporation → condensation (nuages) → précipitations → ruissellement.
- **Cycle du carbone** : CO₂ absorbé par les plantes (photosynthèse), libéré par respiration, décomposition et combustion.
- **Cycle de l''azote** : fixation par les bactéries (Rhizobium), nitrification, absorption par les plantes.

## 4. Les roches et les fossiles

Trois grandes familles de roches :

- **Roches magmatiques** : refroidissement du magma (granite en profondeur, basalte en surface).
- **Roches sédimentaires** : dépôt, compaction et cimentation des sédiments (grès, calcaire).
- **Roches métamorphiques** : transformation des roches sous pression et température (marbre, schiste).

Un **fossile** est le reste d''un être vivant conservé dans les sédiments. La présence de fossiles marins au sommet d''une montagne prouve que la région était autrefois sous la mer. Les **fossiles stratigraphiques** (ex : ammonites) permettent de dater les couches géologiques.

## 5. La structure de la Terre et la tectonique des plaques

La Terre est formée de : **croûte** (superficielle), **manteau** (intermédiaire) et **noyau** (centre). La **lithosphère** est découpée en **plaques tectoniques** qui se déplacent.

- **Divergence** : les plaques s''écartent → formation de **dorsales** océaniques.
- **Convergence** : les plaques se rapprochent → **subduction** ou **collision** (formation de montagnes comme l''Himalaya).
- **Coulissage** : les plaques glissent l''une le long de l''autre → failles et séismes.

Les **séismes** (vibrations du sol) sont dus au mouvement des plaques qui libère de l''énergie le long des failles. Leur intensité se mesure avec l''échelle de **Richter**.

## 6. Le volcanisme

Un **volcan** est une ouverture par laquelle remonte le **magma** (roche en fusion). En surface, il devient de la **lave**.

- **Éruption effusive** : coulées de lave fluide.
- **Éruption explosive** : projections violentes de cendres, bombes et nuées ardentes.

Le Cameroun possède une chaîne volcanique (mont Cameroun, monts Bamboutos) liée à la **ligne du Cameroun**. Avantages : sols volcaniques fertiles ; risques : coulées, cendres et gaz toxiques (ex : lac Nyos).

## 7. L''impact de l''homme sur l''environnement

La **déforestation**, la **pollution** (eau, air, sol), la **surexploitation** et le **braconnage** menacent la **biodiversité**. L''augmentation du CO₂ (effet de serre) modifie le climat. Des solutions existent : gestion durable des ressources, aires protégées, tri des déchets, énergies renouvelables.

## 8. Erreurs à éviter

- Confondre biotope (milieu) et biocénose (êtres vivants).
- Commencer une chaîne par un animal au lieu d''un producteur.
- Confondre les trois types de roches et leurs origines.
- Oublier que le magma devient lave en surface.
- Confondre divergence (dorsales) et convergence (collision).

## 9. Exercices d''entraînement

**Exercice 1 :** Définis écosystème, biotope et biocénose. Donne un exemple camerounais.

**Exercice 2 :** Construis une chaîne alimentaire de savane et identifie les niveaux trophiques.

**Exercice 3 :** Explique la formation des trois types de roches et cite un exemple de chacun.

**Exercice 4 :** Explique la formation d''une chaîne de montagnes par convergence de plaques.

**Exercice 5 :** Cite deux conséquences de la déforestation et deux gestes pour protéger l''environnement.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Sciences de la Vie et de la Terre Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — SVT — La cellule, la respiration et la génétique
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4df3d64d-90e1-50b9-86aa-cc0e5c0fd3bb', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'Fiche — BEPC — SVT — La cellule, la respiration et la génétique',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — SVT — La cellule, la respiration et la génétique

**Niveau :** Troisième — BEPC
**Matière :** Sciences de la Vie et de la Terre (SVT)

---

# Fiche de révision — La cellule et la génétique

## La cellule

| Structure                    | Rôle                             |
| ---------------------------- | -------------------------------- |
| Membrane plasmique           | Échanges sélectifs, protection   |
| Cytoplasme                   | Milieu des réactions cellulaires |
| Noyau                        | Contient l''ADN, commande         |
| Mitochondries                | Respiration → énergie (ATP)      |
| Chloroplastes (végétal)      | Photosynthèse                    |
| Paroi cellulosique (végétal) | Rigidité, protection             |
| Vacuole (végétal)            | Stockage de l''eau, turgescence   |

## 3 différences cellule animale / végétale

- Végétale : **paroi**, **chloroplastes**, **grande vacuole**.
- Animale : pas de paroi, pas de chloroplastes, petites vacuoles.

## Échanges avec le milieu

- **Diffusion** : solutés du concentré → moins concentré (gradient).
- **Osmose** : **eau** traverse une membrane semi-perméable vers le milieu le plus concentré.

## Équations essentielles

- **Photosynthèse** (chloroplastes) : $6CO_2 + 6H_2O \xrightarrow{\text{lumière}} C_6H_{12}O_6 + 6O_2$
- **Respiration** (mitochondries) : $C_6H_{12}O_6 + 6O_2 \rightarrow 6CO_2 + 6H_2O + \text{énergie}$

## Divisions cellulaires

- **Mitose** : cellules somatiques, 2 cellules filles **identiques** (46 ch.).
- **Méiose** : cellules reproductrices, gamètes à **23 ch.** (moitié).
- Fécondation : 23 + 23 = **46 ch.** (maintien du nombre).

## Vocabulaire de génétique

- **Gène** : fragment d''ADN codant un caractère.
- **Allèle** : version d''un gène.
- **Génotype** : allèles présents (AA, Aa, aa).
- **Phénotype** : caractère visible.
- **Dominance** : allèle dominant masque le récessif.

## Croisement $Aa \times Aa$ (A domine a)

|       | A   | a   |
| ----- | --- | --- |
| **A** | AA  | Aa  |
| **a** | Aa  | aa  |

- Génotypes : 1 AA : 2 Aa : 1 aa
- Phénotypes : **3 dominants : 1 récessif**

## Reproduction

- **Sexuée** : fusion de gamètes → diversité génétique.
- **Asexuée** : un seul parent, clones (bouture, fission).

## Pièges à éviter

- Mitose = conserve (46) ; méiose = réduit (23).
- Diffusion = solutés ; osmose = eau.
- Commencer les chaînes par un producteur.
- Photosynthèse produit O₂ ; respiration le consomme.

## Conseil examen

- Toujours justifier une probabilité avec le **tableau de croisement**.
- Légender tous les schémas (membrane, noyau, etc.).
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Sciences de la Vie et de la Terre Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — SVT — Le corps humain et la santé
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7a0831c0-0331-1a40-270b-ee5f060ceb02', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'Fiche — BEPC — SVT — Le corps humain et la santé',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — SVT — Le corps humain et la santé

**Niveau :** Troisième — BEPC
**Matière :** Sciences de la Vie et de la Terre (SVT)

---

# Fiche de révision — Corps humain et santé

## Le sang

| Élément         | Rôle                                 |
| --------------- | ------------------------------------ |
| Plasma          | Transport (eau, nutriments, déchets) |
| Globules rouges | Transport O₂ (hémoglobine)           |
| Globules blancs | Défense immunitaire                  |
| Plaquettes      | Coagulation du sang                  |

## Circulation

- **Artères** : du cœur vers les organes.
- **Veines** : des organes vers le cœur.
- **Capillaires** : échanges.
- **Cœur** : 2 oreillettes + 2 ventricules ; valvules = anti-reflux.
- **Petite circulation** : cœur → poumons → cœur (se charge en O₂).
- **Grande circulation** : cœur → organes → cœur (se charge en CO₂).

## Groupes sanguins

- **O** = donneur universel (pas d''antigènes A/B).
- **AB** = receveur universel.
- Vérifier la compatibilité + facteur **Rhésus** avant transfusion.

## Respiration

Trajet : nez → pharynx → larynx → trachée → bronches → alvéoles.

- **Inspiration** : diaphragme se contracte, volume augmente, air entre.
- **Expiration** : relâchement, air sort.
- Échanges alvéolaires : O₂ air → sang ; CO₂ sang → air.
- Air inspiré ~21 % O₂ ; expiré ~16 % O₂.

## Digestion

Bouche → œsophage → estomac → intestin grêle → gros intestin → anus.

- Glucides → glucose ; protides → acides aminés ; lipides → acides gras + glycérol.
- **Bile** : émulsionne les graisses.
- **Absorption** : intestin grêle (villosités).

## Excrétion (rein)

Le **néphron** filtre le sang.

1. Filtration → 2. Réabsorption → 3. Urine définitive.

- Urine normale : eau, urée, acide urique, sels. **Pas de glucose ni protéines.**

## Immunité

- **Antigène** : substance étrangère ; **anticorps** : protéine de défense.
- **Globules blancs** : phagocytes + lymphocytes.
- **Vaccination** : antigène atténué → immunité **active durable**.
- **Sérothérapie** : anticorps prêts → immunité **passive temporaire**.

## Maladies et prévention

| Maladie   | Transmission            | Prévention             |
| --------- | ----------------------- | ---------------------- |
| Paludisme | Moustique anophèle      | Moustiquaire           |
| Choléra   | Eau/aliments contaminés | Hygiène, eau potable   |
| SIDA      | VIH (rapports, sang)    | Préservatif, dépistage |
| Tétanos   | Blessure souillée       | Vaccination            |

## Pièges à éviter

- Artère = cœur → organe ; veine = organe → cœur.
- Antibiotiques = bactéries (pas les virus).
- Vaccination = active ; sérothérapie = passive.

## Conseil examen

- Décrire un trajet dans l''ordre et dans le bon sens.
- Citer systématiquement un exemple avec chaque définition.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Sciences de la Vie et de la Terre Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — SVT — L'écologie et la géologie
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a5f0adaa-d67d-7b9d-10e1-66d0ee94a1ae', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'Fiche — BEPC — SVT — L''écologie et la géologie',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — SVT — L''écologie et la géologie

**Niveau :** Troisième — BEPC
**Matière :** Sciences de la Vie et de la Terre (SVT)

---

# Fiche de révision — Écologie et géologie

## L''écosystème

- **Écosystème** = **biotope** (milieu) + **biocénose** (êtres vivants) + interactions.
- **Population** : individus d''une même espèce en un lieu.

## Relations entre êtres vivants

- **Prédation** : chasser/tuer (lion → antilope).
- **Parasitisme** : aux dépens d''un autre (ver solitaire).
- **Symbiose** : bénéfique aux deux (bactéries + racines).

## Chaîne alimentaire

1. **Producteur** (végétal) → 2. **Consommateur primaire** (herbivore) → 3. **Consommateur secondaire** (carnivore) → 4. **Décomposeurs**.

Exemple : herbe → chenille → mésange → épervier.

- **Pyramide** : le nombre et la biomasse diminuent à chaque niveau (énergie perdue).

## Les trois types de roches

| Type          | Formation                       | Exemple          |
| ------------- | ------------------------------- | ---------------- |
| Magmatique    | Refroidissement du magma        | Granite, basalte |
| Sédimentaire  | Dépôt + compaction de sédiments | Grès, calcaire   |
| Métamorphique | Transformation (pression/temp.) | Marbre, schiste  |

## Les fossiles

- **Fossile** : reste d''un être vivant conservé dans les sédiments.
- Fossiles marins en montagne → région autrefois sous la mer.
- **Fossiles stratigraphiques** (ammonites) : datent les couches.

## La Terre

- Structure : **croûte** → **manteau** → **noyau**.
- **Plaques tectoniques** = fragments de la lithosphère en mouvement.

| Mouvement   | Résultat                           |
| ----------- | ---------------------------------- |
| Divergence  | Dorsales océaniques                |
| Convergence | Subduction / collision → montagnes |
| Coulissage  | Failles, séismes                   |

- **Séisme** : vibrations dues au mouvement des plaques (échelle de Richter).

## Le volcanisme

- **Magma** (en profondeur) → **lave** (en surface).
- **Effusive** : coulées de lave ; **explosive** : cendres, bombes, nuées.
- Cameroun : ligne volcanique (mont Cameroun, Bamboutos).
- Risque : gaz toxiques (lac Nyos) ; avantage : sols fertiles.

## Impact humain sur l''environnement

- **Déforestation** : perte de biodiversité, érosion des sols.
- **Pollution** : eau, air, sol.
- **Surexploitation, braconnage** : menacent la biodiversité.
- Solutions : aires protégées, tri, énergies renouvelables, gestion durable.

## Pièges à éviter

- Biotope = milieu ; biocénose = êtres vivants.
- Commencer une chaîne par un **producteur**.
- Magma (profond) ≠ lave (surface).
- Divergence = dorsales ; convergence = collision/subduction.

## Conseil examen

- Toujours légender les schémas (volcan, structure de la Terre).
- Pour les conséquences, citer au moins 3 effets précis.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Sciences de la Vie et de la Terre Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Update MCQ 1 for Sciences de la Vie et de la Terre
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE — ÉPREUVE 1 (QCM) — SÉRIE 1

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Sciences de la Vie et de la Terre (SVT)
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Au cours d''un TP, un élève observe au microscope une cellule qui possède une grande vacuole centrale, des chloroplastes et une paroi cellulosique. Il s''agit d''une cellule :

A. animale, car elle possède des chloroplastes
B. végétale, car elle possède une paroi cellulosique et des chloroplastes
C. bactérienne, car elle n''a pas de noyau
D. sanguine, car elle est petite et arrondie

---

**Question 2.** Une pomme de terre coupée en morceaux est placée dans un verre d''eau distillée pendant une nuit. Le matin, les morceaux sont devenus fermes et gonflés. Ce phénomène, où l''eau pénètre dans les cellules à travers la membrane, s''appelle :

A. la diffusion
B. la respiration cellulaire
C. l''osmose
D. la photosynthèse

---

**Question 3.** L''équation bilan de la respiration cellulaire, qui se déroule dans les mitochondries, est :

A. $6CO_2 + 6H_2O \xrightarrow{\text{lumière}} C_6H_{12}O_6 + 6O_2$
B. $C_6H_{12}O_6 + 6O_2 \rightarrow 6CO_2 + 6H_2O + \text{énergie}$
C. $C_6H_{12}O_6 \rightarrow 2C_3H_6O_3 + \text{énergie}$
D. $6O_2 + C_6H_{12}O_6 \rightarrow 6CO_2 + 6H_2O + \text{chlorophylle}$

---

**Question 4.** Lors d''un don de sang, un patient du groupe AB peut recevoir du sang de n''importe quel groupe, car il est appelé :

A. donneur universel
B. receveur universel
C. groupe rhésus négatif
D. groupe incompatible

---

**Question 5.** Chez l''être humain, la fécondation (fusion du spermatozoïde et de l''ovule) se déroule normalement dans :

A. l''utérus
B. le vagin
C. la trompe de Fallope (oviducte)
D. l''ovaire

---

**Question 6.** Un couple de parents ayant les yeux marrons (génotype $Aa$) a eu un enfant aux yeux bleus (génotype $aa$). La probabilité que leur prochain enfant ait les yeux bleus est :

A. 0 %
B. 25 %
C. 50 %
D. 100 %

---

**Question 7.** Dans un écosystème forestier, on observe la chaîne alimentaire suivante : feuilles → chenille → mésange → épervier. Le rôle des feuilles dans cette chaîne est celui de :

A. consommateur primaire
B. consommateur secondaire
C. décomposeur
D. producteur

---

**Question 8.** Le paludisme est une maladie très répandue au Cameroun. Elle est transmise à l''homme par :

A. la piqûre du moustique anophèle femelle
B. l''eau non potable
C. les aliments contaminés
D. le contact direct avec une personne malade

---

**Question 9.** Une roche contient des fossiles marins (coquilles, ammonites) en très grand nombre. Cette observation permet d''affirmer que :

A. la région a toujours été une montagne
B. la région était autrefois recouverte par la mer
C. la roche est d''origine volcanique
D. les fossiles sont apparus récemment

---

**Question 10.** Un élève souffrant d''une infection bactérienne reçoit un traitement. Le médicament le plus efficace contre les bactéries est :

A. un vaccin
B. un antibiotique
C. un antiviral
D. un antipaludéen

---

## CORRIGÉ

1. B — cellule végétale (paroi cellulosique et chloroplastes)
2. C — l''osmose
3. B — respiration cellulaire
4. B — receveur universel
5. C — la trompe de Fallope
6. B — 25 %
7. D — producteur
8. A — moustique anophèle femelle
9. B — la région était autrefois recouverte par la mer
10. B — un antibiotique
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '9f839507-bd15-0a70-c6e2-b58a8eb66f03';


-- Update MCQ 2 for Sciences de la Vie et de la Terre
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Sciences de la Vie et de la Terre (SVT)
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Lors d''une course de 400 m, un élève remarque que son cœur bat plus vite et qu''il respire plus fort. L''augmentation de la fréquence cardiaque a pour rôle principal de :

A. ralentir la circulation du sang
B. augmenter l''apport d''oxygène aux muscles
C. diminuer la production d''énergie
D. stocker du glucose dans le foie

---

**Question 2.** Le néphron est l''unité fonctionnelle du rein. La fonction principale du rein est de :

A. produire les globules rouges
B. filtrer le sang et former l''urine en éliminant les déchets
C. digérer les aliments
D. transporter le dioxygène

---

**Question 3.** Au niveau des alvéoles pulmonaires, le dioxygène passe du sang vers l''air alvéolaire et le dioxyde de carbone passe de l''air vers le sang. Ce mouvement de gaz s''explique par :

A. un transport actif nécessitant de l''énergie
B. une différence de concentration (gradient) entre les deux milieux
C. la contraction du diaphragme
D. la présence de globules blancs

---

**Question 4.** Chez une femme, un ovule mature est libéré par l''ovaire environ au milieu du cycle menstruel. Ce phénomène de libération de l''ovule s''appelle :

A. la menstruation
B. la nidation
C. l''ovulation
D. la fécondation

---

**Question 5.** Dans un croisement entre deux souris noires hétérozygotes ($Nn$), où l''allèle noir $N$ domine l''allèle blanc $n$, la proportion de souris blanches ($nn$) dans la descendance F2 est de :

A. 1/4
B. 1/2
C. 3/4
D. 0

---

**Question 6.** Un agriculteur remarque que ses plants de haricots poussent mieux en présence de certaines bactéries présentes dans leurs racines. Ces bactéries, qui vivent en association bénéfique avec les plantes, sont appelées :

A. des parasites
B. des prédateurs
C. des symbiotes (symbiose)
D. des décomposeurs

---

**Question 7.** Le choléra, maladie diarrhéique très grave, se transmet principalement par :

A. la piqûre d''insecte
B. l''eau et les aliments contaminés par la bactérie Vibrio cholerae
C. l''air respiré
D. une transfusion sanguine

---

**Question 8.** La tectonique des plaques explique la formation des montagnes, les séismes et le volcanisme. Le Cameroun possède une chaîne volcanique, dont le mont Cameroun, qui est :

A. un volcan éteint
B. un volcan actif
C. une montagne de plissement ancienne
D. un pli anticlinal

---

**Question 9.** La respiration cutanée est le mode de respiration principal chez :

A. l''homme
B. le ver de terre (lombric)
C. la moule
D. le poisson

---

**Question 10.** Le SIDA est causé par un virus qui affaiblit le système immunitaire en détruisant principalement :

A. les globules rouges
B. les lymphocytes T (globules blancs)
C. les plaquettes
D. les neurones

---

## CORRIGÉ

1. B — augmenter l''apport d''oxygène aux muscles
2. B — filtrer le sang et former l''urine
3. B — différence de concentration (gradient)
4. C — l''ovulation
5. A — 1/4
6. C — symbiotes
7. B — eau et aliments contaminés
8. B — volcan actif
9. B — le ver de terre (lombric)
10. B — les lymphocytes T
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'f758d21f-c9bc-30d6-9622-bea7e2a2eb25';


-- Update MCQ 3 for Sciences de la Vie et de la Terre
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE — ÉPREUVE 1 (QCM) — SÉRIE 3

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Sciences de la Vie et de la Terre (SVT)
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Au cours de la division cellulaire (mitose), le nombre de chromosomes d''une cellule mère qui se divise pour donner deux cellules filles :

A. est doublé dans chaque cellule fille
B. est identique dans chaque cellule fille (conservation)
C. est divisé par deux dans chaque cellule fille
D. disparaît dans les cellules filles

---

**Question 2.** Une personne fait une digestion d''un morceau de pain (riche en amidon). La transformation de l''amidon en glucose, réalisée grâce aux enzymes, se produit principalement dans :

A. l''estomac uniquement
B. la bouche et l''intestin grêle
C. le gros intestin
D. le foie

---

**Question 3.** Le groupe sanguin O est appelé « donneur universel » car :

A. il possède les antigènes A et B sur ses globules rouges
B. il ne possède ni antigène A ni antigène B sur ses globules rouges
C. il possède les anticorps anti-A et anti-B
D. il est le plus rare

---

**Question 4.** Chez l''homme, la cellule reproductrice mâle (spermatozoïde) possède :

A. 46 chromosomes
B. 23 chromosomes
C. 44 chromosomes
D. 92 chromosomes

---

**Question 5.** L''unité de l''hérédité, qui est un fragment d''ADN portant l''information pour un caractère, est :

A. le gène
B. le chromosome
C. le nucléotide
D. la protéine

---

**Question 6.** Dans une savane, on observe des herbes, des antilopes et des lions. Le niveau trophique (niveau alimentaire) des lions, qui se nourrissent des antilopes, est celui de :

A. producteur
B. consommateur primaire
C. consommateur secondaire
D. décomposeur

---

**Question 7.** La déforestation massive en forêt équatoriale camerounaise a pour conséquence directe :

A. l''augmentation de la pluviométrie
B. la diminution de la biodiversité et l''érosion des sols
C. l''augmentation de la fertilité des sols
D. la réduction du dioxyde de carbone dans l''air

---

**Question 8.** Un élève se coupe le doigt avec un objet rouillé. Le médecin lui administre un vaccin antitétanique. Le rôle de ce vaccin est de :

A. tuer directement les bactéries du tétanos
B. stimuler l''organisme à produire des anticorps contre la toxine tétanique
C. remplacer les globules rouges perdus
D. réduire la douleur de la blessure

---

**Question 9.** Les sédiments déposés au fond des océans se transforment progressivement en roches :

A. magmatiques (volcaniques)
B. métamorphiques
C. sédimentaires
D. plutoniques

---

**Question 10.** Dans un étang, les algues microscopiques (phytoplancton) sont consommées par de petits crustacés (zooplancton), eux-mêmes mangés par les poissons. Si on supprime tout le phytoplancton, la conséquence la plus directe sera :

A. l''augmentation du nombre de poissons
B. la disparition progressive du zooplancton puis des poissons
C. l''augmentation du zooplancton
D. aucune conséquence

---

## CORRIGÉ

1. B — identique dans chaque cellule fille (conservation)
2. B — la bouche et l''intestin grêle
3. B — il ne possède ni antigène A ni antigène B
4. B — 23 chromosomes
5. A — le gène
6. C — consommateur secondaire
7. B — diminution de la biodiversité et érosion des sols
8. B — stimuler l''organisme à produire des anticorps
9. C — sédimentaires
10. B — disparition progressive du zooplancton puis des poissons
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '5b16a47d-1bb2-4fd7-e36f-0cebf27f03cb';


-- Update set 4 for Sciences de la Vie et de la Terre
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE — ÉPREUVE 2 — SÉRIE 4

## Épreuve de problèmes

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Sciences de la Vie et de la Terre (SVT)
**Durée :** 3 heures
**Coefficient :** 2

**Consignes :**

- Cette épreuve comporte 4 sections : Biologie cellulaire et génétique, Physiologie humaine, Écologie et environnement, Géologie.
- Chaque section comprend 5 exercices notés sur 5 points chacun.
- Le total de l''épreuve est de 100 points.
- Justifie clairement tes réponses. Les schémas doivent être légendés.

---

## SECTION 1 : BIOLOGIE CELLULAIRE ET GÉNÉTIQUE

**Exercice 1.** (5 points)
1.1. Dessine et légende une cellule végétale complète (paroi, membrane, cytoplasme, noyau, vacuole, chloroplastes). (2 pts)
1.2. Cite trois différences entre une cellule animale et une cellule végétale. (1,5 pts)
1.3. Précise le rôle de la membrane plasmique et des mitochondries. (1,5 pts)

**Exercice 2.** (5 points)
2.1. Définis les termes : osmose et diffusion. (1,5 pts)
2.2. Un morceau de banane est placé dans une solution très sucrée. Explique ce qui se produit au niveau des cellules et précise pourquoi. (2 pts)
2.3. Cite un exemple biologique de diffusion dans l''organisme humain. (1,5 pts)

**Exercice 3.** (5 points)
3.1. Écris l''équation bilan de la photosynthèse. (1,5 pts)
3.2. Indique les conditions nécessaires à la réalisation de la photosynthèse. (1,5 pts)
3.3. Compare la photosynthèse et la respiration cellulaire du point de vue des gaz échangés et de l''énergie. (2 pts)

**Exercice 4.** (5 points)
4.1. Définis : gène, allèle, génotype, phénotype. (2 pts)
4.2. Un croisement entre deux cobayes gris hétérozygotes ($Gg$) donne une descendance. Réalise le tableau de croisement. (1,5 pts)
4.3. Déduis les proportions génotypiques et phénotypiques de la descendance (G domine g). (1,5 pts)

**Exercice 5.** (5 points)
5.1. Chez l''être humain, combien de chromosomes possède une cellule somatique ? Une cellule reproductrice (gamète) ? (1 pt)
5.2. Explique la différence entre mitose et méiose du point de vue du nombre de chromosomes des cellules filles. (2 pts)
5.3. Justifie pourquoi les gamètes ne possèdent que la moitié des chromosomes. (2 pts)

---

## SECTION 2 : PHYSIOLOGIE HUMAINE

**Exercice 6.** (5 points)
6.1. Décris le trajet du sang dans la circulation pulmonaire et la circulation générale. (2 pts)
6.2. Explique le rôle du cœur et des valvules cardiaques. (1,5 pts)
6.3. Cite deux facteurs qui font augmenter la fréquence cardiaque lors d''un effort. (1,5 pts)

**Exercice 7.** (5 points)
7.1. Décris le mécanisme de la ventilation pulmonaire (inspiration et expiration) en précisant le rôle du diaphragme et des muscles intercostaux. (2,5 pts)
7.2. Indique où se font les échanges gazeux respiratoires et dans quel sens se déplacent l''O₂ et le CO₂. (1,5 pts)
7.3. Donne la composition moyenne de l''air inspiré et de l''air expiré (O₂ et CO₂). (1 pt)

**Exercice 8.** (5 points)
8.1. Cite le trajet des aliments dans le tube digestif. (1,5 pts)
8.2. Explique le rôle des enzymes digestives en prenant l''exemple de l''amidon. (1,5 pts)
8.3. Précise où se produisent l''absorption des nutriments et le rôle des villosités intestinales. (2 pts)

**Exercice 9.** (5 points)
9.1. Décris le fonctionnement du rein en précisant le rôle du néphron. (2 pts)
9.2. Indique la composition de l''urine normale (déchets, eau). (1,5 pts)
9.3. Explique pourquoi l''urine d''un diabétique contient du glucose. (1,5 pts)

**Exercice 10.** (5 points)
10.1. Définis : antigène, anticorps, système immunitaire. (1,5 pts)
10.2. Décris la réaction de l''organisme lors d''une infection (rôle des globules blancs et des lymphocytes). (2 pts)
10.3. Différencie vaccination et sérothérapie. (1,5 pts)

---

## SECTION 3 : ÉCOLOGIE ET ENVIRONNEMENT

**Exercice 11.** (5 points)
11.1. Définis : écosystème, biotope, biocénose, population. (2 pts)
11.2. Donne un exemple concret d''écosystème camerounais en citant deux éléments du biotope et deux éléments de la biocénose. (1,5 pts)
11.3. Précise le rôle des décomposeurs dans un écosystème. (1,5 pts)

**Exercice 12.** (5 points)
12.1. Construis une chaîne alimentaire de la savane comprenant au moins quatre maillons. (1,5 pts)
12.2. Identifie le producteur, les consommateurs primaires et secondaires dans ta chaîne. (1,5 pts)
12.3. Explique ce qu''est une pyramide alimentaire et pourquoi sa base est toujours la plus large. (2 pts)

**Exercice 13.** (5 points)
13.1. Définis la pollution et cite deux types de pollution de l''eau. (2 pts)
13.2. Explique les conséquences de la déforestation sur l''environnement (trois conséquences). (2 pts)
13.3. Propose trois gestes simples pour protéger l''environnement. (1 pt)

**Exercice 14.** (5 points)
14.1. Définis : symbiose, parasitisme, prédation. (1,5 pts)
14.2. Donne un exemple concret de chaque type de relation dans la nature. (1,5 pts)
14.3. Explique l''impact du braconnage sur les populations animales et la biodiversité. (2 pts)

**Exercice 15.** (5 points)
15.1. Cite les trois niveaux trophiques d''une chaîne alimentaire et définis chacun. (2 pts)
15.2. Explique pourquoi on dit que l''énergie diminue le long d''une chaîne alimentaire. (1,5 pts)
15.3. Indique le rôle des végétaux verts (producteurs) dans le cycle de la matière. (1,5 pts)

---

## SECTION 4 : GÉOLOGIE

**Exercice 16.** (5 points)
16.1. Définis : roche magmatique, roche sédimentaire, roche métamorphique. (1,5 pts)
16.2. Cite un exemple de chaque type de roche. (1,5 pts)
16.3. Explique comment se forme une roche sédimentaire (dépôt, compaction, cimentation). (2 pts)

**Exercice 17.** (5 points)
17.1. Définis un fossile et explique comment il se forme. (2 pts)
17.2. Explique ce que permet de conclure la présence de fossiles marins dans une roche au sommet d''une montagne. (1,5 pts)
17.3. Cite deux exemples de fossiles utilisés pour dater les roches. (1,5 pts)

**Exercice 18.** (5 points)
18.1. Décris la structure interne de la Terre (croûte, manteau, noyau). (2 pts)
18.2. Explique le phénomène d''un séisme et son origine (failles, plaques). (1,5 pts)
18.3. Précise comment mesurer l''intensité d''un séisme (échelle de Richter). (1,5 pts)

**Exercice 19.** (5 points)
19.1. Explique la formation d''un volcan et la différence entre éruption effusive et éruption explosive. (2,5 pts)
19.2. Cite deux manifestations de l''activité volcanique du Cameroun. (1,5 pts)
19.3. Indique une conséquence positive et une conséquence négative du volcanisme pour l''homme. (1 pt)

**Exercice 20.** (5 points)
20.1. Définis la tectonique des plaques et cite les deux types de plaques. (2 pts)
20.2. Explique la formation des chaînes de montagnes par collision de plaques. (1,5 pts)
20.3. Donne un exemple de montagne de plissement dans le monde. (1,5 pts)

---

## CORRIGÉ TYPE

**Exercice 1.** 1.1. Cellule végétale : paroi cellulosique, membrane plasmique, cytoplasme, noyau, grande vacuole centrale, chloroplastes. 1.2. Végétale : paroi, chloroplastes, grande vacuole ; animale : pas de paroi, pas de chloroplastes, petites vacuoles. 1.3. Membrane : échanges sélectifs de substances ; mitochondries : respiration cellulaire produisant l''énergie (ATP).

**Exercice 2.** 2.1. Osmose : passage d''eau à travers une membrane semi-perméable vers le milieu le plus concentré ; diffusion : déplacement des particules d''un milieu concentré vers un milieu moins concentré. 2.2. La cellule se déshydrate (plasmolyse) car l''eau sort de la cellule vers la solution sucrée plus concentrée. 2.3. Échanges de gaz au niveau des alvéoles pulmonaires.

**Exercice 3.** 3.1. $6CO_2 + 6H_2O \xrightarrow{\text{lumière, chlorophylle}} C_6H_{12}O_6 + 6O_2$. 3.2. Lumière, chlorophylle, CO₂, eau. 3.3. Photosynthèse : absorbe CO₂, libère O₂, stocke de l''énergie (endothermique, chloroplastes) ; respiration : absorbe O₂, libère CO₂, libère de l''énergie (exothermique, mitochondries).

**Exercice 4.** 4.1. Gène : fragment d''ADN codant un caractère ; allèle : version d''un gène ; génotype : ensemble des allèles ; phénotype : caractère observable. 4.2. $Gg \times Gg$ → tableau : GG, Gg, Gg, gg. 4.3. Génotypes : 1/4 GG, 1/2 Gg, 1/4 gg ; phénotypes : 3/4 gris, 1/4 blanc.

**Exercice 5.** 5.1. Cellule somatique : 46 chromosomes ; gamète : 23 chromosomes. 5.2. Mitose : cellules filles identiques (46) ; méiose : cellules filles à moitié (23). 5.3. Pour que la fécondation rétablisse 46 chromosomes (23 + 23).

**Exercice 6.** 6.1. Circulation pulmonaire : cœur (ventricule droit) → poumons → cœur (oreillette gauche) ; circulation générale : cœur (ventricule gauche) → organes → cœur (oreillette droite). 6.2. Le cœur pompe le sang ; les valvules empêchent le reflux. 6.3. Effort physique, émotion, fièvre.

**Exercice 7.** 7.1. Inspiration : contraction du diaphragme (descend) et des muscles intercostaux, volume augmente, air entre ; expiration : relâchement, air sort. 7.2. Échanges au niveau des alvéoles ; O₂ passe de l''air vers le sang, CO₂ du sang vers l''air. 7.3. Inspiré : ~21 % O₂, ~0,03 % CO₂ ; expiré : ~16 % O₂, ~4 % CO₂.

**Exercice 8.** 8.1. Bouche → œsophage → estomac → intestin grêle → gros intestin → anus. 8.2. Les enzymes (amylase) transforment l''amidon en glucose. 8.3. Absorption dans l''intestin grêle ; les villosités augmentent la surface d''absorption.

**Exercice 9.** 9.1. Le néphron filtre le sang et forme l''urine. 9.2. Eau (95 %), urée, acide urique, sels minéraux. 9.3. Le glucose est filtré mais non réabsorbé car le taux sanguin est trop élevé.

**Exercice 10.** 10.1. Antigène : substance étrangère ; anticorps : protéine produite contre un antigène ; immunité : défense de l''organisme. 10.2. Les globules blancs (phagocytes) et lymphocytes produisent des anticorps et détruisent les microbes. 10.3. Vaccination : injecte un antigène atténué pour stimuler une immunité durable ; sérothérapie : injecte des anticorps prêts (immunité passive immédiate).

**Exercice 11.** 11.1. Écosystème = biotope + biocénose + interactions ; biotope : milieu physique ; biocénose : êtres vivants ; population : individus d''une même espèce en un lieu. 11.2. Ex : forêt tropicale ; biotope : sol, climat ; biocénose : arbres, singes. 11.3. Ils décomposent la matière organique en matière minérale recyclée par les producteurs.

**Exercice 12.** 12.1. Herbe → antilope → lion (ou herbe → chenille → oiseau → serpent). 12.2. Herbe = producteur ; antilope = consommateur primaire ; lion = consommateur secondaire. 12.3. Pyramide : représentation des niveaux trophiques ; base large car les producteurs sont les plus nombreux.

**Exercice 13.** 13.1. Pollution : altération du milieu ; ex : déchets industriels, eaux usées, pesticides. 13.2. Perte de biodiversité, érosion des sols, modification du climat. 13.3. Tri des déchets, économie d''eau/énergie, plantation d''arbres.

**Exercice 14.** 14.1. Symbiose : association bénéfique mutuelle ; parasitisme : un être vit aux dépens d''un autre ; prédation : un animal chasse et tue sa proie. 14.2. Symbiose : bactéries racines/légumineuses ; parasitisme : ver solitaire/homme ; prédation : lion/antilope. 14.3. Le braconnage réduit les populations et menace la biodiversité.

**Exercice 15.** 15.1. Producteur (plantes), consommateur (animaux), décomposeur (microbes/champignons). 15.2. À chaque niveau, une partie de l''énergie est perdue (respiration, chaleur). 15.3. Ils fabriquent de la matière organique à partir de matière minérale (photosynthèse).

**Exercice 16.** 16.1. Magmatique : formée par refroidissement du magma ; sédimentaire : formée par dépôt/compaction de sédiments ; métamorphique : transformée par pression/température. 16.2. Basalte, grès, marbre. 16.3. Dépôt des sédiments → compaction → cimentation en roche.

**Exercice 17.** 17.1. Fossile : reste d''un être vivant conservé dans la roche. 17.2. La région était autrefois sous la mer. 17.3. Ammonites, trilobites.

**Exercice 18.** 18.1. Croûte (superficielle), manteau (intermédiaire), noyau (centre). 18.2. Séisme : vibration du sol due au mouvement des plaques (faille) libérant de l''énergie. 18.3. Échelle de Richter (magnitude).

**Exercice 19.** 19.1. Volcan : ouverture par laquelle le magma remonte ; effusive : coulées de lave fluide ; explosive : projections violentes. 19.2. Mont Cameroun actif, lacs de lave (Nyos). 19.3. Positif : sols fertiles, géothermie ; négatif : destructions, pertes humaines.

**Exercice 20.** 20.1. Tectonique des plaques : mouvement des plaques lithosphériques ; plaques océaniques et continentales. 20.2. Collision de deux plaques continentales → plissement et soulèvement en montagnes. 20.3. Himalaya, Alpes.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'ceff7090-fd57-e982-c027-eb2d3a85ae0f';


-- Update set 5 for Sciences de la Vie et de la Terre
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE — ÉPREUVE 2 — SÉRIE 5

## Épreuve de problèmes

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Sciences de la Vie et de la Terre (SVT)
**Durée :** 3 heures
**Coefficient :** 2

**Consignes :**

- Cette épreuve comporte 4 sections : Biologie cellulaire et génétique, Physiologie humaine, Écologie et environnement, Géologie.
- Chaque section comprend 5 exercices notés sur 5 points chacun.
- Le total de l''épreuve est de 100 points.
- Justifie clairement tes réponses. Les schémas doivent être légendés.

---

## SECTION 1 : BIOLOGIE CELLULAIRE ET GÉNÉTIQUE

**Exercice 1.** (5 points)
1.1. Dessine et légende une cellule animale (membrane, cytoplasme, noyau, mitochondries). (2 pts)
1.2. Précise le rôle de chacun des organites : noyau, mitochondries, membrane. (1,5 pts)
1.3. Explique pourquoi on dit que la cellule est « l''unité structurale et fonctionnelle du vivant ». (1,5 pts)

**Exercice 2.** (5 points)
2.1. Un globule rouge est placé dans de l''eau distillée et un autre dans une solution très salée. Décris ce qui se produit dans chaque cas. (2,5 pts)
2.2. Explique ces résultats en utilisant la notion d''osmose. (1,5 pts)
2.3. Cite un exemple où l''osmose joue un rôle dans l''alimentation ou la conservation des aliments. (1 pt)

**Exercice 3.** (5 points)
3.1. Écris l''équation bilan de la respiration cellulaire. (1,5 pts)
3.2. Indique dans quel organite cellulaire elle se déroule et l''énergie produite. (1,5 pts)
3.3. Explique pourquoi la respiration est indispensable à toutes les cellules vivantes. (2 pts)

**Exercice 4.** (5 points)
4.1. Un homme de groupe sanguin $AA$ épouse une femme de groupe $AO$. Réalise le tableau de croisement pour déterminer les groupes sanguins possibles des enfants. (2,5 pts)
4.2. Indique la probabilité qu''un enfant soit de groupe O. (1 pt)
4.3. Explique pourquoi les enfants de groupe O peuvent recevoir du sang O uniquement. (1,5 pts)

**Exercice 5.** (5 points)
5.1. Définis la mitose et la méiose. (1,5 pts)
5.2. Compare le nombre de chromosomes des cellules filles dans les deux divisions. (1,5 pts)
5.3. Explique le rôle de la méiose dans la reproduction sexuée et le maintien du nombre de chromosomes. (2 pts)

---

## SECTION 2 : PHYSIOLOGIE HUMAINE

**Exercice 6.** (5 points)
6.1. Décris la composition du sang (plasma, globules rouges, globules blancs, plaquettes). (2 pts)
6.2. Précise le rôle de chaque élément figuré du sang. (1,5 pts)
6.3. Explique le rôle des groupes sanguins et du facteur Rhésus lors d''une transfusion. (1,5 pts)

**Exercice 7.** (5 points)
7.1. Décris le trajet de l''air dans les voies respiratoires. (1,5 pts)
7.2. Explique les échanges gazeux au niveau des alvéoles pulmonaires. (1,5 pts)
7.3. Cite deux dangers du tabagisme pour l''appareil respiratoire. (2 pts)

**Exercice 8.** (5 points)
8.1. Définis la digestion et cite les principaux sucs digestifs et leurs enzymes. (2 pts)
8.2. Explique le rôle de la bile dans la digestion des graisses. (1,5 pts)
8.3. Indique où sont absorbés les nutriments et comment ils arrivent dans le sang. (1,5 pts)

**Exercice 9.** (5 points)
9.1. Décris les étapes de la formation de l''urine dans le néphron (filtration, réabsorption, sécrétion). (2,5 pts)
9.2. Compare la composition du sang et de l''urine. (1,5 pts)
9.3. Explique pourquoi la consommation d''alcool favorise la déshydratation. (1 pt)

**Exercice 10.** (5 points)
10.1. Différencie les deux types d''immunité : immunité naturelle et immunité acquise. (2 pts)
10.2. Explique le mécanisme de la réponse immunitaire face à un virus. (1,5 pts)
10.3. Explique pourquoi une personne atteinte du SIDA devient vulnérable aux infections. (1,5 pts)

---

## SECTION 3 : ÉCOLOGIE ET ENVIRONNEMENT

**Exercice 11.** (5 points)
11.1. Décris l''organisation d''un écosystème (producteurs, consommateurs, décomposeurs). (2 pts)
11.2. Explique les relations alimentaires entre les êtres vivants (chaîne et réseau trophique). (1,5 pts)
11.3. Donne un exemple de réseau trophique aquatique. (1,5 pts)

**Exercice 12.** (5 points)
12.1. Définis la pyramide des effectifs et la pyramide de biomasse. (2 pts)
12.2. Explique pourquoi le nombre d''individus diminue à chaque niveau trophique. (1,5 pts)
12.3. Calcule l''énergie disponible au niveau des consommateurs secondaires si les producteurs produisent 100 000 kJ (rendement 10 %). (1,5 pts)

**Exercice 13.** (5 points)
13.1. Cite deux causes de la pollution de l''air au Cameroun. (1,5 pts)
13.2. Explique l''effet de serre et ses conséquences sur le climat. (2 pts)
13.3. Propose deux solutions pour réduire la pollution de l''air. (1,5 pts)

**Exercice 14.** (5 points)
14.1. Définis la biodiversité et cite ses trois niveaux. (2 pts)
14.2. Explique comment la surexploitation des ressources menace la biodiversité. (1,5 pts)
14.3. Cite deux espèces menacées du Cameroun et deux mesures de protection. (1,5 pts)

**Exercice 15.** (5 points)
15.1. Décris le cycle de l''eau dans la nature (évaporation, condensation, précipitations). (2 pts)
15.2. Explique le rôle des plantes dans le cycle de l''eau (transpiration). (1,5 pts)
15.3. Indique l''importance de la protection des forêts pour la régulation du climat. (1,5 pts)

---

## SECTION 4 : GÉOLOGIE

**Exercice 16.** (5 points)
16.1. Classe les roches suivantes en roches magmatiques, sédimentaires ou métamorphiques : granite, calcaire, marbre, basalte, grès, schiste. (2 pts)
16.2. Explique la formation des roches magmatiques (intrusives et extrusives). (2 pts)
16.3. Cite un exemple de roche intrusive et un exemple de roche extrusive. (1 pt)

**Exercice 17.** (5 points)
17.1. Explique comment la datation des roches utilise les fossiles (fossiles stratigraphiques). (2 pts)
17.2. Différencie les fossiles anciens des fossiles récents par leur position dans les couches. (1,5 pts)
17.3. Cite deux milieux de formation des fossiles. (1,5 pts)

**Exercice 18.** (5 points)
18.1. Décris les mouvements des plaques tectoniques (divergence, convergence, coulissage). (2,5 pts)
18.2. Explique la formation des fosses océaniques et des dorsales. (1,5 pts)
18.3. Donne un exemple de région où se rencontrent deux plaques convergentes. (1 pt)

**Exercice 19.** (5 points)
19.1. Explique la différence entre magma et lave. (1,5 pts)
19.2. Décris les produits d''une éruption volcanique (lave, cendres, gaz, bombes). (2 pts)
19.3. Explique le danger des lacs de gaz volcanique, comme le lac Nyos au Cameroun. (1,5 pts)

**Exercice 20.** (5 points)
20.1. Définis l''érosion et cite ses agents. (2 pts)
20.2. Explique le rôle de l''eau et du vent dans le façonnement des paysages. (1,5 pts)
20.3. Cite deux conséquences de l''érosion des sols pour l''agriculture au Cameroun. (1,5 pts)

---

## CORRIGÉ TYPE

**Exercice 1.** 1.1. Cellule animale : membrane plasmique, cytoplasme, noyau, mitochondries. 1.2. Noyau : contient l''ADN et commande la cellule ; mitochondries : respiration cellulaire, production d''ATP ; membrane : échanges et protection. 1.3. Tous les êtres vivants sont formés de cellules et toutes les fonctions vitales se font dans les cellules.

**Exercice 2.** 2.1. Eau distillée : le globule gonfle (voire éclate) car l''eau entre ; solution salée : le globule se déshydrate et se rétracte (crénelé). 2.2. L''eau traverse la membrane vers le milieu le plus concentré (osmose). 2.3. Salage du poisson ou conservation des aliments (le sel déshydrate les micro-organismes).

**Exercice 3.** 3.1. $C_6H_{12}O_6 + 6O_2 \rightarrow 6CO_2 + 6H_2O + \text{énergie}$. 3.2. Dans les mitochondries ; énergie sous forme d''ATP. 3.3. Elle fournit l''énergie nécessaire à toutes les activités de la cellule (mouvement, synthèses, maintien).

**Exercice 4.** 4.1. $AA \times AO$ → AA, AA, AO, AO. 4.2. 0 % (aucun enfant OO). 4.3. Le groupe O ne porte ni antigène A ni B ; il peut être transfusé partout mais ne peut recevoir que du O.

**Exercice 5.** 5.1. Mitose : division cellulaire somatique conservant le nombre de chromosomes ; méiose : division des cellules reproductrices réduisant de moitié le nombre de chromosomes. 5.2. Mitose : cellules filles à 46 ; méiose : cellules filles à 23. 5.3. La méiose produit des gamètes haploïdes ; la fécondation rétablit le nombre diploïde.

**Exercice 6.** 6.1. Plasma (liquide), globules rouges (érythrocytes), globules blancs (leucocytes), plaquettes. 6.2. Globules rouges : transport de l''O₂ (hémoglobine) ; globules blancs : défense ; plaquettes : coagulation. 6.3. La compatibilité des groupes (A, B, AB, O) et du Rhésus évite les réactions de rejet lors de la transfusion.

**Exercice 7.** 7.1. Nez → pharynx → larynx → trachée → bronches → bronchioles → alvéoles. 7.2. L''O₂ passe de l''air alvéolaire vers le sang, le CO₂ passe du sang vers l''air alvéolaire. 7.3. Cancer du poumon, bronchite chronique, essoufflement, affections respiratoires.

**Exercice 8.** 8.1. Digestion : transformation des aliments en nutriments ; sucs : salive (amylase), suc gastrique, suc pancréatique, suc intestinal. 8.2. La bile émulsionne les graisses pour faciliter l''action des enzymes (lipases). 8.3. Absorption dans l''intestin grêle via les villosités qui passent dans le sang.

**Exercice 9.** 9.1. Filtration du sang au glomérule → réabsorption des substances utiles → formation de l''urine définitive. 9.2. L''urine contient plus d''urée et pas de glucose ni de protéines ; le sang contient les nutriments et protéines. 9.3. L''alcool inhibe la réabsorption de l''eau, augmentant le volume d''urine.

**Exercice 10.** 10.1. Immunité naturelle : barrières et défenses innées ; immunité acquise : réponse spécifique après contact avec un antigène. 10.2. Les lymphocytes reconnaissent le virus, produisent des anticorps qui neutralisent et détruisent les virus. 10.3. Le VIH détruit les lymphocytes T, donc l''organisme ne peut plus se défendre.

**Exercice 11.** 11.1. Producteurs (végétaux), consommateurs (animaux), décomposeurs (microbes/champignons). 11.2. Chaîne : suite linéaire de relations alimentaires ; réseau : ensemble de chaînes interconnectées. 11.3. Phytoplancton → zooplancton → petit poisson → gros poisson.

**Exercice 12.** 12.1. Pyramide des effectifs : nombre d''individus par niveau ; pyramide de biomasse : masse de matière vivante. 12.2. Une partie de l''énergie est perdue à chaque niveau (respiration, chaleur). 12.3. 100 000 → 10 000 (C1) → 1 000 kJ (C2).

**Exercice 13.** 13.1. Gaz d''échappement des véhicules, fumées industrielles, feux de brousse. 13.2. L''effet de serre retient la chaleur ; augmentation de la température, changement climatique. 13.3. Transports doux, énergies renouvelables, lutte contre les feux de brousse.

**Exercice 14.** 14.1. Biodiversité : diversité du vivant ; niveaux : génétique, spécifique, écosystémique. 14.2. La surexploitation (chasse, pêche, coupe des forêts) élimine les espèces. 14.3. Ex : éléphant, gorille ; mesures : aires protégées, lois sur le braconnage.

**Exercice 15.** 15.1. Évaporation de l''eau des océans → condensation en nuages → précipitations → ruissellement. 15.2. La transpiration des plantes libère de la vapeur d''eau dans l''atmosphère. 15.3. Les forêts régulent le climat et maintiennent les précipitations.

**Exercice 16.** 16.1. Magmatiques : granite, basalte ; sédimentaires : calcaire, grès ; métamorphiques : marbre, schiste. 16.2. Refroidissement du magma en profondeur (intrusive) ou en surface (extrusive). 16.3. Intrusive : granite ; extrusive : basalte.

**Exercice 17.** 17.1. Certains fossiles (stratigraphiques) caractérisent une époque et permettent de dater les couches. 17.2. Les couches profondes contiennent les fossiles plus anciens ; les couches superficielles, les plus récents. 17.3. Fonds marins, lacs, sédiments.

**Exercice 18.** 18.1. Divergence : plaques s''écartent ; convergence : se rapprochent ; coulissage : glissent l''une le long de l''autre. 18.2. Dorsales : divergence des plaques océaniques ; fosses : subduction d''une plaque. 18.3. Himalaya (Inde/Asie), zone de subduction Pacifique.

**Exercice 19.** 19.1. Magma : roche en fusion en profondeur ; lave : magma arrivé en surface. 19.2. Coulées de lave, projections de cendres, émission de gaz, bombes volcaniques. 19.3. Le lac Nyos a libéré du CO₂ asphyxiant, tuant hommes et animaux.

**Exercice 20.** 20.1. Érosion : usure et transport des roches ; agents : eau, vent, glace, activité humaine. 20.2. L''eau creuse les vallées, le vent transporte et polit les roches. 20.3. Perte de fertilité des sols, diminution des rendements agricoles.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'e00b933a-4c57-754a-812f-47edc93abfb9';


-- Update set 6 for Sciences de la Vie et de la Terre
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE — ÉPREUVE 2 — SÉRIE 6

## Épreuve de problèmes

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Sciences de la Vie et de la Terre (SVT)
**Durée :** 3 heures
**Coefficient :** 2

**Consignes :**

- Cette épreuve comporte 4 sections : Biologie cellulaire et génétique, Physiologie humaine, Écologie et environnement, Géologie.
- Chaque section comprend 5 exercices notés sur 5 points chacun.
- Le total de l''épreuve est de 100 points.
- Justifie clairement tes réponses. Les schémas doivent être légendés.

---

## SECTION 1 : BIOLOGIE CELLULAIRE ET GÉNÉTIQUE

**Exercice 1.** (5 points)
1.1. Schématise une cellule végétale et une cellule animale en indiquant les différences structurelles. (2,5 pts)
1.2. Précise le rôle des chloroplastes et de la vacuole dans la cellule végétale. (1,5 pts)
1.3. Justifie pourquoi une cellule végétale peut rester turgescente dans un milieu hypotonique. (1 pt)

**Exercice 2.** (5 points)
2.1. Définis le métabolisme et distingue le catabolisme de l''anabolisme. (2 pts)
2.2. Donne un exemple de réaction de chaque type chez une plante verte. (1,5 pts)
2.3. Explique pourquoi la lumière influence le métabolisme des végétaux verts. (1,5 pts)

**Exercice 3.** (5 points)
3.1. Écris les équations de la photosynthèse et de la respiration. (2 pts)
3.2. Compare les conditions, les lieux et les produits de ces deux réactions. (2 pts)
3.3. Explique pourquoi une plante exposée à la lumière libère de l''oxygène. (1 pt)

**Exercice 4.** (5 points)
4.1. Définis la dominance complète et donne un exemple. (2 pts)
4.2. Croise une poule à crête normale ($Cc$) avec un coq à crête normale ($Cc$). Réalise le tableau de croisement (C domine c). (1,5 pts)
4.3. Déduis les proportions phénotypiques de la descendance. (1,5 pts)

**Exercice 5.** (5 points)
5.1. Explique le mécanisme de transmission d''un caractère héréditaire de génération en génération. (2 pts)
5.2. Distingue caractère héréditaire et caractère acquis, avec des exemples. (2 pts)
5.3. Justifie que les jumeaux vrais (monozygotes) sont génétiquement identiques. (1 pt)

---

## SECTION 2 : PHYSIOLOGIE HUMAINE

**Exercice 6.** (5 points)
6.1. Décris la structure et le fonctionnement du cœur (4 cavités, sens de circulation). (2,5 pts)
6.2. Explique le rôle des artères, des veines et des capillaires. (1,5 pts)
6.3. Cite un trouble cardio-vasculaire et un moyen de le prévenir. (1 pt)

**Exercice 7.** (5 points)
7.1. Explique le mécanisme de la respiration chez l''homme (mouvements respiratoires). (2,5 pts)
7.2. Décris les échanges gazeux alvéolaires en précisant le sens des gaz. (1,5 pts)
7.3. Indique le volume d''air inspiré par minute chez un adulte au repos. (1 pt)

**Exercice 8.** (5 points)
8.1. Décris le trajet complet des aliments dans l''appareil digestif et les transformations subies. (2,5 pts)
8.2. Précise le rôle de l''estomac dans la digestion. (1 pt)
8.3. Explique l''importance d''une alimentation équilibrée pour la santé. (1,5 pts)

**Exercice 9.** (5 points)
9.1. Décris le rôle de l''appareil excréteur dans l''élimination des déchets. (2 pts)
9.2. Précise la composition du sang, de l''urine et de la sueur. (1,5 pts)
9.3. Explique comment le rein maintient l''équilibre de l''eau dans l''organisme. (1,5 pts)

**Exercice 10.** (5 points)
10.1. Décris la réponse immunitaire spécifique (rôle des lymphocytes B et T). (2,5 pts)
10.2. Explique la mémoire immunitaire et son rôle lors d''une seconde infection. (1,5 pts)
10.3. Justifie l''importance de la vaccination pour la prévention des maladies. (1 pt)

---

## SECTION 3 : ÉCOLOGIE ET ENVIRONNEMENT

**Exercice 11.** (5 points)
11.1. Définis un écosystème et donne ses composantes. (1,5 pts)
11.2. Décris les relations trophiques dans un écosystème. (1,5 pts)
11.3. Explique le rôle des décomposeurs dans le cycle de la matière. (2 pts)

**Exercice 12.** (5 points)
12.1. Construis une chaîne alimentaire forestière camerounaise à quatre maillons. (1,5 pts)
12.2. Identifie les niveaux trophiques de ta chaîne. (1,5 pts)
12.3. Explique la notion de pyramide alimentaire et sa signification. (2 pts)

**Exercice 13.** (5 points)
13.1. Cite les principales sources de pollution des eaux au Cameroun. (2 pts)
13.2. Explique les conséquences de la pollution de l''eau sur la santé humaine. (1,5 pts)
13.3. Propose deux moyens de protéger les ressources en eau. (1,5 pts)

**Exercice 14.** (5 points)
14.1. Explique la notion de ressource naturelle et cite deux types. (2 pts)
14.2. Décris l''impact de la déforestation sur la biodiversité camerounaise. (1,5 pts)
14.3. Cite trois pratiques agricoles durables pour préserver le sol. (1,5 pts)

**Exercice 15.** (5 points)
15.1. Décris le cycle du carbone dans la nature. (2,5 pts)
15.2. Explique le rôle des végétaux et des combustibles fossiles dans ce cycle. (1,5 pts)
15.3. Justifie pourquoi l''augmentation du CO₂ contribue à l''effet de serre. (1 pt)

---

## SECTION 4 : GÉOLOGIE

**Exercice 16.** (5 points)
16.1. Décris les trois grands types de roches et leurs origines. (2,5 pts)
16.2. Explique le cycle des roches (transformation d''un type à l''autre). (1,5 pts)
16.3. Cite un exemple de roche utilisée dans la construction au Cameroun. (1 pt)

**Exercice 17.** (5 points)
17.1. Explique la formation d''un fossile et les conditions de fossilisation. (2,5 pts)
17.2. Différencie fossile vivant et fossile stratigraphique. (1,5 pts)
17.3. Donne un exemple de fossile caractéristique d''une ère géologique. (1 pt)

**Exercice 18.** (5 points)
18.1. Décris la structure interne de la Terre et la notion de plaques lithosphériques. (2,5 pts)
18.2. Explique l''origine des séismes et leurs conséquences. (1,5 pts)
18.3. Cite deux régions du Cameroun à risque sismique. (1 pt)

**Exercice 19.** (5 points)
19.1. Décris la structure d''un volcan (cratère, cheminée, chambre magmatique). (2 pts)
19.2. Explique la différence entre éruption effusive et explosive. (1,5 pts)
19.3. Décris les dangers volcaniques et les mesures de protection. (1,5 pts)

**Exercice 20.** (5 points)
20.1. Explique la théorie de la tectonique des plaques et ses preuves. (2,5 pts)
20.2. Décris les mouvements de divergence, convergence et coulissage. (1,5 pts)
20.3. Explique la formation de la faille de l''Adamawa au Cameroun. (1 pt)

---

## CORRIGÉ TYPE

**Exercice 1.** 1.1. Végétale : paroi, chloroplastes, grande vacuole ; animale : pas de paroi, pas de chloroplastes, petites vacuoles. 1.2. Chloroplastes : photosynthèse ; vacuole : stockage de l''eau et turgescence. 1.3. La paroi cellulosique résiste à la pression, la cellule garde sa forme (turgescence).

**Exercice 2.** 2.1. Métabolisme : ensemble des réactions chimiques de la cellule ; catabolisme : dégradation libérant de l''énergie ; anabolisme : synthèse consommant de l''énergie. 2.2. Catabolisme : respiration ; anabolisme : photosynthèse, synthèse des protéines. 2.3. La lumière fournit l''énergie de la photosynthèse (anabolisme).

**Exercice 3.** 3.1. Photosynthèse : $6CO_2 + 6H_2O \xrightarrow{\text{lumière}} C_6H_{12}O_6 + 6O_2$ ; respiration : $C_6H_{12}O_6 + 6O_2 \rightarrow 6CO_2 + 6H_2O + \text{énergie}$. 3.2. Photosynthèse : lumière, chloroplastes, produit O₂ ; respiration : toujours, mitochondries, produit CO₂. 3.3. La photosynthèse libère l''oxygène issu de la décomposition de l''eau.

**Exercice 4.** 4.1. Dominance complète : un allèle masque l''autre chez l''hétérozygote ; ex : couleur des yeux. 4.2. $Cc \times Cc$ → CC, Cc, Cc, cc. 4.3. 3 crête normale : 1 crête simple (3:1).

**Exercice 5.** 5.1. Les gènes sont transmis par les gamètes lors de la fécondation. 5.2. Héréditaire : couleur des yeux (transmis) ; acquis : muscle développé, cicatrice (non transmis). 5.3. Issus d''un même zygote divisé, ils ont le même ADN.

**Exercice 6.** 6.1. Cœur : 2 oreillettes, 2 ventricules ; le sang circule des oreillettes vers les ventricules, puis vers les artères. 6.2. Artères : du cœur vers les organes ; veines : des organes vers le cœur ; capillaires : échanges. 6.3. Ex : hypertension, infarctus ; prévention : activité physique, alimentation équilibrée.

**Exercice 7.** 7.1. Inspiration : contraction diaphragme/intercostaux, volume augmente ; expiration : relâchement. 7.2. O₂ de l''air vers le sang, CO₂ du sang vers l''air. 7.3. Environ 6 à 8 L/min au repos.

**Exercice 8.** 8.1. Bouche (amidon→glucose) → œsophage → estomac (protéines) → intestin grêle (absorption) → gros intestin (eau) → anus. 8.2. L''estomac mélange, dégrade les protéines par le suc gastrique (pepsine). 8.3. Apporte nutriments, vitamines et minéraux nécessaires au fonctionnement et à la croissance.

**Exercice 9.** 9.1. Les reins filtrent le sang et éliminent les déchets dans l''urine. 9.2. Sang : nutriments, protéines ; urine : eau, urée, sels ; sueur : eau, sels, urée. 9.3. En réabsorbant plus ou moins d''eau selon les besoins.

**Exercice 10.** 10.1. Lymphocytes B : produisent des anticorps ; lymphocytes T : détruisent les cellules infectées. 10.2. Les cellules mémoire reconnaissent l''antigène et répondent plus vite et plus fort. 10.3. Elle confère une immunité durable sans avoir la maladie.

**Exercice 11.** 11.1. Écosystème = biotope + biocénose + interactions. 11.2. Relations alimentaires : producteurs, consommateurs, décomposeurs. 11.3. Ils transforment la matière organique en matière minérale, recyclée par les producteurs.

**Exercice 12.** 12.1. Feuilles → chenille → oiseau → épervier. 12.2. Producteur (feuilles), C1 (chenille), C2 (oiseau), C3 (épervier). 12.3. Représentation de la diminution d''énergie/effectifs à chaque niveau.

**Exercice 13.** 13.1. Eaux usées, déchets industriels, produits chimiques, ordures ménagères. 13.2. Maladies hydriques (choléra, typhoïde), intoxications. 13.3. Traitement des eaux usées, protection des cours d''eau, gestion des déchets.

**Exercice 14.** 14.1. Ressource naturelle : élément de la nature exploité ; ex : eau, forêt, minerais. 14.2. Perte d''habitats, extinction d''espèces. 14.3. Rotation des cultures, agroforesterie, compostage.

**Exercice 15.** 15.1. CO₂ absorbé par les plantes (photosynthèse), libéré par respiration et combustion, retourné par décomposition. 15.2. Végétaux fixent le carbone ; combustibles fossiles libèrent le CO₂ en brûlant. 15.3. Le CO₂ retient la chaleur dans l''atmosphère.

**Exercice 16.** 16.1. Magmatiques : refroidissement du magma ; sédimentaires : dépôt de sédiments ; métamorphiques : transformation sous pression/température. 16.2. Sédiments → roches sédimentaires → métamorphisme → roches métamorphiques → fusion → magmatiques. 16.3. Granite, basalte, grès.

**Exercice 17.** 17.1. Reste d''un être vivant enseveli et conservé dans les sédiments. 17.2. Fossile vivant : espèce actuelle peu changée ; stratigraphique : caractéristique d''une époque. 17.3. Ammonite (ère secondaire).

**Exercice 18.** 18.1. Croûte, manteau, noyau ; plaques = fragments de la lithosphère. 18.2. Mouvement des plaques → accumulation de contraintes → rupture (faille) → vibrations. 18.3. Région du Cameroun (faille de l''Adamawa), zone volcanique.

**Exercice 19.** 19.1. Volcan : chambre magmatique, cheminée, cratère. 19.2. Effusive : lave fluide ; explosive : projections violentes de cendres et bombes. 19.3. Dangers : coulées, cendres, gaz ; protection : surveillance, évacuation.

**Exercice 20.** 20.1. Plaques en mouvement sur le manteau ; preuves : répartition des séismes, fossiles, continents emboîtés. 20.2. Divergence (dorsales), convergence (subduction/collision), coulissage (failles). 20.3. Rift/faille due à la tension entre plaques au niveau de la ligne du Cameroun.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'b5274931-0a1d-aa3e-2315-3b569ad301a0';


-- Update set 7 for Sciences de la Vie et de la Terre
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE — ÉPREUVE 2 — SÉRIE 7

## Épreuve de problèmes

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Sciences de la Vie et de la Terre (SVT)
**Durée :** 3 heures
**Coefficient :** 2

**Consignes :**

- Cette épreuve comporte 4 sections : Biologie cellulaire et génétique, Physiologie humaine, Écologie et environnement, Géologie.
- Chaque section comprend 5 exercices notés sur 5 points chacun.
- Le total de l''épreuve est de 100 points.
- Justifie clairement tes réponses. Les schémas doivent être légendés.

---

## SECTION 1 : BIOLOGIE CELLULAIRE ET GÉNÉTIQUE

**Exercice 1.** (5 points)
1.1. Décris l''organisation d''une cellule eucaryote (noyau, cytoplasme, organites). (2 pts)
1.2. Précise la fonction de l''ADN dans le noyau. (1,5 pts)
1.3. Explique pourquoi l''information génétique est conservée au cours des divisions. (1,5 pts)

**Exercice 2.** (5 points)
2.1. Un élève place un morceau de manioc cuit dans de l''eau et un autre dans une solution sucrée concentrée. Prédis et explique les résultats. (2,5 pts)
2.2. Décris l''expérience permettant de mettre en évidence l''osmose. (1,5 pts)
2.3. Cite l''importance de l''osmose pour les plantes (absorption de l''eau par les racines). (1 pt)

**Exercice 3.** (5 points)
3.1. Définis la nutrition autotrophe et la nutrition hétérotrophe. (2 pts)
3.2. Classe les êtres suivants : plante verte, champignon, homme, algue. (1,5 pts)
3.3. Explique comment la plante obtient sa matière minérale à partir du sol. (1,5 pts)

**Exercice 4.** (5 points)
4.1. Explique la transmission d''un gène récessif responsable d''une maladie. (2 pts)
4.2. Deux parents sains mais porteurs du gène de la drépanocytose ($AS \times AS$, où S est récessif). Réalise le tableau de croisement. (2 pts)
4.3. Déduis la probabilité d''avoir un enfant drépanocytaire ($SS$). (1 pt)

**Exercice 5.** (5 points)
5.1. Différencie reproduction sexuée et reproduction asexuée avec des exemples. (2,5 pts)
5.2. Explique l''intérêt de la reproduction sexuée pour la diversité génétique. (1,5 pts)
5.3. Donne un exemple de reproduction asexuée chez une plante et chez un animal. (1 pt)

---

## SECTION 2 : PHYSIOLOGIE HUMAINE

**Exercice 6.** (5 points)
6.1. Décris le fonctionnement de l''appareil circulatoire humain (petite et grande circulation). (2,5 pts)
6.2. Explique le rôle de l''hémoglobine dans le transport des gaz. (1,5 pts)
6.3. Cite deux maladies cardio-vasculaires liées à la sédentarité et leur prévention. (1 pt)

**Exercice 7.** (5 points)
7.1. Explique la différence entre respiration externe (pulmonaire) et respiration interne (cellulaire). (2,5 pts)
7.2. Décris les échanges gazeux au niveau des tissus (capillaires). (1,5 pts)
7.3. Justifie pourquoi l''effort physique augmente la consommation d''oxygène. (1 pt)

**Exercice 8.** (5 points)
8.1. Décris le trajet de l''aliment dans l''appareil digestif en précisant les transformations. (2,5 pts)
8.2. Explique le rôle du pancréas dans la digestion. (1 pt)
8.3. Cite les nutriments issus de la digestion des glucides, des protides et des lipides. (1,5 pts)

**Exercice 9.** (5 points)
9.1. Décris le fonctionnement du néphron et la formation de l''urine. (2,5 pts)
9.2. Explique l''importance de l''élimination des déchets pour l''organisme. (1,5 pts)
9.3. Cite une maladie du rein et son principal symptôme. (1 pt)

**Exercice 10.** (5 points)
10.1. Définis la vaccination et la sérothérapie. (1,5 pts)
10.2. Explique la différence entre immunité active et immunité passive. (2 pts)
10.3. Justifie l''importance du programme élargi de vaccination (PEV) au Cameroun. (1,5 pts)

---

## SECTION 3 : ÉCOLOGIE ET ENVIRONNEMENT

**Exercice 11.** (5 points)
11.1. Définis biocénose et biotope et donne des exemples. (2 pts)
11.2. Décris les relations entre les êtres vivants et leur milieu. (1,5 pts)
11.3. Explique la notion d''équilibre d''un écosystème. (1,5 pts)

**Exercice 12.** (5 points)
12.1. Construis une chaîne alimentaire d''un écosystème aquatique. (1,5 pts)
12.2. Définis producteur, consommateur et décomposeur. (1,5 pts)
12.3. Explique pourquoi la pyramide de biomasse est généralement plus large à la base. (2 pts)

**Exercice 13.** (5 points)
13.1. Cite les causes de la pollution de l''eau, du sol et de l''air. (2 pts)
13.2. Explique les conséquences du rejet des déchets plastiques dans la nature. (1,5 pts)
13.3. Propose trois solutions pour réduire la pollution plastique. (1,5 pts)

**Exercice 14.** (5 points)
14.1. Définis l''exploitation durable des ressources naturelles. (2 pts)
14.2. Explique les conséquences de la surexploitation des forêts et des ressources halieutiques. (2 pts)
14.3. Cite deux exemples de gestion durable au Cameroun. (1 pt)

**Exercice 15.** (5 points)
15.1. Décris le cycle de l''azote dans la nature (fixation, nitrification, assimilation). (2,5 pts)
15.2. Explique le rôle des bactéries du sol dans ce cycle. (1,5 pts)
15.3. Justifie l''importance des engrais pour l''agriculture et leurs limites. (1 pt)

---

## SECTION 4 : GÉOLOGIE

**Exercice 16.** (5 points)
16.1. Décris les roches magmatiques et leur formation (basalte, granite). (2,5 pts)
16.2. Explique la formation des roches sédimentaires et leur stratification. (1,5 pts)
16.3. Cite l''importance économique des roches au Cameroun. (1 pt)

**Exercice 17.** (5 points)
17.1. Explique la fossilisation et les conditions de conservation des fossiles. (2,5 pts)
17.2. Précise ce que les fossiles nous apprennent sur l''histoire de la Terre. (1,5 pts)
17.3. Donne un exemple d''espèce fossile disparue. (1 pt)

**Exercice 18.** (5 points)
18.1. Décris les plaques tectoniques et leurs frontières. (2 pts)
18.2. Explique la formation des volcans aux limites de plaques convergentes. (1,5 pts)
18.3. Décris la chaîne volcanique du Cameroun (ligne du Cameroun). (1,5 pts)

**Exercice 19.** (5 points)
19.1. Décris les types d''éruptions volcaniques et leurs produits. (2,5 pts)
19.2. Explique les risques volcaniques et les mesures de prévention. (1,5 pts)
19.3. Indique un avantage du volcanisme pour les populations. (1 pt)

**Exercice 20.** (5 points)
20.1. Explique la formation des montagnes de plissement par convergence de plaques. (2,5 pts)
20.2. Différencie montagnes de plissement et montagnes volcaniques. (1,5 pts)
20.3. Cite un exemple de chaque type de montagne dans le monde ou au Cameroun. (1 pt)

---

## CORRIGÉ TYPE

**Exercice 1.** 1.1. Noyau (ADN), cytoplasme, organites (mitochondries, réticulum, ribosomes). 1.2. L''ADN porte et transmet l''information génétique. 1.3. L''ADN est copié fidèlement lors de la mitose, les cellules filles reçoivent la même information.

**Exercice 2.** 2.1. Eau : le manioc gonfle (eau entre) ; solution sucrée : se déshydrate (eau sort). 2.2. Membrane semi-perméable séparant deux solutions de concentrations différentes ; l''eau migre vers le milieu concentré. 2.3. Les racines absorbent l''eau du sol par osmose (milieu du sol moins concentré).

**Exercice 3.** 3.1. Autotrophe : fabrique sa matière organique à partir de matière minérale ; hétérotrophe : se nourrit de matière organique préexistante. 3.2. Plante verte : autotrophe ; algue : autotrophe ; champignon : hétérotrophe ; homme : hétérotrophe. 3.3. Les poils absorbants des racines prélèvent l''eau et les sels minéraux du sol.

**Exercice 4.** 4.1. Le gène récessif ne s''exprime que s''il est présent en deux exemplaires (homozygote). 4.2. $AS \times AS$ → AA, AS, AS, SS. 4.3. 1/4 (25 %) d''enfants drépanocytaires (SS).

**Exercice 5.** 5.1. Sexuée : fusion de gamètes (homme, fleurs) ; asexuée : sans gamètes, clones (bouture, bactérie, paramécie). 5.2. Elle crée des combinaisons génétiques nouvelles, source de diversité et d''adaptation. 5.3. Plante : bouturage, marcottage ; animal : fission binaire (amibe), bourgeonnement.

**Exercice 6.** 6.1. Petite circulation : cœur→poumons→cœur ; grande circulation : cœur→organes→cœur. 6.2. L''hémoglobine des globules rouges fixe l''O₂ et le CO₂. 6.3. Hypertension, infarctus ; prévention : activité physique, régime équilibré.

**Exercice 7.** 7.1. Externe : échanges avec l''air dans les poumons ; interne : respiration cellulaire dans les mitochondries. 7.2. Au niveau des capillaires tissulaires, l''O₂ passe du sang aux cellules, le CO₂ des cellules au sang. 7.3. L''effort augmente le besoin énergétique, donc la consommation d''O₂.

**Exercice 8.** 8.1. Bouche → œsophage → estomac → intestin grêle → gros intestin → anus. 8.2. Le pancréas sécrète le suc pancréatique contenant des enzymes (amylase, lipase, trypsine). 8.3. Glucides → glucose ; protides → acides aminés ; lipides → acides gras et glycérol.

**Exercice 9.** 9.1. Filtration du sang → réabsorption des substances utiles → urine. 9.2. L''élimination des déchets évite leur accumulation toxique. 9.3. Ex : insuffisance rénale ; symptôme : rétention d''eau, œdèmes, fatigue.

**Exercice 10.** 10.1. Vaccination : injection d''antigène atténué pour déclencher une immunité durable ; sérothérapie : injection d''anticorps prêts. 10.2. Active : l''organisme produit lui-même les anticorps (durable) ; passive : anticorps apportés (temporaire). 10.3. Le PEV protège les enfants contre plusieurs maladies graves (tuberculose, rougeole, etc.).

**Exercice 11.** 11.1. Biocénose : êtres vivants d''un milieu ; biotope : milieu physique. 11.2. Les êtres vivants dépendent du milieu et agissent sur lui. 11.3. Équilibre : stabilité des populations grâce aux interactions (prédation, compétition).

**Exercice 12.** 12.1. Phytoplancton → zooplancton → poisson → oiseau. 12.2. Producteur : fabrique la matière organique ; consommateur : se nourrit d''autres ; décomposeur : dégrade la matière. 12.3. La biomasse des producteurs est la plus grande car ils captent toute l''énergie solaire.

**Exercice 13.** 13.1. Eau : eaux usées, produits chimiques ; sol : pesticides, déchets ; air : fumées, gaz. 13.2. Pollution des sols et des eaux, mortalité des animaux, pollution des océans. 13.3. Réduire l''usage, recycler, trier, bannir les sacs plastiques.

**Exercice 14.** 14.1. Exploitation qui répond aux besoins présents sans compromettre ceux des générations futures. 14.2. Déforestation : perte de biodiversité ; surpêche : épuisement des stocks. 14.3. Aires protégées, parcs nationaux, gestion raisonnée des forêts.

**Exercice 15.** 15.1. Fixation de l''azote atmosphérique par les bactéries → nitrification → absorption par les plantes. 15.2. Les bactéries (Rhizobium) fixent l''azote et le rendent assimilable. 15.3. Les engrais apportent des nutriments mais leur excès pollue les sols et les eaux.

**Exercice 16.** 16.1. Refroidissement du magma en profondeur (granite) ou en surface (basalte). 16.2. Dépôt des sédiments en couches successives → compaction → roches stratifiées. 16.3. Granite, sable, latérite pour la construction.

**Exercice 17.** 17.1. Ensevelissement rapide dans des sédiments, conservation des parties dures. 17.2. Ils renseignent sur les espèces anciennes et l''évolution de la Terre. 17.3. Dinosaures, ammonites, trilobites.

**Exercice 18.** 18.1. Plaques = fragments de lithosphère ; frontières : dorsales, fosses, failles. 18.2. La subduction d''une plaque océanique sous une plaque continentale provoque la fusion et le volcanisme. 18.3. Chaîne volcanique du Cameroun : ligne volcanique du golfe de Guinée (mont Cameroun, monts Bamboutos).

**Exercice 19.** 19.1. Effusive : coulées de lave ; explosive : cendres, bombes, nuées ardentes. 19.2. Risques : coulées, cendres, gaz ; prévention : surveillance, cartes de risque, évacuation. 19.3. Sols volcaniques fertiles pour l''agriculture.

**Exercice 20.** 20.1. Collision de deux plaques continentales → plissement des sédiments → soulèvement en montagnes. 20.2. Plissement : plis et failles ; volcanique : édifices formés par les éruptions. 20.3. Plissement : Himalaya, Alpes ; volcanique : mont Cameroun, Fuji-Yama.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '12a69021-7c1f-7d95-1d23-b6986dda0878';


-- BEPC — Histoire-Géographie — L'histoire du Cameroun
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '256615c9-8769-4ee0-05c0-27d014ca5c8e', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC — Histoire-Géographie — L''histoire du Cameroun',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Histoire-Géographie — L''histoire du Cameroun

**Niveau :** Troisième — BEPC
**Matière :** Histoire-Géographie

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Situer le Cameroun dans l''espace et le temps ;
- Décrire les grandes étapes du peuplement et les sociétés précoloniales ;
- Expliquer la colonisation allemande et ses conséquences ;
- Analyser le partage franco-britannique et la lutte pour l''indépendance ;
- Raconter l''indépendance, la réunification et l''évolution politique du Cameroun.

---

## 1. Le Cameroun précolonial

### 1.1 Le peuplement

Le Cameroun est habité depuis la préhistoire. Les **Baka** et les **Bakola** (pygmées) sont considérés comme les premiers habitants des forêts du Sud-Est. Au fil des siècles, de grandes vagues de migrations ont peuplé le territoire :

- Les **populations soudanaises** (Peuls, Mafa, Toupouri, Kotoko) dans le Nord ;
- Les **populations bantoues** (Bassa, Béti, Ewondo, Douala, Fang) au Sud, au Centre et à l''Est ;
- Les **populations semi-bantoues** (Bamiléké, Bamoun) à l''Ouest.

Ces migrations s''expliquent par la recherche de terres fertiles, de pâturages et la fuite devant les conflits.

### 1.2 Les grands royaumes

Avant la colonisation, le Cameroun comptait plusieurs entités politiques organisées :

| Royaume / chefferie  | Région          | Organisation                      |
| -------------------- | --------------- | --------------------------------- |
| Royaume Bamoun       | Ouest (Foumban) | Roi Njoya, écriture shümom, musée |
| Chefferies bamiléké  | Ouest           | Chefs, hiérarchie, agriculture    |
| Lamidats (Rey-Bouba) | Nord            | Sultans, islamisation, commerce   |
| Royaume douala       | Littoral        | Rois côtiers, commerce atlantique |

Le **roi Njoya** (règne 1887-1933) marqua l''histoire du royaume Bamoun : il inventa l''écriture **shümom**, créa un musée et développa l''agriculture et l''artisanat.

### 1.3 Le commerce

- Le **commerce transsaharien** reliait le Nord aux pays arabes (sel, or, esclaves).
- La **traite atlantique** toucha la côte (vente d''esclaves vers les Amériques).
- Le **commerce légitime** (huile de palme, ivoire, cacao) succéda à la traite au XIXe siècle.

---

## 2. La colonisation allemande (1884-1916)

### 2.1 Le protectorat

Le **12 juillet 1884**, l''explorateur allemand **Gustav Nachtigal** signe avec les rois douala (Bell, Akwa, Deido) un traité de protectorat. L''Allemagne souhaite ainsi protéger son commerce contre les Britanniques. Le territoire prend le nom de **Kamerun**.

### 2.2 L''exploitation

Les Allemands organisent le territoire : gouverneurs, districts, postes administratifs. Ils créent :

- De **grandes plantations** (cacao, café, caoutchouc, palmier à huile) ;
- Des **chemins de fer** (Nord-Sud et littoral) ;
- Des infrastructures (ports, routes, écoles, hôpitaux).

Mais la mise en valeur repose sur le **travail forcé** et la spoliation des terres, ce qui provoque des révoltes.

### 2.3 Les résistances

- **Rudolf Duala Manga Bell** protesta contre la spoliation des terres douala ; il fut pendu en 1914.
- **Martin-Paul Samba** (peuple Bulu) organisa une résistance ; il fut exécuté en 1914.

---

## 3. Le mandat franco-britannique (1916-1960)

### 3.1 Le partage

Vaincue en 1918, l''Allemagne perd le Cameroun. En **1919**, le territoire est partagé : la **France** reçoit environ **4/5** du territoire (à l''Est), le **Royaume-Uni** environ **1/5** (à l''Ouest). La Société des Nations leur confie le Cameroun sous forme de **mandats**.

### 3.2 Deux administrations

- **France** : administration directe, politique d''**assimilation**, code de l''indigénat, mise en valeur intensive.
- **Royaume-Uni** : administration indirecte (**indirect rule**) s''appuyant sur les chefs, développement plus limité.

### 3.3 Le nationalisme et la lutte pour l''indépendance

Après 1945, les revendications s''intensifient. En **1948**, l''**Union des Populations du Cameroun (UPC)**, dirigée par **Ruben Um Nyobé**, réclame l''indépendance immédiate, la réunification et des réformes sociales. L''UPC est interdite en 1955 ; une **insurrection** (« guerre des maquis ») éclate. En 1956, la **loi-cadre Defferre** accorde l''autonomie interne au Cameroun.

---

## 4. L''indépendance et la réunification (1960-1961)

### 4.1 L''indépendance

Le **1er janvier 1960**, le Cameroun français accède à l''indépendance sous la présidence d''**Ahmadou Ahidjo**, premier président du pays. Le Cameroun adhère à l''ONU.

### 4.2 La réunification

Le **plébiscite du 11 février 1961** décide du sort du Cameroun britannique : le **Nord** choisit le rattachement au Nigeria, le **Sud** (Southern Cameroons) choisit la réunification avec le Cameroun. La réunification est proclamée le **1er octobre 1961**, créant la **République fédérale du Cameroun**.

---

## 5. De l''État fédéral à l''État unitaire

- **1961-1972** : République fédérale avec deux États (Cameroun oriental et Cameroun occidental) ;
- **20 mai 1972** : par référendum, le Cameroun devient un **État unitaire** (République unie), capitale Yaoundé ;
- **1982** : Ahmadou Ahidjo démissionne, remplacé par **Paul Biya** ;
- **1990-1992** : retour au **multipartisme** et ouverture démocratique ;
- Depuis, le Cameroun poursuit sa **décentralisation** et sa politique de développement (Vision 2035).

---

## 6. Erreurs à éviter

- Confondre les dates (1884 protectorat, 1960 indépendance, 1961 réunification, 1972 État unitaire) ;
- Oublier le nom des figures historiques (Njoya, Nachtigal, Um Nyobé, Ahidjo) ;
- Ne pas distinguer le Cameroun français du Cameroun britannique ;
- Confondre mandat, colonie et protectorat.

---

## 7. Exercices d''entraînement

**Exercice 1 :** Raconte les circonstances de l''établissement du protectorat allemand en 1884.

**Exercice 2 :** Compare l''administration française (assimilation) et britannique (indirect rule) au Cameroun.

**Exercice 3 :** Explique les causes et les conséquences de la réunification du Cameroun en 1961.

**Exercice 4 :** Décris l''évolution politique du Cameroun de 1960 à nos jours en cinq étapes datées.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Histoire-Géographie Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Histoire-Géographie — La géographie physique du Cameroun
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '50c3ef1f-cc8e-b806-9afb-e3547963b02e', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC — Histoire-Géographie — La géographie physique du Cameroun',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Histoire-Géographie — La géographie physique du Cameroun

**Niveau :** Troisième — BEPC
**Matière :** Histoire-Géographie

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Localiser et décrire les grandes unités de relief du Cameroun ;
- Caractériser les différents climats et leurs facteurs ;
- Décrire les principaux fleuves et le lac Tchad ;
- Expliquer la répartition de la végétation et des sols ;
- Relier relief, climat, sols et végétation.

---

## 1. La position du Cameroun

Le Cameroun est un pays d''**Afrique centrale** situé entre 2° et 13° de latitude Nord et 8° et 16° de longitude Est. Il est ouvert sur l''**océan Atlantique** au sud-ouest. Ses voisins sont le Nigeria (ouest et nord), le Tchad (nord), la République centrafricaine (est), le Congo, le Gabon et la Guinée équatoriale (sud). Grâce à la diversité de ses paysages, on le surnomme **« l''Afrique en miniature »**.

---

## 2. Le relief

On distingue, du sud au nord, plusieurs grandes unités :

| Unité de relief                | Altitude        | Caractéristiques                        |
| ------------------------------ | --------------- | --------------------------------------- |
| Plaine côtière                 | 0 - 200 m       | Basse, humide, mangrove, port de Douala |
| Plateau sud-camerounais        | 600 - 1 000 m   | Socle ancien, forêt, collines           |
| Plateau de l''Adamaoua          | 1 000 - 2 000 m | « Château d''eau » du Cameroun           |
| Massifs volcaniques de l''Ouest | jusqu''à 4 095 m | Mont Cameroun, chaîne du Mbam           |
| Bassin du Tchad                | 200 - 400 m     | Plaine basse, lac Tchad                 |
| Chaîne du Mandara              | montagnes       | Nord, hautes terres                     |

Le **mont Cameroun** (4 095 m) est le point culminant ; c''est un volcan encore actif. Les **sols volcaniques** de l''Ouest sont très fertiles et expliquent la forte densité de population dans cette région.

### 2.1 L''Adamaoua, « château d''eau »

Le plateau de l''Adamaoua est un **château d''eau** car de nombreux fleuves y prennent leur source : la Sanaga, la Bénoué, le Logone, la Vina. Il est propice à l''**élevage** bovin grâce à ses pâturages.

---

## 3. Le climat

Le Cameroun présente une grande variété climatique due à la latitude, à l''altitude et à la proximité de l''océan.

- **Climat équatorial** (sud et littoral) : chaud et humide toute l''année, pluies abondantes (plus de 1 500 mm/an), peu de variation saisonnière. Exemple : Douala, Kribi.
- **Climat tropical de transition** (Adamaoua, plateau sud) : deux saisons (sèche de novembre à mars, pluvieuse d''avril à octobre).
- **Climat soudano-sahélien** (nord) : saison sèche longue, précipitations plus faibles (500 à 1 000 mm/an), vent sec d''**harmattan**.
- **Climat montagnard** (Ouest, mont Cameroun) : températures fraîches, forte humidité sur les versants.

### 3.1 Exemple travaillé

**Question :** Explique pourquoi Douala reçoit davantage de pluies que Maroua.

**Réponse :** Douala est située sur la côte atlantique, en zone de climat équatorial, où l''humidité de l''océan apporte des pluies abondantes toute l''année. Maroua, au nord, est éloignée de l''océan, sous climat soudano-sahélien, avec une saison sèche longue et des pluies rares. La latitude et la distance à l''océan expliquent donc cette différence.

---

## 4. L''hydrographie

Les principaux fleuves du Cameroun sont :

- La **Sanaga** (900 km) : le plus long fleuve, équipé des barrages de Song Loulou et Edea pour l''hydroélectricité ;
- La **Bénoué** : affluent du Niger, navigable en saison des pluies ;
- Le **Wouri** : fleuve de Douala, important pour la navigation ;
- Le **Nyong**, le **Ntem**, le **Mbam**, le **Logone** et la **Vina** (affluents du lac Tchad).

Le **lac Tchad**, au nord, est partagé entre plusieurs pays. Il est vital pour la pêche, l''agriculture et l''élevage, mais il **s''assèche** régulièrement sous l''effet du climat et de la pression humaine.

### 4.1 Importance économique des fleuves

- **Hydroélectricité** : les barrages de la Sanaga fournissent une grande partie de l''électricité du pays ;
- **Navigation** : le Wouri et la Bénoué facilitent le transport ;
- **Irrigation** : l''eau sert aux cultures dans les zones sèches du Nord ;
- **Pêche** : source de protéines et d''emplois.

---

## 5. La végétation et les sols

La végétation suit le climat, du sud au nord :

1. **Forêt dense équatoriale** (sud, sud-est) : arbres de grande valeur (okoumé, ayous, sapelli), biodiversité riche ;
2. **Forêt claire et savane** (centre, plateau sud) : zone de transition ;
3. **Savane arborée et arbustive** (Adamaoua) : karité, néré, graminées ;
4. **Steppe et savane sahélienne** (nord) : végétation clairsemée, arbres épineux.

Les **sols** sont variés : sols **latéritiques** (riches en fer, rouges) au sud, sols **volcaniques fertiles** à l''Ouest, sols **alluviaux** dans les vallées. Les sols subissent l''**érosion** et la **latéritisation** en zone tropicale.

### 5.1 Problème travaillé

**Question :** Quelles sont les menaces sur les milieux naturels camerounais ?

**Réponse :** Les principales menaces sont la **déforestation** (exploitation du bois, agriculture sur brûlis), le **braconnage**, la **désertification** au nord et la pollution. Des solutions existent : parcs nationaux (Waza, Bénoué, Bouba Ndjida), reboisement et agriculture durable.

---

## 6. Erreurs à éviter

- Confondre les altitudes et localiser un relief au mauvais endroit ;
- Oublier que l''Adamaoua est un château d''eau ;
- Ne pas relier climat et végétation ;
- Confondre la Sanaga et le Wouri.

---

## 7. Exercices d''entraînement

**Exercice 1 :** Décris le relief du Cameroun du sud au nord en citant les altitudes.

**Exercice 2 :** Caractérise le climat équatorial et le climat soudano-sahélien, puis compare-les.

**Exercice 3 :** Explique le rôle économique des fleuves camerounais.

**Exercice 4 :** Réalise un schéma montrant la répartition de la végétation du sud au nord du Cameroun.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Histoire-Géographie Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Histoire-Géographie — La géographie humaine et économique du Cameroun
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '840432d7-8ebb-0094-2d87-b74f45561cae', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC — Histoire-Géographie — La géographie humaine et économique du Cameroun',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Histoire-Géographie — La géographie humaine et économique du Cameroun

**Niveau :** Troisième — BEPC
**Matière :** Histoire-Géographie

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Analyser la démographie et la répartition de la population ;
- Expliquer les problèmes démographiques (croissance, exode rural, urbanisation) ;
- Décrire les activités économiques (agriculture, élevage, pêche, industrie, services) ;
- Présenter les ressources, les échanges et les problèmes de développement.

---

## 1. La population camerounaise

### 1.1 Effectif et croissance

Le Cameroun compte environ **28 millions d''habitants** (2023). La population est **jeune** (près de la moitié a moins de 18 ans) et croît d''environ **2,6 % par an**, grâce à un fort taux de natalité.

### 1.2 Une répartition inégale

La densité moyenne est d''environ **50 habitants/km²**, mais elle est très inégale :

- **Forte densité** : régions de l''Ouest, du Littoral et du Centre (plus de 150 hab/km²) ;
- **Faible densité** : Est, Nord, Adamaoua, forêt du Sud-Est (moins de 15 hab/km²).

Cette inégalité s''explique par le relief, le climat, les sols, les activités économiques et les villes.

### 1.3 Exode rural et urbanisation

L''**exode rural** désigne le départ des populations des campagnes vers les villes. Il a pour causes la recherche d''emploi, de meilleurs services (santé, école) et de revenus. Les principales villes sont :

- **Yaoundé** : capitale politique et administrative ;
- **Douala** : capitale économique (port, aéroport, industries) ;
- **Garoua, Bafoussam, Maroua, Bamenda, Ngaoundéré** : grandes villes régionales.

L''urbanisation rapide entraîne des problèmes : logements insuffisants, chômage, insalubrité, infrastructures saturées.

---

## 2. Le secteur primaire

Le secteur primaire (agriculture, élevage, pêche, forêt, mines) emploie la majorité de la population.

### 2.1 L''agriculture

Deux grands types :

- **Cultures vivrières** (consommées localement) : manioc, maïs, mil, sorgho, igname, plantain, riz ;
- **Cultures d''exportation** : **cacao** (première culture), café, coton, banane, hévéa (caoutchouc), palmier à huile.

Le cacao est cultivé dans le Centre, le Sud et l''Ouest. Le coton domine dans le Nord. Les problèmes de l''agriculture : prix fluctuants, vieillissement des plantations, faible mécanisation, difficultés d''accès aux crédits.

### 2.2 L''élevage et la pêche

- **Élevage** : bovins dans l''Adamaoua et le Nord, caprins et ovins partout, élevage traditionnel et moderne ;
- **Pêche** : maritime (Douala, Kribi, Limbé) et continentale (fleuves, lac Tchad) ; insuffisante face aux besoins.

### 2.3 La forêt et les mines

- **Forêt** : exploitation du bois (okoumé, ayous, sapelli) dans le Sud et le Sud-Est ;
- **Mines** : **pétrole** (offshore, premier produit d''exportation), gaz, **bauxite** (Minim-Martap), **fer** (Mbalam), **or** (artisanal, Est), diamant.

---

## 3. Le secteur secondaire (l''industrie)

Les industries se concentrent surtout à **Douala** (agro-alimentaire, textile, aluminium, ciment) et autour de Yaoundé. Le Cameroun dispose d''une **usine d''aluminium** (ALUCAM) et de **raffineries**. Le développement industriel est limité par le coût de l''énergie, les infrastructures insuffisantes et la concurrence.

---

## 4. Le secteur tertiaire (services)

Il regroupe le commerce, les transports, les banques, l''éducation et la santé.

- **Transports** : routes (souvent en mauvais état), chemin de fer (Transcam), aéroports (Douala, Yaoundé), ports (Douala principal) ;
- **Commerce** : le **port de Douala** est la principale porte d''entrée et de sortie des marchandises ;
- **Échanges** : exportations (pétrole, cacao, café, coton, bois) et importations (machines, produits manufacturés, carburants).

### 4.1 Le commerce extérieur

Le Cameroun exporte surtout des **matières premières** et importe des **produits transformés**. Cette dépendance rend l''économie fragile face à la baisse des prix des matières premières.

---

## 5. Les problèmes de développement

Le Cameroun fait face à plusieurs défis :

- **Pauvreté** : une part importante de la population vit sous le seuil de pauvreté (environ 37 %) ;
- **Chômage** des jeunes ;
- **Corruption** et mauvaise gouvernance ;
- **Infrastructures** insuffisantes (routes, électricité, eau) ;
- **Éducation et santé** : taux de scolarisation et accès aux soins à améliorer ;
- **Dégradation de l''environnement** : déforestation, désertification.

### 5.1 Exemple travaillé

**Question :** Propose des solutions pour réduire l''exode rural.

**Réponse :** Pour freiner l''exode rural, il faut développer l''agriculture (crédits, matériel, prix rémunérateurs), améliorer les infrastructures rurales (routes, écoles, centres de santé) et créer des emplois et des services en milieu rural afin de rendre les campagnes plus attractives.

---

## 6. Vers l''émergence (Vision 2035)

La **Vision 2035** vise à faire du Cameroun un **pays émergent et démocratique** à l''horizon 2035. Elle repose sur la transformation des matières premières, le développement des infrastructures, l''amélioration du capital humain (éducation, santé) et l''industrialisation.

---

## 7. Erreurs à éviter

- Confondre Yaoundé (politique) et Douala (économique) ;
- Oublier que le pétrole est le premier produit d''exportation ;
- Ne pas distinguer cultures vivrières et cultures d''exportation ;
- Négliger la dimension humaine dans l''analyse économique.

---

## 8. Exercices d''entraînement

**Exercice 1 :** Explique la répartition inégale de la population au Cameroun.

**Exercice 2 :** Distingue les cultures vivrières et d''exportation et analyse leurs problèmes.

**Exercice 3 :** Présente les principaux produits d''exportation et les problèmes du commerce extérieur.

**Exercice 4 :** Analyse les problèmes de développement du Cameroun et propose des solutions.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Histoire-Géographie Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Histoire-Géographie — L'histoire du Cameroun : dates et figures
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6246331d-02b2-d988-e4f3-6284bb0e52f7', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'Fiche — BEPC — Histoire-Géographie — L''histoire du Cameroun : dates et figures',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Histoire-Géographie — L''histoire du Cameroun : dates et figures

**Niveau :** Troisième — BEPC
**Matière :** Histoire-Géographie

---

# Fiche de révision — Histoire du Cameroun

## Dates clés à connaître absolument

| Date             | Événement                                                        |
| ---------------- | ---------------------------------------------------------------- |
| 12 juillet 1884  | Protectorat allemand (traité germano-douala, Nachtigal)          |
| 1887-1933        | Règne du roi Njoya au Bamoun                                     |
| 1914             | Exécution de Manga Bell et Samba                                 |
| 1916-1919        | Chute des Allemands, occupation et partage                       |
| 1919             | Partage Cameroun français (4/5) / britannique (1/5), mandats SDN |
| 1948             | Fondation de l''UPC par Ruben Um Nyobé                            |
| 1955             | Interdiction de l''UPC, insurrection                              |
| 1er janvier 1960 | Indépendance du Cameroun français                                |
| 11 février 1961  | Plébiscite du Cameroun britannique                               |
| 1er octobre 1961 | Réunification, République fédérale                               |
| 20 mai 1972      | Référendum, État unitaire                                        |
| 1982             | Ahidjo cède le pouvoir à Paul Biya                               |

## Grandes figures

- **Njoya** : roi Bamoun, inventeur de l''écriture shümom.
- **Gustav Nachtigal** : signe le traité de protectorat.
- **Rudolf Duala Manga Bell** : résistant, pendu en 1914.
- **Martin-Paul Samba** : résistant Bulu, exécuté en 1914.
- **Ruben Um Nyobé** : fondateur de l''UPC, symbole de la lutte pour l''indépendance.
- **Ahmadou Ahidjo** : premier président (1960).
- **Paul Biya** : président depuis 1982.

## Points de méthode

- Distinguer **mandat** (après 1919), **colonie** et **protectorat** (1884).
- Savoir comparer assimilation (France) et indirect rule (Royaume-Uni).
- Retenir que le Sud du Cameroun britannique rejoignit le Cameroun, le Nord rejoignit le Nigeria.

## Avant de rendre

- Citer **des dates exactes** et **des noms précis**.
- Structurer la réponse (causes / déroulement / conséquences).
- Relier les faits à la terminologie du programme.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Histoire-Géographie Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Histoire-Géographie — Géographie physique du Cameroun
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '90ae7f24-a5df-fa03-0d8a-b28cc3609fc4', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'Fiche — BEPC — Histoire-Géographie — Géographie physique du Cameroun',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Histoire-Géographie — Géographie physique du Cameroun

**Niveau :** Troisième — BEPC
**Matière :** Histoire-Géographie

---

# Fiche de révision — Géographie physique du Cameroun

## Le relief (du sud au nord)

1. Plaine côtière (0-200 m) — mangrove, port de Douala.
2. Plateau sud-camerounais (600-1 000 m) — socle ancien, forêt.
3. Plateau de l''Adamaoua (1 000-2 000 m) — **château d''eau**.
4. Massifs volcaniques de l''Ouest — **mont Cameroun (4 095 m)**.
5. Bassin du lac Tchad (nord) — plaine basse.
6. Chaîne du Mandara — hautes terres du nord.

Le mont Cameroun est un **volcan actif** ; les sols volcaniques de l''Ouest sont très fertiles.

## Les climats

| Zone                   | Climat                 | Pluies         | Saisons                 |
| ---------------------- | ---------------------- | -------------- | ----------------------- |
| Sud / littoral         | Équatorial             | > 1 500 mm/an  | Toute l''année humide    |
| Adamaoua / plateau sud | Tropical de transition | 1 000-1 500 mm | 2 saisons               |
| Nord                   | Soudano-sahélien       | 500-1 000 mm   | Sèche longue, harmattan |
| Ouest / montagne       | Montagnard             | variable       | Frais, humide           |

## L''hydrographie

- **Sanaga** (900 km) : barrages de Song Loulou et Edea (hydroélectricité).
- **Wouri** : fleuve de Douala (navigation).
- **Bénoué** : affluent du Niger.
- **Nyong, Ntem, Mbam, Logone, Vina** : autres fleuves.
- **Lac Tchad** : pêche, agriculture, élevage ; en voie d''assèchement.

## La végétation

- Forêt dense équatoriale (sud, sud-est) : okoumé, ayous, sapelli.
- Forêt claire / savane (centre).
- Savane arborée et arbustive (Adamaoua) : karité, néré.
- Steppe sahélienne (nord).

## Pièges à éviter

- Confondre Sanaga et Wouri.
- Oublier que l''Adamaoua est un « château d''eau ».
- Ne pas relier climat et végétation (la forêt suit le climat équatorial).
- Oublier les altitudes exactes.

## Astuce

Pour toute question de géographie physique, réponds toujours en structurant : **localisation → description → importance**.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Histoire-Géographie Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Histoire-Géographie — Géographie humaine et économique du Cameroun
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '63c7d4dd-bed2-1250-572b-4059218a931f', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'Fiche — BEPC — Histoire-Géographie — Géographie humaine et économique du Cameroun',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Histoire-Géographie — Géographie humaine et économique du Cameroun

**Niveau :** Troisième — BEPC
**Matière :** Histoire-Géographie

---

# Fiche de révision — Géographie humaine et économique du Cameroun

## La population

- Environ **28 millions d''habitants** (2023).
- Croissance : ~**2,6 % par an**, population **jeune**.
- Densité moyenne ~50 hab/km² mais très inégale :
  - Forte : Ouest, Littoral, Centre (> 150 hab/km²).
  - Faible : Est, Nord, Adamaoua (< 15 hab/km²).

## Les villes principales

| Ville               | Rôle                                             |
| ------------------- | ------------------------------------------------ |
| Yaoundé             | Capitale politique et administrative             |
| Douala              | Capitale économique (port, aéroport, industries) |
| Garoua, Maroua      | Grandes villes du Nord                           |
| Bafoussam           | Ouest                                            |
| Bamenda, Ngaoundéré | Nord-Ouest, Adamaoua                             |

## Les activités économiques

- **Cultures vivrières** : manioc, maïs, mil, sorgho, igname, plantain.
- **Cultures d''exportation** : **cacao** (1re), café, coton, banane, hévéa, palmier à huile.
- **Élevage** : bovins (Adamaoua, Nord).
- **Pêche** : maritime (Douala, Kribi) et continentale (lac Tchad).
- **Mines** : **pétrole** (1er produit d''exportation), gaz, bauxite, fer, or, diamant.
- **Industries** : concentrées à Douala (agro-alimentaire, aluminium, ciment).

## Le commerce

- **Exportations** : pétrole, cacao, café, coton, bois.
- **Importations** : machines, produits manufacturés, carburants.
- **Port de Douala** : principale porte commerciale.

## Problèmes de développement

- Pauvreté (~37 %), chômage des jeunes.
- Corruption, infrastructures insuffisantes.
- Faible accès à l''éducation et à la santé.
- Déforestation, désertification.

## Objectif

La **Vision 2035** veut faire du Cameroun un pays **émergent** : transformation des matières premières, infrastructures, industrialisation.

## Conseils d''examen

- Distinguer toujours **vivrier / exportation** et **politique / économique**.
- Citer des **chiffres et des villes** pour crédibiliser.
- Pour chaque problème, proposer une **solution**.
- Bien répartir le temps entre les 4 sections de l''épreuve 2.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Histoire-Géographie Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Update MCQ 1 for Histoire-Géographie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE — ÉPREUVE 1 (QCM) — SÉRIE 1

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Histoire-Géographie
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Par quel traité l''Allemagne a-t-elle établi son protectorat sur le Cameroun en 1884 ?

A. Le traité de Versailles, signé en 1919
B. Le traité germano-douala, signé le 12 juillet 1884 avec les rois Bell, Akwa et Deido
C. Le traité de Berlin, signé en 1885
D. Le traité d''Yaoundé, signé en 1960

---

**Question 2.** Quel roi Bamoun est célèbre pour avoir inventé une écriture (le shümom) et créé un musée ?

A. Rudolf Duala Manga Bell
B. Martin-Paul Samba
C. Njoya
D. Ibrahim Ahidjo

---

**Question 3.** Après la Première Guerre mondiale, le Cameroun allemand a été partagé entre la France et le Royaume-Uni sous forme de :

A. Colonies de peuplement
B. Protectorats indépendants
C. Départements français
D. Mandats de la Société des Nations (SDN)

---

**Question 4.** Quel parti, fondé en 1948 et dirigé par Ruben Um Nyobé, réclamait l''indépendance immédiate du Cameroun ?

A. Le Rassemblement démocratique africain (RDA)
B. Le Kamerun National Democratic Party (KNDP)
C. L''Union des Populations du Cameroun (UPC)
D. Le Parti démocratique camerounais (PDC)

---

**Question 5.** Le Cameroun français accède à l''indépendance le :

A. 1er octobre 1961
B. 20 mai 1972
C. 11 février 1961
D. 1er janvier 1960

---

**Question 6.** Quel est le point culminant du Cameroun ?

A. Le mont Cameroun (4 095 m)
B. Le mont Koupé
C. Le plateau de l''Adamaoua
D. Le massif du Mandara

---

**Question 7.** Le fleuve sur lequel est construit le barrage hydroélectrique de Song Loulou est :

A. Le Wouri
B. La Sanaga
C. Le Logone
D. La Bénoué

---

**Question 8.** Quel climat caractérise l''extrême sud du Cameroun (région de Kribi, Campo) ?

A. Le climat tropical soudanien à deux saisons
B. Le climat sahélien très sec
C. Le climat équatorial, chaud et humide toute l''année
D. Le climat montagnard tempéré

---

**Question 9.** Quelle est la première culture d''exportation du Cameroun ?

A. Le café
B. Le coton
C. La banane
D. Le cacao

---

**Question 10.** Quelle ville est considérée comme la capitale économique du Cameroun (grand port, industries) ?

A. Yaoundé
B. Douala
C. Garoua
D. Bafoussam

---

## CORRIGÉ

1. B
2. C
3. D
4. C
5. D
6. A
7. B
8. C
9. D
10. B
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '677b5b9a-e86a-4481-8e43-af850e54798f';


-- Update MCQ 2 for Histoire-Géographie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Histoire-Géographie
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Le plébiscite du 11 février 1961, organisé dans le Cameroun sous administration britannique, a abouti à :

A. La réunification du Cameroun méridional avec la République du Cameroun
B. L''indépendance totale de toute la partie britannique
C. L''intégration de la totalité du territoire au Nigeria
D. Le maintien sous tutelle britannique

---

**Question 2.** La réunification du Cameroun a été proclamée le :

A. 1er janvier 1960
B. 1er octobre 1961
C. 20 mai 1972
D. 12 juillet 1884

---

**Question 3.** Par quelle réforme la France a-t-elle accordé l''autonomie interne au Cameroun en 1956-1958 ?

A. Le code de l''indigénat
B. La loi-cadre Defferre
C. Le traité de Berlin
D. La Charte de l''Atlantique

---

**Question 4.** Quel est le fleuve qui sert de frontière naturelle entre le Cameroun et le Nigeria dans la région du lac Tchad ?

A. La Sanaga
B. Le Nyong
C. La Bénoué
D. Le Logone

---

**Question 5.** Le lac Tchad se situe dans quelle partie du Cameroun ?

A. L''Extrême-Nord
B. Le Sud
C. L''Ouest
D. Le Littoral

---

**Question 6.** Lequel de ces fleuves traverse la ville de Douala ?

A. La Sanaga
B. Le Wouri
C. Le Logone
D. Le Mbam

---

**Question 7.** La forêt dense équatoriale couvre principalement :

A. La région de l''Extrême-Nord
B. Le plateau de l''Adamaoua
C. Le Sud et le Sud-Est du Cameroun
D. La plaine du lac Tchad

---

**Question 8.** Quelle est la principale cause de la Première Guerre mondiale (1914-1918) ?

A. Les rivalités coloniales et nationalistes en Europe, déclenchées par l''attentat de Sarajevo
B. La crise économique de 1929
C. La montée du nazisme en Allemagne
D. Le partage de l''Afrique à la conférence de Berlin

---

**Question 9.** La Société des Nations (SDN), créée en 1919, avait pour but principal :

A. De maintenir la paix mondiale
B. De coloniser l''Afrique
C. De développer le commerce international
D. De créer la Communauté économique européenne

---

**Question 10.** Quel pays a envahi la Pologne en septembre 1939, déclenchant la Deuxième Guerre mondiale ?

A. La France
B. L''Union soviétique
C. L''Allemagne nazie
D. Le Japon

---

## CORRIGÉ

1. A
2. B
3. B
4. D
5. A
6. B
7. C
8. A
9. A
10. C
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '51ac473d-a6d8-176e-31e1-b59622712646';


-- Update MCQ 3 for Histoire-Géographie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE — ÉPREUVE 1 (QCM) — SÉRIE 3

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Histoire-Géographie
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** La traite négrière transatlantique consistait à :

A. Déporter des millions d''Africains vers les Amériques comme esclaves
B. Échanger du sel contre de l''or au Sahara
C. Vendre des produits agricoles en Europe
D. Recruter des travailleurs volontaires pour les plantations

---

**Question 2.** Quel système d''administration les Britanniques ont-ils appliqué dans leur partie du Cameroun ?

A. L''assimilation directe
B. L''indirect rule (administration indirecte par les chefs)
C. Le code de l''indigénat
D. La colonisation de peuplement

---

**Question 3.** Rudolf Duala Manga Bell, pendu en 1914, a protesté contre :

A. La spoliation des terres douala par les Allemands
B. Le travail forcé dans les plantations françaises
C. L''exploitation du pétrole offshore
D. La construction du barrage de Song Loulou

---

**Question 4.** Le référendum du 20 mai 1972 a conduit au Cameroun à :

A. L''indépendance nationale
B. La réunification
C. La création d''un État unitaire (fin du fédéralisme)
D. La mise en place d''un État fédéral

---

**Question 5.** La savane arbustive, végétation de transition, se rencontre dans quelle zone du Cameroun ?

A. Le Sud forestier
B. Le plateau de l''Adamaoua
C. La plaine côtière du littoral
D. Les hautes montagnes de l''Ouest

---

**Question 6.** Quel est le principal produit minier exporté par le Cameroun ?

A. Le fer de Mbalam
B. La bauxite de Minim-Martap
C. Le pétrole brut
D. Le diamant de Mobilong

---

**Question 7.** La croissance de la population camerounaise est d''environ :

A. 0,5 % par an
B. 2,6 % par an
C. 8 % par an
D. 15 % par an

---

**Question 8.** Quelle est la cause de la montée du fascisme et du nazisme en Europe dans les années 1930 ?

A. La prospérité économique de la période
B. La crise économique de 1929 et le mécontentement social
C. La victoire de la Première Guerre mondiale
D. Le développement des colonies

---

**Question 9.** L''ONU, créée en 1945, a remplacé :

A. La Société des Nations (SDN)
B. La CEE
C. L''OTAN
D. La conférence de Berlin

---

**Question 10.** La décolonisation massive de l''Afrique, avec l''indépendance de nombreux pays, s''est produite principalement dans les années :

A. 1880-1890
B. 1914-1918
C. 1945-1949
D. 1960 (les « années 1960 »)

---

## CORRIGÉ

1. A
2. B
3. A
4. C
5. B
6. C
7. B
8. B
9. A
10. D
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '1ce65546-a147-3fb0-d08c-d765a71604de';


-- Update set 4 for Histoire-Géographie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE — ÉPREUVE 2 — SÉRIE 4

## Épreuve de rédaction

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Histoire-Géographie
**Durée :** 2 heures
**Coefficient :** 2

**Consignes générales :**

- L''épreuve comporte 4 sections et 20 exercices. Chaque exercice vaut 5 points.
- Traite toutes les questions de manière claire, organisée et complète.
- Utilise la terminologie et la présentation en vigueur au BEPC camerounais.
- Fais des phrases complètes et justifie tes réponses par des faits et des dates.
- Un barème indicatif est proposé pour chaque question (sous-questions entre parenthèses).

---

## SECTION 1 : HISTOIRE DU CAMEROUN

**Exercice 1 — La période précoloniale (5 points)**
1.1. (2 pts) Cite trois royaumes ou chefferies traditionnelles du Cameroun avant la colonisation, en précisant leur région.
1.2. (3 pts) Décris l''organisation politique et sociale du royaume Bamoun sous le règne du roi Njoya.

**Exercice 2 — La colonisation allemande (5 points)**
2.1. (2 pts) Date et circonstances de l''établissement du protectorat allemand en 1884.
2.2. (3 pts) Montre comment l''Allemagne a mis en valeur le « Kamerun » (administration, économie, infrastructures) et quelles en ont été les conséquences pour les populations.

**Exercice 3 — Les résistances (5 points)**
3.1. (2 pts) Présente la résistance de Rudolf Duala Manga Bell face aux Allemands.
3.2. (3 pts) Explique la résistance de Martin-Paul Samba et tire le bilan de ces deux combats.

**Exercice 4 — Le mandat français et britannique (5 points)**
4.1. (2 pts) Explique comment le Cameroun a été partagé entre la France et le Royaume-Uni après la Première Guerre mondiale.
4.2. (3 pts) Compare l''administration française (assimilation) et britannique (indirect rule) au Cameroun.

**Exercice 5 — L''indépendance et la réunification (5 points)**
5.1. (2 pts) Raconte l''accession du Cameroun français à l''indépendance le 1er janvier 1960.
5.2. (3 pts) Explique le processus de réunification de 1961 et la création de la République fédérale.

---

## SECTION 2 : HISTOIRE GÉNÉRALE

**Exercice 6 — La Première Guerre mondiale (5 points)**
6.1. (2 pts) Énonce les causes profondes et la cause immédiate de la Première Guerre mondiale.
6.2. (3 pts) Présente les conséquences humaines, politiques et territoriales du conflit (1914-1918).

**Exercice 7 — La Deuxième Guerre mondiale (5 points)**
7.1. (2 pts) Explique les causes de la Deuxième Guerre mondiale (1939-1945).
7.2. (3 pts) Décris les grandes phases du conflit et ses conséquences (bilan humain, création de l''ONU).

**Exercice 8 — La traite négrière (5 points)**
8.1. (2 pts) Définis la traite négrière transatlantique et explique son déroulement (le « commerce triangulaire »).
8.2. (3 pts) Analyse les conséquences démographiques, économiques et humaines de la traite sur l''Afrique.

**Exercice 9 — La décolonisation de l''Afrique (5 points)**
9.1. (2 pts) Explique les causes de la décolonisation après 1945.
9.2. (3 pts) Décris les deux grandes voies de décolonisation (négociée et violente) en donnant des exemples africains.

**Exercice 10 — La création de l''ONU (5 points)**
10.1. (2 pts) Précise la date et les circonstances de la création de l''ONU.
10.2. (3 pts) Présente les objectifs et les principaux organes de l''ONU.

---

## SECTION 3 : GÉOGRAPHIE PHYSIQUE DU CAMEROUN

**Exercice 11 — Le relief (5 points)**
11.1. (2 pts) Décris les grandes unités de relief du Cameroun du sud au nord.
11.2. (3 pts) Explique l''importance du massif volcanique de l''Ouest et du mont Cameroun.

**Exercice 12 — Le climat (5 points)**
12.1. (2 pts) Caractérise le climat équatorial du sud du Cameroun.
12.2. (3 pts) Compare le climat tropical du nord au climat équatorial (températures, pluies, saisons).

**Exercice 13 — L''hydrographie (5 points)**
13.1. (2 pts) Cite et localise les principaux fleuves du Cameroun.
13.2. (3 pts) Explique l''importance économique des fleuves (navigation, hydroélectricité, irrigation).

**Exercice 14 — La végétation et les sols (5 points)**
14.1. (2 pts) Décris la répartition de la végétation du sud au nord du Cameroun.
14.2. (3 pts) Montre les liens entre climat, sols et végétation.

**Exercice 15 — Les ressources naturelles (5 points)**
15.1. (2 pts) Énumère les principales ressources minières et énergétiques du Cameroun.
15.2. (3 pts) Analyse les conditions et les limites de l''exploitation de ces ressources.

---

## SECTION 4 : GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE

**Exercice 16 — La population (5 points)**
16.1. (2 pts) Décris l''effectif, la densité et le rythme de croissance de la population camerounaise.
16.2. (3 pts) Explique la répartition inégale de la population sur le territoire et ses causes.

**Exercice 17 — L''agriculture (5 points)**
17.1. (2 pts) Distingue les cultures vivrières et les cultures d''exportation en donnant des exemples.
17.2. (3 pts) Analyse les problèmes de l''agriculture camerounaise et propose des solutions.

**Exercice 18 — Les industries et les mines (5 points)**
18.1. (2 pts) Localise les principales zones industrielles du Cameroun.
18.2. (3 pts) Explique le rôle de l''industrie et les obstacles à son développement.

**Exercice 19 — Les transports et le commerce (5 points)**
19.1. (2 pts) Présente les différents moyens de transport au Cameroun.
19.2. (3 pts) Décris les principaux produits d''exportation et d''importation et le rôle du port de Douala.

**Exercice 20 — Les problèmes de développement (5 points)**
20.1. (2 pts) Cite les principaux problèmes de développement du Cameroun.
20.2. (3 pts) Propose des solutions pour améliorer le développement économique et social du pays.

---

## BARÈME RÉCAPITULATIF

| Section                    | Exercices        | Points  |
| -------------------------- | ---------------- | ------- |
| Histoire du Cameroun       | 1 à 5            | 25      |
| Histoire générale          | 6 à 10           | 25      |
| Géographie physique        | 11 à 15          | 25      |
| Géographie humaine/économ. | 16 à 20          | 25      |
| **Total**                  | **20 exercices** | **100** |
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '3ca41b9f-abe0-e20c-e602-8830134898e8';


-- Update set 5 for Histoire-Géographie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE — ÉPREUVE 2 — SÉRIE 5

## Épreuve de rédaction

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Histoire-Géographie
**Durée :** 2 heures
**Coefficient :** 2

**Consignes générales :**

- L''épreuve comporte 4 sections et 20 exercices. Chaque exercice vaut 5 points.
- Traite toutes les questions de manière claire, organisée et complète.
- Utilise la terminologie et la présentation en vigueur au BEPC camerounais.
- Fais des phrases complètes et justifie tes réponses par des faits et des dates.
- Un barème indicatif est proposé pour chaque question (sous-questions entre parenthèses).

---

## SECTION 1 : HISTOIRE DU CAMEROUN

**Exercice 1 — Le commerce précolonial (5 points)**
1.1. (2 pts) Explique le rôle du commerce transsaharien dans le nord du Cameroun.
1.2. (3 pts) Analyse l''impact de la traite atlantique et du commerce légitime sur la côte camerounaise (huile de palme, ivoire, cacao).

**Exercice 2 — Le peuplement du Cameroun (5 points)**
2.1. (2 pts) Cite les grands groupes de populations (soudanaises, bantoues, semi-bantoues) et leurs aires.
2.2. (3 pts) Explique les grandes migrations qui ont façonné le peuplement du Cameroun.

**Exercice 3 — L''émergence du nationalisme (5 points)**
3.1. (2 pts) Explique les causes de la naissance des partis politiques et du nationalisme au Cameroun.
3.2. (3 pts) Présente le rôle de l''UPC et de Ruben Um Nyobé dans la lutte pour l''indépendance.

**Exercice 4 — La guerre d''indépendance (5 points)**
4.1. (2 pts) Explique les causes de l''insurrection de 1955.
4.2. (3 pts) Décris le déroulement de la « guerre des maquis » et ses conséquences (bilan humain, répression).

**Exercice 5 — De l''État fédéral à l''État unitaire (5 points)**
5.1. (2 pts) Présente les institutions de la République fédérale (1961-1972).
5.2. (3 pts) Explique les raisons et les conséquences du passage à l''État unitaire (référendum de 1972).

---

## SECTION 2 : HISTOIRE GÉNÉRALE

**Exercice 6 — L''expansion coloniale européenne (5 points)**
6.1. (2 pts) Explique les causes de la colonisation de l''Afrique au XIXe siècle.
6.2. (3 pts) Décris la conférence de Berlin (1884-1885) et ses conséquences pour l''Afrique.

**Exercice 7 — La Première Guerre mondiale : le front africain (5 points)**
7.1. (2 pts) Explique pourquoi les colonies ont été entraînées dans la Première Guerre mondiale.
7.2. (3 pts) Analyse les conséquences de la guerre pour les soldats africains et les colonies.

**Exercice 8 — La crise de 1929 (5 points)**
8.1. (2 pts) Explique les causes de la crise économique mondiale de 1929.
8.2. (3 pts) Analyse les conséquences de cette crise sur les pays d''Afrique et du monde.

**Exercice 9 — La montée des totalitarismes (5 points)**
9.1. (2 pts) Définis le fascisme et le nazisme.
9.2. (3 pts) Explique comment ces régimes ont conduit à la Deuxième Guerre mondiale.

**Exercice 10 — Les organisations internationales (5 points)**
10.1. (2 pts) Compare la SDN et l''ONU.
10.2. (3 pts) Présente le rôle de l''ONU dans le maintien de la paix après 1945 (exemples de missions).

---

## SECTION 3 : GÉOGRAPHIE PHYSIQUE DU CAMEROUN

**Exercice 11 — Le relief montagnard de l''Ouest (5 points)**
11.1. (2 pts) Décris le relief accidenté des hauts plateaux de l''Ouest (Bamiléké, Bamoun).
11.2. (3 pts) Explique les conséquences de ce relief sur l''occupation humaine et les activités agricoles.

**Exercice 12 — Le climat de l''Adamaoua et du Nord (5 points)**
12.1. (2 pts) Caractérise le climat de l''Adamaoua (zone de transition).
12.2. (3 pts) Décris le climat soudano-sahélien du nord et ses particularités (saison sèche longue, harmattan).

**Exercice 13 — Le lac Tchad (5 points)**
13.1. (2 pts) Localise et décris le lac Tchad.
13.2. (3 pts) Analyse l''importance économique du lac et les problèmes de son assèchement.

**Exercice 14 — Le mont Cameroun et le volcanisme (5 points)**
14.1. (2 pts) Présente les caractéristiques du mont Cameroun.
14.2. (3 pts) Explique l''importance du volcanisme (sols volcaniques fertiles, risques) pour la région.

**Exercice 15 — La façade maritime et les côtes (5 points)**
15.1. (2 pts) Décris la côte camerounaise et ses principaux ports.
15.2. (3 pts) Analyse le rôle de la façade atlantique dans l''économie (pêche, commerce, tourisme).

---

## SECTION 4 : GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE

**Exercice 16 — L''exode rural (5 points)**
16.1. (2 pts) Explique les causes de l''exode rural au Cameroun.
16.2. (3 pts) Analyse les conséquences de l''exode rural sur les campagnes et les villes.

**Exercice 17 — L''urbanisation (5 points)**
17.1. (2 pts) Présente les principales villes du Cameroun et leurs fonctions.
17.2. (3 pts) Analyse les problèmes posés par la croissance rapide des villes (Douala, Yaoundé).

**Exercice 18 — L''élevage et la pêche (5 points)**
18.1. (2 pts) Distingue les zones d''élevage du Cameroun (élevage traditionnel, élevage moderne).
18.2. (3 pts) Analyse l''importance de la pêche et les problèmes de la pêche maritime et continentale.

**Exercice 19 — L''énergie (5 points)**
19.1. (2 pts) Cite les sources d''énergie du Cameroun (hydroélectricité, gaz, pétrole, bois).
19.2. (3 pts) Analyse les problèmes de l''approvisionnement et de la distribution de l''énergie électrique.

**Exercice 20 — Le tourisme (5 points)**
20.1. (2 pts) Présente les atouts touristiques du Cameroun (« Afrique en miniature »).
20.2. (3 pts) Explique les obstacles au développement du tourisme et propose des solutions.

---

## BARÈME RÉCAPITULATIF

| Section                    | Exercices        | Points  |
| -------------------------- | ---------------- | ------- |
| Histoire du Cameroun       | 1 à 5            | 25      |
| Histoire générale          | 6 à 10           | 25      |
| Géographie physique        | 11 à 15          | 25      |
| Géographie humaine/économ. | 16 à 20          | 25      |
| **Total**                  | **20 exercices** | **100** |
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '14d6c4b6-57d3-25a7-a62a-882cbc343010';


-- Update set 6 for Histoire-Géographie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE — ÉPREUVE 2 — SÉRIE 6

## Épreuve de rédaction

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Histoire-Géographie
**Durée :** 2 heures
**Coefficient :** 2

**Consignes générales :**

- L''épreuve comporte 4 sections et 20 exercices. Chaque exercice vaut 5 points.
- Traite toutes les questions de manière claire, organisée et complète.
- Utilise la terminologie et la présentation en vigueur au BEPC camerounais.
- Fais des phrases complètes et justifie tes réponses par des faits et des dates.
- Un barème indicatif est proposé pour chaque question (sous-questions entre parenthèses).

---

## SECTION 1 : HISTOIRE DU CAMEROUN

**Exercice 1 — Les grands empires et royaumes du Nord (5 points)**
1.1. (2 pts) Présente les royaumes et lamidats du nord du Cameroun (Rey-Bouba, Sokoto, etc.).
1.2. (3 pts) Explique l''organisation politique et sociale d''un lamidat sous la domination peule.

**Exercice 2 — La traite interne et le peuplement de l''Ouest (5 points)**
2.1. (2 pts) Explique les migrations bamiléké et bamoun dans l''Ouest camerounais.
2.2. (3 pts) Décris l''organisation socio-économique des chefferies bamiléké avant la colonisation.

**Exercice 3 — L''exploitation économique allemande (5 points)**
3.1. (2 pts) Présente les grandes plantations créées par les Allemands au Cameroun.
3.2. (3 pts) Analyse le rôle du travail forcé et des chemins de fer dans la mise en valeur du territoire.

**Exercice 4 — La partition de 1916-1919 (5 points)**
4.1. (2 pts) Explique comment les Alliés ont occupé et partagé le Cameroun pendant et après la Première Guerre mondiale.
4.2. (3 pts) Analyse les conséquences du partage pour les populations et le territoire camerounais.

**Exercice 5 — Le Cameroun de 1960 à nos jours (5 points)**
5.1. (2 pts) Décris l''évolution politique du Cameroun sous Ahmadou Ahidjo (1960-1982).
5.2. (3 pts) Explique les changements politiques et économiques depuis 1982 (Paul Biya, multipartisme, décentralisation).

---

## SECTION 2 : HISTOIRE GÉNÉRALE

**Exercice 6 — Les causes profondes de la Première Guerre mondiale (5 points)**
6.1. (2 pts) Explique les rivalités économiques et coloniales entre puissances européennes.
6.2. (3 pts) Analyse le rôle des alliances (Triple-Entente, Triple-Alliance) et du nationalisme dans le déclenchement du conflit.

**Exercice 7 — Les conséquences de la Première Guerre mondiale (5 points)**
7.1. (2 pts) Présente le bilan humain et matériel de la guerre.
7.2. (3 pts) Explique les conséquences politiques (disparition des empires, traité de Versailles) et la création de la SDN.

**Exercice 8 — Les causes de la Deuxième Guerre mondiale (5 points)**
8.1. (2 pts) Explique le rôle du traité de Versailles et de la crise de 1929 dans la montée du nazisme.
8.2. (3 pts) Analyse la politique d''expansion d''Hitler (remilitarisation, Anschluss, Munich) jusqu''à l''invasion de la Pologne.

**Exercice 9 — Les grandes phases de la Deuxième Guerre mondiale (5 points)**
9.1. (2 pts) Décris les victoires de l''Axe (1939-1942).
9.2. (3 pts) Explique le retournement de la guerre (1942-1945) et la capitulation de l''Allemagne et du Japon.

**Exercice 10 — Le bilan de la Deuxième Guerre mondiale (5 points)**
10.1. (2 pts) Présente le bilan humain et matériel de la guerre.
10.2. (3 pts) Explique les conséquences géopolitiques : création de l''ONU, guerre froide, décolonisation.

---

## SECTION 3 : GÉOGRAPHIE PHYSIQUE DU CAMEROUN

**Exercice 11 — Les grands ensembles de relief (5 points)**
11.1. (2 pts) Représente et décris le relief du Cameroun à l''aide d''un schéma nord-sud.
11.2. (3 pts) Explique la formation du relief camerounais (socle, volcanisme, plissements).

**Exercice 12 — Les régions climatiques (5 points)**
12.1. (2 pts) Décris les quatre grandes zones climatiques du Cameroun.
12.2. (3 pts) Explique les facteurs qui influencent le climat (latitude, altitude, relief, océan).

**Exercice 13 — Le régime des fleuves (5 points)**
13.1. (2 pts) Explique les variations du débit des fleuves camerounais au cours de l''année.
13.2. (3 pts) Analyse l''importance des fleuves pour l''agriculture irriguée et la production d''hydroélectricité.

**Exercice 14 — Les sols du Cameroun (5 points)**
14.1. (2 pts) Décris les principaux types de sols du Cameroun.
14.2. (3 pts) Analyse les problèmes de dégradation des sols (érosion, latéritisation) et les solutions.

**Exercice 15 — Le climat montagnard (5 points)**
15.1. (2 pts) Caractérise le climat des hautes terres de l''Ouest et de l''Adamaoua.
15.2. (3 pts) Explique l''importance du climat montagnard pour les cultures et le peuplement.

---

## SECTION 4 : GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE

**Exercice 16 — La croissance démographique (5 points)**
16.1. (2 pts) Analyse le taux de natalité, de mortalité et de croissance naturelle au Cameroun.
16.2. (3 pts) Explique les conséquences d''une croissance démographique rapide sur le développement.

**Exercice 17 — Les cultures d''exportation (5 points)**
17.1. (2 pts) Présente les grandes cultures d''exportation et leurs régions de production.
17.2. (3 pts) Analyse l''importance et les problèmes des cultures de rente (fluctuation des prix, vieillissement des plantations).

**Exercice 18 — L''industrie camerounaise (5 points)**
18.1. (2 pts) Décris les principaux secteurs industriels (agro-alimentaire, textile, aluminium, ciment).
18.2. (3 pts) Explique les conditions et les obstacles du développement industriel au Cameroun.

**Exercice 19 — Le commerce extérieur (5 points)**
19.1. (2 pts) Présente les principaux partenaires commerciaux du Cameroun.
19.2. (3 pts) Analyse la balance commerciale du Cameroun et les problèmes liés à l''exportation des matières premières.

**Exercice 20 — Le développement durable (5 points)**
20.1. (2 pts) Définis le développement durable et ses trois piliers.
20.2. (3 pts) Propose des actions pour concilier développement économique et protection de l''environnement au Cameroun.

---

## BARÈME RÉCAPITULATIF

| Section                    | Exercices        | Points  |
| -------------------------- | ---------------- | ------- |
| Histoire du Cameroun       | 1 à 5            | 25      |
| Histoire générale          | 6 à 10           | 25      |
| Géographie physique        | 11 à 15          | 25      |
| Géographie humaine/économ. | 16 à 20          | 25      |
| **Total**                  | **20 exercices** | **100** |
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'e541a62c-6704-e6ed-a237-e5e6189c3f8f';


-- Update set 7 for Histoire-Géographie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE — ÉPREUVE 2 — SÉRIE 7

## Épreuve de rédaction

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Histoire-Géographie
**Durée :** 2 heures
**Coefficient :** 2

**Consignes générales :**

- L''épreuve comporte 4 sections et 20 exercices. Chaque exercice vaut 5 points.
- Traite toutes les questions de manière claire, organisée et complète.
- Utilise la terminologie et la présentation en vigueur au BEPC camerounais.
- Fais des phrases complètes et justifie tes réponses par des faits et des dates.
- Un barème indicatif est proposé pour chaque question (sous-questions entre parenthèses).

---

## SECTION 1 : HISTOIRE DU CAMEROUN

**Exercice 1 — La découverte et l''arrivée des Européens (5 points)**
1.1. (2 pts) Explique les premières relations entre les Européens (Portugais, Espagnols) et la côte camerounaise.
1.2. (3 pts) Analyse l''évolution du commerce côtier (traite atlantique, puis commerce légitime) jusqu''au XIXe siècle.

**Exercice 2 — La mise sous protectorat allemand (5 points)**
2.1. (2 pts) Explique les raisons de la colonisation du Cameroun par l''Allemagne.
2.2. (3 pts) Décris les étapes de l''occupation et de la conquête du territoire par les Allemands.

**Exercice 3 — Le développement économique sous le mandat (5 points)**
3.1. (2 pts) Compare la politique agricole française et britannique dans leurs mandats.
3.2. (3 pts) Explique le rôle des ports, routes et villes dans l''économie coloniale du Cameroun.

**Exercice 4 — Les partis politiques et l''évolution politique (5 points)**
4.1. (2 pts) Présente les principaux partis politiques camerounais de la période coloniale.
4.2. (3 pts) Analyse la rivalité entre l''UPC et le gouvernement camerounais dans les années 1950.

**Exercice 5 — La place du Cameroun dans le monde (5 points)**
5.1. (2 pts) Présente les principales organisations internationales auxquelles le Cameroun adhère.
5.2. (3 pts) Analyse le rôle du Cameroun dans l''Afrique centrale (CEMAC, CEEAC) et au sein de la Francophonie.

---

## SECTION 2 : HISTOIRE GÉNÉRALE

**Exercice 6 — La colonisation : causes et formes (5 points)**
6.1. (2 pts) Explique les causes économiques, politiques et religieuses de la colonisation.
6.2. (3 pts) Décris les différentes formes d''administration coloniale (directe, indirecte, assimilation).

**Exercice 7 — Les conséquences de la colonisation (5 points)**
7.1. (2 pts) Présente les conséquences économiques et sociales de la colonisation.
7.2. (3 pts) Analyse les conséquences politiques et culturelles et les débuts de la contestation coloniale.

**Exercice 8 — La traite négrière et ses abolitions (5 points)**
8.1. (2 pts) Explique les étapes du « commerce triangulaire ».
8.2. (3 pts) Présente le mouvement abolitionniste et l''abolition de la traite et de l''esclavage.

**Exercice 9 — La guerre froide (5 points)**
9.1. (2 pts) Explique les causes de la guerre froide après 1945.
9.2. (3 pts) Décris les grandes étapes de la guerre froide (blocus de Berlin, crise de Cuba, détente) jusqu''à sa fin.

**Exercice 10 — L''Afrique indépendante (5 points)**
10.1. (2 pts) Analyse les difficultés des jeunes États africains après l''indépendance.
10.2. (3 pts) Explique les espoirs et les réalisations de l''unité africaine (OUA puis Union africaine).

---

## SECTION 3 : GÉOGRAPHIE PHYSIQUE DU CAMEROUN

**Exercice 11 — La position et les frontières du Cameroun (5 points)**
11.1. (2 pts) Décris la position géographique du Cameroun (coordonnées, littoral, frontières).
11.2. (3 pts) Explique pourquoi le Cameroun est appelé « l''Afrique en miniature ».

**Exercice 12 — Le plateau de l''Adamaoua (5 points)**
12.1. (2 pts) Décris le relief, le climat et la végétation de l''Adamaoua.
12.2. (3 pts) Explique le rôle de l''Adamaoua (château d''eau, élevage) pour le Cameroun.

**Exercice 13 — Les plaines et bassins du Nord (5 points)**
13.1. (2 pts) Décris la plaine du Tchad et le bassin de la Bénoué.
13.2. (3 pts) Analyse les risques naturels dans le nord du Cameroun (sécheresse, désertification).

**Exercice 14 — Le climat et les activités humaines (5 points)**
14.1. (2 pts) Montre l''influence du climat sur les activités agricoles au Cameroun.
14.2. (3 pts) Explique comment les populations s''adaptent aux contraintes climatiques (irrigation, cultures adaptées).

**Exercice 15 — Les milieux naturels et leur protection (5 points)**
15.1. (2 pts) Présente les principaux parcs et réserves naturels du Cameroun.
15.2. (3 pts) Analyse les menaces sur les milieux naturels (déforestation, braconnage) et les solutions de protection.

---

## SECTION 4 : GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE

**Exercice 16 — La structure de la population (5 points)**
16.1. (2 pts) Analyse la pyramide des âges du Cameroun (jeunesse de la population).
16.2. (3 pts) Explique les conséquences de la jeunesse de la population (école, emploi, santé).

**Exercice 17 — Le secteur primaire (5 points)**
17.1. (2 pts) Présente les activités du secteur primaire (agriculture, élevage, pêche, forêt, mines).
17.2. (3 pts) Analyse l''importance du secteur primaire dans l''économie camerounaise.

**Exercice 18 — Le secteur tertiaire (5 points)**
18.1. (2 pts) Décris les activités du secteur tertiaire (commerce, transports, services).
18.2. (3 pts) Explique le rôle des banques, de l''éducation et de la santé dans le développement.

**Exercice 19 — Les échanges et l''intégration régionale (5 points)**
19.1. (2 pts) Présente les échanges commerciaux du Cameroun avec ses voisins.
19.2. (3 pts) Analyse l''importance de l''intégration régionale (CEMAC) pour le commerce camerounais.

**Exercice 20 — Bilan et perspectives de développement (5 points)**
20.1. (2 pts) Fais le bilan des forces et des faiblesses du développement camerounais.
20.2. (3 pts) Propose une stratégie de développement pour l''émergence du Cameroun (Vision 2035).

---

## BARÈME RÉCAPITULATIF

| Section                    | Exercices        | Points  |
| -------------------------- | ---------------- | ------- |
| Histoire du Cameroun       | 1 à 5            | 25      |
| Histoire générale          | 6 à 10           | 25      |
| Géographie physique        | 11 à 15          | 25      |
| Géographie humaine/économ. | 16 à 20          | 25      |
| **Total**                  | **20 exercices** | **100** |
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '0bbbe30f-6611-64db-3e5b-fe81ba31eafd';


-- BEPC — Physique-Chimie — L'électricité
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5a50ec55-65ab-7614-87f9-e7d984cb8341', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC — Physique-Chimie — L''électricité',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Physique-Chimie — L''électricité

**Niveau :** Troisième — BEPC
**Matière :** Physique-Chimie

## Objectifs d''apprentissage

À la fin de ce cours, tu dois être capable de :

- Distinguer les grandeurs électriques : tension, intensité, résistance, puissance, énergie.
- Connaître les unités et les instruments de mesure.
- Appliquer la loi d''Ohm et les lois des circuits en série et en dérivation.
- Calculer la puissance et l''énergie électrique.

---

## 1. Les grandeurs électriques fondamentales

Le **courant électrique** est un déplacement ordonné de charges électriques dans un conducteur. L''**intensité** $I$ mesure le débit de charges qui traverse une section du circuit par seconde. Elle s''exprime en **ampère (A)** et se mesure avec un **ampèremètre**, branché **en série**.

La **tension** $U$ représente la différence de potentiel entre deux points d''un circuit. Elle s''exprime en **volt (V)** et se mesure avec un **voltmètre**, branché **en dérivation**.

La **résistance** $R$ caractérise l''opposition d''un conducteur au passage du courant. Elle s''exprime en **ohm (Ω)** et se mesure avec un **ohmmètre**.

## 2. La loi d''Ohm

Pour un conducteur ohmique, la tension à ses bornes est proportionnelle à l''intensité du courant qui le traverse :

$$U = R \times I$$

avec $U$ en volts (V), $R$ en ohms (Ω), $I$ en ampères (A).

**Exemple :** Une résistance de 50 Ω est traversée par un courant de 0,2 A.
$U = 50 \times 0,2 = 10$ V.

**Application :** Un conducteur soumis à 12 V est parcouru par 0,4 A.
$R = \frac{U}{I} = \frac{12}{0,4} = 30\ \Omega$.

## 3. Les circuits en série et en dérivation

**Circuit en série :** les dipôles sont branchés les uns à la suite des autres.

- L''intensité est la même en tout point : $I = I_1 = I_2$.
- Les tensions s''additionnent : $U_{totale} = U_1 + U_2$.
- Les résistances s''additionnent : $R_{eq} = R_1 + R_2$.

**Circuit en dérivation (parallèle) :** les dipôles sont branchés entre les mêmes points.

- La tension est la même aux bornes de chaque branche : $U = U_1 = U_2$.
- Les intensités s''additionnent : $I = I_1 + I_2$.
- $\frac{1}{R_{eq}} = \frac{1}{R_1} + \frac{1}{R_2}$.

**Exemple :** $R_1 = 6\ \Omega$ et $R_2 = 3\ \Omega$ en série : $R_{eq} = 9\ \Omega$.
En dérivation : $\frac{1}{R_{eq}} = \frac{1}{6} + \frac{1}{3} = \frac{1}{2}$ donc $R_{eq} = 2\ \Omega$.

## 4. La puissance électrique

La puissance électrique consommée par un appareil est :

$$P = U \times I$$

avec $P$ en **watt (W)**, $U$ en volts, $I$ en ampères.

Par la loi d''Ohm, on peut aussi écrire : $P = R \times I^2$ ou $P = \frac{U^2}{R}$.

**Exemple :** Une lampe de 60 W fonctionne sous 220 V.
$I = \frac{P}{U} = \frac{60}{220} \approx 0,27$ A.

## 5. L''énergie électrique

L''énergie électrique consommée est :

$$E = P \times t$$

avec $E$ en **joule (J)**, $P$ en watts, $t$ en secondes.

Dans la pratique, on utilise le **kilowattheure (kWh)** : $1 \text{ kWh} = 3,6 \times 10^6$ J.

**Exemple :** Un radiateur de 2 000 W fonctionne 3 h.
$E = 2 \text{ kW} \times 3 \text{ h} = 6$ kWh $= 2,16 \times 10^7$ J.

## 6. L''effet Joule et la sécurité

L''**effet Joule** est la transformation de l''énergie électrique en chaleur dans un conducteur résistant. Il est utilisé dans le fer à repasser, le radiateur, le grille-pain.

La quantité de charge transportée vaut : $Q = I \times t$ (en coulombs, C). La charge élémentaire vaut $e = 1,6 \times 10^{-19}$ C.

## 7. Erreurs à éviter

- Confondre série et dérivation.
- Oublier de convertir le temps en secondes pour l''énergie en joules.
- Mal brancher les appareils de mesure (ampèremètre en série, voltmètre en dérivation).
- Oublier les unités.

## 8. Exercices d''entraînement

**Exercice 1 :** Une résistance de 40 Ω est soumise à 12 V. Calculer l''intensité et la puissance.
**Exercice 2 :** Deux résistances de 10 Ω et 20 Ω en dérivation sous 12 V. Calculer la résistance équivalente et l''intensité totale.
**Exercice 3 :** Une machine de 1 500 W fonctionne 5 h. Calculer l''énergie consommée en kWh et le coût à 100 FCFA le kWh.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Physique-Chimie Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Physique-Chimie — La mécanique
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '02fd932a-a89a-e09b-fad7-3b92aa29a4a9', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC — Physique-Chimie — La mécanique',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Physique-Chimie — La mécanique

**Niveau :** Troisième — BEPC
**Matière :** Physique-Chimie

## Objectifs d''apprentissage

À la fin de ce cours, tu dois être capable de :

- Calculer une vitesse moyenne et convertir les unités.
- Calculer un poids, une masse volumique et une pression.
- Calculer un travail, une puissance, une énergie cinétique et potentielle.
- Énoncer et utiliser la conservation de l''énergie mécanique.

---

## 1. La vitesse moyenne

La vitesse moyenne d''un mobile est :

$$v = \frac{d}{t}$$

avec $v$ en m/s, $d$ en mètres, $t$ en secondes. On utilise aussi le km/h. Pour convertir : $1 \text{ m/s} = 3,6 \text{ km/h}$.

**Exemple :** Un train parcourt 240 km en 2 h.
$v = \frac{240}{2} = 120$ km/h $= 120 \div 3,6 \approx 33,3$ m/s.

**Application :** Un coureur parcourt 100 m en 10 s. $v = \frac{100}{10} = 10$ m/s.

## 2. La masse volumique

La masse volumique est la masse d''une unité de volume :

$$\rho = \frac{m}{V}$$

avec $\rho$ en kg/m³, $m$ en kg, $V$ en m³. L''eau a une masse volumique de 1 000 kg/m³.

**Exemple :** Un corps de 0,2 kg occupe un volume de $5 \times 10^{-5}$ m³.
$\rho = \frac{0,2}{5 \times 10^{-5}} = 4\,000$ kg/m³.

Un corps **flotte** dans un liquide si sa masse volumique est inférieure à celle du liquide ; il **coule** sinon.

## 3. Le poids et la masse

Le **poids** est la force d''attraction exercée par la Terre sur un corps :

$$P = m \times g$$

avec $P$ en **newton (N)**, $m$ en kg, $g$ l''intensité de la pesanteur (environ 10 N/kg sur Terre).

**Important :** La masse ne change pas ; le poids dépend du lieu. Sur la Lune, $g = 1,6$ N/kg.

**Exemple :** Un objet de 5 kg a un poids $P = 5 \times 10 = 50$ N sur Terre.

## 4. La pression

La pression est la force exercée perpendiculairement par unité de surface :

$$P = \frac{F}{S}$$

avec $P$ en **pascal (Pa)**, $F$ en newtons, $S$ en m². La pression augmente quand la surface diminue.

**Exemple :** Une force de 600 N sur une surface de 0,3 m².
$P = \frac{600}{0,3} = 2\,000$ Pa.

C''est pourquoi les skis sont larges : pour réduire la pression sur la neige.

## 5. Le travail et la puissance

Le **travail** d''une force parallèle au déplacement :

$$W = F \times d$$

avec $W$ en **joule (J)**. Le travail est **moteur** si la force et le déplacement ont le même sens.

La **puissance** est le travail effectué par unité de temps :

$$P = \frac{W}{t}$$

avec $P$ en **watt (W)**.

**Exemple :** Une grue soulève 800 kg ($P = 8\,000$ N) de 20 m en 40 s.
$W = 8000 \times 20 = 160\,000$ J ; $P = \frac{160\,000}{40} = 4\,000$ W.

## 6. L''énergie cinétique et potentielle

L''**énergie cinétique** est l''énergie liée à la vitesse :

$$E_c = \frac{1}{2} m v^2$$

L''**énergie potentielle de pesanteur** est l''énergie liée à la hauteur :

$$E_p = m g h$$

L''**énergie mécanique** est la somme : $E_m = E_c + E_p$. Sans frottement, elle se conserve.

**Exemple :** Une caisse de 2 kg glisse à 4 m/s.
$E_c = \frac{1}{2} \times 2 \times 4^2 = 16$ J.
Soulevée à 3 m : $E_p = 2 \times 10 \times 3 = 60$ J.

## 7. La poussée d''Archimède

Tout corps plongé dans un fluide subit une **poussée d''Archimède** verticale, vers le haut, égale au poids du fluide déplacé. Elle explique la flottaison des corps.

## 8. Erreurs à éviter

- Confondre masse (kg) et poids (N).
- Oublier de convertir les unités (g en kg, km en m, min en s).
- Multiplier au lieu de diviser par 3,6 pour convertir les vitesses.
- Oublier le facteur $\frac{1}{2}$ dans l''énergie cinétique.

## 9. Exercices d''entraînement

**Exercice 1 :** Un bus parcourt 60 km en 1 h. Convertir sa vitesse en m/s.
**Exercice 2 :** Calculer le poids d''un corps de 12 kg, puis son énergie potentielle à 5 m de hauteur.
**Exercice 3 :** Une force de 100 N déplace un objet de 8 m en 4 s. Calculer le travail et la puissance.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Physique-Chimie Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Physique-Chimie — La chimie
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd2946c1b-2f8d-cbae-4d0b-2b0fa9ad7064', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC — Physique-Chimie — La chimie',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Physique-Chimie — La chimie

**Niveau :** Troisième — BEPC
**Matière :** Physique-Chimie

## Objectifs d''apprentissage

À la fin de ce cours, tu dois être capable de :

- Décrire la structure de l''atome et représenter une molécule.
- Écrire et équilibrer une équation chimique.
- Appliquer la conservation de la masse.
- Calculer une concentration massique.
- Caractériser une solution par son pH.

---

## 1. L''atome

L''atome est la plus petite partie d''un élément chimique. Il est constitué :

- d''un **noyau** contenant des **protons** (charge +) et des **neutrons** (charge nulle) ;
- d''**électrons** (charge −) qui tournent autour du noyau.

Le **numéro atomique** $Z$ est le nombre de protons. Le **nombre de masse** $A$ est le nombre de nucléons (protons + neutrons). Un atome est neutre : nombre d''électrons = nombre de protons.

**Exemple :** L''atome de sodium $^{23}_{11}Na$ : $Z = 11$, $A = 23$. Neutrons : $A - Z = 12$. Électrons : 11.

La **structure électronique** (couches K, L, M) : K = 2, L = 8, M = 8 électrons au plus. Pour le sodium : (K)² (L)⁸ (M)¹.

Les électrons de la **dernière couche** (valence) déterminent la réactivité. Pour obtenir la configuration stable du gaz noble le plus proche, un atome peut gagner ou perdre des électrons pour former un **ion**.

**Exemple :** Le sodium perd 1 électron et forme l''ion $Na^+$ ; le chlore gagne 1 électron et forme $Cl^-$.

## 2. Les molécules

Une **molécule** est un ensemble d''atomes liés entre eux. Elle se représente par une formule chimique.

**Exemples :** $H_2O$ (eau), $CO_2$ (dioxyde de carbone), $O_2$ (dioxygène), $NaCl$ (chlorure de sodium).

## 3. Les corps purs et les mélanges

Un **corps pur** est constitué d''une seule espèce chimique (ex. eau distillée). Un **mélange** contient plusieurs espèces (ex. air, eau salée).

- **Mélange homogène** : une seule phase visible (ex. eau + sucre).
- **Mélange hétérogène** : plusieurs phases (ex. eau + huile, eau + sable).

**Séparations :** décantation, filtration, distillation, tamisage.

## 4. Les transformations chimiques

Une **réaction chimique** transforme des **réactifs** en **produits**. On l''écrit sous forme d''équation-bilan que l''on **équilibre** pour respecter la conservation des atomes et de la masse.

**Exemple :** Combustion du carbone : $C + O_2 \rightarrow CO_2$.
Combustion du méthane : $CH_4 + 2O_2 \rightarrow CO_2 + 2H_2O$.
Neutralisation : $HCl + NaOH \rightarrow H_2O + NaCl$.

**Loi de Lavoisier :** Rien ne se perd, rien ne se crée, tout se transforme. La masse totale se conserve.

**Application :** La combustion de 12 g de carbone dans 32 g de dioxygène produit 44 g de $CO_2$ car $12 + 32 = 44$ g.

## 5. La concentration massique

La concentration massique est la masse de soluté dissous par unité de volume de solution :

$$C_m = \frac{m}{V}$$

avec $C_m$ en g/L, $m$ en g, $V$ en L. Le **soluté** est l''espèce dissoute, le **solvant** est le liquide qui dissout (souvent l''eau).

**Exemple :** 20 g de sel dans 500 mL d''eau.
$C_m = \frac{20}{0,5} = 40$ g/L.

## 6. Le pH et les acides-bases

Le **pH** mesure l''acidité ou la basicité d''une solution, de 0 à 14 :

- pH < 7 : solution **acide** ;
- pH = 7 : solution **neutre** ;
- pH > 7 : solution **basique**.

Plus le pH est faible, plus la solution est acide. On le mesure avec du **papier pH** ou un **pH-mètre**.

**Exemples :** Jus de citron (acide), eau pure (neutre), eau de javel (basique).

## 7. Les changements d''état

L''eau existe à l''état solide, liquide et gazeux. Changements d''état :

- **Fusion** : solide → liquide (glace : 0 °C) ;
- **Vaporisation** : liquide → gazeux (ébullition : 100 °C, évaporation) ;
- **Liquéfaction (condensation)** : gazeux → liquide ;
- **Sublimation** : solide → gazeux.

Pendant un changement d''état, la température reste constante.

## 8. Erreurs à éviter

- Confondre protons, neutrons et électrons.
- Oublier d''équilibrer les équations.
- Confondre pH acide et basique.
- Ne pas convertir le volume en litres pour la concentration.
- Confondre atome (électriquement neutre) et ion (chargé).

## 9. Exercices d''entraînement

**Exercice 1 :** L''atome de chlore $^{35}_{17}Cl$. Donner $Z$, $A$, le nombre de neutrons et d''électrons, puis sa structure électronique.
**Exercice 2 :** Équilibrer $H_2 + O_2 \rightarrow H_2O$ et $Mg + O_2 \rightarrow MgO$.
**Exercice 3 :** On dissout 50 g de sucre dans 1 L d''eau. Calculer la concentration massique.
**Exercice 4 :** Une solution a un pH de 3. Est-elle acide ou basique ? Justifier.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Physique-Chimie Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Physique-Chimie — Électricité
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a6668f9c-d899-0b75-cba6-f7d20f6dca2a', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'Fiche — BEPC — Physique-Chimie — Électricité',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Physique-Chimie — Électricité

**Niveau :** Troisième — BEPC
**Matière :** Physique-Chimie

---

# Fiche de révision — Électricité BEPC

## Grandeurs et unités

- Intensité $I$ → **ampère (A)** → ampèremètre **en série**.
- Tension $U$ → **volt (V)** → voltmètre **en dérivation**.
- Résistance $R$ → **ohm (Ω)** → ohmmètre.
- Puissance $P$ → **watt (W)**.
- Énergie $E$ → **joule (J)** ou **kWh**.
- Charge $Q$ → **coulomb (C)**.

## Formules clés

- **Loi d''Ohm** : $U = R \times I$ ; $R = \frac{U}{I}$ ; $I = \frac{U}{R}$
- **Puissance** : $P = U \times I = R I^2 = \frac{U^2}{R}$
- **Énergie** : $E = P \times t$ ; $1 \text{ kWh} = 3{,}6 \times 10^6$ J
- **Charge** : $Q = I \times t$ ; $e = 1{,}6 \times 10^{-19}$ C

## Circuits

**Série** : $I$ identique ; $U = U_1 + U_2$ ; $R_{eq} = R_1 + R_2$.
**Dérivation** : $U$ identique ; $I = I_1 + I_2$ ; $\frac{1}{R_{eq}} = \frac{1}{R_1} + \frac{1}{R_2}$.

## Effet Joule

Transformation de l''énergie électrique en chaleur (radiateur, fer à repasser, grille-pain).

## Pièges à éviter

- Ampèremètre en série, voltmètre en dérivation (jamais l''inverse !).
- Pour $E$ en joules : convertir les heures en secondes.
- Ne pas confondre série et dérivation.

## Avant de rendre

- Encadrer la réponse, écrire l''unité.
- Vérifier le branchement des appareils de mesure.
- Contrôler les conversions.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Physique-Chimie Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Physique-Chimie — Mécanique
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5e8897c9-f055-ce50-21cf-167113bc792e', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'Fiche — BEPC — Physique-Chimie — Mécanique',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Physique-Chimie — Mécanique

**Niveau :** Troisième — BEPC
**Matière :** Physique-Chimie

---

# Fiche de révision — Mécanique BEPC

## Grandeurs et unités

- Masse $m$ → **kg** ; Poids $P$ → **newton (N)**.
- Vitesse $v$ → **m/s** (ou km/h).
- Force $F$ → **newton (N)** ; Pression → **pascal (Pa)**.
- Travail $W$ → **joule (J)** ; Puissance → **watt (W)**.
- Masse volumique $\rho$ → **kg/m³**.

## Formules clés

- **Vitesse** : $v = \frac{d}{t}$ ; $1 \text{ m/s} = 3{,}6 \text{ km/h}$
- **Masse volumique** : $\rho = \frac{m}{V}$ ; $\rho_{eau} = 1\,000$ kg/m³
- **Poids** : $P = m \times g$ ($g \approx 10$ N/kg sur Terre)
- **Pression** : $P = \frac{F}{S}$
- **Travail** : $W = F \times d$
- **Puissance** : $P = \frac{W}{t}$
- **Énergie cinétique** : $E_c = \frac{1}{2} m v^2$
- **Énergie potentielle** : $E_p = m g h$
- **Énergie mécanique** : $E_m = E_c + E_p$ (se conserve sans frottement)

## Flottaison

- Un corps **flotte** si $\rho_{corps} < \rho_{liquide}$ ; il **coule** sinon.
- **Poussée d''Archimède** : force verticale vers le haut = poids du fluide déplacé.

## Points de vigilance

- Masse (kg) ≠ Poids (N).
- Convertir g en kg (÷1000) et cm³ en m³ (÷$10^6$).
- Ne pas oublier le $\frac{1}{2}$ dans $E_c$.
- Diviser par 3,6 pour passer de km/h à m/s.

## Avant de rendre

- Encadrer le résultat et écrire l''unité.
- Préciser si un travail est moteur ou résistant.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Physique-Chimie Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Physique-Chimie — Chimie
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b69ddd7f-76e6-4d06-5180-1a269c039eac', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'Fiche — BEPC — Physique-Chimie — Chimie',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Physique-Chimie — Chimie

**Niveau :** Troisième — BEPC
**Matière :** Physique-Chimie

---

# Fiche de révision — Chimie BEPC

## Structure de l''atome

- **Noyau** : protons (+) + neutrons (neutres) = **nucléons**.
- **Électrons** (−) autour du noyau. Atome **neutre** : électrons = protons.
- Numéro atomique $Z$ = protons ; Nombre de masse $A$ = nucléons.
- Neutrons = $A - Z$.
- Couches électroniques : K (2), L (8), M (8).

**Exemple :** $^{23}_{11}Na$ → 11 protons, 11 électrons, 12 neutrons, structure (K)²(L)⁸(M)¹.

## Molécules à connaître

- Eau : $H_2O$ ; Dioxyde de carbone : $CO_2$ ; Dioxygène : $O_2$ ; Dihydrogène : $H_2$ ; Chlorure de sodium : $NaCl$.

## Corps pur et mélanges

- **Corps pur** : une seule espèce (eau distillée).
- **Mélange homogène** : une phase (eau + sucre).
- **Mélange hétérogène** : plusieurs phases (eau + huile).
- Séparations : décantation, filtration, distillation.

## Réactions chimiques

- Réactifs → Produits ; équation **équilibrée**.
- **Loi de Lavoisier** : la masse se conserve.
- Exemples :
  - $C + O_2 \rightarrow CO_2$
  - $CH_4 + 2O_2 \rightarrow CO_2 + 2H_2O$
  - $HCl + NaOH \rightarrow H_2O + NaCl$

## Concentration et pH

- Concentration massique : $C_m = \frac{m}{V}$ (g/L) ; soluté + solvant = solution.
- **pH** : < 7 acide ; = 7 neutre ; > 7 basique.
- Papier pH / pH-mètre.

## Changements d''état

- **Fusion** solide→liquide (0 °C) ; **Vaporisation** liquide→gazeux (100 °C).
- **Liquéfaction** gazeux→liquide ; **Sublimation** solide→gazeux.
- Température constante pendant le changement d''état.

## Pièges à éviter

- Confondre atome (neutre) et ion (chargé).
- Oublier d''équilibrer les équations.
- Inverser acide et basique pour le pH.
- Oublier de convertir le volume en litres.

## Avant de rendre

- Écrire les unités (g/L, mol).
- Vérifier l''équilibre de l''équation.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Physique-Chimie Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Update MCQ 1 for Physique-Chimie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC PHYSIQUE-CHIMIE — ÉPREUVE 1 (QCM) — SÉRIE 1

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Physique-Chimie
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Une résistance de 40 Ω est traversée par un courant de 0,3 A. Quelle est la tension à ses bornes ?

A. 12 V
B. 120 V
C. 1,2 V
D. 13,3 V

---

**Question 2.** Une lampe de puissance 100 W est branchée sous une tension de 220 V. Quelle intensité la traverse ?

A. 0,45 A
B. 2,2 A
C. 0,22 A
D. 22 A

---

**Question 3.** Un automobiliste parcourt 180 km en 2 heures. Quelle est sa vitesse moyenne ?

A. 60 km/h
B. 90 km/h
C. 120 km/h
D. 360 km/h

---

**Question 4.** Le poids d''un corps de masse 5 kg sur Terre (g = 10 N/kg) est :

A. 5 N
B. 50 N
C. 0,5 N
D. 500 N

---

**Question 5.** Une force de 100 N est appliquée perpendiculairement sur une surface de 2 m². La pression exercée est :

A. 50 Pa
B. 200 Pa
C. 20 Pa
D. 98 Pa

---

**Question 6.** Le noyau d''un atome est constitué de :

A. protons et neutrons
B. protons et électrons
C. neutrons et électrons
D. uniquement d''électrons

---

**Question 7.** La molécule de dioxyde de carbone est représentée par la formule :

A. CO₂
B. O₂
C. CO
D. C₂O

---

**Question 8.** Une solution dont le pH est égal à 9 est :

A. basique
B. acide
C. neutre
D. sans indication possible

---

**Question 9.** L''énergie cinétique d''un corps de masse 2 kg animé d''une vitesse de 3 m/s vaut :

A. 9 J
B. 18 J
C. 6 J
D. 4,5 J

---

**Question 10.** La quantité de chaleur nécessaire pour élever la température de 3 kg d''eau de 20 °C à 30 °C (c = 4 180 J/kg·K) est :

A. 125 400 J
B. 12 540 J
C. 41 800 J
D. 125 400 kJ

---

## CORRIGÉ

1. **12 V** — $U = R \times I = 40 \times 0,3 = 12$ V.
2. **0,45 A** — $I = \frac{P}{U} = \frac{100}{220} \approx 0,45$ A.
3. **90 km/h** — $v = \frac{d}{t} = \frac{180}{2} = 90$ km/h.
4. **50 N** — $P = m \times g = 5 \times 10 = 50$ N.
5. **50 Pa** — $P = \frac{F}{S} = \frac{100}{2} = 50$ Pa.
6. **protons et neutrons**
7. **CO₂**
8. **basique** — pH > 7.
9. **9 J** — $E_c = \frac{1}{2} mv^2 = \frac{1}{2} \times 2 \times 3^2 = 9$ J.
10. **125 400 J** — $Q = mc\Delta T = 3 \times 4180 \times 10 = 125\,400$ J.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '6f2ef91b-15cf-436c-a90c-10ef4cac7e9e';


-- Update MCQ 2 for Physique-Chimie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC PHYSIQUE-CHIMIE — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Physique-Chimie
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Un conducteur ohmique est soumis à une tension de 6 V et il est parcouru par un courant de 0,5 A. Sa résistance vaut :

A. 3 Ω
B. 12 Ω
C. 30 Ω
D. 1,2 Ω

---

**Question 2.** Deux résistances R₁ = 8 Ω et R₂ = 4 Ω sont branchées en série. La résistance équivalente est :

A. 12 Ω
B. 2,7 Ω
C. 32 Ω
D. 4 Ω

---

**Question 3.** Un cycliste roule à la vitesse de 5 m/s. Exprimée en km/h, cette vitesse vaut :

A. 18 km/h
B. 1,8 km/h
C. 50 km/h
D. 0,5 km/h

---

**Question 4.** Un mobile parcourt 400 m en 20 s. Sa vitesse moyenne est :

A. 20 m/s
B. 8 m/s
C. 0,05 m/s
D. 2 m/s

---

**Question 5.** La masse volumique de l''eau est :

A. 1 000 kg/m³
B. 100 kg/m³
C. 10 000 kg/m³
D. 1 kg/m³

---

**Question 6.** L''atome est électriquement neutre car :

A. le nombre de protons est égal au nombre d''électrons
B. il ne contient aucune charge
C. les neutrons neutralisent les protons
D. les protons sont plus nombreux que les électrons

---

**Question 7.** Lors d''une réaction chimique, la masse totale des réactifs est :

A. égale à la masse totale des produits
B. supérieure à celle des produits
C. inférieure à celle des produits
D. toujours nulle

---

**Question 8.** Le symbole chimique de l''hydrogène est :

A. H
B. He
C. H₂
D. O

---

**Question 9.** L''énergie potentielle de pesanteur d''un objet de masse 4 kg placé à 5 m de hauteur (g = 10 N/kg) est :

A. 200 J
B. 20 J
C. 100 J
D. 400 J

---

**Question 10.** La fusion d''un corps pur est le passage :

A. de l''état solide à l''état liquide
B. de l''état liquide à l''état gazeux
C. de l''état gazeux à l''état liquide
D. de l''état solide à l''état gazeux

---

## CORRIGÉ

1. **12 Ω** — $R = \frac{U}{I} = \frac{6}{0,5} = 12$ Ω.
2. **12 Ω** — En série : $R_{eq} = R_1 + R_2 = 8 + 4 = 12$ Ω.
3. **18 km/h** — $5 \text{ m/s} = 5 \times 3,6 = 18$ km/h.
4. **20 m/s** — $v = \frac{400}{20} = 20$ m/s.
5. **1 000 kg/m³**
6. **le nombre de protons est égal au nombre d''électrons**
7. **égale à la masse totale des produits** (loi de conservation de la masse).
8. **H**
9. **200 J** — $E_p = mgh = 4 \times 10 \times 5 = 200$ J.
10. **de l''état solide à l''état liquide**
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '505fb455-24e5-6e43-2e3c-41c62fc175e2';


-- Update MCQ 3 for Physique-Chimie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC PHYSIQUE-CHIMIE — ÉPREUVE 1 (QCM) — SÉRIE 3

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Physique-Chimie
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** L''énergie électrique consommée par un appareil de puissance 1 500 W fonctionnant pendant 2 heures est :

A. 3 kWh
B. 0,75 kWh
C. 30 kWh
D. 3 000 kWh

---

**Question 2.** Dans un montage en dérivation (parallèle), la tension aux bornes de chaque branche est :

A. la même que celle aux bornes du générateur
B. divisée par le nombre de branches
C. nulle
D. toujours plus grande que celle du générateur

---

**Question 3.** Un objet de masse 500 g a un poids de (g = 10 N/kg) :

A. 5 N
B. 50 N
C. 0,5 N
D. 5 000 N

---

**Question 4.** Un train parcourt 120 km à la vitesse moyenne de 80 km/h. La durée du trajet est :

A. 1,5 h
B. 2 h
C. 0,67 h
D. 1 h

---

**Question 5.** La formule permettant de calculer la pression est :

A. $P = \frac{F}{S}$
B. $P = F \times S$
C. $P = \frac{S}{F}$
D. $P = F + S$

---

**Question 6.** Un corps dont la masse volumique est 800 kg/m³ placé dans l''eau (1 000 kg/m³) :

A. flotte
B. coule
C. reste en suspension
D. se dissout

---

**Question 7.** Une solution de pH égal à 7 est :

A. neutre
B. acide
C. basique
D. très concentrée

---

**Question 8.** L''équation-bilan de la réaction entre l''acide chlorhydrique et la soude s''écrit :

A. $HCl + NaOH \rightarrow H_2O + NaCl$
B. $HCl + NaOH \rightarrow H_2 + NaCl$
C. $HCl + NaOH \rightarrow Cl_2 + Na$
D. $HCl + NaOH \rightarrow H_2O + Na$

---

**Question 9.** L''unité SI de l''énergie est :

A. le joule
B. le watt
C. le newton
D. le pascal

---

**Question 10.** Un rayon lumineux frappe un miroir plan avec un angle d''incidence de 40°. L''angle de réflexion est :

A. 40°
B. 50°
C. 90°
D. 140°

---

## CORRIGÉ

1. **3 kWh** — $E = P \times t = 1,5 \text{ kW} \times 2 \text{ h} = 3$ kWh.
2. **la même que celle aux bornes du générateur** — Loi des tensions en dérivation.
3. **5 N** — $P = mg = 0,5 \times 10 = 5$ N (500 g = 0,5 kg).
4. **1,5 h** — $t = \frac{d}{v} = \frac{120}{80} = 1,5$ h.
5. **$P = \frac{F}{S}$**
6. **flotte** — car $\rho_{\text{corps}} < \rho_{\text{eau}}$.
7. **neutre**
8. **$HCl + NaOH \rightarrow H_2O + NaCl$** — Réaction acide-base (neutralisation).
9. **le joule**
10. **40°** — L''angle de réflexion est égal à l''angle d''incidence.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '9a6eb1a1-5499-aee9-f687-f5c723366d30';


-- Update set 4 for Physique-Chimie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC PHYSIQUE-CHIMIE — ÉPREUVE 2 — SÉRIE 4

## Épreuve de Physique-Chimie

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Physique-Chimie
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- L''épreuve comporte 4 sections (Électricité, Mécanique, Chimie, Optique et Thermique).
- Chaque section contient 5 exercices notés sur 5 points chacun (total 100 points).
- Montre clairement tous les calculs et le raisonnement.
- Donne toujours les unités. Sois précis dans la rédaction.

---

## SECTION 1 : ÉLECTRICITÉ

**Exercice 1.** _(5 points)_
Une lampe à incandescence est branchée aux bornes d''un générateur de tension continue. La tension à ses bornes est $U = 220$ V et l''intensité du courant qui la traverse est $I = 0,25$ A.

1. Énoncer la loi d''Ohm pour un conducteur ohmique. _(1 pt)_
2. Calculer la résistance $R$ de la lampe. _(1,5 pt)_
3. Calculer la puissance électrique $P$ consommée par la lampe. _(1,5 pt)_
4. La lampe fonctionne 3 h. Calculer l''énergie électrique consommée en kWh. _(1 pt)_

**Exercice 2.** _(5 points)_
On dispose de deux résistances $R_1 = 10\ \Omega$ et $R_2 = 15\ \Omega$.

1. Représenter schématiquement le montage en série. _(1 pt)_
2. Calculer la résistance équivalente en série. _(1 pt)_
3. Ces deux résistances sont maintenant montées en dérivation. Calculer la résistance équivalente $R_{eq}$ sachant que $\frac{1}{R_{eq}} = \frac{1}{R_1} + \frac{1}{R_2}$. _(2 pts)_
4. Que devient l''intensité du courant quand on augmente la résistance d''un circuit en série ? Justifier. _(1 pt)_

**Exercice 3.** _(5 points)_
Un fer à repasser porte les indications 2 200 W – 220 V.

1. Calculer l''intensité du courant qui le traverse en fonctionnement normal. _(1,5 pt)_
2. Calculer sa résistance électrique. _(1,5 pt)_
3. Ce fer fonctionne 30 minutes par jour pendant 20 jours. Calculer l''énergie totale consommée en kWh. _(2 pts)_

**Exercice 4.** _(5 points)_
Un circuit en série comporte un générateur, une lampe et un interrupteur.

1. Citer les trois lois qui régissent un circuit en série (tensions, intensités). _(1,5 pt)_
2. La tension du générateur est 6 V et la tension aux bornes de la lampe est 4,5 V. Que vaut la tension aux bornes du fil de connexion ? Justifier. _(1,5 pt)_
3. Un ampèremètre branché dans le circuit indique 0,2 A. Combien de coulombs traversent le circuit en 1 minute ? $(Q = I \times t)$ _(2 pts)_

**Exercice 5.** _(5 points)_
Une pile de force électromotrice $E = 4,5$ V alimente une résistance $R = 30\ \Omega$.

1. Rappeler la relation entre l''énergie électrique $W$, la puissance $P$ et le temps $t$. _(1 pt)_
2. Calculer l''intensité du courant dans le circuit. _(1,5 pt)_
3. Calculer la puissance électrique fournie par la pile. _(1,5 pt)_
4. Donner l''unité SI de la puissance et celle de l''énergie. _(1 pt)_

---

## SECTION 2 : MÉCANIQUE

**Exercice 6.** _(5 points)_
Un cycliste parcourt un trajet rectiligne en deux étapes : 24 km en 1,5 h, puis 6 km en 0,5 h.

1. Calculer la vitesse moyenne sur la première étape. _(1 pt)_
2. Calculer la vitesse moyenne sur la seconde étape. _(1 pt)_
3. Calculer la vitesse moyenne sur l''ensemble du trajet. _(2 pts)_
4. Convertir cette vitesse en m/s. _(1 pt)_

**Exercice 7.** _(5 points)_
Un objet de masse $m = 6$ kg est suspendu au bout d''un fil. On prend $g = 10$ N/kg.

1. Calculer le poids $P$ de l''objet. _(1,5 pt)_
2. Représenter la force poids sur un schéma (échelle : 1 cm pour 10 N). _(1,5 pt)_
3. L''objet est placé sur la Lune où $g = 1,6$ N/kg. Calculer son nouveau poids. La masse change-t-elle ? Justifier. _(2 pts)_

**Exercice 8.** _(5 points)_
Un ascenseur de masse 400 kg monte d''un étage à un autre, s''élevant de 15 m en 30 s. On donne $g = 10$ N/kg.

1. Calculer le poids de l''ascenseur. _(1 pt)_
2. Calculer le travail du poids $W = P \times h$ lors de cette montée. _(1,5 pt)_
3. Calculer la puissance développée $P = \frac{W}{t}$. _(1,5 pt)_
4. Préciser l''unité de la puissance. _(1 pt)_

**Exercice 9.** _(5 points)_
Une caisse de masse 2 kg glisse sur un sol horizontal à la vitesse de 4 m/s.

1. Calculer son énergie cinétique $E_c = \frac{1}{2} mv^2$. _(1,5 pt)_
2. La caisse est soulevée et placée sur une étagère à 3 m de hauteur. Calculer son énergie potentielle $E_p = mgh$ ($g = 10$ N/kg). _(1,5 pt)_
3. Calculer l''énergie mécanique totale de la caisse sur l''étagère (au repos). _(1 pt)_
4. Énoncer le principe de conservation de l''énergie mécanique. _(1 pt)_

**Exercice 10.** _(5 points)_
Une brique d''aire de base 0,05 m² exerce une force verticale de 500 N sur le sol.

1. Définir la pression. _(1 pt)_
2. Calculer la pression exercée par la brique sur le sol. _(2 pts)_
3. Comment varie la pression si on retourne la brique sur une face plus petite ? Justifier. _(2 pts)_

---

## SECTION 3 : CHIMIE

**Exercice 11.** _(5 points)_
On réalise la combustion complète du méthane $CH_4$ dans le dioxygène.

1. Définir une combustion. _(1 pt)_
2. Écrire et équilibrer l''équation de la réaction : $CH_4 + O_2 \rightarrow CO_2 + H_2O$. _(2 pts)_
3. Quels sont les réactifs et les produits de cette réaction ? _(1 pt)_
4. Énoncer la loi de conservation de la masse. _(1 pt)_

**Exercice 12.** _(5 points)_
Un atome possède 11 protons et 12 neutrons.

1. Donner son numéro atomique $Z$. _(1 pt)_
2. Calculer son nombre de masse $A$. _(1 pt)_
3. Combien possède-t-il d''électrons ? Justifier. _(1,5 pt)_
4. Écrire son symbole $^A_Z X$. _(1,5 pt)_

**Exercice 13.** _(5 points)_
On dissout 20 g de sel dans de l''eau pour obtenir 500 mL de solution.

1. Définir une solution et identifier le soluté et le solvant. _(1,5 pt)_
2. Calculer la concentration massique $C_m = \frac{m}{V}$ en g/L. _(2 pts)_
3. On prélève 100 mL de cette solution. Que devient la concentration de l''échantillon ? Justifier. _(1,5 pt)_

**Exercice 14.** _(5 points)_
On mesure le pH de trois solutions : A (pH = 2), B (pH = 7), C (pH = 11).

1. Classer ces solutions en acide, neutre ou basique. _(1,5 pt)_
2. Quelle solution est la plus acide ? Justifier. _(1,5 pt)_
3. Citer un indicateur coloré permettant de reconnaître une solution acide. _(1 pt)_
4. Préciser la couleur de cet indicateur dans la solution B. _(1 pt)_

**Exercice 15.** _(5 points)_
L''atome d''oxygène a pour numéro atomique $Z = 8$.

1. Donner sa structure électronique (K, L). _(1,5 pt)_
2. Déterminer le nombre d''électrons externes (valence). _(1 pt)_
3. Calculer la masse d''une mole d''atomes d''oxygène si la masse molaire atomique est 16 g/mol. _(1,5 pt)_
4. Donner la formule de la molécule de dioxygène formée par deux atomes d''oxygène. _(1 pt)_

---

## SECTION 4 : OPTIQUE ET THERMIQUE

**Exercice 16.** _(5 points)_
Un rayon lumineux arrive sur la surface d''un miroir plan avec un angle d''incidence $i = 30°$.

1. Énoncer les deux lois de la réflexion. _(2 pts)_
2. Calculer l''angle de réflexion $r$. _(1 pt)_
3. Représenter le rayon incident, la normale et le rayon réfléchi. _(2 pts)_

**Exercice 17.** _(5 points)_
On chauffe 2 kg d''eau initialement à 20 °C jusqu''à 70 °C. Capacité thermique massique de l''eau : $c = 4\,180$ J/kg·K.

1. Définir la chaleur massique. _(1 pt)_
2. Calculer la variation de température $\Delta T$. _(1 pt)_
3. Calculer la quantité de chaleur $Q = mc\Delta T$. _(2 pts)_
4. Donner l''unité de $Q$. _(1 pt)_

**Exercice 18.** _(5 points)_
On convertit des températures entre les échelles Celsius et kelvin.

1. Donner la relation entre la température en kelvin $T$ et celle en Celsius $\theta$. _(1 pt)_
2. Convertir 25 °C en kelvins. _(1,5 pt)_
3. Convertir 300 K en degrés Celsius. _(1,5 pt)_
4. À quoi correspond le 0 K en degrés Celsius ? _(1 pt)_

**Exercice 19.** _(5 points)_
Un corps pur subit un changement d''état à température constante.

1. Définir la fusion et donner la température de fusion de la glace. _(1,5 pt)_
2. Définir la vaporisation. Citer les deux modes de vaporisation. _(2 pts)_
3. Lors de la fusion d''un corps pur, la température reste-t-elle constante ? Justifier. _(1,5 pt)_

**Exercice 20.** _(5 points)_
Une loupe (lentille convergente) permet d''observer un objet placé entre son centre optique et son foyer objet.

1. Nommer le foyer d''une lentille convergente. _(1 pt)_
2. Comment est l''image obtenue (nature, sens, taille) ? _(2 pts)_
3. Donner le nom du point situé au centre de la lentille. _(1 pt)_
4. Citer une application de la lentille convergente dans la vie courante. _(1 pt)_

---

## BARÈME INDICATIF

| Section              | Exercices | Points par exercice | Total   |
| -------------------- | --------- | ------------------- | ------- |
| Électricité          | 1–5       | 5                   | 25      |
| Mécanique            | 6–10      | 5                   | 25      |
| Chimie               | 11–15     | 5                   | 25      |
| Optique et thermique | 16–20     | 5                   | 25      |
| **Total**            |           |                     | **100** |

---

## CORRIGÉ TYPE

**Ex. 1.** 1) $U = R \times I$. 2) $R = \frac{220}{0,25} = 880\ \Omega$. 3) $P = UI = 220 \times 0,25 = 55$ W. 4) $E = P t = 0,055 \times 3 = 0,165$ kWh.

**Ex. 2.** 1) Schéma (deux résistances en ligne). 2) $R_{eq} = 25\ \Omega$. 3) $\frac{1}{R_{eq}} = \frac{1}{10}+\frac{1}{15} = \frac{5}{30}$ donc $R_{eq} = 6\ \Omega$. 4) L''intensité diminue (même tension, résistance plus grande).

**Ex. 3.** 1) $I = \frac{P}{U} = \frac{2200}{220} = 10$ A. 2) $R = \frac{U}{I} = 22\ \Omega$. 3) $E = P t = 2,2 \times 0,5 \times 20 = 22$ kWh.

**Ex. 4.** 1) Tensions s''additionnent, intensité identique, courant unique. 2) $U_{fil} = 6 - 4,5 = 1,5$ V (la somme des tensions vaut celle du générateur). 3) $Q = It = 0,2 \times 60 = 12$ C.

**Ex. 5.** 1) $W = P \times t$. 2) $I = \frac{4,5}{30} = 0,15$ A. 3) $P = UI = 4,5 \times 0,15 = 0,675$ W. 4) Watt (W) ; joule (J).

**Ex. 6.** 1) $v_1 = \frac{24}{1,5} = 16$ km/h. 2) $v_2 = \frac{6}{0,5} = 12$ km/h. 3) $v = \frac{30}{2} = 15$ km/h. 4) $15 \div 3,6 \approx 4,2$ m/s.

**Ex. 7.** 1) $P = mg = 6 \times 10 = 60$ N. 2) Flèche verticale de 6 cm vers le bas. 3) $P = 6 \times 1,6 = 9,6$ N ; la masse reste 6 kg (elle ne change pas avec le lieu).

**Ex. 8.** 1) $P = 4000$ N. 2) $W = 4000 \times 15 = 60\,000$ J. 3) $P = \frac{60\,000}{30} = 2\,000$ W. 4) Le watt (W).

**Ex. 9.** 1) $E_c = \frac{1}{2} \times 2 \times 16 = 16$ J. 2) $E_p = 2 \times 10 \times 3 = 60$ J. 3) $E_m = 60$ J (au repos, $E_c = 0$). 4) Sans frottement, $E_m = E_c + E_p$ reste constante.

**Ex. 10.** 1) Pression $= \frac{\text{force}}{\text{surface}}$. 2) $P = \frac{500}{0,05} = 10\,000$ Pa. 3) Elle augmente car la surface diminue.

**Ex. 11.** 1) Combustion = réaction avec le dioxygène dégageant de la chaleur. 2) $CH_4 + 2O_2 \rightarrow CO_2 + 2H_2O$. 3) Réactifs : $CH_4$ et $O_2$ ; produits : $CO_2$ et $H_2O$. 4) La masse totale se conserve.

**Ex. 12.** 1) $Z = 11$. 2) $A = 11 + 12 = 23$. 3) 11 électrons (atome neutre). 4) $^{23}_{11}Na$.

**Ex. 13.** 1) Solution = mélange homogène ; soluté = sel, solvant = eau. 2) $C_m = \frac{20}{0,5} = 40$ g/L. 3) La concentration reste 40 g/L (propriété intensive).

**Ex. 14.** 1) A acide, B neutre, C basique. 2) A (pH le plus faible). 3) Papier pH ou BBT. 4) Dans B (neutre) le BBT est vert.

**Ex. 15.** 1) Structure (K)² (L)⁶. 2) 6 électrons externes. 3) 1 mole d''O = 16 g. 4) $O_2$.

**Ex. 16.** 1) Angle de réflexion = angle d''incidence ; rayon réfléchi dans le plan d''incidence. 2) $r = 30°$. 3) Schéma avec normale, rayons.

**Ex. 17.** 1) Chaleur nécessaire pour élever 1 kg de corps de 1 K. 2) $\Delta T = 70 - 20 = 50$ K. 3) $Q = 2 \times 4180 \times 50 = 418\,000$ J. 4) Le joule (J).

**Ex. 18.** 1) $T(K) = \theta(°C) + 273$. 2) $25 + 273 = 298$ K. 3) $300 - 273 = 27$ °C. 4) 0 K $= -273$ °C.

**Ex. 19.** 1) Passage solide → liquide ; fusion de la glace = 0 °C. 2) Passage liquide → gazeux ; ébullition et évaporation. 3) Oui, reste constante pendant le changement d''état.

**Ex. 20.** 1) Foyer image F''. 2) Image virtuelle, droite, agrandie. 3) Le centre optique O. 4) Loupe, projecteur, appareil photo.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'f5757116-6764-e00d-18f4-0b1cd57dd762';


-- Update set 5 for Physique-Chimie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC PHYSIQUE-CHIMIE — ÉPREUVE 2 — SÉRIE 5

## Épreuve de Physique-Chimie

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Physique-Chimie
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- L''épreuve comporte 4 sections (Électricité, Mécanique, Chimie, Optique et Thermique).
- Chaque section contient 5 exercices notés sur 5 points chacun (total 100 points).
- Montre clairement tous les calculs et le raisonnement.
- Donne toujours les unités. Sois précis dans la rédaction.

---

## SECTION 1 : ÉLECTRICITÉ

**Exercice 1.** _(5 points)_
Un conducteur ohmique de résistance $R = 50\ \Omega$ est soumis à une tension $U = 12$ V.

1. Énoncer la loi d''Ohm. _(1 pt)_
2. Calculer l''intensité du courant qui le traverse. _(1,5 pt)_
3. Calculer la puissance dissipée par effet Joule $P = U \times I$. _(1,5 pt)_
4. Citer un appareil utilisant l''effet Joule. _(1 pt)_

**Exercice 2.** _(5 points)_
Un circuit comporte en série une pile, une lampe L₁ et une lampe L₂. La pile délivre une tension de 4,5 V.

1. Rappeler la loi des tensions dans un circuit en série. _(1 pt)_
2. La tension aux bornes de L₁ est 2 V. Calculer la tension aux bornes de L₂. _(1,5 pt)_
3. Si l''intensité du courant est 0,15 A, calculer la résistance équivalente du circuit. _(1,5 pt)_
4. Que se passe-t-il si L₁ grille ? Justifier. _(1 pt)_

**Exercice 3.** _(5 points)_
Un radiateur électrique de puissance 1 800 W fonctionne sous 220 V.

1. Calculer l''intensité du courant appelé. _(1,5 pt)_
2. Calculer sa résistance. _(1,5 pt)_
3. Calculer l''énergie consommée en 5 heures, en kWh puis en joules. _(2 pts)_

**Exercice 4.** _(5 points)_
On veut mesurer l''intensité du courant traversant une lampe et la tension à ses bornes.

1. Nommer l''appareil qui mesure l''intensité et préciser son branchement. _(1,5 pt)_
2. Nommer l''appareil qui mesure la tension et préciser son branchement. _(1,5 pt)_
3. Sur quels symboles (A, V) sont marqués ces appareils et quelle est leur unité ? _(1 pt)_
4. Quels sont les bornes de branchement d''un ampèremètre ? _(1 pt)_

**Exercice 5.** _(5 points)_
Une installation domestique comporte plusieurs appareils branchés en dérivation.

1. Pourquoi branche-t-on les appareils en dérivation ? _(1,5 pt)_
2. Un four de 2 000 W et des lampes de 200 W fonctionnent simultanément sous 220 V. Calculer l''intensité totale. _(2 pts)_
3. Quel est le rôle d''un disjoncteur ? _(1,5 pt)_

---

## SECTION 2 : MÉCANIQUE

**Exercice 6.** _(5 points)_
Un bus de transport urbain parcourt 90 km en 1,5 h puis 30 km en 0,5 h.

1. Calculer la vitesse moyenne sur la première partie. _(1 pt)_
2. Calculer la vitesse moyenne sur la seconde partie. _(1 pt)_
3. Calculer la vitesse moyenne sur le trajet total. _(1,5 pt)_
4. Donner l''unité SI de la vitesse. _(1,5 pt)_

**Exercice 7.** _(5 points)_
Un ballon de masse 0,4 kg est lancé verticalement vers le haut ($g = 10$ N/kg).

1. Calculer son poids. _(1 pt)_
2. Calculer son énergie cinétique lorsqu''il se déplace à 5 m/s. _(1,5 pt)_
3. Calculer son énergie potentielle lorsqu''il atteint 8 m de hauteur. _(1,5 pt)_
4. Comparer son énergie mécanique au départ et au sommet (sans frottement). _(1 pt)_

**Exercice 8.** _(5 points)_
Une grue soulève une charge de 800 kg d''une hauteur de 20 m en 40 s ($g = 10$ N/kg).

1. Calculer le poids de la charge. _(1 pt)_
2. Calculer le travail de la force de levage. _(1,5 pt)_
3. Calculer la puissance développée. _(1,5 pt)_
4. Préciser si le travail est moteur ou résistant. Justifier. _(1 pt)_

**Exercice 9.** _(5 points)_
Un skieur de masse 60 kg descend une piste. On considère la pression.

1. Définir la pression. _(1 pt)_
2. Les skis ont une surface totale de contact de 0,3 m². Le poids du skieur est 600 N. Calculer la pression exercée sur la neige. _(2 pts)_
3. Pourquoi les skis sont-ils larges ? Justifier physiquement. _(2 pts)_

**Exercice 10.** _(5 points)_
Une bille d''acier de masse volumique 7 800 kg/m³ est plongée dans l''eau ($\rho_{eau} = 1\,000$ kg/m³).

1. Que peut-on dire de la masse volumique de l''acier par rapport à l''eau ? _(1 pt)_
2. La bille coule-t-elle ou flotte-t-elle ? Justifier. _(1,5 pt)_
3. Rappeler la condition générale de flottaison d''un corps dans un liquide. _(1,5 pt)_
4. Citer un corps qui flotte sur l''eau. _(1 pt)_

---

## SECTION 3 : CHIMIE

**Exercice 11.** _(5 points)_
On fait réagir du zinc $Zn$ avec une solution d''acide chlorhydrique $HCl$.

1. Quels sont les produits de cette réaction (il se forme du dichlorure de zinc $ZnCl_2$ et du dihydrogène $H_2$) ? _(1 pt)_
2. Écrire et équilibrer l''équation de la réaction. _(2 pts)_
3. Comment peut-on identifier le dihydrogène dégagé ? _(1 pt)_
4. Énoncer la loi de conservation de la masse. _(1 pt)_

**Exercice 12.** _(5 points)_
Un atome de carbone a pour symbole $^{12}_6C$.

1. Donner son numéro atomique $Z$ et son nombre de masse $A$. _(1,5 pt)_
2. Calculer son nombre de neutrons. _(1 pt)_
3. Combien a-t-il d''électrons ? _(1 pt)_
4. Donner sa structure électronique (K, L). _(1,5 pt)_

**Exercice 13.** _(5 points)_
On prépare une solution en dissolvant 30 g de sucre dans de l''eau pour obtenir 250 mL.

1. Définir soluté et solvant. _(1,5 pt)_
2. Calculer la concentration massique en g/L. _(2 pts)_
3. On ajoute 250 mL d''eau à la solution. Calculer la nouvelle concentration. _(1,5 pt)_

**Exercice 14.** _(5 points)_
On dispose de trois solutions : jus de citron (pH = 2,5), eau pure (pH = 7), eau de javel (pH = 12).

1. Classer ces solutions selon leur caractère acide, neutre ou basique. _(1,5 pt)_
2. Préciser, en justifiant, laquelle est la plus acide. _(1,5 pt)_
3. Quel indicateur coloré permet de repérer un milieu basique ? Donner sa couleur. _(2 pts)_

**Exercice 15.** _(5 points)_
L''atome de sodium a pour numéro atomique $Z = 11$ et pour nombre de masse $A = 23$.

1. Déterminer le nombre de protons, de neutrons et d''électrons. _(1,5 pt)_
2. Donner sa structure électronique (K, L, M). _(1,5 pt)_
3. Combien d''électrons possède-t-il sur sa couche externe ? _(1 pt)_
4. Donner le nom de l''ion qu''il forme en perdant un électron et sa formule. _(1 pt)_

---

## SECTION 4 : OPTIQUE ET THERMIQUE

**Exercice 16.** _(5 points)_
Un rayon lumineux arrive sur un miroir plan avec un angle de 25° avec la normale.

1. Rappeler la première loi de la réflexion. _(1 pt)_
2. Calculer l''angle de réflexion. _(1 pt)_
3. Calculer l''angle entre le rayon incident et le miroir. _(1,5 pt)_
4. Que vaut l''angle entre le rayon incident et le rayon réfléchi ? _(1,5 pt)_

**Exercice 17.** _(5 points)_
On verse 300 g d''eau froide à 10 °C dans une casserole. Capacité thermique massique de l''eau : $c = 4\,180$ J/kg·K.

1. Définir la quantité de chaleur. _(1 pt)_
2. Convertir 300 g en kg. _(0,5 pt)_
3. Calculer la chaleur nécessaire pour porter l''eau à 100 °C. _(2 pts)_
4. Donner l''unité de la chaleur massique. _(1,5 pt)_

**Exercice 18.** _(5 points)_
On étudie la dilatation et les changements d''état de l''eau.

1. À quelle température l''eau bout-elle à pression normale ? _(1 pt)_
2. Définir la liquéfaction (condensation). _(1,5 pt)_
3. Comment appelle-t-on le passage direct de l''état solide à l''état gazeux ? _(1 pt)_
4. Citer un exemple de vaporisation dans la vie courante. _(1,5 pt)_

**Exercice 19.** _(5 points)_
Une lentille convergente de distance focale 10 cm.

1. Définir la distance focale. _(1,5 pt)_
2. Où se forme l''image d''un objet très éloigné ? _(1,5 pt)_
3. Donner la caractéristique de l''image d''un objet placé à l''infini (renversée, réelle, réduite). _(1 pt)_
4. Citer une utilisation de la lentille convergente. _(1 pt)_

**Exercice 20.** _(5 points)_
On étudie la conservation de l''énergie dans une machine.

1. Définir le rendement. _(1,5 pt)_
2. Un moteur reçoit une énergie de 5 000 J et fournit un travail utile de 4 000 J. Calculer son rendement en pourcentage. _(2 pts)_
3. Que devient l''énergie perdue ? _(1,5 pt)_

---

## BARÈME INDICATIF

| Section              | Exercices | Points par exercice | Total   |
| -------------------- | --------- | ------------------- | ------- |
| Électricité          | 1–5       | 5                   | 25      |
| Mécanique            | 6–10      | 5                   | 25      |
| Chimie               | 11–15     | 5                   | 25      |
| Optique et thermique | 16–20     | 5                   | 25      |
| **Total**            |           |                     | **100** |

---

## CORRIGÉ TYPE

**Ex. 1.** 1) $U = R \times I$. 2) $I = \frac{12}{50} = 0,24$ A. 3) $P = 12 \times 0,24 = 2,88$ W. 4) Fer à repasser, radiateur, grille-pain.

**Ex. 2.** 1) La somme des tensions aux bornes des dipôles en série égale la tension du générateur. 2) $U_{L2} = 4,5 - 2 = 2,5$ V. 3) $R = \frac{4,5}{0,15} = 30\ \Omega$. 4) Le circuit est ouvert, le courant ne passe plus (L₂ s''éteint).

**Ex. 3.** 1) $I = \frac{1800}{220} \approx 8,18$ A. 2) $R = \frac{220}{8,18} \approx 26,9\ \Omega$. 3) $E = 1,8 \times 5 = 9$ kWh $= 9 \times 3,6\times10^6 = 3,24\times10^7$ J.

**Ex. 4.** 1) Ampèremètre, en série. 2) Voltmètre, en dérivation. 3) Symbole A (ampère), V (volt). 4) Bornes COM et mA (ou A).

**Ex. 5.** 1) Pour que chaque appareil soit soumis à la tension du secteur et puisse fonctionner indépendamment. 2) $I_{total} = \frac{2200+200}{220} = \frac{2400}{220} \approx 10,9$ A. 3) Protéger l''installation contre les surcharges et les courts-circuits.

**Ex. 6.** 1) $v_1 = \frac{90}{1,5} = 60$ km/h. 2) $v_2 = \frac{30}{0,5} = 60$ km/h. 3) $v = \frac{120}{2} = 60$ km/h. 4) m/s.

**Ex. 7.** 1) $P = 0,4 \times 10 = 4$ N. 2) $E_c = \frac{1}{2} \times 0,4 \times 25 = 5$ J. 3) $E_p = 0,4 \times 10 \times 8 = 32$ J. 4) Elles sont égales (conservation de l''énergie mécanique).

**Ex. 8.** 1) $P = 800 \times 10 = 8000$ N. 2) $W = 8000 \times 20 = 160\,000$ J. 3) $P = \frac{160\,000}{40} = 4\,000$ W. 4) Moteur, car le déplacement est dans le sens de la force.

**Ex. 9.** 1) Pression $= \frac{\text{force}}{\text{surface}}$. 2) $P = \frac{600}{0,3} = 2\,000$ Pa. 3) La grande surface réduit la pression, évite de s''enfoncer dans la neige.

**Ex. 10.** 1) Elle est bien supérieure (7 800 > 1 000). 2) Elle coule ($\rho_{acier} > \rho_{eau}$). 3) Un corps flotte si sa masse volumique est inférieure à celle du liquide. 4) Le bois, la glace, un bateau.

**Ex. 11.** 1) Produits : $ZnCl_2$ et $H_2$. 2) $Zn + 2HCl \rightarrow ZnCl_2 + H_2$. 3) Par la production d''une petite détonation à l''approche d''une flamme. 4) La masse totale des produits égale celle des réactifs.

**Ex. 12.** 1) $Z = 6$, $A = 12$. 2) $N = 12 - 6 = 6$ neutrons. 3) 6 électrons. 4) (K)² (L)⁴.

**Ex. 13.** 1) Soluté : espèce dissoute ; solvant : liquide qui dissout. 2) $C_m = \frac{30}{0,25} = 120$ g/L. 3) $C_m'' = \frac{30}{0,5} = 60$ g/L.

**Ex. 14.** 1) Citron acide, eau pure neutre, javel basique. 2) Le citron (pH le plus faible, 2,5). 3) Le BBT donne une couleur bleue dans un milieu basique.

**Ex. 15.** 1) 11 protons, 12 neutrons ($23-11$), 11 électrons. 2) (K)² (L)⁸ (M)¹. 3) 1 électron. 4) Ion sodium $Na^+$.

**Ex. 16.** 1) L''angle de réflexion est égal à l''angle d''incidence. 2) $r = 25°$. 3) $90 - 25 = 65°$. 4) $25 + 25 = 50°$.

**Ex. 17.** 1) Énergie échangée lors d''une variation de température. 2) 0,3 kg. 3) $Q = 0,3 \times 4180 \times 90 = 112\,860$ J. 4) J/(kg·K).

**Ex. 18.** 1) 100 °C. 2) Passage de l''état gazeux à l''état liquide. 3) La sublimation. 4) Séchage du linge, évaporation de l''eau d''une mare.

**Ex. 19.** 1) Distance entre le centre optique et le foyer. 2) Au foyer image F''. 3) Réelle, renversée, réduite. 4) Loupe, appareil photo, lunette astronomique.

**Ex. 20.** 1) $\eta = \frac{\text{énergie utile}}{\text{énergie reçue}}$. 2) $\eta = \frac{4000}{5000} = 0,8 = 80\%$. 3) Elle est dissipée en chaleur (pertes).
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'd3cfc2a9-f83b-7ffe-a0e1-b46a8b3a6b74';


-- Update set 6 for Physique-Chimie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC PHYSIQUE-CHIMIE — ÉPREUVE 2 — SÉRIE 6

## Épreuve de Physique-Chimie

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Physique-Chimie
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- L''épreuve comporte 4 sections (Électricité, Mécanique, Chimie, Optique et Thermique).
- Chaque section contient 5 exercices notés sur 5 points chacun (total 100 points).
- Montre clairement tous les calculs et le raisonnement.
- Donne toujours les unités. Sois précis dans la rédaction.

---

## SECTION 1 : ÉLECTRICITÉ

**Exercice 1.** _(5 points)_
Une résistance de 100 Ω est parcourue par un courant de 0,1 A.

1. Calculer la tension à ses bornes. _(1,5 pt)_
2. Calculer la puissance dissipée. _(1,5 pt)_
3. Calculer l''énergie dissipée en joules pendant 10 minutes. _(2 pts)_

**Exercice 2.** _(5 points)_
Deux résistances $R_1 = 6\ \Omega$ et $R_2 = 12\ \Omega$ sont branchées en dérivation aux bornes d''une pile de 6 V.

1. Calculer l''intensité du courant dans chaque branche. _(2 pts)_
2. Calculer l''intensité totale du courant. _(1,5 pt)_
3. Calculer la résistance équivalente du montage. _(1,5 pt)_

**Exercice 3.** _(5 points)_
Un téléviseur de 150 W fonctionne 4 h par jour.

1. Calculer l''énergie consommée par jour en kWh. _(1,5 pt)_
2. Calculer l''énergie consommée en 30 jours. _(1,5 pt)_
3. Si le kWh coûte 100 FCFA, calculer le coût mensuel. _(2 pts)_

**Exercice 4.** _(5 points)_
Un circuit en série contient deux lampes identiques et une pile de 9 V.

1. Calculer la tension aux bornes de chaque lampe. _(1,5 pt)_
2. L''intensité du courant est 0,3 A. Calculer la résistance de chaque lampe. _(2 pts)_
3. En dérivation, que deviendrait la tension aux bornes de chaque lampe ? _(1,5 pt)_

**Exercice 5.** _(5 points)_
Un générateur débite un courant de 2 A pendant 5 minutes.

1. Rappeler la relation entre la charge électrique $Q$, l''intensité $I$ et le temps $t$. _(1 pt)_
2. Convertir 5 minutes en secondes. _(0,5 pt)_
3. Calculer la quantité d''électricité transportée en coulombs. _(1,5 pt)_
4. Donner la valeur de la charge élémentaire et préciser la charge portée par un électron. _(2 pts)_

---

## SECTION 2 : MÉCANIQUE

**Exercice 6.** _(5 points)_
Une voiture roule à la vitesse constante de 25 m/s pendant 2 minutes.

1. Convertir la vitesse en km/h. _(1,5 pt)_
2. Convertir le temps en secondes. _(0,5 pt)_
3. Calculer la distance parcourue. _(1,5 pt)_
4. Que signifie "vitesse constante" ? _(1,5 pt)_

**Exercice 7.** _(5 points)_
Un objet de 500 g est placé à une hauteur de 12 m ($g = 10$ N/kg).

1. Convertir 500 g en kg. _(0,5 pt)_
2. Calculer son poids. _(1,5 pt)_
3. Calculer son énergie potentielle. _(1,5 pt)_
4. S''il tombe sans frottement, quelle sera son énergie cinétique juste avant de toucher le sol ? Justifier. _(1,5 pt)_

**Exercice 8.** _(5 points)_
Une force de 40 N déplace un objet de 5 m dans la direction et le sens de la force.

1. Rappeler la formule du travail d''une force parallèle au déplacement. _(1 pt)_
2. Calculer le travail effectué. _(1,5 pt)_
3. Ce travail est-il moteur ou résistant ? Justifier. _(1,5 pt)_
4. Donner l''unité du travail. _(1 pt)_

**Exercice 9.** _(5 points)_
Un plongeur descend à une profondeur de 10 m. La pression due à l''eau vaut $\rho g h$ avec $\rho = 1\,000$ kg/m³ et $g = 10$ N/kg.

1. Calculer la pression due à l''eau à cette profondeur. _(2 pts)_
2. Ajouter la pression atmosphérique (100 000 Pa) pour obtenir la pression totale. _(1,5 pt)_
3. Que constate-t-on sur la pression quand la profondeur augmente ? _(1,5 pt)_

**Exercice 10.** _(5 points)_
Un cube en bois de 200 g flotte sur l''eau.

1. Rappeler la condition de flottaison. _(1,5 pt)_
2. Quel est le poids de la poussée d''Archimède qui s''exerce sur le cube ? Justifier. _(2 pts)_
3. Comment s''appelle cette force et dans quel sens agit-elle ? _(1,5 pt)_

---

## SECTION 3 : CHIMIE

**Exercice 11.** _(5 points)_
On brûle 12 g de carbone dans le dioxygène ; il se forme 44 g de dioxyde de carbone.

1. Écrire l''équation de la combustion du carbone : $C + O_2 \rightarrow CO_2$. _(1,5 pt)_
2. Déterminer la masse de dioxygène consommée en appliquant la conservation de la masse. _(2 pts)_
3. Énoncer la loi de Lavoisier. _(1,5 pt)_

**Exercice 12.** _(5 points)_
Un atome d''azote a pour symbole $^{14}_7N$.

1. Donner $Z$ et $A$. _(1 pt)_
2. Calculer le nombre de neutrons. _(1 pt)_
3. Donner le nombre d''électrons et sa structure électronique (K, L). _(1,5 pt)_
4. Combien d''électrons de valence possède-t-il ? _(1,5 pt)_

**Exercice 13.** _(5 points)_
On dissout 40 g de sel dans 1 L d''eau.

1. Calculer la concentration massique en g/L. _(1,5 pt)_
2. On évapore la moitié de l''eau. Que devient la concentration ? Justifier. _(2 pts)_
3. Citer deux méthodes pour séparer les constituants d''un mélange. _(1,5 pt)_

**Exercice 14.** _(5 points)_
On teste une solution avec du papier pH ; il devient rouge.

1. Que signifie cette couleur ? Quel est le caractère de la solution ? _(1,5 pt)_
2. Donner deux exemples de solutions acides de la vie courante. _(1,5 pt)_
3. Comment neutraliser cette solution ? Écrire le principe. _(2 pts)_

**Exercice 15.** _(5 points)_
L''atome de chlore a $Z = 17$ et sa configuration se termine par (M)⁷.

1. Donner sa structure électronique complète. _(1,5 pt)_
2. Combien d''électrons externes possède-t-il ? _(1 pt)_
3. Quel ion forme-t-il en gagnant un électron ? Donner sa formule. _(1,5 pt)_
4. Pourquoi les gaz nobles (ex. l''argon) sont-ils stables ? _(1 pt)_

---

## SECTION 4 : OPTIQUE ET THERMIQUE

**Exercice 16.** _(5 points)_
Un rayon lumineux arrive sur un miroir plan sous un angle de 35° avec le miroir.

1. Calculer l''angle d''incidence. _(1,5 pt)_
2. En déduire l''angle de réflexion. _(1,5 pt)_
3. Représenter le schéma de la réflexion. _(2 pts)_

**Exercice 17.** _(5 points)_
On chauffe 1,5 kg d''aluminium. Capacité thermique massique de l''aluminium : $c = 900$ J/kg·K.

1. Calculer la chaleur nécessaire pour élever sa température de 30 °C à 90 °C. _(2,5 pt)_
2. Comparer cette chaleur à celle qu''il faudrait pour la même masse d''eau ($c = 4\,180$ J/kg·K). Conclure. _(2,5 pt)_

**Exercice 18.** _(5 points)_
On étudie les changements d''état de l''eau.

1. Nommer les changements d''état : solide→liquide, liquide→gazeux, gazeux→liquide. _(1,5 pt)_
2. À quelle température l''eau pure gèle-t-elle ? _(1 pt)_
3. Pendant le changement d''état, la température reste-t-elle constante ? Justifier. _(1,5 pt)_
4. Citer un facteur qui influe sur la température d''ébullition. _(1 pt)_

**Exercice 19.** _(5 points)_
Une lentille convergente de distance focale 5 cm forme l''image d''un objet placé loin.

1. Où se forme l''image ? _(1,5 pt)_
2. Calculer la puissance de la lentille $C = \frac{1}{f}$ (f en mètres). _(1,5 pt)_
3. Donner l''unité de la puissance d''une lentille. _(1 pt)_
4. Citer une application des lentilles convergentes. _(1 pt)_

**Exercice 20.** _(5 points)_
Une centrale électrique transforme une énergie en électricité.

1. Citer les différentes formes d''énergie. _(1,5 pt)_
2. Donner la relation entre l''énergie, la puissance et le temps. _(1 pt)_
3. Une éolienne a une puissance de 2 000 kW. Calculer l''énergie fournie en 6 h en kWh. _(1,5 pt)_
4. Citer deux sources d''énergie renouvelable. _(1 pt)_

---

## BARÈME INDICATIF

| Section              | Exercices | Points par exercice | Total   |
| -------------------- | --------- | ------------------- | ------- |
| Électricité          | 1–5       | 5                   | 25      |
| Mécanique            | 6–10      | 5                   | 25      |
| Chimie               | 11–15     | 5                   | 25      |
| Optique et thermique | 16–20     | 5                   | 25      |
| **Total**            |           |                     | **100** |

---

## CORRIGÉ TYPE

**Ex. 1.** 1) $U = RI = 100 \times 0,1 = 10$ V. 2) $P = UI = 10 \times 0,1 = 1$ W. 3) $E = Pt = 1 \times 600 = 600$ J (10 min = 600 s).

**Ex. 2.** 1) $I_1 = \frac{6}{6} = 1$ A ; $I_2 = \frac{6}{12} = 0,5$ A. 2) $I = 1,5$ A. 3) $R_{eq} = \frac{6}{1,5} = 4\ \Omega$.

**Ex. 3.** 1) $E = 0,15 \times 4 = 0,6$ kWh/jour. 2) $E = 0,6 \times 30 = 18$ kWh. 3) Coût $= 18 \times 100 = 1\,800$ FCFA.

**Ex. 4.** 1) $U = \frac{9}{2} = 4,5$ V. 2) $R = \frac{4,5}{0,3} = 15\ \Omega$ chacune. 3) Chaque lampe recevrait 9 V (tension complète en dérivation).

**Ex. 5.** 1) $Q = I \times t$. 2) $5 \times 60 = 300$ s. 3) $Q = 2 \times 300 = 600$ C. 4) $e = 1,6\times10^{-19}$ C ; l''électron porte une charge négative $-e$.

**Ex. 6.** 1) $25 \times 3,6 = 90$ km/h. 2) $2 \times 60 = 120$ s. 3) $d = 25 \times 120 = 3\,000$ m. 4) La vitesse ne change pas au cours du temps (mouvement uniforme).

**Ex. 7.** 1) 0,5 kg. 2) $P = 0,5 \times 10 = 5$ N. 3) $E_p = 0,5 \times 10 \times 12 = 60$ J. 4) 60 J (toute l''énergie potentielle se convertit en cinétique par conservation).

**Ex. 8.** 1) $W = F \times d$. 2) $W = 40 \times 5 = 200$ J. 3) Moteur, car force et déplacement ont le même sens. 4) Le joule (J).

**Ex. 9.** 1) $P = 1000 \times 10 \times 10 = 100\,000$ Pa. 2) $P_{tot} = 100\,000 + 100\,000 = 200\,000$ Pa. 3) La pression augmente avec la profondeur.

**Ex. 10.** 1) Un corps flotte si sa masse volumique est inférieure à celle du liquide. 2) Elle vaut le poids du cube, soit $P = 0,2 \times 10 = 2$ N (le cube est en équilibre). 3) La poussée d''Archimède, verticale vers le haut.

**Ex. 11.** 1) $C + O_2 \rightarrow CO_2$. 2) $m_{O_2} = 44 - 12 = 32$ g. 3) Rien ne se perd, rien ne se crée : la masse se conserve.

**Ex. 12.** 1) $Z = 7$, $A = 14$. 2) $N = 14 - 7 = 7$ neutrons. 3) 7 électrons ; (K)² (L)⁵. 4) 5 électrons de valence.

**Ex. 13.** 1) $C_m = \frac{40}{1} = 40$ g/L. 2) La concentration double (80 g/L) car le volume est divisé par 2. 3) Décantation, filtration, distillation.

**Ex. 14.** 1) Milieu acide (pH < 7). 2) Jus de citron, vinaigre. 3) Par ajout d''une base ; réaction de neutralisation produisant de l''eau et un sel.

**Ex. 15.** 1) (K)² (L)⁸ (M)⁷. 2) 7 électrons externes. 3) Ion chlorure $Cl^-$. 4) Leur couche externe est saturée (8 électrons), configuration stable.

**Ex. 16.** 1) $i = 90 - 35 = 55°$. 2) $r = 55°$. 3) Schéma : normale, rayon incident, rayon réfléchi.

**Ex. 17.** 1) $\Delta T = 60$ K ; $Q = 1,5 \times 900 \times 60 = 81\,000$ J. 2) Eau : $Q = 1,5 \times 4180 \times 60 = 376\,200$ J ; l''eau absorbe plus de chaleur (grande chaleur massique).

**Ex. 18.** 1) Fusion, vaporisation, liquéfaction. 2) 0 °C. 3) Oui, elle reste constante pendant le changement d''état. 4) La pression atmosphérique (altitude).

**Ex. 19.** 1) Au foyer image F''. 2) $C = \frac{1}{0,05} = 20$ δ. 3) La dioptrie (δ). 4) Loupe, projecteur, appareil photo.

**Ex. 20.** 1) Mécanique, chimique, électrique, thermique, lumineuse. 2) $E = P \times t$. 3) $E = 2000 \times 6 = 12\,000$ kWh. 4) Solaire, éolienne, hydraulique.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'e0c25c42-3c0b-6918-91ca-a94e8dfa880d';


-- Update set 7 for Physique-Chimie
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC PHYSIQUE-CHIMIE — ÉPREUVE 2 — SÉRIE 7

## Épreuve de Physique-Chimie

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Physique-Chimie
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- L''épreuve comporte 4 sections (Électricité, Mécanique, Chimie, Optique et Thermique).
- Chaque section contient 5 exercices notés sur 5 points chacun (total 100 points).
- Montre clairement tous les calculs et le raisonnement.
- Donne toujours les unités. Sois précis dans la rédaction.

---

## SECTION 1 : ÉLECTRICITÉ

**Exercice 1.** _(5 points)_
Un conducteur ohmique de résistance 25 Ω est soumis à une tension de 5 V.

1. Calculer l''intensité du courant. _(1,5 pt)_
2. Calculer la puissance consommée. _(1,5 pt)_
3. Calculer l''énergie consommée en 2 heures en joules puis en Wh. _(2 pts)_

**Exercice 2.** _(5 points)_
Trois résistances $R_1 = 2\ \Omega$, $R_2 = 3\ \Omega$, $R_3 = 5\ \Omega$ sont montées en série.

1. Calculer la résistance équivalente. _(1,5 pt)_
2. Le circuit est alimenté sous 20 V. Calculer l''intensité du courant. _(1,5 pt)_
3. Calculer la tension aux bornes de $R_1$. _(2 pts)_

**Exercice 3.** _(5 points)_
Un climatiseur de 1 500 W fonctionne 8 h par jour.

1. Calculer l''énergie consommée par jour en kWh. _(1,5 pt)_
2. Calculer l''énergie consommée en un mois (30 jours). _(1,5 pt)_
3. Le kWh coûte 110 FCFA. Calculer le coût mensuel. _(2 pts)_

**Exercice 4.** _(5 points)_
Une pile de 9 V alimente un circuit comportant une lampe et une résistance de 18 Ω en série. L''intensité est 0,25 A.

1. Calculer la résistance équivalente du circuit. _(1,5 pt)_
2. Calculer la résistance de la lampe. _(1,5 pt)_
3. Calculer la tension aux bornes de la résistance. _(2 pts)_

**Exercice 5.** _(5 points)_
Un accumulateur délivre un courant de 0,5 A pendant 2 h.

1. Convertir 2 h en secondes. _(0,5 pt)_
2. Calculer la quantité d''électricité transportée en coulombs. _(1,5 pt)_
3. Préciser la charge élémentaire et la charge du proton. _(1,5 pt)_
4. Donner la définition de l''intensité du courant. _(1,5 pt)_

---

## SECTION 2 : MÉCANIQUE

**Exercice 6.** _(5 points)_
Un coureur parcourt 10 km en 40 minutes.

1. Convertir 40 minutes en heures. _(1 pt)_
2. Calculer sa vitesse moyenne en km/h. _(1,5 pt)_
3. Convertir cette vitesse en m/s. _(1,5 pt)_
4. Donner l''unité SI de la vitesse. _(1 pt)_

**Exercice 7.** _(5 points)_
Un ballon de 0,5 kg est lancé avec une vitesse de 6 m/s.

1. Calculer son énergie cinétique. _(1,5 pt)_
2. Ce ballon s''élève ensuite de 4 m. Calculer son énergie potentielle ($g = 10$ N/kg). _(1,5 pt)_
3. Calculer l''énergie mécanique (en négligeant les frottements). _(2 pts)_

**Exercice 8.** _(5 points)_
Un ouvrier soulève un sac de 20 kg à une hauteur de 1,5 m en 3 s ($g = 10$ N/kg).

1. Calculer le poids du sac. _(1 pt)_
2. Calculer le travail effectué. _(1,5 pt)_
3. Calculer la puissance développée. _(1,5 pt)_
4. Préciser la nature (moteur/résistant) de ce travail. _(1 pt)_

**Exercice 9.** _(5 points)_
Une presse applique une force de 1 200 N sur une surface de 0,02 m².

1. Calculer la pression exercée. _(2 pts)_
2. Convertir cette pression en kPa. _(1,5 pt)_
3. Donner l''unité SI de la pression et sa définition. _(1,5 pt)_

**Exercice 10.** _(5 points)_
Un morceau de liège de masse volumique 240 kg/m³ flotte sur l''eau (1 000 kg/m³).

1. Justifier la flottaison du liège. _(1,5 pt)_
2. Rappeler la condition générale de flottaison. _(1,5 pt)_
3. Que se passerait-il si on plongeait un morceau de fer (7 800 kg/m³) ? Justifier. _(2 pts)_

---

## SECTION 3 : CHIMIE

**Exercice 11.** _(5 points)_
On réalise la combustion complète de 6 g de carbone dans 16 g de dioxygène.

1. Écrire l''équation de la réaction. _(1,5 pt)_
2. Calculer la masse de dioxyde de carbone formée en utilisant la conservation de la masse. _(2 pts)_
3. Vérifier la loi de conservation de la masse. _(1,5 pt)_

**Exercice 12.** _(5 points)_
L''atome d''oxygène a pour symbole $^{16}_8O$.

1. Donner $Z$ et $A$. _(1 pt)_
2. Calculer le nombre de neutrons. _(1 pt)_
3. Donner sa structure électronique (K, L). _(1,5 pt)_
4. Combien d''électrons de valence possède-t-il ? _(1,5 pt)_

**Exercice 13.** _(5 points)_
On prépare une solution sucrée en dissolvant 60 g de sucre dans 1,5 L d''eau.

1. Calculer la concentration massique en g/L. _(1,5 pt)_
2. On prélève 300 mL. Quelle masse de sucre contient cet échantillon ? _(2 pts)_
3. Citer une technique de séparation d''un mélange hétérogène. _(1,5 pt)_

**Exercice 14.** _(5 points)_
Une solution a un pH de 8,5.

1. Cette solution est-elle acide, neutre ou basique ? Justifier. _(1,5 pt)_
2. Citer deux solutions basiques de la vie courante. _(1,5 pt)_
3. Comment procéder pour mesurer précisément le pH ? _(2 pts)_

**Exercice 15.** _(5 points)_
L''atome de magnésium a $Z = 12$.

1. Donner sa structure électronique (K, L, M). _(1,5 pt)_
2. Combien d''électrons de valence possède-t-il ? _(1 pt)_
3. Quel ion forme-t-il en perdant deux électrons ? Donner sa formule. _(1,5 pt)_
4. Donner la formule de la molécule de dichlore formée de deux atomes de chlore. _(1 pt)_

---

## SECTION 4 : OPTIQUE ET THERMIQUE

**Exercice 16.** _(5 points)_
Un rayon lumineux arrive sur un miroir plan avec un angle d''incidence de 45°.

1. Énoncer la loi de la réflexion concernant les angles. _(1,5 pt)_
2. Calculer l''angle de réflexion. _(1 pt)_
3. Calculer l''angle entre le rayon réfléchi et le miroir. _(1,5 pt)_
4. Représenter le schéma correspondant. _(1 pt)_

**Exercice 17.** _(5 points)_
On chauffe 4 kg d''eau de 15 °C à 35 °C ($c = 4\,180$ J/kg·K).

1. Calculer la variation de température. _(1 pt)_
2. Calculer la quantité de chaleur absorbée. _(2 pts)_
3. Donner l''unité SI de la chaleur massique. _(1 pt)_
4. Citer un appareil utilisant le transfert de chaleur. _(1 pt)_

**Exercice 18.** _(5 points)_
On étudie la vaporisation de l''eau.

1. Définir la vaporisation et citer ses deux modes. _(1,5 pt)_
2. Quelle est la différence entre ébullition et évaporation ? _(2 pt)_
3. Citer un exemple d''évaporation dans la vie quotidienne. _(1,5 pt)_

**Exercice 19.** _(5 points)_
Une lentille convergente a une distance focale de 8 cm.

1. Calculer sa puissance en dioptries. _(1,5 pt)_
2. Un objet est placé très loin de la lentille. Où se forme l''image ? _(1,5 pt)_
3. Caractériser cette image. _(1 pt)_
4. Citer un instrument utilisant une lentille convergente. _(1 pt)_

**Exercice 20.** _(5 points)_
On étudie le rendement d''une installation.

1. Définir le rendement d''une machine. _(1,5 pt)_
2. Une machine reçoit 8 000 J et fournit un travail utile de 6 000 J. Calculer le rendement en %. _(2 pts)_
3. Pourquoi le rendement est-il toujours inférieur à 100 % ? _(1,5 pt)_

---

## BARÈME INDICATIF

| Section              | Exercices | Points par exercice | Total   |
| -------------------- | --------- | ------------------- | ------- |
| Électricité          | 1–5       | 5                   | 25      |
| Mécanique            | 6–10      | 5                   | 25      |
| Chimie               | 11–15     | 5                   | 25      |
| Optique et thermique | 16–20     | 5                   | 25      |
| **Total**            |           |                     | **100** |

---

## CORRIGÉ TYPE

**Ex. 1.** 1) $I = \frac{5}{25} = 0,2$ A. 2) $P = 5 \times 0,2 = 1$ W. 3) $E = 1 \times 7200 = 7\,200$ J $= 2$ Wh.

**Ex. 2.** 1) $R_{eq} = 2+3+5 = 10\ \Omega$. 2) $I = \frac{20}{10} = 2$ A. 3) $U_1 = 2 \times 2 = 4$ V.

**Ex. 3.** 1) $E = 1,5 \times 8 = 12$ kWh/jour. 2) $E = 12 \times 30 = 360$ kWh. 3) $360 \times 110 = 39\,600$ FCFA.

**Ex. 4.** 1) $R_{eq} = \frac{9}{0,25} = 36\ \Omega$. 2) $R_{lampe} = 36 - 18 = 18\ \Omega$. 3) $U_R = 0,25 \times 18 = 4,5$ V.

**Ex. 5.** 1) $2 \times 3600 = 7\,200$ s. 2) $Q = 0,5 \times 7200 = 3\,600$ C. 3) $e = 1,6\times10^{-19}$ C ; proton porte $+e$. 4) Débit de charges par unité de temps ($I = Q/t$).

**Ex. 6.** 1) $\frac{40}{60} = \frac{2}{3}$ h. 2) $v = \frac{10}{2/3} = 15$ km/h. 3) $15 \div 3,6 \approx 4,17$ m/s. 4) m/s.

**Ex. 7.** 1) $E_c = \frac{1}{2} \times 0,5 \times 36 = 9$ J. 2) $E_p = 0,5 \times 10 \times 4 = 20$ J. 3) $E_m = 9 + 20 = 29$ J.

**Ex. 8.** 1) $P = 20 \times 10 = 200$ N. 2) $W = 200 \times 1,5 = 300$ J. 3) $P = \frac{300}{3} = 100$ W. 4) Moteur (force et déplacement de même sens).

**Ex. 9.** 1) $P = \frac{1200}{0,02} = 60\,000$ Pa. 2) $60$ kPa. 3) Le pascal (Pa) ; $P = F/S$.

**Ex. 10.** 1) $\rho_{liège} < \rho_{eau}$ (240 < 1000). 2) Un corps flotte si sa masse volumique est inférieure à celle du liquide. 3) Le fer coule car 7 800 > 1 000 kg/m³.

**Ex. 11.** 1) $C + O_2 \rightarrow CO_2$. 2) $m_{CO_2} = 6 + 16 = 22$ g. 3) Masse réactifs = 6 + 16 = 22 g = masse produit. ✓

**Ex. 12.** 1) $Z = 8$, $A = 16$. 2) $N = 16 - 8 = 8$ neutrons. 3) (K)² (L)⁶. 4) 6 électrons de valence.

**Ex. 13.** 1) $C_m = \frac{60}{1,5} = 40$ g/L. 2) $m = 40 \times 0,3 = 12$ g. 3) Décantation ou filtration.

**Ex. 14.** 1) Basique car pH > 7. 2) Eau de javel, savon, détergent. 3) Avec un pH-mètre (électronique).

**Ex. 15.** 1) (K)² (L)⁸ (M)². 2) 2 électrons de valence. 3) Ion magnésium $Mg^{2+}$. 4) $Cl_2$.

**Ex. 16.** 1) L''angle de réflexion est égal à l''angle d''incidence. 2) $r = 45°$. 3) $90 - 45 = 45°$. 4) Schéma avec la normale et les rayons.

**Ex. 17.** 1) $\Delta T = 35 - 15 = 20$ K. 2) $Q = 4 \times 4180 \times 20 = 334\,400$ J. 3) J/(kg·K). 4) Radiateur, fer à repasser, bouilloire.

**Ex. 18.** 1) Passage liquide → gazeux ; ébullition et évaporation. 2) L''ébullition a lieu à température fixe dans toute la masse ; l''évaporation a lieu à la surface à toute température. 3) Séchage du linge.

**Ex. 19.** 1) $C = \frac{1}{0,08} = 12,5$ δ. 2) Au foyer image F''. 3) Réelle, renversée, réduite. 4) Loupe, appareil photo.

**Ex. 20.** 1) Rapport de l''énergie utile sur l''énergie reçue. 2) $\eta = \frac{6000}{8000} = 0,75 = 75\%$. 3) Car une partie de l''énergie est perdue (frottements, chaleur).
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'e1c59ae8-0d34-8e9a-dd2a-7e35fdd1b7cf';


-- BEPC — Anglais — Grammar Essentials
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fdd768f0-5ff2-4858-7654-e6bb11bfe441', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC — Anglais — Grammar Essentials',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Anglais — Grammar Essentials

**Niveau :** Troisième — BEPC
**Matière :** Anglais (English as a Foreign Language)

## Objectifs d''apprentissage

At the end of this lesson, you should be able to:

- use the main English tenses (present, past, future) correctly;
- form and use the active and passive voice;
- build conditional sentences (types 1, 2 and 3);
- change direct speech into reported speech;
- choose the correct prepositions, articles and question tags.

---

## 1. The Main Tenses

### 1.1 Present Simple

Used for habits, facts and routines.

- **Form:** subject + base verb (+ _s_ for he/she/it).
- _She **goes** to school every day._
- _Water **boils** at 100°C._

### 1.2 Present Continuous

Used for actions happening now or temporary situations.

- **Form:** _am / is / are_ + verb + _-ing_.
- _They **are playing** football now._

### 1.3 Past Simple

Used for finished actions in the past.

- **Form:** regular verbs + _-ed_; irregular verbs must be learned.
- _We **visited** the museum yesterday._ / _He **went** home._

### 1.4 Present Perfect

Used for actions that happened at an unspecified time or continue to the present.

- **Form:** _have / has_ + past participle.
- _I **have finished** my homework._ / _She **has lived** here for ten years._

### 1.5 Past Continuous and Past Perfect

- Past continuous: _was / were_ + _-ing_ — an action in progress in the past: _While I **was walking**, it started to rain._
- Past perfect: _had_ + past participle — an action before another past action: _When I arrived, the train **had left**._

### 1.6 Future (will / going to)

- _Will_ for promises and spontaneous decisions: _I **will help** you._
- _Going to_ for plans and predictions with evidence: _Look at the clouds! It **is going to rain**._

---

## 2. The Passive Voice

We use the passive when we want to focus on the action or the object, not the doer.

- **Form:** _be_ (in the correct tense) + past participle.

| Tense          | Active                         | Passive                               |
| -------------- | ------------------------------ | ------------------------------------- |
| Present simple | The chef cooks the meal.       | The meal is cooked by the chef.       |
| Past simple    | The police arrested the thief. | The thief was arrested by the police. |
| Future         | They will repair the roof.     | The roof will be repaired.            |
| Present perf.  | They have painted the house.   | The house has been painted.           |

**Method:** the object of the active sentence becomes the subject; the verb changes to _be + past participle_; the doer follows _by_.

---

## 3. Conditional Sentences

- **Type 1 (real/possible):** _If_ + present simple, **will** + verb. → _If she studies hard, she **will pass**._
- **Type 2 (unreal/present):** _If_ + past simple, **would** + verb. → _If I **had** money, I **would buy** a car._
- **Type 3 (unreal/past):** _If_ + past perfect, **would have** + past participle. → _If she **had studied**, she **would have passed**._

---

## 4. Reported Speech

When we report what someone said, we often move the tense one step back and change pronouns and time words.

| Direct               | Reported                           |
| -------------------- | ---------------------------------- |
| "I am tired."        | She said (that) she **was** tired. |
| "I will help you."   | He said he **would** help me.      |
| "I have done it."    | He said he **had done** it.        |
| "Where do you live?" | She asked me where I **lived**.    |
| "Don''t touch it!"    | He told me **not to touch** it.    |

**Note:** _today → that day_, _tomorrow → the next day_, _yesterday → the previous day_, _here → there_.

---

## 5. Prepositions, Articles and Question Tags

- **Time:** _at_ 8 o''clock, _on_ Monday, _in_ 2005, _for_ two years, _since_ 2020.
- **Place:** _in_ the room, _on_ the table, _at_ school, _between_ A and B, _over_ the bridge.
- **Articles:** _a_ before consonant sounds (_a book_), _an_ before vowel sounds (_an apple_), _the_ for something specific.
- **Question tags:** _You are tired, **aren''t you**? He works hard, **doesn''t he**? She hasn''t come, **has she**?_

---

## 6. Erreurs à éviter (Common Mistakes)

- Forgetting the _-s_ in the third person singular: _He **goes** (not go)._
- Using the present simple for actions happening now: _Look! He **is running** (not runs)._
- Forgetting that _did_ is followed by the base verb: _Did she **go** (not went)?_
- Confusing _-ed_ regular past with irregular verbs: _went, eaten, written_.
- Adding _-ed_ to modals or using the wrong tense in conditionals.

---

## 7. Exercices d''entraînement

**Exercise 1.** Put the verbs in brackets in the correct tense: "When I (arrive) **_, she (cook) _**. By 6 p.m. she (finish) \_\_\_ everything."

**Exercise 2.** Turn into the passive: "The children will sing a song."

**Exercise 3.** Complete: "If it (rain) **_, we (stay) _** home." (Type 1)

**Exercise 4.** Report: "I am reading," said Marie.

**Exercise 5.** Fill in the correct tag: "You didn''t come, \_\_\_?"
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Anglais Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Anglais — Vocabulary and Comprehension
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f998664a-c29d-114c-404f-b24bd165f393', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC — Anglais — Vocabulary and Comprehension',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Anglais — Vocabulary and Comprehension

**Niveau :** Troisième — BEPC
**Matière :** Anglais (English as a Foreign Language)

## Objectifs d''apprentissage

At the end of this lesson, you should be able to:

- recognise and use synonyms and antonyms;
- understand word families and suffixes;
- use everyday vocabulary related to school, health, transport and work;
- read a short text, identify the main idea, and answer comprehension questions correctly.

---

## 1. Synonyms and Antonyms

A **synonym** is a word that means nearly the same as another word. An **antonym** is a word that means the opposite.

| Word     | Synonym        | Antonym        |
| -------- | -------------- | -------------- |
| happy    | glad / pleased | sad            |
| big      | large / huge   | small          |
| quick    | fast / rapid   | slow           |
| begin    | start          | finish / end   |
| buy      | purchase       | sell           |
| honest   | truthful       | dishonest      |
| brave    | courageous     | cowardly       |
| generous | kind / giving  | mean / selfish |

**Method:** To find the meaning of an unknown word in a text, read the whole sentence and look for clues (definition, examples, contrast with another word).

---

## 2. Word Families and Suffixes

Adding a suffix changes the word class. This helps you expand your vocabulary.

- **Noun suffixes:** _-er / -or_ (teach → teacher), _-tion / -sion_ (decide → decision), _-ment_ (develop → development), _-ness_ (happy → happiness).
- **Adjective suffixes:** _-ful_ (help → helpful), _-less_ (care → careless), _-ous_ (danger → dangerous), _-y_ (rain → rainy).
- **Adverb suffix:** _-ly_ (quick → quickly, careful → carefully).
- **Verb suffixes:** _-en_ (wide → widen), _-ify_ (simple → simplify).

**Example:** _help_ → _helper_ (person), _helpful_ (adjective), _helpless_ (adjective), _helpfully_ (adverb).

---

## 3. Everyday Vocabulary by Theme

### 3.1 School

classroom, blackboard, exercise book, timetable, subject, pupil, teacher, homework, examination, headmaster.

### 3.2 Health

hospital, nurse, doctor, medicine, pharmacy, patient, disease, fever, treatment, healthy.

### 3.3 Transport and Travel

bus, taxi, train, platform, ticket, passenger, journey, luggage, airport, harbour.

### 3.4 Work and Occupations

farmer, teacher, nurse, engineer, mechanic, journalist, trader, chef, barber, vet.

### 3.5 Nature and Environment

rain, drought, flood, harvest, soil, seed, forest, pollution, climate, protect.

---

## 4. How to Read and Understand a Text

Follow these steps to answer comprehension questions well:

1. **Skim** the text quickly to understand the general idea.
2. **Read the questions** first so you know what to look for.
3. **Scan** the text for the specific words in the questions.
4. **Answer in your own words**, but base your answer strictly on the text.
5. **Check** that your answer is complete and grammatical.

### 4.1 Example Text

_"Manga is a baker in Bafoussam. Every day he wakes up at three in the morning, prepares his dough, and bakes fresh bread. He opens his shop at six o''clock and sells bread to many customers. He says that hard work and honesty are the secrets of his success."_

**Question:** Why does Manga wake up so early?
**Answer:** He wakes up early to prepare his dough and bake fresh bread before opening his shop at six o''clock.

---

## 5. Answering Strategies and Common Pitfalls

- Do not copy long sentences from the text; write a short, precise answer.
- Do not give your personal opinion unless the question asks for it.
- Use the correct tense in your answer.
- For "match" or "fill-in" exercises, read every option before choosing.
- Watch out for words that look similar in French and English but have different meanings (false friends), e.g. _actually_ (in fact, not "actuellement"), _library_ (bibliothèque, not "librairie").

---

## 6. Exercices d''entraînement

**Exercise 1.** Give the opposite of: (a) ancient, (b) accept, (c) generous, (d) strong, (e) bright.

**Exercise 2.** Give the synonym of: (a) protect, (b) choose, (c) frightened, (d) journey, (e) wealthy.

**Exercise 3.** Form the noun from: (a) teach, (b) decide, (c) develop, (d) happy, (e) inform.

**Exercise 4.** Read this short text and answer the questions:

_"The Internet is a useful tool for students. It helps them to find information quickly and to communicate with people all over the world. However, students must be careful not to spend too much time on social media, because it can waste their time and affect their studies."_

(a) Why is the Internet useful for students? (b) What danger is mentioned? (c) What advice is given at the end?
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Anglais Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Anglais — Writing Skills
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4602771f-68a3-ff7f-40b2-4a0b87989006', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC — Anglais — Writing Skills',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Anglais — Writing Skills

**Niveau :** Troisième — BEPC
**Matière :** Anglais (English as a Foreign Language)

## Objectifs d''apprentissage

At the end of this lesson, you should be able to:

- write a well-organised paragraph with a clear main idea;
- write a formal or informal letter using the correct layout;
- write a short dialogue and a short composition;
- use linking words to make your writing flow;
- check and correct your own work.

---

## 1. The Paragraph

A paragraph is a group of sentences about one main idea. It usually has three parts:

1. **Topic sentence:** states the main idea.
2. **Supporting sentences:** give details, examples or reasons.
3. **Concluding sentence:** sums up the idea.

**Example — "My Favourite Subject":**
_My favourite subject at school is English. (topic) I enjoy it because it helps me to communicate with people from other countries and to understand films and songs. Our English teacher also makes the lessons lively and interesting. (supporting) For all these reasons, English is the subject I love the most. (concluding)_

---

## 2. Linking Words (Connecteurs)

Use linking words to connect your ideas and make your writing coherent.

- **Addition:** _and, also, moreover, in addition, furthermore._
- **Contrast:** _but, however, although, on the other hand._
- **Cause and result:** _because, so, therefore, as a result._
- **Sequence:** _first, then, next, after that, finally._
- **Example:** _for example, for instance, such as._

**Example:** _He was tired; **however**, he finished his homework **because** he wanted to succeed. **First**, he revised his lessons, **then** he did the exercises, and **finally** he rested._

---

## 3. Writing a Letter

### 3.1 Informal Letter (to a friend or relative)

- Your address at the top right, the date below it.
- Greeting: _Dear Paul,_
- Body: friendly and personal.
- Closing: _Yours faithfully, Love, Best wishes,_ followed by your name.

### 3.2 Formal Letter (to an official)

- Your address top right, the date, then the recipient''s address on the left.
- Greeting: _Dear Sir/Madam,_ or _Dear Manager,_
- Polite and professional language.
- Closing: _Yours faithfully,_ (if you do not know the name) or _Yours sincerely,_ (if you do).

**Model letter (invitation):**
_12 Rue des Palmiers
Yaoundé
15 May 2024_

_Dear Jean,_
_I hope you are well. I am writing to invite you to spend the Easter holidays with my family in the village. We can go fishing, play football and visit our grandparents. Please let me know if you can come._
_Best wishes,
Paul_

---

## 4. Writing a Dialogue

A dialogue is a conversation between two or more people. Use the names of the speakers followed by a colon, and keep the turns short and natural.

**Model:**
**A:** What are you going to do this weekend?
**B:** I am going to visit my grandmother.
**A:** That is nice. How will you get there?
**B:** I will take the bus.
**A:** Have a good time!
**B:** Thank you, see you on Monday.

---

## 5. Steps to a Good Composition

1. **Understand the topic:** read the prompt carefully.
2. **Brainstorm ideas:** write down words related to the topic.
3. **Make a plan:** decide the introduction, body and conclusion.
4. **Write the first draft:** use simple, correct sentences.
5. **Revise and improve:** add linking words and correct mistakes.

---

## 6. Common Writing Mistakes to Avoid

- Writing very long sentences without punctuation — use full stops.
- Repeating the same word — use synonyms.
- Forgetting capital letters at the beginning of sentences and for names.
- Mixing up _there / their / they''re_ and _your / you''re_.
- Not answering the question — always stay on the topic.
- Handwriting and spelling errors — proofread before you submit.

---

## 7. Exercices d''entraînement

**Exercise 1.** Write a paragraph (about 60 words) describing your village.

**Exercise 2.** Write an informal letter (about 70 words) to a friend describing your last holiday.

**Exercise 3.** Write a short dialogue (about 8 lines) between a shopkeeper and a customer buying fruit.

**Exercise 4.** Write a paragraph (about 60 words) about the importance of reading.

**Exercise 5.** Correct these sentences: (a) "they is going to school." (b) "Their going to the market." (c) "I like mango but she prefer orange." (d) "He don''t like tea."
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Anglais Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Anglais — Verb Tenses (Les Temps)
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '89b7c46a-be7b-6009-3d6a-528f17572c62', 'fr-bepc-anglais-communication', 'Anglais', 'Fiche — BEPC — Anglais — Verb Tenses (Les Temps)',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Anglais — Verb Tenses (Les Temps)

**Niveau :** Troisième — BEPC
**Matière :** Anglais (English as a Foreign Language)

---

# Fiche de révision — Les temps des verbes

## 1. Tableau des temps (Tense Table)

| Tense              | Form                        | Use                        | Example                        |
| ------------------ | --------------------------- | -------------------------- | ------------------------------ |
| Present Simple     | base / +s                   | habits, facts              | She **goes** to school.        |
| Present Continuous | am/is/are + -ing            | action now                 | They **are playing** football. |
| Past Simple        | verb + -ed / irregular      | finished past action       | We **visited** Douala.         |
| Past Continuous    | was/were + -ing             | action in progress         | He **was reading** at 8 p.m.   |
| Present Perfect    | have/has + past part.       | unspecified / up to now    | I **have finished** my work.   |
| Past Perfect       | had + past participle       | action before another past | The train **had left**.        |
| Future (will)      | will + base                 | promise / decision         | I **will help** you.           |
| Future (going to)  | am/is/are + going to + base | plan / prediction          | It **is going to** rain.       |

## 2. Signal words (Mots indicateurs)

- **Present Simple:** _always, usually, every day, often._
- **Present Continuous:** _now, at the moment, look!, listen!_
- **Past Simple:** _yesterday, last week, ago, in 2000._
- **Present Perfect:** _already, yet, just, since, for, ever, never._
- **Future:** _tomorrow, next week, soon._

## 3. Irregular verbs to learn (verbes irréguliers courants)

| Base  | Past simple | Past participle |
| ----- | ----------- | --------------- |
| go    | went        | gone            |
| eat   | ate         | eaten           |
| write | wrote       | written         |
| see   | saw         | seen            |
| buy   | bought      | bought          |
| come  | came        | come            |
| give  | gave        | given           |
| take  | took        | taken           |

## 4. Common errors (Erreurs fréquentes)

- He **goes** (pas _go_) — third person singular.
- Did you **go**? (pas _went_) — _did_ + base verb.
- Look! It **is raining** (pas _rains_).
- I **have lived** here for 5 years (pas _I live_).

## 5. Avant de rendre

- Check the time expression in the sentence.
- Match the tense to the time word.
- Check irregular verb forms.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Anglais Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Anglais — Grammar Rules (Règles de grammaire)
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fb397eed-be80-db9a-aa18-30acb0346fb6', 'fr-bepc-anglais-communication', 'Anglais', 'Fiche — BEPC — Anglais — Grammar Rules (Règles de grammaire)',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Anglais — Grammar Rules (Règles de grammaire)

**Niveau :** Troisième — BEPC
**Matière :** Anglais (English as a Foreign Language)

---

# Fiche de révision — Règles de grammaire essentielles

## 1. Articles (a / an / the)

- **a** before consonant sound: _a book, a teacher._
- **an** before vowel sound: _an apple, an hour, an engineer._
- **the** for something specific or already known: _the book on the table._
- No article for general things: _I like music, They go to school._

## 2. Prepositions (Prépositions)

| Time         | Place           | Other             |
| ------------ | --------------- | ----------------- |
| at 8 o''clock | at school       | interested **in** |
| on Monday    | on the table    | good **at**       |
| in 2005      | in the room     | listen **to**     |
| for 2 years  | between A and B | depend **on**     |
| since 2020   | over the bridge | afraid **of**     |

## 3. Question tags (Question-tags)

- Positive sentence → negative tag: _He is tall, **isn''t he**?_
- Negative sentence → positive tag: _She doesn''t work, **does she**?_
- With _will_: _You will come, **won''t you**?_
- With _have_: _They have finished, **haven''t they**?_

## 4. Comparatives and Superlatives

| Adjective | Comparative    | Superlative        |
| --------- | -------------- | ------------------ |
| tall      | taller         | the tallest        |
| big       | bigger         | the biggest        |
| expensive | more expensive | the most expensive |
| good      | better         | the best           |
| bad       | worse          | the worst          |

## 5. Conditionals (Conditionnelles)

- **Type 1:** _If it rains, we will stay home._ (real)
- **Type 2:** _If I had money, I would travel._ (unreal present)
- **Type 3:** _If she had studied, she would have passed._ (unreal past)

## 6. Passive Voice (Voix passive)

Object + **be** (tense) + past participle (+ by + doer)

- _The book **is read** by many students._
- _The house **was built** in 2010._

## 7. Reported speech (Discours indirect)

Move the tense back: _am → was, will → would, have → had; today → that day, tomorrow → the next day._

- "I am tired" → She said she **was** tired.

## 8. Avant de rendre

- Check the article before every noun.
- Check the preposition after every verb.
- Make sure the question tag is opposite in polarity.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Anglais Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Anglais — Vocabulary & Exam Tips (Vocabulaire et conseils)
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e9d5e203-4a4f-e62b-d4e6-fd75ba34ec66', 'fr-bepc-anglais-communication', 'Anglais', 'Fiche — BEPC — Anglais — Vocabulary & Exam Tips (Vocabulaire et conseils)',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Anglais — Vocabulary & Exam Tips (Vocabulaire et conseils)

**Niveau :** Troisième — BEPC
**Matière :** Anglais (English as a Foreign Language)

---

# Fiche de révision — Vocabulaire et conseils pour l''examen

## 1. Synonyms & Antonyms (Synonymes et antonymes)

| Word      | Synonym     | Antonym   |
| --------- | ----------- | --------- |
| happy     | glad        | sad       |
| big       | large       | small     |
| quick     | fast        | slow      |
| begin     | start       | finish    |
| buy       | purchase    | sell      |
| honest    | truthful    | dishonest |
| strong    | powerful    | weak      |
| cheap     | inexpensive | expensive |
| beautiful | pretty      | ugly      |
| brave     | courageous  | cowardly  |

## 2. Common false friends (Faux amis)

- _Actually_ = in fact (pas « actuellement »).
- _Library_ = bibliothèque (pas « librairie »).
- _Journey_ = voyage (pas « journée »).
- _Sympathetic_ = compréhensif (pas « sympathique »).

## 3. Occupations & places (Métiers et lieux)

- Teacher → school; Doctor → hospital; Farmer → field; Nurse → hospital; Mechanic → garage; Baker → bakery; Vendor → market; Librarian → library.

## 4. Linking words (Connecteurs logiques)

- Addition: _and, also, moreover, furthermore._
- Contrast: _but, however, although._
- Cause: _because, so, therefore._
- Sequence: _first, then, next, finally._

## 5. How to do a comprehension passage (Comment répondre à un texte)

1. Skim the whole text quickly.
2. Read the questions before the text.
3. Scan for key words.
4. Answer in your own short words.
5. Base every answer on the text.

## 6. Writing checklist (Liste de contrôle pour la rédaction)

- Capital letters at the start and for names.
- Full stops and commas.
- Check _there / their / they''re_ and _your / you''re_.
- Use linking words to join ideas.
- Stay on the topic and answer the question.
- Read your work again before submitting.

## 7. Quick revision words (Mots à réviser)

- Weather: rain, sun, drought, flood, storm.
- Health: fever, medicine, patient, healthy, treatment.
- School: subject, timetable, examination, homework, headmaster.
- Travel: ticket, passenger, platform, journey, luggage.

## 8. Avant de rendre

- Answer every question.
- Check spelling of common words.
- Manage your time: do not spend too long on one exercise.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Anglais Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Update MCQ 1 for Anglais
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ANGLAIS — ÉPREUVE 1 (QCM) — SÉRIE 1

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Anglais (English as a Foreign Language)
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Choose the correct form of the verb: "My brother and I \_\_\_ football every Saturday."

A. plays
B. play
C. playing
D. is playing

---

**Question 2.** Put the verb in the correct tense: "Look! It \_\_\_ (rain) outside."

A. rains
B. rained
C. is raining
D. has rained

---

**Question 3.** Choose the correct relative pronoun: "The lady \_\_\_ you met yesterday is my aunt."

A. who
B. whom
C. which
D. whose

---

**Question 4.** Choose the correct modal: "You \_\_\_ wear a uniform to school; it is compulsory."

A. must
B. can
C. may
D. could

---

**Question 5.** Choose the correct word: "He speaks English very \_\_\_, so everyone understands him."

A. good
B. well
C. better
D. best

---

**Question 6.** Read the sentence and choose the correct answer: "The market is \_\_\_ the bank and the post office."

A. among
B. between
C. under
D. above

---

**Question 7.** The opposite of « polite » is :

A. rude
B. kind
C. friendly
D. gentle

---

**Question 8.** Choose the correct question tag: "You have finished your homework, \_\_\_?"

A. don''t you
B. haven''t you
C. isn''t it
D. aren''t you

---

**Question 9.** Comprehension: Read the text, then answer.

_"Mbella works as a farmer in the North West region. Every morning he goes to his field and plants maize and groundnuts. He sells his harvest at the local market every month. He is saving money to build a new house for his family."_

**What does Mbella do every month?**

A. He plants maize.
B. He sells his harvest at the market.
C. He builds a new house.
D. He goes to school.

---

**Question 10.** Choose the correct preposition: "The students are very interested \_\_\_ learning English."

A. on
B. at
C. in
D. for

---

## CORRIGÉ

1. play
2. is raining
3. whom
4. must
5. well
6. between
7. rude
8. haven''t you
9. He sells his harvest at the market.
10. in
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'aa06c477-affd-c909-351b-f094e0dcf180';


-- Update MCQ 2 for Anglais
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ANGLAIS — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Anglais (English as a Foreign Language)
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Put the verb in the correct tense: "When we arrived at the cinema, the film \_\_\_ (already start)."

A. started
B. has started
C. had already started
D. starts

---

**Question 2.** Choose the correct quantifier: "There is \_\_\_ water in the bottle; please fill it up."

A. a little
B. many
C. few
D. much

---

**Question 3.** Turn the sentence into the passive voice: "The teacher corrected the essays."

A. The essays are corrected by the teacher.
B. The essays were corrected by the teacher.
C. The essays was corrected by the teacher.
D. The essays were correcting by the teacher.

---

**Question 4.** Choose the correct comparative form: "This exercise is \_\_\_ than the previous one."

A. more difficult
B. most difficult
C. difficulter
D. difficulty

---

**Question 5.** Choose the correct first conditional: "If it rains tomorrow, we \_\_\_ at home."

A. stay
B. will stay
C. would stay
D. stayed

---

**Question 6.** The synonym of « enormous » is :

A. huge
B. tiny
C. narrow
D. short

---

**Question 7.** Choose the correct past simple: "The children \_\_\_ a lot of fun at the party yesterday."

A. have
B. had
C. has
D. having

---

**Question 8.** Choose the correct word: "Please \_\_\_ the door before you leave the room."

A. open
B. close
C. broke
D. cleaning

---

**Question 9.** Comprehension: Read the text, then answer.

_"Nadine woke up late on Monday because her alarm clock did not ring. She ran to the bus stop but missed the bus. Her father drove her to school, and she arrived just before the first lesson. She promised herself never to go to bed late again."_

**Why did Nadine wake up late?**

A. She forgot her homework.
B. Her alarm clock did not ring.
C. She missed the bus.
D. Her father was late.

---

**Question 10.** Choose the correct possessive adjective: "The cat is washing \_\_\_ paws."

A. his
B. her
C. its
D. their

---

## CORRIGÉ

1. had already started
2. a little
3. The essays were corrected by the teacher.
4. more difficult
5. will stay
6. huge
7. had
8. close
9. Her alarm clock did not ring.
10. its
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '4a13871b-3b24-19ec-1482-5cbec7583e98';


-- Update MCQ 3 for Anglais
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ANGLAIS — ÉPREUVE 1 (QCM) — SÉRIE 3

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Anglais (English as a Foreign Language)
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Choose the correct present perfect: "I \_\_\_ my keys; I cannot find them anywhere."

A. lost
B. have lost
C. lose
D. am losing

---

**Question 2.** Choose the correct word: "She is a very \_\_\_ girl; she always tells the truth."

A. lazy
B. dishonest
C. honest
D. rude

---

**Question 3.** Choose the correct reported speech: "I am hungry," Paul said.

A. Paul said that he is hungry.
B. Paul said that he was hungry.
C. Paul said that I was hungry.
D. Paul said that he will be hungry.

---

**Question 4.** Choose the correct preposition: "The plane is flying \_\_\_ the clouds."

A. between
B. over
C. under
D. beside

---

**Question 5.** Choose the correct plural form: "There are many \_\_\_ in the village."

A. sheep
B. sheeps
C. sheepes
D. sheepen

---

**Question 6.** Choose the correct question word: "\_\_\_ do you go to school? — By bus."

A. Where
B. When
C. How
D. Why

---

**Question 7.** Choose the correct possessive pronoun: "This bag is not mine; it is \_\_\_."

A. her
B. hers
C. she
D. herself

---

**Question 8.** Choose the correct past simple: "They \_\_\_ to Douala last month to visit their uncle."

A. go
B. gone
C. went
D. goes

---

**Question 9.** Comprehension: Read the text, then answer.

_"A healthy diet is important for students. They should eat fruits, vegetables and cereals every day. They must also drink enough water and do physical exercise. Eating too much junk food makes children tired and unable to concentrate in class."_

**What happens when children eat too much junk food?**

A. They become very strong.
B. They become tired and cannot concentrate.
C. They sleep well.
D. They grow faster.

---

**Question 10.** Choose the correct article: "My mother bought \_\_\_ umbrella yesterday because it was raining."

A. a
B. an
C. the
D. some

---

## CORRIGÉ

1. have lost
2. honest
3. Paul said that he was hungry.
4. over
5. sheep
6. How
7. hers
8. went
9. They become tired and cannot concentrate.
10. an
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '4068bf79-93aa-8efb-511b-b5be5612c135';


-- Update set 4 for Anglais
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ANGLAIS — ÉPREUVE 2 — SÉRIE 4

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Anglais (English as a Foreign Language)
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :** Cette épreuve comporte 4 sections : Grammar, Vocabulary, Comprehension et Writing. Chaque section contient 5 exercices. Chaque exercice vaut 5 points. Réponds en anglais sur ta copie.

---

## SECTION 1 : GRAMMAR (5 × 5 = 25 points)

**G1.** Put the verbs in brackets into the correct tense: "Yesterday, while I (walk) **_ to school, I (meet) _** my friend Jean, and we (talk) **_ for a long time about our plans for the holidays. When we (arrive) _** at school, the first lesson (already start) \_\_\_."

**G2.** Turn the following sentences into the passive voice: (a) "The farmer grows maize in the north." (b) "The children will clean the classroom tomorrow." (c) "They have painted the house."

**G3.** Complete the conditional sentences: (a) "If she (study) **_ harder, she (pass) _** her examination." (b) "If I (have) **_ enough money, I (buy) _** a new bicycle."

**G4.** Rewrite these sentences in reported speech: (a) "I am writing a letter," said Marie. (b) "We will visit our grandparents tomorrow," the boys said. (c) "Have you done your homework?" the teacher asked me.

**G5.** Complete the sentences with the correct relative pronoun (who, whom, whose, which, that): (a) "The man **_ car was stolen is my neighbour." (b) "This is the book _** I bought yesterday." (c) "The doctor \_\_\_ saved the baby is very kind."

---

## SECTION 2 : VOCABULARY (5 × 5 = 25 points)

**V1.** Give the opposite (antonym) of each word: (a) generous, (b) difficult, (c) arrive, (d) win, (e) modern.

**V2.** Give the synonym of each word: (a) happy, (b) begin, (c) wealthy, (d) quickly, (e) beautiful.

**V3.** Complete each sentence with a suitable word from the box: [library, market, hospital, pharmacy, factory]. (a) "If you are sick, go to the **_." (b) "We borrow books from the _**." (c) "You can buy vegetables at the **_." (d) "Workers produce shoes in a _**." (e) "The chemist sells medicine at the \_\_\_."

**V4.** Match the word with its definition: (1) farmer, (2) teacher, (3) nurse, (4) engineer, (5) trader. Definitions: A. a person who treats sick people in a hospital; B. a person who cultivates the land; C. a person who teaches students; D. a person who designs and builds machines; E. a person who buys and sells goods.

**V5.** Form new words by adding the correct suffix (-er, -ful, -less, -ment, -ly) to: (a) teach → **_, (b) care → _**, (c) develop → **_, (d) quick → _**, (e) help → \_\_\_.

---

## SECTION 3 : COMPREHENSION (5 × 5 = 25 points)

**Read the text carefully and answer the questions that follow.**

_"Ayuk lives in a small village near Kumbo. Every morning he walks five kilometres to fetch water from the stream, and then he helps his mother in the farm before going to school. At school, his favourite subject is English because he wants to become a journalist one day. Last week, he won the school debate competition, and his headmaster congratulated him in front of the whole school. Ayuk believes that with hard work and determination, he can achieve his dreams."_

**C1.** Where does Ayuk live?

**C2.** Why does he fetch water from the stream every morning?

**C3.** Why is English Ayuk''s favourite subject?

**C4.** What happened last week at school?

**C5.** According to Ayuk, what does it take to achieve one''s dreams?

---

## SECTION 4 : WRITING (5 × 5 = 25 points)

**W1.** Write a short paragraph (about 60 words) describing your daily routine from morning to night.

**W2.** Write a paragraph (about 60 words) about your favourite teacher and explain why you like him or her.

**W3.** Write a short letter (about 70 words) to your cousin inviting him or her to spend the next holidays with you.

**W4.** Write a paragraph (about 60 words) giving advice on how to stay healthy.

**W5.** Write a paragraph (about 60 words) describing what you plan to do after the BEPC examination.

---

## CORRIGÉ TYPE

**G1.** "Yesterday, while I was walking to school, I met my friend Jean, and we talked for a long time about our plans for the holidays. When we arrived at school, the first lesson had already started."

**G2.** (a) "Maize is grown by the farmer in the north." (b) "The classroom will be cleaned by the children tomorrow." (c) "The house has been painted by them."

**G3.** (a) "If she studied harder, she would pass her examination." (Second conditional) (b) "If I had enough money, I would buy a new bicycle."

**G4.** (a) "Marie said (that) she was writing a letter." (b) "The boys said (that) they would visit their grandparents the next day." (c) "The teacher asked me if I had done my homework."

**G5.** (a) whose, (b) that/which, (c) who.

**V1.** (a) mean/selfish, (b) easy, (c) leave/depart, (d) lose, (e) old-fashioned/outdated.

**V2.** (a) glad/pleased, (b) start, (c) rich, (d) fast/rapidly, (e) pretty/lovely.

**V3.** (a) hospital, (b) library, (c) market, (d) factory, (e) pharmacy.

**V4.** (1) farmer → B; (2) teacher → C; (3) nurse → A; (4) engineer → D; (5) trader → E.

**V5.** (a) teacher, (b) careful/careless, (c) development, (d) quickly, (e) helpful/helpless.

**C1.** He lives in a small village near Kumbo.

**C2.** Because there is no tap water in his village; he walks to fetch water for the family.

**C3.** Because he wants to become a journalist one day.

**C4.** He won the school debate competition, and his headmaster congratulated him in front of the whole school.

**C5.** With hard work and determination.

**W1–W5.** Accept any coherent, grammatically correct paragraph of the required length that answers the prompt. Award marks for relevance, correct grammar and vocabulary, and organisation.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'b2b7fab0-6b85-95e4-0149-a16d0deaaa6d';


-- Update set 5 for Anglais
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ANGLAIS — ÉPREUVE 2 — SÉRIE 5

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Anglais (English as a Foreign Language)
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :** Cette épreuve comporte 4 sections : Grammar, Vocabulary, Comprehension et Writing. Chaque section contient 5 exercices. Chaque exercice vaut 5 points. Réponds en anglais sur ta copie.

---

## SECTION 1 : GRAMMAR (5 × 5 = 25 points)

**G1.** Put the verbs in brackets into the correct tense: "By the time the visitors (arrive) **_, the students (prepare) _** the classroom. They (decorate) **_ the walls with drawings, and the teacher (write) _** some words on the board."

**G2.** Change the following into reported speech: (a) "I will help you," said the nurse to the patient. (b) "Where do you live?" the policeman asked the driver. (c) "Don''t touch that machine!" the engineer warned us.

**G3.** Complete with the correct modal (must, may, can, should, might): (a) "You **_ pay attention in class if you want to succeed." (b) "It _** rain this afternoon; take an umbrella." (c) "**_ I borrow your pen, please?" (d) "Students _** respect their elders."

**G4.** Turn these sentences into the passive voice: (a) "Someone stole my bicycle yesterday." (b) "The company is building a new road." (c) "They will repair the roof next week."

**G5.** Complete the second conditional sentences: (a) "If I (be) **_ you, I (not waste) _** time." (b) "If we (have) **_ a car, we (travel) _** around the country."

---

## SECTION 2 : VOCABULARY (5 × 5 = 25 points)

**V1.** Give the opposite of: (a) strong, (b) accept, (c) bright, (d) borrow, (e) cheap.

**V2.** Give the synonym of: (a) brave, (b) journey, (c) assist, (d) mend, (e) silent.

**V3.** Complete each sentence with the correct phrasal verb: (a) "Please **_ (turn on / turn off) the light; it is dark." (b) "The plane will _** (take off / take away) at noon." (c) "She **_ (get up / get over) at six o''clock every morning." (d) "He _** (look after / look for) his sick grandmother." (e) "I must \_\_\_ (give up / give in) smoking."

**V4.** Match each word with its opposite: (1) beautiful, (2) brave, (3) honest, (4) patient, (5) tidy. Opposites: A. ugly, B. impatient, C. cowardly, D. messy, E. dishonest.

**V5.** Complete the sentences with a suitable word from the box: [umbrella, journey, market, kitchen, pocket]. (a) "My mother cooks in the **_." (b) "The train _** to Bafoussam took three hours." (c) "I keep my money in my **_." (d) "Take your _**; it is raining heavily." (e) "We buy fresh fish at the \_\_\_,".

---

## SECTION 3 : COMPREHENSION (5 × 5 = 25 points)

**Read the text carefully and answer the questions that follow.**

_"Electricity is very important in our modern world. It powers our homes, schools, hospitals and industries. However, in many rural areas of Cameroon, people still do not have access to electricity. They use kerosene lamps and candles at night. This makes it difficult for students to study after dark. The government is trying to extend electricity to these villages. Experts say that electricity improves the quality of life and helps children to learn better."_

**C1.** Why is electricity described as important in the text?

**C2.** What do people in rural areas use at night instead of electricity?

**C3.** Why is it difficult for rural students to study at night?

**C4.** What is the government trying to do?

**C5.** According to the experts, what are two benefits of electricity?

---

## SECTION 4 : WRITING (5 × 5 = 25 points)

**W1.** Write a paragraph (about 60 words) describing your school compound.

**W2.** Write a letter (about 70 words) to your father telling him how you prepared for your BEPC examination.

**W3.** Write a paragraph (about 60 words) explaining why education is important for the future of Cameroon.

**W4.** Write a dialogue (about 8 lines) between you and a friend about your plans for the weekend.

**W5.** Write a paragraph (about 60 words) describing a traditional ceremony you have attended in your village.

---

## CORRIGÉ TYPE

**G1.** "By the time the visitors arrived, the students had prepared the classroom. They had decorated the walls with drawings, and the teacher had written some words on the board."

**G2.** (a) "The nurse told the patient that she would help him/her." (b) "The policeman asked the driver where he lived." (c) "The engineer warned us not to touch that machine."

**G3.** (a) must/should, (b) may/might, (c) Can/May, (d) must/should.

**G4.** (a) "My bicycle was stolen yesterday." (b) "A new road is being built by the company." (c) "The roof will be repaired next week."

**G5.** (a) "If I were you, I would not waste time." (b) "If we had a car, we would travel around the country."

**V1.** (a) weak, (b) refuse, (c) dark/dull, (d) lend, (e) expensive.

**V2.** (a) courageous, (b) trip, (c) help, (d) repair/fix, (e) quiet.

**V3.** (a) turn on, (b) take off, (c) get up, (d) look after, (e) give up.

**V4.** (1) beautiful → A; (2) brave → C; (3) honest → E; (4) patient → B; (5) tidy → D.

**V5.** (a) kitchen, (b) journey, (c) pocket, (d) umbrella, (e) market.

**C1.** Because it powers homes, schools, hospitals and industries.

**C2.** They use kerosene lamps and candles.

**C3.** Because there is no electricity to study after dark.

**C4.** The government is trying to extend electricity to the villages.

**C5.** It improves the quality of life and helps children to learn better.

**W1–W5.** Accept any coherent, grammatically correct piece of the required length that answers the prompt. Award marks for relevance, grammar, vocabulary and organisation.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '979cb84d-27ba-d670-8098-1b0567c7bb58';


-- Update set 6 for Anglais
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ANGLAIS — ÉPREUVE 2 — SÉRIE 6

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Anglais (English as a Foreign Language)
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :** Cette épreuve comporte 4 sections : Grammar, Vocabulary, Comprehension et Writing. Chaque section contient 5 exercices. Chaque exercice vaut 5 points. Réponds en anglais sur ta copie.

---

## SECTION 1 : GRAMMAR (5 × 5 = 25 points)

**G1.** Put the verbs in brackets into the correct tense (present perfect or past simple): (a) "She (visit) **_ her grandmother last week." (b) "They (never see) _** the sea." (c) "I (finish) **_ my homework already." (d) "He (live) _** in Douala for ten years."

**G2.** Turn these sentences into the passive voice: (a) "The chef cooks delicious meals." (b) "The police arrested the thief last night." (c) "Farmers are planting rice in the valley."

**G3.** Complete with the correct preposition (in, on, at, for, since): (a) "The meeting starts **_ 9 o''clock." (b) "She was born _** 2005." (c) "We have known each other **_ a long time." (d) "The picture is hanging _** the wall."

**G4.** Rewrite these questions in reported speech: (a) "Are you ready?" the teacher asked. (b) "Did you finish the exercise?" my friend asked me. (c) "Why are you late?" the principal asked the student.

**G5.** Complete the sentences with the correct form of "to be going to" or "will": (a) "Look at those black clouds! It **_ (rain)." (b) "I promise I _** (call) you tonight." (c) "We \_\_\_ (visit) our uncle next Sunday."

---

## SECTION 2 : VOCABULARY (5 × 5 = 25 points)

**V1.** Give the opposite of: (a) always, (b) push, (c) remember, (d) empty, (e) safe.

**V2.** Give the synonym of: (a) clever, (b) argue, (c) try, (d) scared, (e) build.

**V3.** Complete each sentence with the correct word: (a) "An **_ designs buildings." (b) "A _** treats people''s teeth." (c) "A **_ sells tickets at the airport." (d) "A _** drives a taxi." (e) "A \_\_\_ writes for a newspaper."

**V4.** Match each word with its definition: (1) drought, (2) flood, (3) earthquake, (4) famine, (5) cyclone. Definitions: A. a violent storm with strong winds; B. a long period without rain; C. a shaking of the ground; D. an overflow of water onto dry land; E. a serious lack of food.

**V5.** Complete the sentences with words from the box: [journey, passenger, luggage, platform, ticket]. (a) "The **_ was heavy, so I took a trolley." (b) "The train will leave from _** number two." (c) "Each **_ must show his ticket." (d) "The _** to Ngaoundéré lasted ten hours." (e) "I bought my \_\_\_ at the station."

---

## SECTION 3 : COMPREHENSION (5 × 5 = 25 points)

**Read the text carefully and answer the questions that follow.**

_"Water is life. We need it to drink, to cook, to wash and to grow our crops. However, clean water is not available everywhere. In many parts of Cameroon, people walk long distances to fetch water from rivers or wells. This water is often dirty and causes diseases such as typhoid and cholera. To stay healthy, we must boil or filter our drinking water, and we must never throw rubbish into rivers. Protecting our water sources is everyone''s responsibility."_

**C1.** Give two uses of water mentioned in the text.

**C2.** Where do many people in Cameroon fetch water?

**C3.** What diseases can dirty water cause?

**C4.** According to the text, what must we do to our drinking water to stay healthy?

**C5.** Why must we protect our water sources?

---

## SECTION 4 : WRITING (5 × 5 = 25 points)

**W1.** Write a paragraph (about 60 words) describing your favourite meal.

**W2.** Write a letter (about 70 words) to your friend describing the importance of keeping the environment clean.

**W3.** Write a paragraph (about 60 words) about the dangers of smoking.

**W4.** Write a paragraph (about 60 words) describing your best day at school this year.

**W5.** Write a short composition (about 70 words) titled "My Dream Job".

---

## CORRIGÉ TYPE

**G1.** (a) visited, (b) have never seen, (c) have finished, (d) has lived.

**G2.** (a) "Delicious meals are cooked by the chef." (b) "The thief was arrested by the police last night." (c) "Rice is being planted by the farmers in the valley."

**G3.** (a) at, (b) in, (c) for, (d) on.

**G4.** (a) "The teacher asked if I was ready." (b) "My friend asked me if I had finished the exercise." (c) "The principal asked the student why he/she was late."

**G5.** (a) is going to rain, (b) will call, (c) are going to visit.

**V1.** (a) never, (b) pull, (c) forget, (d) full, (e) dangerous/unsafe.

**V2.** (a) intelligent/smart, (b) quarrel, (c) attempt, (d) afraid/frightened, (e) construct.

**V3.** (a) architect, (b) dentist, (c) clerk/agent, (d) taxi driver, (e) journalist.

**V4.** (1) drought → B; (2) flood → D; (3) earthquake → C; (4) famine → E; (5) cyclone → A.

**V5.** (a) luggage, (b) platform, (c) passenger, (d) journey, (e) ticket.

**C1.** To drink, to cook, to wash and to grow crops (any two).

**C2.** From rivers or wells.

**C3.** Typhoid and cholera.

**C4.** We must boil or filter our drinking water.

**C5.** Because water is essential for life and clean water is not available everywhere.

**W1–W5.** Accept any coherent, grammatically correct piece of the required length that answers the prompt. Award marks for relevance, grammar, vocabulary and organisation.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'fbd21a2c-aaa8-d677-32d9-e1a497bfbcb1';


-- Update set 7 for Anglais
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ANGLAIS — ÉPREUVE 2 — SÉRIE 7

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Anglais (English as a Foreign Language)
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :** Cette épreuve comporte 4 sections : Grammar, Vocabulary, Comprehension et Writing. Chaque section contient 5 exercices. Chaque exercice vaut 5 points. Réponds en anglais sur ta copie.

---

## SECTION 1 : GRAMMAR (5 × 5 = 25 points)

**G1.** Put the verbs in brackets into the correct tense: "Next month, my family and I (travel) **_ to the coast. We (stay) _** there for two weeks. While we (be) **_ there, we (visit) _** the port and (swim) \_\_\_ in the sea every day."

**G2.** Turn these sentences into the passive voice: (a) "They grow coffee in the western highlands." (b) "The nurse gave the patient some medicine." (c) "People speak English in many countries."

**G3.** Complete the third conditional sentences: (a) "If she (not miss) **_ the bus, she (arrive) _** on time." (b) "If we (know) **_ about the party, we (come) _**."

**G4.** Rewrite these sentences in reported speech: (a) "Please open the window," said the teacher to the student. (b) "I have finished my work," said Paul. (c) "What are you doing?" she asked me.

**G5.** Complete with the correct article (a, an, the, or "no article"): (a) "He is **_ honest man." (b) "We live near _** sea." (c) "She plays **_ piano." (d) "They go to _** school by bus."

---

## SECTION 2 : VOCABULARY (5 × 5 = 25 points)

**V1.** Give the opposite of: (a) ancient, (b) widen, (c) succeed, (d) collect, (e) forget.

**V2.** Give the synonym of: (a) choose, (b) journey, (c) protect, (d) essential, (e) famous.

**V3.** Complete each sentence with the correct word: (a) "A **_ sells vegetables at the market." (b) "A _** repairs cars." (c) "A **_ treats animals." (d) "A _** prepares food in a restaurant." (e) "A \_\_\_ cuts people''s hair."

**V4.** Match each word with its definition: (1) village, (2) city, (3) suburb, (4) capital, (5) port. Definitions: A. a large town where many people live; B. a small group of houses in the countryside; C. a town with a harbour for ships; D. the main city where the government is; E. an area outside the centre of a big town.

**V5.** Complete the sentences with words from the box: [harvest, plough, seed, soil, fertiliser]. (a) "Farmers put **_ in the ground to grow maize." (b) "The _** must be rich for plants to grow well." (c) "They use **_ to make the soil more fertile." (d) "In December, the farmers gather the _** of their crops." (e) "He uses a tractor to \_\_\_ the field."

---

## SECTION 3 : COMPREHENSION (5 × 5 = 25 points)

**Read the text carefully and answer the questions that follow.**

_"Talking to others is an important skill in life. Some people are shy and find it difficult to make friends. Psychologists advise that to make friends, you should smile often, listen carefully to others, and ask questions about their interests. You should also be kind and help people when they need you. Having good friends makes us happy and helps us to face difficulties. Remember that a true friend is someone who is honest, faithful and always ready to support you in times of trouble."_

**C1.** What is the text mainly about?

**C2.** Give two pieces of advice the psychologists give for making friends.

**C3.** What are the benefits of having good friends?

**C4.** What qualities does a true friend have?

**C5.** According to the text, why do some people find it difficult to make friends?

---

## SECTION 4 : WRITING (5 × 5 = 25 points)

**W1.** Write a paragraph (about 60 words) describing what you did last Saturday.

**W2.** Write a letter (about 70 words) to your pen friend in another country telling him or her about Cameroon.

**W3.** Write a paragraph (about 60 words) giving advice to a student who is afraid of speaking English in public.

**W4.** Write a paragraph (about 60 words) describing your house or your compound.

**W5.** Write a short composition (about 70 words) titled "Why I Want to Continue My Studies".

---

## CORRIGÉ TYPE

**G1.** "Next month, my family and I will travel to the coast. We will stay there for two weeks. While we are there, we will visit the port and swim in the sea every day."

**G2.** (a) "Coffee is grown in the western highlands." (b) "The patient was given some medicine by the nurse." (c) "English is spoken in many countries."

**G3.** (a) "If she had not missed the bus, she would have arrived on time." (b) "If we had known about the party, we would have come."

**G4.** (a) "The teacher told the student to open the window." (b) "Paul said that he had finished his work." (c) "She asked me what I was doing."

**G5.** (a) an, (b) the, (c) the, (d) no article.

**V1.** (a) modern, (b) narrow, (c) fail, (d) scatter/distribute, (e) remember.

**V2.** (a) select/pick, (b) trip/travel, (c) guard/defend, (d) vital/necessary, (e) well-known.

**V3.** (a) trader/vendor, (b) mechanic, (c) veterinarian, (d) cook/chef, (e) barber.

**V4.** (1) village → B; (2) city → A; (3) suburb → E; (4) capital → D; (5) port → C.

**V5.** (a) seed, (b) soil, (c) fertiliser, (d) harvest, (e) plough.

**C1.** The importance of friendship and how to make friends.

**C2.** Smile often, listen carefully, ask questions about others'' interests (any two).

**C3.** They make us happy and help us to face difficulties.

**C4.** A true friend is honest, faithful and always ready to support you in times of trouble.

**C5.** Because they are shy.

**W1–W5.** Accept any coherent, grammatically correct piece of the required length that answers the prompt. Award marks for relevance, grammar, vocabulary and organisation.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '0f5da525-1000-5d72-c6b6-b516dfde5078';


-- BEPC — Français — La grammaire
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ab085500-0092-be56-e635-62d95e7c30ed', 'fr-bepc-francais-expression', 'Français', 'BEPC — Français — La grammaire',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Français — La grammaire

**Niveau :** Troisième — BEPC
**Matière :** Français

## Objectifs d''apprentissage

- Identifier la nature et la fonction des mots et des groupes de mots dans une phrase.
- Reconnaître et analyser les différents types et formes de phrases.
- Analyser les propositions (indépendante, principale, subordonnée) et leurs valeurs.
- Distinguer les compléments d''objet des compléments circonstanciels.
- Maîtriser la transformation des phrases (voix active/passive, discours direct/indirect).

---

## 1. La phrase et ses constituants

La phrase est une suite de mots organisée autour d''un verbe. Elle se termine par un signe de ponctuation forte (point, point d''interrogation, point d''exclamation, points de suspension).

### 1.1 Les types de phrases

- **Déclarative** : énonce un fait. Ex. : _La pluie tombe._
- **Interrogative** : pose une question. Ex. : _Est-ce qu''il pleut ?_
- **Exclamative** : exprime une émotion. Ex. : _Quelle belle pluie !_
- **Injonctive** : donne un ordre. Ex. : _Ferme la porte._

### 1.2 Les formes de phrases

- **Forme affirmative / négative** : _Il vient_ / _Il ne vient pas._
- **Forme active / passive** : _Le lion mange la gazelle_ / _La gazelle est mangée par le lion._
- **Forme personnelle / impersonnelle** : _Il arrive_ / _Il fait beau._
- **Forme emphatique** : _C''est lui qui a gagné._

---

## 2. La nature et la fonction

Il faut absolument distinguer la **nature** (ce que le mot est) de la **fonction** (ce que le mot fait dans la phrase).

### 2.1 Les classes grammaticales (natures)

- **Nom** (commun/propre) : _ville, Yaoundé._
- **Déterminant** : _le, un, mon, ce._
- **Adjectif qualificatif** : _beau, grand._
- **Pronom** : _il, qui, celui, le._
- **Verbe** : _manger, courir._
- **Adverbe** : _vite, hier, très._
- **Préposition** : _à, de, dans, pour._
- **Conjonction** (coordination/subordination) : _mais, que, quand._

### 2.2 Les principales fonctions

- **Sujet** : fait l''action, commande le verbe. Ex. : _Le chien aboie._
- **Prédicat** : ce qu''on dit du sujet (généralement le verbe + ses compléments).
- **Complément d''objet direct (COD)** : répond à « quoi ? » ou « qui ? ». Ex. : _Il mange une mangue._
- **Complément d''objet indirect (COI)** : introduit par une préposition, répond à « à qui ? », « de quoi ? ». Ex. : _Il parle à son ami._
- **Complément circonstanciel (CC)** : répond à « où ? », « quand ? », « comment ? », « pourquoi ? ». Ex. : _Il part demain_ (CC de temps).
- **Attribut du sujet** : après un verbe d''état (être, paraître, devenir...), caractérise le sujet. Ex. : _Elle est contente._
- **Complément du nom** : complète un nom. Ex. : _la cour de l''école._

---

## 3. La phrase complexe et les propositions

Une phrase peut contenir plusieurs propositions (groupes organisés autour d''un verbe conjugué).

### 3.1 La proposition indépendante

Elle ne dépend d''aucune autre. Ex. : _Le soleil brille._

### 3.2 La proposition principale et la subordonnée

La **principale** est le noyau ; la **subordonnée** en dépend et est introduite par un mot subordonnant.

**Exemple :** _Je pense **que tu as raison**._ → « Je pense » (principale) ; « que tu as raison » (subordonnée).

### 3.3 Les types de subordonnées

- **Relative** : introduite par un pronom relatif (_qui, que, dont, où_), complète un nom (l''antécédent). Ex. : _Le livre **que je lis** est intéressant._
- **Complétive** : introduite par « que », sert de COD au verbe. Ex. : _Je crois **qu''il viendra**._
- **Circonstancielle** : introduite par une conjonction de subordination (_quand, parce que, pour que, bien que..._), exprime le temps, la cause, le but, la conséquence, la concession, la condition. Ex. : **\*Quand** il pleut, je reste à la maison.\* (temps)

---

## 4. La voix active et la voix passive

À la **voix passive**, le sujet subit l''action. Formation : **auxiliaire être (au temps du verbe actif) + participe passé du verbe**.

- Actif : _Le maçon construit la maison._
- Passif : _La maison est construite par le maçon._
- Le complément d''agent (introduit par « par » ou « de ») correspond au sujet de la voix active.
- Le participe passé s''accorde avec le sujet au passif : _Les maisons sont construites._

---

## 5. Le discours direct et le discours indirect

- **Discours direct** : on rapporte les paroles telles quelles, avec guillemets et deux-points. Ex. : _Il dit : « Je viens. »_
- **Discours indirect** : on intègre les paroles à la phrase principale, avec un verbe introducteur. Ex. : _Il dit qu''il vient._
- **Transformations à retenir** :
  - « je » → « il/elle »
  - « demain » → « le lendemain »
  - « aujourd''hui » → « ce jour-là »
  - présent → imparfait ; futur → conditionnel ; passé composé → plus-que-parfait

---

## 6. Erreurs à éviter

- Confondre **nature** et **fonction**.
- Confondre COD et COI : le COD n''a pas de préposition, le COI est introduit par une préposition.
- Oublier qu''une proposition subordonnée relative complète toujours un nom.
- Mal transformer les temps et les indicateurs de temps dans le discours indirect.

---

## 7. Exercices d''entraînement

**Exercice 1 :** Donne la nature et la fonction de chaque mot de la phrase : « Les courageux soldats défendent leur pays. »

**Exercice 2 :** Transforme à la voix passive : « Les élèves rangent la salle de classe. »

**Exercice 3 :** Transforme au discours indirect : « Le professeur dit : "Vous aurez un contrôle demain." »

**Exercice 4 :** Analyse la phrase complexe : « Quand la nuit tombe, les enfants rentrent et ils font leurs devoirs. »

**Exercice 5 :** Identifie le type et la forme de : « N''oublie pas de fermer la porte ! »
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Français Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Français — La conjugaison
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '24bd1b3d-766f-b455-7a1c-b05164c4bab6', 'fr-bepc-francais-expression', 'Français', 'BEPC — Français — La conjugaison',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Français — La conjugaison

**Niveau :** Troisième — BEPC
**Matière :** Français

## Objectifs d''apprentissage

- Reconnaître les modes personnels (indicatif, conditionnel, subjonctif, impératif) et impersonnels (infinitif, participe, gérondif).
- Conjuguer correctement les verbes du 1er, 2e et 3e groupe aux temps simples et composés de l''indicatif.
- Employer le subjonctif et le conditionnel à bon escient.
- Utiliser la concordance des temps dans la phrase complexe.
- Éviter les fautes courantes (a/à, est/et, participe passé).

---

## 1. Les modes et les temps

Le **mode** exprime la manière dont l''action est envisagée (réelle, souhaitée, ordonnée...). Le **temps** situe l''action dans le passé, le présent ou le futur.

### 1.1 Les modes personnels

- **Indicatif** : exprime la réalité. Temps : présent, imparfait, passé simple, futur simple, passé composé, plus-que-parfait, futur antérieur...
- **Conditionnel** : exprime un fait soumis à une condition, un souhait, une hypothèse. Temps : présent, passé.
- **Subjonctif** : exprime le doute, la volonté, le souhait, l''obligation. Temps : présent, passé.
- **Impératif** : donne un ordre. Temps : présent, passé.

### 1.2 Les modes impersonnels

- **Infinitif** : _manger, finir, prendre._
- **Participe** : _mangeant, fini, pris._
- **Gérondif** : _en mangeant._

---

## 2. Les temps simples et composés

Un temps **simple** se conjugue en un seul mot. Un temps **composé** se forme avec un **auxiliaire** (être ou avoir) + le **participe passé**.

| Temps simple | Temps composé correspondant |
| ------------ | --------------------------- |
| présent      | passé composé               |
| imparfait    | plus-que-parfait            |
| passé simple | passé antérieur             |
| futur simple | futur antérieur             |

**Exemple (verbe finir, indicatif) :**

- Présent : _je finis_
- Imparfait : _je finissais_
- Passé simple : _je finis_
- Futur simple : _je finirai_
- Passé composé : _j''ai fini_
- Plus-que-parfait : _j''avais fini_
- Futur antérieur : _j''aurai fini_

---

## 3. L''indicatif présent

### 3.1 Verbes du 1er groupe (en -er)

_aimer :_ j''aime, tu aimes, il aime, nous aimons, vous aimez, ils aiment.

### 3.2 Verbes du 2e groupe (en -ir, participe en -issant)

_finir :_ je finis, tu finis, il finit, nous finissons, vous finissez, ils finissent.

### 3.3 Verbes du 3e groupe (irréguliers)

- **être :** je suis, tu es, il est, nous sommes, vous êtes, ils sont.
- **avoir :** j''ai, tu as, il a, nous avons, vous avez, ils ont.
- **aller :** je vais, tu vas, il va, nous allons, vous allez, ils vont.
- **faire :** je fais, tu fais, il fait, nous faisons, vous faites, ils font.
- **prendre :** je prends, tu prends, il prend, nous prenons, vous prenez, ils prennent.

---

## 4. L''imparfait et le passé simple

### 4.1 L''imparfait

Radical de « nous » au présent + terminaisons **-ais, -ais, -ait, -ions, -iez, -aient**.

_Exemple :_ nous finissons → _je finissais, tu finissais, il finissait, nous finissions, vous finissiez, ils finissaient._

**Valeurs :** description, action longue, habitude dans le passé.

### 4.2 Le passé simple

**Valeurs :** action ponctuelle, soudaine, achevée dans le passé.

- 1er groupe : _je parlai, tu parlas, il parla, nous parlâmes, vous parlâtes, ils parlèrent._
- Verbes en -ir : _je finis, tu finis, il finit, nous finîmes, vous finîtes, ils finirent._
- Être : _je fus_ ; Avoir : _j''eus_ ; Faire : _je fis_ ; Prendre : _je pris_ ; Venir : _je vins._

---

## 5. Le futur simple

Terminaisons **-ai, -as, -a, -ons, -ez, -ont** ajoutées au futur (infinitif ou forme irrégulière).

- _Je mangerai, tu mangeras, il mangera, nous mangerons, vous mangerez, ils mangeront._
- Irréguliers : _je serai_ (être), _j''aurai_ (avoir), _j''irai_ (aller), _je ferai_ (faire), _je viendrai_ (venir), _je verrai_ (voir), _je pourrai_ (pouvoir).

---

## 6. Le conditionnel présent

Radical du futur + terminaisons de l''imparfait (**-ais, -ais, -ait, -ions, -iez, -aient**).

- _Je viendrais, tu viendrais, il viendrait, nous viendrions, vous viendriez, ils viendraient._

**Emploi :**

- Hypothèse avec « si » : _Si j''étais riche, j''achèterais une voiture._
- Souhait : _Je voudrais vous aider._
- Politesse : _Pourriez-vous m''écouter ?_

---

## 7. Le subjonctif présent

Employé après des verbes de volonté, de doute, de sentiment, et certaines conjonctions (bien que, pour que, avant que...).

- **être :** que je sois, que tu sois, qu''il soit, que nous soyons, que vous soyez, qu''ils soient.
- **avoir :** que j''aie, que tu aies, qu''il ait, que nous ayons, que vous ayez, qu''ils aient.
- **aller :** que j''aille, que tu ailles, qu''il aille, que nous allions, que vous alliez, qu''ils aillent.
- **finir :** que je finisse, que tu finisses, qu''il finisse, que nous finissions, que vous finissiez, qu''ils finissent.

---

## 8. L''impératif présent

Sans sujet. Les trois personnes : tu, nous, vous.

- _Parle ! Parlons ! Parlez !_
- _Va ! Allons ! Allez !_
- _Sois ! Soyons ! Soyez !_ (être) ; _Aie ! Ayons ! Ayez !_ (avoir)

**Remarque :** à la 2e personne du singulier, les verbes du 1er groupe et « aller » ne prennent pas de « s » : _parle_, _va_.

---

## 9. Le participe passé et son accord

### 9.1 Accord avec être

Le participe passé s''accorde en genre et en nombre avec le sujet : _Elles sont parties._

### 9.2 Accord avec avoir

Il s''accorde avec le COD **si celui-ci est placé avant** le verbe : _Les mangues qu''il a **mangées**._ / _Il a mangé les mangues._ (COD placé après : pas d''accord).

### 9.3 Verbes pronominaux

- _Elle s''est lavée_ (réfléchi, COD = se) mais _Elle s''est lavé les mains_ (COD « les mains » placé après, participe invariable).

### 9.4 Homophones à ne pas confondre

- **a** (verbe avoir) / **à** (préposition) : _Il a un vélo à Yaoundé._
- **est** (verbe être) / **et** (conjonction) : _Il est grand et fort._
- **son** (possessif) / **sont** (verbe être) : _Ils sont dans son jardin._

---

## 10. Erreurs à éviter

- Confondre futur simple et conditionnel présent (je viendrai / je viendrais).
- Oublier que le conditionnel se conjugue avec la terminaison en -rais.
- Employer l''indicatif après « bien que » (il faut le subjonctif : _bien qu''il soit_).
- Accorder le participe passé avec avoir quand le COD est placé après.

---

## 11. Exercices d''entraînement

**Exercice 1 :** Conjugue « prendre » au présent, à l''imparfait, au futur simple et au passé simple (je, nous, ils).

**Exercice 2 :** Conjugue « être » et « avoir » au subjonctif présent.

**Exercice 3 :** Mets au temps demandé : a) _Quand il (finir) son travail, il partira._ (futur antérieur) ; b) _Si tu (venir), tu aurais été content._ (plus-que-parfait).

**Exercice 4 :** Accorde le participe passé : a) _Les fleurs qu''elle a (cueillir) *** ; b) Elle s''est (laver) *** les mains._

**Exercice 5 :** Complète avec « a/à » ou « est/et » : _Il *** allé *** l''école, il *** content *** fatigué._
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Français Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Français — L'expression écrite et la compréhension
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '70ff7cd7-9522-832c-fa6e-176636fa1acd', 'fr-bepc-francais-expression', 'Français', 'BEPC — Français — L''expression écrite et la compréhension',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Français — L''expression écrite et la compréhension

**Niveau :** Troisième — BEPC
**Matière :** Français

## Objectifs d''apprentissage

- Comprendre un texte : en saisir le sens global, l''idée principale et les informations essentielles.
- Savoir résumer un texte en respectant sa progression.
- Répondre à des questions de compréhension en s''appuyant sur le texte.
- Identifier les figures de style et leur effet.
- Produire un texte écrit (récit, description, argumentation, lettre) clair, organisé et correct.

---

## 1. Comprendre un texte

La lecture attentive est la première étape. Il faut lire le texte **plusieurs fois** : une première lecture pour le sens global, une seconde pour les détails, une troisième en lien avec les questions.

### 1.1 Les questions à se poser

- **Qui ?** (les personnages), **Quoi ?** (l''action), **Où ?** (le lieu), **Quand ?** (le moment), **Comment ?** (la manière), **Pourquoi ?** (la cause).

### 1.2 Trouver l''idée principale

L''idée principale est l''information essentielle d''un paragraphe. Elle est souvent annoncée par la première phrase, reprise ou résumée à la fin.

**Exemple :** _« La pluie tomba toute la nuit. Au matin, la rivière avait inondé les champs. »_ → Idée principale : les fortes pluies ont provoqué une inondation.

---

## 2. Le résumé de texte

Résumer, c''est **réduire** un texte en ne gardant que l''essentiel, avec ses propres mots.

### 2.1 Les règles

- Ne pas copier les phrases du texte.
- Garder la progression du texte (ordre des idées).
- Éliminer les détails, exemples et répétitions.
- Respecter le nombre de phrases ou de mots demandés.

**Exemple :** _« Le petit Koffi rêvait de devenir médecin. Il parcourait dix kilomètres pour aller à l''école. Devenu médecin, il revint au village et construisit un dispensaire. »_ → Résumé : _« Koffi, un garçon pauvre mais travailleur, réalise son rêve de devenir médecin et revient servir son village. »_

---

## 3. Répondre aux questions de compréhension

- **Relire** la question avant de répondre.
- **Répondre avec des phrases complètes**, en reprenant les mots de la question.
- **Justifier** avec des citations du texte quand c''est demandé.
- Ne pas inventer : s''appuyer sur le texte.

**Exemple :** Question : « Quel sentiment éprouve le pêcheur ? » Réponse correcte : « Le pêcheur éprouve de la satisfaction, car le texte dit qu''il "sourit, satisfait". »

---

## 4. Les figures de style

Identifier une figure de style, c''est reconnaître un écart entre le langage ordinaire et le langage imagé, puis expliquer son **effet**.

### 4.1 La comparaison

Rapproche deux éléments à l''aide d''un outil (_comme, tel, semblable à, aussi... que_).

**Exemple :** _« Les poissons brillaient comme des monnaies d''or. »_ → Compare les poissons à des pièces d''or pour souligner leur éclat et leur valeur.

### 4.2 La métaphore

Rapproche deux éléments **sans outil** de comparaison ; l''un est directement appelé l''autre.

**Exemple :** _« Ses yeux sont deux étoiles. »_

### 4.3 La personnification

Donne des caractéristiques humaines à un objet, un animal ou une idée.

**Exemple :** _« La rivière avait quitté son lit. »_

### 4.4 L''hyperbole

Exagère la réalité pour insister.

**Exemple :** _« Je meurs de faim. »_

### 4.5 L''antithèse

Oppose deux idées ou deux mots.

**Exemple :** _« La terre rend ce qu''elle a reçu. »_ (donner/rendre).

### 4.6 L''accumulation

Énumère des termes pour créer un effet de profusion.

**Exemple :** _« fruits éclatants, tissus aux couleurs vives, casseroles qui tintaient. »_

---

## 5. Produire un texte écrit

### 5.1 La démarche (le brouillon)

1. **Comprendre le sujet** : quel type de texte demande-t-on (récit, description, lettre) ?
2. **Trouver des idées** : noter au brouillon les idées principales.
3. **Organiser** : introduire, développer en paragraphes, conclure.
4. **Rédiger** : écrire proprement en respectant la langue.
5. **Relire** : vérifier l''orthographe, la grammaire, la ponctuation et le nombre de mots.

### 5.2 La structure d''un paragraphe

- **Phrase d''introduction** : annonce le sujet.
- **Développement** : idées + exemples, en 2 ou 3 phrases.
- **Conclusion** : résume ou ouvre.

### 5.3 Les types de textes

- **Le récit** : raconte une histoire (narrateur, personnages, actions). Utilise le passé, les connecteurs de temps (_ensuite, puis, soudain_).
- **La description** : présente un lieu, un objet, un personnage. Utilise des adjectifs, des comparaisons, le présent ou l''imparfait.
- **L''argumentation** : défend une opinion. Utilise des connecteurs logiques (_car, parce que, donc, en effet_) et des exemples.
- **La lettre** : destinataire, formule d''appel, corps de la lettre, formule de politesse.

---

## 6. Conseils pour réussir

- Soigner la **présentation** : sauter des lignes, écrire lisiblement.
- Employer des **connecteurs** pour relier les idées.
- Varier le **vocabulaire** (éviter les répétitions, utiliser des synonymes).
- Vérifier **l''orthographe** et la **ponctuation** à la relecture.
- Respecter le **nombre de mots** demandé.

---

## 7. Erreurs à éviter

- Recopier des phrases entières du texte dans le résumé.
- Répondre hors sujet en donnant son avis personnel quand on demande une analyse du texte.
- Identifier une figure de style sans l''expliquer.
- Oublier de relire son travail avant de le rendre.

---

## 8. Exercices d''entraînement

**Exercice 1 :** Résume en deux phrases : _« Le marché s''éveillait dans un brouhaha. Les vendeuses étalaient leurs marchandises et une vieille dame avançait lentement, son panier sur la tête. »_

**Exercice 2 :** Identifie et explique la figure de style : _« L''école est la clé qui ouvre toutes les portes. »_

**Exercice 3 :** D''après toi, pourquoi le vieux Mamadou reste-t-il calme face à l''inondation ? Justifie.

**Exercice 4 :** Rédige un paragraphe de 80 mots sur le sujet : « Décris ta meilleure amie ou ton meilleur ami. »

**Exercice 5 :** Rédige un paragraphe argumentatif de 80 mots : « Pourquoi est-il important de protéger la nature ? »
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Français Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Français — Grammaire essentielle
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0071345c-d9ae-91f2-951a-fde18b014a30', 'fr-bepc-francais-expression', 'Français', 'Fiche — BEPC — Français — Grammaire essentielle',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Français — Grammaire essentielle

**Niveau :** Troisième — BEPC
**Matière :** Français

---

# Fiche de révision — Grammaire française

## Les classes grammaticales (natures)

- **Nom** : table, ville, Courage (propre).
- **Déterminant** : le, un, mon, ce, trois.
- **Adjectif qualificatif** : beau, grand, courageux.
- **Pronom** : il, qui, celui-ci, le, dont.
- **Verbe** : manger, courir, être.
- **Adverbe** : vite, hier, très, ne...pas.
- **Préposition** : à, de, dans, par, pour, sans.
- **Conjonction** : de coordination (mais, ou, et, donc, or, ni, car) ; de subordination (que, quand, parce que, si, bien que).

## Les fonctions principales

- **Sujet** : commande le verbe. → _Le chien aboie._
- **COD** : sans préposition, répond « quoi ?/qui ? ». → _Il mange une mangue._
- **COI** : avec préposition, répond « à qui ?/de quoi ? ». → _Il parle à son ami._
- **CC** : temps, lieu, manière, cause, but... → _Il part demain._
- **Attribut du sujet** : après verbe d''état (être, paraître, devenir, sembler). → _Elle est contente._
- **Complément du nom** : → _la cour de l''école._

## Les types de phrases

- Déclarative : _Il pleut._ / Interrogative : _Pleut-il ?_
- Exclamative : _Quelle pluie !_ / Injonctive : _Ferme la porte !_

## Les formes de phrases

- Affirmative / négative : _Il vient / il ne vient pas._
- Active / passive : _Le lion mange la gazelle / la gazelle est mangée par le lion._
- Emphatique : _C''est lui qui a gagné._

## Les propositions

- **Indépendante** : ne dépend de rien.
- **Principale + subordonnée** : la subordonnée dépend de la principale.
- **Relative** : pronom relatif (qui, que, dont, où), complète un nom. → _Le livre **que je lis**._
- **Complétive** : « que », COD du verbe. → _Je crois **qu''il viendra**._
- **Circonstancielle** : temps, cause, but, conséquence, concession, condition. → **\*Quand** il pleut, je reste.\*

## Discours direct / indirect

- Direct : _Il dit : « Je viens demain. »_
- Indirect : _Il dit qu''il vient le lendemain._
- Changements : je → il/elle ; demain → le lendemain ; présent → imparfait ; futur → conditionnel.

## Pièges à éviter

- Ne pas confondre nature (ce que le mot est) et fonction (ce qu''il fait).
- COD = pas de préposition ; COI = avec préposition.
- Une relative complète toujours un nom (antécédent).
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Français Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Français — Conjugaison et accords
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '101fcef9-9007-6c25-f7f3-9641d90c1700', 'fr-bepc-francais-expression', 'Français', 'Fiche — BEPC — Français — Conjugaison et accords',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Français — Conjugaison et accords

**Niveau :** Troisième — BEPC
**Matière :** Français

---

# Fiche de révision — Conjugaison et accords

## Les temps composés

Temps composé = auxiliaire (être ou avoir) + participe passé.

- présent → passé composé : _je mange / j''ai mangé_
- imparfait → plus-que-parfait : _je mangeais / j''avais mangé_
- futur simple → futur antérieur : _je mangerai / j''aurai mangé_

## Verbes du 1er groupe (présent)

- _aimer :_ aime, aimes, aime, aimons, aimez, aiment.

## Verbes du 2e groupe (présent, -issant)

- _finir :_ finis, finis, finit, finissons, finissez, finissent.

## Verbes du 3e groupe (irréguliers, présent)

- **être :** suis, es, est, sommes, êtes, sont.
- **avoir :** ai, as, a, avons, avez, ont.
- **aller :** vais, vas, va, allons, allez, vont.
- **faire :** fais, fais, fait, faisons, faites, font.
- **prendre :** prends, prends, prend, prenons, prenez, prennent.

## L''imparfait (radical de « nous » + -ais...)

- _finir :_ je finissais, tu finissais, il finissait, nous finissions, vous finissiez, ils finissaient.
- _être :_ j''étais, tu étais, il était, nous étions, vous étiez, ils étaient.

## Le passé simple

- 1er groupe : _je parlai._ — en -ir : _je finis._
- être : _je fus_ ; avoir : _j''eus_ ; faire : _je fis_ ; prendre : _je pris_ ; venir : _je vins_ ; voir : _je vis._

## Le futur simple (infinitif + -ai, -as, -a...)

- _je mangerai, je finirai._
- être : _je serai_ ; avoir : _j''aurai_ ; aller : _j''irai_ ; faire : _je ferai_ ; venir : _je viendrai_ ; voir : _je verrai_ ; pouvoir : _je pourrai._

## Le conditionnel présent (futur + terminaisons imparfait)

- _je finirais, tu finirais, il finirait, nous finirions, vous finiriez, ils finiraient._
- **Usage :** hypothèse avec « si » (_Si j''étais riche, j''achèterais..._) ; souhait (_Je voudrais_) ; politesse.

## Le subjonctif présent

- **être :** que je sois, tu sois, il soit, nous soyons, vous soyez, ils soient.
- **avoir :** que j''aie, tu aies, il ait, nous ayons, vous ayez, ils aient.
- **aller :** que j''aille, tu ailles, il aille, nous allions, vous alliez, ils aillent.
- **finir :** que je finisse, tu finisses, il finisse, nous finissions, vous finissiez, ils finissent.

## L''impératif présent (sans sujet)

- _Parle ! Parlons ! Parlez !_ — _Va ! Allons ! Allez !_
- être : _Sois ! Soyons ! Soyez !_ — avoir : _Aie ! Ayons ! Ayez !_
- 2e pers. singulier des verbes en -er et « aller » : pas de « s » (_parle, va_).

## L''accord du participe passé

- **Avec être** : accord avec le sujet. → _Elles sont parties._
- **Avec avoir** : accord avec le COD placé **avant**. → _Les mangues qu''il a mangées_ / _Il a mangé les mangues._
- **Pronominaux** : _Elle s''est lavée_ mais _Elle s''est lavé les mains._

## Homophones à ne pas confondre

- **a** (verbe) / **à** (préposition) : _Il a un livre à Yaoundé._
- **est** (verbe) / **et** (conj.) : _Il est grand et fort._
- **on / ont** : _On a fini / ils ont fini._
- **son / sont** : _Ils sont dans son jardin._
- **ce / se** : _Ce sont eux / il se lève._

## Pièges à éviter

- Ne pas confondre futur (_je viendrai_) et conditionnel (_je viendrais_).
- Après « bien que, pour que, avant que » : subjonctif (_bien qu''il soit_).
- Vérifier l''accord du participe passé avec « avoir ».
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Français Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Français — Figures de style et méthodes
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'dcee1398-c2bc-5843-f5c2-78cb975b4add', 'fr-bepc-francais-expression', 'Français', 'Fiche — BEPC — Français — Figures de style et méthodes',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Français — Figures de style et méthodes

**Niveau :** Troisième — BEPC
**Matière :** Français

---

# Fiche de révision — Figures de style et expression écrite

## Les figures de style (les reconnaître et les expliquer)

- **Comparaison** : rapproche 2 éléments avec un outil (_comme, tel, semblable à_). → _« Il est fort comme un lion. »_
- **Métaphore** : rapproche 2 éléments **sans outil**. → _« Ses yeux sont deux étoiles. »_
- **Personnification** : attribue des traits humains à un objet/animal/idée. → _« La rivière avait quitté son lit. »_
- **Hyperbole** : exagération. → _« Je meurs de faim. »_
- **Antithèse** : opposition de deux idées. → _« La terre rend ce qu''elle a reçu. »_
- **Accumulation** : énumération pour créer un effet. → _« fruits, tissus, casseroles. »_
- **Répétition** : insiste sur une idée.
- **Métonymie** : remplace un mot par un autre lié. → _« boire un verre »_ (le contenu par le contenant).

## Comment expliquer une figure de style

1. **Nommer** la figure.
2. **Identifier** les éléments rapprochés.
3. **Expliquer l''effet** : que veut montrer l''auteur (beauté, force, émotion) ?

**Exemple :** _« Les poissons brillaient comme des monnaies d''or »_ → comparaison ; poissons = monnaies d''or ; effet : souligner leur éclat et leur valeur.

## Les champs lexicaux

Ensemble de mots liés à un même thème.

- Champ lexical de la **mer** : vague, bateau, pêcheur, marée, poisson.
- Champ lexical de la **peur** : trembler, effrayant, crainte, panique.

## Conseils pour le résumé

- Ne pas copier le texte ; garder l''essentiel et l''ordre des idées.
- Éliminer détails et répétitions ; respecter le nombre de mots.

## Conseils pour la rédaction

1. Lire et comprendre le sujet.
2. Trouver ses idées au brouillon.
3. Organiser : introduction → développement (paragraphes) → conclusion.
4. Rédiger avec des connecteurs (d''abord, ensuite, enfin, donc, parce que).
5. **Relire** : orthographe, grammaire, ponctuation, nombre de mots.

## Les types de textes

- **Récit** : passé, personnages, actions, connecteurs de temps.
- **Description** : adjectifs, comparaisons, présent/imparfait.
- **Argumentation** : opinion + connecteurs logiques + exemples.
- **Lettre** : formule d''appel, corps, formule de politesse.

## Erreurs à éviter à l''examen

- Recopier des phrases du texte dans le résumé.
- Identifier une figure sans l''expliquer.
- Répondre hors sujet (donner son avis quand on demande d''analyser).
- Oublier de relire son travail avant de le rendre.
- Ne pas respecter le nombre de mots demandé.

## Questions à se poser sur un texte

- Qui ? Quoi ? Où ? Quand ? Comment ? Pourquoi ?
- Quelle est l''idée principale ? (souvent en début ou fin de paragraphe)
- Quel est le type de narration (1re ou 3e personne) ?
- Quels sont les sentiments exprimés ?
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Français Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Update MCQ 1 for Français
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC FRANÇAIS — ÉPREUVE 1 (QCM) — SÉRIE 1

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Français
**Durée :** 1 heure
**Coefficient :** 1

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Dans la phrase « Les élèves **révisent** leurs leçons chaque soir. », le mot en gras est :

A. un nom
B. un verbe conjugué
C. un adjectif qualificatif
D. un adverbe

---

**Question 2.** Dans la phrase « Le petit garçon joue dans la cour. », « petit » est :

A. un adjectif qualificatif épithète
B. un déterminant possessif
C. un adverbe de manière
D. un pronom relatif

---

**Question 3.** Le complément d''objet direct (COD) de la phrase « Amina mange **une mangue** mûre. » est :

A. Amina
B. mange
C. une mangue
D. mûre

---

**Question 4.** Quel est le mode et le temps du verbe « viendrait » dans « Je souhaiterais qu''il **viendrait** demain. » ?

A. indicatif futur simple
B. conditionnel présent
C. subjonctif présent
D. indicatif imparfait

---

**Question 5.** La phrase « Il pleut des cordes. » est une figure de style appelée :

A. une métaphore
B. une comparaison
C. une hyperbole
D. une métonymie

---

**Question 6.** Quel mot est correctement orthographié ?

A. Les élèvent sont sages
B. Les élèves sont sages
C. Les élève sont sages
D. Les élèves son sages

---

**Question 7.** Le pluriel du mot « un cheval » est :

A. des chevals
B. des chevaux
C. des cheveaux
D. des chevaus

---

**Question 8.** Dans la phrase « **Quand** il arrive, il salue tout le monde. », le mot en gras indique :

A. le temps
B. le lieu
C. la cause
D. le but

---

**Question 9.** Le synonyme du mot « courir » est :

A. marcher
B. galoper
C. s''asseoir
D. dormir

---

**Question 10.** Dans « Elle chante **aussi bien que** sa sœur. », on a affaire à :

A. une comparaison
B. une métaphore
C. une personnification
D. une antithèse

---

## CORRIGÉ

1. B — « révisent » est un verbe conjugué au présent de l''indicatif.
2. A — « petit » est un adjectif qualificatif épithète qui qualifie « garçon ».
3. C — « une mangue » répond à la question « mange quoi ? ».
4. B — « viendrait » est au conditionnel présent (terminaison -rait).
5. A — « Il pleut des cordes » est une métaphore (assimilation de la pluie à des cordes, sans outil de comparaison).
6. B — « Les élèves sont sages » : « élèves » prend un s, « sont » est le verbe être.
7. B — le pluriel de « cheval » est « chevaux ».
8. A — « quand » exprime le temps.
9. B — « galoper » est un synonyme de « courir » (courir à toute allure).
10. A — l''outil de comparaison « aussi bien que » introduit une comparaison.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '4084a1e5-155f-7de9-8be1-4533e6be8d5f';


-- Update MCQ 2 for Français
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC FRANÇAIS — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Français
**Durée :** 1 heure
**Coefficient :** 1

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Dans la phrase « Le chien **qui** aboie ne mord pas. », « qui » est :

A. un pronom relatif
B. un déterminant démonstratif
C. une conjonction de coordination
D. un pronom personnel

---

**Question 2.** Conjugué au futur simple, « nous finir » devient :

A. nous finissions
B. nous finirons
C. nous finîmes
D. nous finissions

---

**Question 3.** Le groupe de mots « **avec prudence** » dans « Il conduit avec prudence. » est :

A. un complément d''objet direct
B. un complément circonstanciel de manière
C. un complément du nom
D. un attribut du sujet

---

**Question 4.** La phrase « Ses yeux sont deux étoiles. » contient une figure de style appelée :

A. une comparaison
B. une métaphore
C. une allégorie
D. une hyperbole

---

**Question 5.** Quel est le participe passé du verbe « prendre » ?

A. prenant
B. pris
C. prise
D. prendu

---

**Question 6.** Dans « Il fait très chaud **aujourd''hui**. », le mot en gras est un :

A. adjectif
B. adverbe
C. déterminant
D. nom

---

**Question 7.** La forme correcte de l''accord du participe passé est :

A. Elle s''est lavée les mains
B. Elle s''est lavé les mains
C. Elle s''est lavés les mains
D. Elle s''est lavées les mains

---

**Question 8.** Le contraire du mot « généreux » est :

A. avare
B. gentil
C. courageux
D. honnête

---

**Question 9.** Dans « Il travaille **pour** réussir. », la subordonnée exprime :

A. la cause
B. le but
C. la conséquence
D. la condition

---

**Question 10.** « Le vent **souffle** doucement dans les arbres. » — le mot en gras est conjugué au :

A. présent de l''indicatif
B. imparfait de l''indicatif
C. passé simple
D. futur simple

---

## CORRIGÉ

1. A — « qui » est un pronom relatif qui introduit la proposition relative « qui aboie ».
2. B — au futur simple, « nous finirons ».
3. B — « avec prudence » répond à la question « comment ? » : complément circonstanciel de manière.
4. B — « Ses yeux sont deux étoiles » est une métaphore (assimilation directe, sans outil de comparaison).
5. B — le participe passé de « prendre » est « pris ».
6. B — « aujourd''hui » est un adverbe de temps.
7. B — « Elle s''est lavé les mains » : le COD « les mains » est placé après, le participe reste invariable.
8. A — le contraire de « généreux » est « avare ».
9. B — « pour réussir » exprime le but.
10. A — « souffle » est au présent de l''indicatif.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '0232b458-223d-c5bf-e681-39e0de21b027';


-- Update MCQ 3 for Français
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC FRANÇAIS — ÉPREUVE 1 (QCM) — SÉRIE 3

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Français
**Durée :** 1 heure
**Coefficient :** 1

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Dans la phrase « Nous **sommes** arrivés à l''heure. », le verbe est conjugué au :

A. passé composé
B. plus-que-parfait
C. futur antérieur
D. présent de l''indicatif

---

**Question 2.** Le nom « la beauté » est formé à partir de l''adjectif :

A. beau
B. belle
C. bête
D. beurré

---

**Question 3.** Dans la phrase « Le professeur **dont** tu parles est gentil. », « dont » est :

A. un pronom relatif
B. une préposition
C. un déterminant
D. une conjonction de subordination

---

**Question 4.** La figure de style dans « Ce héros a un cœur de lion. » est :

A. une métaphore
B. une comparaison
C. une répétition
D. une antithèse

---

**Question 5.** Quelle est la forme correcte de l''impératif présent du verbe « aller » à la 2e personne du singulier ?

A. vas
B. va
C. va-t''en
D. allons

---

**Question 6.** Le mot « inutile » est formé avec le préfixe :

A. in-
B. un-
C. im-
D. dé-

---

**Question 7.** Dans la phrase « **Quoiqu''il** soit fatigué, il continue. », la subordonnée exprime :

A. la concession
B. la cause
C. la conséquence
D. le temps

---

**Question 8.** Le pluriel de « un travail » est :

A. des travails
B. des travaux
C. des travailes
D. des travaus

---

**Question 9.** L''attribut du sujet dans « Mon frère est **devenu** médecin. » est :

A. mon frère
B. est devenu
C. médecin
D. est

---

**Question 10.** Dans « Elle parle **lentement** pour se faire comprendre. », « lentement » est un adverbe de :

A. manière
B. temps
C. lieu
D. quantité

---

## CORRIGÉ

1. A — « nous sommes arrivés » est au passé composé (auxiliaire être + participe passé).
2. A — « la beauté » dérive de l''adjectif « beau ».
3. A — « dont » est un pronom relatif (complément du nom « parles »).
4. A — « un cœur de lion » est une métaphore (courage assimilé à celui du lion, sans outil de comparaison).
5. B — à l''impératif présent, la 2e personne du singulier d''« aller » est « va » (sans s).
6. A — le préfixe « in- » forme « inutile ».
7. A — « quoique » introduit une subordonnée de concession.
8. B — le pluriel de « travail » est « travaux ».
9. C — « médecin » est l''attribut du sujet, relié par le verbe d''état « est devenu ».
10. A — « lentement » est un adverbe de manière (répond à « comment ? »).
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'ddbd824d-50d0-f34f-1e86-27a0d49eb211';


-- Update set 4 for Français
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC FRANÇAIS — ÉPREUVE 2 — SÉRIE 4

## Épreuve de rédaction et d''analyse

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Français
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- Cette épreuve comporte 4 sections (grammaire, conjugaison, vocabulaire/orthographe, compréhension/expression).
- Chaque section contient 5 exercices. Chaque exercice vaut 5 points.
- Réponds sur ta copie en soignant l''orthographe et la présentation.

---

## SECTION A : GRAMMAIRE

**Exercice 1.** Analyse grammaticale complète de la phrase : « Le courageux paysan qui cultive son champ mérite notre respect. »
a) Identifie le sujet, le verbe et le prédicat. _(2 points)_
b) Nomme la nature et la fonction de la proposition relative. _(2 points)_
c) Donne la classe grammaticale de « courageux » et de « notre ». _(1 point)_

**Exercice 2.** Transforme la phrase « Le directeur interroge les candidats. » en :
a) voix passive _(2 points)_
b) forme négative _(1 point)_
c) forme interrogative _(2 points)_

**Exercice 3.** Dans la phrase « Bien qu''il soit malade, il est venu à l''école. » :
a) identifie la proposition principale et la subordonnée. _(2 points)_
b) précise la nature de la subordonnée. _(1 point)_
c) remplace « bien que » par « quoique » sans changer le sens. _(2 points)_

**Exercice 4.** Analyse la fonction des mots soulignés dans : « Le professeur donne des **exercices** aux **élèves**. »
a) « exercices » _(2 points)_
b) « élèves » _(2 points)_
c) Justifie brièvement chaque réponse. _(1 point)_

**Exercice 5.** Distingue dans les phrases suivantes la subordonnée complétive et la subordonnée relative :
a) « Je pense **que tu as raison**. » _(2 points)_
b) « Le livre **que tu lis** est intéressant. » _(2 points)_
c) Justifie la distinction. _(1 point)_

---

## SECTION B : CONJUGAISON

**Exercice 6.** Conjugue le verbe « vouloir » au présent, au futur simple et au conditionnel présent (je, nous, ils). _(5 points)_

**Exercice 7.** Conjugue « être » et « avoir » au subjonctif présent (que je, que tu, que nous, qu''ils). _(5 points)_

**Exercice 8.** Mets les verbes entre parenthèses au temps demandé :
a) Quand il (arriver) \_**\_, nous partirons. (futur antérieur) _(2 points)_
b) Si tu (venir) \_\_**, tu aurais vu le spectacle. (plus-que-parfait) _(2 points)_
c) Hier, nous (aller) \_\_\_\_ au marché. (passé composé) _(1 point)_

**Exercice 9.** Conjugue le verbe « prendre » au passé simple puis à l''imparfait de l''indicatif (je, tu, nous). _(5 points)_

**Exercice 10.** Emploie correctement « a / à » et « est / et » dans les phrases suivantes :
a) Il **_ acheté une chemise _** son frère. _(2 points)_
b) Le chat **_ sur le toit _** il miaule. _(2 points)_
c) Justifie chaque choix. _(1 point)_

---

## SECTION C : VOCABULAIRE ET ORTHOGRAPHE

**Exercice 11.** Donne le sens propre et le sens figuré de chacun des mots suivants, avec une phrase d''exemple : « coeur », « feuille ». _(5 points)_

**Exercice 12.** Corrige les fautes de la phrase : « Je me suis rendu compte que j''avais fais une erreure grave. » _(5 points)_

**Exercice 13.** Forme le féminin des adjectifs suivants et emploie-les dans une phrase : « sportif », « actif », « neuf ». _(5 points)_

**Exercice 14.** Donne un synonyme et un antonyme de : « rapide », « ancien », « triste ». _(5 points)_

**Exercice 15.** Explique la différence entre les homophones « ou » et « où », puis emploie chacun dans une phrase. _(5 points)_

---

## SECTION D : COMPRÉHENSION ET EXPRESSION

**Lisez le texte suivant.**

_« La pluie tomba toute la nuit sur le village. Au matin, la rivière avait quitté son lit et envahissait les champs. Les paysans, inquiets, couraient sauver leurs bêtes. Seul le vieux Mamadou restait calme, perché sur la colline, regardant l''eau monter. "La terre rend ce qu''elle a reçu," murmura-t-il, en pensant aux années de sécheresse. Quand le soleil revint, les eaux se retirèrent, laissant derrière elles une boue fertile et de jeunes pousses vertes. »_

**Exercice 16.** Résume le texte en trois phrases. _(5 points)_

**Exercice 17.** Explique la phrase de Mamadou : « La terre rend ce qu''elle a reçu. » Que veut-il dire ? _(5 points)_

**Exercice 18.** Identifie deux figures de style présentes dans le texte et explique-les. _(5 points)_

**Exercice 19.** À ton avis, quel sentiment domine à la fin du texte ? Justifie ta réponse en t''appuyant sur le texte. _(5 points)_

**Exercice 20.** Rédige un paragraphe de 80 à 100 mots : « L''importance de l''eau dans la vie quotidienne de ton village. » _(5 points)_

---

## CORRIGÉ TYPE

**Ex.1.** a) Sujet : « Le courageux paysan qui cultive son champ » ; verbe : « mérite » ; prédicat : « mérite notre respect ». b) « qui cultive son champ » est une proposition subordonnée relative, complément de l''antécédent « paysan ». c) « courageux » : adjectif qualificatif ; « notre » : déterminant possessif.

**Ex.2.** a) « Les candidats sont interrogés par le directeur. » b) « Le directeur n''interroge pas les candidats. » c) « Est-ce que le directeur interroge les candidats ? » ou « Le directeur interroge-t-il les candidats ? »

**Ex.3.** a) Principale : « il est venu à l''école » ; subordonnée : « Bien qu''il soit malade ». b) Subordonnée de concession. c) « Quoiqu''il soit malade, il est venu à l''école. »

**Ex.4.** a) « exercices » : complément d''objet direct (donne quoi ? des exercices). b) « élèves » : complément d''objet indirect (donne à qui ? aux élèves). c) Réponses fondées sur la question posée au verbe.

**Ex.5.** a) « que tu as raison » : subordonnée complétive (COD du verbe « pense »). b) « que tu lis » : subordonnée relative (complète l''antécédent « livre »). c) La relative est introduite par un pronom relatif et complète un nom ; la complétive complète un verbe.

**Ex.6.** Présent : je veux, nous voulons, ils veulent. Futur : je voudrai, nous voudrons, ils voudront. Conditionnel : je voudrais, nous voudrions, ils voudraient.

**Ex.7.** Être : que je sois, que tu sois, que nous soyons, qu''ils soient. Avoir : que j''aie, que tu aies, que nous ayons, qu''ils aient.

**Ex.8.** a) Quand il sera arrivé, nous partirons. b) Si tu étais venu, tu aurais vu le spectacle. c) Hier, nous sommes allés au marché.

**Ex.9.** Passé simple : je pris, tu pris, nous prîmes. Imparfait : je prenais, tu prenais, nous prenions.

**Ex.10.** a) « Il a acheté une chemise à son frère » (a = verbe avoir ; à = préposition). b) « Le chat est sur le toit et il miaule » (est = verbe être ; et = conjonction).

**Ex.11.** « Cœur » : sens propre = organe du corps ; sens figuré = siège des sentiments. « Feuille » : sens propre = partie d''un arbre ; sens figuré = page de papier. Exemples à juger sur la justesse.

**Ex.12.** « Je me suis rendu compte que j''avais fait une erreur grave. » (fais → fait ; erreure → erreur).

**Ex.13.** sportif/sportive, actif/active, neuf/neuve. Phrases évaluées sur la correction.

**Ex.14.** rapide : synonyme « vif », antonyme « lent » ; ancien : « vieux », « moderne » ; triste : « morose », « joyeux ».

**Ex.15.** « ou » : conjonction de coordination (choix) ; « où » : pronom/adverbe de lieu ou de temps. Exemples évalués sur la justesse.

**Ex.16.** La pluie a fait déborder la rivière, inondant les champs. Les paysans craignent pour leurs bêtes, mais le vieux Mamadou reste serein. Les eaux se retirent et laissent une terre fertile.

**Ex.17.** Mamadou évoque le cycle naturel : après les pluies, la terre reprend sa fertilité et compense les années de sécheresse. Il exprime la confiance dans la nature.

**Ex.18.** Personnification : « la rivière avait quitté son lit » (la rivière agit comme un être humain). Métaphore : « la terre rend ce qu''elle a reçu ». L''élève doit nommer et justifier.

**Ex.19.** L''espoir et la sérénité dominent : le soleil revient, les eaux se retirent, des jeunes pousses vertes apparaissent.

**Ex.20.** Évaluation : respect du sujet et du nombre de mots, organisation, correction de la langue, richesse du vocabulaire.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '8bf7085f-009e-b765-534e-8705268d600e';


-- Update set 5 for Français
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC FRANÇAIS — ÉPREUVE 2 — SÉRIE 5

## Épreuve de rédaction et d''analyse

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Français
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- Cette épreuve comporte 4 sections (grammaire, conjugaison, vocabulaire/orthographe, compréhension/expression).
- Chaque section contient 5 exercices. Chaque exercice vaut 5 points.
- Réponds sur ta copie en soignant l''orthographe et la présentation.

---

## SECTION A : GRAMMAIRE

**Exercice 1.** Analyse grammaticale de la phrase : « Les voyageurs fatigués s''arrêtèrent devant l''auberge accueillante. »
a) Identifie le sujet et le verbe. _(1 point)_
b) Analyse la fonction de « fatigués », « devant l''auberge », « accueillante ». _(3 points)_
c) Donne la nature du pronom « s'' » dans « s''arrêtèrent ». _(1 point)_

**Exercice 2.** Distingue les verbes pronominaux réfléchis, réciproques et idiomatiques dans les phrases :
a) « Elle se lave les mains. » _(2 points)_
b) « Ils se sont parlé au téléphone. » _(2 points)_
c) « Il se souvient de son enfance. » _(1 point)_

**Exercice 3.** Transforme en discours indirect : « Il a dit : "Je partirai demain." » _(5 points)_

**Exercice 4.** Identifie la nature et la fonction de « que » dans :
a) « Je crois qu''il viendra. » _(2 points)_
b) « Le gâteau que tu as préparé est délicieux. » _(2 points)_
c) Justifie brièvement. _(1 point)_

**Exercice 5.** Analyse la phrase complexe : « Quand le soleil se lève, les oiseaux chantent et le village s''éveille. »
a) Compte les propositions. _(2 points)_
b) Nomme leur nature. _(2 points)_
c) Dis s''il s''agit d''une phrase complexe. _(1 point)_

---

## SECTION B : CONJUGAISON

**Exercice 6.** Conjugue le verbe « venir » au présent, au passé composé et au futur simple (je, tu, nous). _(5 points)_

**Exercice 7.** Conjugue « faire » au passé simple puis au plus-que-parfait (il, elle, ils). _(5 points)_

**Exercice 8.** Mets les verbes entre parenthèses au mode et temps demandés :
a) Il faut que tu (faire) \_**\_ tes devoirs. (subjonctif présent) _(2 points)_
b) Si j''étais riche, j'' (acheter) \_\_** une maison. (conditionnel présent) _(2 points)_
c) Demain, nous (visiter) \_\_\_\_ le musée. (futur simple) _(1 point)_

**Exercice 9.** Conjugue le verbe « courir » au présent, à l''imparfait et au passé simple (nous). _(5 points)_

**Exercice 10.** Complète avec « ce », « se » ou « ceux » :
a) **_ sont de braves gens. *(2 points)*
b) Il _** lève tôt chaque matin. _(2 points)_
c) \_\_\_ qui étudient réussiront. _(1 point)_

---

## SECTION C : VOCABULAIRE ET ORTHOGRAPHE

**Exercice 11.** Donne le sens propre et le sens figuré de « clair » et de « sombre », avec un exemple pour chaque. _(5 points)_

**Exercice 12.** Forme le pluriel des noms suivants et emploie-les dans une phrase : « un bijou », « un genou », « un journal ». _(5 points)_

**Exercice 13.** Trouve le mot de la même famille de : « terre », « beauté », « courage ». _(5 points)_

**Exercice 14.** Corrige les fautes : « Elle a étais contente de ce quelle a vue. » _(5 points)_

**Exercice 15.** Donne un synonyme et un antonyme de : « bavard », « riche », « tard ». _(5 points)_

---

## SECTION D : COMPRÉHENSION ET EXPRESSION

**Lisez le texte suivant.**

_« Le petit Koffi rêvait de devenir médecin. Chaque matin, avant l''aube, il parcourait dix kilomètres à pied pour rejoindre l''école du village voisin. Ses cahiers usés, il les remplissait de notes précieuses. "L''école est la clé qui ouvre toutes les portes," disait souvent son grand-père. Des années plus tard, le docteur Koffi revint dans son village. Il construisit un dispensaire et soigna gratuitement les malades. Ceux qui l''avaient vu courir pieds nus sur les sentiers racontaient avec fierté l''histoire de ce petit garçon devenu grand. »_

**Exercice 16.** Résume le texte en trois phrases. _(5 points)_

**Exercice 17.** Explique la métaphore : « L''école est la clé qui ouvre toutes les portes. » _(5 points)_

**Exercice 18.** Décris le caractère de Koffi en t''appuyant sur le texte. _(5 points)_

**Exercice 19.** Quelle leçon de vie ce texte enseigne-t-il ? Justifie. _(5 points)_

**Exercice 20.** Rédige un paragraphe de 80 à 100 mots : « Quels métiers aimerais-tu exercer plus tard, et pourquoi ? » _(5 points)_

---

## CORRIGÉ TYPE

**Ex.1.** a) Sujet : « Les voyageurs fatigués » ; verbe : « s''arrêtèrent ». b) « fatigués » : adjectif qualificatif épithète ; « devant l''auberge » : complément circonstanciel de lieu ; « accueillante » : adjectif qualificatif épithète. c) « s'' » est un pronom personnel réfléchi.

**Ex.2.** a) Réfléchi : l''action revient au sujet. b) Réciproque : ils se parlent mutuellement. c) Idiomatique (essentiellement pronominal) : le pronom n''a pas de fonction précise.

**Ex.3.** « Il a dit qu''il partirait le lendemain. » (changement de temps et de temps indicateur).

**Ex.4.** a) « que » : conjonction de subordination, introduit une complétive (COD de « crois »). b) « que » : pronom relatif, complète l''antécédent « gâteau ».

**Ex.5.** a) Trois propositions. b) « Quand le soleil se lève » : subordonnée circonstancielle de temps ; « les oiseaux chantent » : principale ; « et le village s''éveille » : coordonnée. c) Oui, c''est une phrase complexe car elle contient plusieurs propositions.

**Ex.6.** Présent : je viens, tu viens, nous venons. Passé composé : je suis venu(e), tu es venu(e), nous sommes venu(e)s. Futur : je viendrai, tu viendras, nous viendrons.

**Ex.7.** Passé simple : il fit, elle fit, ils firent. Plus-que-parfait : il avait fait, elle avait fait, ils avaient fait.

**Ex.8.** a) que tu fasses. b) j''achèterais. c) nous visiterons.

**Ex.9.** Présent : nous courons. Imparfait : nous courions. Passé simple : nous courûmes.

**Ex.10.** a) Ce sont de braves gens. b) Il se lève tôt. c) Ceux qui étudient réussiront.

**Ex.11.** « Clair » : sens propre = lumineux ; sens figuré = évident, compréhensible. « Sombre » : sens propre = peu éclairé ; sens figuré = triste, inquiétant. Exemples évalués sur la justesse.

**Ex.12.** des bijoux, des genoux, des journaux. Phrases évaluées sur la correction.

**Ex.13.** terre : terrain, terrien, atterrir. beauté : beau, embellir, embellissement. courage : courageux, encourager, décourager.

**Ex.14.** « Elle a été contente de ce qu''elle a vu. » (étais → été ; ce quelle → ce qu''elle ; vue → vu).

**Ex.15.** bavard : synonyme « loquace », antonyme « silencieux » ; riche : « opulent », « pauvre » ; tard : « tardivement », « tôt ».

**Ex.16.** Koffi, un petit garçon pauvre, marche chaque jour pour aller à l''école. Devenu médecin, il revient au village. Il construit un dispensaire et soigne gratuitement les malades.

**Ex.17.** L''école donne accès au savoir et au progrès, comme une clé ouvre les portes : elle permet d''améliorer sa condition de vie.

**Ex.18.** Koffi est courageux, déterminé, travailleur et généreux : il parcourt dix kilomètres, remplit soigneusement ses cahiers, puis soigne gratuitement les malades.

**Ex.19.** Le texte enseigne que l''éducation et le travail permettent de transformer sa vie et de servir sa communauté malgré les difficultés de départ.

**Ex.20.** Évaluation : respect du sujet et du nombre de mots, organisation, correction de la langue, richesse du vocabulaire.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '10df859a-8243-ff76-9ecc-06f13bbb0cf3';


-- Update set 6 for Français
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC FRANÇAIS — ÉPREUVE 2 — SÉRIE 6

## Épreuve de rédaction et d''analyse

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Français
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- Cette épreuve comporte 4 sections (grammaire, conjugaison, vocabulaire/orthographe, compréhension/expression).
- Chaque section contient 5 exercices. Chaque exercice vaut 5 points.
- Réponds sur ta copie en soignant l''orthographe et la présentation.

---

## SECTION A : GRAMMAIRE

**Exercice 1.** Analyse la phrase : « Les enfants heureux jouaient dans la cour de l''école. »
a) Identifie le sujet et le verbe. _(1 point)_
b) Analyse la fonction de « heureux », « dans la cour », « de l''école ». _(3 points)_
c) Donne la nature de « les ». _(1 point)_

**Exercice 2.** Distingue les propositions dans la phrase : « Il est parti parce qu''il était fatigué, mais il reviendra bientôt. »
a) Compte les propositions. _(2 points)_
b) Nomme leur nature et leur lien. _(3 points)_

**Exercice 3.** Transforme en discours indirect : « Le maître demanda : "Qui a fini son devoir ?" » _(5 points)_

**Exercice 4.** Identifie la fonction des pronoms soulignés :
a) « **Il** lui a donné **un livre**. » _(2 points)_
b) « Je **la** vois chaque jour. » _(2 points)_
c) Justifie. _(1 point)_

**Exercice 5.** Distingue COD, COI et COS dans :
a) « Elle offre **des fleurs** à **sa mère**. » _(2 points)_
b) « Il prête **son stylo** à **son camarade**. » _(2 points)_
c) Justifie l''identification. _(1 point)_

---

## SECTION B : CONJUGAISON

**Exercice 6.** Conjugue le verbe « voir » au présent, à l''imparfait et au futur simple (je, tu, ils). _(5 points)_

**Exercice 7.** Conjugue « boire » au passé simple puis au passé composé (nous, ils). _(5 points)_

**Exercice 8.** Mets les verbes entre parenthèses au temps demandé :
a) Nous (venir) \_**\_ quand le téléphone a sonné. (imparfait) _(2 points)_
b) Dès qu''il (finir) \_\_**, il sortira. (futur antérieur) _(2 points)_
c) Ils (partir) \_\_\_\_ en vacances la semaine dernière. (passé composé) _(1 point)_

**Exercice 9.** Conjugue le verbe « écrire » au présent, au futur simple et au passé simple (je, tu, nous). _(5 points)_

**Exercice 10.** Complète avec « et », « est », « a » ou « à » :
a) Il **_ parti _** midi. _(2 points)_
b) La maison **_ grande _** belle. _(2 points)_
c) Elle **_ deux frères _** Paris. _(1 point)_

---

## SECTION C : VOCABULAIRE ET ORTHOGRAPHE

**Exercice 11.** Donne le sens propre et le sens figuré de « léger » et de « doux », avec un exemple pour chacun. _(5 points)_

**Exercice 12.** Forme le féminin et le pluriel de : « un vendeur », « un acteur », « un chanteur ». _(5 points)_

**Exercice 13.** Trouve un mot de la même famille de : « soleil », « fleur », « montagne ». _(5 points)_

**Exercice 14.** Corrige les fautes : « Les enfans joue dans la cour, il sont très content. » _(5 points)_

**Exercice 15.** Donne un synonyme et un antonyme de : « joyeux », « ancien », « léger ». _(5 points)_

---

## SECTION D : COMPRÉHENSION ET EXPRESSION

**Lisez le texte suivant.**

_« Le marché de Douala s''éveillait dans un brouhaha de voix. Les vendeuses étalaient des fruits éclatants, des tissus aux couleurs vives, des casseroles qui tintaient. Entre les étals, une vieille dame avançait lentement, son panier sur la tête. Elle s''arrêta devant un jeune vendeur d''oranges. "Combien la douzaine ?" demanda-t-elle. "Maman, pour toi, c''est gratuit," répondit-il en souriant. La vieille dame, surprise, le remercia chaleureusement. Ce geste de générosité fit sourire les passants. Dans ce marché bruyant et animé, un simple partage rappelait que la solidarité n''a pas de prix. »_

**Exercice 16.** Résume le texte en trois phrases. _(5 points)_

**Exercice 17.** Décris l''atmosphère du marché en t''appuyant sur les mots du texte. _(5 points)_

**Exercice 18.** Qu''est-ce qui rend le geste du jeune vendeur remarquable ? Justifie. _(5 points)_

**Exercice 19.** Quelle est la leçon de ce texte sur la solidarité ? _(5 points)_

**Exercice 20.** Rédige un paragraphe de 80 à 100 mots : « Décris le marché de ton quartier et ce que l''on y trouve. » _(5 points)_

---

## CORRIGÉ TYPE

**Ex.1.** a) Sujet : « Les enfants heureux » ; verbe : « jouaient ». b) « heureux » : adjectif qualificatif épithète ; « dans la cour » : complément circonstanciel de lieu ; « de l''école » : complément du nom « cour ». c) « les » : déterminant article défini.

**Ex.2.** a) Trois propositions. b) « Il est parti » : principale ; « parce qu''il était fatigué » : subordonnée circonstancielle de cause ; « mais il reviendra bientôt » : proposition coordonnée (lien : conjonction « mais »).

**Ex.3.** « Le maître demanda qui avait fini son devoir. » (interrogation indirecte).

**Ex.4.** a) « Il » : pronom personnel sujet ; « lui » : pronom personnel COI ; « un livre » : COD. b) « la » : pronom personnel COD. c) Réponses fondées sur la fonction dans la phrase.

**Ex.5.** a) « des fleurs » : COD ; « à sa mère » : COI. b) « son stylo » : COD ; « à son camarade » : COI. c) Le COD répond à « quoi ? », le COI à « à qui ? ».

**Ex.6.** Présent : je vois, tu vois, ils voient. Imparfait : je voyais, tu voyais, ils voyaient. Futur : je verrai, tu verras, ils verront.

**Ex.7.** Passé simple : nous bûmes, ils burent. Passé composé : nous avons bu, ils ont bu.

**Ex.8.** a) Nous venions. b) Dès qu''il aura fini. c) Ils sont partis.

**Ex.9.** Présent : j''écris, tu écris, nous écrivons. Futur : j''écrirai, tu écriras, nous écrirons. Passé simple : j''écrivis, tu écrivis, nous écrivîmes.

**Ex.10.** a) Il est parti à midi. b) La maison est grande et belle. c) Elle a deux frères à Paris.

**Ex.11.** « Léger » : sens propre = peu pesant ; sens figuré = sans importance. « Doux » : sens propre = agréable au toucher ; sens figuré = gentil, calme. Exemples évalués.

**Ex.12.** un vendeur/une vendeuse ; un acteur/une actrice ; un chanteur/une chanteuse. Pluriels : vendeurs, acteurs, chanteurs.

**Ex.13.** soleil : ensoleillé, ensoleillement. fleur : fleurir, fleuri, fleuriste. montagne : montagnard, montagneux.

**Ex.14.** « Les enfants jouent dans la cour, ils sont très contents. » (enfans → enfants ; joue → jouent ; il → ils ; content → contents).

**Ex.15.** joyeux : synonyme « gai », antonyme « triste » ; ancien : « vieux », « moderne » ; léger : « peu pesant », « lourd ».

**Ex.16.** Le marché de Douala s''anime avec ses vendeurs et ses produits colorés. Une vieille dame demande des oranges à un jeune vendeur. Celui-ci les lui offre gratuitement, un geste qui émeut les passants.

**Ex.17.** L''atmosphère est animée et bruyante : « brouhaha de voix », « fruits éclatants », « tissus aux couleurs vives ». C''est un lieu vivant et coloré.

**Ex.18.** Le geste est remarquable car le vendeur renonce à son gain pour faire plaisir à une inconnue : c''est un acte de générosité désintéressée.

**Ex.19.** Le texte montre que la solidarité et le partage créent du lien et de la joie, même dans un univers marchand où tout a normalement un prix.

**Ex.20.** Évaluation : respect du sujet et du nombre de mots, organisation, correction de la langue, richesse du vocabulaire.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '9f562106-7112-d39c-53d1-970a5402f51e';


-- Update set 7 for Français
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC FRANÇAIS — ÉPREUVE 2 — SÉRIE 7

## Épreuve de rédaction et d''analyse

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Français
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- Cette épreuve comporte 4 sections (grammaire, conjugaison, vocabulaire/orthographe, compréhension/expression).
- Chaque section contient 5 exercices. Chaque exercice vaut 5 points.
- Réponds sur ta copie en soignant l''orthographe et la présentation.

---

## SECTION A : GRAMMAIRE

**Exercice 1.** Analyse la phrase : « Le grand fleuve qui traverse la ville borde les plantations. »
a) Identifie le sujet, le verbe et le prédicat. _(2 points)_
b) Nomme la nature de la proposition relative. _(2 points)_
c) Donne la classe grammaticale de « grand » et « la ». _(1 point)_

**Exercice 2.** Distingue la cause et la conséquence dans :
a) « Il est tombé parce qu''il courait trop vite. » _(2 points)_
b) « Il a tant couru qu''il est tombé. » _(2 points)_
c) Justifie à l''aide des connecteurs. _(1 point)_

**Exercice 3.** Transforme en discours indirect : « Elle dit : "Je vais au marché demain." » _(5 points)_

**Exercice 4.** Identifie la fonction des groupes soulignés :
a) « Le fermier **plante des maïs** dans son champ. » _(2 points)_
b) « La pluie **tombe depuis le matin**. » _(2 points)_
c) Justifie chaque réponse. _(1 point)_

**Exercice 5.** Analyse la phrase : « Bien que la route soit difficile, les voyageurs avancent courageusement. »
a) Identifie la principale et la subordonnée. _(2 points)_
b) Nomme la subordonnée. _(1 point)_
c) Remplace « bien que » par « malgré » en transformant la phrase. _(2 points)_

---

## SECTION B : CONJUGAISON

**Exercice 6.** Conjugue le verbe « partir » au présent, au passé composé et au futur simple (je, tu, nous). _(5 points)_

**Exercice 7.** Conjugue « dire » au passé simple puis au plus-que-parfait (il, elle, ils). _(5 points)_

**Exercice 8.** Mets les verbes entre parenthèses au temps demandé :
a) Avant de partir, il (vérifier) \_**\_ ses bagages. (passé composé) _(2 points)_
b) Quand tu (arriver) \_\_**, nous étions déjà là. (plus-que-parfait) _(2 points)_
c) Nous (manger) \_\_\_\_ ensemble demain. (futur simple) _(1 point)_

**Exercice 9.** Conjugue le verbe « mettre » au présent, à l''imparfait et au futur simple (je, tu, ils). _(5 points)_

**Exercice 10.** Complète avec « on », « ont » ou « n''ont » :
a) **_ a bien travaillé aujourd''hui. *(2 points)*
b) Les élèves _** fini leurs devoirs. _(2 points)_
c) Ils \_\_\_ pas encore terminé. _(1 point)_

---

## SECTION C : VOCABULAIRE ET ORTHOGRAPHE

**Exercice 11.** Donne le sens propre et le sens figuré de « sombre » et de « lourd », avec un exemple pour chacun. _(5 points)_

**Exercice 12.** Forme l''adjectif qualificatif dérivé des noms suivants : « courage », « soleil », « joie ». _(5 points)_

**Exercice 13.** Trouve un mot de la même famille de : « peur », « ville », « travail ». _(5 points)_

**Exercice 14.** Corrige les fautes : « Je suis aller chez le docteur, il m''a dit que j''avais la paludisme. » _(5 points)_

**Exercice 15.** Donne un synonyme et un antonyme de : « courageux », « large », « vite ». _(5 points)_

---

## SECTION D : COMPRÉHENSION ET EXPRESSION

**Lisez le texte suivant.**

_« Le chef du village avait convoqué tous les habitants sous le grand fromager. La question était grave : la source qui alimentait le village se tarissait. "Si nous ne protégeons pas la forêt, nos enfants n''auront plus d''eau," déclara-t-il. Certains murmuraient, d''autres hochaient la tête. Une jeune fille, Aïcha, prit la parole : "Et si nous plantions des arbres tout autour de la source ?" Son idée fut adoptée. Pendant des semaines, jeunes et vieux creusèrent et plantèrent. Un an plus tard, l''eau jaillit à nouveau, plus claire que jamais. Le village avait compris qu''unir ses forces protège l''avenir. »_

**Exercice 16.** Résume le texte en trois phrases. _(5 points)_

**Exercice 17.** Explique le problème rencontré par le village et sa cause. _(5 points)_

**Exercice 18.** Quelle est l''importance de l''idée d''Aïcha dans le texte ? _(5 points)_

**Exercice 19.** Quelle leçon sur la protection de l''environnement le texte enseigne-t-il ? _(5 points)_

**Exercice 20.** Rédige un paragraphe de 80 à 100 mots : « Que peux-tu faire pour protéger la nature dans ton environnement ? » _(5 points)_

---

## CORRIGÉ TYPE

**Ex.1.** a) Sujet : « Le grand fleuve qui traverse la ville » ; verbe : « borde » ; prédicat : « borde les plantations ». b) « qui traverse la ville » : proposition subordonnée relative, complément de l''antécédent « fleuve ». c) « grand » : adjectif qualificatif ; « la » : déterminant article défini.

**Ex.2.** a) Cause : « parce qu''il courait trop vite » (connecteur de cause). b) Conséquence : « qu''il est tombé » (connecteur de conséquence « tant... que »). c) On distingue par le connecteur qui introduit la subordonnée.

**Ex.3.** « Elle dit qu''elle va au marché le lendemain. »

**Ex.4.** a) « des maïs » : COD (plante quoi ?). b) « depuis le matin » : complément circonstanciel de temps. c) Réponses fondées sur la question posée au verbe.

**Ex.5.** a) Principale : « les voyageurs avancent courageusement » ; subordonnée : « Bien que la route soit difficile ». b) Subordonnée de concession. c) « Malgré la difficulté de la route, les voyageurs avancent courageusement. »

**Ex.6.** Présent : je pars, tu pars, nous partons. Passé composé : je suis parti(e), tu es parti(e), nous sommes parti(e)s. Futur : je partirai, tu partiras, nous partirons.

**Ex.7.** Passé simple : il dit, elle dit, ils dirent. Plus-que-parfait : il avait dit, elle avait dit, ils avaient dit.

**Ex.8.** a) il a vérifié. b) Quand tu étais arrivé. c) nous mangerons.

**Ex.9.** Présent : je mets, tu mets, ils mettent. Imparfait : je mettais, tu mettais, ils mettaient. Futur : je mettrai, tu mettras, ils mettront.

**Ex.10.** a) On a bien travaillé. b) Les élèves ont fini leurs devoirs. c) Ils n''ont pas encore terminé.

**Ex.11.** « Sombre » : sens propre = peu éclairé ; sens figuré = triste, inquiétant. « Lourd » : sens propre = pesant ; sens figuré = pénible, difficile. Exemples évalués.

**Ex.12.** courage → courageux ; soleil → ensoleillé ; joie → joyeux.

**Ex.13.** peur : peureux, effrayer, apeuré. ville : village, citadin. travail : travailler, travailleur, ouvrage.

**Ex.14.** « Je suis allé chez le docteur, il m''a dit que j''avais le paludisme. » (aller → allé ; la paludisme → le paludisme).

**Ex.15.** courageux : synonyme « brave », antonyme « lâche » ; large : « vaste », « étroit » ; vite : « rapidement », « lentement ».

**Ex.16.** La source du village se tarit et le chef convoque les habitants. La jeune Aïcha propose de planter des arbres autour de la source. Grâce à l''effort commun, l''eau jaillit à nouveau.

**Ex.17.** Le problème est la disparition de la source. Sa cause est la dégradation de la forêt qui protégeait et alimentait la source.

**Ex.18.** L''idée d''Aïcha est décisive : elle propose une solution simple et durable (planter des arbres), adoptée par tous, qui sauve le village.

**Ex.19.** Le texte enseigne que la protection de la forêt est essentielle pour l''eau, et que l''action collective peut sauver l''environnement et l''avenir.

**Ex.20.** Évaluation : respect du sujet et du nombre de mots, organisation, correction de la langue, richesse du vocabulaire.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '20e917d8-2101-0529-ecda-8e85ce089e57';


-- BEPC — Éducation à la Citoyenneté et à la Morale — Les institutions et la démocratie
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9f7f13b9-eb84-2bfe-3231-9c30c18df9af', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC — Éducation à la Citoyenneté et à la Morale — Les institutions et la démocratie',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Éducation à la Citoyenneté et à la Morale — Les institutions et la démocratie

**Niveau :** Troisième — BEPC
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Définir l''État, la République et la démocratie ;
- Identifier les trois pouvoirs de l''État et leurs rôles ;
- Présenter les institutions de la République du Cameroun ;
- Expliquer le fonctionnement de la décentralisation et des élections ;
- Reconnaître les symboles de la République.

---

## 1. L''État et la République

L''**État** est l''ensemble des institutions qui organisent la vie politique et administrative d''un pays sur un territoire donné, avec une population et une souveraineté. Le Cameroun est une **République unitaire et décentralisée**, dont la Constitution date de 1972, révisée en 1996.

La **République** est une forme de gouvernement dans laquelle le pouvoir n''est pas héréditaire : il appartient au peuple, qui choisit ses dirigeants par le vote. Le Cameroun est une République car son chef de l''État (le Président) est élu et non désigné par héritage.

**Exemple :** La devise « Paix – Travail – Patrie », l''hymne « Ô Cameroun, berceau de nos ancêtres » et le drapeau vert-rouge-jaune à étoile jaune sont les symboles qui incarnent la République camerounaise.

## 2. La démocratie

La **démocratie** est le « gouvernement du peuple, par le peuple et pour le peuple ». On distingue :

- La **démocratie directe** : les citoyens décident directement des lois (référendum).
- La **démocratie représentative** : les citoyens élisent des représentants qui décident en leur nom.

**Caractéristiques d''une démocratie :** le pluralisme politique, des élections libres et transparentes, la séparation des pouvoirs, le respect des droits de l''homme, la liberté de la presse et la participation citoyenne.

**Exemple :** Au Cameroun, les citoyens élisent le Président de la République, les députés, les sénateurs et les conseillers municipaux.

## 3. La séparation des pouvoirs

Pour éviter la concentration et l''abus de pouvoir, l''État exerce trois pouvoirs distincts :

1. Le **pouvoir exécutif** : il applique les lois. Il est exercé par le Président de la République et le Gouvernement dirigé par le Premier Ministre.
2. Le **pouvoir législatif** : il vote les lois. Il est exercé par le Parlement, composé de l''Assemblée nationale et du Sénat.
3. Le **pouvoir judiciaire** : il rend la justice. Il est exercé par les tribunaux et les cours (Cour suprême, Conseil constitutionnel, Cour des comptes).

**Exemple :** Si l''Assemblée nationale vote une loi, c''est le Président qui la promulgue, et c''est la justice qui garantit son respect.

## 4. Les institutions de la République du Cameroun

- Le **Président de la République** : chef de l''État, garant de l''unité nationale et de la Constitution, chef des armées. Il est élu pour 7 ans.
- Le **Premier Ministre** : chef du Gouvernement, il coordonne l''action des ministres et conduit la politique de la nation.
- Le **Parlement** : il vote les lois, adopte le budget et contrôle l''action du Gouvernement. Les députés sont élus pour 5 ans ; les sénateurs pour 5 ans.
- Le **Conseil constitutionnel** : il contrôle la conformité des lois et des élections à la Constitution.
- La **Cour suprême** : plus haute juridiction, elle juge en dernier ressort.
- La **Cour des comptes** : elle contrôle la gestion des finances publiques.

## 5. La décentralisation

La **décentralisation** consiste à confier des compétences aux collectivités territoriales (communes et régions) pour rapprocher l''administration des citoyens. Le **maire** et le **conseil municipal** gèrent la commune : état civil, marchés, écoles primaires, voirie, assainissement. Les régions s''occupent du développement régional.

**Exemple :** Quand une commune construit une route ou une école, elle agit dans le cadre de la décentralisation.

## 6. Les élections et la participation

L''**élection** est le choix des dirigeants par le vote. Le **suffrage** est le droit de vote. Un **électeur** est une personne qui a le droit de voter. Pour voter au Cameroun, il faut : être camerounais, avoir 18 ans révolus, être inscrit sur les listes électorales et jouir de ses droits civils et politiques.

**Elections Cameroon (ELECAM)** est l''organisme chargé d''organiser, de superviser et de proclamer les résultats des élections. Les élections concernent : le Président (présidentielle), les députés (législatives), les sénateurs (sénatoriales) et les conseillers municipaux (municipales).

**Exemple :** Voter est à la fois un droit et un devoir : c''est un droit car chaque citoyen est libre de choisir, et un devoir car participer aux élections permet de défendre la démocratie.

## 7. Erreurs à éviter

- Confondre les trois pouvoirs et leurs rôles.
- Mélanger démocratie directe et démocratie représentative.
- Ignorer les conditions requises pour voter.
- Confondre décentralisation et déconcentration.

## 8. Exercices d''entraînement

**Exercice 1 :** Cite les trois pouvoirs de l''État camerounais et donne le rôle de chacun.
**Exercice 2 :** Présente le rôle du Président de la République et celui du Parlement.
**Exercice 3 :** Énonce les conditions pour voter au Cameroun. Pourquoi voter est-il un droit et un devoir ?
**Exercice 4 :** Explique ce qu''est la décentralisation et cite trois compétences des communes.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Éducation à la Citoyenneté et à la Morale Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Éducation à la Citoyenneté et à la Morale — Les droits et devoirs du citoyen
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fb85fcce-7d7f-16da-cea3-c32d5efd0da1', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC — Éducation à la Citoyenneté et à la Morale — Les droits et devoirs du citoyen',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Éducation à la Citoyenneté et à la Morale — Les droits et devoirs du citoyen

**Niveau :** Troisième — BEPC
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Définir les notions de droit, de devoir et de citoyen ;
- Classer les droits du citoyen en plusieurs catégories ;
- Énumérer les droits de l''enfant selon la Convention de 1989 ;
- Citer et expliquer les principaux devoirs du citoyen camerounais ;
- Comprendre l''importance de la loi et de la justice dans la société.

---

## 1. Notions fondamentales

Un **citoyen** est une personne qui, membre d''un État, jouit de droits civils et politiques et est soumise à des devoirs envers cet État. La **citoyenneté** est le lien juridique, politique et social qui unit l''individu à son pays. La **nationalité** est l''appartenance juridique d''une personne à un État ; elle s''acquiert par la naissance (droit du sang ou du sol), par mariage ou par naturalisation.

Un **droit** est une prérogative ou une liberté reconnue à une personne et garantie par la loi. Un **devoir** est une obligation morale ou légale qu''une personne doit remplir. Le citoyen est à la fois porteur de droits et de devoirs : les uns ne vont pas sans les autres.

**Exemple :** Le droit de voter s''accompagne du devoir de s''inscrire sur les listes électorales et de participer au scrutin.

## 2. Les différentes catégories de droits

1. Les **droits civils** : droits liés à la personne et à sa liberté (droit à la vie, à la liberté, à la sécurité, à la propriété).
2. Les **droits politiques** : droits de participer à la vie publique (droit de vote, droit de candidature, droit de créer une association).
3. Les **droits économiques** : droits liés au travail et à l''activité (droit au travail, droit à la propriété).
4. Les **droits sociaux** : droits à la protection et au bien-être (droit à la santé, à l''éducation, au logement).
5. Les **droits culturels** : droits liés à l''identité (droit à la langue, à la culture, à la religion).

**Exemple :** Aller à l''école relève du droit à l''éducation (droit social) ; voter relève du droit politique.

## 3. Les droits de l''enfant

La **Convention internationale relative aux droits de l''enfant (CIDE)**, adoptée par les Nations Unies en 1989, garantit à tout enfant : le droit à la vie, à l''identité (nom et nationalité), à l''éducation, à la santé, à la protection contre les violences et l''exploitation, à l''expression et à la non-discrimination.

**Exemple :** Un enfant qui ne va pas à l''école parce qu''on le fait travailler subit une violation de ses droits. Le travail forcé, le mariage précoce et les châtiments violents sont interdits par la Convention.

## 4. Les devoirs du citoyen camerounais

Le citoyen camerounais a plusieurs devoirs envers sa patrie :

- **Respecter la Constitution et les lois** de la République ;
- **Payer les impôts** (devoir fiscal) pour financer les services publics ;
- **Défendre la patrie** (devoir de patriotisme) ;
- **Respecter les symboles** de la République ;
- **Participer à la vie publique** (voter, s''engager dans les associations) ;
- **Respecter autrui** et la différence ;
- **Protéger l''environnement** ;
- **Respecter les biens publics** et les intérêts collectifs.

**Exemple :** Payer l''impôt permet à l''État de construire des écoles, des hôpitaux et des routes au bénéfice de tous.

## 5. L''importance de la loi et de la justice

La **loi** est une règle générale, écrite, votée par le Parlement et applicable à tous. Le respect des lois garantit l''ordre, la paix et la sécurité dans la société. Personne n''est au-dessus de la loi : c''est le principe d''égalité devant la loi.

La **justice** a pour rôle de trancher les litiges, de punir les infractions et de protéger les droits des citoyens. Elle est rendue par les tribunaux : tribunal de première instance, tribunal de grande instance, cour d''appel, Cour suprême.

**Exemple :** Si quelqu''un vole le bien d''autrui, la justice intervient pour sanctionner l''auteur et rétablir les droits de la victime.

## 6. La lutte contre la corruption

La **corruption** est l''abus d''un pouvoir confié en vue d''obtenir un avantage personnel. Pour lutter contre elle, le citoyen doit : refuser d''offrir et de recevoir des pots-de-vin, dénoncer les faits de corruption, promouvoir la transparence et l''intégrité, et éduquer les jeunes aux valeurs morales.

**Exemple :** Refuser de payer un pot-de-vin pour accélérer l''obtention d''un document administratif est un acte de civisme et de lutte contre la corruption.

## 7. Erreurs à éviter

- Confondre les catégories de droits (civil, politique, social…).
- Penser que les droits existent sans les devoirs.
- Oublier la date et l''objet de la Convention de 1989.
- Ne pas distinguer nationalité et citoyenneté.

## 8. Exercices d''entraînement

**Exercice 1 :** Classe ces droits dans la bonne catégorie : voter, aller à l''école, posséder une maison, pratiquer sa religion, travailler.
**Exercice 2 :** Cite quatre devoirs du citoyen camerounais et explique pourquoi payer l''impôt est important.
**Exercice 3 :** Énumère les droits de l''enfant selon la Convention de 1989 et donne deux exemples de violation.
**Exercice 4 :** Explique le rôle de la justice et propose deux moyens de lutter contre la corruption.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Éducation à la Citoyenneté et à la Morale Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Éducation à la Citoyenneté et à la Morale — La citoyenneté, la morale et l'environnement
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '55f5e113-4167-17ed-30c0-e4f0ea55b567', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC — Éducation à la Citoyenneté et à la Morale — La citoyenneté, la morale et l''environnement',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Éducation à la Citoyenneté et à la Morale — La citoyenneté, la morale et l''environnement

**Niveau :** Troisième — BEPC
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Définir la citoyenneté, la morale, l''éthique et la conscience ;
- Citer et expliquer les grandes valeurs morales ;
- Comprendre les causes et conséquences des problèmes sociaux ;
- Expliquer le rôle de l''éducation civique dans la société ;
- Définir le développement durable et adopter des gestes écologiques.

---

## 1. La citoyenneté

La **citoyenneté** est l''ensemble des droits et des devoirs qui lient un individu à son État et à sa communauté. Être citoyen, c''est non seulement jouir de droits, mais aussi participer activement à la vie de la société et respecter ses valeurs. Le **civisme** est le respect des règles de la vie en société : c''est l''attitude d''un bon citoyen.

**Exemple :** Respecter les feux de signalisation, garder propre son quartier et voter sont des actes de civisme.

## 2. La morale et l''éthique

La **morale** est l''ensemble des règles de conduite qui guident les actions des personnes dans la société (ce qui est bien ou mal). L''**éthique** est la réflexion sur ces valeurs et leur mise en pratique. La **conscience** est la capacité d''une personne à juger ses actes et à distinguer le bien du mal. La **vertu** est la disposition habituelle à faire le bien.

**Exemple :** Rendre un portefeuille trouvé à son propriétaire est un acte moral inspiré par l''honnêteté et la conscience.

## 3. Les grandes valeurs morales

1. **L''honnêteté** : dire la vérité, ne pas voler, ne pas tricher.
2. **Le respect** : considérer autrui, ses biens et ses opinions.
3. **La solidarité** : aider et soutenir les personnes en difficulté.
4. **La justice** : donner à chacun ce qui lui revient.
5. **La tolérance** : accepter et respecter les différences (religion, ethnie, culture, opinion).
6. **La paix** : vivre en harmonie, résoudre les conflits par le dialogue.

**Exemple :** En classe, ne pas copier sur son voisin pendant une évaluation, c''est faire preuve d''honnêteté et de justice.

## 4. Les problèmes sociaux chez les jeunes

La **délinquance juvénile** désigne les comportements violents ou illégaux des jeunes. Ses causes : pauvreté, chômage, échec scolaire, manque d''encadrement familial, influence des pairs, ennui. Ses conséquences : insécurité, violence, exclusion sociale, prison.

La **consommation de drogues** chez les jeunes entraîne des dangers : dépendance, problèmes de santé, échec scolaire, délinquance, appauvrissement. La prévention repose sur l''information, l''éducation, le dialogue en famille et le développement d''activités saines (sport, culture).

Le **VIH/SIDA** se transmet par les rapports sexuels non protégés, le sang et de la mère à l''enfant. Il ne se transmet ni par les poignées de main, ni par les piqûres de moustique. Prévention : abstinence, fidélité, préservatif, dépistage. Il faut aussi lutter contre la stigmatisation des personnes vivant avec le VIH.

**Exemple :** Un jeune qui refuse de suivre ses camarades qui se droguent fait preuve de courage et de responsabilité.

## 5. Le rôle de l''éducation civique

L''**éducation civique** apprend à l''élève ses droits et ses devoirs, les valeurs de la citoyenneté et le fonctionnement des institutions. Elle forme des citoyens responsables, capables de participer à la vie publique, de respecter les lois et de contribuer au développement de leur pays. La **famille** et l''**école** sont les deux premières institutions d''éducation à la citoyenneté.

**Exemple :** Un élève qui participe à un club de l''environnement ou à l''association de son école apprend à devenir un citoyen actif.

## 6. La protection de l''environnement

L''**environnement** est l''ensemble des éléments naturels (air, eau, sol, forêt, faune, flore) qui entourent les êtres vivants. Le **développement durable** est un développement qui répond aux besoins du présent sans compromettre la capacité des générations futures à répondre aux leurs. Il repose sur trois piliers : l''économie, le social et l''environnement.

**Problèmes environnementaux au Cameroun :** déforestation, pollution de l''eau et de l''air, érosion des sols, gestion des déchets, changements climatiques.

**Gestes écologiques du citoyen :** trier les déchets, économiser l''eau et l''énergie, planter des arbres, ne pas brûler les ordures, utiliser des transports doux, réduire la pollution plastique, respecter les aires protégées.

**Exemple :** Planter un arbre chaque année et éteindre les lumières quand on quitte une pièce sont des gestes simples qui protègent l''environnement.

## 7. Erreurs à éviter

- Confondre morale, éthique et conscience.
- Ignorer les vraies causes de la délinquance et de la drogue.
- Croire que le VIH se transmet par les moustiques ou les poignées de main.
- Oublier les trois piliers du développement durable.

## 8. Exercices d''entraînement

**Exercice 1 :** Définis la morale, l''éthique et la conscience. Cite cinq valeurs morales.
**Exercice 2 :** Cite les causes et les conséquences de la délinquance juvénile.
**Exercice 3 :** Explique les modes de transmission et de prévention du VIH/SIDA.
**Exercice 4 :** Définis le développement durable et décris cinq gestes écologiques du quotidien.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Éducation à la Citoyenneté et à la Morale Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Institutions et démocratie
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '22af6c15-1bfb-127e-8812-c5a1b76ade0f', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Institutions et démocratie',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Institutions et démocratie

**Niveau :** Troisième — BEPC
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)

---

# Fiche de révision 1 — Institutions et démocratie

## Les trois pouvoirs de l''État

- **Exécutif** : applique les lois → Président de la République + Gouvernement (Premier Ministre).
- **Législatif** : vote les lois → Parlement (Assemblée nationale + Sénat).
- **Judiciaire** : rend la justice → tribunaux, Cour suprême, Conseil constitutionnel, Cour des comptes.

## Les institutions clés

- **Président de la République** : chef de l''État, garant de la Constitution, chef des armées, élu pour 7 ans.
- **Premier Ministre** : chef du Gouvernement, coordonne les ministres.
- **Assemblée nationale** : députés élus pour 5 ans ; vote les lois.
- **Sénat** : sénateurs élus pour 5 ans ; représente les collectivités.
- **Conseil constitutionnel** : vérifie la conformité des lois et des élections.
- **Cour suprême** : plus haute juridiction (juge en dernier ressort).
- **ELECAM** : organise, supervise et proclame les élections.

## La démocratie

- Définition : « le gouvernement du peuple, par le peuple et pour le peuple ».
- Deux formes : directe (référendum) et représentative (élection de représentants).
- Conditions : pluralisme, élections libres, séparation des pouvoirs, droits de l''homme, liberté de la presse.

## Élections et vote

- Pour voter : être camerounais, avoir 18 ans révolus, être inscrit sur les listes électorales, jouir de ses droits civils et politiques.
- Élections : présidentielle (7 ans), législatives (5 ans), sénatoriales (5 ans), municipales (5 ans).

## Symboles de la République

- Drapeau : vert, rouge, jaune + étoile jaune.
- Devise : « Paix – Travail – Patrie ».
- Hymne : « Ô Cameroun, berceau de nos ancêtres ».

## Décentralisation

- Confie des compétences aux communes et régions.
- Le maire et le conseil municipal gèrent la commune (état civil, marchés, écoles, voirie).

## Conseils pour l''examen

- Distinguer les trois pouvoirs et leurs rôles.
- Ne pas confondre démocratie directe et représentative.
- Connaître les conditions de vote par cœur.
- Savoir citer les symboles de la République.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Éducation à la Citoyenneté et à la Morale Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Droits et devoirs du citoyen
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '88ee1bb9-d759-4834-0836-b4ac8a2fae29', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Droits et devoirs du citoyen',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Droits et devoirs du citoyen

**Niveau :** Troisième — BEPC
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)

---

# Fiche de révision 2 — Droits et devoirs du citoyen

## Notions essentielles

- **Citoyen** : personne jouissant de droits civils et politiques et soumise à des devoirs envers son État.
- **Citoyenneté** : lien juridique, politique et social entre l''individu et son pays.
- **Nationalité** : appartenance juridique à un État (naissance, mariage, naturalisation).
- **Droit** : prérogative garantie par la loi. **Devoir** : obligation morale ou légale.

## Les catégories de droits

- **Civils** : vie, liberté, sécurité, propriété.
- **Politiques** : vote, candidature, association.
- **Économiques** : travail, propriété.
- **Sociaux** : santé, éducation, logement.
- **Culturels** : langue, culture, religion.

## Droits de l''enfant (Convention ONU, 1989)

- Vie, identité (nom, nationalité), éducation, santé, protection, expression, non-discrimination.
- Interdits : travail forcé, mariage précoce, châtiments violents, exploitation.

## Les devoirs du citoyen camerounais

- Respecter la Constitution et les lois.
- Payer les impôts (devoir fiscal).
- Défendre la patrie (patriotisme).
- Respecter les symboles de la République.
- Participer à la vie publique (voter).
- Respecter autrui et les différences.
- Protéger l''environnement.
- Respecter les biens publics.

## La loi et la justice

- Loi : règle générale écrite votée par le Parlement, applicable à tous.
- Égalité devant la loi : personne n''est au-dessus de la loi.
- Justice : tranche les litiges, punit les infractions, protège les droits.
- Juridictions : tribunal de première instance, tribunal de grande instance, cour d''appel, Cour suprême.

## Lutte contre la corruption

- Refuser d''offrir et de recevoir des pots-de-vin.
- Dénoncer les faits de corruption.
- Promouvoir la transparence et l''intégrité.
- Éduquer les jeunes aux valeurs morales.

## Conseils pour l''examen

- Savoir classer chaque droit dans la bonne catégorie.
- Retenir la date (1989) et l''objet de la Convention.
- Toujours associer droits et devoirs dans tes réponses.
- Citer des exemples concrets pour illustrer chaque idée.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Éducation à la Citoyenneté et à la Morale Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Citoyenneté, morale et environnement
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '25e33ab3-3c30-3efb-ca9f-003c1fd5489d', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Citoyenneté, morale et environnement',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Éducation à la Citoyenneté et à la Morale — Citoyenneté, morale et environnement

**Niveau :** Troisième — BEPC
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)

---

# Fiche de révision 3 — Citoyenneté, morale et environnement

## Notions essentielles

- **Citoyenneté** : droits et devoirs qui lient l''individu à son État et à sa communauté.
- **Civisme** : respect des règles de la vie en société.
- **Morale** : ensemble des règles de conduite (le bien et le mal).
- **Éthique** : réflexion sur les valeurs.
- **Conscience** : capacité de juger le bien et le mal.
- **Vertu** : disposition habituelle à faire le bien.

## Les valeurs morales

- **Honnêteté** : dire la vérité, ne pas voler, ne pas tricher.
- **Respect** : considérer autrui et ses biens.
- **Solidarité** : aider les personnes en difficulté.
- **Justice** : donner à chacun ce qui lui revient.
- **Tolérance** : accepter et respecter les différences.
- **Paix** : vivre en harmonie, dialoguer.

## Problèmes sociaux chez les jeunes

- **Délinquance juvénile** : causes (pauvreté, chômage, échec scolaire, manque d''encadrement, influence des pairs) ; conséquences (insécurité, violence, exclusion, prison).
- **Drogues** : dangers (dépendance, santé, échec scolaire, délinquance). Prévention : information, dialogue, sport.
- **VIH/SIDA** : transmission (rapports non protégés, sang, mère-enfant). Pas de transmission par moustique ni poignée de main. Prévention : abstinence, fidélité, préservatif, dépistage.

## Éducation civique

- Apprend droits, devoirs, valeurs et institutions.
- La famille et l''école forment les premiers citoyens responsables.

## Environnement et développement durable

- **Environnement** : air, eau, sol, forêt, faune, flore.
- **Développement durable** : répondre aux besoins du présent sans compromettre l''avenir.
- Trois piliers : économie, social, environnement.
- Problèmes au Cameroun : déforestation, pollution, érosion, déchets, changements climatiques.

## Gestes écologiques

- Trier les déchets, économiser l''eau et l''énergie.
- Planter des arbres, ne pas brûler les ordures.
- Réduire la pollution plastique, respecter les aires protégées.

## Conseils pour l''examen

- Bien distinguer morale, éthique et conscience.
- Ne pas confondre les causes et les conséquences des problèmes sociaux.
- Retenir les trois piliers du développement durable.
- Proposer toujours des exemples concrets de gestes citoyens.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Éducation à la Citoyenneté et à la Morale Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Update MCQ 1 for Éducation à la Citoyenneté et à la Morale
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE — ÉPREUVE 1 (QCM) — SÉRIE 1

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)
**Durée :** 30 minutes
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Au Cameroun, le pouvoir législatif (voter les lois) est exercé par :

A. Le Président de la République
B. Le Parlement, composé de l''Assemblée nationale et du Sénat
C. La Cour suprême
D. Le Premier Ministre

---

**Question 2.** La devise de la République du Cameroun est :

A. « Unité – Progrès – Démocratie »
B. « Paix – Travail – Patrie »
C. « Liberté – Égalité – Fraternité »
D. « Travail – Famille – Patrie »

---

**Question 3.** À partir de quel âge un citoyen camerounais peut-il exercer son droit de vote ?

A. 16 ans révolus
B. 18 ans révolus
C. 21 ans révolus
D. 25 ans révolus

---

**Question 4.** L''organisme chargé d''organiser et de superviser les élections au Cameroun est :

A. Elections Cameroon (ELECAM)
B. Le Conseil constitutionnel
C. L''Organisation des Nations Unies (ONU)
D. Le Ministère de la Défense

---

**Question 5.** Le drapeau camerounais est composé de :

A. Trois bandes verticales vertes, rouges et jaunes avec une étoile jaune au centre
B. Trois bandes verticales bleues, blanches et rouges
C. Deux bandes horizontales noires et rouges
D. Trois bandes horizontales vertes, jaunes et rouges avec une étoile blanche

---

**Question 6.** Laquelle de ces valeurs est une valeur morale reconnue en Éducation à la Citoyenneté ?

A. La paresse
B. L''honnêteté
C. L''égoïsme
D. La tricherie

---

**Question 7.** Le devoir du citoyen qui consiste à contribuer aux dépenses de l''État en versant une somme d''argent s''appelle :

A. Le devoir de défense de la patrie
B. Le devoir fiscal
C. Le devoir de tolérance
D. Le devoir de solidarité

---

**Question 8.** Protéger l''environnement (ne pas jeter les ordures dans la nature, planter des arbres) est :

A. Un devoir civique et moral de chaque citoyen
B. Un simple choix personnel sans importance
C. Une obligation qui ne concerne que les entreprises
D. Une responsabilité exclusive de l''État

---

**Question 9.** Le Premier Ministre du Cameroun est :

A. Le chef de l''État
B. Le chef du Gouvernement, chargé de coordonner l''action ministérielle
C. Le président de l''Assemblée nationale
D. Le président de la Cour suprême

---

**Question 10.** La Cour suprême au Cameroun est :

A. L''organe chargé de voter la loi
B. La plus haute juridiction qui juge en dernier ressort
C. Le conseil des ministres
D. L''assemblée des députés

---

## CORRIGÉ

1. B. Le Parlement, composé de l''Assemblée nationale et du Sénat
2. B. « Paix – Travail – Patrie »
3. B. 18 ans révolus
4. A. Elections Cameroon (ELECAM)
5. A. Trois bandes verticales vertes, rouges et jaunes avec une étoile jaune au centre
6. B. L''honnêteté
7. B. Le devoir fiscal
8. A. Un devoir civique et moral de chaque citoyen
9. B. Le chef du Gouvernement, chargé de coordonner l''action ministérielle
10. B. La plus haute juridiction qui juge en dernier ressort
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '4fc58411-1d9b-b263-b21f-d111d3282fea';


-- Update MCQ 2 for Éducation à la Citoyenneté et à la Morale
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)
**Durée :** 30 minutes
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** La Convention internationale relative aux droits de l''enfant (CIDE) a été adoptée par les Nations Unies en :

A. 1948
B. 1960
C. 1989
D. 1996

---

**Question 2.** Lequel de ces droits est un droit de l''enfant reconnu par la Convention ?

A. Le droit de travailler avant 10 ans
B. Le droit à l''éducation
C. Le droit de conduire un véhicule
D. Le droit de voter

---

**Question 3.** Être citoyen camerounais signifie avant tout :

A. Être né sur le territoire camerounais et payer un impôt
B. Avoir des droits civils et politiques et des devoirs envers l''État
C. Avoir un emploi dans l''administration
D. Habiter à Yaoundé ou Douala

---

**Question 4.** Laquelle de ces actions est un devoir du citoyen camerounais ?

A. Ne pas s''inscrire sur les listes électorales
B. Respecter la Constitution et les lois de la République
C. Refuser de payer ses impôts
D. Ignorer les symboles de la République

---

**Question 5.** Le Conseil constitutionnel au Cameroun a pour rôle principal de :

A. Voter les lois
B. Contrôler la conformité des lois et des élections à la Constitution
C. Diriger l''armée
D. Gérer les communes

---

**Question 6.** La décentralisation au Cameroun consiste à :

A. Supprimer toutes les collectivités locales
B. Rapprocher l''administration des citoyens en confiant des compétences aux communes et régions
C. Donner tous les pouvoirs au Président
D. Créer un système de monarchie

---

**Question 7.** L''hymne national du Cameroun s''intitule :

A. « Ô Cameroun, berceau de nos ancêtres »
B. « La Marseillaise »
C. « Debout la patrie »
D. « Ô Cameroun, terre de nos enfants »

---

**Question 8.** Qu''est-ce que la démocratie ?

A. Le gouvernement d''un seul homme
B. Le gouvernement du peuple, par le peuple et pour le peuple
C. Le règne de l''armée
D. L''absence de lois

---

**Question 9.** Laquelle de ces situations constitue une violation des droits de l''enfant ?

A. Un enfant qui va à l''école chaque jour
B. Un enfant soumis au travail forcé
C. Un enfant qui joue avec ses amis
D. Un enfant qui est vacciné

---

**Question 10.** Pour lutter contre la corruption, un citoyen responsable doit :

A. Offrir des pots-de-vin pour accélérer ses dossiers
B. Refuser de payer et de recevoir des pots-de-vin, et dénoncer les faits
C. Fermer les yeux sur la malversation
D. Participer à la fraude électorale

---

## CORRIGÉ

1. C. 1989
2. B. Le droit à l''éducation
3. B. Avoir des droits civils et politiques et des devoirs envers l''État
4. B. Respecter la Constitution et les lois de la République
5. B. Contrôler la conformité des lois et des élections à la Constitution
6. B. Rapprocher l''administration des citoyens en confiant des compétences aux communes et régions
7. A. « Ô Cameroun, berceau de nos ancêtres »
8. B. Le gouvernement du peuple, par le peuple et pour le peuple
9. B. Un enfant soumis au travail forcé
10. B. Refuser de payer et de recevoir des pots-de-vin, et dénoncer les faits
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'def660cc-75aa-4a35-d5de-d766f47c8510';


-- Update MCQ 3 for Éducation à la Citoyenneté et à la Morale
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE — ÉPREUVE 1 (QCM) — SÉRIE 3

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)
**Durée :** 30 minutes
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** Le développement durable est un développement qui :

A. Répond aux besoins du présent sans compromettre ceux des générations futures
B. Épuise toutes les ressources naturelles
C. Ne concerne que les pays riches
D. Ignore la protection de l''environnement

---

**Question 2.** Lequel de ces gestes est un geste écologique citoyen ?

A. Jeter les ordures dans la rivière
B. Trier les déchets et économiser l''eau et l''énergie
C. Brûler les déchets plastiques dans la cour
D. Défricher les forêts sans replanter

---

**Question 3.** La solidarité consiste à :

A. S''enrichir au détriment des autres
B. Aider et soutenir les personnes en difficulté
C. Ignorer les besoins de ses voisins
D. Revendiquer toujours ses propres intérêts

---

**Question 4.** Laquelle de ces affirmations définit le mieux la tolérance ?

A. Imposer sa religion aux autres
B. Accepter et respecter les différences des autres
C. Refuser tout dialogue avec autrui
D. Se moquer des croyances des autres

---

**Question 5.** Les principales causes de la délinquance juvénile peuvent être :

A. La pauvreté, l''échec scolaire et le manque d''encadrement
B. La réussite et la bonne éducation
C. La pratique régulière du sport
D. Le respect des lois

---

**Question 6.** Le VIH/SIDA se transmet principalement par :

A. Les poignées de main et les éternuements
B. Les rapports sexuels non protégés, le sang et de la mère à l''enfant
C. Les piqûres de moustique
D. Le partage des repas

---

**Question 7.** Le respect des feux de signalisation et du code de la route est :

A. Un acte de civisme et de sécurité pour tous
B. Une perte de temps inutile
C. Réservé uniquement aux conducteurs professionnels
D. Facultatif en dehors des grandes villes

---

**Question 8.** La conscience morale permet à une personne de :

A. Distinguer le bien du mal et agir en conséquence
B. Tricher sans remords
C. Ignorer les valeurs de la société
D. Satisfaire uniquement ses propres désirs

---

**Question 9.** L''égalité entre l''homme et la femme signifie que :

A. L''homme et la femme ont les mêmes droits fondamentaux
B. La femme doit obéir à l''homme en tout
C. Seul l''homme peut travailler
D. La femme n''a pas droit à l''éducation

---

**Question 10.** Participer à la vie démocratique du pays, c''est notamment :

A. S''abstenir de voter
B. S''inscrire sur les listes électorales et voter aux élections
C. Se désintéresser des affaires publiques
D. Critiquer sans proposer

---

## CORRIGÉ

1. A. Répond aux besoins du présent sans compromettre ceux des générations futures
2. B. Trier les déchets et économiser l''eau et l''énergie
3. B. Aider et soutenir les personnes en difficulté
4. B. Accepter et respecter les différences des autres
5. A. La pauvreté, l''échec scolaire et le manque d''encadrement
6. B. Les rapports sexuels non protégés, le sang et de la mère à l''enfant
7. A. Un acte de civisme et de sécurité pour tous
8. A. Distinguer le bien du mal et agir en conséquence
9. A. L''homme et la femme ont les mêmes droits fondamentaux
10. B. S''inscrire sur les listes électorales et voter aux élections
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '33f59eb5-e1f7-9c1a-102e-e8a6f5aad739';


-- Update set 4 for Éducation à la Citoyenneté et à la Morale
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE — ÉPREUVE 2 — SÉRIE 4

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- L''épreuve comporte quatre (4) sections, chacune portant sur un thème du programme.
- Chaque section compte cinq (5) exercices. Réponds à tous les exercices.
- Chaque exercice vaut 5 points. Le total de l''épreuve est de 100 points.
- Réponds de manière claire, organisée et complète, en utilisant la terminologie exacte de la discipline.
- Soigne la présentation, l''orthographe et la structure de tes réponses.

---

## SECTION 1 : INSTITUTIONS ET DÉMOCRATIE

**Exercice 1. (5 points)**
a) Cite les trois pouvoirs de l''État camerounais et précise qui les exerce. _(3 points)_
b) Explique en deux phrases pourquoi la séparation des pouvoirs est essentielle à la démocratie. _(2 points)_

**Exercice 2. (5 points)**
a) Définis les termes suivants : élection, suffrage, électeur, candidat. _(2 points)_
b) Énonce les quatre conditions qu''un Camerounais doit réunir pour voter. _(3 points)_

**Exercice 3. (5 points)**
a) Présente le rôle du Président de la République. _(2 points)_
b) Présente le rôle du Premier Ministre et du Gouvernement. _(2 points)_
c) Explique ce qu''est la décentralisation. _(1 point)_

**Exercice 4. (5 points)**
a) Nomme les deux chambres du Parlement camerounais. _(1 point)_
b) Cite trois missions du Parlement. _(2 points)_
c) Explique le rôle d''Elections Cameroon (ELECAM). _(2 points)_

**Exercice 5. (5 points)**
a) Cite les symboles de la République du Cameroun. _(2 points)_
b) Décris le drapeau camerounais. _(2 points)_
c) Rappelle la devise nationale et l''hymne national. _(1 point)_

---

## SECTION 2 : DROITS ET DEVOIRS

**Exercice 6. (5 points)**
a) Définis les notions de droit et de devoir. _(2 points)_
b) Classe les droits du citoyen en trois grandes catégories et donne un exemple pour chacune. _(3 points)_

**Exercice 7. (5 points)**
a) Cite quatre devoirs du citoyen camerounais envers la patrie. _(2 points)_
b) Explique pourquoi le paiement de l''impôt est un devoir civique important. _(3 points)_

**Exercice 8. (5 points)**
a) Cite les droits fondamentaux de l''enfant selon la Convention de 1989. _(3 points)_
b) Donne deux exemples de violation des droits de l''enfant au Cameroun. _(2 points)_

**Exercice 9. (5 points)**
a) Explique l''importance du respect des lois pour la vie en société. _(3 points)_
b) Propose deux moyens de lutter contre la corruption. _(2 points)_

**Exercice 10. (5 points)**
a) Explique le rôle de la justice dans une société démocratique. _(3 points)_
b) Cite les juridictions chargées de rendre la justice au Cameroun. _(2 points)_

---

## SECTION 3 : CITOYENNETÉ ET MORALE

**Exercice 11. (5 points)**
a) Définis : citoyenneté, morale et conscience. _(2 points)_
b) Explique trois valeurs morales (honnêteté, respect, solidarité). _(3 points)_

**Exercice 12. (5 points)**
a) Cite les causes de la délinquance juvénile. _(2 points)_
b) Propose trois solutions pour prévenir la délinquance chez les jeunes. _(3 points)_

**Exercice 13. (5 points)**
a) Cite les modes de transmission du VIH/SIDA. _(2 points)_
b) Explique les moyens de prévention du VIH/SIDA. _(3 points)_

**Exercice 14. (5 points)**
a) Explique l''importance de l''éducation civique à l''école. _(3 points)_
b) Donne deux exemples de comportements civiques au quotidien. _(2 points)_

**Exercice 15. (5 points)**
a) Définis la tolérance et la paix. _(2 points)_
b) Explique comment le dialogue permet de résoudre les conflits. _(3 points)_

---

## SECTION 4 : ENVIRONNEMENT ET DÉVELOPPEMENT

**Exercice 16. (5 points)**
a) Définis le développement durable. _(2 points)_
b) Cite les trois piliers du développement durable. _(3 points)_

**Exercice 17. (5 points)**
a) Cite trois problèmes environnementaux du Cameroun. _(3 points)_
b) Explique les conséquences de la déforestation. _(2 points)_

**Exercice 18. (5 points)**
a) Décris cinq gestes écologiques que chaque citoyen peut adopter au quotidien. _(3 points)_
b) Explique pourquoi il faut économiser l''eau potable. _(2 points)_

**Exercice 19. (5 points)**
a) Explique le rôle des associations et ONG dans la protection de l''environnement. _(3 points)_
b) Cite deux lois ou mesures de protection de l''environnement. _(2 points)_

**Exercice 20. (5 points)**
a) Explique le lien entre population, ressources et environnement. _(3 points)_
b) Propose deux actions citoyennes pour lutter contre la pollution plastique. _(2 points)_
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'a97fbea9-2d6f-fb62-f964-042f1fb274e5';


-- Update set 5 for Éducation à la Citoyenneté et à la Morale
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE — ÉPREUVE 2 — SÉRIE 5

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- L''épreuve comporte quatre (4) sections, chacune portant sur un thème du programme.
- Chaque section compte cinq (5) exercices. Réponds à tous les exercices.
- Chaque exercice vaut 5 points. Le total de l''épreuve est de 100 points.
- Réponds de manière claire, organisée et complète, en utilisant la terminologie exacte de la discipline.
- Soigne la présentation, l''orthographe et la structure de tes réponses.

---

## SECTION 1 : INSTITUTIONS ET DÉMOCRATIE

**Exercice 1. (5 points)**
a) Explique ce qu''est la démocratie et cite ses deux formes principales. _(2 points)_
b) Énumère les conditions d''une élection libre et transparente. _(3 points)_

**Exercice 2. (5 points)**
a) Définis la séparation des pouvoirs. _(2 points)_
b) Explique le rôle du pouvoir judiciaire et l''importance de son indépendance. _(3 points)_

**Exercice 3. (5 points)**
a) Présente la composition et le rôle du Sénat camerounais. _(2 points)_
b) Présente la composition et le rôle de l''Assemblée nationale. _(2 points)_
c) Précise la durée du mandat des députés. _(1 point)_

**Exercice 4. (5 points)**
a) Définis la décentralisation et la déconcentration. _(2 points)_
b) Cite trois compétences transférées aux communes. _(2 points)_
c) Donne un exemple de rôle de la région. _(1 point)_

**Exercice 5. (5 points)**
a) Explique le rôle du Conseil constitutionnel. _(3 points)_
b) Cite la plus haute juridiction de l''ordre judiciaire au Cameroun. _(2 points)_

---

## SECTION 2 : DROITS ET DEVOIRS

**Exercice 6. (5 points)**
a) Distingue droits civils, droits politiques et droits sociaux, avec un exemple pour chacun. _(3 points)_
b) Cite un droit économique et un droit culturel du citoyen. _(2 points)_

**Exercice 7. (5 points)**
a) Explique le devoir de défense de la patrie. _(2 points)_
b) Explique le devoir de respect des biens publics. _(3 points)_

**Exercice 8. (5 points)**
a) Énumère les droits de l''enfant selon la Convention internationale (1989). _(3 points)_
b) Cite deux institutions ou structures qui protègent les droits de l''enfant au Cameroun. _(2 points)_

**Exercice 9. (5 points)**
a) Explique pourquoi chaque citoyen doit s''inscrire sur les listes électorales. _(3 points)_
b) Explique en quoi le vote est à la fois un droit et un devoir. _(2 points)_

**Exercice 10. (5 points)**
a) Explique le rôle du citoyen dans la lutte contre la corruption. _(3 points)_
b) Cite deux conséquences de la corruption pour le développement du pays. _(2 points)_

---

## SECTION 3 : CITOYENNETÉ ET MORALE

**Exercice 11. (5 points)**
a) Définis la morale et l''éthique. _(2 points)_
b) Explique trois valeurs de la citoyenneté (justice, tolérance, paix). _(3 points)_

**Exercice 12. (5 points)**
a) Explique les conséquences de la consommation de drogues chez les jeunes. _(3 points)_
b) Propose deux moyens de sensibilisation contre la drogue. _(2 points)_

**Exercice 13. (5 points)**
a) Explique comment lutter contre la stigmatisation des personnes vivant avec le VIH. _(3 points)_
b) Cite deux moyens de prévention de la transmission de la mère à l''enfant. _(2 points)_

**Exercice 14. (5 points)**
a) Explique l''importance de la discipline et du travail bien fait à l''école. _(3 points)_
b) Donne deux exemples de comportements moraux en classe. _(2 points)_

**Exercice 15. (5 points)**
a) Définis la solidarité et la fraternité. _(2 points)_
b) Décris deux actions de solidarité au sein de la communauté. _(3 points)_

---

## SECTION 4 : ENVIRONNEMENT ET DÉVELOPPEMENT

**Exercice 16. (5 points)**
a) Explique le concept de développement durable. _(3 points)_
b) Montre l''importance de préserver les ressources pour les générations futures. _(2 points)_

**Exercice 17. (5 points)**
a) Cite les causes de la déforestation au Cameroun. _(2 points)_
b) Propose trois solutions pour lutter contre la déforestation. _(3 points)_

**Exercice 18. (5 points)**
a) Explique le rôle du reboisement dans la protection de l''environnement. _(3 points)_
b) Cite les principaux fleuves et ressources naturelles du Cameroun. _(2 points)_

**Exercice 19. (5 points)**
a) Explique le rôle de l''État dans la protection de l''environnement. _(3 points)_
b) Cite deux aires protégées ou parcs nationaux du Cameroun. _(2 points)_

**Exercice 20. (5 points)**
a) Explique les dangers de la pollution de l''air et de l''eau. _(3 points)_
b) Propose deux gestes citoyens pour réduire la pollution. _(2 points)_
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'ae80e44e-b880-cff6-8049-1aafbcb492aa';


-- Update set 6 for Éducation à la Citoyenneté et à la Morale
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE — ÉPREUVE 2 — SÉRIE 6

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- L''épreuve comporte quatre (4) sections, chacune portant sur un thème du programme.
- Chaque section compte cinq (5) exercices. Réponds à tous les exercices.
- Chaque exercice vaut 5 points. Le total de l''épreuve est de 100 points.
- Réponds de manière claire, organisée et complète, en utilisant la terminologie exacte de la discipline.
- Soigne la présentation, l''orthographe et la structure de tes réponses.

---

## SECTION 1 : INSTITUTIONS ET DÉMOCRATIE

**Exercice 1. (5 points)**
a) Définis les notions d''État et de République. _(2 points)_
b) Cite les trois pouvoirs de l''État et la principale fonction de chacun. _(3 points)_

**Exercice 2. (5 points)**
a) Explique le rôle du Président de la République en tant que chef de l''État. _(2 points)_
b) Explique le rôle du Président comme chef des armées et garant de la Constitution. _(3 points)_

**Exercice 3. (5 points)**
a) Explique le rôle du Gouvernement dans la conduite des affaires de l''État. _(3 points)_
b) Précise qui nomme les membres du Gouvernement. _(2 points)_

**Exercice 4. (5 points)**
a) Explique le rôle du contrôle parlementaire du Gouvernement. _(3 points)_
b) Cite deux moyens utilisés par le Parlement pour contrôler l''action du Gouvernement. _(2 points)_

**Exercice 5. (5 points)**
a) Explique le rôle des partis politiques dans la démocratie. _(3 points)_
b) Explique le rôle de la presse et des médias dans une démocratie. _(2 points)_

---

## SECTION 2 : DROITS ET DEVOIRS

**Exercice 6. (5 points)**
a) Définis la nationalité et la citoyenneté. _(2 points)_
b) Explique les différents modes d''acquisition de la nationalité camerounaise. _(3 points)_

**Exercice 7. (5 points)**
a) Cite les libertés fondamentales garanties par la Constitution camerounaise. _(3 points)_
b) Explique que la liberté s''arrête là où commence celle des autres. _(2 points)_

**Exercice 8. (5 points)**
a) Énumère les devoirs de l''enfant envers ses parents, sa famille et sa patrie. _(3 points)_
b) Explique l''importance du respect des parents et des aînés. _(2 points)_

**Exercice 9. (5 points)**
a) Explique le rôle de la famille dans la formation du citoyen. _(3 points)_
b) Explique le rôle de l''école dans l''éducation à la citoyenneté. _(2 points)_

**Exercice 10. (5 points)**
a) Explique pourquoi la loi doit être la même pour tous. _(3 points)_
b) Explique le rôle des tribunaux dans la protection des droits. _(2 points)_

---

## SECTION 3 : CITOYENNETÉ ET MORALE

**Exercice 11. (5 points)**
a) Définis les valeurs suivantes : justice, honnêteté, générosité. _(3 points)_
b) Explique l''importance de l''honnêteté dans la vie scolaire. _(2 points)_

**Exercice 12. (5 points)**
a) Cite les causes de la consommation de drogues chez les jeunes. _(2 points)_
b) Explique les dangers physiques et sociaux de la drogue. _(3 points)_

**Exercice 13. (5 points)**
a) Explique comment prévenir la délinquance juvénile à l''école et en famille. _(3 points)_
b) Cite deux structures qui encadrent les jeunes. _(2 points)_

**Exercice 14. (5 points)**
a) Explique le rôle de la religion et de la tradition dans l''éducation morale. _(3 points)_
b) Montre que religion et citoyenneté peuvent coexister dans la paix. _(2 points)_

**Exercice 15. (5 points)**
a) Définis la paix et la cohésion sociale. _(2 points)_
b) Propose trois moyens de favoriser la paix dans une communauté. _(3 points)_

---

## SECTION 4 : ENVIRONNEMENT ET DÉVELOPPEMENT

**Exercice 16. (5 points)**
a) Explique la relation entre environnement et développement. _(3 points)_
b) Montre les dangers du développement sans protection de l''environnement. _(2 points)_

**Exercice 17. (5 points)**
a) Cite les principales sources de pollution de l''eau au Cameroun. _(3 points)_
b) Propose deux solutions pour protéger l''eau potable. _(2 points)_

**Exercice 18. (5 points)**
a) Explique le rôle de la forêt dans l''équilibre climatique et écologique. _(3 points)_
b) Cite deux conséquences de la déforestation. _(2 points)_

**Exercice 19. (5 points)**
a) Explique le rôle des réserves et parcs nationaux dans la protection de la biodiversité. _(3 points)_
b) Cite deux parcs nationaux du Cameroun. _(2 points)_

**Exercice 20. (5 points)**
a) Explique l''importance de l''éducation à l''environnement dès l''école. _(3 points)_
b) Propose deux projets écologiques pour ton école. _(2 points)_
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '4a792a33-5391-09e4-0a0a-755ff78a7aa9';


-- Update set 7 for Éducation à la Citoyenneté et à la Morale
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE — ÉPREUVE 2 — SÉRIE 7

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Éducation à la Citoyenneté et à la Morale (ECM)
**Durée :** 2 heures
**Coefficient :** 2

**Consignes :**

- L''épreuve comporte quatre (4) sections, chacune portant sur un thème du programme.
- Chaque section compte cinq (5) exercices. Réponds à tous les exercices.
- Chaque exercice vaut 5 points. Le total de l''épreuve est de 100 points.
- Réponds de manière claire, organisée et complète, en utilisant la terminologie exacte de la discipline.
- Soigne la présentation, l''orthographe et la structure de tes réponses.

---

## SECTION 1 : INSTITUTIONS ET DÉMOCRATIE

**Exercice 1. (5 points)**
a) Explique le fonctionnement de la démocratie représentative. _(3 points)_
b) Distingue démocratie représentative et démocratie participative. _(2 points)_

**Exercice 2. (5 points)**
a) Explique le rôle de la Cour suprême au Cameroun. _(2 points)_
b) Explique le rôle du Conseil constitutionnel et de la Cour des comptes. _(3 points)_

**Exercice 3. (5 points)**
a) Décris le processus électoral d''un scrutin présidentiel au Cameroun. _(3 points)_
b) Cite les acteurs impliqués dans l''organisation des élections. _(2 points)_

**Exercice 4. (5 points)**
a) Explique le rôle des collectivités territoriales décentralisées. _(2 points)_
b) Explique le rôle du maire et du conseil municipal. _(3 points)_

**Exercice 5. (5 points)**
a) Explique l''importance du respect des résultats des élections. _(3 points)_
b) Explique le rôle de la société civile dans la démocratie. _(2 points)_

---

## SECTION 2 : DROITS ET DEVOIRS

**Exercice 6. (5 points)**
a) Énumère les droits civils et politiques du citoyen camerounais. _(3 points)_
b) Énumère les droits économiques, sociaux et culturels. _(2 points)_

**Exercice 7. (5 points)**
a) Explique le devoir de respect de l''environnement comme devoir du citoyen. _(2 points)_
b) Explique le devoir de solidarité avec les personnes vulnérables. _(3 points)_

**Exercice 8. (5 points)**
a) Explique les droits de la femme et l''égalité homme-femme au Cameroun. _(3 points)_
b) Cite deux défis pour l''égalité entre les sexes au Cameroun. _(2 points)_

**Exercice 9. (5 points)**
a) Explique le devoir de participation à la vie publique et associative. _(3 points)_
b) Cite deux organisations de la société civile qui encadrent les citoyens. _(2 points)_

**Exercice 10. (5 points)**
a) Explique pourquoi chaque citoyen doit respecter les biens publics. _(3 points)_
b) Donne deux exemples de protection des biens publics au quotidien. _(2 points)_

---

## SECTION 3 : CITOYENNETÉ ET MORALE

**Exercice 11. (5 points)**
a) Définis la morale, la vertu et le civisme. _(3 points)_
b) Explique l''importance de la vertu dans la construction d''une bonne société. _(2 points)_

**Exercice 12. (5 points)**
a) Cite les causes de la violence et du harcèlement en milieu scolaire. _(2 points)_
b) Propose trois moyens de lutter contre le harcèlement à l''école. _(3 points)_

**Exercice 13. (5 points)**
a) Explique les dangers des fausses informations et des rumeurs. _(3 points)_
b) Propose deux attitudes responsables face à l''information. _(2 points)_

**Exercice 14. (5 points)**
a) Explique le rôle du bénévolat et du volontariat dans la société. _(3 points)_
b) Cite deux actions bénévoles possibles pour un élève. _(2 points)_

**Exercice 15. (5 points)**
a) Explique pourquoi le respect des différences (religion, ethnie, culture) est important. _(3 points)_
b) Propose deux moyens de renforcer la cohésion nationale. _(2 points)_

---

## SECTION 4 : ENVIRONNEMENT ET DÉVELOPPEMENT

**Exercice 16. (5 points)**
a) Explique le concept d''empreinte écologique. _(3 points)_
b) Montre comment les habitudes de consommation influencent l''environnement. _(2 points)_

**Exercice 17. (5 points)**
a) Cite les conséquences des changements climatiques au Cameroun. _(3 points)_
b) Propose deux actions pour lutter contre les changements climatiques. _(2 points)_

**Exercice 18. (5 points)**
a) Explique le rôle de l''agriculture durable dans le développement. _(3 points)_
b) Cite deux techniques agricoles qui protègent le sol. _(2 points)_

**Exercice 19. (5 points)**
a) Explique l''importance de la gestion durable des déchets. _(3 points)_
b) Propose deux moyens de réduire la pollution plastique. _(2 points)_

**Exercice 20. (5 points)**
a) Explique le rôle des citoyens dans la transition énergétique. _(3 points)_
b) Cite deux sources d''énergie renouvelable disponibles au Cameroun. _(2 points)_
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'c5921495-af36-610f-efde-6e789fa4afd0';


-- BEPC — Informatique — Le matériel informatique
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7293db62-7721-ea12-fcf0-b02dac507d0d', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC — Informatique — Le matériel informatique',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Informatique — Le matériel informatique

**Niveau :** Troisième — BEPC
**Matière :** Informatique

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Définir l''informatique, l''ordinateur, la donnée et l''information.
- Identifier les principaux composants de l''unité centrale et leur rôle.
- Classer les périphériques en entrée, sortie et stockage.
- Utiliser les unités de mesure de l''information et effectuer des conversions.
- Distinguer les différents types d''ordinateurs et de supports de stockage.

---

## 1. Notions de base

**L''informatique** est la science qui traite de l''organisation, du traitement et de la transmission automatiques de l''information, à l''aide de machines électroniques.

**L''ordinateur** est une machine électronique capable de recevoir des données (entrée), de les traiter (traitement), de les conserver (stockage) et de les restituer (sortie).

Il faut distinguer :

- **La donnée** : élément brut, non interprété (ex. la suite de chiffres « 14 ; 12 ; 18 »).
- **L''information** : résultat du traitement d''une donnée, qui a un sens pour l''utilisateur (ex. « la moyenne de la classe est 14,7 »).

---

## 2. L''architecture d''un ordinateur

Un ordinateur fonctionne selon le cycle : **Entrée → Traitement → Stockage → Sortie**.

| Fonction   | Composant / périphérique             |
| ---------- | ------------------------------------ |
| Entrée     | clavier, souris, scanner, microphone |
| Traitement | processeur (CPU), mémoire vive (RAM) |
| Stockage   | disque dur, SSD, clé USB, CD/DVD     |
| Sortie     | écran, imprimante, haut-parleur      |

### 2.1 L''unité centrale

C''est le boîtier qui contient les principaux composants :

- **Le processeur (CPU)** : le « cerveau » de l''ordinateur ; il exécute les instructions des programmes.
- **La mémoire vive (RAM)** : mémoire de travail, temporaire et volatile (elle se vide à l''extinction). Elle stocke les programmes et données en cours d''utilisation.
- **La mémoire morte (ROM)** : mémoire permanente et non modifiable qui contient le programme de démarrage (BIOS).
- **Le disque dur / SSD** : mémoire de masse qui conserve les données de façon permanente.

### 2.2 Les périphériques

Un **périphérique** est un dispositif relié à l''unité centrale.

- **Périphérique d''entrée** : il permet d''introduire des données dans l''ordinateur (clavier, souris, scanner, microphone, webcam).
- **Périphérique de sortie** : il restitue les données (écran, imprimante, haut-parleur, vidéoprojecteur).
- Certains périphériques sont à la fois d''entrée et de sortie (écran tactile, modem).

---

## 3. Les unités de mesure de l''information

- **Le bit** (b) : unité de base, il ne prend que deux valeurs : 0 ou 1.
- **L''octet** (o) : groupe de 8 bits. C''est l''unité couramment utilisée.

| Unité | Équivalence  |
| ----- | ------------ |
| 1 Ko  | 1 024 octets |
| 1 Mo  | 1 024 Ko     |
| 1 Go  | 1 024 Mo     |
| 1 To  | 1 024 Go     |

**Exemple :** Une clé USB de 4 Go peut stocker 4 × 1 024 = 4 096 Mo. Elle peut donc contenir environ 4 096 fichiers de 1 Mo.

---

## 4. Les supports de stockage

- **Le disque dur (HDD)** : grande capacité, bon marché, mais mécanique.
- **Le SSD** : plus rapide et résistant, mais plus cher.
- **La clé USB** : petite, portable et pratique pour transporter des fichiers.
- **La carte mémoire (SD)** : utilisée dans les smartphones et appareils photo.
- **Le CD / DVD** : support optique de capacité limitée.
- **Le cloud** : stockage en ligne accessible via Internet (Google Drive, OneDrive).

---

## 5. Les types d''ordinateurs

- **Ordinateur de bureau** : fixe, utilisé au bureau ou à la maison.
- **Ordinateur portable** : transportable, avec batterie.
- **Tablette** : écran tactile, légère.
- **Smartphone** : téléphone intelligent doté d''un système d''exploitation.
- **Serveur** : machine puissante qui centralise et fournit des données ou services aux autres ordinateurs (clients).

---

## 6. Erreurs à éviter

- Confondre **mémoire vive (RAM)** et **mémoire de masse** : la RAM est temporaire et volatile.
- Confondre **bit** et **octet** : 1 octet = 8 bits.
- Se tromper dans les conversions (utiliser 1 024, pas 1 000).
- Classer un écran dans les périphériques d''entrée (c''est une sortie).

---

## 7. Exercices d''entraînement

**Exercice 1 :** Citer les quatre fonctions de l''ordinateur et un composant pour chacune.
**Exercice 2 :** Convertir 2 Ko en octets ; 3 Mo en Ko ; 5 Go en Mo.
**Exercice 3 :** Classer en entrée ou sortie : clavier, imprimante, scanner, vidéoprojecteur, microphone, écran.
**Exercice 4 :** Une photo pèse 2 Mo. Combien de photos peut contenir une clé USB de 16 Go ?
**Exercice 5 :** Expliquer la différence entre RAM et disque dur.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Informatique Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Informatique — Les logiciels et le système d'exploitation
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1a437dda-7861-5f53-e547-2f9390286466', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC — Informatique — Les logiciels et le système d''exploitation',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Informatique — Les logiciels et le système d''exploitation

**Niveau :** Troisième — BEPC
**Matière :** Informatique

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Définir un logiciel et le distinguer du matériel.
- Distinguer logiciel système et logiciel d''application.
- Expliquer le rôle du système d''exploitation.
- Citer des exemples de logiciels de bureautique et leur utilité.
- Différencier logiciel libre, logiciel gratuit et logiciel propriétaire.

---

## 1. Le logiciel

Un **logiciel** est un ensemble de programmes et d''instructions qui permettent à l''ordinateur d''effectuer des tâches. Contrairement au **matériel** (parties physiques), le logiciel est immatériel.

| Matériel (hardware)        | Logiciel (software)       |
| -------------------------- | ------------------------- |
| écran, clavier, processeur | Windows, Word, navigateur |
| On peut le toucher         | On ne peut pas le toucher |

---

## 2. Les catégories de logiciels

### 2.1 Les logiciels système

Ils gèrent le fonctionnement de l''ordinateur. Le principal est le **système d''exploitation**.

**Rôles du système d''exploitation :**

- Gérer le matériel (processeur, mémoire, périphériques).
- Gérer les fichiers et dossiers.
- Lancer et gérer les programmes (applications).
- Fournir une interface utilisateur (fenêtres, icônes, menus).
- Assurer une partie de la sécurité.

**Exemples :** Windows, macOS, Linux, Android, iOS.

### 2.2 Les logiciels d''application

Ils permettent à l''utilisateur de réaliser une tâche précise : rédiger, calculer, naviguer, communiquer, jouer.

---

## 3. Les logiciels de bureautique

La **bureautique** regroupe les logiciels utilisés pour le travail de bureau.

| Logiciel            | Exemples                        | Utilité                                  |
| ------------------- | ------------------------------- | ---------------------------------------- |
| Traitement de texte | Word, LibreOffice Writer        | Rédiger et mettre en forme des documents |
| Tableur             | Excel, LibreOffice Calc         | Calculs, tableaux, graphiques            |
| Présentation        | PowerPoint, LibreOffice Impress | Créer des diaporamas                     |

- **Traitement de texte** : lettres, dissertations, rapports. Fonctionnalités : correcteur orthographique, gras/italique, tableaux, insertion d''images.
- **Tableur** : budgets, moyennes de notes, statistiques. Il calcule automatiquement grâce aux formules.
- **Présentation** : exposés devant la classe avec des diapositives.

---

## 4. Logiciel libre, gratuit, propriétaire

- **Logiciel libre** : son code source est ouvert ; on peut l''utiliser, le modifier et le partager librement. Exemples : Linux, LibreOffice, Firefox.
- **Logiciel propriétaire** : son code est fermé ; l''utilisation est soumise à une licence, souvent payante. Exemples : Windows, Microsoft Office.
- **Logiciel gratuit (freeware)** : ne coûte rien, mais son code peut rester fermé. Un logiciel gratuit n''est donc pas forcément libre.

---

## 5. Compilateur et interpréteur

Pour que l''ordinateur exécute un programme, il faut le traduire en langage machine.

- **Le compilateur** traduit tout le programme d''un coup avant exécution (ex. C, Java).
- **L''interpréteur** exécute le programme ligne par ligne (ex. Python).

---

## 6. Erreurs à éviter

- Confondre logiciel système et logiciel d''application : un navigateur est une application, pas un système.
- Confondre libre et gratuit : ce n''est pas la même chose.
- Penser que le système d''exploitation est une application ordinaire.

---

## 7. Exercices d''entraînement

**Exercice 1 :** Classer en logiciel système ou application : Windows, Word, Linux, Excel, Firefox, Android.
**Exercice 2 :** Citer trois rôles du système d''exploitation.
**Exercice 3 :** Quel logiciel utiliser pour : calculer une moyenne ? taper un devoir ? faire un exposé ?
**Exercice 4 :** Différencier logiciel libre et propriétaire avec un exemple de chacun.
**Exercice 5 :** Expliquer la différence entre compilateur et interpréteur.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Informatique Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- BEPC — Informatique — Les réseaux, Internet et la sécurité
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6d1c6cfe-438d-665c-86b0-34a63508dda7', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC — Informatique — Les réseaux, Internet et la sécurité',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# BEPC — Informatique — Les réseaux, Internet et la sécurité

**Niveau :** Troisième — BEPC
**Matière :** Informatique

## Objectifs d''apprentissage

À la fin de ce cours, l''élève doit être capable de :

- Définir un réseau informatique, Internet et l''adresse IP.
- Distinguer navigateur, moteur de recherche, site web et page web.
- Citer les services d''Internet.
- Comprendre les dangers d''Internet et appliquer des règles de sécurité.
- Différencier le phishing, le virus et le cyberharcèlement.

---

## 1. Les réseaux informatiques

Un **réseau informatique** est un ensemble d''ordinateurs et de périphériques reliés entre eux afin de partager des ressources (fichiers, imprimantes, connexion).

- **Réseau local (LAN)** : limité à un lieu (école, maison).
- **Internet** : réseau mondial de réseaux qui relie des milliards de machines.
- **Intranet** : réseau privé interne à une organisation (école, entreprise), utilisant les mêmes technologies que le web.
- **Adresse IP** : numéro unique qui identifie chaque machine sur un réseau.
- **Routeur** : appareil qui oriente les données entre plusieurs réseaux.
- **Serveur** : machine qui stocke et fournit des données ou services aux autres machines (clients).

---

## 2. Internet et ses services

**Internet** est l''infrastructure mondiale qui permet l''échange de données. Le **web** (World Wide Web) n''est qu''un des services d''Internet.

**Principaux services :**

- **Le web** : consultation de pages web.
- **L''e-mail (courrier électronique)** : envoi et réception de messages (Gmail, Outlook).
- **Les réseaux sociaux** : Facebook, WhatsApp, TikTok.
- **La visioconférence** : réunions en direct avec image et son (Zoom, Google Meet).
- **L''e-commerce** : achat et vente en ligne.
- **Le cloud** : stockage et services en ligne (Google Drive, OneDrive).

---

## 3. Vocabulaire essentiel

- **Site web** : ensemble de pages web reliées entre elles.
- **Page web** : document consultable dans un navigateur.
- **Navigateur web** : logiciel qui permet de consulter le web (Chrome, Firefox, Edge, Safari).
- **Moteur de recherche** : outil qui trouve des pages à partir de mots-clés (Google, Bing).
- **URL** : adresse d''une ressource sur Internet (ex. https://www.google.com).
- **Lien hypertexte** : élément cliquable qui mène vers une autre page.

> Différence clé : le **navigateur** est un logiciel installé ; le **moteur de recherche** est un service en ligne que l''on consulte via le navigateur.

---

## 4. La sécurité sur Internet

### 4.1 Les dangers

- **Le virus informatique** : programme malveillant qui se propage et endommage les données.
- **Le phishing (hameçonnage)** : tentative de vol de données personnelles en se faisant passer pour un organisme de confiance (banque, etc.).
- **Le cyberharcèlement** : harcèlement d''une personne via Internet ou les réseaux sociaux (insultes, menaces, diffusion de photos).
- **Les fausses informations** : rumeurs et désinformation diffusées en ligne.
- **La dépendance** : usage excessif qui nuit au travail scolaire et à la santé.

### 4.2 Les règles de sécurité à retenir

1. Utiliser des mots de passe longs, complexes et différents pour chaque compte.
2. Ne jamais partager ses identifiants avec qui que ce soit.
3. Installer et mettre à jour un antivirus.
4. Mettre à jour régulièrement ses logiciels (les mises à jour corrigent des failles).
5. Se méfier des liens et pièces jointes inconnus.
6. Ne pas divulguer ses informations personnelles en ligne.
7. Face au cyberharcèlement : ne pas répondre, garder les preuves, en parler à un adulte, bloquer et signaler.

---

## 5. Erreurs à éviter

- Confondre **Internet** et **web** : le web est un service d''Internet.
- Confondre **navigateur** et **moteur de recherche**.
- Penser qu''un mot de passe court suffit.
- Croire que l''on peut faire confiance à toute personne rencontrée en ligne.

---

## 6. Exercices d''entraînement

**Exercice 1 :** Définir Internet et citer trois de ses services.
**Exercice 2 :** Différencier navigateur web et moteur de recherche avec un exemple de chacun.
**Exercice 3 :** Citer quatre règles de sécurité sur Internet.
**Exercice 4 :** Expliquer ce qu''est le phishing et comment s''en protéger.
**Exercice 5 :** Décrire le cyberharcèlement et citer trois attitudes à adopter.
', 'course', 'course', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Informatique Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Informatique — Le matériel informatique
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '99486188-571a-e4a3-f541-bd37aae73b56', 'fr-bepc-info-bureautique', 'Informatique', 'Fiche — BEPC — Informatique — Le matériel informatique',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Informatique — Le matériel informatique

**Niveau :** Troisième — BEPC
**Matière :** Informatique

---

# Fiche de révision — Matériel informatique

## Définitions clés

- **Informatique** : science du traitement automatique de l''information.
- **Ordinateur** : machine qui reçoit, traite, stocke et restitue des données.
- **Donnée** : élément brut ; **Information** : donnée traitée qui a du sens.

## Les 4 fonctions

Entrée → Traitement → Stockage → Sortie

| Fonction   | Exemples                        |
| ---------- | ------------------------------- |
| Entrée     | clavier, souris, scanner, micro |
| Traitement | processeur, RAM                 |
| Stockage   | disque dur, SSD, clé USB        |
| Sortie     | écran, imprimante, haut-parleur |

## Unité centrale

- **Processeur (CPU)** : exécute les instructions (le « cerveau »).
- **RAM** : mémoire volatile et temporaire (se vide à l''extinction).
- **ROM** : mémoire permanente, contient le programme de démarrage.
- **Disque dur/SSD** : stockage permanent des données.

## Périphériques

- **Entrée** : introduire des données → clavier, souris, scanner.
- **Sortie** : restituer des données → écran, imprimante, haut-parleur.
- **Mixte** : écran tactile, modem.

## Unités de mesure

- **Bit** : 0 ou 1. **Octet** = 8 bits.
- 1 Ko = 1 024 o ; 1 Mo = 1 024 Ko ; 1 Go = 1 024 Mo ; 1 To = 1 024 Go.

## Supports de stockage

HDD (grande capacité) · SSD (rapide) · clé USB (portable) · carte SD · CD/DVD · cloud (en ligne).

## Types d''ordinateurs

Bureau, portable, tablette, smartphone, serveur (fournit des données aux autres).

## Conseils d''examen

- Écris toujours les unités (Ko, Mo, Go).
- Utilise 1 024 pour les conversions, pas 1 000.
- Range l''écran dans la sortie, pas l''entrée !
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Informatique Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Informatique — Logiciels et système d'exploitation
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '52e51d93-ed09-8755-6504-c4e7ec0f67ca', 'fr-bepc-info-bureautique', 'Informatique', 'Fiche — BEPC — Informatique — Logiciels et système d''exploitation',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Informatique — Logiciels et système d''exploitation

**Niveau :** Troisième — BEPC
**Matière :** Informatique

---

# Fiche de révision — Logiciels et système d''exploitation

## Matériel vs Logiciel

- **Matériel** : parties physiques (écran, clavier, processeur).
- **Logiciel** : programmes immatériels (Windows, Word, navigateur).

## Types de logiciels

| Type                 | Rôle                      | Exemples                |
| -------------------- | ------------------------- | ----------------------- |
| Logiciel système     | gère le fonctionnement    | Windows, Linux, Android |
| Logiciel application | réalise une tâche précise | Word, Excel, navigateur |

## Rôles du système d''exploitation

1. Gérer le matériel.
2. Gérer les fichiers et dossiers.
3. Lancer et gérer les programmes.
4. Fournir l''interface utilisateur.
5. Assurer la sécurité.

Exemples : Windows, macOS, Linux, Android, iOS.

## Bureautique

- **Traitement de texte** (Word, Writer) : rédiger des documents.
- **Tableur** (Excel, Calc) : calculs, tableaux, graphiques.
- **Présentation** (PowerPoint, Impress) : diaporamas.

## Libre / Gratuit / Propriétaire

- **Libre** : code ouvert, modifiable, partageable (Linux, LibreOffice).
- **Propriétaire** : code fermé, licence souvent payante (Windows, Office).
- **Gratuit** : ne coûte rien mais le code peut rester fermé → gratuit ≠ libre !

## Compilateur vs Interpréteur

- **Compilateur** : traduit tout le programme d''un coup (C, Java).
- **Interpréteur** : exécute ligne par ligne (Python).

## Conseils d''examen

- Un navigateur est une **application**, pas un système.
- Cite toujours des exemples précis pour chaque type de logiciel.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Informatique Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Fiche — BEPC — Informatique — Réseaux, Internet et sécurité
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'da2132f7-eef3-60d4-9775-f02030312a5d', 'fr-bepc-info-bureautique', 'Informatique', 'Fiche — BEPC — Informatique — Réseaux, Internet et sécurité',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# Fiche — BEPC — Informatique — Réseaux, Internet et sécurité

**Niveau :** Troisième — BEPC
**Matière :** Informatique

---

# Fiche de révision — Réseaux, Internet et sécurité

## Réseaux

- **Réseau local (LAN)** : limité à un lieu (école, maison).
- **Internet** : réseau mondial de réseaux.
- **Intranet** : réseau privé d''une organisation.
- **Adresse IP** : numéro identifiant une machine.
- **Routeur** : oriente les données ; **Serveur** : fournit les données/services.

## Internet ≠ Web

- **Internet** : l''infrastructure mondiale de communication.
- **Web** : un service d''Internet (consultation de pages).
- Autres services : e-mail, réseaux sociaux, visioconférence, e-commerce, cloud.

## Vocabulaire

- **Site web** : ensemble de pages reliées.
- **Page web** : document consultable en ligne.
- **Navigateur** : logiciel pour consulter le web (Chrome, Firefox).
- **Moteur de recherche** : trouve des pages via mots-clés (Google, Bing).
- **URL** : adresse d''une ressource (https://www.google.com).
- **E-mail** : courrier électronique (adresse format nom@fournisseur.com).

## Dangers

- **Virus** : programme malveillant qui endommage les données.
- **Phishing** : vol de données en imitant un organisme de confiance.
- **Cyberharcèlement** : harcèlement en ligne.
- **Fausses informations** : rumeurs / désinformation.
- **Dépendance** : usage excessif nuisible.

## 7 règles de sécurité

1. Mots de passe forts et différents.
2. Ne jamais partager ses identifiants.
3. Installer et mettre à jour un antivirus.
4. Mettre à jour ses logiciels.
5. Se méfier des liens et pièces jointes inconnus.
6. Ne pas divulguer ses informations personnelles.
7. Face au harcèlement : ne pas répondre, garder les preuves, en parler à un adulte.

## Conseils d''examen

- Distingue toujours **navigateur** (logiciel) et **moteur de recherche** (service).
- Cite plusieurs règles de sécurité avec des exemples concrets.
', 'cheatsheet', 'cheatsheet', 'francophone', 'BEPC',
    '2024', 'teacher_authored', 'BEPC Informatique Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();


-- Update MCQ 1 for Informatique
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC INFORMATIQUE — ÉPREUVE 1 (QCM) — SÉRIE 1

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Informatique
**Durée :** 30 minutes
**Coefficient :** 1

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** L''ensemble des composants physiques et visibles d''un ordinateur (écran, clavier, souris, processeur) s''appelle :

A. Le logiciel
B. Le matériel (hardware)
C. Le système d''exploitation
D. Un programme

---

**Question 2.** Quelle est l''unité de base de l''information en informatique, qui ne peut prendre que les valeurs 0 ou 1 ?

A. L''octet
B. Le kilo-octet
C. Le bit
D. Le mégaoctet

---

**Question 3.** Un octet est composé de :

A. 2 bits
B. 8 bits
C. 16 bits
D. 4 bits

---

**Question 4.** Le programme qui permet de consulter des pages sur le World Wide Web s''appelle :

A. Un navigateur web
B. Un antivirus
C. Un tableur
D. Un compilateur

---

**Question 5.** Lequel de ces éléments est un périphérique d''entrée ?

A. L''imprimante
B. L''écran
C. Le clavier
D. Le haut-parleur

---

**Question 6.** La mémoire vive (RAM) d''un ordinateur :

A. Stocke les données de façon permanente
B. Perd son contenu lorsque l''ordinateur est éteint
C. Sert uniquement à imprimer des documents
D. Est un périphérique de sortie

---

**Question 7.** Un élève souhaite stocker durablement sa dissertation pour la rapporter à l''école. Le support le plus adapté est :

A. La clé USB
B. La mémoire RAM
C. Le registre du processeur
D. Le cache du navigateur

---

**Question 8.** Quelle adresse est correctement écrite pour un site web ?

A. www.google.fr
B. google.www.com
C. fr://www.google
D. www@google.fr

---

**Question 9.** Pour accéder à sa messagerie électronique, une personne doit obligatoirement posséder :

A. Une adresse e-mail et un mot de passe
B. Un numéro de téléphone fixe
C. Une imprimante
D. Un logiciel de traitement de texte

---

**Question 10.** Lequel de ces gestes protège le mieux un compte en ligne ?

A. Utiliser le même mot de passe partout
B. Choisir un mot de passe long, complexe et différent pour chaque compte
C. Écrire son mot de passe sur un post-it collé à l''écran
D. Communiquer son mot de passe à ses amis

---

## CORRIGÉ

1. B — Le matériel (hardware)
2. C — Le bit
3. B — 8 bits
4. A — Un navigateur web
5. C — Le clavier
6. B — Perd son contenu lorsque l''ordinateur est éteint
7. A — La clé USB
8. A — www.google.fr
9. A — Une adresse e-mail et un mot de passe
10. B — Choisir un mot de passe long, complexe et différent pour chaque compte
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'b5f82c56-74d8-335a-581d-9df9563df250';


-- Update MCQ 2 for Informatique
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC INFORMATIQUE — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Informatique
**Durée :** 30 minutes
**Coefficient :** 1

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** La partie de l''ordinateur considérée comme le « cerveau », qui exécute les instructions des programmes, est :

A. Le processeur (CPU)
B. L''écran
C. La souris
D. L''imprimante

---

**Question 2.** Un fichier de 2 mégaoctets (Mo) équivaut approximativement à :

A. 2 048 kilo-octets (Ko)
B. 2 000 bits
C. 20 octets
D. 2 048 bits

---

**Question 3.** Le logiciel qui permet de faire des calculs, d''organiser des données dans des tableaux et de créer des graphiques est :

A. Un traitement de texte
B. Un tableur
C. Un navigateur web
D. Un système d''exploitation

---

**Question 4.** Windows, macOS, Linux, Android et iOS sont des exemples de :

A. Logiciels de bureautique
B. Systèmes d''exploitation
C. Moteurs de recherche
D. Antivirus

---

**Question 5.** Lequel de ces éléments est un périphérique de sortie ?

A. Le clavier
B. La souris
C. Le microphone
D. L''imprimante

---

**Question 6.** Pour rechercher des informations sur Internet en tapant des mots-clés, on utilise de préférence :

A. Un moteur de recherche (ex. Google, Bing)
B. Un traitement de texte
C. Une imprimante
D. Un tableur

---

**Question 7.** Un programme malveillant qui se propage d''ordinateur en ordinateur et peut endommager les données s''appelle :

A. Un virus informatique
B. Un antivirus
C. Un navigateur
D. Un système d''exploitation

---

**Question 8.** Le logiciel qui protège un ordinateur contre les virus s''appelle :

A. Un tableur
B. Un antivirus
C. Un lecteur multimédia
D. Un navigateur

---

**Question 9.** L''envoi d''un message électronique à une adresse se fait grâce au service :

A. L''e-mail (courrier électronique)
B. Le traitement de texte
C. Le stockage local
D. L''imprimante

---

**Question 10.** Dans un algorithme, la structure « Si ... Alors ... Sinon » permet de :

A. Répéter une instruction plusieurs fois
B. Prendre une décision selon une condition
C. Terminer le programme
D. Stocker une valeur

---

## CORRIGÉ

1. A — Le processeur (CPU)
2. A — 2 048 kilo-octets (Ko)
3. B — Un tableur
4. B — Systèmes d''exploitation
5. D — L''imprimante
6. A — Un moteur de recherche
7. A — Un virus informatique
8. B — Un antivirus
9. A — L''e-mail (courrier électronique)
10. B — Prendre une décision selon une condition
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '5f3cae13-98a5-dcb6-9889-970c155f0bb4';


-- Update MCQ 3 for Informatique
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC INFORMATIQUE — ÉPREUVE 1 (QCM) — SÉRIE 3

## Épreuve de QCM

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Informatique
**Durée :** 30 minutes
**Coefficient :** 1

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n''est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l''épreuve.

---

## QUESTIONS

**Question 1.** L''informatique est la science qui traite :

A. De l''organisation et du traitement automatique de l''information
B. Uniquement des calculs mathématiques
C. De la fabrication des écrans
D. De la vente des ordinateurs

---

**Question 2.** La mémoire de masse (disque dur, SSD, clé USB) sert à :

A. Conserver durablement les données, même après extinction
B. Exécuter les calculs de façon temporaire
C. Afficher les images sur l''écran
D. Saisir du texte au clavier

---

**Question 3.** Lequel de ces éléments fait partie de l''unité centrale ?

A. Le processeur et la mémoire vive
B. L''écran
C. La souris
D. L''imprimante

---

**Question 4.** L''abréviation « URL » désigne :

A. L''adresse d''une ressource sur Internet (ex. une page web)
B. Un type de virus
C. Un logiciel de dessin
D. Un périphérique de stockage

---

**Question 5.** Un « smartphone » est :

A. Un téléphone mobile intelligent avec système d''exploitation
B. Une imprimante sans fil
C. Un écran de télévision
D. Un serveur d''entreprise

---

**Question 6.** Lequel de ces supports de stockage est généralement le plus rapide pour lire les données ?

A. Le disque SSD
B. La disquette
C. Le CD-ROM
D. Le papier

---

**Question 7.** Une personne reçoit un e-mail d''une banque inconnue lui demandant son code secret en cliquant sur un lien. Cette technique malveillante s''appelle :

A. Le phishing (hameçonnage)
B. La sauvegarde
C. La mise à jour
D. Le téléchargement légal

---

**Question 8.** Pour organiser une visioconférence avec sa classe, on peut utiliser un logiciel comme :

A. Zoom ou Google Meet
B. Un traitement de texte
C. Un antivirus
D. Un tableur

---

**Question 9.** Dans un algorithme, l''instruction « Tant que ... Faire » représente :

A. Une boucle qui se répète tant qu''une condition est vraie
B. Une décision
C. Une variable
D. Une constante

---

**Question 10.** Une variable de type « chaîne de caractères » peut contenir :

A. Un texte comme « Bonjour »
B. Uniquement un entier
C. Uniquement un nombre décimal
D. Vrai ou Faux

---

## CORRIGÉ

1. A — De l''organisation et du traitement automatique de l''information
2. A — Conserver durablement les données, même après extinction
3. A — Le processeur et la mémoire vive
4. A — L''adresse d''une ressource sur Internet
5. A — Un téléphone mobile intelligent avec système d''exploitation
6. A — Le disque SSD
7. A — Le phishing (hameçonnage)
8. A — Zoom ou Google Meet
9. A — Une boucle qui se répète tant qu''une condition est vraie
10. A — Un texte comme « Bonjour »
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'a6c2d719-4477-d2f3-9b89-08ba6116a797';


-- Update set 4 for Informatique
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC INFORMATIQUE — ÉPREUVE 2 — SÉRIE 4

## Épreuve de pratique

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Informatique
**Durée :** 1 heure 30
**Coefficient :** 1

**Consignes :**

- L''épreuve comporte 4 sections et 20 exercices au total.
- Chaque exercice vaut 5 points.
- Rédige des réponses complètes, organisées et rédigées en français.
- Schémas et tableaux sont bienvenus lorsqu''ils illustrent la réponse.

---

## SECTION 1 : MATÉRIEL INFORMATIQUE

**Exercice 1.**
1.1. Définir les termes : _unité centrale_, _périphérique d''entrée_, _périphérique de sortie_. _(2 points)_
1.2. Classer les éléments suivants en périphériques d''entrée ou de sortie : clavier, écran, souris, imprimante, microphone, haut-parleur. _(3 points)_

**Exercice 2.**
2.1. Citer les trois principaux composants internes de l''unité centrale et préciser le rôle de chacun. _(3 points)_
2.2. Expliquer pourquoi la mémoire vive (RAM) est appelée mémoire « volatile ». _(2 points)_

**Exercice 3.**
3.1. Convertir : 1 Ko en octets, 1 Mo en Ko, 1 Go en Mo. _(3 points)_
3.2. Un fichier photo pèse 4 Mo. Exprimer cette taille en Ko. _(2 points)_

**Exercice 4.**
4.1. Citer trois supports de stockage de masse et un avantage de chacun. _(3 points)_
4.2. Distinguer disque dur (HDD) et disque SSD en une phrase. _(2 points)_

**Exercice 5.**
5.1. Citer trois types d''ordinateurs selon leur usage. _(3 points)_
5.2. Justifier pourquoi un serveur est important pour une école. _(2 points)_

---

## SECTION 2 : LOGICIELS

**Exercice 6.**
6.1. Différencier matériel et logiciel en donnant deux exemples de chacun. _(3 points)_
6.2. Citer deux logiciels de traitement de texte. _(2 points)_

**Exercice 7.**
7.1. Expliquer le rôle du système d''exploitation. _(3 points)_
7.2. Citer trois systèmes d''exploitation différents. _(2 points)_

**Exercice 8.**
8.1. Donner deux exemples de logiciels de bureautique et indiquer leur utilité. _(3 points)_
8.2. Différencier logiciel libre et logiciel propriétaire avec un exemple pour chacun. _(2 points)_

**Exercice 9.**
9.1. Une élève doit taper sa dissertation. Quel logiciel utilise-t-elle ? Justifier. _(2 points)_
9.2. Son professeur veut construire un tableau de notes avec des moyennes automatiques. Quel logiciel recommander ? Justifier. _(3 points)_

**Exercice 10.**
10.1. Citer deux logiciels de navigation sur Internet. _(2 points)_
10.2. Citer deux logiciels de messagerie électronique. _(3 points)_

---

## SECTION 3 : RÉSEAUX ET INTERNET

**Exercice 11.**
11.1. Définir : _Internet_, _réseau informatique_, _adresse IP_. _(3 points)_
11.2. Citer deux services offerts par Internet. _(2 points)_

**Exercice 12.**
12.1. Différencier navigateur web et moteur de recherche. _(3 points)_
12.2. Citer un exemple de moteur de recherche et un exemple de navigateur. _(2 points)_

**Exercice 13.**
13.1. Définir : _site web_, _lien hypertexte_, _URL_. _(3 points)_
13.2. Expliquer ce qu''est une visioconférence et citer un logiciel qui la permet. _(2 points)_

**Exercice 14.**
14.1. Qu''est-ce que le courrier électronique (e-mail) ? _(2 points)_
14.2. Citer trois éléments nécessaires pour envoyer un e-mail. _(3 points)_

**Exercice 15.**
15.1. Citer deux avantages du stockage dans le cloud. _(2 points)_
15.2. Citer un exemple de service de stockage en ligne et expliquer son intérêt pour un élève. _(3 points)_

---

## SECTION 4 : ALGORITHMIQUE ET PROGRAMMATION

**Exercice 16.**
16.1. Définir : _algorithme_, _programme_, _langage de programmation_. _(3 points)_
16.2. Citer deux langages de programmation. _(2 points)_

**Exercice 17.**
17.1. Citer les quatre étapes de résolution d''un problème par l''ordinateur. _(2 points)_
17.2. Écrire un algorithme qui lit deux nombres A et B et affiche leur somme. _(3 points)_

**Exercice 18.**
18.1. Expliquer le rôle d''une variable en algorithmique. _(2 points)_
18.2. Écrire un algorithme qui affiche « Majeur » si l''âge saisi est supérieur ou égal à 18, sinon « Mineur ». _(3 points)_

**Exercice 19.**
19.1. Expliquer la différence entre une boucle « Pour » et une boucle « Tant que ». _(3 points)_
19.2. Écrire un algorithme qui affiche les nombres de 1 à 10. _(2 points)_

**Exercice 20.**
20.1. Traduire en langage naturel l''instruction d''affectation `S ← A + B`. _(2 points)_
20.2. Écrire un algorithme qui lit trois notes et calcule puis affiche la moyenne. _(3 points)_

---

## BARÈME INDICATIF

| Section               | Exercices | Points par exercice | Total section |
| --------------------- | --------- | ------------------- | ------------- |
| Matériel informatique | 1 à 5     | 5                   | 25            |
| Logiciels             | 6 à 10    | 5                   | 25            |
| Réseaux et Internet   | 11 à 15   | 5                   | 25            |
| Algorithmique         | 16 à 20   | 5                   | 25            |
| **Total**             | 20        |                     | **100**       |

---

## CORRIGÉ TYPE

**Exercice 1.** 1.1. Unité centrale : boîtier contenant le processeur, la mémoire et les cartes. Périphérique d''entrée : dispositif qui permet d''entrer des données dans l''ordinateur. Périphérique de sortie : dispositif qui restitue les données à l''utilisateur. 1.2. Entrée : clavier, souris, microphone. Sortie : écran, imprimante, haut-parleur.

**Exercice 2.** 2.1. Processeur (exécute les calculs), mémoire vive RAM (stockage temporaire des programmes en cours), disque dur/SSD (stockage permanent des données). 2.2. Elle perd son contenu à l''extinction de l''ordinateur.

**Exercice 3.** 3.1. 1 Ko = 1 024 octets ; 1 Mo = 1 024 Ko ; 1 Go = 1 024 Mo. 3.2. 4 Mo = 4 × 1 024 = 4 096 Ko.

**Exercice 4.** 4.1. Disque dur (grande capacité), SSD (rapide), clé USB (portable), cloud (accessible partout). 4.2. Le SSD est plus rapide mais plus cher que le HDD.

**Exercice 5.** 5.1. Ordinateur de bureau, portable, tablette, smartphone, serveur. 5.2. Le serveur centralise les données et les services (sites, e-mails) accessibles à tous les postes.

**Exercice 6.** 6.1. Matériel : éléments physiques (écran, clavier). Logiciel : programmes (Word, navigateur). 6.2. Microsoft Word, LibreOffice Writer.

**Exercice 7.** 7.1. Il gère le matériel, les fichiers, les programmes et l''interface utilisateur. 7.2. Windows, macOS, Linux, Android, iOS.

**Exercice 8.** 8.1. Traitement de texte (rédiger des documents), tableur (calculs et tableaux), présentation (diaporamas). 8.2. Libre : code ouvert et gratuit (Linux, LibreOffice). Propriétaire : payant, code fermé (Windows, Microsoft Office).

**Exercice 9.** 9.1. Un traitement de texte (Word) pour saisir, corriger et mettre en forme le texte. 9.2. Un tableur (Excel/Calc) qui calcule automatiquement moyennes et formules.

**Exercice 10.** 10.1. Google Chrome, Mozilla Firefox, Edge, Safari. 10.2. Gmail, Outlook, Yahoo Mail.

**Exercice 11.** 11.1. Internet : réseau mondial d''ordinateurs interconnectés. Réseau : ensemble de machines reliées pour partager des données. Adresse IP : numéro identifiant une machine sur le réseau. 11.2. Web, e-mail, réseaux sociaux, visioconférence, e-commerce.

**Exercice 12.** 12.1. Navigateur : logiciel pour consulter les pages web. Moteur de recherche : outil pour trouver des pages à partir de mots-clés. 12.2. Moteur : Google. Navigateur : Chrome/Firefox.

**Exercice 13.** 13.1. Site web : ensemble de pages web reliées. Lien hypertexte : lien cliquable vers une autre page. URL : adresse d''une ressource web. 13.2. Visioconférence : réunion en direct par Internet avec image et son ; Zoom, Google Meet, Teams.

**Exercice 14.** 14.1. Courrier électronique : service d''envoi et de réception de messages via Internet. 14.2. Adresse du destinataire, objet, contenu du message, pièce jointe (facultatif).

**Exercice 15.** 15.1. Accessible partout, sauvegarde automatique, partage facile, pas de matériel local. 15.2. Google Drive, OneDrive, Dropbox : permet de conserver et partager des devoirs en ligne.

**Exercice 16.** 16.1. Algorithme : suite ordonnée d''étapes pour résoudre un problème. Programme : algorithme écrit dans un langage. Langage : moyen de communication avec l''ordinateur. 16.2. Python, Java, C, JavaScript.

**Exercice 17.** 17.1. Analyse, conception de l''algorithme, codage, test. 17.2. Algorithme Somme : Début ; Lire A ; Lire B ; S ← A + B ; Écrire S ; Fin.

**Exercice 18.** 18.1. Une variable est un espace mémoire nommé qui peut contenir une valeur modifiable. 18.2. Début ; Lire âge ; Si âge ≥ 18 Alors Écrire « Majeur » Sinon Écrire « Mineur » ; Fin.

**Exercice 19.** 19.1. « Pour » répète un nombre de fois connu à l''avance ; « Tant que » répète tant qu''une condition est vraie. 19.2. Début ; Pour i de 1 à 10 ; Écrire i ; Fin Pour ; Fin.

**Exercice 20.** 20.1. On affecte à la variable S la valeur de la somme de A et B. 20.2. Début ; Lire N1, N2, N3 ; M ← (N1 + N2 + N3) / 3 ; Écrire M ; Fin.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'f913048a-dbe4-5c14-9df1-b5c2a7ca3d81';


-- Update set 5 for Informatique
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC INFORMATIQUE — ÉPREUVE 2 — SÉRIE 5

## Épreuve de pratique

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Informatique
**Durée :** 1 heure 30
**Coefficient :** 1

**Consignes :**

- L''épreuve comporte 4 sections et 20 exercices au total.
- Chaque exercice vaut 5 points.
- Rédige des réponses complètes, organisées et rédigées en français.
- Schémas et tableaux sont bienvenus lorsqu''ils illustrent la réponse.

---

## SECTION 1 : MATÉRIEL INFORMATIQUE

**Exercice 1.**
1.1. Définir le terme _ordinateur_. _(2 points)_
1.2. Citer et expliquer le rôle de l''unité centrale. _(3 points)_

**Exercice 2.**
2.1. Citer quatre périphériques : deux d''entrée et deux de sortie. _(2 points)_
2.2. Donner une utilité concrète de chacun de ces périphériques. _(3 points)_

**Exercice 3.**
3.1. Expliquer la différence entre mémoire vive (RAM) et mémoire morte (ROM). _(3 points)_
3.2. Citer une utilisation typique de la mémoire ROM. _(2 points)_

**Exercice 4.**
4.1. Ordonner par capacité croissante : Mo, Ko, To, Go, octet. _(3 points)_
4.2. Convertir 3 Go en Mo. _(2 points)_

**Exercice 5.**
5.1. Citer trois périphériques de stockage de masse. _(3 points)_
5.2. Expliquer ce qu''est le cloud et citer deux avantages. _(2 points)_

---

## SECTION 2 : LOGICIELS

**Exercice 6.**
6.1. Donner la définition d''un _logiciel_. _(2 points)_
6.2. Distinguer logiciel système et logiciel d''application avec un exemple pour chacun. _(3 points)_

**Exercice 7.**
7.1. Citer trois rôles du système d''exploitation. _(3 points)_
7.2. Citer deux systèmes d''exploitation pour ordinateur et deux pour smartphone. _(2 points)_

**Exercice 8.**
8.1. Citer trois logiciels de bureautique. _(3 points)_
8.2. Expliquer l''utilité d''un logiciel de présentation (ex. PowerPoint). _(2 points)_

**Exercice 9.**
9.1. Différencier un logiciel libre et un logiciel propriétaire. _(3 points)_
9.2. Citer un exemple de chacun. _(2 points)_

**Exercice 10.**
10.1. Une classe doit créer un budget de collecte. Quel logiciel est le plus adapté ? Justifier. _(3 points)_
10.2. Citer une alternative gratuite (logiciel libre) à ce logiciel. _(2 points)_

---

## SECTION 3 : RÉSEAUX ET INTERNET

**Exercice 11.**
11.1. Définir un _réseau informatique_. _(2 points)_
11.2. Citer deux avantages de la mise en réseau des ordinateurs d''une école. _(3 points)_

**Exercice 12.**
12.1. Expliquer la différence entre _intranet_ et _Internet_. _(3 points)_
12.2. Donner un exemple d''usage de l''intranet dans une entreprise. _(2 points)_

**Exercice 13.**
13.1. Citer trois services d''Internet. _(3 points)_
13.2. Décrire brièvement le service « e-commerce ». _(2 points)_

**Exercice 14.**
14.1. Qu''est-ce qu''une _adresse e-mail_ ? Donner un exemple d''adresse correcte. _(3 points)_
14.2. Citer deux bonnes pratiques pour la messagerie. _(2 points)_

**Exercice 15.**
15.1. Définir le _phishing_. _(2 points)_
15.2. Citer trois règles de prudence pour éviter le phishing. _(3 points)_

---

## SECTION 4 : ALGORITHMIQUE ET PROGRAMMATION

**Exercice 16.**
16.1. Définir _algorithme_. _(2 points)_
16.2. Citer les symboles de début et de fin dans un organigramme. _(3 points)_

**Exercice 17.**
17.1. Expliquer ce qu''est une _variable_ et citer deux types de données. _(3 points)_
17.2. Écrire un algorithme qui lit deux nombres et affiche leur produit. _(2 points)_

**Exercice 18.**
18.1. Écrire un algorithme qui affiche « Pair » ou « Impair » selon le reste de la division d''un nombre par 2. _(3 points)_
18.2. Justifier l''usage d''une structure conditionnelle dans cet algorithme. _(2 points)_

**Exercice 19.**
19.1. Écrire un algorithme qui calcule la somme des entiers de 1 à N (N saisi). _(3 points)_
19.2. Indiquer quelle boucle convient le mieux et pourquoi. _(2 points)_

**Exercice 20.**
20.1. Citer deux langages de programmation et un domaine d''utilisation de chacun. _(3 points)_
20.2. Expliquer l''importance de tester un programme. _(2 points)_

---

## BARÈME INDICATIF

| Section               | Exercices | Points par exercice | Total section |
| --------------------- | --------- | ------------------- | ------------- |
| Matériel informatique | 1 à 5     | 5                   | 25            |
| Logiciels             | 6 à 10    | 5                   | 25            |
| Réseaux et Internet   | 11 à 15   | 5                   | 25            |
| Algorithmique         | 16 à 20   | 5                   | 25            |
| **Total**             | 20        |                     | **100**       |

---

## CORRIGÉ TYPE

**Exercice 1.** 1.1. Ordinateur : machine électronique qui traite automatiquement des données selon des instructions. 1.2. L''unité centrale contient le processeur, la mémoire et les cartes ; elle exécute les traitements.

**Exercice 2.** 2.1. Entrée : clavier, souris, microphone, scanner. Sortie : écran, imprimante, haut-parleur. 2.2. Clavier : saisie du texte ; souris : sélection et pointage ; écran : affichage ; imprimante : sortie papier.

**Exercice 3.** 3.1. RAM : volatile, modifiable, utilisée pour les programmes en cours. ROM : permanente, non modifiable, contient le programme de démarrage. 3.2. Le BIOS (démarrage de l''ordinateur).

**Exercice 4.** 4.1. octet < Ko < Mo < Go < To. 4.2. 3 Go = 3 × 1 024 = 3 072 Mo.

**Exercice 5.** 5.1. Disque dur, SSD, clé USB, carte mémoire, CD/DVD. 5.2. Cloud : stockage en ligne accessible via Internet ; avantages : accessibilité partout et sauvegarde.

**Exercice 6.** 6.1. Logiciel : ensemble de programmes qui pilotent l''ordinateur. 6.2. Système : Windows (gère le matériel). Application : Word (tâche précise de l''utilisateur).

**Exercice 7.** 7.1. Gérer le matériel, les fichiers, les programmes, l''interface. 7.2. Ordinateur : Windows, Linux, macOS. Smartphone : Android, iOS.

**Exercice 8.** 8.1. Traitement de texte, tableur, présentation, messagerie. 8.2. Créer des diaporamas pour exposer des idées devant la classe.

**Exercice 9.** 9.1. Libre : code ouvert, gratuit, modifiable. Propriétaire : code fermé, souvent payant. 9.2. Libre : Linux, LibreOffice. Propriétaire : Windows, Microsoft Office.

**Exercice 10.** 10.1. Un tableur (Excel) car il fait des calculs automatiques et des tableaux. 10.2. LibreOffice Calc.

**Exercice 11.** 11.1. Réseau : ensemble d''ordinateurs reliés pour partager des ressources. 11.2. Partage des fichiers et d''imprimantes, accès à Internet, communication.

**Exercice 12.** 12.1. Intranet : réseau interne privé d''une organisation. Internet : réseau public mondial. 12.2. Partage de documents internes, messagerie interne, notes de service.

**Exercice 13.** 13.1. Web, e-mail, réseaux sociaux, visioconférence, e-commerce. 13.2. Achat et vente de biens ou services en ligne.

**Exercice 14.** 14.1. Adresse e-mail : identifiant d''une boîte électronique, format nom@fournisseur.com (ex. jean@yahoo.fr). 14.2. Utiliser un mot de passe fort, ne pas ouvrir les pièces jointes inconnues.

**Exercice 15.** 15.1. Phishing : tentative de vol de données personnelles en imitant un organisme de confiance. 15.2. Ne pas cliquer sur les liens suspects, vérifier l''expéditeur, ne jamais donner son mot de passe, signaler les messages douteux.

**Exercice 16.** 16.1. Algorithme : suite ordonnée d''instructions pour résoudre un problème. 16.2. Début : ovale/ellipse ; Fin : ovale/ellipse.

**Exercice 17.** 17.1. Variable : espace mémoire nommé contenant une valeur modifiable ; types : entier, réel, chaîne, booléen. 17.2. Début ; Lire A ; Lire B ; P ← A × B ; Écrire P ; Fin.

**Exercice 18.** 18.1. Début ; Lire N ; Si N mod 2 = 0 Alors Écrire « Pair » Sinon Écrire « Impair » ; Fin. 18.2. La condition permet de choisir entre deux résultats selon la valeur de N.

**Exercice 19.** 19.1. Début ; Lire N ; S ← 0 ; Pour i de 1 à N ; S ← S + i ; Fin Pour ; Écrire S ; Fin. 19.2. La boucle « Pour » convient car le nombre d''itérations est connu (N).

**Exercice 20.** 20.1. Python (data science, généraliste), Java (applications Android), JavaScript (web). 20.2. Le test permet de vérifier que le programme donne les bons résultats et de corriger les erreurs.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '7c26eeee-b9c5-3cec-ff42-aa6d768e4e4c';


-- Update set 6 for Informatique
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC INFORMATIQUE — ÉPREUVE 2 — SÉRIE 6

## Épreuve de pratique

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Informatique
**Durée :** 1 heure 30
**Coefficient :** 1

**Consignes :**

- L''épreuve comporte 4 sections et 20 exercices au total.
- Chaque exercice vaut 5 points.
- Rédige des réponses complètes, organisées et rédigées en français.
- Schémas et tableaux sont bienvenus lorsqu''ils illustrent la réponse.

---

## SECTION 1 : MATÉRIEL INFORMATIQUE

**Exercice 1.**
1.1. Citer les quatre fonctions principales de l''ordinateur : entrée, traitement, stockage, sortie. _(2 points)_
1.2. Associer chaque fonction à un composant ou périphérique. _(3 points)_

**Exercice 2.**
2.1. Définir _processeur_ et _mémoire vive_. _(3 points)_
2.2. Expliquer leur relation pendant l''exécution d''un programme. _(2 points)_

**Exercice 3.**
3.1. Citer trois périphériques de sortie et leur usage. _(3 points)_
3.2. Citer un périphérique qui est à la fois d''entrée et de sortie. _(2 points)_

**Exercice 4.**
4.1. Classer par ordre croissant de capacité : 1 Go, 512 Mo, 2 Ko, 8 To, 500 octets. _(3 points)_
4.2. Convertir 2 To en Go. _(2 points)_

**Exercice 5.**
5.1. Expliquer l''intérêt d''une clé USB pour un élève. _(2 points)_
5.2. Citer deux risques liés à l''usage d''une clé USB inconnue. _(3 points)_

---

## SECTION 2 : LOGICIELS

**Exercice 6.**
6.1. Définir le terme _logiciel système_. _(2 points)_
6.2. Donner deux exemples de logiciels système et deux de logiciels d''application. _(3 points)_

**Exercice 7.**
7.1. Citer trois fonctions du système d''exploitation. _(3 points)_
7.2. Expliquer ce qu''est une interface utilisateur. _(2 points)_

**Exercice 8.**
8.1. Citer trois logiciels de bureautique et leur utilité. _(3 points)_
8.2. Citer une utilisation du tableur à l''école. _(2 points)_

**Exercice 9.**
9.1. Un logiciel gratuit avec code source ouvert et modifiable est un logiciel : \__\_\_. Compléter. _(2 points)_
9.2. Citer deux exemples de logiciels libres. _(3 points)\_

**Exercice 10.**
10.1. Différencier un _compilateur_ et un _interpréteur_ en une phrase chacun. _(3 points)_
10.2. Citer un langage souvent interprété. _(2 points)_

---

## SECTION 3 : RÉSEAUX ET INTERNET

**Exercice 11.**
11.1. Définir : _réseau local (LAN)_ et _Internet_. _(3 points)_
11.2. Citer le matériel nécessaire pour relier plusieurs ordinateurs en réseau. _(2 points)_

**Exercice 12.**
12.1. Expliquer le rôle d''un _routeur_. _(2 points)_
12.2. Expliquer le rôle d''un _serveur_. _(3 points)_

**Exercice 13.**
13.1. Citer quatre services d''Internet. _(4 points)_
13.2. Donner un exemple de réseau social et un risque de son usage. _(1 point)_

**Exercice 14.**
14.1. Expliquer la différence entre _URL_ et _moteur de recherche_. _(3 points)_
14.2. Donner un exemple d''URL valide. _(2 points)_

**Exercice 15.**
15.1. Citer trois bonnes pratiques pour créer un mot de passe fort. _(3 points)_
15.2. Expliquer pourquoi il ne faut pas partager ses identifiants. _(2 points)_

---

## SECTION 4 : ALGORITHMIQUE ET PROGRAMMATION

**Exercice 16.**
16.1. Définir _programme_ et _langage de programmation_. _(3 points)_
16.2. Citer trois langages de programmation. _(2 points)_

**Exercice 17.**
17.1. Écrire un algorithme qui lit le prix d''un article et la quantité, puis calcule et affiche le prix total. _(3 points)_
17.2. Citer les variables utilisées. _(2 points)_

**Exercice 18.**
18.1. Écrire un algorithme qui affiche « Réussi » si une note est supérieure ou égale à 10, sinon « Échoué ». _(3 points)_
18.2. Identifier la structure utilisée. _(2 points)_

**Exercice 19.**
19.1. Écrire un algorithme qui affiche les nombres pairs de 2 à 20. _(3 points)_
19.2. Justifier le choix de la boucle. _(2 points)_

**Exercice 20.**
20.1. Expliquer la différence entre données d''entrée et résultats de sortie d''un algorithme. _(3 points)_
20.2. Donner un exemple concret avec l''algorithme de la moyenne. _(2 points)_

---

## BARÈME INDICATIF

| Section               | Exercices | Points par exercice | Total section |
| --------------------- | --------- | ------------------- | ------------- |
| Matériel informatique | 1 à 5     | 5                   | 25            |
| Logiciels             | 6 à 10    | 5                   | 25            |
| Réseaux et Internet   | 11 à 15   | 5                   | 25            |
| Algorithmique         | 16 à 20   | 5                   | 25            |
| **Total**             | 20        |                     | **100**       |

---

## CORRIGÉ TYPE

**Exercice 1.** 1.1. Entrée, traitement, stockage, sortie. 1.2. Entrée : clavier/souris ; traitement : processeur ; stockage : disque/RAM ; sortie : écran/imprimante.

**Exercice 2.** 2.1. Processeur : « cerveau » qui exécute les instructions. Mémoire vive : stockage temporaire des programmes en cours. 2.2. Le processeur lit et exécute les instructions chargées dans la RAM.

**Exercice 3.** 3.1. Écran (affichage), imprimante (impression), haut-parleur (son). 3.2. Un écran tactile, un modem, un graveur de CD/DVD.

**Exercice 4.** 4.1. 500 octets < 2 Ko < 512 Mo < 1 Go < 8 To. 4.2. 2 To = 2 × 1 024 = 2 048 Go.

**Exercice 5.** 5.1. Transport facile des devoirs, fichiers et documents entre la maison et l''école. 5.2. Infection par virus, vol de données.

**Exercice 6.** 6.1. Logiciel qui gère le matériel et fait fonctionner l''ordinateur. 6.2. Système : Windows, Linux. Application : Word, Excel, navigateur.

**Exercice 7.** 7.1. Gestion du matériel, gestion des fichiers, gestion des programmes, interface. 7.2. Interface utilisateur : ensemble d''éléments graphiques (fenêtres, icônes) permettant à l''utilisateur d''interagir.

**Exercice 8.** 8.1. Traitement de texte (rédaction), tableur (calculs), présentation (diaporamas). 8.2. Calculer les moyennes de notes, gérer un budget de classe.

**Exercice 9.** 9.1. Logiciel libre. 9.2. Linux, LibreOffice, Firefox, GIMP.

**Exercice 10.** 10.1. Compilateur : traduit tout le programme d''un coup en langage machine. Interpréteur : exécute le programme ligne par ligne. 10.2. Python.

**Exercice 11.** 11.1. LAN : réseau limité à un lieu (école, maison). Internet : réseau mondial de réseaux. 11.2. Switch, routeur, câbles, cartes réseau, Wi-Fi.

**Exercice 12.** 12.1. Le routeur oriente les données entre différents réseaux. 12.2. Le serveur stocke et distribue les données/services aux autres machines (clients).

**Exercice 13.** 13.1. Web, e-mail, réseaux sociaux, visioconférence, e-commerce, streaming. 13.2. Facebook/WhatsApp ; risque : cyberharcèlement, perte de temps.

**Exercice 14.** 14.1. URL : adresse exacte d''une ressource web. Moteur de recherche : outil qui trouve des pages via des mots-clés. 14.2. https://www.google.com

**Exercice 15.** 15.1. Long, mélanger lettres/chiffres/symboles, différent pour chaque compte. 15.2. Pour éviter qu''une autre personne accède à ses comptes et données.

**Exercice 16.** 16.1. Programme : algorithme écrit dans un langage compréhensible par l''ordinateur. Langage : moyen de communication avec la machine. 16.2. Python, Java, C, JavaScript.

**Exercice 17.** 17.1. Début ; Lire Prix ; Lire Qté ; Total ← Prix × Qté ; Écrire Total ; Fin. 17.2. Prix, Qté, Total.

**Exercice 18.** 18.1. Début ; Lire Note ; Si Note ≥ 10 Alors Écrire « Réussi » Sinon Écrire « Échoué » ; Fin. 18.2. Structure conditionnelle (Si...Alors...Sinon).

**Exercice 19.** 19.1. Début ; Pour i de 2 à 20 pas de 2 ; Écrire i ; Fin Pour ; Fin. 19.2. La boucle « Pour » avec un pas convient car le nombre d''itérations est fixe.

**Exercice 20.** 20.1. Entrées : données fournies (notes, prix). Sorties : résultats produits (moyenne, total). 20.2. Entrées : trois notes ; sortie : leur moyenne affichée.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = 'a3e6c9c5-7904-2158-4448-8debbee36b86';


-- Update set 7 for Informatique
UPDATE public.course_documents
SET markdown_content = '# CAMEROON BEPC INFORMATIQUE — ÉPREUVE 2 — SÉRIE 7

## Épreuve de pratique

**Niveau :** Troisième — BEPC
**Série :** Tronc Commun
**Matière :** Informatique
**Durée :** 1 heure 30
**Coefficient :** 1

**Consignes :**

- L''épreuve comporte 4 sections et 20 exercices au total.
- Chaque exercice vaut 5 points.
- Rédige des réponses complètes, organisées et rédigées en français.
- Schémas et tableaux sont bienvenus lorsqu''ils illustrent la réponse.

---

## SECTION 1 : MATÉRIEL INFORMATIQUE

**Exercice 1.**
1.1. Citer les principaux composants de l''unité centrale. _(3 points)_
1.2. Expliquer le rôle du disque dur par rapport à la mémoire vive. _(2 points)_

**Exercice 2.**
2.1. Donner la définition d''un _périphérique_. _(2 points)_
2.2. Classer ces périphériques : scanner, vidéoprojecteur, webcam, casque. _(3 points)_

**Exercice 3.**
3.1. Expliquer la différence entre données et informations. _(3 points)_
3.2. Donner un exemple concret de donnée devenue information. _(2 points)_

**Exercice 4.**
4.1. Citer quatre unités de mesure de l''information dans l''ordre croissant. _(2 points)_
4.2. Une clé USB de 8 Go peut contenir combien de fichiers de 1 Mo ? Justifier. _(3 points)_

**Exercice 5.**
5.1. Citer deux avantages du stockage dans le cloud. _(2 points)_
5.2. Citer un inconvénient ou risque du cloud. _(3 points)_

---

## SECTION 2 : LOGICIELS

**Exercice 6.**
6.1. Citer trois exemples de logiciels d''application. _(3 points)_
6.2. Expliquer pourquoi un ordinateur sans système d''exploitation est difficilement utilisable. _(2 points)_

**Exercice 7.**
7.1. Citer les principaux rôles du système d''exploitation. _(3 points)_
7.2. Donner un exemple de système d''exploitation pour chaque type : PC, smartphone, serveur. _(2 points)_

**Exercice 8.**
8.1. Expliquer l''utilité d''un traitement de texte à l''école. _(3 points)_
8.2. Citer deux fonctionnalités d''un traitement de texte. _(2 points)_

**Exercice 9.**
9.1. Définir _logiciel libre_ et _logiciel gratuit_. _(3 points)_
9.2. Montrer qu''un logiciel gratuit n''est pas forcément libre. _(2 points)_

**Exercice 10.**
10.1. Citer deux logiciels de présentation. _(2 points)_
10.2. Décrire une situation où un élève utilise un logiciel de présentation. _(3 points)_

---

## SECTION 3 : RÉSEAUX ET INTERNET

**Exercice 11.**
11.1. Définir : _navigateur web_, _site web_, _page web_. _(3 points)_
11.2. Citer un navigateur et un moteur de recherche. _(2 points)_

**Exercice 12.**
12.1. Expliquer la différence entre _Internet_ et _web_. _(3 points)_
12.2. Citer deux autres services d''Internet en dehors du web. _(2 points)_

**Exercice 13.**
13.1. Qu''est-ce que le _cloud computing_ ? _(2 points)_
13.2. Citer trois exemples de services de cloud. _(3 points)_

**Exercice 14.**
14.1. Citer quatre règles de sécurité sur Internet. _(4 points)_
14.2. Expliquer l''importance de mettre à jour ses logiciels. _(1 point)_

**Exercice 15.**
15.1. Définir _cyberharcèlement_. _(2 points)_
15.2. Citer trois attitudes à adopter face au cyberharcèlement. _(3 points)_

---

## SECTION 4 : ALGORITHMIQUE ET PROGRAMMATION

**Exercice 16.**
16.1. Définir _algorithme_. _(2 points)_
16.2. Citer les principales structures d''un algorithme (séquentielle, conditionnelle, itérative). _(3 points)_

**Exercice 17.**
17.1. Écrire un algorithme qui lit le rayon d''un cercle et calcule son aire (A = π × r², π = 3,14). _(3 points)_
17.2. Citer les variables et leur type. _(2 points)_

**Exercice 18.**
18.1. Écrire un algorithme qui détermine si un nombre est positif, négatif ou nul. _(3 points)_
18.2. Justifier l''usage des structures conditionnelles imbriquées. _(2 points)_

**Exercice 19.**
19.1. Écrire un algorithme qui affiche la table de multiplication de 5 (de 1 à 10). _(3 points)_
19.2. Identifier la structure de répétition utilisée. _(2 points)_

**Exercice 20.**
20.1. Écrire un algorithme qui lit 10 notes et calcule leur moyenne. _(3 points)_
20.2. Expliquer le rôle de l''accumulateur S dans cet algorithme. _(2 points)_

---

## BARÈME INDICATIF

| Section               | Exercices | Points par exercice | Total section |
| --------------------- | --------- | ------------------- | ------------- |
| Matériel informatique | 1 à 5     | 5                   | 25            |
| Logiciels             | 6 à 10    | 5                   | 25            |
| Réseaux et Internet   | 11 à 15   | 5                   | 25            |
| Algorithmique         | 16 à 20   | 5                   | 25            |
| **Total**             | 20        |                     | **100**       |

---

## CORRIGÉ TYPE

**Exercice 1.** 1.1. Processeur, mémoire vive (RAM), disque dur/SSD, carte mère, carte graphique, alimentation. 1.2. Le disque dur conserve les données en permanence ; la RAM les garde temporairement pendant l''usage.

**Exercice 2.** 2.1. Périphérique : dispositif relié à l''unité centrale pour entrer ou sortir des données. 2.2. Entrée : scanner, webcam. Sortie : vidéoprojecteur, casque.

**Exercice 3.** 3.1. Donnée : élément brut non interprété. Information : donnée traitée et qui a un sens. 3.2. Ex. la note 14 est une donnée ; « 14, moyenne de la classe = 12 » est une information.

**Exercice 4.** 4.1. bit, octet, Ko, Mo, Go, To. 4.2. 8 Go = 8 × 1 024 = 8 192 Mo ; donc environ 8 192 fichiers de 1 Mo.

**Exercice 5.** 5.1. Accessible partout, sauvegarde automatique, partage facile. 5.2. Dépendance à la connexion Internet, risque de piratage, coût.

**Exercice 6.** 6.1. Word, Excel, navigateur, jeu, lecteur multimédia. 6.2. Sans système d''exploitation, l''utilisateur ne peut pas lancer d''applications ni gérer le matériel facilement.

**Exercice 7.** 7.1. Gérer matériel, fichiers, programmes, interface, sécurité. 7.2. PC : Windows/Linux ; smartphone : Android/iOS ; serveur : Linux/Windows Server.

**Exercice 8.** 8.1. Rédiger devoirs, rapports et lettres ; corriger, mettre en forme, insérer des images. 8.2. Correcteur orthographique, mise en gras, insertion de tableaux, en-tête/pied de page.

**Exercice 9.** 9.1. Libre : code source ouvert et modifiable. Gratuit : ne coûte rien à l''achat. 9.2. Un logiciel gratuit peut avoir un code fermé (ex. certains logiciels gratuits propriétaires) ; il n''est donc pas libre.

**Exercice 10.** 10.1. PowerPoint, LibreOffice Impress, Google Slides. 10.2. Présenter un exposé de SVT avec des diapositives devant la classe.

**Exercice 11.** 11.1. Navigateur : logiciel de consultation du web. Site web : ensemble de pages reliées. Page web : document consultable en ligne. 11.2. Navigateur : Chrome/Firefox ; moteur : Google.

**Exercice 12.** 12.1. Internet : l''infrastructure réseau mondiale. Web : service d''Internet permettant de consulter des pages. 12.2. E-mail, réseaux sociaux, visioconférence, FTP.

**Exercice 13.** 13.1. Cloud : mise à disposition de ressources (stockage, logiciels) via Internet. 13.2. Google Drive, OneDrive, Dropbox, iCloud.

**Exercice 14.** 14.1. Mots de passe forts, antivirus à jour, ne pas partager ses identifiants, se méfier des liens inconnus, mettre à jour ses logiciels. 14.2. Les mises à jour corrigent des failles de sécurité.

**Exercice 15.** 15.1. Cyberharcèlement : harcèlement d''une personne via Internet ou réseaux sociaux. 15.2. Ne pas répondre, garder les preuves, en parler à un adulte, signaler/ bloquer, porter plainte.

**Exercice 16.** 16.1. Algorithme : suite ordonnée d''instructions pour résoudre un problème. 16.2. Séquentielle, conditionnelle (Si...Sinon), itérative (boucles).

**Exercice 17.** 17.1. Début ; Lire r ; A ← 3,14 × r × r ; Écrire A ; Fin. 17.2. r (réel), A (réel).

**Exercice 18.** 18.1. Début ; Lire N ; Si N > 0 Alors Écrire « Positif » Sinon Si N < 0 Alors Écrire « Négatif » Sinon Écrire « Nul » ; Fin. 18.2. Les conditions imbriquées permettent de tester plusieurs cas successifs.

**Exercice 19.** 19.1. Début ; Pour i de 1 à 10 ; Écrire 5 × i ; Fin Pour ; Fin. 19.2. La boucle « Pour » (répétition itérative).

**Exercice 20.** 20.1. Début ; S ← 0 ; Pour i de 1 à 10 ; Lire N ; S ← S + N ; Fin Pour ; M ← S / 10 ; Écrire M ; Fin. 20.2. S accumule la somme des notes pour pouvoir calculer la moyenne.
', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '2736cf81-891d-d7ee-0498-73f7ea3436ac';

COMMIT;

NOTIFY pgrst, 'reload schema';