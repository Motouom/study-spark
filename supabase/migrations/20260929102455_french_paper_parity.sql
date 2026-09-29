-- Seed French MCQ (Paper 1) and additional structural sets for francophone subjects
-- Generated: 2026-09-29T10:24:55.791069
BEGIN;


-- BEPC Mathématiques — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3eb41e0c-6931-8e21-e3ce-cae4380f3137', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC Mathématiques — QCM (Épreuve 1) — Série 1',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC MATHÉMATIQUES P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Mathématiques
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Résoudre l''équation : $3x - 7 = 2x + 5$.

A. $x = 12$
B. $x = 2$
C. $x = -2$
D. $x = 5$

---

**Q2.** La valeur de $\sqrt{144}$ est :

A. 12
B. 14
C. 11
D. 13

---

**Q3.** Simplifier : $\frac{3}{4} + \frac{5}{6}$.

A. $\frac{19}{12}$
B. $\frac{8}{10}$
C. $\frac{9}{12}$
D. $\frac{15}{24}$

---

**Q4.** Le PGCD de 24 et 36 est :

A. 12
B. 6
C. 18
D. 72

---

**Q5.** Résoudre : $2x + 3 = 15$.

A. $x = 6$
B. $x = 9$
C. $x = 5$
D. $x = 7$

---

**Q6.** $10\%$ de 250 est :

A. 25
B. 2,5
C. 250
D. 50

---

**Q7.** L''aire d''un carré de côté 5 cm est :

A. 25 cm²
B. 20 cm²
C. 10 cm²
D. 50 cm²

---

**Q8.** Le volume d''un cube d''arête 3 cm est :

A. 27 cm³
B. 9 cm³
C. 18 cm³
D. 12 cm³

---

**Q9.** Résoudre : $x^2 = 49$.

A. $x = 7$ ou $x = -7$
B. $x = 7$
C. $x = -7$
D. $x = 24,5$

---

**Q10.** La médiane de la série 3, 5, 7, 9, 11 est :

A. 7
B. 5
C. 9
D. 6

---

**Q11.** $\frac{2}{3}$ de 90 est :

A. 60
B. 30
C. 45
D. 135

---

**Q12.** Le périmètre d''un rectangle de 8 cm sur 5 cm est :

A. 26 cm
B. 40 cm
C. 13 cm
D. 80 cm

---

**Q13.** Résoudre le système : $x + y = 10$ et $x - y = 4$.

A. $x = 7$, $y = 3$
B. $x = 3$, $y = 7$
C. $x = 6$, $y = 4$
D. $x = 5$, $y = 5$

---

**Q14.** $3^4$ est égal à :

A. 81
B. 12
C. 64
D. 27

---

**Q15.** La moyenne de 4, 6, 8, 10 est :

A. 7
B. 6
C. 8
D. 9

---

**Q16.** Un angle droit mesure :

A. 90°
B. 180°
C. 45°
D. 360°

---

**Q17.** Résoudre : $5x - 2 = 3x + 8$.

A. $x = 5$
B. $x = 3$
C. $x = 10$
D. $x = 6$

---

**Q18.** Le nombre premier parmi les suivants est :

A. 17
B. 15
C. 21
D. 9

---

**Q19.** $\frac{1}{2} + \frac{1}{3}$ est égal à :

A. $\frac{5}{6}$
B. $\frac{2}{5}$
C. $\frac{1}{6}$
D. $\frac{3}{5}$

---

**Q20.** L''équation de la droite passant par l''origine et de pente 2 est :

A. $y = 2x$
B. $y = x + 2$
C. $y = 2x + 1$
D. $x = 2y$

---

## CORRIGÉ

1. $x = 12$
2. 12
3. $\frac{19}{12}$
4. 12
5. $x = 6$
6. 25
7. 25 cm²
8. 27 cm³
9. $x = 7$ ou $x = -7$
10. 7
11. 60
12. 26 cm
13. $x = 7$, $y = 3$
14. 81
15. 7
16. 90°
17. $x = 5$
18. 17
19. $\frac{5}{6}$
20. $y = 2x$
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Mathématiques — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3e7ee059-8cfc-b4d5-e968-46f9963587c9', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC Mathématiques — QCM (Épreuve 1) — Série 2',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC MATHÉMATIQUES P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Mathématiques
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le complément de 35° est :

A. 55°
B. 145°
C. 65°
D. 125°

---

**Q2.** $0,5$ en fraction est :

A. $\frac{1}{2}$
B. $\frac{5}{10}$
C. $\frac{1}{5}$
D. $\frac{2}{5}$

---

**Q3.** Le PPCM de 4 et 6 est :

A. 12
B. 24
C. 6
D. 2

---

**Q4.** Résoudre : $\frac{x}{4} = 3$.

A. $x = 12$
B. $x = 7$
C. $x = 1$
D. $x = 3$

---

**Q5.** L''aire d''un triangle de base 10 cm et hauteur 6 cm est :

A. 30 cm²
B. 60 cm²
C. 16 cm²
D. 15 cm²

---

**Q6.** $2^5$ est égal à :

A. 32
B. 25
C. 10
D. 16

---

**Q7.** Le plus grand nombre parmi : 0,25 ; 0,5 ; 0,125 ; 0,75 est :

A. 0,75
B. 0,5
C. 0,25
D. 0,125

---

**Q8.** Résoudre : $3(x - 2) = 9$.

A. $x = 5$
B. $x = 3$
C. $x = 11$
D. $x = 1$

---

**Q9.** La somme des angles d''un triangle est :

A. 180°
B. 90°
C. 360°
D. 270°

---

**Q10.** $\sqrt{81}$ est égal à :

A. 9
B. 8
C. 7
D. 10

---

**Q11.** Le coefficient de $x$ dans $5x + 3$ est :

A. 5
B. 3
C. 8
D. x

---

**Q12.** Résoudre : $x - 8 = 12$.

A. $x = 20$
B. $x = 4$
C. $x = 96$
D. $x = 12$

---

**Q13.** $25\%$ de 80 est :

A. 20
B. 25
C. 40
D. 5

---

**Q14.** Le symétrique de 7 par rapport à 0 est :

A. -7
B. 7
C. 0
D. 14

---

**Q15.** L''aire d''un cercle de rayon 3 cm (π ≈ 3,14) est :

A. 28,26 cm²
B. 18,84 cm²
C. 9,42 cm²
D. 56,52 cm²

---

**Q16.** Résoudre : $2x^2 = 32$.

A. $x = 4$ ou $x = -4$
B. $x = 4$
C. $x = 16$
D. $x = 8$

---

**Q17.** Le nombre 0,75 en pourcentage est :

A. 75%
B. 7,5%
C. 0,75%
D. 750%

---

**Q18.** La distance entre -3 et 5 sur la droite numérique est :

A. 8
B. 2
C. -8
D. 15

---

**Q19.** $\frac{7}{8} - \frac{3}{8}$ est égal à :

A. $\frac{1}{2}$
B. $\frac{4}{8}$
C. $\frac{10}{8}$
D. $\frac{1}{4}$

---

**Q20.** Le périmètre d''un cercle de rayon 5 cm (π ≈ 3,14) est :

A. 31,4 cm
B. 15,7 cm
C. 78,5 cm
D. 25 cm

---

## CORRIGÉ

1. 55°
2. $\frac{1}{2}$
3. 12
4. $x = 12$
5. 30 cm²
6. 32
7. 0,75
8. $x = 5$
9. 180°
10. 9
11. 5
12. $x = 20$
13. 20
14. -7
15. 28,26 cm²
16. $x = 4$ ou $x = -4$
17. 75%
18. 8
19. $\frac{1}{2}$
20. 31,4 cm
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Mathématiques — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '07ed82b8-4104-f812-d986-a11073a42990', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC Mathématiques — QCM (Épreuve 1) — Série 3',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC MATHÉMATIQUES P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Mathématiques
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Résoudre : $4x + 1 = 2x + 9$.

A. $x = 4$
B. $x = 5$
C. $x = 8$
D. $x = 2$

---

**Q2.** Le plus petit multiple commun de 3 et 5 est :

A. 15
B. 8
C. 30
D. 3

---

**Q3.** $(-3) \times (-4)$ est égal à :

A. 12
B. -12
C. 7
D. -7

---

**Q4.** L''aire d''un parallélogramme de base 8 cm et hauteur 5 cm est :

A. 40 cm²
B. 13 cm²
C. 26 cm²
D. 80 cm²

---

**Q5.** Résoudre : $\frac{2x}{3} = 8$.

A. $x = 12$
B. $x = 24$
C. $x = 6$
D. $x = 4$

---

**Q6.** Le nombre 0,2 en fraction irréductible est :

A. $\frac{1}{5}$
B. $\frac{2}{10}$
C. $\frac{1}{2}$
D. $\frac{2}{5}$

---

**Q7.** La valeur de $5!$ (factorielle) est :

A. 120
B. 25
C. 15
D. 720

---

**Q8.** Résoudre : $x + 3 = 2x - 1$.

A. $x = 4$
B. $x = 2$
C. $x = -4$
D. $x = 1$

---

**Q9.** Le PGCD de 18 et 27 est :

A. 9
B. 3
C. 6
D. 54

---

**Q10.** L''aire d''un losange de diagonales 6 cm et 8 cm est :

A. 24 cm²
B. 48 cm²
C. 14 cm²
D. 28 cm²

---

**Q11.** $\frac{3}{5}$ de 100 est :

A. 60
B. 40
C. 35
D. 65

---

**Q12.** Résoudre : $x^2 - 9 = 0$.

A. $x = 3$ ou $x = -3$
B. $x = 3$
C. $x = 9$
D. $x = 4,5$

---

**Q13.** Le nombre 0,125 en fraction est :

A. $\frac{1}{8}$
B. $\frac{1}{4}$
C. $\frac{1}{5}$
D. $\frac{1}{12}$

---

**Q14.** La somme de 2,5 et 3,75 est :

A. 6,25
B. 5,25
C. 6,5
D. 5,75

---

**Q15.** Résoudre : $7x = 49$.

A. $x = 7$
B. $x = 42$
C. $x = 56$
D. $x = 343$

---

**Q16.** Le volume d''un pavé droit de 4 cm × 3 cm × 2 cm est :

A. 24 cm³
B. 9 cm³
C. 12 cm³
D. 48 cm³

---

**Q17.** $\frac{2}{5} \times \frac{3}{4}$ est égal à :

A. $\frac{3}{10}$
B. $\frac{6}{20}$
C. $\frac{5}{9}$
D. $\frac{1}{10}$

---

**Q18.** Le nombre 0,6 en pourcentage est :

A. 60%
B. 6%
C. 0,6%
D. 600%

---

**Q19.** Résoudre : $x + 5 = 2x - 3$.

A. $x = 8$
B. $x = 2$
C. $x = -8$
D. $x = 5$

---

**Q20.** Résoudre l''équation : $3x - 7 = 2x + 5$.

A. $x = 12$
B. $x = 2$
C. $x = -2$
D. $x = 5$

---

## CORRIGÉ

1. $x = 4$
2. 15
3. 12
4. 40 cm²
5. $x = 12$
6. $\frac{1}{5}$
7. 120
8. $x = 4$
9. 9
10. 24 cm²
11. 60
12. $x = 3$ ou $x = -3$
13. $\frac{1}{8}$
14. 6,25
15. $x = 7$
16. 24 cm³
17. $\frac{3}{10}$
18. 60%
19. $x = 8$
20. $x = 12$
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Mathématiques — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3b3358d0-2734-128a-6c44-76e682256505', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC Mathématiques — Sujet structuré — Série 4',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC MATHÉMATIQUES SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Mathématiques
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: STATISTIQUES ET PROBABILITÉS

**Q1.** La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l''étendue.

**Q1.** Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte.

**Q1.** Un dé à six faces est lancé. Calculer la probabilité d''obtenir un nombre pair.

**Q1.** Construire un tableau d''effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6.

**Q1.** La moyenne de 5 nombres est 12. Calculer leur somme.

## SECTION 2: PROBLÈMES CONCRETS

**Q2.** Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²).

**Q2.** Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h.

**Q2.** Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?

**Q2.** Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.

**Q2.** Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.

## SECTION 3: ARITHMÉTIQUE ET NOMBRES

**Q3.** Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et PPCM.

**Q3.** Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier.

**Q3.** Calculer : $\frac{7}{12} + \frac{5}{18} - \frac{1}{4}$ et donner le résultat sous forme irréductible.

**Q3.** Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final.

**Q3.** Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique.

## SECTION 4: ALGÈBRE ET ÉQUATIONS

**Q4.** Résoudre l''équation : $\frac{2x - 3}{4} = \frac{x + 1}{2}$.

**Q4.** Résoudre le système : $\begin{cases} 3x + 2y = 19 \\ 2x - y = 1 \end{cases}$.

**Q4.** Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.

**Q4.** Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.

**Q4.** Un père a 40 ans, son fils a 12 ans. Dans combien d''années le père aura-t-il le triple de l''âge du fils ?

## SECTION 5: GÉOMÉTRIE

**Q5.** ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC.

**Q5.** Calculer l''aire et le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14).

**Q5.** Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.

**Q5.** Calculer le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).

**Q5.** Deux angles sont complémentaires. L''un mesure 35°. Calculer l''autre.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Mathématiques — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5ccde18e-b810-4481-73a4-756e3502f3c9', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC Mathématiques — Sujet structuré — Série 5',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC MATHÉMATIQUES SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Mathématiques
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: PROBLÈMES CONCRETS

**Q1.** Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²).

**Q1.** Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h.

**Q1.** Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?

**Q1.** Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.

**Q1.** Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.

## SECTION 2: ARITHMÉTIQUE ET NOMBRES

**Q2.** Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et PPCM.

**Q2.** Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier.

**Q2.** Calculer : $\frac{7}{12} + \frac{5}{18} - \frac{1}{4}$ et donner le résultat sous forme irréductible.

**Q2.** Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final.

**Q2.** Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique.

## SECTION 3: ALGÈBRE ET ÉQUATIONS

**Q3.** Résoudre l''équation : $\frac{2x - 3}{4} = \frac{x + 1}{2}$.

**Q3.** Résoudre le système : $\begin{cases} 3x + 2y = 19 \\ 2x - y = 1 \end{cases}$.

**Q3.** Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.

**Q3.** Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.

**Q3.** Un père a 40 ans, son fils a 12 ans. Dans combien d''années le père aura-t-il le triple de l''âge du fils ?

## SECTION 4: GÉOMÉTRIE

**Q4.** ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC.

**Q4.** Calculer l''aire et le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14).

**Q4.** Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.

**Q4.** Calculer le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).

**Q4.** Deux angles sont complémentaires. L''un mesure 35°. Calculer l''autre.

## SECTION 5: STATISTIQUES ET PROBABILITÉS

**Q5.** La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l''étendue.

**Q5.** Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte.

**Q5.** Un dé à six faces est lancé. Calculer la probabilité d''obtenir un nombre pair.

**Q5.** Construire un tableau d''effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6.

**Q5.** La moyenne de 5 nombres est 12. Calculer leur somme.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Mathématiques — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f4c7975a-bd94-6633-9a29-9bd604f1f87e', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC Mathématiques — Sujet structuré — Série 6',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC MATHÉMATIQUES SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Mathématiques
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ARITHMÉTIQUE ET NOMBRES

**Q1.** Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et PPCM.

**Q1.** Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier.

**Q1.** Calculer : $\frac{7}{12} + \frac{5}{18} - \frac{1}{4}$ et donner le résultat sous forme irréductible.

**Q1.** Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final.

**Q1.** Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique.

## SECTION 2: ALGÈBRE ET ÉQUATIONS

**Q2.** Résoudre l''équation : $\frac{2x - 3}{4} = \frac{x + 1}{2}$.

**Q2.** Résoudre le système : $\begin{cases} 3x + 2y = 19 \\ 2x - y = 1 \end{cases}$.

**Q2.** Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.

**Q2.** Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.

**Q2.** Un père a 40 ans, son fils a 12 ans. Dans combien d''années le père aura-t-il le triple de l''âge du fils ?

## SECTION 3: GÉOMÉTRIE

**Q3.** ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC.

**Q3.** Calculer l''aire et le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14).

**Q3.** Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.

**Q3.** Calculer le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).

**Q3.** Deux angles sont complémentaires. L''un mesure 35°. Calculer l''autre.

## SECTION 4: STATISTIQUES ET PROBABILITÉS

**Q4.** La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l''étendue.

**Q4.** Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte.

**Q4.** Un dé à six faces est lancé. Calculer la probabilité d''obtenir un nombre pair.

**Q4.** Construire un tableau d''effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6.

**Q4.** La moyenne de 5 nombres est 12. Calculer leur somme.

## SECTION 5: PROBLÈMES CONCRETS

**Q5.** Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²).

**Q5.** Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h.

**Q5.** Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?

**Q5.** Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.

**Q5.** Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Mathématiques — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2a096f48-fa2e-95b6-7142-1d3adbd41b5b', 'fr-bepc-math-equations', 'Mathématiques', 'BEPC Mathématiques — Sujet structuré — Série 7',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC MATHÉMATIQUES SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Mathématiques
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ALGÈBRE ET ÉQUATIONS

**Q1.** Résoudre l''équation : $\frac{2x - 3}{4} = \frac{x + 1}{2}$.

**Q1.** Résoudre le système : $\begin{cases} 3x + 2y = 19 \\ 2x - y = 1 \end{cases}$.

**Q1.** Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.

**Q1.** Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.

**Q1.** Un père a 40 ans, son fils a 12 ans. Dans combien d''années le père aura-t-il le triple de l''âge du fils ?

## SECTION 2: GÉOMÉTRIE

**Q2.** ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC.

**Q2.** Calculer l''aire et le périmètre d''un cercle de rayon 7 cm (π ≈ 3,14).

**Q2.** Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.

**Q2.** Calculer le volume d''un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).

**Q2.** Deux angles sont complémentaires. L''un mesure 35°. Calculer l''autre.

## SECTION 3: STATISTIQUES ET PROBABILITÉS

**Q3.** La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l''étendue.

**Q3.** Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte.

**Q3.** Un dé à six faces est lancé. Calculer la probabilité d''obtenir un nombre pair.

**Q3.** Construire un tableau d''effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6.

**Q3.** La moyenne de 5 nombres est 12. Calculer leur somme.

## SECTION 4: PROBLÈMES CONCRETS

**Q4.** Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²).

**Q4.** Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h.

**Q4.** Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?

**Q4.** Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.

**Q4.** Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.

## SECTION 5: ARITHMÉTIQUE ET NOMBRES

**Q5.** Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et PPCM.

**Q5.** Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier.

**Q5.** Calculer : $\frac{7}{12} + \frac{5}{18} - \frac{1}{4}$ et donner le résultat sous forme irréductible.

**Q5.** Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final.

**Q5.** Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Physique-Chimie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6f2ef91b-15cf-436c-a90c-10ef4cac7e9e', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC Physique-Chimie — QCM (Épreuve 1) — Série 1',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC PHYSIQUE-CHIMIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Physique-Chimie
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''unité de la tension électrique est :

A. le volt
B. l''ampère
C. l''ohm
D. le watt

---

**Q2.** L''intensité du courant se mesure avec :

A. un ampèremètre
B. un voltmètre
C. un ohmmètre
D. un wattmètre

---

**Q3.** La formule de la loi d''Ohm est :

A. U = R × I
B. U = R / I
C. I = U × R
D. R = U × I

---

**Q4.** L''unité de la résistance électrique est :

A. l''ohm
B. le volt
C. l''ampère
D. le joule

---

**Q5.** La masse volumique se calcule par :

A. ρ = m / V
B. ρ = m × V
C. ρ = V / m
D. ρ = m + V

---

**Q6.** L''unité de la force est :

A. le newton
B. le kilogramme
C. le pascal
D. le joule

---

**Q7.** La pression se calcule par :

A. P = F / S
B. P = F × S
C. P = S / F
D. P = F + S

---

**Q8.** L''unité de la pression est :

A. le pascal
B. le newton
C. le joule
D. le watt

---

**Q9.** Le symbole chimique de l''eau est :

A. H₂O
B. CO₂
C. O₂
D. H₂

---

**Q10.** Le pH d''une solution acide est :

A. inférieur à 7
B. supérieur à 7
C. égal à 7
D. égal à 0

---

**Q11.** L''énergie cinétique se calcule par :

A. Ec = ½ mv²
B. Ec = mv
C. Ec = mgh
D. Ec = ½ mgh

---

**Q12.** L''unité de l''énergie est :

A. le joule
B. le watt
C. le newton
D. le pascal

---

**Q13.** La vitesse se calcule par :

A. v = d / t
B. v = d × t
C. v = t / d
D. v = d + t

---

**Q14.** Le symbole chimique du dioxyde de carbone est :

A. CO₂
B. O₂
C. CO
D. C₂O

---

**Q15.** Un corps pur est :

A. constitué d''une seule espèce chimique
B. un mélange
C. un alliage
D. une solution

---

**Q16.** La température se mesure avec :

A. un thermomètre
B. un baromètre
C. un manomètre
D. un hygromètre

---

**Q17.** L''unité de la température en SI est :

A. le kelvin
B. le degré Celsius
C. le degré Fahrenheit
D. le joule

---

**Q18.** Le courant électrique est un déplacement de :

A. charges électriques
B. molécules
C. atomes
D. neutrons

---

**Q19.** Dans un circuit en série, l''intensité est :

A. la même partout
B. différente partout
C. nulle
D. maximale au début

---

**Q20.** Le symbole chimique du sel de cuisine (chlorure de sodium) est :

A. NaCl
B. NaCl₂
C. Na₂Cl
D. ClNa₂

---

## CORRIGÉ

1. le volt
2. un ampèremètre
3. U = R × I
4. l''ohm
5. ρ = m / V
6. le newton
7. P = F / S
8. le pascal
9. H₂O
10. inférieur à 7
11. Ec = ½ mv²
12. le joule
13. v = d / t
14. CO₂
15. constitué d''une seule espèce chimique
16. un thermomètre
17. le kelvin
18. charges électriques
19. la même partout
20. NaCl
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Physique-Chimie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Physique-Chimie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '505fb455-24e5-6e43-2e3c-41c62fc175e2', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC Physique-Chimie — QCM (Épreuve 1) — Série 2',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC PHYSIQUE-CHIMIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Physique-Chimie
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La puissance électrique se calcule par :

A. P = U × I
B. P = U / I
C. P = I / U
D. P = U + I

---

**Q2.** L''unité de la puissance est :

A. le watt
B. le joule
C. le volt
D. l''ampère

---

**Q3.** Le poids d''un corps se calcule par :

A. P = m × g
B. P = m / g
C. P = g / m
D. P = m + g

---

**Q4.** La valeur de g (accélération de pesanteur) sur Terre est environ :

A. 9,8 N/kg
B. 10 N/kg
C. 98 N/kg
D. 0,98 N/kg

---

**Q5.** Une solution basique a un pH :

A. supérieur à 7
B. inférieur à 7
C. égal à 7
D. égal à 14

---

**Q6.** Le symbole chimique de l''oxygène est :

A. O
B. O₂
C. Ox
D. Og

---

**Q7.** La distillation permet de :

A. séparer les constituants d''un mélange homogène
B. mélanger deux liquides
C. solidifier un liquide
D. filtrer un solide

---

**Q8.** L''aimant attire :

A. le fer
B. le cuivre
C. l''aluminium
D. le verre

---

**Q9.** Le courant alternatif change de sens :

A. périodiquement
B. jamais
C. une seule fois
D. aléatoirement

---

**Q10.** L''unité de la fréquence est :

A. le hertz
B. le watt
C. le volt
D. l''ohm

---

**Q11.** Le symbole chimique du carbone est :

A. C
B. Ca
C. Co
D. Cr

---

**Q12.** La fusion est le passage de :

A. solide à liquide
B. liquide à gaz
C. gaz à liquide
D. solide à gaz

---

**Q13.** La vaporisation est le passage de :

A. liquide à gaz
B. solide à liquide
C. gaz à solide
D. liquide à solide

---

**Q14.** Le symbole chimique de l''azote est :

A. N
B. Az
C. Na
D. Ni

---

**Q15.** Un isolant électrique est :

A. le plastique
B. le cuivre
C. le fer
D. l''aluminium

---

**Q16.** Un conducteur électrique est :

A. le cuivre
B. le verre
C. le plastique
D. le bois

---

**Q17.** L''énergie potentielle de pesanteur se calcule par :

A. Ep = mgh
B. Ep = ½ mv²
C. Ep = mv
D. Ep = mgh²

---

**Q18.** Le symbole chimique du fer est :

A. Fe
B. F
C. Fr
D. Ir

---

**Q19.** La condensation est le passage de :

A. gaz à liquide
B. liquide à gaz
C. solide à liquide
D. gaz à solide

---

**Q20.** L''unité de la charge électrique est :

A. le coulomb
B. le volt
C. l''ampère
D. l''ohm

---

## CORRIGÉ

1. P = U × I
2. le watt
3. P = m × g
4. 9,8 N/kg
5. supérieur à 7
6. O
7. séparer les constituants d''un mélange homogène
8. le fer
9. périodiquement
10. le hertz
11. C
12. solide à liquide
13. liquide à gaz
14. N
15. le plastique
16. le cuivre
17. Ep = mgh
18. Fe
19. gaz à liquide
20. le coulomb
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Physique-Chimie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Physique-Chimie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9a6eb1a1-5499-aee9-f687-f5c723366d30', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC Physique-Chimie — QCM (Épreuve 1) — Série 3',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC PHYSIQUE-CHIMIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Physique-Chimie
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le symbole chimique de l''hydrogène est :

A. H
B. Hy
C. He
D. Hg

---

**Q2.** La dilution consiste à :

A. ajouter de l''eau à une solution
B. concentrer une solution
C. chauffer une solution
D. refroidir une solution

---

**Q3.** Le symbole chimique du calcium est :

A. Ca
B. C
C. Cl
D. Cr

---

**Q4.** Un aimant possède :

A. deux pôles
B. un pôle
C. trois pôles
D. aucun pôle

---

**Q5.** La sublimation est le passage de :

A. solide à gaz
B. gaz à liquide
C. liquide à solide
D. gaz à solide

---

**Q6.** Le symbole chimique du sodium est :

A. Na
B. So
C. S
D. N

---

**Q7.** L''énergie mécanique est la somme de :

A. l''énergie cinétique et potentielle
B. l''énergie thermique et électrique
C. l''énergie chimique et nucléaire
D. l''énergie lumineuse et sonore

---

**Q8.** Le symbole chimique du chlore est :

A. Cl
B. Ch
C. C
D. Cr

---

**Q9.** Un circuit électrique fermé permet :

A. le passage du courant
B. l''arrêt du courant
C. la coupure du courant
D. aucun courant

---

**Q10.** Le symbole chimique du potassium est :

A. K
B. P
C. Po
D. Ka

---

**Q11.** La masse se mesure avec :

A. une balance
B. un thermomètre
C. un baromètre
D. un voltmètre

---

**Q12.** Le symbole chimique du zinc est :

A. Zn
B. Z
C. Zi
D. Zr

---

**Q13.** L''unité de la masse en SI est :

A. le kilogramme
B. le gramme
C. la tonne
D. le newton

---

**Q14.** Le symbole chimique du cuivre est :

A. Cu
B. Co
C. C
D. Cp

---

**Q15.** La solidification est le passage de :

A. liquide à solide
B. solide à liquide
C. gaz à liquide
D. liquide à gaz

---

**Q16.** Le symbole chimique de l''aluminium est :

A. Al
B. A
C. Am
D. Ar

---

**Q17.** L''ampèremètre se branche :

A. en série
B. en dérivation
C. en parallèle
D. n''importe comment

---

**Q18.** Le voltmètre se branche :

A. en dérivation
B. en série
C. en parallèle
D. n''importe comment

---

**Q19.** Le symbole chimique du plomb est :

A. Pb
B. Pl
C. P
D. Po

---

**Q20.** La lumière se propage :

A. en ligne droite
B. en courbe
C. en zigzag
D. en cercle

---

## CORRIGÉ

1. H
2. ajouter de l''eau à une solution
3. Ca
4. deux pôles
5. solide à gaz
6. Na
7. l''énergie cinétique et potentielle
8. Cl
9. le passage du courant
10. K
11. une balance
12. Zn
13. le kilogramme
14. Cu
15. liquide à solide
16. Al
17. en série
18. en dérivation
19. Pb
20. en ligne droite
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Physique-Chimie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Physique-Chimie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f5757116-6764-e00d-18f4-0b1cd57dd762', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC Physique-Chimie — Sujet structuré — Série 4',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC PHYSIQUE-CHIMIE SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Physique-Chimie
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: OPTIQUE ET THERMIQUE

**Q1.** Un rayon lumineux arrive sur un miroir plan avec un angle d''incidence de 30°. Calculer l''angle de réflexion.

**Q1.** Convertir 25°C en kelvins.

**Q1.** Calculer la quantité de chaleur pour élever 2 kg d''eau de 20°C à 60°C (c = 4 180 J/kg·K).

**Q1.** Expliquer la différence entre la fusion et la vaporisation.

**Q1.** Un objet est placé devant une lentille convergente. Décrire l''image obtenue selon la position de l''objet.

## SECTION 2: ÉLECTRICITÉ

**Q2.** Un circuit comporte une pile de 4,5 V et une résistance de 15 Ω. Calculer l''intensité du courant.

**Q2.** Une lampe de puissance 60 W fonctionne sous 220 V. Calculer l''intensité du courant qui la traverse.

**Q2.** Deux résistances de 10 Ω et 20 Ω sont montées en série. Calculer la résistance équivalente.

**Q2.** Calculer l''énergie consommée par un appareil de 2 000 W fonctionnant pendant 3 heures (en kWh).

**Q2.** Un ampèremètre indique 0,5 A dans un circuit. Combien de coulombs traversent le circuit en 2 minutes ?

## SECTION 3: MÉCANIQUE

**Q3.** Calculer le poids d''un corps de masse 25 kg (g = 10 N/kg).

**Q3.** Un objet de masse 2 kg se déplace à 3 m/s. Calculer son énergie cinétique.

**Q3.** Calculer l''énergie potentielle d''un objet de 5 kg placé à 4 m de hauteur (g = 10 N/kg).

**Q3.** Une force de 20 N est appliquée sur une surface de 4 m². Calculer la pression.

**Q3.** Un mobile parcourt 120 m en 15 s. Calculer sa vitesse moyenne.

## SECTION 4: CHIMIE

**Q4.** Équilibrer l''équation : $H_2 + O_2 \to H_2O$.

**Q4.** Calculer la masse molaire de l''eau (H₂O) : H = 1 g/mol, O = 16 g/mol.

**Q4.** Une solution a un pH de 3. Est-elle acide, basique ou neutre ? Justifier.

**Q4.** Quelle est la formule chimique du dioxyde de carbone ? Donner sa composition.

**Q4.** Distinguer un corps pur d''un mélange en donnant un exemple de chacun.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Physique-Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Physique-Chimie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd3cfc2a9-f83b-7ffe-a0e1-b46a8b3a6b74', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC Physique-Chimie — Sujet structuré — Série 5',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC PHYSIQUE-CHIMIE SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Physique-Chimie
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ÉLECTRICITÉ

**Q1.** Un circuit comporte une pile de 4,5 V et une résistance de 15 Ω. Calculer l''intensité du courant.

**Q1.** Une lampe de puissance 60 W fonctionne sous 220 V. Calculer l''intensité du courant qui la traverse.

**Q1.** Deux résistances de 10 Ω et 20 Ω sont montées en série. Calculer la résistance équivalente.

**Q1.** Calculer l''énergie consommée par un appareil de 2 000 W fonctionnant pendant 3 heures (en kWh).

**Q1.** Un ampèremètre indique 0,5 A dans un circuit. Combien de coulombs traversent le circuit en 2 minutes ?

## SECTION 2: MÉCANIQUE

**Q2.** Calculer le poids d''un corps de masse 25 kg (g = 10 N/kg).

**Q2.** Un objet de masse 2 kg se déplace à 3 m/s. Calculer son énergie cinétique.

**Q2.** Calculer l''énergie potentielle d''un objet de 5 kg placé à 4 m de hauteur (g = 10 N/kg).

**Q2.** Une force de 20 N est appliquée sur une surface de 4 m². Calculer la pression.

**Q2.** Un mobile parcourt 120 m en 15 s. Calculer sa vitesse moyenne.

## SECTION 3: CHIMIE

**Q3.** Équilibrer l''équation : $H_2 + O_2 \to H_2O$.

**Q3.** Calculer la masse molaire de l''eau (H₂O) : H = 1 g/mol, O = 16 g/mol.

**Q3.** Une solution a un pH de 3. Est-elle acide, basique ou neutre ? Justifier.

**Q3.** Quelle est la formule chimique du dioxyde de carbone ? Donner sa composition.

**Q3.** Distinguer un corps pur d''un mélange en donnant un exemple de chacun.

## SECTION 4: OPTIQUE ET THERMIQUE

**Q4.** Un rayon lumineux arrive sur un miroir plan avec un angle d''incidence de 30°. Calculer l''angle de réflexion.

**Q4.** Convertir 25°C en kelvins.

**Q4.** Calculer la quantité de chaleur pour élever 2 kg d''eau de 20°C à 60°C (c = 4 180 J/kg·K).

**Q4.** Expliquer la différence entre la fusion et la vaporisation.

**Q4.** Un objet est placé devant une lentille convergente. Décrire l''image obtenue selon la position de l''objet.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Physique-Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Physique-Chimie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e0c25c42-3c0b-6918-91ca-a94e8dfa880d', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC Physique-Chimie — Sujet structuré — Série 6',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC PHYSIQUE-CHIMIE SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Physique-Chimie
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: MÉCANIQUE

**Q1.** Calculer le poids d''un corps de masse 25 kg (g = 10 N/kg).

**Q1.** Un objet de masse 2 kg se déplace à 3 m/s. Calculer son énergie cinétique.

**Q1.** Calculer l''énergie potentielle d''un objet de 5 kg placé à 4 m de hauteur (g = 10 N/kg).

**Q1.** Une force de 20 N est appliquée sur une surface de 4 m². Calculer la pression.

**Q1.** Un mobile parcourt 120 m en 15 s. Calculer sa vitesse moyenne.

## SECTION 2: CHIMIE

**Q2.** Équilibrer l''équation : $H_2 + O_2 \to H_2O$.

**Q2.** Calculer la masse molaire de l''eau (H₂O) : H = 1 g/mol, O = 16 g/mol.

**Q2.** Une solution a un pH de 3. Est-elle acide, basique ou neutre ? Justifier.

**Q2.** Quelle est la formule chimique du dioxyde de carbone ? Donner sa composition.

**Q2.** Distinguer un corps pur d''un mélange en donnant un exemple de chacun.

## SECTION 3: OPTIQUE ET THERMIQUE

**Q3.** Un rayon lumineux arrive sur un miroir plan avec un angle d''incidence de 30°. Calculer l''angle de réflexion.

**Q3.** Convertir 25°C en kelvins.

**Q3.** Calculer la quantité de chaleur pour élever 2 kg d''eau de 20°C à 60°C (c = 4 180 J/kg·K).

**Q3.** Expliquer la différence entre la fusion et la vaporisation.

**Q3.** Un objet est placé devant une lentille convergente. Décrire l''image obtenue selon la position de l''objet.

## SECTION 4: ÉLECTRICITÉ

**Q4.** Un circuit comporte une pile de 4,5 V et une résistance de 15 Ω. Calculer l''intensité du courant.

**Q4.** Une lampe de puissance 60 W fonctionne sous 220 V. Calculer l''intensité du courant qui la traverse.

**Q4.** Deux résistances de 10 Ω et 20 Ω sont montées en série. Calculer la résistance équivalente.

**Q4.** Calculer l''énergie consommée par un appareil de 2 000 W fonctionnant pendant 3 heures (en kWh).

**Q4.** Un ampèremètre indique 0,5 A dans un circuit. Combien de coulombs traversent le circuit en 2 minutes ?
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Physique-Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Physique-Chimie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e1c59ae8-0d34-8e9a-dd2a-7e35fdd1b7cf', 'fr-bepc-pc-electricite-chimie', 'Physique-Chimie', 'BEPC Physique-Chimie — Sujet structuré — Série 7',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC PHYSIQUE-CHIMIE SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Physique-Chimie
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: CHIMIE

**Q1.** Équilibrer l''équation : $H_2 + O_2 \to H_2O$.

**Q1.** Calculer la masse molaire de l''eau (H₂O) : H = 1 g/mol, O = 16 g/mol.

**Q1.** Une solution a un pH de 3. Est-elle acide, basique ou neutre ? Justifier.

**Q1.** Quelle est la formule chimique du dioxyde de carbone ? Donner sa composition.

**Q1.** Distinguer un corps pur d''un mélange en donnant un exemple de chacun.

## SECTION 2: OPTIQUE ET THERMIQUE

**Q2.** Un rayon lumineux arrive sur un miroir plan avec un angle d''incidence de 30°. Calculer l''angle de réflexion.

**Q2.** Convertir 25°C en kelvins.

**Q2.** Calculer la quantité de chaleur pour élever 2 kg d''eau de 20°C à 60°C (c = 4 180 J/kg·K).

**Q2.** Expliquer la différence entre la fusion et la vaporisation.

**Q2.** Un objet est placé devant une lentille convergente. Décrire l''image obtenue selon la position de l''objet.

## SECTION 3: ÉLECTRICITÉ

**Q3.** Un circuit comporte une pile de 4,5 V et une résistance de 15 Ω. Calculer l''intensité du courant.

**Q3.** Une lampe de puissance 60 W fonctionne sous 220 V. Calculer l''intensité du courant qui la traverse.

**Q3.** Deux résistances de 10 Ω et 20 Ω sont montées en série. Calculer la résistance équivalente.

**Q3.** Calculer l''énergie consommée par un appareil de 2 000 W fonctionnant pendant 3 heures (en kWh).

**Q3.** Un ampèremètre indique 0,5 A dans un circuit. Combien de coulombs traversent le circuit en 2 minutes ?

## SECTION 4: MÉCANIQUE

**Q4.** Calculer le poids d''un corps de masse 25 kg (g = 10 N/kg).

**Q4.** Un objet de masse 2 kg se déplace à 3 m/s. Calculer son énergie cinétique.

**Q4.** Calculer l''énergie potentielle d''un objet de 5 kg placé à 4 m de hauteur (g = 10 N/kg).

**Q4.** Une force de 20 N est appliquée sur une surface de 4 m². Calculer la pression.

**Q4.** Un mobile parcourt 120 m en 15 s. Calculer sa vitesse moyenne.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Physique-Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9f839507-bd15-0a70-c6e2-b58a8eb66f03', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 1',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Sciences de la Vie et de la Terre
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''unité de base du vivant est :

A. la cellule
B. l''atome
C. la molécule
D. l''organe

---

**Q2.** La photosynthèse se déroule dans :

A. les chloroplastes
B. les mitochondries
C. le noyau
D. la membrane

---

**Q3.** Le dioxygène est produit par :

A. la photosynthèse
B. la respiration
C. la digestion
D. la fermentation

---

**Q4.** L''organe de la respiration chez l''homme est :

A. le poumon
B. le cœur
C. le foie
D. le rein

---

**Q5.** Le sang est pompé par :

A. le cœur
B. le poumon
C. le cerveau
D. le foie

---

**Q6.** L''unité de filtration du rein est :

A. le néphron
B. le neurone
C. l''alvéole
D. le glomérule

---

**Q7.** La cellule nerveuse s''appelle :

A. le neurone
B. le néphron
C. le globule
D. le gamète

---

**Q8.** L''ADN se trouve dans :

A. le noyau
B. le cytoplasme
C. la membrane
D. la paroi

---

**Q9.** La reproduction sexuée fait intervenir :

A. deux gamètes
B. un seul gamète
C. aucun gamète
D. des spores

---

**Q10.** Le gamète mâle chez l''homme est :

A. le spermatozoïde
B. l''ovule
C. le globule rouge
D. le neurone

---

**Q11.** Le gamète femelle chez la femme est :

A. l''ovule
B. le spermatozoïde
C. le globule blanc
D. le neurone

---

**Q12.** L''écosystème est constitué de :

A. le biotope et la biocénose
B. uniquement des plantes
C. uniquement des animaux
D. uniquement de l''eau

---

**Q13.** Le prédateur est un être qui :

A. chasse et se nourrit d''autres êtres
B. est chassé
C. se nourrit de plantes
D. décompose la matière

---

**Q14.** La chaîne alimentaire commence par :

A. un producteur
B. un consommateur
C. un décomposeur
D. un prédateur

---

**Q15.** Le décomposeur transforme la matière organique en :

A. matière minérale
B. matière organique
C. énergie
D. gaz carbonique

---

**Q16.** La fécondation est la fusion de :

A. deux gamètes
B. deux cellules somatiques
C. deux neurones
D. deux globules

---

**Q17.** Le groupe sanguin universel donneur est :

A. O
B. A
C. B
D. AB

---

**Q18.** Le groupe sanguin universel receveur est :

A. AB
B. O
C. A
D. B

---

**Q19.** La vaccination consiste à :

A. injecter un antigène atténué
B. injecter des anticorps
C. prendre des antibiotiques
D. faire une transfusion

---

**Q20.** L''antibiotique agit contre :

A. les bactéries
B. les virus
C. les parasites
D. les champignons

---

## CORRIGÉ

1. la cellule
2. les chloroplastes
3. la photosynthèse
4. le poumon
5. le cœur
6. le néphron
7. le neurone
8. le noyau
9. deux gamètes
10. le spermatozoïde
11. l''ovule
12. le biotope et la biocénose
13. chasse et se nourrit d''autres êtres
14. un producteur
15. matière minérale
16. deux gamètes
17. O
18. AB
19. injecter un antigène atténué
20. les bactéries
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f758d21f-c9bc-30d6-9622-bea7e2a2eb25', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 2',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Sciences de la Vie et de la Terre
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le virus du SIDA s''appelle :

A. le VIH
B. le VHB
C. le VHC
D. le VPH

---

**Q2.** La digestion commence dans :

A. la bouche
B. l''estomac
C. l''intestin
D. l''œsophage

---

**Q3.** L''enzyme digestive de la salive est :

A. l''amylase
B. la pepsine
C. la lipase
D. la trypsine

---

**Q4.** La bile est produite par :

A. le foie
B. l''estomac
C. le pancréas
D. la vésicule

---

**Q5.** L''insuline est produite par :

A. le pancréas
B. le foie
C. le rein
D. la thyroïde

---

**Q6.** Le diabète est dû à un problème de :

A. l''insuline
B. l''adrénaline
C. la thyroxine
D. l''œstrogène

---

**Q7.** La cellule végétale possède en plus de la cellule animale :

A. une paroi et des chloroplastes
B. un noyau
C. une membrane
D. des mitochondries

---

**Q8.** La mitose permet :

A. la division cellulaire
B. la formation des gamètes
C. la respiration
D. la digestion

---

**Q9.** La méiose permet :

A. la formation des gamètes
B. la division cellulaire
C. la croissance
D. la régénération

---

**Q10.** Le chromosome est constitué de :

A. ADN et protéines
B. ARN et lipides
C. glucides et protéines
D. eau et sels minéraux

---

**Q11.** Le nombre de chromosomes chez l''homme est :

A. 46
B. 44
C. 48
D. 23

---

**Q12.** Le caryotype humain normal possède :

A. 23 paires de chromosomes
B. 46 paires
C. 22 paires
D. 24 paires

---

**Q13.** La transpiration se fait par :

A. la peau
B. le rein
C. le poumon
D. le foie

---

**Q14.** L''homéostasie est :

A. le maintien de l''équilibre interne
B. la croissance
C. la reproduction
D. la digestion

---

**Q15.** Le réflexe est :

A. une réponse rapide et involontaire
B. une réponse lente
C. une action volontaire
D. une pensée

---

**Q16.** L''arc réflexe passe par :

A. la moelle épinière
B. le cerveau
C. le cervelet
D. le bulbe

---

**Q17.** Le cervelet contrôle :

A. l''équilibre
B. la mémoire
C. la respiration
D. la digestion

---

**Q18.** Le bulbe rachidien contrôle :

A. la respiration
B. la mémoire
C. l''équilibre
D. la vision

---

**Q19.** La géologie étudie :

A. la Terre
B. les étoiles
C. les plantes
D. les animaux

---

**Q20.** Les roches magmatiques proviennent :

A. du refroidissement du magma
B. de la sédimentation
C. du métamorphisme
D. de l''érosion

---

## CORRIGÉ

1. le VIH
2. la bouche
3. l''amylase
4. le foie
5. le pancréas
6. l''insuline
7. une paroi et des chloroplastes
8. la division cellulaire
9. la formation des gamètes
10. ADN et protéines
11. 46
12. 23 paires de chromosomes
13. la peau
14. le maintien de l''équilibre interne
15. une réponse rapide et involontaire
16. la moelle épinière
17. l''équilibre
18. la respiration
19. la Terre
20. du refroidissement du magma
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5b16a47d-1bb2-4fd7-e36f-0cebf27f03cb', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 3',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Sciences de la Vie et de la Terre
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le basalte est une roche :

A. volcanique
B. sédimentaire
C. métamorphique
D. organique

---

**Q2.** Le granite est une roche :

A. plutonique
B. volcanique
C. sédimentaire
D. métamorphique

---

**Q3.** Le calcaire est une roche :

A. sédimentaire
B. volcanique
C. plutonique
D. métamorphique

---

**Q4.** Le fossile est :

A. un reste d''être vivant conservé
B. une roche
C. un minéral
D. un volcan

---

**Q5.** La tectonique des plaques explique :

A. les séismes et volcans
B. la photosynthèse
C. la digestion
D. la respiration

---

**Q6.** Le séisme est dû à :

A. la rupture des roches en profondeur
B. la pluie
C. le vent
D. la chaleur

---

**Q7.** L''échelle de Richter mesure :

A. la magnitude d''un séisme
B. la température
C. la pression
D. l''altitude

---

**Q8.** Le volcanisme est lié à :

A. la remontée du magma
B. la pluie
C. le vent
D. la neige

---

**Q9.** L''érosion est :

A. l''usure des roches
B. la formation des roches
C. la fusion des roches
D. la cristallisation

---

**Q10.** Le sol est formé par :

A. l''altération des roches
B. la photosynthèse
C. la respiration
D. la transpiration

---

**Q11.** L''humus est :

A. de la matière organique décomposée
B. une roche
C. un minéral
D. de l''eau

---

**Q12.** La couche d''ozone protège contre :

A. les UV
B. les rayons X
C. les infrarouges
D. la lumière visible

---

**Q13.** L''effet de serre est dû à :

A. l''accumulation de CO₂
B. la couche d''ozone
C. les UV
D. la pluie

---

**Q14.** Le réchauffement climatique est causé par :

A. l''augmentation des gaz à effet de serre
B. la diminution de l''oxygène
C. l''augmentation de l''azote
D. la baisse du CO₂

---

**Q15.** La biodiversité est :

A. la variété des êtres vivants
B. la quantité d''eau
C. la température
D. la pression

---

**Q16.** L''espèce menacée est :

A. une espèce en danger de disparition
B. une espèce abondante
C. une espèce nouvelle
D. une espèce domestique

---

**Q17.** La contraception permet :

A. d''éviter une grossesse
B. de favoriser la grossesse
C. de guérir une maladie
D. de stimuler la croissance

---

**Q18.** Le préservatif protège contre :

A. les IST et le VIH
B. la grossesse uniquement
C. le diabète
D. le paludisme

---

**Q19.** Le paludisme est transmis par :

A. le moustique
B. la mouche
C. le rat
D. le pou

---

**Q20.** Le plasmodium est :

A. le parasite du paludisme
B. un virus
C. une bactérie
D. un champignon

---

## CORRIGÉ

1. volcanique
2. plutonique
3. sédimentaire
4. un reste d''être vivant conservé
5. les séismes et volcans
6. la rupture des roches en profondeur
7. la magnitude d''un séisme
8. la remontée du magma
9. l''usure des roches
10. l''altération des roches
11. de la matière organique décomposée
12. les UV
13. l''accumulation de CO₂
14. l''augmentation des gaz à effet de serre
15. la variété des êtres vivants
16. une espèce en danger de disparition
17. d''éviter une grossesse
18. les IST et le VIH
19. le moustique
20. le parasite du paludisme
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Sciences de la Vie et de la Terre — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ceff7090-fd57-e982-c027-eb2d3a85ae0f', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC Sciences de la Vie et de la Terre — Sujet structuré — Série 4',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Sciences de la Vie et de la Terre
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: GÉOLOGIE

**Q1.** Distinguer les trois types de roches et donner un exemple de chacun.

**Q1.** Expliquer la formation d''un volcan.

**Q1.** Décrire le mécanisme d''un séisme et citer ses effets.

**Q1.** Expliquer la théorie de la tectonique des plaques.

**Q1.** Décrire le processus de formation des fossiles et leur intérêt.

## SECTION 2: BIOLOGIE CELLULAIRE ET GÉNÉTIQUE

**Q2.** Décrire la structure d''une cellule végétale et d''une cellule animale en précisant leurs différences.

**Q2.** Expliquer le rôle de la photosynthèse et citer les conditions nécessaires.

**Q2.** Décrire le mécanisme de la fécondation chez l''homme.

**Q2.** Expliquer la différence entre mitose et méiose.

**Q2.** Un homme de groupe sanguin A et une femme de groupe O : quels groupes sanguins peuvent avoir leurs enfants ?

## SECTION 3: PHYSIOLOGIE HUMAINE

**Q3.** Décrire le trajet du sang dans la circulation sanguine.

**Q3.** Expliquer le mécanisme de la respiration chez l''homme.

**Q3.** Décrire le rôle du rein dans l''élimination des déchets.

**Q3.** Expliquer le fonctionnement du système nerveux lors d''un réflexe.

**Q3.** Décrire le rôle des hormones dans la régulation de la glycémie.

## SECTION 4: ÉCOLOGIE ET ENVIRONNEMENT

**Q4.** Définir un écosystème et donner ses composantes.

**Q4.** Construire une chaîne alimentaire à partir de : herbe, lion, gazelle, décomposeurs.

**Q4.** Expliquer les conséquences de la déforestation sur l''environnement.

**Q4.** Décrire le cycle de l''eau.

**Q4.** Expliquer l''importance de la biodiversité et les menaces qui pèsent sur elle.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Sciences de la Vie et de la Terre — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e00b933a-4c57-754a-812f-47edc93abfb9', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC Sciences de la Vie et de la Terre — Sujet structuré — Série 5',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Sciences de la Vie et de la Terre
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: BIOLOGIE CELLULAIRE ET GÉNÉTIQUE

**Q1.** Décrire la structure d''une cellule végétale et d''une cellule animale en précisant leurs différences.

**Q1.** Expliquer le rôle de la photosynthèse et citer les conditions nécessaires.

**Q1.** Décrire le mécanisme de la fécondation chez l''homme.

**Q1.** Expliquer la différence entre mitose et méiose.

**Q1.** Un homme de groupe sanguin A et une femme de groupe O : quels groupes sanguins peuvent avoir leurs enfants ?

## SECTION 2: PHYSIOLOGIE HUMAINE

**Q2.** Décrire le trajet du sang dans la circulation sanguine.

**Q2.** Expliquer le mécanisme de la respiration chez l''homme.

**Q2.** Décrire le rôle du rein dans l''élimination des déchets.

**Q2.** Expliquer le fonctionnement du système nerveux lors d''un réflexe.

**Q2.** Décrire le rôle des hormones dans la régulation de la glycémie.

## SECTION 3: ÉCOLOGIE ET ENVIRONNEMENT

**Q3.** Définir un écosystème et donner ses composantes.

**Q3.** Construire une chaîne alimentaire à partir de : herbe, lion, gazelle, décomposeurs.

**Q3.** Expliquer les conséquences de la déforestation sur l''environnement.

**Q3.** Décrire le cycle de l''eau.

**Q3.** Expliquer l''importance de la biodiversité et les menaces qui pèsent sur elle.

## SECTION 4: GÉOLOGIE

**Q4.** Distinguer les trois types de roches et donner un exemple de chacun.

**Q4.** Expliquer la formation d''un volcan.

**Q4.** Décrire le mécanisme d''un séisme et citer ses effets.

**Q4.** Expliquer la théorie de la tectonique des plaques.

**Q4.** Décrire le processus de formation des fossiles et leur intérêt.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Sciences de la Vie et de la Terre — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b5274931-0a1d-aa3e-2315-3b569ad301a0', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC Sciences de la Vie et de la Terre — Sujet structuré — Série 6',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Sciences de la Vie et de la Terre
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: PHYSIOLOGIE HUMAINE

**Q1.** Décrire le trajet du sang dans la circulation sanguine.

**Q1.** Expliquer le mécanisme de la respiration chez l''homme.

**Q1.** Décrire le rôle du rein dans l''élimination des déchets.

**Q1.** Expliquer le fonctionnement du système nerveux lors d''un réflexe.

**Q1.** Décrire le rôle des hormones dans la régulation de la glycémie.

## SECTION 2: ÉCOLOGIE ET ENVIRONNEMENT

**Q2.** Définir un écosystème et donner ses composantes.

**Q2.** Construire une chaîne alimentaire à partir de : herbe, lion, gazelle, décomposeurs.

**Q2.** Expliquer les conséquences de la déforestation sur l''environnement.

**Q2.** Décrire le cycle de l''eau.

**Q2.** Expliquer l''importance de la biodiversité et les menaces qui pèsent sur elle.

## SECTION 3: GÉOLOGIE

**Q3.** Distinguer les trois types de roches et donner un exemple de chacun.

**Q3.** Expliquer la formation d''un volcan.

**Q3.** Décrire le mécanisme d''un séisme et citer ses effets.

**Q3.** Expliquer la théorie de la tectonique des plaques.

**Q3.** Décrire le processus de formation des fossiles et leur intérêt.

## SECTION 4: BIOLOGIE CELLULAIRE ET GÉNÉTIQUE

**Q4.** Décrire la structure d''une cellule végétale et d''une cellule animale en précisant leurs différences.

**Q4.** Expliquer le rôle de la photosynthèse et citer les conditions nécessaires.

**Q4.** Décrire le mécanisme de la fécondation chez l''homme.

**Q4.** Expliquer la différence entre mitose et méiose.

**Q4.** Un homme de groupe sanguin A et une femme de groupe O : quels groupes sanguins peuvent avoir leurs enfants ?
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Sciences de la Vie et de la Terre — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '12a69021-7c1f-7d95-1d23-b6986dda0878', 'fr-bepc-svt-vivant-terre', 'Sciences de la Vie et de la Terre', 'BEPC Sciences de la Vie et de la Terre — Sujet structuré — Série 7',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC SCIENCES DE LA VIE ET DE LA TERRE SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Sciences de la Vie et de la Terre
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ÉCOLOGIE ET ENVIRONNEMENT

**Q1.** Définir un écosystème et donner ses composantes.

**Q1.** Construire une chaîne alimentaire à partir de : herbe, lion, gazelle, décomposeurs.

**Q1.** Expliquer les conséquences de la déforestation sur l''environnement.

**Q1.** Décrire le cycle de l''eau.

**Q1.** Expliquer l''importance de la biodiversité et les menaces qui pèsent sur elle.

## SECTION 2: GÉOLOGIE

**Q2.** Distinguer les trois types de roches et donner un exemple de chacun.

**Q2.** Expliquer la formation d''un volcan.

**Q2.** Décrire le mécanisme d''un séisme et citer ses effets.

**Q2.** Expliquer la théorie de la tectonique des plaques.

**Q2.** Décrire le processus de formation des fossiles et leur intérêt.

## SECTION 3: BIOLOGIE CELLULAIRE ET GÉNÉTIQUE

**Q3.** Décrire la structure d''une cellule végétale et d''une cellule animale en précisant leurs différences.

**Q3.** Expliquer le rôle de la photosynthèse et citer les conditions nécessaires.

**Q3.** Décrire le mécanisme de la fécondation chez l''homme.

**Q3.** Expliquer la différence entre mitose et méiose.

**Q3.** Un homme de groupe sanguin A et une femme de groupe O : quels groupes sanguins peuvent avoir leurs enfants ?

## SECTION 4: PHYSIOLOGIE HUMAINE

**Q4.** Décrire le trajet du sang dans la circulation sanguine.

**Q4.** Expliquer le mécanisme de la respiration chez l''homme.

**Q4.** Décrire le rôle du rein dans l''élimination des déchets.

**Q4.** Expliquer le fonctionnement du système nerveux lors d''un réflexe.

**Q4.** Décrire le rôle des hormones dans la régulation de la glycémie.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Histoire-Géographie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '677b5b9a-e86a-4481-8e43-af850e54798f', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC Histoire-Géographie — QCM (Épreuve 1) — Série 1',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Histoire-Géographie
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le Cameroun est situé en :

A. Afrique centrale
B. Afrique de l''Ouest
C. Afrique de l''Est
D. Afrique du Nord

---

**Q2.** La capitale politique du Cameroun est :

A. Yaoundé
B. Douala
C. Bafoussam
D. Garoua

---

**Q3.** La capitale économique du Cameroun est :

A. Douala
B. Yaoundé
C. Kribi
D. Buea

---

**Q4.** Le Cameroun a obtenu son indépendance en :

A. 1960
B. 1958
C. 1962
D. 1972

---

**Q5.** Le premier président du Cameroun fut :

A. Ahmadou Ahidjo
B. Paul Biya
C. Ruben Um Nyobé
D. Ernest Ouandié

---

**Q6.** Le Cameroun compte combien de régions ?

A. 10
B. 8
C. 12
D. 6

---

**Q7.** Le fleuve le plus long du Cameroun est :

A. la Sanaga
B. le Wouri
C. le Nyong
D. la Bénoué

---

**Q8.** Le mont Cameroun est :

A. un volcan
B. un fleuve
C. une ville
D. un lac

---

**Q9.** L''altitude du mont Cameroun est environ :

A. 4095 m
B. 2000 m
C. 5000 m
D. 3000 m

---

**Q10.** Le climat équatorial se caractérise par :

A. des pluies abondantes toute l''année
B. une saison sèche longue
C. des températures froides
D. peu de pluie

---

**Q11.** Le Cameroun est surnommé :

A. l''Afrique en miniature
B. le pays des mille collines
C. la perle de l''Afrique
D. le grenier de l''Afrique

---

**Q12.** La première guerre mondiale a eu lieu en :

A. 1914-1918
B. 1939-1945
C. 1870-1871
D. 1918-1920

---

**Q13.** La deuxième guerre mondiale a eu lieu en :

A. 1939-1945
B. 1914-1918
C. 1945-1950
D. 1929-1933

---

**Q14.** La Révolution française a eu lieu en :

A. 1789
B. 1776
C. 1804
D. 1815

---

**Q15.** Napoléon Bonaparte a été couronné empereur en :

A. 1804
B. 1789
C. 1815
D. 1799

---

**Q16.** La traite négrière transatlantique concernait :

A. l''Afrique et l''Amérique
B. l''Europe et l''Asie
C. l''Afrique et l''Asie
D. l''Europe et l''Amérique

---

**Q17.** La colonisation du Cameroun par l''Allemagne a commencé en :

A. 1884
B. 1916
C. 1900
D. 1870

---

**Q18.** Après la Première Guerre mondiale, le Cameroun fut partagé entre :

A. la France et l''Angleterre
B. l''Allemagne et la France
C. la France et l''Espagne
D. l''Angleterre et l''Italie

---

**Q19.** Le Cameroun oriental était sous mandat :

A. français
B. anglais
C. allemand
D. belge

---

**Q20.** Le Cameroun occidental était sous mandat :

A. anglais
B. français
C. allemand
D. belge

---

## CORRIGÉ

1. Afrique centrale
2. Yaoundé
3. Douala
4. 1960
5. Ahmadou Ahidjo
6. 10
7. la Sanaga
8. un volcan
9. 4095 m
10. des pluies abondantes toute l''année
11. l''Afrique en miniature
12. 1914-1918
13. 1939-1945
14. 1789
15. 1804
16. l''Afrique et l''Amérique
17. 1884
18. la France et l''Angleterre
19. français
20. anglais
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Histoire-Géographie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '51ac473d-a6d8-176e-31e1-b59622712646', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC Histoire-Géographie — QCM (Épreuve 1) — Série 2',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Histoire-Géographie
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le référendum de 1961 a permis :

A. la réunification du Cameroun
B. l''indépendance
C. la colonisation
D. la partition

---

**Q2.** La République fédérale du Cameroun a été créée en :

A. 1961
B. 1960
C. 1972
D. 1984

---

**Q3.** Le Cameroun est devenu République unie en :

A. 1972
B. 1961
C. 1984
D. 1960

---

**Q4.** Le Cameroun est devenu République du Cameroun en :

A. 1984
B. 1972
C. 1961
D. 1990

---

**Q5.** Le multipartisme a été rétabli au Cameroun en :

A. 1990
B. 1980
C. 1972
D. 2000

---

**Q6.** L''ONU a été créée en :

A. 1945
B. 1919
C. 1939
D. 1950

---

**Q7.** La SDN a été créée en :

A. 1919
B. 1945
C. 1939
D. 1900

---

**Q8.** L''OUA a été créée en :

A. 1963
B. 1945
C. 1975
D. 1955

---

**Q9.** L''Union africaine a remplacé l''OUA en :

A. 2002
B. 1990
C. 1980
D. 2010

---

**Q10.** La CEMAC est une organisation :

A. économique et monétaire
B. politique
C. militaire
D. culturelle

---

**Q11.** Le siège de la CEMAC est à :

A. Yaoundé
B. Douala
C. Libreville
D. N''Djamena

---

**Q12.** La monnaie utilisée au Cameroun est :

A. le franc CFA
B. le dollar
C. l''euro
D. le naira

---

**Q13.** Le Cameroun est membre de :

A. l''ONU, l''UA et la CEMAC
B. l''OTAN
C. l''UE
D. l''ALENA

---

**Q14.** Le relief du Cameroun comprend :

A. des montagnes, plateaux et plaines
B. uniquement des plaines
C. uniquement des montagnes
D. uniquement des déserts

---

**Q15.** Le lac Tchad se situe au :

A. nord du Cameroun
B. sud du Cameroun
C. est du Cameroun
D. ouest du Cameroun

---

**Q16.** La principale culture d''exportation du Cameroun est :

A. le cacao
B. le blé
C. le riz
D. la pomme de terre

---

**Q17.** Le Cameroun est un grand producteur de :

A. café et cacao
B. pétrole et diamant
C. or et argent
D. blé et maïs

---

**Q18.** Le port le plus important du Cameroun est :

A. Douala
B. Kribi
C. Limbé
D. Garoua

---

**Q19.** Le barrage de Lagdo se trouve sur :

A. la Bénoué
B. la Sanaga
C. le Wouri
D. le Nyong

---

**Q20.** Le barrage de Song Loulou se trouve sur :

A. la Sanaga
B. la Bénoué
C. le Wouri
D. le Nyong

---

## CORRIGÉ

1. la réunification du Cameroun
2. 1961
3. 1972
4. 1984
5. 1990
6. 1945
7. 1919
8. 1963
9. 2002
10. économique et monétaire
11. Yaoundé
12. le franc CFA
13. l''ONU, l''UA et la CEMAC
14. des montagnes, plateaux et plaines
15. nord du Cameroun
16. le cacao
17. café et cacao
18. Douala
19. la Bénoué
20. la Sanaga
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Histoire-Géographie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1ce65546-a147-3fb0-d08c-d765a71604de', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC Histoire-Géographie — QCM (Épreuve 1) — Série 3',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Histoire-Géographie
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La population du Cameroun est d''environ :

A. 27 millions
B. 10 millions
C. 50 millions
D. 5 millions

---

**Q2.** La densité de population est la plus forte :

A. dans les grandes villes
B. dans le désert
C. en montagne
D. en forêt dense

---

**Q3.** L''exode rural est :

A. le départ des campagnes vers les villes
B. le départ des villes vers les campagnes
C. l''immigration
D. l''émigration

---

**Q4.** Le taux de natalité est :

A. le nombre de naissances pour 1000 habitants
B. le nombre de décès
C. la croissance
D. la densité

---

**Q5.** Le taux de mortalité est :

A. le nombre de décès pour 1000 habitants
B. le nombre de naissances
C. la densité
D. la croissance

---

**Q6.** L''accroissement naturel est :

A. natalité - mortalité
B. natalité + mortalité
C. immigration - émigration
D. densité × surface

---

**Q7.** La savane se trouve principalement :

A. au nord du Cameroun
B. au sud du Cameroun
C. à l''ouest
D. sur le littoral

---

**Q8.** La forêt dense se trouve principalement :

A. au sud du Cameroun
B. au nord
C. à l''extrême-nord
D. sur les hauts plateaux

---

**Q9.** Le climat soudano-sahélien se trouve :

A. au nord du Cameroun
B. au sud
C. à l''ouest
D. sur le littoral

---

**Q10.** Le climat équatorial se trouve :

A. au sud du Cameroun
B. au nord
C. à l''extrême-nord
D. sur les hauts plateaux

---

**Q11.** Le climat tropical humide se trouve :

A. dans le centre du Cameroun
B. au nord
C. au sud
D. sur le littoral

---

**Q12.** L''agriculture vivrière produit :

A. du manioc, maïs et banane
B. du cacao et café
C. du coton et arachide
D. du pétrole

---

**Q13.** L''agriculture de rente produit :

A. du cacao, café et coton
B. du manioc et maïs
C. de la banane plantain
D. des légumes

---

**Q14.** Le pétrole est exploité :

A. dans le bassin du Rio del Rey
B. au mont Cameroun
C. à Yaoundé
D. à Bafoussam

---

**Q15.** Le tourisme au Cameroun est favorisé par :

A. la diversité des paysages
B. le désert
C. la neige
D. les glaciers

---

**Q16.** Le parc national de Waza se trouve :

A. à l''extrême-nord
B. au sud
C. à l''ouest
D. sur le littoral

---

**Q17.** Le parc national de Korup se trouve :

A. au sud-ouest
B. au nord
C. à l''est
D. au centre

---

**Q18.** La déforestation est :

A. la destruction de la forêt
B. la plantation d''arbres
C. la protection de la forêt
D. la culture

---

**Q19.** Le développement durable vise :

A. à satisfaire les besoins sans compromettre l''avenir
B. la croissance rapide
C. l''exploitation maximale
D. la consommation

---

**Q20.** La mondialisation est :

A. l''interdépendance croissante des économies
B. l''isolement des pays
C. la guerre
D. la colonisation

---

## CORRIGÉ

1. 27 millions
2. dans les grandes villes
3. le départ des campagnes vers les villes
4. le nombre de naissances pour 1000 habitants
5. le nombre de décès pour 1000 habitants
6. natalité - mortalité
7. au nord du Cameroun
8. au sud du Cameroun
9. au nord du Cameroun
10. au sud du Cameroun
11. dans le centre du Cameroun
12. du manioc, maïs et banane
13. du cacao, café et coton
14. dans le bassin du Rio del Rey
15. la diversité des paysages
16. à l''extrême-nord
17. au sud-ouest
18. la destruction de la forêt
19. à satisfaire les besoins sans compromettre l''avenir
20. l''interdépendance croissante des économies
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Histoire-Géographie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3ca41b9f-abe0-e20c-e602-8830134898e8', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC Histoire-Géographie — Sujet structuré — Série 4',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Histoire-Géographie
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE

**Q1.** Expliquer la répartition de la population au Cameroun.

**Q1.** Décrire les principales activités économiques du Cameroun.

**Q1.** Expliquer les causes et conséquences de l''exode rural.

**Q1.** Décrire les principaux produits d''exportation du Cameroun.

**Q1.** Expliquer les problèmes de développement au Cameroun et les solutions.

## SECTION 2: HISTOIRE DU CAMEROUN

**Q2.** Raconter les étapes de la colonisation du Cameroun par l''Allemagne.

**Q2.** Expliquer le partage du Cameroun entre la France et l''Angleterre après la Première Guerre mondiale.

**Q2.** Décrire le processus d''indépendance du Cameroun en 1960.

**Q2.** Expliquer la réunification du Cameroun en 1961.

**Q2.** Décrire l''évolution politique du Cameroun de 1960 à nos jours.

## SECTION 3: HISTOIRE GÉNÉRALE

**Q3.** Expliquer les causes et conséquences de la Première Guerre mondiale.

**Q3.** Expliquer les causes et conséquences de la Deuxième Guerre mondiale.

**Q3.** Décrire la traite négrière transatlantique et ses conséquences.

**Q3.** Expliquer le processus de décolonisation de l''Afrique.

**Q3.** Décrire la création et le rôle de l''ONU.

## SECTION 4: GÉOGRAPHIE PHYSIQUE

**Q4.** Décrire le relief du Cameroun.

**Q4.** Expliquer les différents climats du Cameroun.

**Q4.** Décrire les principaux fleuves du Cameroun.

**Q4.** Expliquer la répartition de la végétation au Cameroun.

**Q4.** Décrire les ressources naturelles du Cameroun.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Histoire-Géographie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '14d6c4b6-57d3-25a7-a62a-882cbc343010', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC Histoire-Géographie — Sujet structuré — Série 5',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Histoire-Géographie
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: HISTOIRE DU CAMEROUN

**Q1.** Raconter les étapes de la colonisation du Cameroun par l''Allemagne.

**Q1.** Expliquer le partage du Cameroun entre la France et l''Angleterre après la Première Guerre mondiale.

**Q1.** Décrire le processus d''indépendance du Cameroun en 1960.

**Q1.** Expliquer la réunification du Cameroun en 1961.

**Q1.** Décrire l''évolution politique du Cameroun de 1960 à nos jours.

## SECTION 2: HISTOIRE GÉNÉRALE

**Q2.** Expliquer les causes et conséquences de la Première Guerre mondiale.

**Q2.** Expliquer les causes et conséquences de la Deuxième Guerre mondiale.

**Q2.** Décrire la traite négrière transatlantique et ses conséquences.

**Q2.** Expliquer le processus de décolonisation de l''Afrique.

**Q2.** Décrire la création et le rôle de l''ONU.

## SECTION 3: GÉOGRAPHIE PHYSIQUE

**Q3.** Décrire le relief du Cameroun.

**Q3.** Expliquer les différents climats du Cameroun.

**Q3.** Décrire les principaux fleuves du Cameroun.

**Q3.** Expliquer la répartition de la végétation au Cameroun.

**Q3.** Décrire les ressources naturelles du Cameroun.

## SECTION 4: GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE

**Q4.** Expliquer la répartition de la population au Cameroun.

**Q4.** Décrire les principales activités économiques du Cameroun.

**Q4.** Expliquer les causes et conséquences de l''exode rural.

**Q4.** Décrire les principaux produits d''exportation du Cameroun.

**Q4.** Expliquer les problèmes de développement au Cameroun et les solutions.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Histoire-Géographie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e541a62c-6704-e6ed-a237-e5e6189c3f8f', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC Histoire-Géographie — Sujet structuré — Série 6',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Histoire-Géographie
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: HISTOIRE GÉNÉRALE

**Q1.** Expliquer les causes et conséquences de la Première Guerre mondiale.

**Q1.** Expliquer les causes et conséquences de la Deuxième Guerre mondiale.

**Q1.** Décrire la traite négrière transatlantique et ses conséquences.

**Q1.** Expliquer le processus de décolonisation de l''Afrique.

**Q1.** Décrire la création et le rôle de l''ONU.

## SECTION 2: GÉOGRAPHIE PHYSIQUE

**Q2.** Décrire le relief du Cameroun.

**Q2.** Expliquer les différents climats du Cameroun.

**Q2.** Décrire les principaux fleuves du Cameroun.

**Q2.** Expliquer la répartition de la végétation au Cameroun.

**Q2.** Décrire les ressources naturelles du Cameroun.

## SECTION 3: GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE

**Q3.** Expliquer la répartition de la population au Cameroun.

**Q3.** Décrire les principales activités économiques du Cameroun.

**Q3.** Expliquer les causes et conséquences de l''exode rural.

**Q3.** Décrire les principaux produits d''exportation du Cameroun.

**Q3.** Expliquer les problèmes de développement au Cameroun et les solutions.

## SECTION 4: HISTOIRE DU CAMEROUN

**Q4.** Raconter les étapes de la colonisation du Cameroun par l''Allemagne.

**Q4.** Expliquer le partage du Cameroun entre la France et l''Angleterre après la Première Guerre mondiale.

**Q4.** Décrire le processus d''indépendance du Cameroun en 1960.

**Q4.** Expliquer la réunification du Cameroun en 1961.

**Q4.** Décrire l''évolution politique du Cameroun de 1960 à nos jours.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Histoire-Géographie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0bbbe30f-6611-64db-3e5b-fe81ba31eafd', 'fr-bepc-hg-cameroun-afrique', 'Histoire-Géographie', 'BEPC Histoire-Géographie — Sujet structuré — Série 7',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC HISTOIRE-GÉOGRAPHIE SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Histoire-Géographie
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: GÉOGRAPHIE PHYSIQUE

**Q1.** Décrire le relief du Cameroun.

**Q1.** Expliquer les différents climats du Cameroun.

**Q1.** Décrire les principaux fleuves du Cameroun.

**Q1.** Expliquer la répartition de la végétation au Cameroun.

**Q1.** Décrire les ressources naturelles du Cameroun.

## SECTION 2: GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE

**Q2.** Expliquer la répartition de la population au Cameroun.

**Q2.** Décrire les principales activités économiques du Cameroun.

**Q2.** Expliquer les causes et conséquences de l''exode rural.

**Q2.** Décrire les principaux produits d''exportation du Cameroun.

**Q2.** Expliquer les problèmes de développement au Cameroun et les solutions.

## SECTION 3: HISTOIRE DU CAMEROUN

**Q3.** Raconter les étapes de la colonisation du Cameroun par l''Allemagne.

**Q3.** Expliquer le partage du Cameroun entre la France et l''Angleterre après la Première Guerre mondiale.

**Q3.** Décrire le processus d''indépendance du Cameroun en 1960.

**Q3.** Expliquer la réunification du Cameroun en 1961.

**Q3.** Décrire l''évolution politique du Cameroun de 1960 à nos jours.

## SECTION 4: HISTOIRE GÉNÉRALE

**Q4.** Expliquer les causes et conséquences de la Première Guerre mondiale.

**Q4.** Expliquer les causes et conséquences de la Deuxième Guerre mondiale.

**Q4.** Décrire la traite négrière transatlantique et ses conséquences.

**Q4.** Expliquer le processus de décolonisation de l''Afrique.

**Q4.** Décrire la création et le rôle de l''ONU.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Français — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4084a1e5-155f-7de9-8be1-4533e6be8d5f', 'fr-bepc-francais-expression', 'Français', 'BEPC Français — QCM (Épreuve 1) — Série 1',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC FRANÇAIS P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Français
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le pluriel de « cheval » est :

A. chevaux
B. chevals
C. chevaus
D. cheveaux

---

**Q2.** Le féminin de « acteur » est :

A. actrice
B. acteuse
C. actrice
D. acteur

---

**Q3.** Le synonyme de « rapide » est :

A. vite
B. lent
C. lourd
D. haut

---

**Q4.** L''antonyme de « chaud » est :

A. froid
B. tiède
C. brûlant
D. doux

---

**Q5.** Le participe passé de « prendre » est :

A. pris
B. prendu
C. pris
D. prenu

---

**Q6.** Le verbe « aller » au futur simple (je) est :

A. j''irai
B. j''allai
C. j''aille
D. j''allais

---

**Q7.** Le verbe « être » au présent (nous) est :

A. nous sommes
B. nous étions
C. nous serons
D. nous soyons

---

**Q8.** Le verbe « avoir » au présent (ils) est :

A. ils ont
B. ils avaient
C. ils auront
D. ils aient

---

**Q9.** La phrase « Il fait beau » est :

A. une phrase déclarative
B. une phrase interrogative
C. une phrase impérative
D. une phrase exclamative

---

**Q10.** La phrase « Viens ici ! » est :

A. impérative
B. déclarative
C. interrogative
D. exclamative

---

**Q11.** Le nom commun de « beau » est :

A. la beauté
B. le beau
C. la beauté
D. le bel

---

**Q12.** Le complément d''objet direct répond à la question :

A. quoi ?
B. où ?
C. quand ?
D. comment ?

---

**Q13.** Le complément circonstanciel de lieu répond à la question :

A. où ?
B. quoi ?
C. qui ?
D. combien ?

---

**Q14.** Le sujet de la phrase « Les enfants jouent » est :

A. les enfants
B. jouent
C. les
D. enfants jouent

---

**Q15.** Le verbe « finir » au passé composé (il) est :

A. il a fini
B. il finit
C. il finira
D. il finissait

---

**Q16.** Le mot « rapidement » est :

A. un adverbe
B. un adjectif
C. un nom
D. un verbe

---

**Q17.** Le mot « joli » est :

A. un adjectif
B. un adverbe
C. un nom
D. un verbe

---

**Q18.** Le mot « table » est :

A. un nom
B. un verbe
C. un adjectif
D. un adverbe

---

**Q19.** Le mot « manger » est :

A. un verbe
B. un nom
C. un adjectif
D. un adverbe

---

**Q20.** La comparaison utilise :

A. comme, tel, semblable à
B. mais, ou, et
C. car, donc
D. ni, or

---

## CORRIGÉ

1. chevaux
2. actrice
3. vite
4. froid
5. pris
6. j''irai
7. nous sommes
8. ils ont
9. une phrase déclarative
10. impérative
11. la beauté
12. quoi ?
13. où ?
14. les enfants
15. il a fini
16. un adverbe
17. un adjectif
18. un nom
19. un verbe
20. comme, tel, semblable à
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Français QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Français — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0232b458-223d-c5bf-e681-39e0de21b027', 'fr-bepc-francais-expression', 'Français', 'BEPC Français — QCM (Épreuve 1) — Série 2',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC FRANÇAIS P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Français
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La métaphore est :

A. une comparaison sans outil
B. une exagération
C. une atténuation
D. une répétition

---

**Q2.** L''hyperbole est :

A. une exagération
B. une atténuation
C. une comparaison
D. une répétition

---

**Q3.** La litote est :

A. une atténuation
B. une exagération
C. une comparaison
D. une métaphore

---

**Q4.** La personnification donne :

A. des attributs humains à un objet
B. des attributs d''objet à un humain
C. des attributs animaux
D. aucun attribut

---

**Q5.** Le registre de langue familier utilise :

A. des expressions familières
B. un vocabulaire soutenu
C. un vocabulaire courant
D. des termes techniques

---

**Q6.** Le registre soutenu utilise :

A. un vocabulaire recherché
B. des expressions familières
C. un langage courant
D. de l''argot

---

**Q7.** Le texte narratif :

A. raconte une histoire
B. explique une idée
C. décrit un lieu
D. convainc

---

**Q8.** Le texte argumentatif :

A. convainc et persuade
B. raconte une histoire
C. décrit
D. donne des ordres

---

**Q9.** Le texte descriptif :

A. décrit un lieu, une personne
B. raconte
C. argumente
D. explique

---

**Q10.** Le texte explicatif :

A. explique un phénomène
B. raconte
C. convainc
D. décrit

---

**Q11.** Le discours direct utilise :

A. les guillemets et tirets
B. les parenthèses
C. les crochets
D. les points de suspension

---

**Q12.** Le discours indirect introduit par :

A. que, si, de
B. mais, ou
C. et, donc
D. ni, car

---

**Q13.** Le passé simple est utilisé :

A. dans le récit écrit
B. dans la conversation
C. au futur
D. au présent

---

**Q14.** L''imparfait exprime :

A. une action passée en cours
B. une action future
C. une action présente
D. une action terminée

---

**Q15.** Le futur simple exprime :

A. une action future
B. une action passée
C. une action présente
D. une action habituelle

---

**Q16.** Le conditionnel présent exprime :

A. un souhait, une hypothèse
B. une certitude
C. un ordre
D. une action passée

---

**Q17.** Le subjonctif exprime :

A. le doute, le souhait
B. la certitude
C. l''ordre
D. la réalité

---

**Q18.** Le mot « néanmoins » est :

A. un adverbe de concession
B. une conjonction
C. un nom
D. un adjectif

---

**Q19.** La proposition subordonnée relative est introduite par :

A. qui, que, dont, où
B. parce que, si
C. et, ou
D. mais, donc

---

**Q20.** La proposition subordonnée complétive est introduite par :

A. que
B. qui
C. dont
D. où

---

## CORRIGÉ

1. une comparaison sans outil
2. une exagération
3. une atténuation
4. des attributs humains à un objet
5. des expressions familières
6. un vocabulaire recherché
7. raconte une histoire
8. convainc et persuade
9. décrit un lieu, une personne
10. explique un phénomène
11. les guillemets et tirets
12. que, si, de
13. dans le récit écrit
14. une action passée en cours
15. une action future
16. un souhait, une hypothèse
17. le doute, le souhait
18. un adverbe de concession
19. qui, que, dont, où
20. que
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Français QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Français — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ddbd824d-50d0-f34f-1e86-27a0d49eb211', 'fr-bepc-francais-expression', 'Français', 'BEPC Français — QCM (Épreuve 1) — Série 3',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC FRANÇAIS P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Français
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le complément du nom est introduit par :

A. de, à, en
B. et, ou
C. mais, donc
D. ni, car

---

**Q2.** L''attribut du sujet se construit avec :

A. être, paraître, sembler
B. manger, boire
C. courir, sauter
D. voir, entendre

---

**Q3.** Le COD se place généralement :

A. après le verbe
B. avant le verbe
C. au début
D. à la fin

---

**Q4.** Le COI est introduit par :

A. à, de
B. et, ou
C. mais, donc
D. ni, car

---

**Q5.** Le mot « où » peut être :

A. un pronom relatif ou un adverbe
B. une conjonction
C. un nom
D. un adjectif

---

**Q6.** La voix passive se forme avec :

A. être + participe passé
B. avoir + participe passé
C. aller + infinitif
D. venir de + infinitif

---

**Q7.** Le participe présent se termine par :

A. -ant
B. -é
C. -ir
D. -re

---

**Q8.** Le gérondif se forme avec :

A. en + participe présent
B. avoir + participe passé
C. être + participe passé
D. aller + infinitif

---

**Q9.** Le mot « cependant » exprime :

A. l''opposition
B. la cause
C. la conséquence
D. le but

---

**Q10.** Le mot « parce que » exprime :

A. la cause
B. la conséquence
C. l''opposition
D. le but

---

**Q11.** Le mot « donc » exprime :

A. la conséquence
B. la cause
C. l''opposition
D. le but

---

**Q12.** Le mot « afin que » exprime :

A. le but
B. la cause
C. la conséquence
D. l''opposition

---

**Q13.** La ponctuation qui marque une pause courte est :

A. la virgule
B. le point
C. le point-virgule
D. les deux-points

---

**Q14.** Le point d''interrogation termine :

A. une phrase interrogative
B. une phrase déclarative
C. une phrase impérative
D. une phrase exclamative

---

**Q15.** Le point d''exclamation termine :

A. une phrase exclamative
B. une phrase interrogative
C. une phrase déclarative
D. une phrase impérative

---

**Q16.** Le mot « hélas » exprime :

A. la tristesse, le regret
B. la joie
C. la colère
D. la surprise

---

**Q17.** Le mot « bravo » exprime :

A. la félicitation
B. la tristesse
C. la colère
D. la peur

---

**Q18.** Le nom « courage » est :

A. abstrait
B. concret
C. propre
D. collectif

---

**Q19.** Le nom « table » est :

A. concret
B. abstrait
C. propre
D. collectif

---

**Q20.** Le nom « Cameroun » est :

A. un nom propre
B. un nom commun
C. un nom abstrait
D. un nom collectif

---

## CORRIGÉ

1. de, à, en
2. être, paraître, sembler
3. après le verbe
4. à, de
5. un pronom relatif ou un adverbe
6. être + participe passé
7. -ant
8. en + participe présent
9. l''opposition
10. la cause
11. la conséquence
12. le but
13. la virgule
14. une phrase interrogative
15. une phrase exclamative
16. la tristesse, le regret
17. la félicitation
18. abstrait
19. concret
20. un nom propre
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Français QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Français — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8bf7085f-009e-b765-534e-8705268d600e', 'fr-bepc-francais-expression', 'Français', 'BEPC Français — Sujet structuré — Série 4',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC FRANÇAIS SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Français
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: COMPRÉHENSION ET EXPRESSION

**Q1.** Lire un texte et répondre à des questions de compréhension.

**Q1.** Résumer un texte en respectant les règles du résumé.

**Q1.** Rédiger un paragraphe argumentatif sur un sujet donné.

**Q1.** Identifier les figures de style dans un texte poétique.

**Q1.** Rédiger une lettre administrative selon les règles de présentation.

## SECTION 2: GRAMMAIRE

**Q2.** Analyser la phrase : « Quand le soleil se lève, les oiseaux chantent dans les arbres. »

**Q2.** Identifier la nature et la fonction des mots soulignés dans une phrase donnée.

**Q2.** Transformer une phrase active en phrase passive et inversement.

**Q2.** Distinguer les propositions subordonnées relatives et complétives dans un texte.

**Q2.** Accorder correctement les participes passés dans des phrases données.

## SECTION 3: CONJUGAISON

**Q3.** Conjuguer le verbe « venir » à tous les temps simples de l''indicatif.

**Q3.** Conjuguer le verbe « prendre » au passé composé et au plus-que-parfait.

**Q3.** Mettre un texte au futur simple.

**Q3.** Conjuguer le verbe « faire » au conditionnel présent et au subjonctif présent.

**Q3.** Expliquer l''emploi du subjonctif après « il faut que ».

## SECTION 4: VOCABULAIRE ET ORTHOGRAPHE

**Q4.** Donner le sens des mots : « éphémère », « lucide », « précaire » et les employer dans des phrases.

**Q4.** Former le féminin et le pluriel de : « acteur », « cheval », « beau », « fou ».

**Q4.** Corriger les fautes d''orthographe dans un texte donné.

**Q4.** Distinguer les homophones : « a/à », « et/est », « ou/où », « son/sont ».

**Q4.** Trouver les synonymes et antonymes de : « courageux », « rapide », « riche ».
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Français — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '10df859a-8243-ff76-9ecc-06f13bbb0cf3', 'fr-bepc-francais-expression', 'Français', 'BEPC Français — Sujet structuré — Série 5',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC FRANÇAIS SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Français
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: GRAMMAIRE

**Q1.** Analyser la phrase : « Quand le soleil se lève, les oiseaux chantent dans les arbres. »

**Q1.** Identifier la nature et la fonction des mots soulignés dans une phrase donnée.

**Q1.** Transformer une phrase active en phrase passive et inversement.

**Q1.** Distinguer les propositions subordonnées relatives et complétives dans un texte.

**Q1.** Accorder correctement les participes passés dans des phrases données.

## SECTION 2: CONJUGAISON

**Q2.** Conjuguer le verbe « venir » à tous les temps simples de l''indicatif.

**Q2.** Conjuguer le verbe « prendre » au passé composé et au plus-que-parfait.

**Q2.** Mettre un texte au futur simple.

**Q2.** Conjuguer le verbe « faire » au conditionnel présent et au subjonctif présent.

**Q2.** Expliquer l''emploi du subjonctif après « il faut que ».

## SECTION 3: VOCABULAIRE ET ORTHOGRAPHE

**Q3.** Donner le sens des mots : « éphémère », « lucide », « précaire » et les employer dans des phrases.

**Q3.** Former le féminin et le pluriel de : « acteur », « cheval », « beau », « fou ».

**Q3.** Corriger les fautes d''orthographe dans un texte donné.

**Q3.** Distinguer les homophones : « a/à », « et/est », « ou/où », « son/sont ».

**Q3.** Trouver les synonymes et antonymes de : « courageux », « rapide », « riche ».

## SECTION 4: COMPRÉHENSION ET EXPRESSION

**Q4.** Lire un texte et répondre à des questions de compréhension.

**Q4.** Résumer un texte en respectant les règles du résumé.

**Q4.** Rédiger un paragraphe argumentatif sur un sujet donné.

**Q4.** Identifier les figures de style dans un texte poétique.

**Q4.** Rédiger une lettre administrative selon les règles de présentation.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Français — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9f562106-7112-d39c-53d1-970a5402f51e', 'fr-bepc-francais-expression', 'Français', 'BEPC Français — Sujet structuré — Série 6',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC FRANÇAIS SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Français
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: CONJUGAISON

**Q1.** Conjuguer le verbe « venir » à tous les temps simples de l''indicatif.

**Q1.** Conjuguer le verbe « prendre » au passé composé et au plus-que-parfait.

**Q1.** Mettre un texte au futur simple.

**Q1.** Conjuguer le verbe « faire » au conditionnel présent et au subjonctif présent.

**Q1.** Expliquer l''emploi du subjonctif après « il faut que ».

## SECTION 2: VOCABULAIRE ET ORTHOGRAPHE

**Q2.** Donner le sens des mots : « éphémère », « lucide », « précaire » et les employer dans des phrases.

**Q2.** Former le féminin et le pluriel de : « acteur », « cheval », « beau », « fou ».

**Q2.** Corriger les fautes d''orthographe dans un texte donné.

**Q2.** Distinguer les homophones : « a/à », « et/est », « ou/où », « son/sont ».

**Q2.** Trouver les synonymes et antonymes de : « courageux », « rapide », « riche ».

## SECTION 3: COMPRÉHENSION ET EXPRESSION

**Q3.** Lire un texte et répondre à des questions de compréhension.

**Q3.** Résumer un texte en respectant les règles du résumé.

**Q3.** Rédiger un paragraphe argumentatif sur un sujet donné.

**Q3.** Identifier les figures de style dans un texte poétique.

**Q3.** Rédiger une lettre administrative selon les règles de présentation.

## SECTION 4: GRAMMAIRE

**Q4.** Analyser la phrase : « Quand le soleil se lève, les oiseaux chantent dans les arbres. »

**Q4.** Identifier la nature et la fonction des mots soulignés dans une phrase donnée.

**Q4.** Transformer une phrase active en phrase passive et inversement.

**Q4.** Distinguer les propositions subordonnées relatives et complétives dans un texte.

**Q4.** Accorder correctement les participes passés dans des phrases données.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Français — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '20e917d8-2101-0529-ecda-8e85ce089e57', 'fr-bepc-francais-expression', 'Français', 'BEPC Français — Sujet structuré — Série 7',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC FRANÇAIS SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Français
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: VOCABULAIRE ET ORTHOGRAPHE

**Q1.** Donner le sens des mots : « éphémère », « lucide », « précaire » et les employer dans des phrases.

**Q1.** Former le féminin et le pluriel de : « acteur », « cheval », « beau », « fou ».

**Q1.** Corriger les fautes d''orthographe dans un texte donné.

**Q1.** Distinguer les homophones : « a/à », « et/est », « ou/où », « son/sont ».

**Q1.** Trouver les synonymes et antonymes de : « courageux », « rapide », « riche ».

## SECTION 2: COMPRÉHENSION ET EXPRESSION

**Q2.** Lire un texte et répondre à des questions de compréhension.

**Q2.** Résumer un texte en respectant les règles du résumé.

**Q2.** Rédiger un paragraphe argumentatif sur un sujet donné.

**Q2.** Identifier les figures de style dans un texte poétique.

**Q2.** Rédiger une lettre administrative selon les règles de présentation.

## SECTION 3: GRAMMAIRE

**Q3.** Analyser la phrase : « Quand le soleil se lève, les oiseaux chantent dans les arbres. »

**Q3.** Identifier la nature et la fonction des mots soulignés dans une phrase donnée.

**Q3.** Transformer une phrase active en phrase passive et inversement.

**Q3.** Distinguer les propositions subordonnées relatives et complétives dans un texte.

**Q3.** Accorder correctement les participes passés dans des phrases données.

## SECTION 4: CONJUGAISON

**Q4.** Conjuguer le verbe « venir » à tous les temps simples de l''indicatif.

**Q4.** Conjuguer le verbe « prendre » au passé composé et au plus-que-parfait.

**Q4.** Mettre un texte au futur simple.

**Q4.** Conjuguer le verbe « faire » au conditionnel présent et au subjonctif présent.

**Q4.** Expliquer l''emploi du subjonctif après « il faut que ».
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Anglais — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'aa06c477-affd-c909-351b-f094e0dcf180', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC Anglais — QCM (Épreuve 1) — Série 1',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ANGLAIS P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Anglais
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** The plural of « book » is :

A. books
B. bookes
C. book
D. bookies

---

**Q2.** The past tense of « go » is :

A. went
B. goed
C. gone
D. going

---

**Q3.** The past participle of « eat » is :

A. eaten
B. ate
C. eated
D. eating

---

**Q4.** « She ___ a student. » (present of to be)

A. is
B. are
C. am
D. be

---

**Q5.** « They ___ playing football. » (present continuous)

A. are
B. is
C. am
D. be

---

**Q6.** The opposite of « big » is :

A. small
B. large
C. huge
D. tall

---

**Q7.** The synonym of « happy » is :

A. glad
B. sad
C. angry
D. tired

---

**Q8.** « I ___ to school every day. » (present simple)

A. go
B. goes
C. going
D. gone

---

**Q9.** « He ___ his homework. » (present simple, 3rd person)

A. does
B. do
C. doing
D. done

---

**Q10.** The plural of « child » is :

A. children
B. childs
C. childes
D. childrens

---

**Q11.** The plural of « man » is :

A. men
B. mans
C. menes
D. man

---

**Q12.** The plural of « woman » is :

A. women
B. womans
C. womens
D. woman

---

**Q13.** The plural of « foot » is :

A. feet
B. foots
C. feets
D. foot

---

**Q14.** The plural of « tooth » is :

A. teeth
B. tooths
C. teeths
D. tooth

---

**Q15.** « There ___ a book on the table. »

A. is
B. are
C. am
D. be

---

**Q16.** « There ___ many students in the class. »

A. are
B. is
C. am
D. be

---

**Q17.** The comparative of « tall » is :

A. taller
B. more tall
C. tallest
D. most tall

---

**Q18.** The superlative of « tall » is :

A. tallest
B. taller
C. more tall
D. most tall

---

**Q19.** « I have ___ apple. »

A. an
B. a
C. the
D. some

---

**Q20.** « He is ___ engineer. »

A. an
B. a
C. the
D. some

---

## CORRIGÉ

1. books
2. went
3. eaten
4. is
5. are
6. small
7. glad
8. go
9. does
10. children
11. men
12. women
13. feet
14. teeth
15. is
16. are
17. taller
18. tallest
19. an
20. an
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Anglais QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Anglais — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4a13871b-3b24-19ec-1482-5cbec7583e98', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC Anglais — QCM (Épreuve 1) — Série 2',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ANGLAIS P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Anglais
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** The past tense of « see » is :

A. saw
B. seen
C. seed
D. seeing

---

**Q2.** The past tense of « come » is :

A. came
B. comed
C. come
D. coming

---

**Q3.** The past tense of « buy » is :

A. bought
B. buyed
C. boughten
D. buying

---

**Q4.** The past tense of « think » is :

A. thought
B. thinked
C. thunk
D. thinking

---

**Q5.** « She ___ to the market yesterday. »

A. went
B. goes
C. go
D. going

---

**Q6.** « We ___ watching TV now. »

A. are
B. is
C. am
D. be

---

**Q7.** The question form of « You like tea. » is :

A. Do you like tea?
B. You like tea?
C. Does you like tea?
D. Are you like tea?

---

**Q8.** The negative of « He works. » is :

A. He does not work.
B. He not works.
C. He do not work.
D. He works not.

---

**Q9.** « I ___ a letter yesterday. » (write, past)

A. wrote
B. written
C. writed
D. writing

---

**Q10.** The future of « go » is :

A. will go
B. went
C. gone
D. going

---

**Q11.** « She will ___ to school. »

A. go
B. goes
C. going
D. gone

---

**Q12.** The possessive of « John » is :

A. John''s
B. Johns
C. John
D. Johnes

---

**Q13.** « This is ___ book. » (belonging to me)

A. my
B. mine
C. me
D. I

---

**Q14.** « This book is ___. » (belonging to me)

A. mine
B. my
C. me
D. I

---

**Q15.** The pronoun for « the teacher » (he/she) is :

A. he or she
B. it
C. they
D. we

---

**Q16.** The pronoun for « the books » is :

A. they
B. it
C. he
D. she

---

**Q17.** « How ___ are you? » (age)

A. old
B. tall
C. big
D. much

---

**Q18.** « How ___ does it cost? »

A. much
B. many
C. old
D. tall

---

**Q19.** « How ___ books do you have? »

A. many
B. much
C. old
D. tall

---

**Q20.** The time « 7:30 » is :

A. half past seven
B. seven thirty
C. thirty past seven
D. half seven

---

## CORRIGÉ

1. saw
2. came
3. bought
4. thought
5. went
6. are
7. Do you like tea?
8. He does not work.
9. wrote
10. will go
11. go
12. John''s
13. my
14. mine
15. he or she
16. they
17. old
18. much
19. many
20. half past seven
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Anglais QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Anglais — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4068bf79-93aa-8efb-511b-b5be5612c135', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC Anglais — QCM (Épreuve 1) — Série 3',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ANGLAIS P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Anglais
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** The time « 8:15 » is :

A. quarter past eight
B. eight fifteen
C. quarter eight
D. fifteen eight

---

**Q2.** « Good morning » is said :

A. in the morning
B. at night
C. in the afternoon
D. in the evening

---

**Q3.** « Thank you » means :

A. merci
B. bonjour
C. au revoir
D. s''il vous plaît

---

**Q4.** « Please » means :

A. s''il vous plaît
B. merci
C. bonjour
D. excusez-moi

---

**Q5.** The color of the sky is :

A. blue
B. red
C. green
D. black

---

**Q6.** The color of blood is :

A. red
B. blue
C. green
D. yellow

---

**Q7.** « I am hungry » means :

A. j''ai faim
B. j''ai soif
C. j''ai sommeil
D. j''ai chaud

---

**Q8.** « I am thirsty » means :

A. j''ai soif
B. j''ai faim
C. j''ai sommeil
D. j''ai froid

---

**Q9.** The day after Monday is :

A. Tuesday
B. Wednesday
C. Sunday
D. Friday

---

**Q10.** The first month of the year is :

A. January
B. February
C. March
D. December

---

**Q11.** « She is taller than me » means :

A. elle est plus grande que moi
B. elle est plus petite que moi
C. elle est aussi grande que moi
D. elle est grande

---

**Q12.** The past tense of « have » is :

A. had
B. haved
C. has
D. having

---

**Q13.** « I have lived here ___ 2010. »

A. since
B. for
C. from
D. at

---

**Q14.** « I have lived here ___ five years. »

A. for
B. since
C. from
D. at

---

**Q15.** The present perfect of « finish » (I) is :

A. I have finished
B. I finished
C. I finish
D. I am finishing

---

**Q16.** « ___ you like some tea? »

A. Would
B. Do
C. Are
D. Is

---

**Q17.** The word « beautiful » is :

A. an adjective
B. a noun
C. a verb
D. an adverb

---

**Q18.** The word « quickly » is :

A. an adverb
B. an adjective
C. a noun
D. a verb

---

**Q19.** The word « happiness » is :

A. a noun
B. an adjective
C. a verb
D. an adverb

---

**Q20.** « I am going to the market » — the market is :

A. a place
B. a person
C. a thing
D. an idea

---

## CORRIGÉ

1. quarter past eight
2. in the morning
3. merci
4. s''il vous plaît
5. blue
6. red
7. j''ai faim
8. j''ai soif
9. Tuesday
10. January
11. elle est plus grande que moi
12. had
13. since
14. for
15. I have finished
16. Would
17. an adjective
18. an adverb
19. a noun
20. a place
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Anglais QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Anglais — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b2b7fab0-6b85-95e4-0149-a16d0deaaa6d', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC Anglais — Sujet structuré — Série 4',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ANGLAIS SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Anglais
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: WRITING

**Q1.** Write a short paragraph about your daily routine.

**Q1.** Write a letter to your friend describing your school.

**Q1.** Write a dialogue between two friends about their weekend plans.

**Q1.** Write a short composition about your favourite subject.

**Q1.** Write an invitation card for a birthday party.

## SECTION 2: GRAMMAR

**Q2.** Put the verbs in brackets into the correct tense: « She ___ (go) to school every day. »

**Q2.** Rewrite the sentences in the negative and interrogative forms.

**Q2.** Complete with the correct preposition: in, on, at, for, since.

**Q2.** Change the sentences from active to passive voice.

**Q2.** Use the correct form of the comparative and superlative of adjectives.

## SECTION 3: VOCABULARY

**Q3.** Give the opposite of: happy, big, hot, fast, expensive.

**Q3.** Match the words with their definitions.

**Q3.** Complete the sentences with the correct word from the list.

**Q3.** Find the synonyms of: beautiful, clever, difficult, important.

**Q3.** Use the correct word: much/many, some/any, a/an.

## SECTION 4: COMPREHENSION

**Q4.** Read the passage and answer the questions.

**Q4.** Answer true or false and justify your answers.

**Q4.** Find words in the text that mean the same as given definitions.

**Q4.** Answer questions about the main idea of the passage.

**Q4.** Complete the sentences based on the text.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Anglais Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Anglais — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '979cb84d-27ba-d670-8098-1b0567c7bb58', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC Anglais — Sujet structuré — Série 5',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ANGLAIS SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Anglais
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: GRAMMAR

**Q1.** Put the verbs in brackets into the correct tense: « She ___ (go) to school every day. »

**Q1.** Rewrite the sentences in the negative and interrogative forms.

**Q1.** Complete with the correct preposition: in, on, at, for, since.

**Q1.** Change the sentences from active to passive voice.

**Q1.** Use the correct form of the comparative and superlative of adjectives.

## SECTION 2: VOCABULARY

**Q2.** Give the opposite of: happy, big, hot, fast, expensive.

**Q2.** Match the words with their definitions.

**Q2.** Complete the sentences with the correct word from the list.

**Q2.** Find the synonyms of: beautiful, clever, difficult, important.

**Q2.** Use the correct word: much/many, some/any, a/an.

## SECTION 3: COMPREHENSION

**Q3.** Read the passage and answer the questions.

**Q3.** Answer true or false and justify your answers.

**Q3.** Find words in the text that mean the same as given definitions.

**Q3.** Answer questions about the main idea of the passage.

**Q3.** Complete the sentences based on the text.

## SECTION 4: WRITING

**Q4.** Write a short paragraph about your daily routine.

**Q4.** Write a letter to your friend describing your school.

**Q4.** Write a dialogue between two friends about their weekend plans.

**Q4.** Write a short composition about your favourite subject.

**Q4.** Write an invitation card for a birthday party.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Anglais Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Anglais — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fbd21a2c-aaa8-d677-32d9-e1a497bfbcb1', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC Anglais — Sujet structuré — Série 6',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ANGLAIS SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Anglais
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: VOCABULARY

**Q1.** Give the opposite of: happy, big, hot, fast, expensive.

**Q1.** Match the words with their definitions.

**Q1.** Complete the sentences with the correct word from the list.

**Q1.** Find the synonyms of: beautiful, clever, difficult, important.

**Q1.** Use the correct word: much/many, some/any, a/an.

## SECTION 2: COMPREHENSION

**Q2.** Read the passage and answer the questions.

**Q2.** Answer true or false and justify your answers.

**Q2.** Find words in the text that mean the same as given definitions.

**Q2.** Answer questions about the main idea of the passage.

**Q2.** Complete the sentences based on the text.

## SECTION 3: WRITING

**Q3.** Write a short paragraph about your daily routine.

**Q3.** Write a letter to your friend describing your school.

**Q3.** Write a dialogue between two friends about their weekend plans.

**Q3.** Write a short composition about your favourite subject.

**Q3.** Write an invitation card for a birthday party.

## SECTION 4: GRAMMAR

**Q4.** Put the verbs in brackets into the correct tense: « She ___ (go) to school every day. »

**Q4.** Rewrite the sentences in the negative and interrogative forms.

**Q4.** Complete with the correct preposition: in, on, at, for, since.

**Q4.** Change the sentences from active to passive voice.

**Q4.** Use the correct form of the comparative and superlative of adjectives.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Anglais Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Anglais — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0f5da525-1000-5d72-c6b6-b516dfde5078', 'fr-bepc-anglais-communication', 'Anglais', 'BEPC Anglais — Sujet structuré — Série 7',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ANGLAIS SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Anglais
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: COMPREHENSION

**Q1.** Read the passage and answer the questions.

**Q1.** Answer true or false and justify your answers.

**Q1.** Find words in the text that mean the same as given definitions.

**Q1.** Answer questions about the main idea of the passage.

**Q1.** Complete the sentences based on the text.

## SECTION 2: WRITING

**Q2.** Write a short paragraph about your daily routine.

**Q2.** Write a letter to your friend describing your school.

**Q2.** Write a dialogue between two friends about their weekend plans.

**Q2.** Write a short composition about your favourite subject.

**Q2.** Write an invitation card for a birthday party.

## SECTION 3: GRAMMAR

**Q3.** Put the verbs in brackets into the correct tense: « She ___ (go) to school every day. »

**Q3.** Rewrite the sentences in the negative and interrogative forms.

**Q3.** Complete with the correct preposition: in, on, at, for, since.

**Q3.** Change the sentences from active to passive voice.

**Q3.** Use the correct form of the comparative and superlative of adjectives.

## SECTION 4: VOCABULARY

**Q4.** Give the opposite of: happy, big, hot, fast, expensive.

**Q4.** Match the words with their definitions.

**Q4.** Complete the sentences with the correct word from the list.

**Q4.** Find the synonyms of: beautiful, clever, difficult, important.

**Q4.** Use the correct word: much/many, some/any, a/an.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Anglais Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Éducation à la Citoyenneté et à la Morale — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4fc58411-1d9b-b263-b21f-d111d3282fea', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC Éducation à la Citoyenneté et à la Morale — QCM (Épreuve 1) — Série 1',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Éducation à la Citoyenneté et à la Morale
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La capitale du Cameroun est :

A. Yaoundé
B. Douala
C. Bafoussam
D. Garoua

---

**Q2.** Le drapeau camerounais a :

A. trois couleurs
B. deux couleurs
C. quatre couleurs
D. cinq couleurs

---

**Q3.** Les couleurs du drapeau camerounais sont :

A. vert, rouge, jaune
B. bleu, blanc, rouge
C. vert, blanc, rouge
D. jaune, noir, vert

---

**Q4.** L''hymne national du Cameroun s''appelle :

A. Ô Cameroun, berceau de nos ancêtres
B. La Marseillaise
C. God Bless Africa
D. L''Internationale

---

**Q5.** La devise du Cameroun est :

A. Paix - Travail - Patrie
B. Liberté - Égalité - Fraternité
C. Unité - Progrès - Justice
D. Dieu et Patrie

---

**Q6.** Le président actuel du Cameroun est :

A. Paul Biya
B. Ahmadou Ahidjo
C. Ruben Um Nyobé
D. Ernest Ouandié

---

**Q7.** Le Cameroun est une :

A. République
B. monarchie
C. empire
D. fédération

---

**Q8.** Le pouvoir législatif est exercé par :

A. l''Assemblée nationale et le Sénat
B. le président
C. le gouvernement
D. la justice

---

**Q9.** Le pouvoir exécutif est exercé par :

A. le président et le gouvernement
B. l''Assemblée nationale
C. le Sénat
D. les tribunaux

---

**Q10.** Le pouvoir judiciaire est exercé par :

A. les tribunaux
B. le président
C. le gouvernement
D. l''Assemblée

---

**Q11.** La séparation des pouvoirs vise à :

A. éviter la concentration des pouvoirs
B. concentrer le pouvoir
C. supprimer les pouvoirs
D. créer un seul pouvoir

---

**Q12.** Le droit de vote s''acquiert au Cameroun à :

A. 18 ans
B. 16 ans
C. 21 ans
D. 20 ans

---

**Q13.** Le suffrage universel signifie :

A. tous les citoyens votent
B. seuls les riches votent
C. seuls les hommes votent
D. seuls les instruits votent

---

**Q14.** Le vote est :

A. un droit et un devoir
B. un privilège
C. une obligation
D. un choix

---

**Q15.** La démocratie est :

A. le gouvernement du peuple par le peuple
B. le gouvernement d''un seul
C. le gouvernement des riches
D. le gouvernement des militaires

---

**Q16.** Les droits de l''homme sont :

A. les droits fondamentaux de chaque personne
B. des privilèges
C. des obligations
D. des interdictions

---

**Q17.** La Déclaration universelle des droits de l''homme a été adoptée en :

A. 1948
B. 1789
C. 1960
D. 1919

---

**Q18.** Le droit à l''éducation est :

A. un droit fondamental
B. un privilège
C. une option
D. une interdiction

---

**Q19.** Le droit à la santé est :

A. un droit fondamental
B. un privilège
C. une option
D. une interdiction

---

**Q20.** Le devoir du citoyen est :

A. de respecter les lois
B. de ne rien faire
C. de s''enrichir
D. de fuir

---

## CORRIGÉ

1. Yaoundé
2. trois couleurs
3. vert, rouge, jaune
4. Ô Cameroun, berceau de nos ancêtres
5. Paix - Travail - Patrie
6. Paul Biya
7. République
8. l''Assemblée nationale et le Sénat
9. le président et le gouvernement
10. les tribunaux
11. éviter la concentration des pouvoirs
12. 18 ans
13. tous les citoyens votent
14. un droit et un devoir
15. le gouvernement du peuple par le peuple
16. les droits fondamentaux de chaque personne
17. 1948
18. un droit fondamental
19. un droit fondamental
20. de respecter les lois
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Éducation à la Citoyenneté et à la Morale QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Éducation à la Citoyenneté et à la Morale — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'def660cc-75aa-4a35-d5de-d766f47c8510', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC Éducation à la Citoyenneté et à la Morale — QCM (Épreuve 1) — Série 2',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Éducation à la Citoyenneté et à la Morale
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Payer ses impôts est :

A. un devoir civique
B. un choix
C. une option
D. une interdiction

---

**Q2.** Le service national est :

A. un devoir civique
B. un choix
C. une option
D. une interdiction

---

**Q3.** La corruption est :

A. un acte illégal
B. un acte légal
C. un devoir
D. un droit

---

**Q4.** La lutte contre la corruption est :

A. un devoir de chaque citoyen
B. un choix
C. une option
D. une interdiction

---

**Q5.** L''égalité entre hommes et femmes est :

A. un droit fondamental
B. un privilège
C. une option
D. une interdiction

---

**Q6.** La tolérance signifie :

A. accepter les différences
B. rejeter les autres
C. se moquer
D. ignorer

---

**Q7.** Le respect des autres est :

A. une valeur citoyenne
B. un choix
C. une option
D. une interdiction

---

**Q8.** La solidarité signifie :

A. s''entraider
B. s''isoler
C. se concurrencer
D. s''ignorer

---

**Q9.** La paix est :

A. l''absence de conflit et la sécurité
B. la guerre
C. la violence
D. le chaos

---

**Q10.** Le dialogue est :

A. un moyen de résoudre les conflits
B. une source de conflit
C. une violence
D. une fuite

---

**Q11.** La violence est :

A. interdite et condamnée
B. autorisée
C. un droit
D. un devoir

---

**Q12.** Le harcèlement scolaire est :

A. interdit
B. autorisé
C. un droit
D. un devoir

---

**Q13.** La protection de l''environnement est :

A. un devoir de chaque citoyen
B. un choix
C. une option
D. une interdiction

---

**Q14.** Le tri des déchets est :

A. un geste écologique
B. un choix
C. une option
D. une interdiction

---

**Q15.** L''économie d''eau est :

A. un geste écologique
B. un choix
C. une option
D. une interdiction

---

**Q16.** La Constitution est :

A. la loi fondamentale d''un pays
B. une loi ordinaire
C. un décret
D. un arrêté

---

**Q17.** La Constitution camerounaise actuelle date de :

A. 1996
B. 1960
C. 1972
D. 1984

---

**Q18.** Le Cameroun est membre de :

A. l''ONU, l''UA et la CEMAC
B. l''OTAN
C. l''UE
D. l''ALENA

---

**Q19.** L''ONU a pour but :

A. de maintenir la paix dans le monde
B. de faire la guerre
C. de coloniser
D. de diviser

---

**Q20.** L''UNESCO s''occupe de :

A. l''éducation, la science et la culture
B. la guerre
C. l''économie
D. la santé

---

## CORRIGÉ

1. un devoir civique
2. un devoir civique
3. un acte illégal
4. un devoir de chaque citoyen
5. un droit fondamental
6. accepter les différences
7. une valeur citoyenne
8. s''entraider
9. l''absence de conflit et la sécurité
10. un moyen de résoudre les conflits
11. interdite et condamnée
12. interdit
13. un devoir de chaque citoyen
14. un geste écologique
15. un geste écologique
16. la loi fondamentale d''un pays
17. 1996
18. l''ONU, l''UA et la CEMAC
19. de maintenir la paix dans le monde
20. l''éducation, la science et la culture
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Éducation à la Citoyenneté et à la Morale QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Éducation à la Citoyenneté et à la Morale — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '33f59eb5-e1f7-9c1a-102e-e8a6f5aad739', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC Éducation à la Citoyenneté et à la Morale — QCM (Épreuve 1) — Série 3',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Éducation à la Citoyenneté et à la Morale
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''OMS s''occupe de :

A. la santé
B. l''éducation
C. la culture
D. l''économie

---

**Q2.** La citoyenneté mondiale signifie :

A. se sentir responsable du monde
B. être citoyen d''un seul pays
C. ne pas avoir de pays
D. voyager

---

**Q3.** Le bénévolat est :

A. un engagement volontaire
B. un travail payé
C. une obligation
D. une interdiction

---

**Q4.** L''association caritative :

A. aide les personnes dans le besoin
B. fait du profit
C. divise
D. isole

---

**Q5.** Le don de sang est :

A. un acte de solidarité
B. un choix
C. une option
D. une interdiction

---

**Q6.** La laïcité signifie :

A. la séparation de l''État et des religions
B. une religion d''État
C. l''athéisme
D. l''interdiction des religions

---

**Q7.** La liberté de religion est :

A. un droit fondamental
B. un privilège
C. une option
D. une interdiction

---

**Q8.** La liberté d''expression est :

A. un droit fondamental
B. un privilège
C. une option
D. une interdiction

---

**Q9.** La liberté de la presse est :

A. un droit fondamental
B. un privilège
C. une option
D. une interdiction

---

**Q10.** L''abus de la liberté d''expression est :

A. interdit
B. autorisé
C. un droit
D. un devoir

---

**Q11.** La diffamation est :

A. interdite
B. autorisée
C. un droit
D. un devoir

---

**Q12.** Le respect de la vie privée est :

A. un droit fondamental
B. un privilège
C. une option
D. une interdiction

---

**Q13.** La protection des données personnelles est :

A. un droit
B. un privilège
C. une option
D. une interdiction

---

**Q14.** Le cyberharcèlement est :

A. interdit
B. autorisé
C. un droit
D. un devoir

---

**Q15.** L''utilisation responsable d''Internet est :

A. un devoir
B. un choix
C. une option
D. une interdiction

---

**Q16.** Le civisme numérique signifie :

A. un comportement responsable en ligne
B. l''anonymat total
C. la liberté totale
D. l''isolement

---

**Q17.** La participation aux élections est :

A. un devoir civique
B. un choix
C. une option
D. une interdiction

---

**Q18.** Le respect des symboles de la République est :

A. un devoir civique
B. un choix
C. une option
D. une interdiction

---

**Q19.** La patrie est :

A. le pays auquel on appartient
B. un continent
C. une ville
D. une région

---

**Q20.** Le patriotisme est :

A. l''amour de sa patrie
B. la haine des autres
C. l''indifférence
D. la fuite

---

## CORRIGÉ

1. la santé
2. se sentir responsable du monde
3. un engagement volontaire
4. aide les personnes dans le besoin
5. un acte de solidarité
6. la séparation de l''État et des religions
7. un droit fondamental
8. un droit fondamental
9. un droit fondamental
10. interdit
11. interdite
12. un droit fondamental
13. un droit
14. interdit
15. un devoir
16. un comportement responsable en ligne
17. un devoir civique
18. un devoir civique
19. le pays auquel on appartient
20. l''amour de sa patrie
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Éducation à la Citoyenneté et à la Morale QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Éducation à la Citoyenneté et à la Morale — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a97fbea9-2d6f-fb62-f964-042f1fb274e5', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC Éducation à la Citoyenneté et à la Morale — Sujet structuré — Série 4',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Éducation à la Citoyenneté et à la Morale
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ENVIRONNEMENT ET DÉVELOPPEMENT

**Q1.** Expliquer l''importance de la protection de l''environnement.

**Q1.** Décrire les gestes écologiques au quotidien.

**Q1.** Expliquer le concept de développement durable.

**Q1.** Décrire les problèmes environnementaux du Cameroun.

**Q1.** Proposer des solutions pour protéger l''environnement.

## SECTION 2: INSTITUTIONS ET DÉMOCRATIE

**Q2.** Décrire les institutions de la République du Cameroun.

**Q2.** Expliquer le fonctionnement de la démocratie au Cameroun.

**Q2.** Décrire le rôle du président, du gouvernement et du parlement.

**Q2.** Expliquer l''importance de la séparation des pouvoirs.

**Q2.** Décrire le processus électoral au Cameroun.

## SECTION 3: DROITS ET DEVOIRS

**Q3.** Énumérer les droits fondamentaux du citoyen camerounais.

**Q3.** Expliquer les devoirs du citoyen envers la patrie.

**Q3.** Décrire les droits de l''enfant et leur protection.

**Q3.** Expliquer l''importance du respect des lois.

**Q3.** Décrire le rôle de la justice dans la société.

## SECTION 4: CITOYENNETÉ ET MORALE

**Q4.** Expliquer les valeurs de la citoyenneté : tolérance, solidarité, respect.

**Q4.** Décrire les comportements civiques au quotidien.

**Q4.** Expliquer l''importance de la lutte contre la corruption.

**Q4.** Décrire les dangers de la violence et du harcèlement.

**Q4.** Expliquer le rôle de l''éducation civique dans la société.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Éducation à la Citoyenneté et à la Morale Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Éducation à la Citoyenneté et à la Morale — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ae80e44e-b880-cff6-8049-1aafbcb492aa', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC Éducation à la Citoyenneté et à la Morale — Sujet structuré — Série 5',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Éducation à la Citoyenneté et à la Morale
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: INSTITUTIONS ET DÉMOCRATIE

**Q1.** Décrire les institutions de la République du Cameroun.

**Q1.** Expliquer le fonctionnement de la démocratie au Cameroun.

**Q1.** Décrire le rôle du président, du gouvernement et du parlement.

**Q1.** Expliquer l''importance de la séparation des pouvoirs.

**Q1.** Décrire le processus électoral au Cameroun.

## SECTION 2: DROITS ET DEVOIRS

**Q2.** Énumérer les droits fondamentaux du citoyen camerounais.

**Q2.** Expliquer les devoirs du citoyen envers la patrie.

**Q2.** Décrire les droits de l''enfant et leur protection.

**Q2.** Expliquer l''importance du respect des lois.

**Q2.** Décrire le rôle de la justice dans la société.

## SECTION 3: CITOYENNETÉ ET MORALE

**Q3.** Expliquer les valeurs de la citoyenneté : tolérance, solidarité, respect.

**Q3.** Décrire les comportements civiques au quotidien.

**Q3.** Expliquer l''importance de la lutte contre la corruption.

**Q3.** Décrire les dangers de la violence et du harcèlement.

**Q3.** Expliquer le rôle de l''éducation civique dans la société.

## SECTION 4: ENVIRONNEMENT ET DÉVELOPPEMENT

**Q4.** Expliquer l''importance de la protection de l''environnement.

**Q4.** Décrire les gestes écologiques au quotidien.

**Q4.** Expliquer le concept de développement durable.

**Q4.** Décrire les problèmes environnementaux du Cameroun.

**Q4.** Proposer des solutions pour protéger l''environnement.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Éducation à la Citoyenneté et à la Morale Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Éducation à la Citoyenneté et à la Morale — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4a792a33-5391-09e4-0a0a-755ff78a7aa9', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC Éducation à la Citoyenneté et à la Morale — Sujet structuré — Série 6',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Éducation à la Citoyenneté et à la Morale
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: DROITS ET DEVOIRS

**Q1.** Énumérer les droits fondamentaux du citoyen camerounais.

**Q1.** Expliquer les devoirs du citoyen envers la patrie.

**Q1.** Décrire les droits de l''enfant et leur protection.

**Q1.** Expliquer l''importance du respect des lois.

**Q1.** Décrire le rôle de la justice dans la société.

## SECTION 2: CITOYENNETÉ ET MORALE

**Q2.** Expliquer les valeurs de la citoyenneté : tolérance, solidarité, respect.

**Q2.** Décrire les comportements civiques au quotidien.

**Q2.** Expliquer l''importance de la lutte contre la corruption.

**Q2.** Décrire les dangers de la violence et du harcèlement.

**Q2.** Expliquer le rôle de l''éducation civique dans la société.

## SECTION 3: ENVIRONNEMENT ET DÉVELOPPEMENT

**Q3.** Expliquer l''importance de la protection de l''environnement.

**Q3.** Décrire les gestes écologiques au quotidien.

**Q3.** Expliquer le concept de développement durable.

**Q3.** Décrire les problèmes environnementaux du Cameroun.

**Q3.** Proposer des solutions pour protéger l''environnement.

## SECTION 4: INSTITUTIONS ET DÉMOCRATIE

**Q4.** Décrire les institutions de la République du Cameroun.

**Q4.** Expliquer le fonctionnement de la démocratie au Cameroun.

**Q4.** Décrire le rôle du président, du gouvernement et du parlement.

**Q4.** Expliquer l''importance de la séparation des pouvoirs.

**Q4.** Décrire le processus électoral au Cameroun.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Éducation à la Citoyenneté et à la Morale Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Éducation à la Citoyenneté et à la Morale — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c5921495-af36-610f-efde-6e789fa4afd0', 'fr-bepc-ecm-citoyennete', 'Éducation à la Citoyenneté et à la Morale', 'BEPC Éducation à la Citoyenneté et à la Morale — Sujet structuré — Série 7',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC ÉDUCATION À LA CITOYENNETÉ ET À LA MORALE SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Éducation à la Citoyenneté et à la Morale
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: CITOYENNETÉ ET MORALE

**Q1.** Expliquer les valeurs de la citoyenneté : tolérance, solidarité, respect.

**Q1.** Décrire les comportements civiques au quotidien.

**Q1.** Expliquer l''importance de la lutte contre la corruption.

**Q1.** Décrire les dangers de la violence et du harcèlement.

**Q1.** Expliquer le rôle de l''éducation civique dans la société.

## SECTION 2: ENVIRONNEMENT ET DÉVELOPPEMENT

**Q2.** Expliquer l''importance de la protection de l''environnement.

**Q2.** Décrire les gestes écologiques au quotidien.

**Q2.** Expliquer le concept de développement durable.

**Q2.** Décrire les problèmes environnementaux du Cameroun.

**Q2.** Proposer des solutions pour protéger l''environnement.

## SECTION 3: INSTITUTIONS ET DÉMOCRATIE

**Q3.** Décrire les institutions de la République du Cameroun.

**Q3.** Expliquer le fonctionnement de la démocratie au Cameroun.

**Q3.** Décrire le rôle du président, du gouvernement et du parlement.

**Q3.** Expliquer l''importance de la séparation des pouvoirs.

**Q3.** Décrire le processus électoral au Cameroun.

## SECTION 4: DROITS ET DEVOIRS

**Q4.** Énumérer les droits fondamentaux du citoyen camerounais.

**Q4.** Expliquer les devoirs du citoyen envers la patrie.

**Q4.** Décrire les droits de l''enfant et leur protection.

**Q4.** Expliquer l''importance du respect des lois.

**Q4.** Décrire le rôle de la justice dans la société.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Éducation à la Citoyenneté et à la Morale Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Informatique — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b5f82c56-74d8-335a-581d-9df9563df250', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC Informatique — QCM (Épreuve 1) — Série 1',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC INFORMATIQUE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Informatique
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''unité centrale de traitement s''appelle :

A. le processeur
B. l''écran
C. le clavier
D. la souris

---

**Q2.** Le clavier est :

A. un périphérique d''entrée
B. un périphérique de sortie
C. une unité centrale
D. un logiciel

---

**Q3.** L''écran est :

A. un périphérique de sortie
B. un périphérique d''entrée
C. une unité centrale
D. un logiciel

---

**Q4.** La souris est :

A. un périphérique d''entrée
B. un périphérique de sortie
C. une unité centrale
D. un logiciel

---

**Q5.** L''imprimante est :

A. un périphérique de sortie
B. un périphérique d''entrée
C. une unité centrale
D. un logiciel

---

**Q6.** Le scanner est :

A. un périphérique d''entrée
B. un périphérique de sortie
C. une unité centrale
D. un logiciel

---

**Q7.** La mémoire vive s''appelle :

A. la RAM
B. le disque dur
C. le processeur
D. la ROM

---

**Q8.** La RAM est :

A. une mémoire volatile
B. une mémoire permanente
C. un périphérique
D. un logiciel

---

**Q9.** Le disque dur est :

A. une mémoire de masse
B. une mémoire volatile
C. un périphérique d''entrée
D. un logiciel

---

**Q10.** Le système d''exploitation est :

A. un logiciel de base
B. un périphérique
C. une mémoire
D. un composant

---

**Q11.** Windows est :

A. un système d''exploitation
B. un périphérique
C. une mémoire
D. un composant

---

**Q12.** Linux est :

A. un système d''exploitation
B. un périphérique
C. une mémoire
D. un composant

---

**Q13.** Le logiciel de traitement de texte est :

A. Word
B. Excel
C. PowerPoint
D. Photoshop

---

**Q14.** Le logiciel de tableur est :

A. Excel
B. Word
C. PowerPoint
D. Paint

---

**Q15.** Le logiciel de présentation est :

A. PowerPoint
B. Word
C. Excel
D. Access

---

**Q16.** Le navigateur web est :

A. Chrome
B. Word
C. Excel
D. Paint

---

**Q17.** L''unité de mesure de la taille d''un fichier est :

A. l''octet
B. le volt
C. l''ampère
D. le watt

---

**Q18.** 1 Ko (kilooctet) équivaut à :

A. 1024 octets
B. 1000 octets
C. 10 octets
D. 1 octet

---

**Q19.** 1 Mo (mégaoctet) équivaut à :

A. 1024 Ko
B. 1000 Ko
C. 10 Ko
D. 1 Ko

---

**Q20.** Le bit est :

A. la plus petite unité d''information
B. une grande unité
C. un périphérique
D. un logiciel

---

## CORRIGÉ

1. le processeur
2. un périphérique d''entrée
3. un périphérique de sortie
4. un périphérique d''entrée
5. un périphérique de sortie
6. un périphérique d''entrée
7. la RAM
8. une mémoire volatile
9. une mémoire de masse
10. un logiciel de base
11. un système d''exploitation
12. un système d''exploitation
13. Word
14. Excel
15. PowerPoint
16. Chrome
17. l''octet
18. 1024 octets
19. 1024 Ko
20. la plus petite unité d''information
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Informatique QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Informatique — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5f3cae13-98a5-dcb6-9889-970c155f0bb4', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC Informatique — QCM (Épreuve 1) — Série 2',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC INFORMATIQUE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Informatique
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Un octet est composé de :

A. 8 bits
B. 4 bits
C. 16 bits
D. 2 bits

---

**Q2.** Le binaire utilise :

A. 0 et 1
B. 0 à 9
C. A à Z
D. 1 et 2

---

**Q3.** Le système décimal utilise :

A. 0 à 9
B. 0 et 1
C. A à F
D. 1 à 10

---

**Q4.** Le système hexadécimal utilise :

A. 0 à 9 et A à F
B. 0 et 1
C. 0 à 9
D. A à Z

---

**Q5.** L''adresse IP est :

A. l''adresse d''un ordinateur sur un réseau
B. une adresse postale
C. un mot de passe
D. un nom

---

**Q6.** Le réseau Internet permet :

A. de connecter des ordinateurs dans le monde
B. d''imprimer
C. de scanner
D. de calculer

---

**Q7.** Le Wi-Fi est :

A. une connexion sans fil
B. un câble
C. un logiciel
D. une mémoire

---

**Q8.** L''e-mail est :

A. un courrier électronique
B. un logiciel
C. un périphérique
D. une mémoire

---

**Q9.** Le mot de passe sert à :

A. protéger l''accès
B. afficher l''écran
C. imprimer
D. scanner

---

**Q10.** Un mot de passe fort contient :

A. des lettres, chiffres et symboles
B. uniquement des lettres
C. uniquement des chiffres
D. son prénom

---

**Q11.** Le virus informatique est :

A. un programme malveillant
B. un logiciel utile
C. un périphérique
D. une mémoire

---

**Q12.** L''antivirus sert à :

A. protéger contre les virus
B. imprimer
C. scanner
D. calculer

---

**Q13.** Le phishing est :

A. une tentative de fraude en ligne
B. un jeu
C. un logiciel
D. un périphérique

---

**Q14.** Le spam est :

A. un courrier indésirable
B. un jeu
C. un logiciel
D. un périphérique

---

**Q15.** Le fichier est :

A. un ensemble de données
B. un périphérique
C. une mémoire
D. un composant

---

**Q16.** Le dossier (répertoire) sert à :

A. organiser les fichiers
B. imprimer
C. scanner
D. calculer

---

**Q17.** L''extension d''un fichier texte est :

A. .txt
B. .jpg
C. .mp3
D. .exe

---

**Q18.** L''extension d''une image est :

A. .jpg
B. .txt
C. .mp3
D. .exe

---

**Q19.** L''extension d''un fichier audio est :

A. .mp3
B. .txt
C. .jpg
D. .exe

---

**Q20.** L''extension d''un programme exécutable est :

A. .exe
B. .txt
C. .jpg
D. .mp3

---

## CORRIGÉ

1. 8 bits
2. 0 et 1
3. 0 à 9
4. 0 à 9 et A à F
5. l''adresse d''un ordinateur sur un réseau
6. de connecter des ordinateurs dans le monde
7. une connexion sans fil
8. un courrier électronique
9. protéger l''accès
10. des lettres, chiffres et symboles
11. un programme malveillant
12. protéger contre les virus
13. une tentative de fraude en ligne
14. un courrier indésirable
15. un ensemble de données
16. organiser les fichiers
17. .txt
18. .jpg
19. .mp3
20. .exe
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Informatique QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Informatique — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a6c2d719-4477-d2f3-9b89-08ba6116a797', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC Informatique — QCM (Épreuve 1) — Série 3',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC INFORMATIQUE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Informatique
**Exam:** BEPC

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le copier-coller se fait avec :

A. Ctrl+C et Ctrl+V
B. Ctrl+X et Ctrl+Z
C. Ctrl+P et Ctrl+S
D. Ctrl+A et Ctrl+B

---

**Q2.** Le couper-coller se fait avec :

A. Ctrl+X et Ctrl+V
B. Ctrl+C et Ctrl+V
C. Ctrl+P et Ctrl+S
D. Ctrl+A et Ctrl+B

---

**Q3.** L''annulation se fait avec :

A. Ctrl+Z
B. Ctrl+C
C. Ctrl+V
D. Ctrl+P

---

**Q4.** L''impression se fait avec :

A. Ctrl+P
B. Ctrl+C
C. Ctrl+V
D. Ctrl+Z

---

**Q5.** L''enregistrement se fait avec :

A. Ctrl+S
B. Ctrl+C
C. Ctrl+V
D. Ctrl+P

---

**Q6.** La sélection de tout se fait avec :

A. Ctrl+A
B. Ctrl+C
C. Ctrl+V
D. Ctrl+P

---

**Q7.** Le cloud computing est :

A. le stockage de données sur Internet
B. un périphérique
C. une mémoire
D. un composant

---

**Q8.** Le stockage cloud permet :

A. d''accéder aux données à distance
B. d''imprimer
C. de scanner
D. de calculer

---

**Q9.** La sauvegarde (backup) sert à :

A. protéger les données
B. imprimer
C. scanner
D. calculer

---

**Q10.** L''ordinateur portable est :

A. un ordinateur mobile
B. un périphérique
C. une mémoire
D. un logiciel

---

**Q11.** La tablette est :

A. un appareil tactile
B. un périphérique
C. une mémoire
D. un logiciel

---

**Q12.** Le smartphone est :

A. un téléphone intelligent
B. un périphérique
C. une mémoire
D. un logiciel

---

**Q13.** Le logiciel libre est :

A. un logiciel dont le code est ouvert
B. un logiciel payant
C. un virus
D. un périphérique

---

**Q14.** Le logiciel propriétaire est :

A. un logiciel dont le code est fermé
B. un logiciel libre
C. un virus
D. un périphérique

---

**Q15.** L''open source signifie :

A. code source ouvert
B. code fermé
C. payant
D. gratuit uniquement

---

**Q16.** La programmation consiste à :

A. écrire des instructions pour l''ordinateur
B. imprimer
C. scanner
D. calculer

---

**Q17.** Un algorithme est :

A. une suite d''instructions
B. un périphérique
C. une mémoire
D. un composant

---

**Q18.** Le langage de programmation est :

A. un langage pour écrire des programmes
B. une langue étrangère
C. un périphérique
D. une mémoire

---

**Q19.** Python est :

A. un langage de programmation
B. un périphérique
C. une mémoire
D. un composant

---

**Q20.** Le HTML est :

A. un langage de création de pages web
B. un périphérique
C. une mémoire
D. un composant

---

## CORRIGÉ

1. Ctrl+C et Ctrl+V
2. Ctrl+X et Ctrl+V
3. Ctrl+Z
4. Ctrl+P
5. Ctrl+S
6. Ctrl+A
7. le stockage de données sur Internet
8. d''accéder aux données à distance
9. protéger les données
10. un ordinateur mobile
11. un appareil tactile
12. un téléphone intelligent
13. un logiciel dont le code est ouvert
14. un logiciel dont le code est fermé
15. code source ouvert
16. écrire des instructions pour l''ordinateur
17. une suite d''instructions
18. un langage pour écrire des programmes
19. un langage de programmation
20. un langage de création de pages web
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Informatique QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Informatique — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f913048a-dbe4-5c14-9df1-b5c2a7ca3d81', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC Informatique — Sujet structuré — Série 4',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC INFORMATIQUE SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Informatique
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ALGORITHMIQUE ET PROGRAMMATION

**Q1.** Définir un algorithme et donner un exemple.

**Q1.** Écrire un algorithme pour calculer la somme de deux nombres.

**Q1.** Expliquer la notion de variable en programmation.

**Q1.** Décrire les structures conditionnelles (si... alors... sinon).

**Q1.** Écrire un algorithme pour déterminer si un nombre est pair ou impair.

## SECTION 2: MATÉRIEL INFORMATIQUE

**Q2.** Décrire les composants d''un ordinateur.

**Q2.** Distinguer les périphériques d''entrée et de sortie.

**Q2.** Expliquer le rôle du processeur et de la mémoire.

**Q2.** Décrire les différents types de mémoire.

**Q2.** Expliquer le fonctionnement d''un disque dur.

## SECTION 3: LOGICIELS

**Q3.** Distinguer les logiciels système et les logiciels d''application.

**Q3.** Décrire le rôle du système d''exploitation.

**Q3.** Expliquer l''utilisation d''un traitement de texte.

**Q3.** Décrire l''utilisation d''un tableur.

**Q3.** Expliquer la différence entre logiciel libre et logiciel propriétaire.

## SECTION 4: RÉSEAUX ET INTERNET

**Q4.** Décrire le fonctionnement d''un réseau informatique.

**Q4.** Expliquer le rôle d''Internet.

**Q4.** Décrire les dangers d''Internet et les précautions à prendre.

**Q4.** Expliquer le fonctionnement de l''e-mail.

**Q4.** Décrire les bonnes pratiques de sécurité en ligne.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Informatique — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7c26eeee-b9c5-3cec-ff42-aa6d768e4e4c', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC Informatique — Sujet structuré — Série 5',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC INFORMATIQUE SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Informatique
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: MATÉRIEL INFORMATIQUE

**Q1.** Décrire les composants d''un ordinateur.

**Q1.** Distinguer les périphériques d''entrée et de sortie.

**Q1.** Expliquer le rôle du processeur et de la mémoire.

**Q1.** Décrire les différents types de mémoire.

**Q1.** Expliquer le fonctionnement d''un disque dur.

## SECTION 2: LOGICIELS

**Q2.** Distinguer les logiciels système et les logiciels d''application.

**Q2.** Décrire le rôle du système d''exploitation.

**Q2.** Expliquer l''utilisation d''un traitement de texte.

**Q2.** Décrire l''utilisation d''un tableur.

**Q2.** Expliquer la différence entre logiciel libre et logiciel propriétaire.

## SECTION 3: RÉSEAUX ET INTERNET

**Q3.** Décrire le fonctionnement d''un réseau informatique.

**Q3.** Expliquer le rôle d''Internet.

**Q3.** Décrire les dangers d''Internet et les précautions à prendre.

**Q3.** Expliquer le fonctionnement de l''e-mail.

**Q3.** Décrire les bonnes pratiques de sécurité en ligne.

## SECTION 4: ALGORITHMIQUE ET PROGRAMMATION

**Q4.** Définir un algorithme et donner un exemple.

**Q4.** Écrire un algorithme pour calculer la somme de deux nombres.

**Q4.** Expliquer la notion de variable en programmation.

**Q4.** Décrire les structures conditionnelles (si... alors... sinon).

**Q4.** Écrire un algorithme pour déterminer si un nombre est pair ou impair.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Informatique — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a3e6c9c5-7904-2158-4448-8debbee36b86', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC Informatique — Sujet structuré — Série 6',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC INFORMATIQUE SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Informatique
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: LOGICIELS

**Q1.** Distinguer les logiciels système et les logiciels d''application.

**Q1.** Décrire le rôle du système d''exploitation.

**Q1.** Expliquer l''utilisation d''un traitement de texte.

**Q1.** Décrire l''utilisation d''un tableur.

**Q1.** Expliquer la différence entre logiciel libre et logiciel propriétaire.

## SECTION 2: RÉSEAUX ET INTERNET

**Q2.** Décrire le fonctionnement d''un réseau informatique.

**Q2.** Expliquer le rôle d''Internet.

**Q2.** Décrire les dangers d''Internet et les précautions à prendre.

**Q2.** Expliquer le fonctionnement de l''e-mail.

**Q2.** Décrire les bonnes pratiques de sécurité en ligne.

## SECTION 3: ALGORITHMIQUE ET PROGRAMMATION

**Q3.** Définir un algorithme et donner un exemple.

**Q3.** Écrire un algorithme pour calculer la somme de deux nombres.

**Q3.** Expliquer la notion de variable en programmation.

**Q3.** Décrire les structures conditionnelles (si... alors... sinon).

**Q3.** Écrire un algorithme pour déterminer si un nombre est pair ou impair.

## SECTION 4: MATÉRIEL INFORMATIQUE

**Q4.** Décrire les composants d''un ordinateur.

**Q4.** Distinguer les périphériques d''entrée et de sortie.

**Q4.** Expliquer le rôle du processeur et de la mémoire.

**Q4.** Décrire les différents types de mémoire.

**Q4.** Expliquer le fonctionnement d''un disque dur.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- BEPC Informatique — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2736cf81-891d-d7ee-0498-73f7ea3436ac', 'fr-bepc-info-bureautique', 'Informatique', 'BEPC Informatique — Sujet structuré — Série 7',
    'french', 'ordinary', array['troisieme']::text[], array['tronc_commun']::text[], 'published',
    '# CAMEROON BEPC INFORMATIQUE SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level (Collège)
**Class:** Troisième
**Series:** Tronc Commun
**Subject:** Informatique
**Exam:** BEPC

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: RÉSEAUX ET INTERNET

**Q1.** Décrire le fonctionnement d''un réseau informatique.

**Q1.** Expliquer le rôle d''Internet.

**Q1.** Décrire les dangers d''Internet et les précautions à prendre.

**Q1.** Expliquer le fonctionnement de l''e-mail.

**Q1.** Décrire les bonnes pratiques de sécurité en ligne.

## SECTION 2: ALGORITHMIQUE ET PROGRAMMATION

**Q2.** Définir un algorithme et donner un exemple.

**Q2.** Écrire un algorithme pour calculer la somme de deux nombres.

**Q2.** Expliquer la notion de variable en programmation.

**Q2.** Décrire les structures conditionnelles (si... alors... sinon).

**Q2.** Écrire un algorithme pour déterminer si un nombre est pair ou impair.

## SECTION 3: MATÉRIEL INFORMATIQUE

**Q3.** Décrire les composants d''un ordinateur.

**Q3.** Distinguer les périphériques d''entrée et de sortie.

**Q3.** Expliquer le rôle du processeur et de la mémoire.

**Q3.** Décrire les différents types de mémoire.

**Q3.** Expliquer le fonctionnement d''un disque dur.

## SECTION 4: LOGICIELS

**Q4.** Distinguer les logiciels système et les logiciels d''application.

**Q4.** Décrire le rôle du système d''exploitation.

**Q4.** Expliquer l''utilisation d''un traitement de texte.

**Q4.** Décrire l''utilisation d''un tableur.

**Q4.** Expliquer la différence entre logiciel libre et logiciel propriétaire.
', 'paper', 'paper', 'francophone', 'GCE BEPC',
    '2024', 'teacher_authored', 'GCE BEPC Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Comptabilité — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '360aad2d-1081-4b91-1f45-a31988562690', 'fr-stt-economie-comptabilite', 'Comptabilité', 'GCE Probatoire Comptabilité — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire COMPTABILITÉ P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Comptabilité
**Subject:** Comptabilité
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le bilan est :

A. un tableau qui décrit le patrimoine
B. un compte de résultat
C. une facture
D. un journal

---

**Q2.** L''actif du bilan comprend :

A. les biens et créances
B. les dettes
C. les capitaux propres
D. les charges

---

**Q3.** Le passif du bilan comprend :

A. les dettes et capitaux propres
B. les biens
C. les créances
D. les produits

---

**Q4.** Le compte de résultat présente :

A. les charges et produits
B. l''actif et le passif
C. les biens et dettes
D. les recettes et dépenses

---

**Q5.** Le journal comptable enregistre :

A. les opérations au jour le jour
B. le bilan
C. le résultat
D. les amortissements

---

**Q6.** Le grand livre regroupe :

A. tous les comptes
B. les factures
C. les bilans
D. les résultats

---

**Q7.** La balance est :

A. un récapitulatif des comptes
B. un bilan
C. un résultat
D. un journal

---

**Q8.** Le compte « caisse » est :

A. un compte d''actif
B. un compte de passif
C. un compte de charge
D. un compte de produit

---

**Q9.** Le compte « banque » est :

A. un compte d''actif
B. un compte de passif
C. un compte de charge
D. un compte de produit

---

**Q10.** Le compte « capital » est :

A. un compte de capitaux propres
B. un compte d''actif
C. un compte de charge
D. un compte de produit

---

**Q11.** Le compte « ventes » est :

A. un compte de produit
B. un compte de charge
C. un compte d''actif
D. un compte de passif

---

**Q12.** Le compte « achats » est :

A. un compte de charge
B. un compte de produit
C. un compte d''actif
D. un compte de passif

---

**Q13.** La TVA est :

A. la taxe sur la valeur ajoutée
B. une taxe foncière
C. un impôt sur le revenu
D. une taxe douanière

---

**Q14.** La TVA collectée est :

A. la TVA sur les ventes
B. la TVA sur les achats
C. une taxe
D. un impôt

---

**Q15.** La TVA déductible est :

A. la TVA sur les achats
B. la TVA sur les ventes
C. une taxe
D. un impôt

---

**Q16.** La TVA à payer est :

A. TVA collectée - TVA déductible
B. TVA collectée + TVA déductible
C. TVA déductible - TVA collectée
D. TVA collectée

---

**Q17.** L''amortissement est :

A. la constatation de la dépréciation d''un bien
B. une charge
C. un produit
D. une dette

---

**Q18.** L''amortissement concerne :

A. les immobilisations
B. les stocks
C. les créances
D. la caisse

---

**Q19.** La provision est :

A. une charge probable
B. un produit
C. une dette
D. un bien

---

**Q20.** Le résultat de l''exercice est :

A. produits - charges
B. actif - passif
C. recettes - dépenses
D. ventes - achats

---

## CORRIGÉ

1. un tableau qui décrit le patrimoine
2. les biens et créances
3. les dettes et capitaux propres
4. les charges et produits
5. les opérations au jour le jour
6. tous les comptes
7. un récapitulatif des comptes
8. un compte d''actif
9. un compte d''actif
10. un compte de capitaux propres
11. un compte de produit
12. un compte de charge
13. la taxe sur la valeur ajoutée
14. la TVA sur les ventes
15. la TVA sur les achats
16. TVA collectée - TVA déductible
17. la constatation de la dépréciation d''un bien
18. les immobilisations
19. une charge probable
20. produits - charges
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Comptabilité QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Comptabilité — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '05556015-d2d8-3da9-3f79-ac932902cdf0', 'fr-stt-economie-comptabilite', 'Comptabilité', 'GCE Probatoire Comptabilité — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire COMPTABILITÉ P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Comptabilité
**Subject:** Comptabilité
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le bénéfice est :

A. un résultat positif
B. un résultat négatif
C. une charge
D. un produit

---

**Q2.** La perte est :

A. un résultat négatif
B. un résultat positif
C. une charge
D. un produit

---

**Q3.** Le chiffre d''affaires est :

A. le total des ventes
B. le total des achats
C. le bénéfice
D. la perte

---

**Q4.** La facture est :

A. un document commercial
B. un bilan
C. un résultat
D. un journal

---

**Q5.** La facture d''achat est :

A. reçue du fournisseur
B. envoyée au client
C. un bilan
D. un résultat

---

**Q6.** La facture de vente est :

A. envoyée au client
B. reçue du fournisseur
C. un bilan
D. un résultat

---

**Q7.** L''avoir est :

A. une facture de remise
B. une facture d''achat
C. un bilan
D. un résultat

---

**Q8.** Le rabais est :

A. une réduction sur le prix
B. une taxe
C. un impôt
D. une charge

---

**Q9.** La remise est :

A. une réduction commerciale
B. une taxe
C. un impôt
D. une charge

---

**Q10.** L''escompte est :

A. une réduction financière
B. une réduction commerciale
C. une taxe
D. un impôt

---

**Q11.** Le compte « clients » est :

A. un compte de créance
B. un compte de dette
C. un compte de charge
D. un compte de produit

---

**Q12.** Le compte « fournisseurs » est :

A. un compte de dette
B. un compte de créance
C. un compte de charge
D. un compte de produit

---

**Q13.** Le compte « personnel » est :

A. un compte de dette
B. un compte de créance
C. un compte de charge
D. un compte de produit

---

**Q14.** Le compte « État, TVA » est :

A. un compte de tiers
B. un compte de charge
C. un compte de produit
D. un compte de banque

---

**Q15.** Le journal est tenu :

A. chronologiquement
B. par ordre alphabétique
C. par montant
D. au hasard

---

**Q16.** La partie double signifie :

A. chaque opération affecte deux comptes
B. deux journaux
C. deux bilans
D. deux résultats

---

**Q17.** Le débit d''un compte d''actif :

A. augmente le compte
B. diminue le compte
C. n''a aucun effet
D. annule le compte

---

**Q18.** Le crédit d''un compte de passif :

A. augmente le compte
B. diminue le compte
C. n''a aucun effet
D. annule le compte

---

**Q19.** Le débit d''un compte de charge :

A. augmente le compte
B. diminue le compte
C. n''a aucun effet
D. annule le compte

---

**Q20.** Le crédit d''un compte de produit :

A. augmente le compte
B. diminue le compte
C. n''a aucun effet
D. annule le compte

---

## CORRIGÉ

1. un résultat positif
2. un résultat négatif
3. le total des ventes
4. un document commercial
5. reçue du fournisseur
6. envoyée au client
7. une facture de remise
8. une réduction sur le prix
9. une réduction commerciale
10. une réduction financière
11. un compte de créance
12. un compte de dette
13. un compte de dette
14. un compte de tiers
15. chronologiquement
16. chaque opération affecte deux comptes
17. augmente le compte
18. augmente le compte
19. augmente le compte
20. augmente le compte
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Comptabilité QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Comptabilité — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0f553dbb-dd6c-6a4b-327a-a3ced5430ddd', 'fr-stt-economie-comptabilite', 'Comptabilité', 'GCE Probatoire Comptabilité — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire COMPTABILITÉ P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Comptabilité
**Subject:** Comptabilité
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le solde d''un compte est :

A. la différence entre débit et crédit
B. le total du débit
C. le total du crédit
D. le nombre d''opérations

---

**Q2.** Un compte débiteur a :

A. un solde débiteur
B. un solde créditeur
C. un solde nul
D. aucun solde

---

**Q3.** Un compte créditeur a :

A. un solde créditeur
B. un solde débiteur
C. un solde nul
D. aucun solde

---

**Q4.** Le plan comptable est :

A. la liste normalisée des comptes
B. un bilan
C. un résultat
D. un journal

---

**Q5.** Le système comptable OHADA est utilisé :

A. en Afrique francophone
B. en Europe
C. en Amérique
D. en Asie

---

**Q6.** Le bilan se présente :

A. en deux colonnes (actif et passif)
B. en une colonne
C. en trois colonnes
D. en tableau

---

**Q7.** L''actif immobilisé comprend :

A. les biens durables
B. les stocks
C. les créances
D. la caisse

---

**Q8.** L''actif circulant comprend :

A. les stocks, créances et disponibilités
B. les biens durables
C. les capitaux propres
D. les dettes

---

**Q9.** Les capitaux propres comprennent :

A. le capital et les réserves
B. les dettes
C. les biens
D. les créances

---

**Q10.** Les dettes à long terme sont :

A. les emprunts
B. les fournisseurs
C. les clients
D. la caisse

---

**Q11.** Les dettes à court terme sont :

A. les fournisseurs
B. les emprunts
C. le capital
D. les réserves

---

**Q12.** Le fonds de roulement est :

A. actif circulant - dettes à court terme
B. actif - passif
C. produits - charges
D. ventes - achats

---

**Q13.** Le besoin en fonds de roulement est :

A. stocks + créances - dettes à court terme
B. actif - passif
C. produits - charges
D. ventes - achats

---

**Q14.** La trésorerie nette est :

A. fonds de roulement - besoin en fonds de roulement
B. actif - passif
C. produits - charges
D. ventes - achats

---

**Q15.** Le seuil de rentabilité est :

A. le chiffre d''affaires où le résultat est nul
B. le bénéfice
C. la perte
D. le capital

---

**Q16.** La marge brute est :

A. ventes - coût d''achat
B. produits - charges
C. actif - passif
D. recettes - dépenses

---

**Q17.** Le coût de revient est :

A. le coût total de production
B. le prix de vente
C. le bénéfice
D. la perte

---

**Q18.** Le prix de vente est :

A. coût de revient + marge
B. coût de revient - marge
C. coût de revient
D. marge

---

**Q19.** La liasse fiscale comprend :

A. bilan, compte de résultat et annexes
B. uniquement le bilan
C. uniquement le résultat
D. les factures

---

**Q20.** L''annexe est :

A. un document complémentaire du bilan
B. un bilan
C. un résultat
D. un journal

---

## CORRIGÉ

1. la différence entre débit et crédit
2. un solde débiteur
3. un solde créditeur
4. la liste normalisée des comptes
5. en Afrique francophone
6. en deux colonnes (actif et passif)
7. les biens durables
8. les stocks, créances et disponibilités
9. le capital et les réserves
10. les emprunts
11. les fournisseurs
12. actif circulant - dettes à court terme
13. stocks + créances - dettes à court terme
14. fonds de roulement - besoin en fonds de roulement
15. le chiffre d''affaires où le résultat est nul
16. ventes - coût d''achat
17. le coût total de production
18. coût de revient + marge
19. bilan, compte de résultat et annexes
20. un document complémentaire du bilan
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Comptabilité QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Comptabilité — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bcec7f7f-c0d3-8b3a-46c2-c838ba0ee8e4', 'fr-stt-economie-comptabilite', 'Comptabilité', 'GCE Probatoire Comptabilité — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire COMPTABILITÉ SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Comptabilité
**Subject:** Comptabilité
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: DOCUMENTS COMMERCIAUX

**Q1.** Établir une facture avec remise, rabais et escompte.

**Q1.** Établir un avoir.

**Q1.** Remplir un chèque et un bordereau de versement.

**Q1.** Établir un relevé de compte.

**Q1.** Expliquer le rôle des documents commerciaux dans la comptabilité.

## SECTION 2: COMPTABILITÉ GÉNÉRALE

**Q2.** Présenter le bilan d''une entreprise à partir des données fournies.

**Q2.** Enregistrer les opérations courantes dans le journal.

**Q2.** Établir le compte de résultat d''une entreprise.

**Q2.** Calculer la TVA à payer à partir des ventes et achats.

**Q2.** Établir la balance des comptes.

## SECTION 3: ANALYSE COMPTABLE

**Q3.** Calculer le fonds de roulement, le besoin en fonds de roulement et la trésorerie nette.

**Q3.** Analyser la structure financière d''une entreprise.

**Q3.** Calculer les ratios de liquidité et de solvabilité.

**Q3.** Interpréter le résultat d''une entreprise.

**Q3.** Calculer le seuil de rentabilité.

## SECTION 4: GESTION ET COÛTS

**Q4.** Calculer le coût d''achat, le coût de production et le coût de revient.

**Q4.** Établir un tableau de répartition des charges.

**Q4.** Calculer la marge brute et la marge nette.

**Q4.** Analyser les écarts entre prévisions et réalisations.

**Q4.** Calculer le prix de vente à partir du coût de revient et de la marge.
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Comptabilité Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Comptabilité — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9b844d46-e29b-2f20-36c0-e7efdd3ef20a', 'fr-stt-economie-comptabilite', 'Comptabilité', 'GCE Probatoire Comptabilité — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire COMPTABILITÉ SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Comptabilité
**Subject:** Comptabilité
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: COMPTABILITÉ GÉNÉRALE

**Q1.** Présenter le bilan d''une entreprise à partir des données fournies.

**Q1.** Enregistrer les opérations courantes dans le journal.

**Q1.** Établir le compte de résultat d''une entreprise.

**Q1.** Calculer la TVA à payer à partir des ventes et achats.

**Q1.** Établir la balance des comptes.

## SECTION 2: ANALYSE COMPTABLE

**Q2.** Calculer le fonds de roulement, le besoin en fonds de roulement et la trésorerie nette.

**Q2.** Analyser la structure financière d''une entreprise.

**Q2.** Calculer les ratios de liquidité et de solvabilité.

**Q2.** Interpréter le résultat d''une entreprise.

**Q2.** Calculer le seuil de rentabilité.

## SECTION 3: GESTION ET COÛTS

**Q3.** Calculer le coût d''achat, le coût de production et le coût de revient.

**Q3.** Établir un tableau de répartition des charges.

**Q3.** Calculer la marge brute et la marge nette.

**Q3.** Analyser les écarts entre prévisions et réalisations.

**Q3.** Calculer le prix de vente à partir du coût de revient et de la marge.

## SECTION 4: DOCUMENTS COMMERCIAUX

**Q4.** Établir une facture avec remise, rabais et escompte.

**Q4.** Établir un avoir.

**Q4.** Remplir un chèque et un bordereau de versement.

**Q4.** Établir un relevé de compte.

**Q4.** Expliquer le rôle des documents commerciaux dans la comptabilité.
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Comptabilité Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Comptabilité — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'da40c8d7-8dae-0f88-bc52-671a47dee520', 'fr-stt-economie-comptabilite', 'Comptabilité', 'GCE Probatoire Comptabilité — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire COMPTABILITÉ SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Comptabilité
**Subject:** Comptabilité
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ANALYSE COMPTABLE

**Q1.** Calculer le fonds de roulement, le besoin en fonds de roulement et la trésorerie nette.

**Q1.** Analyser la structure financière d''une entreprise.

**Q1.** Calculer les ratios de liquidité et de solvabilité.

**Q1.** Interpréter le résultat d''une entreprise.

**Q1.** Calculer le seuil de rentabilité.

## SECTION 2: GESTION ET COÛTS

**Q2.** Calculer le coût d''achat, le coût de production et le coût de revient.

**Q2.** Établir un tableau de répartition des charges.

**Q2.** Calculer la marge brute et la marge nette.

**Q2.** Analyser les écarts entre prévisions et réalisations.

**Q2.** Calculer le prix de vente à partir du coût de revient et de la marge.

## SECTION 3: DOCUMENTS COMMERCIAUX

**Q3.** Établir une facture avec remise, rabais et escompte.

**Q3.** Établir un avoir.

**Q3.** Remplir un chèque et un bordereau de versement.

**Q3.** Établir un relevé de compte.

**Q3.** Expliquer le rôle des documents commerciaux dans la comptabilité.

## SECTION 4: COMPTABILITÉ GÉNÉRALE

**Q4.** Présenter le bilan d''une entreprise à partir des données fournies.

**Q4.** Enregistrer les opérations courantes dans le journal.

**Q4.** Établir le compte de résultat d''une entreprise.

**Q4.** Calculer la TVA à payer à partir des ventes et achats.

**Q4.** Établir la balance des comptes.
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Comptabilité Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Comptabilité — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd7827120-eea7-5ac0-d135-8097ed47043d', 'fr-stt-economie-comptabilite', 'Comptabilité', 'GCE Probatoire Comptabilité — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire COMPTABILITÉ SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Comptabilité
**Subject:** Comptabilité
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: GESTION ET COÛTS

**Q1.** Calculer le coût d''achat, le coût de production et le coût de revient.

**Q1.** Établir un tableau de répartition des charges.

**Q1.** Calculer la marge brute et la marge nette.

**Q1.** Analyser les écarts entre prévisions et réalisations.

**Q1.** Calculer le prix de vente à partir du coût de revient et de la marge.

## SECTION 2: DOCUMENTS COMMERCIAUX

**Q2.** Établir une facture avec remise, rabais et escompte.

**Q2.** Établir un avoir.

**Q2.** Remplir un chèque et un bordereau de versement.

**Q2.** Établir un relevé de compte.

**Q2.** Expliquer le rôle des documents commerciaux dans la comptabilité.

## SECTION 3: COMPTABILITÉ GÉNÉRALE

**Q3.** Présenter le bilan d''une entreprise à partir des données fournies.

**Q3.** Enregistrer les opérations courantes dans le journal.

**Q3.** Établir le compte de résultat d''une entreprise.

**Q3.** Calculer la TVA à payer à partir des ventes et achats.

**Q3.** Établir la balance des comptes.

## SECTION 4: ANALYSE COMPTABLE

**Q4.** Calculer le fonds de roulement, le besoin en fonds de roulement et la trésorerie nette.

**Q4.** Analyser la structure financière d''une entreprise.

**Q4.** Calculer les ratios de liquidité et de solvabilité.

**Q4.** Interpréter le résultat d''une entreprise.

**Q4.** Calculer le seuil de rentabilité.
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Comptabilité Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Économie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e41b42fb-bb9c-bc8a-f7c1-eccba35e0129', 'fr-stt-economie-comptabilite', 'Économie', 'GCE Probatoire Économie — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire ÉCONOMIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Économie
**Subject:** Économie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''économie étudie :

A. la production et la répartition des richesses
B. la politique
C. la religion
D. la culture

---

**Q2.** Les besoins sont :

A. illimités
B. limités
C. inexistants
D. rares

---

**Q3.** Les ressources sont :

A. limitées (rares)
B. illimitées
C. inexistantes
D. abondantes

---

**Q4.** Le problème économique fondamental est :

A. la rareté
B. l''abondance
C. la richesse
D. la pauvreté

---

**Q5.** Les biens économiques sont :

A. rares et utiles
B. abondants
C. gratuits
D. inutiles

---

**Q6.** Les biens libres sont :

A. gratuits et abondants
B. rares
C. payants
D. inutiles

---

**Q7.** La production est :

A. la création de biens et services
B. la consommation
C. l''épargne
D. l''investissement

---

**Q8.** La consommation est :

A. l''utilisation des biens et services
B. la production
C. l''épargne
D. l''investissement

---

**Q9.** L''épargne est :

A. la partie du revenu non consommée
B. la consommation
C. la production
D. l''investissement

---

**Q10.** L''investissement est :

A. l''achat de biens de production
B. la consommation
C. l''épargne
D. la production

---

**Q11.** Le PIB est :

A. la production totale d''un pays
B. la population
C. le chômage
D. l''inflation

---

**Q12.** Le PIB par habitant est :

A. le PIB divisé par la population
B. le PIB total
C. la population
D. le chômage

---

**Q13.** L''inflation est :

A. la hausse générale des prix
B. la baisse des prix
C. le chômage
D. la croissance

---

**Q14.** La déflation est :

A. la baisse générale des prix
B. la hausse des prix
C. le chômage
D. la croissance

---

**Q15.** Le chômage est :

A. l''absence d''emploi pour ceux qui cherchent
B. le travail
C. la production
D. l''inflation

---

**Q16.** Le taux de chômage est :

A. le pourcentage de chômeurs dans la population active
B. le nombre d''employés
C. la population
D. le PIB

---

**Q17.** La population active comprend :

A. les personnes en âge de travailler et qui travaillent ou cherchent
B. toute la population
C. les enfants
D. les retraités

---

**Q18.** L''offre est :

A. la quantité de biens proposés
B. la quantité demandée
C. le prix
D. la production

---

**Q19.** La demande est :

A. la quantité de biens désirés
B. la quantité offerte
C. le prix
D. la production

---

**Q20.** Le prix d''équilibre est :

A. où l''offre égale la demande
B. le prix le plus bas
C. le prix le plus haut
D. le prix fixe

---

## CORRIGÉ

1. la production et la répartition des richesses
2. illimités
3. limitées (rares)
4. la rareté
5. rares et utiles
6. gratuits et abondants
7. la création de biens et services
8. l''utilisation des biens et services
9. la partie du revenu non consommée
10. l''achat de biens de production
11. la production totale d''un pays
12. le PIB divisé par la population
13. la hausse générale des prix
14. la baisse générale des prix
15. l''absence d''emploi pour ceux qui cherchent
16. le pourcentage de chômeurs dans la population active
17. les personnes en âge de travailler et qui travaillent ou cherchent
18. la quantité de biens proposés
19. la quantité de biens désirés
20. où l''offre égale la demande
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Économie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Économie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ecd5cda1-6501-054d-c9a4-c301122934c1', 'fr-stt-economie-comptabilite', 'Économie', 'GCE Probatoire Économie — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire ÉCONOMIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Économie
**Subject:** Économie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La loi de l''offre et de la demande :

A. le prix varie selon l''offre et la demande
B. le prix est fixe
C. le prix baisse toujours
D. le prix monte toujours

---

**Q2.** Le marché est :

A. le lieu de rencontre de l''offre et de la demande
B. un magasin
C. une usine
D. une banque

---

**Q3.** La concurrence parfaite suppose :

A. beaucoup d''offreurs et de demandeurs
B. un seul offreur
C. peu d''offreurs
D. un monopole

---

**Q4.** Le monopole est :

A. un seul offreur
B. beaucoup d''offreurs
C. deux offreurs
D. aucun offreur

---

**Q5.** L''oligopole est :

A. peu d''offreurs
B. un seul offreur
C. beaucoup d''offreurs
D. aucun offreur

---

**Q6.** La monnaie a pour fonction :

A. d''être un intermédiaire des échanges
B. de produire
C. de consommer
D. d''investir

---

**Q7.** La monnaie fiduciaire est :

A. les billets et pièces
B. les chèques
C. les cartes
D. la monnaie électronique

---

**Q8.** La monnaie scripturale est :

A. les dépôts en banque
B. les billets
C. les pièces
D. l''or

---

**Q9.** La banque centrale :

A. émet la monnaie et contrôle le crédit
B. prête aux particuliers
C. produit des biens
D. consomme

---

**Q10.** Le taux d''intérêt est :

A. le prix de l''argent emprunté
B. le prix des biens
C. le salaire
D. le chômage

---

**Q11.** Le crédit est :

A. un prêt d''argent
B. une épargne
C. une consommation
D. une production

---

**Q12.** La banque commerciale :

A. reçoit les dépôts et accorde des crédits
B. émet la monnaie
C. produit des biens
D. fixe les prix

---

**Q13.** Le budget de l''État est :

A. les recettes et dépenses publiques
B. le PIB
C. le chômage
D. l''inflation

---

**Q14.** Les impôts sont :

A. des prélèvements obligatoires
B. des dons
C. des salaires
D. des épargnes

---

**Q15.** L''impôt direct est :

A. prélevé directement sur le revenu
B. inclus dans le prix
C. un don
D. une épargne

---

**Q16.** L''impôt indirect est :

A. inclus dans le prix (TVA)
B. prélevé sur le revenu
C. un don
D. une épargne

---

**Q17.** La politique budgétaire utilise :

A. le budget de l''État
B. le taux d''intérêt
C. la monnaie
D. le crédit

---

**Q18.** La politique monétaire utilise :

A. le taux d''intérêt et la masse monétaire
B. le budget
C. les impôts
D. les dépenses

---

**Q19.** La croissance économique est :

A. l''augmentation de la production
B. la baisse de la production
C. le chômage
D. l''inflation

---

**Q20.** Le développement est :

A. l''amélioration des conditions de vie
B. la croissance
C. le chômage
D. l''inflation

---

## CORRIGÉ

1. le prix varie selon l''offre et la demande
2. le lieu de rencontre de l''offre et de la demande
3. beaucoup d''offreurs et de demandeurs
4. un seul offreur
5. peu d''offreurs
6. d''être un intermédiaire des échanges
7. les billets et pièces
8. les dépôts en banque
9. émet la monnaie et contrôle le crédit
10. le prix de l''argent emprunté
11. un prêt d''argent
12. reçoit les dépôts et accorde des crédits
13. les recettes et dépenses publiques
14. des prélèvements obligatoires
15. prélevé directement sur le revenu
16. inclus dans le prix (TVA)
17. le budget de l''État
18. le taux d''intérêt et la masse monétaire
19. l''augmentation de la production
20. l''amélioration des conditions de vie
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Économie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Économie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0b66b080-97ae-d692-a3f1-cea1627987b0', 'fr-stt-economie-comptabilite', 'Économie', 'GCE Probatoire Économie — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire ÉCONOMIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Économie
**Subject:** Économie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le commerce international est :

A. les échanges entre pays
B. le commerce local
C. la production
D. la consommation

---

**Q2.** L''exportation est :

A. la vente de biens à l''étranger
B. l''achat de biens de l''étranger
C. la production
D. la consommation

---

**Q3.** L''importation est :

A. l''achat de biens de l''étranger
B. la vente à l''étranger
C. la production
D. la consommation

---

**Q4.** La balance commerciale est :

A. exportations - importations
B. PIB - consommation
C. recettes - dépenses
D. actif - passif

---

**Q5.** Le protectionnisme est :

A. la protection de l''économie nationale
B. le libre-échange
C. l''exportation
D. l''importation

---

**Q6.** Le libre-échange est :

A. la libre circulation des biens
B. le protectionnisme
C. l''exportation
D. l''importation

---

**Q7.** La mondialisation est :

A. l''interdépendance des économies
B. l''isolement
C. le protectionnisme
D. la guerre

---

**Q8.** L''entreprise est :

A. une unité de production
B. un consommateur
C. une banque
D. un État

---

**Q9.** Le capital de l''entreprise est :

A. les moyens de production
B. les salaires
C. les impôts
D. les ventes

---

**Q10.** Le travail est :

A. un facteur de production
B. un capital
C. une ressource naturelle
D. un impôt

---

**Q11.** Les facteurs de production sont :

A. le travail et le capital
B. le travail et la consommation
C. le capital et l''épargne
D. la production et la vente

---

**Q12.** La productivité est :

A. la production par unité de facteur
B. la production totale
C. le chômage
D. l''inflation

---

**Q13.** Le salaire est :

A. la rémunération du travail
B. le prix des biens
C. un impôt
D. une épargne

---

**Q14.** Le profit est :

A. la rémunération du capital
B. le salaire
C. un impôt
D. une épargne

---

**Q15.** La rente est :

A. la rémunération de la terre
B. le salaire
C. le profit
D. un impôt

---

**Q16.** Le développement durable vise :

A. à satisfaire les besoins sans compromettre l''avenir
B. la croissance rapide
C. l''exploitation maximale
D. la consommation

---

**Q17.** L''économie informelle est :

A. non enregistrée officiellement
B. officielle
C. légale
D. formelle

---

**Q18.** La microfinance :

A. accorde des petits crédits
B. émet la monnaie
C. produit des biens
D. fixe les prix

---

**Q19.** Le secteur primaire comprend :

A. l''agriculture et l''extraction
B. l''industrie
C. les services
D. le commerce

---

**Q20.** Le secteur secondaire comprend :

A. l''industrie
B. l''agriculture
C. les services
D. le commerce

---

## CORRIGÉ

1. les échanges entre pays
2. la vente de biens à l''étranger
3. l''achat de biens de l''étranger
4. exportations - importations
5. la protection de l''économie nationale
6. la libre circulation des biens
7. l''interdépendance des économies
8. une unité de production
9. les moyens de production
10. un facteur de production
11. le travail et le capital
12. la production par unité de facteur
13. la rémunération du travail
14. la rémunération du capital
15. la rémunération de la terre
16. à satisfaire les besoins sans compromettre l''avenir
17. non enregistrée officiellement
18. accorde des petits crédits
19. l''agriculture et l''extraction
20. l''industrie
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Économie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Économie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0beb5512-04a2-a4c1-6fea-3de5e425902a', 'fr-stt-economie-comptabilite', 'Économie', 'GCE Probatoire Économie — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire ÉCONOMIE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Économie
**Subject:** Économie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ÉTAT ET POLITIQUES ÉCONOMIQUES

**Q1.** Expliquer le rôle économique de l''État.

**Q1.** Décrire le budget de l''État.

**Q1.** Expliquer la politique budgétaire.

**Q1.** Expliquer la politique monétaire.

**Q1.** Analyser les effets de l''inflation sur l''économie.

## SECTION 2: CONCEPTS ÉCONOMIQUES

**Q2.** Expliquer le problème économique fondamental de la rareté.

**Q2.** Distinguer les biens économiques et les biens libres.

**Q2.** Expliquer les notions de besoin, de bien et de service.

**Q2.** Décrire les agents économiques et leurs fonctions.

**Q2.** Expliquer le circuit économique.

## SECTION 3: PRODUCTION ET MARCHÉ

**Q3.** Expliquer les facteurs de production.

**Q3.** Décrire le fonctionnement du marché.

**Q3.** Expliquer la loi de l''offre et de la demande.

**Q3.** Distinguer les différentes structures de marché.

**Q3.** Expliquer la notion de productivité.

## SECTION 4: MONNAIE ET FINANCEMENT

**Q4.** Expliquer les fonctions de la monnaie.

**Q4.** Distinguer les formes de la monnaie.

**Q4.** Expliquer le rôle de la banque centrale.

**Q4.** Décrire le rôle des banques commerciales.

**Q4.** Expliquer le mécanisme du crédit.
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Économie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Économie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f1c6d89f-809a-f800-08b0-9d5d1886f53e', 'fr-stt-economie-comptabilite', 'Économie', 'GCE Probatoire Économie — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire ÉCONOMIE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Économie
**Subject:** Économie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: CONCEPTS ÉCONOMIQUES

**Q1.** Expliquer le problème économique fondamental de la rareté.

**Q1.** Distinguer les biens économiques et les biens libres.

**Q1.** Expliquer les notions de besoin, de bien et de service.

**Q1.** Décrire les agents économiques et leurs fonctions.

**Q1.** Expliquer le circuit économique.

## SECTION 2: PRODUCTION ET MARCHÉ

**Q2.** Expliquer les facteurs de production.

**Q2.** Décrire le fonctionnement du marché.

**Q2.** Expliquer la loi de l''offre et de la demande.

**Q2.** Distinguer les différentes structures de marché.

**Q2.** Expliquer la notion de productivité.

## SECTION 3: MONNAIE ET FINANCEMENT

**Q3.** Expliquer les fonctions de la monnaie.

**Q3.** Distinguer les formes de la monnaie.

**Q3.** Expliquer le rôle de la banque centrale.

**Q3.** Décrire le rôle des banques commerciales.

**Q3.** Expliquer le mécanisme du crédit.

## SECTION 4: ÉTAT ET POLITIQUES ÉCONOMIQUES

**Q4.** Expliquer le rôle économique de l''État.

**Q4.** Décrire le budget de l''État.

**Q4.** Expliquer la politique budgétaire.

**Q4.** Expliquer la politique monétaire.

**Q4.** Analyser les effets de l''inflation sur l''économie.
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Économie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Économie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '17042851-2afd-0a94-ec53-05b93c449323', 'fr-stt-economie-comptabilite', 'Économie', 'GCE Probatoire Économie — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire ÉCONOMIE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Économie
**Subject:** Économie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: PRODUCTION ET MARCHÉ

**Q1.** Expliquer les facteurs de production.

**Q1.** Décrire le fonctionnement du marché.

**Q1.** Expliquer la loi de l''offre et de la demande.

**Q1.** Distinguer les différentes structures de marché.

**Q1.** Expliquer la notion de productivité.

## SECTION 2: MONNAIE ET FINANCEMENT

**Q2.** Expliquer les fonctions de la monnaie.

**Q2.** Distinguer les formes de la monnaie.

**Q2.** Expliquer le rôle de la banque centrale.

**Q2.** Décrire le rôle des banques commerciales.

**Q2.** Expliquer le mécanisme du crédit.

## SECTION 3: ÉTAT ET POLITIQUES ÉCONOMIQUES

**Q3.** Expliquer le rôle économique de l''État.

**Q3.** Décrire le budget de l''État.

**Q3.** Expliquer la politique budgétaire.

**Q3.** Expliquer la politique monétaire.

**Q3.** Analyser les effets de l''inflation sur l''économie.

## SECTION 4: CONCEPTS ÉCONOMIQUES

**Q4.** Expliquer le problème économique fondamental de la rareté.

**Q4.** Distinguer les biens économiques et les biens libres.

**Q4.** Expliquer les notions de besoin, de bien et de service.

**Q4.** Décrire les agents économiques et leurs fonctions.

**Q4.** Expliquer le circuit économique.
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Économie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Probatoire Économie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ec04c120-0cd8-9f0a-34a2-43d81e81ffbf', 'fr-stt-economie-comptabilite', 'Économie', 'GCE Probatoire Économie — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere','terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Probatoire ÉCONOMIE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** Économie
**Subject:** Économie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: MONNAIE ET FINANCEMENT

**Q1.** Expliquer les fonctions de la monnaie.

**Q1.** Distinguer les formes de la monnaie.

**Q1.** Expliquer le rôle de la banque centrale.

**Q1.** Décrire le rôle des banques commerciales.

**Q1.** Expliquer le mécanisme du crédit.

## SECTION 2: ÉTAT ET POLITIQUES ÉCONOMIQUES

**Q2.** Expliquer le rôle économique de l''État.

**Q2.** Décrire le budget de l''État.

**Q2.** Expliquer la politique budgétaire.

**Q2.** Expliquer la politique monétaire.

**Q2.** Analyser les effets de l''inflation sur l''économie.

## SECTION 3: CONCEPTS ÉCONOMIQUES

**Q3.** Expliquer le problème économique fondamental de la rareté.

**Q3.** Distinguer les biens économiques et les biens libres.

**Q3.** Expliquer les notions de besoin, de bien et de service.

**Q3.** Décrire les agents économiques et leurs fonctions.

**Q3.** Expliquer le circuit économique.

## SECTION 4: PRODUCTION ET MARCHÉ

**Q4.** Expliquer les facteurs de production.

**Q4.** Décrire le fonctionnement du marché.

**Q4.** Expliquer la loi de l''offre et de la demande.

**Q4.** Distinguer les différentes structures de marché.

**Q4.** Expliquer la notion de productivité.
', 'paper', 'paper', 'francophone', 'GCE Probatoire',
    '2024', 'teacher_authored', 'GCE Probatoire Économie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Philosophie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '04c113ad-f8c1-1b03-8379-0509888b42cc', 'fr-philo-bac-liberte', 'Philosophie', 'GCE Baccalauréat Philosophie — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['terminale']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Baccalauréat PHILOSOPHIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Philosophie
**Subject:** Philosophie
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La philosophie signifie étymologiquement :

A. l''amour de la sagesse
B. la science
C. la religion
D. la politique

---

**Q2.** Le premier philosophe grec est souvent considéré :

A. Thalès
B. Socrate
C. Platon
D. Aristote

---

**Q3.** Socrate est connu pour :

A. la maïeutique
B. la théorie des idées
C. la logique
D. le doute

---

**Q4.** Platon a écrit :

A. La République
B. L''Éthique à Nicomaque
C. Le Discours de la méthode
D. Le Contrat social

---

**Q5.** Aristote est le fondateur de :

A. la logique
B. le scepticisme
C. l''idéalisme
D. l''empirisme

---

**Q6.** Descartes est connu pour :

A. le cogito « je pense donc je suis »
B. la théorie des idées
C. la logique
D. le contrat social

---

**Q7.** Le cogito de Descartes est :

A. « je pense donc je suis »
B. « connais-toi toi-même »
C. « tout est nombre »
D. « rien ne se perd »

---

**Q8.** Kant a écrit :

A. La Critique de la raison pure
B. La République
C. Le Contrat social
D. L''Éthique

---

**Q9.** Rousseau a écrit :

A. Le Contrat social
B. La République
C. La Critique
D. Le Discours de la méthode

---

**Q10.** L''empirisme affirme que :

A. toute connaissance vient de l''expérience
B. la raison est la seule source
C. les idées sont innées
D. rien n''est connaissable

---

**Q11.** Le rationalisme affirme que :

A. la raison est la source de la connaissance
B. l''expérience est la seule source
C. les idées sont innées
D. rien n''est connaissable

---

**Q12.** Le scepticisme affirme que :

A. la connaissance certaine est impossible
B. tout est connaissable
C. la raison est la source
D. l''expérience est la source

---

**Q13.** L''éthique étudie :

A. les principes moraux
B. la nature
C. la société
D. la connaissance

---

**Q14.** La morale est :

A. l''ensemble des règles de conduite
B. la science
C. la politique
D. la religion

---

**Q15.** Le devoir est :

A. une obligation morale
B. un droit
C. un choix
D. une liberté

---

**Q16.** La liberté est :

A. la capacité d''agir selon sa volonté
B. l''absence de choix
C. une contrainte
D. un devoir

---

**Q17.** Le libre arbitre est :

A. la liberté de choisir
B. l''absence de choix
C. une contrainte
D. un devoir

---

**Q18.** La responsabilité est :

A. répondre de ses actes
B. un droit
C. une liberté
D. un choix

---

**Q19.** La justice est :

A. le respect des droits de chacun
B. la force
C. la vengeance
D. l''égalité

---

**Q20.** L''égalité signifie :

A. les mêmes droits pour tous
B. les mêmes richesses
C. la même force
D. le même âge

---

## CORRIGÉ

1. l''amour de la sagesse
2. Thalès
3. la maïeutique
4. La République
5. la logique
6. le cogito « je pense donc je suis »
7. « je pense donc je suis »
8. La Critique de la raison pure
9. Le Contrat social
10. toute connaissance vient de l''expérience
11. la raison est la source de la connaissance
12. la connaissance certaine est impossible
13. les principes moraux
14. l''ensemble des règles de conduite
15. une obligation morale
16. la capacité d''agir selon sa volonté
17. la liberté de choisir
18. répondre de ses actes
19. le respect des droits de chacun
20. les mêmes droits pour tous
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Philosophie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '418a2048-3104-149e-a1d9-48650fa64abf', 'fr-philo-bac-liberte', 'Philosophie', 'GCE Baccalauréat Philosophie — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['terminale']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Baccalauréat PHILOSOPHIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Philosophie
**Subject:** Philosophie
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''équité est :

A. la justice adaptée aux situations
B. l''égalité stricte
C. la force
D. la vengeance

---

**Q2.** La vérité est :

A. la conformité avec la réalité
B. une opinion
C. une croyance
D. une illusion

---

**Q3.** L''opinion est :

A. une croyance non démontrée
B. une vérité
C. une certitude
D. un fait

---

**Q4.** La démonstration est :

A. une preuve logique
B. une opinion
C. une croyance
D. une illusion

---

**Q5.** Le doute méthodique de Descartes :

A. douter de tout pour trouver la vérité
B. ne jamais douter
C. croire sans preuve
D. refuser la raison

---

**Q6.** La conscience est :

A. la connaissance de soi et du monde
B. l''inconscience
C. la mémoire
D. l''imagination

---

**Q7.** L''inconscient est :

A. ce qui échappe à la conscience
B. la conscience
C. la mémoire
D. l''imagination

---

**Q8.** Freud a développé :

A. la psychanalyse
B. la logique
C. l''idéalisme
D. l''empirisme

---

**Q9.** La perception est :

A. la connaissance par les sens
B. la raison
C. la mémoire
D. l''imagination

---

**Q10.** L''imagination est :

A. la capacité de créer des images
B. la perception
C. la raison
D. la mémoire

---

**Q11.** La mémoire est :

A. la capacité de conserver le passé
B. l''imagination
C. la perception
D. la raison

---

**Q12.** Le langage est :

A. un système de signes pour communiquer
B. la pensée
C. la perception
D. la mémoire

---

**Q13.** Le travail est :

A. une activité de transformation de la nature
B. un loisir
C. une contrainte
D. un jeu

---

**Q14.** La technique est :

A. l''ensemble des moyens de production
B. la science
C. l''art
D. la religion

---

**Q15.** L''art est :

A. la création de la beauté
B. la technique
C. la science
D. la religion

---

**Q16.** La beauté est :

A. ce qui plaît universellement
B. ce qui est utile
C. ce qui est vrai
D. ce qui est bon

---

**Q17.** La religion est :

A. un système de croyances
B. une science
C. une technique
D. un art

---

**Q18.** La foi est :

A. une croyance sans preuve
B. une certitude
C. une démonstration
D. une opinion

---

**Q19.** La politique est :

A. l''organisation de la vie en société
B. la religion
C. la science
D. l''art

---

**Q20.** L''État est :

A. une organisation politique de la société
B. une famille
C. une entreprise
D. une religion

---

## CORRIGÉ

1. la justice adaptée aux situations
2. la conformité avec la réalité
3. une croyance non démontrée
4. une preuve logique
5. douter de tout pour trouver la vérité
6. la connaissance de soi et du monde
7. ce qui échappe à la conscience
8. la psychanalyse
9. la connaissance par les sens
10. la capacité de créer des images
11. la capacité de conserver le passé
12. un système de signes pour communiquer
13. une activité de transformation de la nature
14. l''ensemble des moyens de production
15. la création de la beauté
16. ce qui plaît universellement
17. un système de croyances
18. une croyance sans preuve
19. l''organisation de la vie en société
20. une organisation politique de la société
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Philosophie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a6bcf0ea-8fec-6c20-b459-fdc9d51a1ed3', 'fr-philo-bac-liberte', 'Philosophie', 'GCE Baccalauréat Philosophie — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['terminale']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Baccalauréat PHILOSOPHIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Philosophie
**Subject:** Philosophie
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le contrat social de Rousseau :

A. l''accord des citoyens pour vivre ensemble
B. un contrat commercial
C. une loi
D. un décret

---

**Q2.** La souveraineté est :

A. le pouvoir suprême de l''État
B. un droit
C. une liberté
D. un devoir

---

**Q3.** La démocratie est :

A. le pouvoir du peuple
B. le pouvoir d''un seul
C. le pouvoir des riches
D. le pouvoir des militaires

---

**Q4.** La philosophie africaine :

A. réfléchit sur les réalités africaines
B. est une religion
C. est une science
D. est un art

---

**Q5.** L''ubuntu est :

A. une valeur africaine de solidarité
B. une religion
C. une science
D. un art

---

**Q6.** La sagesse est :

A. la connaissance pratique de la vie
B. la science
C. la richesse
D. le pouvoir

---

**Q7.** Le bonheur est :

A. le but de la vie selon les philosophes
B. la richesse
C. le pouvoir
D. la gloire

---

**Q8.** L''hédonisme affirme que :

A. le plaisir est le bien suprême
B. le devoir est suprême
C. la raison est suprême
D. la foi est suprême

---

**Q9.** Le stoïcisme affirme que :

A. la vertu est le bien suprême
B. le plaisir est suprême
C. la richesse est suprême
D. le pouvoir est suprême

---

**Q10.** L''utilitarisme affirme que :

A. l''utile est le critère du bien
B. le devoir est suprême
C. le plaisir est suprême
D. la foi est suprême

---

**Q11.** L''éthique de Kant repose sur :

A. l''impératif catégorique
B. le plaisir
C. l''utilité
D. la foi

---

**Q12.** L''impératif catégorique de Kant :

A. agis selon une maxime universalisable
B. agis pour ton plaisir
C. agis pour ton intérêt
D. agis par peur

---

**Q13.** La raison est :

A. la faculté de penser et de juger
B. la mémoire
C. l''imagination
D. la perception

---

**Q14.** L''intelligence est :

A. la capacité de comprendre et résoudre
B. la mémoire
C. l''imagination
D. la perception

---

**Q15.** La philosophie des sciences étudie :

A. les fondements de la science
B. la religion
C. l''art
D. la politique

---

**Q16.** La science est :

A. une connaissance méthodique et vérifiable
B. une opinion
C. une croyance
D. une illusion

---

**Q17.** L''hypothèse scientifique est :

A. une supposition à vérifier
B. une certitude
C. une opinion
D. une croyance

---

**Q18.** L''expérience scientifique :

A. vérifie les hypothèses
B. crée des opinions
C. est inutile
D. est une croyance

---

**Q19.** La philosophie morale étudie :

A. les principes du bien et du mal
B. la nature
C. la société
D. la connaissance

---

**Q20.** Le temps est :

A. une réalité mesurable et vécue
B. une illusion
C. un objet
D. une idée

---

## CORRIGÉ

1. l''accord des citoyens pour vivre ensemble
2. le pouvoir suprême de l''État
3. le pouvoir du peuple
4. réfléchit sur les réalités africaines
5. une valeur africaine de solidarité
6. la connaissance pratique de la vie
7. le but de la vie selon les philosophes
8. le plaisir est le bien suprême
9. la vertu est le bien suprême
10. l''utile est le critère du bien
11. l''impératif catégorique
12. agis selon une maxime universalisable
13. la faculté de penser et de juger
14. la capacité de comprendre et résoudre
15. les fondements de la science
16. une connaissance méthodique et vérifiable
17. une supposition à vérifier
18. vérifie les hypothèses
19. les principes du bien et du mal
20. une réalité mesurable et vécue
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Philosophie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '07ce38a9-2eae-bd96-123e-b0f93c4e72a4', 'fr-philo-bac-liberte', 'Philosophie', 'GCE Baccalauréat Philosophie — Sujet structuré — Série 4',
    'french', 'advanced', array['terminale']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Baccalauréat PHILOSOPHIE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Philosophie
**Subject:** Philosophie
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: LA SOCIÉTÉ ET L''ÉTAT

**Q1.** Dissertation : « Pourquoi obéir aux lois ? »

**Q1.** Expliquer la théorie du contrat social de Rousseau.

**Q1.** Dissertation : « L''État garantit-il la justice ? »

**Q1.** Expliquer la notion de souveraineté.

**Q1.** Dissertation : « La démocratie est-elle le meilleur régime ? »

## SECTION 2: LA CONSCIENCE ET L''INCONSCIENT

**Q2.** Dissertation : « La conscience fait-elle de l''homme un être libre ? »

**Q2.** Expliquer la différence entre la conscience et l''inconscient selon Freud.

**Q2.** Commenter : « Je pense donc je suis » de Descartes.

**Q2.** Dissertation : « Peut-on connaître autrui ? »

**Q2.** Expliquer le rôle de la mémoire dans la constitution du sujet.

## SECTION 3: LA RAISON ET LE VRAI

**Q3.** Dissertation : « La vérité dépend-elle de nous ? »

**Q3.** Distinguer la vérité de l''opinion.

**Q3.** Expliquer la méthode cartésienne du doute.

**Q3.** Dissertation : « La science nous libère-t-elle ? »

**Q3.** Commenter : « Connais-toi toi-même » de Socrate.

## SECTION 4: LA MORALE ET LA LIBERTÉ

**Q4.** Dissertation : « Être libre, est-ce faire ce que l''on veut ? »

**Q4.** Expliquer la notion de devoir moral.

**Q4.** Dissertation : « La liberté et la responsabilité sont-elles liées ? »

**Q4.** Commenter l''impératif catégorique de Kant.

**Q4.** Dissertation : « Le bonheur est-il le but de la vie ? »
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Philosophie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bc166e9f-60d5-9eaf-c5c2-0fc50ffb6782', 'fr-philo-bac-liberte', 'Philosophie', 'GCE Baccalauréat Philosophie — Sujet structuré — Série 5',
    'french', 'advanced', array['terminale']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Baccalauréat PHILOSOPHIE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Philosophie
**Subject:** Philosophie
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: LA CONSCIENCE ET L''INCONSCIENT

**Q1.** Dissertation : « La conscience fait-elle de l''homme un être libre ? »

**Q1.** Expliquer la différence entre la conscience et l''inconscient selon Freud.

**Q1.** Commenter : « Je pense donc je suis » de Descartes.

**Q1.** Dissertation : « Peut-on connaître autrui ? »

**Q1.** Expliquer le rôle de la mémoire dans la constitution du sujet.

## SECTION 2: LA RAISON ET LE VRAI

**Q2.** Dissertation : « La vérité dépend-elle de nous ? »

**Q2.** Distinguer la vérité de l''opinion.

**Q2.** Expliquer la méthode cartésienne du doute.

**Q2.** Dissertation : « La science nous libère-t-elle ? »

**Q2.** Commenter : « Connais-toi toi-même » de Socrate.

## SECTION 3: LA MORALE ET LA LIBERTÉ

**Q3.** Dissertation : « Être libre, est-ce faire ce que l''on veut ? »

**Q3.** Expliquer la notion de devoir moral.

**Q3.** Dissertation : « La liberté et la responsabilité sont-elles liées ? »

**Q3.** Commenter l''impératif catégorique de Kant.

**Q3.** Dissertation : « Le bonheur est-il le but de la vie ? »

## SECTION 4: LA SOCIÉTÉ ET L''ÉTAT

**Q4.** Dissertation : « Pourquoi obéir aux lois ? »

**Q4.** Expliquer la théorie du contrat social de Rousseau.

**Q4.** Dissertation : « L''État garantit-il la justice ? »

**Q4.** Expliquer la notion de souveraineté.

**Q4.** Dissertation : « La démocratie est-elle le meilleur régime ? »
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Philosophie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd53ec416-6953-ae26-e006-19c6fc33bb4c', 'fr-philo-bac-liberte', 'Philosophie', 'GCE Baccalauréat Philosophie — Sujet structuré — Série 6',
    'french', 'advanced', array['terminale']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Baccalauréat PHILOSOPHIE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Philosophie
**Subject:** Philosophie
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: LA RAISON ET LE VRAI

**Q1.** Dissertation : « La vérité dépend-elle de nous ? »

**Q1.** Distinguer la vérité de l''opinion.

**Q1.** Expliquer la méthode cartésienne du doute.

**Q1.** Dissertation : « La science nous libère-t-elle ? »

**Q1.** Commenter : « Connais-toi toi-même » de Socrate.

## SECTION 2: LA MORALE ET LA LIBERTÉ

**Q2.** Dissertation : « Être libre, est-ce faire ce que l''on veut ? »

**Q2.** Expliquer la notion de devoir moral.

**Q2.** Dissertation : « La liberté et la responsabilité sont-elles liées ? »

**Q2.** Commenter l''impératif catégorique de Kant.

**Q2.** Dissertation : « Le bonheur est-il le but de la vie ? »

## SECTION 3: LA SOCIÉTÉ ET L''ÉTAT

**Q3.** Dissertation : « Pourquoi obéir aux lois ? »

**Q3.** Expliquer la théorie du contrat social de Rousseau.

**Q3.** Dissertation : « L''État garantit-il la justice ? »

**Q3.** Expliquer la notion de souveraineté.

**Q3.** Dissertation : « La démocratie est-elle le meilleur régime ? »

## SECTION 4: LA CONSCIENCE ET L''INCONSCIENT

**Q4.** Dissertation : « La conscience fait-elle de l''homme un être libre ? »

**Q4.** Expliquer la différence entre la conscience et l''inconscient selon Freud.

**Q4.** Commenter : « Je pense donc je suis » de Descartes.

**Q4.** Dissertation : « Peut-on connaître autrui ? »

**Q4.** Expliquer le rôle de la mémoire dans la constitution du sujet.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Philosophie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b8194cec-cc42-198f-43c2-f22b972ed5ac', 'fr-philo-bac-liberte', 'Philosophie', 'GCE Baccalauréat Philosophie — Sujet structuré — Série 7',
    'french', 'advanced', array['terminale']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Baccalauréat PHILOSOPHIE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Philosophie
**Subject:** Philosophie
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: LA MORALE ET LA LIBERTÉ

**Q1.** Dissertation : « Être libre, est-ce faire ce que l''on veut ? »

**Q1.** Expliquer la notion de devoir moral.

**Q1.** Dissertation : « La liberté et la responsabilité sont-elles liées ? »

**Q1.** Commenter l''impératif catégorique de Kant.

**Q1.** Dissertation : « Le bonheur est-il le but de la vie ? »

## SECTION 2: LA SOCIÉTÉ ET L''ÉTAT

**Q2.** Dissertation : « Pourquoi obéir aux lois ? »

**Q2.** Expliquer la théorie du contrat social de Rousseau.

**Q2.** Dissertation : « L''État garantit-il la justice ? »

**Q2.** Expliquer la notion de souveraineté.

**Q2.** Dissertation : « La démocratie est-elle le meilleur régime ? »

## SECTION 3: LA CONSCIENCE ET L''INCONSCIENT

**Q3.** Dissertation : « La conscience fait-elle de l''homme un être libre ? »

**Q3.** Expliquer la différence entre la conscience et l''inconscient selon Freud.

**Q3.** Commenter : « Je pense donc je suis » de Descartes.

**Q3.** Dissertation : « Peut-on connaître autrui ? »

**Q3.** Expliquer le rôle de la mémoire dans la constitution du sujet.

## SECTION 4: LA RAISON ET LE VRAI

**Q4.** Dissertation : « La vérité dépend-elle de nous ? »

**Q4.** Distinguer la vérité de l''opinion.

**Q4.** Expliquer la méthode cartésienne du doute.

**Q4.** Dissertation : « La science nous libère-t-elle ? »

**Q4.** Commenter : « Connais-toi toi-même » de Socrate.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Sciences Économiques et Sociales — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3126c9c7-4826-3315-595b-791cb9e93b86', 'fr-bac-ses', 'Sciences Économiques et Sociales', 'GCE Baccalauréat Sciences Économiques et Sociales — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['terminale']::text[], array['ses']::text[], 'published',
    '# CAMEROON Baccalauréat SCIENCES ÉCONOMIQUES ET SOCIALES P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Sciences Économiques et Sociales
**Subject:** Sciences Économiques et Sociales
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Les SES étudient :

A. l''économie, la sociologie et la science politique
B. la biologie
C. la chimie
D. la physique

---

**Q2.** La sociologie étudie :

A. les faits sociaux
B. les atomes
C. les cellules
D. les planètes

---

**Q3.** La science politique étudie :

A. le pouvoir et l''État
B. les atomes
C. les cellules
D. les planètes

---

**Q4.** Le fait social selon Durkheim :

A. des manières d''agir extérieures à l''individu
B. des faits biologiques
C. des faits physiques
D. des faits chimiques

---

**Q5.** Durkheim a étudié :

A. le suicide
B. les atomes
C. les cellules
D. les planètes

---

**Q6.** Weber a étudié :

A. l''éthique protestante et le capitalisme
B. le suicide
C. les atomes
D. les cellules

---

**Q7.** Marx a analysé :

A. la lutte des classes
B. le suicide
C. les atomes
D. les planètes

---

**Q8.** La socialisation est :

A. l''apprentissage des normes et valeurs
B. la biologie
C. la chimie
D. la physique

---

**Q9.** Les normes sociales sont :

A. des règles de conduite
B. des lois physiques
C. des réactions chimiques
D. des cellules

---

**Q10.** Les valeurs sont :

A. des idéaux partagés
B. des lois
C. des prix
D. des salaires

---

**Q11.** La stratification sociale est :

A. la hiérarchie des groupes sociaux
B. la géologie
C. la biologie
D. la chimie

---

**Q12.** Les classes sociales selon Marx :

A. bourgeoisie et prolétariat
B. riches et pauvres
C. jeunes et vieux
D. hommes et femmes

---

**Q13.** La mobilité sociale est :

A. le changement de position sociale
B. le déplacement géographique
C. la croissance
D. l''inflation

---

**Q14.** L''ascenseur social est :

A. la mobilité sociale ascendante
B. un moyen de transport
C. une machine
D. un bâtiment

---

**Q15.** La famille est :

A. une institution sociale
B. une entreprise
C. un État
D. une religion

---

**Q16.** La socialisation primaire se fait :

A. dans la famille
B. à l''école
C. au travail
D. à la retraite

---

**Q17.** La socialisation secondaire se fait :

A. à l''école, au travail
B. dans la famille
C. à la naissance
D. dans le ventre

---

**Q18.** L''école est :

A. une instance de socialisation
B. une entreprise
C. un État
D. une religion

---

**Q19.** Les médias sont :

A. des instances de socialisation
B. des entreprises
C. des États
D. des religions

---

**Q20.** La culture est :

A. l''ensemble des valeurs et pratiques d''un groupe
B. la biologie
C. la chimie
D. la physique

---

## CORRIGÉ

1. l''économie, la sociologie et la science politique
2. les faits sociaux
3. le pouvoir et l''État
4. des manières d''agir extérieures à l''individu
5. le suicide
6. l''éthique protestante et le capitalisme
7. la lutte des classes
8. l''apprentissage des normes et valeurs
9. des règles de conduite
10. des idéaux partagés
11. la hiérarchie des groupes sociaux
12. bourgeoisie et prolétariat
13. le changement de position sociale
14. la mobilité sociale ascendante
15. une institution sociale
16. dans la famille
17. à l''école, au travail
18. une instance de socialisation
19. des instances de socialisation
20. l''ensemble des valeurs et pratiques d''un groupe
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Sciences Économiques et Sociales QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Sciences Économiques et Sociales — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f667b080-e8ed-d192-f966-2881a76e45ea', 'fr-bac-ses', 'Sciences Économiques et Sociales', 'GCE Baccalauréat Sciences Économiques et Sociales — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['terminale']::text[], array['ses']::text[], 'published',
    '# CAMEROON Baccalauréat SCIENCES ÉCONOMIQUES ET SOCIALES P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Sciences Économiques et Sociales
**Subject:** Sciences Économiques et Sociales
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La socialisation différenciée :

A. varie selon le genre, la classe
B. est identique pour tous
C. n''existe pas
D. est biologique

---

**Q2.** Le capital social est :

A. le réseau de relations
B. l''argent
C. les biens
D. les machines

---

**Q3.** Le capital culturel est :

A. les connaissances et diplômes
B. l''argent
C. les biens
D. les machines

---

**Q4.** Bourdieu a développé :

A. la notion de capital culturel
B. la théorie des idées
C. la logique
D. le cogito

---

**Q5.** La déviance est :

A. la transgression des normes
B. la conformité
C. la socialisation
D. l''intégration

---

**Q6.** L''anomie selon Durkheim :

A. l''absence de normes
B. l''excès de normes
C. la conformité
D. l''intégration

---

**Q7.** Le contrôle social est :

A. les mécanismes qui assurent la conformité
B. la liberté totale
C. l''anarchie
D. la déviance

---

**Q8.** La délinquance est :

A. la transgression de la loi
B. la conformité
C. la socialisation
D. l''intégration

---

**Q9.** Le chômage est :

A. l''absence d''emploi pour les actifs
B. le travail
C. la production
D. l''inflation

---

**Q10.** Le taux de chômage est :

A. chômeurs / population active
B. chômeurs / population totale
C. employés / population
D. actifs / population

---

**Q11.** Le halo du chômage est :

A. les personnes proches du chômage
B. les employés
C. les retraités
D. les enfants

---

**Q12.** La précarité est :

A. l''instabilité de l''emploi
B. la stabilité
C. la richesse
D. le chômage

---

**Q13.** Le CDI est :

A. un contrat à durée indéterminée
B. un contrat court
C. un stage
D. un intérim

---

**Q14.** Le CDD est :

A. un contrat à durée déterminée
B. un contrat permanent
C. un stage
D. un intérim

---

**Q15.** Le salaire est :

A. la rémunération du travail
B. le profit
C. la rente
D. un impôt

---

**Q16.** Le SMIG est :

A. le salaire minimum
B. le salaire moyen
C. le salaire maximum
D. le profit

---

**Q17.** La productivité est :

A. la production par unité de facteur
B. la production totale
C. le chômage
D. l''inflation

---

**Q18.** La croissance économique est :

A. l''augmentation de la production
B. la baisse de la production
C. le chômage
D. l''inflation

---

**Q19.** Le PIB est :

A. la production totale d''un pays
B. la population
C. le chômage
D. l''inflation

---

**Q20.** Le développement est :

A. l''amélioration des conditions de vie
B. la croissance
C. le chômage
D. l''inflation

---

## CORRIGÉ

1. varie selon le genre, la classe
2. le réseau de relations
3. les connaissances et diplômes
4. la notion de capital culturel
5. la transgression des normes
6. l''absence de normes
7. les mécanismes qui assurent la conformité
8. la transgression de la loi
9. l''absence d''emploi pour les actifs
10. chômeurs / population active
11. les personnes proches du chômage
12. l''instabilité de l''emploi
13. un contrat à durée indéterminée
14. un contrat à durée déterminée
15. la rémunération du travail
16. le salaire minimum
17. la production par unité de facteur
18. l''augmentation de la production
19. la production totale d''un pays
20. l''amélioration des conditions de vie
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Sciences Économiques et Sociales QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Sciences Économiques et Sociales — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '754b25ca-8a85-c685-b12b-97e433746242', 'fr-bac-ses', 'Sciences Économiques et Sociales', 'GCE Baccalauréat Sciences Économiques et Sociales — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['terminale']::text[], array['ses']::text[], 'published',
    '# CAMEROON Baccalauréat SCIENCES ÉCONOMIQUES ET SOCIALES P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Sciences Économiques et Sociales
**Subject:** Sciences Économiques et Sociales
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''IDH mesure :

A. le développement humain
B. la production
C. le chômage
D. l''inflation

---

**Q2.** L''IDH comprend :

A. santé, éducation, revenu
B. production, chômage, inflation
C. population, surface, climat
D. exportations, importations, PIB

---

**Q3.** La mondialisation est :

A. l''interdépendance des économies
B. l''isolement
C. le protectionnisme
D. la guerre

---

**Q4.** Le commerce international :

A. les échanges entre pays
B. le commerce local
C. la production
D. la consommation

---

**Q5.** La balance commerciale est :

A. exportations - importations
B. PIB - consommation
C. recettes - dépenses
D. actif - passif

---

**Q6.** Le protectionnisme :

A. protège l''économie nationale
B. favorise le libre-échange
C. augmente les importations
D. supprime les frontières

---

**Q7.** Le libre-échange :

A. la libre circulation des biens
B. le protectionnisme
C. l''isolement
D. la guerre

---

**Q8.** L''État-providence :

A. intervient dans l''économie et le social
B. ne fait rien
C. produit des biens
D. consomme

---

**Q9.** La protection sociale :

A. protège contre les risques sociaux
B. protège les frontières
C. augmente les impôts
D. réduit les salaires

---

**Q10.** La sécurité sociale :

A. couvre les risques sociaux
B. est une entreprise
C. est un État
D. est une religion

---

**Q11.** Les cotisations sociales :

A. financent la protection sociale
B. sont des salaires
C. sont des profits
D. sont des rentes

---

**Q12.** La redistribution :

A. transfère des revenus
B. produit des biens
C. consomme
D. investit

---

**Q13.** Les inégalités sont :

A. des différences d''accès aux ressources
B. des égalités
C. des libertés
D. des devoirs

---

**Q14.** L''égalité des chances :

A. donne les mêmes opportunités
B. donne les mêmes revenus
C. supprime les différences
D. est impossible

---

**Q15.** La discrimination est :

A. un traitement inégal injustifié
B. une égalité
C. une liberté
D. un devoir

---

**Q16.** Le genre :

A. les rôles sociaux liés au sexe
B. le sexe biologique
C. l''âge
D. la classe

---

**Q17.** Les inégalités de genre :

A. des différences entre hommes et femmes
B. des égalités
C. des libertés
D. des devoirs

---

**Q18.** La pauvreté est :

A. le manque de ressources
B. la richesse
C. l''égalité
D. la liberté

---

**Q19.** Le seuil de pauvreté :

A. le niveau de revenu sous lequel on est pauvre
B. le salaire moyen
C. le PIB
D. le chômage

---

**Q20.** Le développement durable :

A. satisfait les besoins sans compromettre l''avenir
B. la croissance rapide
C. l''exploitation maximale
D. la consommation

---

## CORRIGÉ

1. le développement humain
2. santé, éducation, revenu
3. l''interdépendance des économies
4. les échanges entre pays
5. exportations - importations
6. protège l''économie nationale
7. la libre circulation des biens
8. intervient dans l''économie et le social
9. protège contre les risques sociaux
10. couvre les risques sociaux
11. financent la protection sociale
12. transfère des revenus
13. des différences d''accès aux ressources
14. donne les mêmes opportunités
15. un traitement inégal injustifié
16. les rôles sociaux liés au sexe
17. des différences entre hommes et femmes
18. le manque de ressources
19. le niveau de revenu sous lequel on est pauvre
20. satisfait les besoins sans compromettre l''avenir
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Sciences Économiques et Sociales QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Sciences Économiques et Sociales — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '38f96a9d-fe98-1cd3-6338-56672831fc8f', 'fr-bac-ses', 'Sciences Économiques et Sociales', 'GCE Baccalauréat Sciences Économiques et Sociales — Sujet structuré — Série 4',
    'french', 'advanced', array['terminale']::text[], array['ses']::text[], 'published',
    '# CAMEROON Baccalauréat SCIENCES ÉCONOMIQUES ET SOCIALES SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Sciences Économiques et Sociales
**Subject:** Sciences Économiques et Sociales
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ÉTAT, PROTECTION SOCIALE ET MONDIALISATION

**Q1.** Expliquer le rôle de l''État-providence.

**Q1.** Analyser le système de protection sociale.

**Q1.** Expliquer les effets de la mondialisation sur les économies.

**Q1.** Dissertation : « La mondialisation profite-t-elle à tous ? »

**Q1.** Analyser les inégalités de développement dans le monde.

## SECTION 2: SOCIALISATION ET CULTURE

**Q2.** Expliquer le processus de socialisation et ses instances.

**Q2.** Analyser la socialisation différenciée selon le genre et la classe sociale.

**Q2.** Expliquer la notion de capital culturel selon Bourdieu.

**Q2.** Dissertation : « La socialisation détermine-t-elle entièrement l''individu ? »

**Q2.** Analyser le rôle des médias dans la socialisation.

## SECTION 3: STRATIFICATION ET MOBILITÉ

**Q3.** Expliquer les différentes formes de stratification sociale.

**Q3.** Analyser la mobilité sociale et ses déterminants.

**Q3.** Expliquer la notion de classes sociales selon Marx et Weber.

**Q3.** Dissertation : « L''école favorise-t-elle la mobilité sociale ? »

**Q3.** Analyser les inégalités sociales et leurs causes.

## SECTION 4: ÉCONOMIE ET EMPLOI

**Q4.** Expliquer les causes et conséquences du chômage.

**Q4.** Analyser les formes de l''emploi et la précarité.

**Q4.** Expliquer la notion de productivité et ses effets sur l''emploi.

**Q4.** Dissertation : « La croissance économique crée-t-elle des emplois ? »

**Q4.** Analyser les politiques de l''emploi.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Sciences Économiques et Sociales Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Sciences Économiques et Sociales — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ffe42863-baee-43d2-bb18-4f7f2a921a98', 'fr-bac-ses', 'Sciences Économiques et Sociales', 'GCE Baccalauréat Sciences Économiques et Sociales — Sujet structuré — Série 5',
    'french', 'advanced', array['terminale']::text[], array['ses']::text[], 'published',
    '# CAMEROON Baccalauréat SCIENCES ÉCONOMIQUES ET SOCIALES SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Sciences Économiques et Sociales
**Subject:** Sciences Économiques et Sociales
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: SOCIALISATION ET CULTURE

**Q1.** Expliquer le processus de socialisation et ses instances.

**Q1.** Analyser la socialisation différenciée selon le genre et la classe sociale.

**Q1.** Expliquer la notion de capital culturel selon Bourdieu.

**Q1.** Dissertation : « La socialisation détermine-t-elle entièrement l''individu ? »

**Q1.** Analyser le rôle des médias dans la socialisation.

## SECTION 2: STRATIFICATION ET MOBILITÉ

**Q2.** Expliquer les différentes formes de stratification sociale.

**Q2.** Analyser la mobilité sociale et ses déterminants.

**Q2.** Expliquer la notion de classes sociales selon Marx et Weber.

**Q2.** Dissertation : « L''école favorise-t-elle la mobilité sociale ? »

**Q2.** Analyser les inégalités sociales et leurs causes.

## SECTION 3: ÉCONOMIE ET EMPLOI

**Q3.** Expliquer les causes et conséquences du chômage.

**Q3.** Analyser les formes de l''emploi et la précarité.

**Q3.** Expliquer la notion de productivité et ses effets sur l''emploi.

**Q3.** Dissertation : « La croissance économique crée-t-elle des emplois ? »

**Q3.** Analyser les politiques de l''emploi.

## SECTION 4: ÉTAT, PROTECTION SOCIALE ET MONDIALISATION

**Q4.** Expliquer le rôle de l''État-providence.

**Q4.** Analyser le système de protection sociale.

**Q4.** Expliquer les effets de la mondialisation sur les économies.

**Q4.** Dissertation : « La mondialisation profite-t-elle à tous ? »

**Q4.** Analyser les inégalités de développement dans le monde.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Sciences Économiques et Sociales Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Sciences Économiques et Sociales — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '546c1c3b-1eed-7c25-db1f-1a250acd23b2', 'fr-bac-ses', 'Sciences Économiques et Sociales', 'GCE Baccalauréat Sciences Économiques et Sociales — Sujet structuré — Série 6',
    'french', 'advanced', array['terminale']::text[], array['ses']::text[], 'published',
    '# CAMEROON Baccalauréat SCIENCES ÉCONOMIQUES ET SOCIALES SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Sciences Économiques et Sociales
**Subject:** Sciences Économiques et Sociales
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: STRATIFICATION ET MOBILITÉ

**Q1.** Expliquer les différentes formes de stratification sociale.

**Q1.** Analyser la mobilité sociale et ses déterminants.

**Q1.** Expliquer la notion de classes sociales selon Marx et Weber.

**Q1.** Dissertation : « L''école favorise-t-elle la mobilité sociale ? »

**Q1.** Analyser les inégalités sociales et leurs causes.

## SECTION 2: ÉCONOMIE ET EMPLOI

**Q2.** Expliquer les causes et conséquences du chômage.

**Q2.** Analyser les formes de l''emploi et la précarité.

**Q2.** Expliquer la notion de productivité et ses effets sur l''emploi.

**Q2.** Dissertation : « La croissance économique crée-t-elle des emplois ? »

**Q2.** Analyser les politiques de l''emploi.

## SECTION 3: ÉTAT, PROTECTION SOCIALE ET MONDIALISATION

**Q3.** Expliquer le rôle de l''État-providence.

**Q3.** Analyser le système de protection sociale.

**Q3.** Expliquer les effets de la mondialisation sur les économies.

**Q3.** Dissertation : « La mondialisation profite-t-elle à tous ? »

**Q3.** Analyser les inégalités de développement dans le monde.

## SECTION 4: SOCIALISATION ET CULTURE

**Q4.** Expliquer le processus de socialisation et ses instances.

**Q4.** Analyser la socialisation différenciée selon le genre et la classe sociale.

**Q4.** Expliquer la notion de capital culturel selon Bourdieu.

**Q4.** Dissertation : « La socialisation détermine-t-elle entièrement l''individu ? »

**Q4.** Analyser le rôle des médias dans la socialisation.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Sciences Économiques et Sociales Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Sciences Économiques et Sociales — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '43830d73-63e9-7290-733e-3c363cf84bf6', 'fr-bac-ses', 'Sciences Économiques et Sociales', 'GCE Baccalauréat Sciences Économiques et Sociales — Sujet structuré — Série 7',
    'french', 'advanced', array['terminale']::text[], array['ses']::text[], 'published',
    '# CAMEROON Baccalauréat SCIENCES ÉCONOMIQUES ET SOCIALES SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Sciences Économiques et Sociales
**Subject:** Sciences Économiques et Sociales
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ÉCONOMIE ET EMPLOI

**Q1.** Expliquer les causes et conséquences du chômage.

**Q1.** Analyser les formes de l''emploi et la précarité.

**Q1.** Expliquer la notion de productivité et ses effets sur l''emploi.

**Q1.** Dissertation : « La croissance économique crée-t-elle des emplois ? »

**Q1.** Analyser les politiques de l''emploi.

## SECTION 2: ÉTAT, PROTECTION SOCIALE ET MONDIALISATION

**Q2.** Expliquer le rôle de l''État-providence.

**Q2.** Analyser le système de protection sociale.

**Q2.** Expliquer les effets de la mondialisation sur les économies.

**Q2.** Dissertation : « La mondialisation profite-t-elle à tous ? »

**Q2.** Analyser les inégalités de développement dans le monde.

## SECTION 3: SOCIALISATION ET CULTURE

**Q3.** Expliquer le processus de socialisation et ses instances.

**Q3.** Analyser la socialisation différenciée selon le genre et la classe sociale.

**Q3.** Expliquer la notion de capital culturel selon Bourdieu.

**Q3.** Dissertation : « La socialisation détermine-t-elle entièrement l''individu ? »

**Q3.** Analyser le rôle des médias dans la socialisation.

## SECTION 4: STRATIFICATION ET MOBILITÉ

**Q4.** Expliquer les différentes formes de stratification sociale.

**Q4.** Analyser la mobilité sociale et ses déterminants.

**Q4.** Expliquer la notion de classes sociales selon Marx et Weber.

**Q4.** Dissertation : « L''école favorise-t-elle la mobilité sociale ? »

**Q4.** Analyser les inégalités sociales et leurs causes.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Sciences Économiques et Sociales Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Mathématiques Appliquées — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0f8fb9fe-7950-d8ee-1e9e-8feb9c008d23', 'fr-bac-maths-appliquees', 'Mathématiques Appliquées', 'GCE Baccalauréat Mathématiques Appliquées — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Baccalauréat MATHÉMATIQUES APPLIQUÉES P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Mathématiques Appliquées
**Subject:** Mathématiques Appliquées
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La dérivée de $x^3$ est :

A. $3x^2$
B. $x^2$
C. $3x$
D. $3x^3$

---

**Q2.** La dérivée de $\sin(x)$ est :

A. $\cos(x)$
B. $-\cos(x)$
C. $\sin(x)$
D. $-\sin(x)$

---

**Q3.** La dérivée de $\cos(x)$ est :

A. $-\sin(x)$
B. $\sin(x)$
C. $\cos(x)$
D. $-\cos(x)$

---

**Q4.** La dérivée de $e^x$ est :

A. $e^x$
B. $x e^x$
C. $e^{x-1}$
D. $\ln(x)$

---

**Q5.** La dérivée de $\ln(x)$ est :

A. $\frac{1}{x}$
B. $x$
C. $\ln(x)$
D. $\frac{1}{\ln(x)}$

---

**Q6.** L''intégrale de $x^2$ est :

A. $\frac{x^3}{3} + C$
B. $\frac{x^2}{2} + C$
C. $x^3 + C$
D. $2x + C$

---

**Q7.** L''intégrale de $\cos(x)$ est :

A. $\sin(x) + C$
B. $-\sin(x) + C$
C. $\cos(x) + C$
D. $-\cos(x) + C$

---

**Q8.** L''intégrale de $\frac{1}{x}$ est :

A. $\ln|x| + C$
B. $x + C$
C. $\frac{1}{x^2} + C$
D. $e^x + C$

---

**Q9.** La limite de $\frac{\sin(x)}{x}$ quand $x \to 0$ est :

A. 1
B. 0
C. $\infty$
D. n''existe pas

---

**Q10.** La limite de $\frac{1}{x}$ quand $x \to \infty$ est :

A. 0
B. $\infty$
C. 1
D. n''existe pas

---

**Q11.** La fonction $f(x) = x^2$ est :

A. paire
B. impaire
C. ni paire ni impaire
D. constante

---

**Q12.** La fonction $f(x) = x^3$ est :

A. impaire
B. paire
C. ni paire ni impaire
D. constante

---

**Q13.** La dérivée de $x^n$ est :

A. $n x^{n-1}$
B. $x^{n-1}$
C. $n x^n$
D. $(n-1)x^n$

---

**Q14.** L''équation $x^2 - 4 = 0$ a pour solutions :

A. $x = 2$ et $x = -2$
B. $x = 2$
C. $x = 4$
D. $x = 16$

---

**Q15.** Le discriminant de $ax^2 + bx + c = 0$ est :

A. $b^2 - 4ac$
B. $b^2 + 4ac$
C. $4ac - b^2$
D. $b - 4ac$

---

**Q16.** Si $\Delta > 0$, l''équation du second degré a :

A. deux solutions réelles
B. une solution
C. aucune solution
D. une solution complexe

---

**Q17.** Si $\Delta = 0$, l''équation du second degré a :

A. une solution double
B. deux solutions
C. aucune solution
D. deux solutions complexes

---

**Q18.** Si $\Delta < 0$, l''équation du second degré a :

A. aucune solution réelle
B. deux solutions réelles
C. une solution
D. une solution double

---

**Q19.** La dérivée de $\tan(x)$ est :

A. $\frac{1}{\cos^2(x)}$
B. $\sin(x)$
C. $\cos(x)$
D. $-\frac{1}{\sin^2(x)}$

---

**Q20.** L''intégrale de $e^x$ est :

A. $e^x + C$
B. $\frac{e^x}{x} + C$
C. $x e^x + C$
D. $\ln(x) + C$

---

## CORRIGÉ

1. $3x^2$
2. $\cos(x)$
3. $-\sin(x)$
4. $e^x$
5. $\frac{1}{x}$
6. $\frac{x^3}{3} + C$
7. $\sin(x) + C$
8. $\ln|x| + C$
9. 1
10. 0
11. paire
12. impaire
13. $n x^{n-1}$
14. $x = 2$ et $x = -2$
15. $b^2 - 4ac$
16. deux solutions réelles
17. une solution double
18. aucune solution réelle
19. $\frac{1}{\cos^2(x)}$
20. $e^x + C$
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Mathématiques Appliquées QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Mathématiques Appliquées — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '15455566-861f-036c-278e-f9223d3b1aa1', 'fr-bac-maths-appliquees', 'Mathématiques Appliquées', 'GCE Baccalauréat Mathématiques Appliquées — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Baccalauréat MATHÉMATIQUES APPLIQUÉES P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Mathématiques Appliquées
**Subject:** Mathématiques Appliquées
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La fonction exponentielle $e^x$ est :

A. strictement croissante
B. strictement décroissante
C. constante
D. périodique

---

**Q2.** La fonction logarithme $\ln(x)$ est définie pour :

A. $x > 0$
B. $x \geq 0$
C. $x \neq 0$
D. tout $x$

---

**Q3.** $\ln(1)$ est égal à :

A. 0
B. 1
C. $e$
D. $-1$

---

**Q4.** $\ln(e)$ est égal à :

A. 1
B. 0
C. $e$
D. $-1$

---

**Q5.** $e^0$ est égal à :

A. 1
B. 0
C. $e$
D. $-1$

---

**Q6.** La dérivée de $\frac{1}{x}$ est :

A. $-\frac{1}{x^2}$
B. $\frac{1}{x^2}$
C. $-\frac{1}{x}$
D. $\ln(x)$

---

**Q7.** L''intégrale de $\sin(x)$ est :

A. $-\cos(x) + C$
B. $\cos(x) + C$
C. $\sin(x) + C$
D. $-\sin(x) + C$

---

**Q8.** La limite de $\frac{x^2 - 1}{x - 1}$ quand $x \to 1$ est :

A. 2
B. 0
C. 1
D. $\infty$

---

**Q9.** La fonction $f(x) = \frac{1}{x}$ est :

A. impaire
B. paire
C. ni paire ni impaire
D. constante

---

**Q10.** Le nombre dérivé de $f$ en $a$ est :

A. $\lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$
B. $f(a)$
C. $\frac{f(a)}{a}$
D. $f''(a) \times a$

---

**Q11.** La tangente à la courbe en $a$ a pour pente :

A. $f''(a)$
B. $f(a)$
C. $a$
D. $f''(a) \times a$

---

**Q12.** L''équation de la tangente en $a$ est :

A. $y = f''(a)(x - a) + f(a)$
B. $y = f(a)x$
C. $y = f''(a)x$
D. $y = f(a) + x$

---

**Q13.** La fonction $f(x) = x^2$ est croissante sur :

A. $[0, +\infty[$
B. $]-\infty, 0]$
C. $\mathbb{R}$
D. $]-\infty, +\infty[$

---

**Q14.** La fonction $f(x) = x^2$ est décroissante sur :

A. $]-\infty, 0]$
B. $[0, +\infty[$
C. $\mathbb{R}$
D. nulle part

---

**Q15.** Le point d''inflexion est :

A. où la courbure change
B. le maximum
C. le minimum
D. l''origine

---

**Q16.** La dérivée seconde de $x^3$ est :

A. $6x$
B. $3x^2$
C. $3x$
D. $6$

---

**Q17.** La fonction $f(x) = e^x$ a pour limite en $+\infty$ :

A. $+\infty$
B. 0
C. 1
D. $e$

---

**Q18.** La fonction $f(x) = e^x$ a pour limite en $-\infty$ :

A. 0
B. $+\infty$
C. 1
D. $e$

---

**Q19.** La fonction $f(x) = \ln(x)$ a pour limite en $+\infty$ :

A. $+\infty$
B. 0
C. 1
D. $-\infty$

---

**Q20.** La fonction $f(x) = \ln(x)$ a pour limite en $0^+$ :

A. $-\infty$
B. $+\infty$
C. 0
D. 1

---

## CORRIGÉ

1. strictement croissante
2. $x > 0$
3. 0
4. 1
5. 1
6. $-\frac{1}{x^2}$
7. $-\cos(x) + C$
8. 2
9. impaire
10. $\lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$
11. $f''(a)$
12. $y = f''(a)(x - a) + f(a)$
13. $[0, +\infty[$
14. $]-\infty, 0]$
15. où la courbure change
16. $6x$
17. $+\infty$
18. 0
19. $+\infty$
20. $-\infty$
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Mathématiques Appliquées QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Mathématiques Appliquées — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8a5fca89-4a0e-1afc-07b6-c7dbcc0cb9f4', 'fr-bac-maths-appliquees', 'Mathématiques Appliquées', 'GCE Baccalauréat Mathématiques Appliquées — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Baccalauréat MATHÉMATIQUES APPLIQUÉES P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Mathématiques Appliquées
**Subject:** Mathématiques Appliquées
**Exam:** Baccalauréat

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''asymptote horizontale de $f(x) = \frac{1}{x}$ est :

A. $y = 0$
B. $x = 0$
C. $y = 1$
D. $y = x$

---

**Q2.** L''asymptote verticale de $f(x) = \frac{1}{x}$ est :

A. $x = 0$
B. $y = 0$
C. $x = 1$
D. $y = 1$

---

**Q3.** La suite $u_n = 2n + 1$ est :

A. arithmétique
B. géométrique
C. ni l''un ni l''autre
D. constante

---

**Q4.** La suite $u_n = 3 \times 2^n$ est :

A. géométrique
B. arithmétique
C. ni l''un ni l''autre
D. constante

---

**Q5.** La raison de la suite $u_n = 2n + 1$ est :

A. 2
B. 1
C. 3
D. n

---

**Q6.** La raison de la suite $u_n = 3 \times 2^n$ est :

A. 2
B. 3
C. 6
D. n

---

**Q7.** La somme des $n$ premiers termes d''une suite arithmétique de raison $r$ est :

A. $\frac{n(u_1 + u_n)}{2}$
B. $n \times r$
C. $u_1 \times r^n$
D. $\frac{n}{2} \times r$

---

**Q8.** La somme des $n$ premiers termes d''une suite géométrique de raison $q$ est :

A. $u_1 \frac{1 - q^n}{1 - q}$
B. $n \times u_1$
C. $u_1 \times q^n$
D. $\frac{n(u_1 + u_n)}{2}$

---

**Q9.** La probabilité d''un événement certain est :

A. 1
B. 0
C. 0,5
D. $\infty$

---

**Q10.** La probabilité d''un événement impossible est :

A. 0
B. 1
C. 0,5
D. $\infty$

---

**Q11.** La somme des probabilités d''un univers est :

A. 1
B. 0
C. 0,5
D. $\infty$

---

**Q12.** Deux événements incompatibles :

A. ne peuvent pas se produire ensemble
B. se produisent toujours ensemble
C. sont certains
D. sont impossibles

---

**Q13.** La probabilité de $A \cup B$ si $A$ et $B$ sont incompatibles est :

A. $P(A) + P(B)$
B. $P(A) \times P(B)$
C. $P(A) - P(B)$
D. $P(A) / P(B)$

---

**Q14.** La probabilité conditionnelle $P(A|B)$ est :

A. $\frac{P(A \cap B)}{P(B)}$
B. $P(A) \times P(B)$
C. $P(A) + P(B)$
D. $\frac{P(B)}{P(A)}$

---

**Q15.** L''espérance d''une variable aléatoire est :

A. la moyenne pondérée
B. le maximum
C. le minimum
D. la variance

---

**Q16.** La variance mesure :

A. la dispersion
B. la moyenne
C. le maximum
D. le minimum

---

**Q17.** L''écart-type est :

A. la racine carrée de la variance
B. la variance
C. la moyenne
D. le maximum

---

**Q18.** La loi binomiale $B(n, p)$ a pour espérance :

A. $np$
B. $n + p$
C. $n - p$
D. $p^n$

---

**Q19.** La loi normale est :

A. une loi continue
B. une loi discrète
C. une loi constante
D. une loi nulle

---

**Q20.** La courbe de la loi normale est :

A. en cloche
B. linéaire
C. exponentielle
D. constante

---

## CORRIGÉ

1. $y = 0$
2. $x = 0$
3. arithmétique
4. géométrique
5. 2
6. 2
7. $\frac{n(u_1 + u_n)}{2}$
8. $u_1 \frac{1 - q^n}{1 - q}$
9. 1
10. 0
11. 1
12. ne peuvent pas se produire ensemble
13. $P(A) + P(B)$
14. $\frac{P(A \cap B)}{P(B)}$
15. la moyenne pondérée
16. la dispersion
17. la racine carrée de la variance
18. $np$
19. une loi continue
20. en cloche
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Mathématiques Appliquées QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Mathématiques Appliquées — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '70ed2dfd-630f-0963-acf0-9e5e36039c08', 'fr-bac-maths-appliquees', 'Mathématiques Appliquées', 'GCE Baccalauréat Mathématiques Appliquées — Sujet structuré — Série 4',
    'french', 'advanced', array['terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Baccalauréat MATHÉMATIQUES APPLIQUÉES SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Mathématiques Appliquées
**Subject:** Mathématiques Appliquées
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: APPLICATIONS

**Q1.** Un capital de 100 000 FCFA est placé à 5% par an. Calculer la valeur acquise après 3 ans (intérêts composés).

**Q1.** Un emprunt de 500 000 FCFA est remboursé par annuités constantes sur 5 ans à 6%. Calculer l''annuité.

**Q1.** Modéliser une situation économique par une fonction et l''optimiser.

**Q1.** Calculer le coût marginal à partir d''une fonction de coût total.

**Q1.** Résoudre un problème d''optimisation : maximiser une aire sous contrainte.

## SECTION 2: ANALYSE

**Q2.** Étudier les variations de la fonction $f(x) = x^3 - 3x + 2$.

**Q2.** Calculer $\lim_{x \to +\infty} \frac{2x^2 + 3x - 1}{x^2 + 1}$.

**Q2.** Calculer l''intégrale $\int_0^1 (3x^2 + 2x) \, dx$.

**Q2.** Déterminer l''équation de la tangente à la courbe de $f(x) = \ln(x)$ au point d''abscisse 1.

**Q2.** Étudier la fonction $f(x) = \frac{x}{x + 1}$ et tracer sa courbe.

## SECTION 3: ALGÈBRE ET SUITES

**Q3.** Résoudre l''équation $x^2 - 5x + 6 = 0$.

**Q3.** Étudier la suite $u_n = 2n + 3$ : nature, raison, terme général.

**Q3.** Étudier la suite $u_n = 3 \times 2^n$ : nature, raison, somme des n premiers termes.

**Q3.** Résoudre le système : $\begin{cases} x + 2y = 5 \\ 3x - y = 1 \end{cases}$.

**Q3.** Factoriser et résoudre : $x^3 - 4x = 0$.

## SECTION 4: PROBABILITÉS ET STATISTIQUES

**Q4.** Une urne contient 5 boules rouges et 3 bleues. On tire 2 boules sans remise. Calculer la probabilité d''obtenir 2 boules rouges.

**Q4.** Une variable aléatoire X suit la loi binomiale B(10 ; 0,4). Calculer son espérance et sa variance.

**Q4.** Calculer la moyenne, la variance et l''écart-type de la série : 2, 4, 6, 8, 10.

**Q4.** Deux événements A et B sont indépendants avec P(A) = 0,3 et P(B) = 0,5. Calculer P(A ∩ B).

**Q4.** Une loi normale a pour moyenne 50 et écart-type 10. Calculer P(40 ≤ X ≤ 60).
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Mathématiques Appliquées Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Mathématiques Appliquées — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '883dc5e2-5e42-e0ef-684e-c42b1a745fd9', 'fr-bac-maths-appliquees', 'Mathématiques Appliquées', 'GCE Baccalauréat Mathématiques Appliquées — Sujet structuré — Série 5',
    'french', 'advanced', array['terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Baccalauréat MATHÉMATIQUES APPLIQUÉES SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Mathématiques Appliquées
**Subject:** Mathématiques Appliquées
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ANALYSE

**Q1.** Étudier les variations de la fonction $f(x) = x^3 - 3x + 2$.

**Q1.** Calculer $\lim_{x \to +\infty} \frac{2x^2 + 3x - 1}{x^2 + 1}$.

**Q1.** Calculer l''intégrale $\int_0^1 (3x^2 + 2x) \, dx$.

**Q1.** Déterminer l''équation de la tangente à la courbe de $f(x) = \ln(x)$ au point d''abscisse 1.

**Q1.** Étudier la fonction $f(x) = \frac{x}{x + 1}$ et tracer sa courbe.

## SECTION 2: ALGÈBRE ET SUITES

**Q2.** Résoudre l''équation $x^2 - 5x + 6 = 0$.

**Q2.** Étudier la suite $u_n = 2n + 3$ : nature, raison, terme général.

**Q2.** Étudier la suite $u_n = 3 \times 2^n$ : nature, raison, somme des n premiers termes.

**Q2.** Résoudre le système : $\begin{cases} x + 2y = 5 \\ 3x - y = 1 \end{cases}$.

**Q2.** Factoriser et résoudre : $x^3 - 4x = 0$.

## SECTION 3: PROBABILITÉS ET STATISTIQUES

**Q3.** Une urne contient 5 boules rouges et 3 bleues. On tire 2 boules sans remise. Calculer la probabilité d''obtenir 2 boules rouges.

**Q3.** Une variable aléatoire X suit la loi binomiale B(10 ; 0,4). Calculer son espérance et sa variance.

**Q3.** Calculer la moyenne, la variance et l''écart-type de la série : 2, 4, 6, 8, 10.

**Q3.** Deux événements A et B sont indépendants avec P(A) = 0,3 et P(B) = 0,5. Calculer P(A ∩ B).

**Q3.** Une loi normale a pour moyenne 50 et écart-type 10. Calculer P(40 ≤ X ≤ 60).

## SECTION 4: APPLICATIONS

**Q4.** Un capital de 100 000 FCFA est placé à 5% par an. Calculer la valeur acquise après 3 ans (intérêts composés).

**Q4.** Un emprunt de 500 000 FCFA est remboursé par annuités constantes sur 5 ans à 6%. Calculer l''annuité.

**Q4.** Modéliser une situation économique par une fonction et l''optimiser.

**Q4.** Calculer le coût marginal à partir d''une fonction de coût total.

**Q4.** Résoudre un problème d''optimisation : maximiser une aire sous contrainte.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Mathématiques Appliquées Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Mathématiques Appliquées — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '28292bcb-670e-4cfd-d60e-4668717d610c', 'fr-bac-maths-appliquees', 'Mathématiques Appliquées', 'GCE Baccalauréat Mathématiques Appliquées — Sujet structuré — Série 6',
    'french', 'advanced', array['terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Baccalauréat MATHÉMATIQUES APPLIQUÉES SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Mathématiques Appliquées
**Subject:** Mathématiques Appliquées
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: ALGÈBRE ET SUITES

**Q1.** Résoudre l''équation $x^2 - 5x + 6 = 0$.

**Q1.** Étudier la suite $u_n = 2n + 3$ : nature, raison, terme général.

**Q1.** Étudier la suite $u_n = 3 \times 2^n$ : nature, raison, somme des n premiers termes.

**Q1.** Résoudre le système : $\begin{cases} x + 2y = 5 \\ 3x - y = 1 \end{cases}$.

**Q1.** Factoriser et résoudre : $x^3 - 4x = 0$.

## SECTION 2: PROBABILITÉS ET STATISTIQUES

**Q2.** Une urne contient 5 boules rouges et 3 bleues. On tire 2 boules sans remise. Calculer la probabilité d''obtenir 2 boules rouges.

**Q2.** Une variable aléatoire X suit la loi binomiale B(10 ; 0,4). Calculer son espérance et sa variance.

**Q2.** Calculer la moyenne, la variance et l''écart-type de la série : 2, 4, 6, 8, 10.

**Q2.** Deux événements A et B sont indépendants avec P(A) = 0,3 et P(B) = 0,5. Calculer P(A ∩ B).

**Q2.** Une loi normale a pour moyenne 50 et écart-type 10. Calculer P(40 ≤ X ≤ 60).

## SECTION 3: APPLICATIONS

**Q3.** Un capital de 100 000 FCFA est placé à 5% par an. Calculer la valeur acquise après 3 ans (intérêts composés).

**Q3.** Un emprunt de 500 000 FCFA est remboursé par annuités constantes sur 5 ans à 6%. Calculer l''annuité.

**Q3.** Modéliser une situation économique par une fonction et l''optimiser.

**Q3.** Calculer le coût marginal à partir d''une fonction de coût total.

**Q3.** Résoudre un problème d''optimisation : maximiser une aire sous contrainte.

## SECTION 4: ANALYSE

**Q4.** Étudier les variations de la fonction $f(x) = x^3 - 3x + 2$.

**Q4.** Calculer $\lim_{x \to +\infty} \frac{2x^2 + 3x - 1}{x^2 + 1}$.

**Q4.** Calculer l''intégrale $\int_0^1 (3x^2 + 2x) \, dx$.

**Q4.** Déterminer l''équation de la tangente à la courbe de $f(x) = \ln(x)$ au point d''abscisse 1.

**Q4.** Étudier la fonction $f(x) = \frac{x}{x + 1}$ et tracer sa courbe.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Mathématiques Appliquées Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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


-- GCE Baccalauréat Mathématiques Appliquées — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5cf4c5a1-9743-339f-9951-7f11b6135394', 'fr-bac-maths-appliquees', 'Mathématiques Appliquées', 'GCE Baccalauréat Mathématiques Appliquées — Sujet structuré — Série 7',
    'french', 'advanced', array['terminale']::text[], array['acc','cg','fig','ses']::text[], 'published',
    '# CAMEROON Baccalauréat MATHÉMATIQUES APPLIQUÉES SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Terminale
**Series:** Mathématiques Appliquées
**Subject:** Mathématiques Appliquées
**Exam:** Baccalauréat

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1: PROBABILITÉS ET STATISTIQUES

**Q1.** Une urne contient 5 boules rouges et 3 bleues. On tire 2 boules sans remise. Calculer la probabilité d''obtenir 2 boules rouges.

**Q1.** Une variable aléatoire X suit la loi binomiale B(10 ; 0,4). Calculer son espérance et sa variance.

**Q1.** Calculer la moyenne, la variance et l''écart-type de la série : 2, 4, 6, 8, 10.

**Q1.** Deux événements A et B sont indépendants avec P(A) = 0,3 et P(B) = 0,5. Calculer P(A ∩ B).

**Q1.** Une loi normale a pour moyenne 50 et écart-type 10. Calculer P(40 ≤ X ≤ 60).

## SECTION 2: APPLICATIONS

**Q2.** Un capital de 100 000 FCFA est placé à 5% par an. Calculer la valeur acquise après 3 ans (intérêts composés).

**Q2.** Un emprunt de 500 000 FCFA est remboursé par annuités constantes sur 5 ans à 6%. Calculer l''annuité.

**Q2.** Modéliser une situation économique par une fonction et l''optimiser.

**Q2.** Calculer le coût marginal à partir d''une fonction de coût total.

**Q2.** Résoudre un problème d''optimisation : maximiser une aire sous contrainte.

## SECTION 3: ANALYSE

**Q3.** Étudier les variations de la fonction $f(x) = x^3 - 3x + 2$.

**Q3.** Calculer $\lim_{x \to +\infty} \frac{2x^2 + 3x - 1}{x^2 + 1}$.

**Q3.** Calculer l''intégrale $\int_0^1 (3x^2 + 2x) \, dx$.

**Q3.** Déterminer l''équation de la tangente à la courbe de $f(x) = \ln(x)$ au point d''abscisse 1.

**Q3.** Étudier la fonction $f(x) = \frac{x}{x + 1}$ et tracer sa courbe.

## SECTION 4: ALGÈBRE ET SUITES

**Q4.** Résoudre l''équation $x^2 - 5x + 6 = 0$.

**Q4.** Étudier la suite $u_n = 2n + 3$ : nature, raison, terme général.

**Q4.** Étudier la suite $u_n = 3 \times 2^n$ : nature, raison, somme des n premiers termes.

**Q4.** Résoudre le système : $\begin{cases} x + 2y = 5 \\ 3x - y = 1 \end{cases}$.

**Q4.** Factoriser et résoudre : $x^3 - 4x = 0$.
', 'paper', 'paper', 'francophone', 'GCE Baccalauréat',
    '2024', 'teacher_authored', 'GCE Baccalauréat Mathématiques Appliquées Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
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

COMMIT;

NOTIFY pgrst, 'reload schema';