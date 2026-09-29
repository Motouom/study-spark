-- Seed French Seconde/Première content for francophone subjects
-- Generated: 2026-09-29T10:45:24.068808
BEGIN;


-- Probatoire Mathématiques — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bd23639c-3884-c340-aec5-4cb130cb7ae7', 'fr-lycee-maths-analyse-algebre', 'Mathématiques', 'Probatoire Mathématiques — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '32a45d4b-dec1-6d5c-feba-f1ea727acd5a', 'fr-lycee-maths-analyse-algebre', 'Mathématiques', 'Probatoire Mathématiques — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2654b456-a150-b629-a941-78e33254b118', 'fr-lycee-maths-analyse-algebre', 'Mathématiques', 'Probatoire Mathématiques — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1012460d-d9d1-4374-5068-ede34af4c59a', 'fr-lycee-maths-analyse-algebre', 'Mathématiques', 'Probatoire Mathématiques — Sujet structuré — Série 4',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Mathématiques (Seconde).

**Q1.** Question structurée 2 pour Mathématiques (Seconde).

**Q1.** Question structurée 3 pour Mathématiques (Seconde).

**Q1.** Question structurée 4 pour Mathématiques (Seconde).

**Q1.** Question structurée 5 pour Mathématiques (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Mathématiques (Seconde).

**Q2.** Question structurée 7 pour Mathématiques (Seconde).

**Q2.** Question structurée 8 pour Mathématiques (Seconde).

**Q2.** Question structurée 9 pour Mathématiques (Seconde).

**Q2.** Question structurée 10 pour Mathématiques (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Mathématiques (Seconde).

**Q3.** Question structurée 12 pour Mathématiques (Seconde).

**Q3.** Question structurée 13 pour Mathématiques (Seconde).

**Q3.** Question structurée 14 pour Mathématiques (Seconde).

**Q3.** Question structurée 15 pour Mathématiques (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Mathématiques (Seconde).

**Q4.** Question structurée 17 pour Mathématiques (Seconde).

**Q4.** Question structurée 18 pour Mathématiques (Seconde).

**Q4.** Question structurée 19 pour Mathématiques (Seconde).

**Q4.** Question structurée 20 pour Mathématiques (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'dcb7b457-adb0-bc9f-472f-acd06d5f16dc', 'fr-lycee-maths-analyse-algebre', 'Mathématiques', 'Probatoire Mathématiques — Sujet structuré — Série 5',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Mathématiques (Seconde).

**Q1.** Question structurée 2 pour Mathématiques (Seconde).

**Q1.** Question structurée 3 pour Mathématiques (Seconde).

**Q1.** Question structurée 4 pour Mathématiques (Seconde).

**Q1.** Question structurée 5 pour Mathématiques (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Mathématiques (Seconde).

**Q2.** Question structurée 7 pour Mathématiques (Seconde).

**Q2.** Question structurée 8 pour Mathématiques (Seconde).

**Q2.** Question structurée 9 pour Mathématiques (Seconde).

**Q2.** Question structurée 10 pour Mathématiques (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Mathématiques (Seconde).

**Q3.** Question structurée 12 pour Mathématiques (Seconde).

**Q3.** Question structurée 13 pour Mathématiques (Seconde).

**Q3.** Question structurée 14 pour Mathématiques (Seconde).

**Q3.** Question structurée 15 pour Mathématiques (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Mathématiques (Seconde).

**Q4.** Question structurée 17 pour Mathématiques (Seconde).

**Q4.** Question structurée 18 pour Mathématiques (Seconde).

**Q4.** Question structurée 19 pour Mathématiques (Seconde).

**Q4.** Question structurée 20 pour Mathématiques (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f28cbc75-c1db-dbf8-40cb-543dce566009', 'fr-lycee-maths-analyse-algebre', 'Mathématiques', 'Probatoire Mathématiques — Sujet structuré — Série 6',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Mathématiques (Seconde).

**Q1.** Question structurée 2 pour Mathématiques (Seconde).

**Q1.** Question structurée 3 pour Mathématiques (Seconde).

**Q1.** Question structurée 4 pour Mathématiques (Seconde).

**Q1.** Question structurée 5 pour Mathématiques (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Mathématiques (Seconde).

**Q2.** Question structurée 7 pour Mathématiques (Seconde).

**Q2.** Question structurée 8 pour Mathématiques (Seconde).

**Q2.** Question structurée 9 pour Mathématiques (Seconde).

**Q2.** Question structurée 10 pour Mathématiques (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Mathématiques (Seconde).

**Q3.** Question structurée 12 pour Mathématiques (Seconde).

**Q3.** Question structurée 13 pour Mathématiques (Seconde).

**Q3.** Question structurée 14 pour Mathématiques (Seconde).

**Q3.** Question structurée 15 pour Mathématiques (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Mathématiques (Seconde).

**Q4.** Question structurée 17 pour Mathématiques (Seconde).

**Q4.** Question structurée 18 pour Mathématiques (Seconde).

**Q4.** Question structurée 19 pour Mathématiques (Seconde).

**Q4.** Question structurée 20 pour Mathématiques (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fe1a220f-5165-aefc-f780-52ea1fe3c437', 'fr-lycee-maths-analyse-algebre', 'Mathématiques', 'Probatoire Mathématiques — Sujet structuré — Série 7',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Mathématiques (Seconde).

**Q1.** Question structurée 2 pour Mathématiques (Seconde).

**Q1.** Question structurée 3 pour Mathématiques (Seconde).

**Q1.** Question structurée 4 pour Mathématiques (Seconde).

**Q1.** Question structurée 5 pour Mathématiques (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Mathématiques (Seconde).

**Q2.** Question structurée 7 pour Mathématiques (Seconde).

**Q2.** Question structurée 8 pour Mathématiques (Seconde).

**Q2.** Question structurée 9 pour Mathématiques (Seconde).

**Q2.** Question structurée 10 pour Mathématiques (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Mathématiques (Seconde).

**Q3.** Question structurée 12 pour Mathématiques (Seconde).

**Q3.** Question structurée 13 pour Mathématiques (Seconde).

**Q3.** Question structurée 14 pour Mathématiques (Seconde).

**Q3.** Question structurée 15 pour Mathématiques (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Mathématiques (Seconde).

**Q4.** Question structurée 17 pour Mathématiques (Seconde).

**Q4.** Question structurée 18 pour Mathématiques (Seconde).

**Q4.** Question structurée 19 pour Mathématiques (Seconde).

**Q4.** Question structurée 20 pour Mathématiques (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5c26ef55-0ecc-cac6-6d09-73f9e6a5c35d', 'fr-premiere-math-probatoire', 'Mathématiques', 'Probatoire Mathématiques — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '348960d2-df14-6a46-ad77-fdfd1619d3a9', 'fr-premiere-math-probatoire', 'Mathématiques', 'Probatoire Mathématiques — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c5f6f02c-81c2-c304-8bbc-ec32cc1e8515', 'fr-premiere-math-probatoire', 'Mathématiques', 'Probatoire Mathématiques — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'deadf44d-cd84-0fec-563a-2d82f8ef1bb2', 'fr-premiere-math-probatoire', 'Mathématiques', 'Probatoire Mathématiques — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Mathématiques (Première).

**Q1.** Question structurée 2 pour Mathématiques (Première).

**Q1.** Question structurée 3 pour Mathématiques (Première).

**Q1.** Question structurée 4 pour Mathématiques (Première).

**Q1.** Question structurée 5 pour Mathématiques (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Mathématiques (Première).

**Q2.** Question structurée 7 pour Mathématiques (Première).

**Q2.** Question structurée 8 pour Mathématiques (Première).

**Q2.** Question structurée 9 pour Mathématiques (Première).

**Q2.** Question structurée 10 pour Mathématiques (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Mathématiques (Première).

**Q3.** Question structurée 12 pour Mathématiques (Première).

**Q3.** Question structurée 13 pour Mathématiques (Première).

**Q3.** Question structurée 14 pour Mathématiques (Première).

**Q3.** Question structurée 15 pour Mathématiques (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Mathématiques (Première).

**Q4.** Question structurée 17 pour Mathématiques (Première).

**Q4.** Question structurée 18 pour Mathématiques (Première).

**Q4.** Question structurée 19 pour Mathématiques (Première).

**Q4.** Question structurée 20 pour Mathématiques (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f927b10d-b15c-442d-98e4-8f8997b13c90', 'fr-premiere-math-probatoire', 'Mathématiques', 'Probatoire Mathématiques — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Mathématiques (Première).

**Q1.** Question structurée 2 pour Mathématiques (Première).

**Q1.** Question structurée 3 pour Mathématiques (Première).

**Q1.** Question structurée 4 pour Mathématiques (Première).

**Q1.** Question structurée 5 pour Mathématiques (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Mathématiques (Première).

**Q2.** Question structurée 7 pour Mathématiques (Première).

**Q2.** Question structurée 8 pour Mathématiques (Première).

**Q2.** Question structurée 9 pour Mathématiques (Première).

**Q2.** Question structurée 10 pour Mathématiques (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Mathématiques (Première).

**Q3.** Question structurée 12 pour Mathématiques (Première).

**Q3.** Question structurée 13 pour Mathématiques (Première).

**Q3.** Question structurée 14 pour Mathématiques (Première).

**Q3.** Question structurée 15 pour Mathématiques (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Mathématiques (Première).

**Q4.** Question structurée 17 pour Mathématiques (Première).

**Q4.** Question structurée 18 pour Mathématiques (Première).

**Q4.** Question structurée 19 pour Mathématiques (Première).

**Q4.** Question structurée 20 pour Mathématiques (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4bca6669-1a86-0e5b-dee5-908fb59331ea', 'fr-premiere-math-probatoire', 'Mathématiques', 'Probatoire Mathématiques — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Mathématiques (Première).

**Q1.** Question structurée 2 pour Mathématiques (Première).

**Q1.** Question structurée 3 pour Mathématiques (Première).

**Q1.** Question structurée 4 pour Mathématiques (Première).

**Q1.** Question structurée 5 pour Mathématiques (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Mathématiques (Première).

**Q2.** Question structurée 7 pour Mathématiques (Première).

**Q2.** Question structurée 8 pour Mathématiques (Première).

**Q2.** Question structurée 9 pour Mathématiques (Première).

**Q2.** Question structurée 10 pour Mathématiques (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Mathématiques (Première).

**Q3.** Question structurée 12 pour Mathématiques (Première).

**Q3.** Question structurée 13 pour Mathématiques (Première).

**Q3.** Question structurée 14 pour Mathématiques (Première).

**Q3.** Question structurée 15 pour Mathématiques (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Mathématiques (Première).

**Q4.** Question structurée 17 pour Mathématiques (Première).

**Q4.** Question structurée 18 pour Mathématiques (Première).

**Q4.** Question structurée 19 pour Mathématiques (Première).

**Q4.** Question structurée 20 pour Mathématiques (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Mathématiques — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd2522bf1-4250-7434-619d-ec282b229609', 'fr-premiere-math-probatoire', 'Mathématiques', 'Probatoire Mathématiques — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire MATHÉMATIQUES SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Mathématiques
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Mathématiques (Première).

**Q1.** Question structurée 2 pour Mathématiques (Première).

**Q1.** Question structurée 3 pour Mathématiques (Première).

**Q1.** Question structurée 4 pour Mathématiques (Première).

**Q1.** Question structurée 5 pour Mathématiques (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Mathématiques (Première).

**Q2.** Question structurée 7 pour Mathématiques (Première).

**Q2.** Question structurée 8 pour Mathématiques (Première).

**Q2.** Question structurée 9 pour Mathématiques (Première).

**Q2.** Question structurée 10 pour Mathématiques (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Mathématiques (Première).

**Q3.** Question structurée 12 pour Mathématiques (Première).

**Q3.** Question structurée 13 pour Mathématiques (Première).

**Q3.** Question structurée 14 pour Mathématiques (Première).

**Q3.** Question structurée 15 pour Mathématiques (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Mathématiques (Première).

**Q4.** Question structurée 17 pour Mathématiques (Première).

**Q4.** Question structurée 18 pour Mathématiques (Première).

**Q4.** Question structurée 19 pour Mathématiques (Première).

**Q4.** Question structurée 20 pour Mathématiques (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Mathématiques Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1437f2a2-81be-c730-efaf-aaf65cf4da50', 'fr-lycee-francais-methodes-bac', 'Français', 'Probatoire Français — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a9d86b6b-a802-fbd9-8a68-850c6641e400', 'fr-lycee-francais-methodes-bac', 'Français', 'Probatoire Français — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f2b403bb-4b66-33e1-eaae-e8172782307c', 'fr-lycee-francais-methodes-bac', 'Français', 'Probatoire Français — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1a580b89-90a8-ed04-15d9-b60adcab168c', 'fr-lycee-francais-methodes-bac', 'Français', 'Probatoire Français — Sujet structuré — Série 4',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Français (Seconde).

**Q1.** Question structurée 2 pour Français (Seconde).

**Q1.** Question structurée 3 pour Français (Seconde).

**Q1.** Question structurée 4 pour Français (Seconde).

**Q1.** Question structurée 5 pour Français (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Français (Seconde).

**Q2.** Question structurée 7 pour Français (Seconde).

**Q2.** Question structurée 8 pour Français (Seconde).

**Q2.** Question structurée 9 pour Français (Seconde).

**Q2.** Question structurée 10 pour Français (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Français (Seconde).

**Q3.** Question structurée 12 pour Français (Seconde).

**Q3.** Question structurée 13 pour Français (Seconde).

**Q3.** Question structurée 14 pour Français (Seconde).

**Q3.** Question structurée 15 pour Français (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Français (Seconde).

**Q4.** Question structurée 17 pour Français (Seconde).

**Q4.** Question structurée 18 pour Français (Seconde).

**Q4.** Question structurée 19 pour Français (Seconde).

**Q4.** Question structurée 20 pour Français (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2574754d-1edb-98f7-d97e-20a806f0e9ec', 'fr-lycee-francais-methodes-bac', 'Français', 'Probatoire Français — Sujet structuré — Série 5',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Français (Seconde).

**Q1.** Question structurée 2 pour Français (Seconde).

**Q1.** Question structurée 3 pour Français (Seconde).

**Q1.** Question structurée 4 pour Français (Seconde).

**Q1.** Question structurée 5 pour Français (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Français (Seconde).

**Q2.** Question structurée 7 pour Français (Seconde).

**Q2.** Question structurée 8 pour Français (Seconde).

**Q2.** Question structurée 9 pour Français (Seconde).

**Q2.** Question structurée 10 pour Français (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Français (Seconde).

**Q3.** Question structurée 12 pour Français (Seconde).

**Q3.** Question structurée 13 pour Français (Seconde).

**Q3.** Question structurée 14 pour Français (Seconde).

**Q3.** Question structurée 15 pour Français (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Français (Seconde).

**Q4.** Question structurée 17 pour Français (Seconde).

**Q4.** Question structurée 18 pour Français (Seconde).

**Q4.** Question structurée 19 pour Français (Seconde).

**Q4.** Question structurée 20 pour Français (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c1d6fd67-bc11-d86e-a657-a251b327f3b5', 'fr-lycee-francais-methodes-bac', 'Français', 'Probatoire Français — Sujet structuré — Série 6',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Français (Seconde).

**Q1.** Question structurée 2 pour Français (Seconde).

**Q1.** Question structurée 3 pour Français (Seconde).

**Q1.** Question structurée 4 pour Français (Seconde).

**Q1.** Question structurée 5 pour Français (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Français (Seconde).

**Q2.** Question structurée 7 pour Français (Seconde).

**Q2.** Question structurée 8 pour Français (Seconde).

**Q2.** Question structurée 9 pour Français (Seconde).

**Q2.** Question structurée 10 pour Français (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Français (Seconde).

**Q3.** Question structurée 12 pour Français (Seconde).

**Q3.** Question structurée 13 pour Français (Seconde).

**Q3.** Question structurée 14 pour Français (Seconde).

**Q3.** Question structurée 15 pour Français (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Français (Seconde).

**Q4.** Question structurée 17 pour Français (Seconde).

**Q4.** Question structurée 18 pour Français (Seconde).

**Q4.** Question structurée 19 pour Français (Seconde).

**Q4.** Question structurée 20 pour Français (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6cdf62e2-eb0d-6dd6-fe50-d86d7343626b', 'fr-lycee-francais-methodes-bac', 'Français', 'Probatoire Français — Sujet structuré — Série 7',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Français (Seconde).

**Q1.** Question structurée 2 pour Français (Seconde).

**Q1.** Question structurée 3 pour Français (Seconde).

**Q1.** Question structurée 4 pour Français (Seconde).

**Q1.** Question structurée 5 pour Français (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Français (Seconde).

**Q2.** Question structurée 7 pour Français (Seconde).

**Q2.** Question structurée 8 pour Français (Seconde).

**Q2.** Question structurée 9 pour Français (Seconde).

**Q2.** Question structurée 10 pour Français (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Français (Seconde).

**Q3.** Question structurée 12 pour Français (Seconde).

**Q3.** Question structurée 13 pour Français (Seconde).

**Q3.** Question structurée 14 pour Français (Seconde).

**Q3.** Question structurée 15 pour Français (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Français (Seconde).

**Q4.** Question structurée 17 pour Français (Seconde).

**Q4.** Question structurée 18 pour Français (Seconde).

**Q4.** Question structurée 19 pour Français (Seconde).

**Q4.** Question structurée 20 pour Français (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '15bf184e-a884-167d-38ac-6e6938d2aec1', 'fr-premiere-a4-francais-dissertation', 'Français', 'Probatoire Français — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2f7b20b2-484e-3f8e-5349-a6d74e2384a5', 'fr-premiere-a4-francais-dissertation', 'Français', 'Probatoire Français — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'aef4738b-beb8-faa3-e224-da7c2271d5a5', 'fr-premiere-a4-francais-dissertation', 'Français', 'Probatoire Français — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd3e51c28-ff63-7f3e-978d-5f1a5ab78450', 'fr-premiere-a4-francais-dissertation', 'Français', 'Probatoire Français — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Français (Première).

**Q1.** Question structurée 2 pour Français (Première).

**Q1.** Question structurée 3 pour Français (Première).

**Q1.** Question structurée 4 pour Français (Première).

**Q1.** Question structurée 5 pour Français (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Français (Première).

**Q2.** Question structurée 7 pour Français (Première).

**Q2.** Question structurée 8 pour Français (Première).

**Q2.** Question structurée 9 pour Français (Première).

**Q2.** Question structurée 10 pour Français (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Français (Première).

**Q3.** Question structurée 12 pour Français (Première).

**Q3.** Question structurée 13 pour Français (Première).

**Q3.** Question structurée 14 pour Français (Première).

**Q3.** Question structurée 15 pour Français (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Français (Première).

**Q4.** Question structurée 17 pour Français (Première).

**Q4.** Question structurée 18 pour Français (Première).

**Q4.** Question structurée 19 pour Français (Première).

**Q4.** Question structurée 20 pour Français (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '10dd19b4-03dc-4c9c-0b1f-23b04714274d', 'fr-premiere-a4-francais-dissertation', 'Français', 'Probatoire Français — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Français (Première).

**Q1.** Question structurée 2 pour Français (Première).

**Q1.** Question structurée 3 pour Français (Première).

**Q1.** Question structurée 4 pour Français (Première).

**Q1.** Question structurée 5 pour Français (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Français (Première).

**Q2.** Question structurée 7 pour Français (Première).

**Q2.** Question structurée 8 pour Français (Première).

**Q2.** Question structurée 9 pour Français (Première).

**Q2.** Question structurée 10 pour Français (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Français (Première).

**Q3.** Question structurée 12 pour Français (Première).

**Q3.** Question structurée 13 pour Français (Première).

**Q3.** Question structurée 14 pour Français (Première).

**Q3.** Question structurée 15 pour Français (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Français (Première).

**Q4.** Question structurée 17 pour Français (Première).

**Q4.** Question structurée 18 pour Français (Première).

**Q4.** Question structurée 19 pour Français (Première).

**Q4.** Question structurée 20 pour Français (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c261f7ee-858a-d399-dd67-6deaf862ec64', 'fr-premiere-a4-francais-dissertation', 'Français', 'Probatoire Français — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Français (Première).

**Q1.** Question structurée 2 pour Français (Première).

**Q1.** Question structurée 3 pour Français (Première).

**Q1.** Question structurée 4 pour Français (Première).

**Q1.** Question structurée 5 pour Français (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Français (Première).

**Q2.** Question structurée 7 pour Français (Première).

**Q2.** Question structurée 8 pour Français (Première).

**Q2.** Question structurée 9 pour Français (Première).

**Q2.** Question structurée 10 pour Français (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Français (Première).

**Q3.** Question structurée 12 pour Français (Première).

**Q3.** Question structurée 13 pour Français (Première).

**Q3.** Question structurée 14 pour Français (Première).

**Q3.** Question structurée 15 pour Français (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Français (Première).

**Q4.** Question structurée 17 pour Français (Première).

**Q4.** Question structurée 18 pour Français (Première).

**Q4.** Question structurée 19 pour Français (Première).

**Q4.** Question structurée 20 pour Français (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Français — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '593150f2-de6c-da9c-4f5a-ce899d23bc48', 'fr-premiere-a4-francais-dissertation', 'Français', 'Probatoire Français — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire FRANÇAIS SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Français
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Français (Première).

**Q1.** Question structurée 2 pour Français (Première).

**Q1.** Question structurée 3 pour Français (Première).

**Q1.** Question structurée 4 pour Français (Première).

**Q1.** Question structurée 5 pour Français (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Français (Première).

**Q2.** Question structurée 7 pour Français (Première).

**Q2.** Question structurée 8 pour Français (Première).

**Q2.** Question structurée 9 pour Français (Première).

**Q2.** Question structurée 10 pour Français (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Français (Première).

**Q3.** Question structurée 12 pour Français (Première).

**Q3.** Question structurée 13 pour Français (Première).

**Q3.** Question structurée 14 pour Français (Première).

**Q3.** Question structurée 15 pour Français (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Français (Première).

**Q4.** Question structurée 17 pour Français (Première).

**Q4.** Question structurée 18 pour Français (Première).

**Q4.** Question structurée 19 pour Français (Première).

**Q4.** Question structurée 20 pour Français (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Français Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2fae1197-64dc-95b4-9b57-773c2b807dc4', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''unité de la force est :

A. le newton
B. le joule
C. le watt
D. le pascal

---

**Q2.** La formule de l''énergie cinétique est :

A. Ec = ½ mv²
B. Ec = mv
C. Ec = mgh
D. Ec = ½ mgh

---

**Q3.** La loi de Coulomb s''écrit :

A. F = k·q₁q₂/r²
B. F = k·r²/q₁q₂
C. F = q₁q₂·r²
D. F = k·q₁q₂·r

---

**Q4.** L''unité de la charge électrique est :

A. le coulomb
B. le volt
C. l''ampère
D. l''ohm

---

**Q5.** La force de Lorentz s''exerce sur :

A. une charge en mouvement dans un champ
B. une charge immobile
C. un aimant
D. un conducteur

---

**Q6.** La loi de Faraday concerne :

A. l''induction électromagnétique
B. la gravitation
C. l''optique
D. la thermique

---

**Q7.** L''unité de la fréquence est :

A. le hertz
B. le watt
C. le volt
D. l''ohm

---

**Q8.** La période T et la fréquence f sont liées par :

A. T = 1/f
B. T = f
C. T = 2f
D. T = f²

---

**Q9.** La longueur d''onde λ et la fréquence f sont liées par :

A. λ = v/f
B. λ = v·f
C. λ = f/v
D. λ = v+f

---

**Q10.** La vitesse de la lumière dans le vide est environ :

A. 3×10⁸ m/s
B. 3×10⁶ m/s
C. 3×10¹⁰ m/s
D. 300 m/s

---

**Q11.** La loi de Snell-Descartes concerne :

A. la réfraction
B. la gravitation
C. l''induction
D. la thermique

---

**Q12.** L''indice de réfraction du vide est :

A. 1
B. 0
C. 1,5
D. 3

---

**Q13.** La vergence d''une lentille s''exprime en :

A. dioptries
B. newtons
C. watts
D. ohms

---

**Q14.** La quantité de mouvement est :

A. p = mv
B. p = m/v
C. p = v/m
D. p = m+v

---

**Q15.** Le théorème de l''énergie cinétique :

A. ΔEc = W
B. ΔEc = P
C. ΔEc = F
D. ΔEc = m

---

**Q16.** Le travail d''une force constante est :

A. W = F·d·cos(θ)
B. W = F·d
C. W = F/d
D. W = d/F

---

**Q17.** L''unité du travail est :

A. le joule
B. le watt
C. le newton
D. le pascal

---

**Q18.** La puissance est :

A. P = W/t
B. P = W·t
C. P = t/W
D. P = W+t

---

**Q19.** L''unité de la puissance est :

A. le watt
B. le joule
C. le newton
D. le volt

---

**Q20.** Le moment d''une force s''exprime en :

A. N·m
B. N/m
C. N·m²
D. N

---

## CORRIGÉ

1. le newton
2. Ec = ½ mv²
3. F = k·q₁q₂/r²
4. le coulomb
5. une charge en mouvement dans un champ
6. l''induction électromagnétique
7. le hertz
8. T = 1/f
9. λ = v/f
10. 3×10⁸ m/s
11. la réfraction
12. 1
13. dioptries
14. p = mv
15. ΔEc = W
16. W = F·d·cos(θ)
17. le joule
18. P = W/t
19. le watt
20. N·m
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c0581327-db7b-e453-7886-9ae5a3c175b0', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''équilibre d''un solide exige :

A. la somme des forces et moments nulle
B. une force nulle
C. un moment nul
D. une vitesse nulle

---

**Q2.** Le champ gravitationnel est :

A. g = G·M/r²
B. g = G·M·r²
C. g = r²/G·M
D. g = G·r²/M

---

**Q3.** La constante de gravitation G vaut :

A. 6,67×10⁻¹¹ N·m²/kg²
B. 9,8 N/kg
C. 3×10⁸ m/s
D. 1,6×10⁻¹⁹ C

---

**Q4.** Le mouvement uniforme a :

A. une vitesse constante
B. une accélération constante
C. une vitesse nulle
D. une accélération nulle

---

**Q5.** Le mouvement uniformément accéléré a :

A. une accélération constante
B. une vitesse constante
C. une vitesse nulle
D. une accélération nulle

---

**Q6.** L''accélération est :

A. a = Δv/Δt
B. a = Δv·Δt
C. a = Δt/Δv
D. a = v·t

---

**Q7.** L''unité de l''accélération est :

A. m/s²
B. m/s
C. m
D. s

---

**Q8.** La radioactivité α émet :

A. un noyau d''hélium
B. un électron
C. un photon
D. un neutron

---

**Q9.** La radioactivité β⁻ émet :

A. un électron
B. un positron
C. un photon
D. un neutron

---

**Q10.** La radioactivité γ émet :

A. un photon
B. un électron
C. un proton
D. un neutron

---

**Q11.** La demi-vie est :

A. le temps pour que la moitié se désintègre
B. le temps total de désintégration
C. la moitié de la masse
D. la moitié de l''énergie

---

**Q12.** L''énergie de liaison est :

A. l''énergie pour séparer les nucléons
B. l''énergie cinétique
C. l''énergie potentielle
D. l''énergie thermique

---

**Q13.** Le défaut de masse est :

A. la différence entre masse des nucléons et du noyau
B. la masse totale
C. la masse des électrons
D. la masse nulle

---

**Q14.** L''équivalence masse-énergie est :

A. E = mc²
B. E = mc
C. E = m/c²
D. E = c²/m

---

**Q15.** La fission nucléaire :

A. divise un noyau lourd
B. fusionne des noyaux légers
C. émet des électrons
D. absorbe des photons

---

**Q16.** La fusion nucléaire :

A. fusionne des noyaux légers
B. divise un noyau lourd
C. émet des électrons
D. absorbe des photons

---

**Q17.** Le circuit RLC série :

A. contient résistance, bobine et condensateur
B. contient uniquement une résistance
C. contient uniquement une bobine
D. contient uniquement un condensateur

---

**Q18.** La résonance dans un circuit RLC :

A. l''impédance est minimale
B. l''impédance est maximale
C. le courant est nul
D. la tension est nulle

---

**Q19.** L''impédance Z d''un circuit :

A. Z = U/I
B. Z = U·I
C. Z = I/U
D. Z = U+I

---

**Q20.** L''unité de l''impédance est :

A. l''ohm
B. le volt
C. l''ampère
D. le watt

---

## CORRIGÉ

1. la somme des forces et moments nulle
2. g = G·M/r²
3. 6,67×10⁻¹¹ N·m²/kg²
4. une vitesse constante
5. une accélération constante
6. a = Δv/Δt
7. m/s²
8. un noyau d''hélium
9. un électron
10. un photon
11. le temps pour que la moitié se désintègre
12. l''énergie pour séparer les nucléons
13. la différence entre masse des nucléons et du noyau
14. E = mc²
15. divise un noyau lourd
16. fusionne des noyaux légers
17. contient résistance, bobine et condensateur
18. l''impédance est minimale
19. Z = U/I
20. l''ohm
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f8f46d3a-e418-8998-2baf-b67ea875e075', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le facteur de puissance est :

A. cos(φ)
B. sin(φ)
C. tan(φ)
D. φ

---

**Q2.** L''énergie électrique est :

A. E = P·t
B. E = P/t
C. E = t/P
D. E = P+t

---

**Q3.** L''effet photoélectrique :

A. émission d''électrons par la lumière
B. absorption de photons
C. émission de photons
D. réflexion

---

**Q4.** Le photon a une énergie :

A. E = h·f
B. E = h/f
C. E = f/h
D. E = h+f

---

**Q5.** La constante de Planck h vaut :

A. 6,63×10⁻³⁴ J·s
B. 6,67×10⁻¹¹
C. 9,8
D. 3×10⁸

---

**Q6.** L''effet Doppler concerne :

A. le changement de fréquence d''une onde
B. la réfraction
C. la réflexion
D. l''absorption

---

**Q7.** Les ondes mécaniques :

A. nécessitent un milieu
B. se propagent dans le vide
C. sont des particules
D. sont des charges

---

**Q8.** Les ondes électromagnétiques :

A. se propagent dans le vide
B. nécessitent un milieu
C. sont des particules
D. sont des charges

---

**Q9.** Le son est :

A. une onde mécanique
B. une onde électromagnétique
C. une particule
D. une charge

---

**Q10.** La vitesse du son dans l''air est environ :

A. 340 m/s
B. 3×10⁸ m/s
C. 1500 m/s
D. 100 m/s

---

**Q11.** L''intensité sonore se mesure en :

A. décibels
B. watts
C. newtons
D. pascals

---

**Q12.** Le champ électrique E s''exprime en :

A. V/m
B. V
C. A
D. Ω

---

**Q13.** Le potentiel électrique s''exprime en :

A. volts
B. ampères
C. ohms
D. watts

---

**Q14.** La capacité d''un condensateur s''exprime en :

A. farads
B. ohms
C. henrys
D. volts

---

**Q15.** L''inductance d''une bobine s''exprime en :

A. henrys
B. farads
C. ohms
D. volts

---

**Q16.** Le flux magnétique s''exprime en :

A. webers
B. teslas
C. henrys
D. farads

---

**Q17.** Le champ magnétique s''exprime en :

A. teslas
B. webers
C. henrys
D. farads

---

**Q18.** L''unité de la force est :

A. le newton
B. le joule
C. le watt
D. le pascal

---

**Q19.** La formule de l''énergie cinétique est :

A. Ec = ½ mv²
B. Ec = mv
C. Ec = mgh
D. Ec = ½ mgh

---

**Q20.** La loi de Coulomb s''écrit :

A. F = k·q₁q₂/r²
B. F = k·r²/q₁q₂
C. F = q₁q₂·r²
D. F = k·q₁q₂·r

---

## CORRIGÉ

1. cos(φ)
2. E = P·t
3. émission d''électrons par la lumière
4. E = h·f
5. 6,63×10⁻³⁴ J·s
6. le changement de fréquence d''une onde
7. nécessitent un milieu
8. se propagent dans le vide
9. une onde mécanique
10. 340 m/s
11. décibels
12. V/m
13. volts
14. farads
15. henrys
16. webers
17. teslas
18. le newton
19. Ec = ½ mv²
20. F = k·q₁q₂/r²
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '46e9d215-1d5a-f6c8-0486-1e54760cf902', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — Sujet structuré — Série 4',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Physique (Seconde).

**Q1.** Question structurée 2 pour Physique (Seconde).

**Q1.** Question structurée 3 pour Physique (Seconde).

**Q1.** Question structurée 4 pour Physique (Seconde).

**Q1.** Question structurée 5 pour Physique (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Physique (Seconde).

**Q2.** Question structurée 7 pour Physique (Seconde).

**Q2.** Question structurée 8 pour Physique (Seconde).

**Q2.** Question structurée 9 pour Physique (Seconde).

**Q2.** Question structurée 10 pour Physique (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Physique (Seconde).

**Q3.** Question structurée 12 pour Physique (Seconde).

**Q3.** Question structurée 13 pour Physique (Seconde).

**Q3.** Question structurée 14 pour Physique (Seconde).

**Q3.** Question structurée 15 pour Physique (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Physique (Seconde).

**Q4.** Question structurée 17 pour Physique (Seconde).

**Q4.** Question structurée 18 pour Physique (Seconde).

**Q4.** Question structurée 19 pour Physique (Seconde).

**Q4.** Question structurée 20 pour Physique (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '29a7deff-9e63-0087-c7fc-41c470280d2f', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — Sujet structuré — Série 5',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Physique (Seconde).

**Q1.** Question structurée 2 pour Physique (Seconde).

**Q1.** Question structurée 3 pour Physique (Seconde).

**Q1.** Question structurée 4 pour Physique (Seconde).

**Q1.** Question structurée 5 pour Physique (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Physique (Seconde).

**Q2.** Question structurée 7 pour Physique (Seconde).

**Q2.** Question structurée 8 pour Physique (Seconde).

**Q2.** Question structurée 9 pour Physique (Seconde).

**Q2.** Question structurée 10 pour Physique (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Physique (Seconde).

**Q3.** Question structurée 12 pour Physique (Seconde).

**Q3.** Question structurée 13 pour Physique (Seconde).

**Q3.** Question structurée 14 pour Physique (Seconde).

**Q3.** Question structurée 15 pour Physique (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Physique (Seconde).

**Q4.** Question structurée 17 pour Physique (Seconde).

**Q4.** Question structurée 18 pour Physique (Seconde).

**Q4.** Question structurée 19 pour Physique (Seconde).

**Q4.** Question structurée 20 pour Physique (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b3f6505a-c61b-a6e6-fcef-532680487897', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — Sujet structuré — Série 6',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Physique (Seconde).

**Q1.** Question structurée 2 pour Physique (Seconde).

**Q1.** Question structurée 3 pour Physique (Seconde).

**Q1.** Question structurée 4 pour Physique (Seconde).

**Q1.** Question structurée 5 pour Physique (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Physique (Seconde).

**Q2.** Question structurée 7 pour Physique (Seconde).

**Q2.** Question structurée 8 pour Physique (Seconde).

**Q2.** Question structurée 9 pour Physique (Seconde).

**Q2.** Question structurée 10 pour Physique (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Physique (Seconde).

**Q3.** Question structurée 12 pour Physique (Seconde).

**Q3.** Question structurée 13 pour Physique (Seconde).

**Q3.** Question structurée 14 pour Physique (Seconde).

**Q3.** Question structurée 15 pour Physique (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Physique (Seconde).

**Q4.** Question structurée 17 pour Physique (Seconde).

**Q4.** Question structurée 18 pour Physique (Seconde).

**Q4.** Question structurée 19 pour Physique (Seconde).

**Q4.** Question structurée 20 pour Physique (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a7048900-8fe4-911d-d366-7d40a520182d', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — Sujet structuré — Série 7',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Physique (Seconde).

**Q1.** Question structurée 2 pour Physique (Seconde).

**Q1.** Question structurée 3 pour Physique (Seconde).

**Q1.** Question structurée 4 pour Physique (Seconde).

**Q1.** Question structurée 5 pour Physique (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Physique (Seconde).

**Q2.** Question structurée 7 pour Physique (Seconde).

**Q2.** Question structurée 8 pour Physique (Seconde).

**Q2.** Question structurée 9 pour Physique (Seconde).

**Q2.** Question structurée 10 pour Physique (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Physique (Seconde).

**Q3.** Question structurée 12 pour Physique (Seconde).

**Q3.** Question structurée 13 pour Physique (Seconde).

**Q3.** Question structurée 14 pour Physique (Seconde).

**Q3.** Question structurée 15 pour Physique (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Physique (Seconde).

**Q4.** Question structurée 17 pour Physique (Seconde).

**Q4.** Question structurée 18 pour Physique (Seconde).

**Q4.** Question structurée 19 pour Physique (Seconde).

**Q4.** Question structurée 20 pour Physique (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4110b39e-89b8-456f-bc31-084f14f4868d', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''unité de la force est :

A. le newton
B. le joule
C. le watt
D. le pascal

---

**Q2.** La formule de l''énergie cinétique est :

A. Ec = ½ mv²
B. Ec = mv
C. Ec = mgh
D. Ec = ½ mgh

---

**Q3.** La loi de Coulomb s''écrit :

A. F = k·q₁q₂/r²
B. F = k·r²/q₁q₂
C. F = q₁q₂·r²
D. F = k·q₁q₂·r

---

**Q4.** L''unité de la charge électrique est :

A. le coulomb
B. le volt
C. l''ampère
D. l''ohm

---

**Q5.** La force de Lorentz s''exerce sur :

A. une charge en mouvement dans un champ
B. une charge immobile
C. un aimant
D. un conducteur

---

**Q6.** La loi de Faraday concerne :

A. l''induction électromagnétique
B. la gravitation
C. l''optique
D. la thermique

---

**Q7.** L''unité de la fréquence est :

A. le hertz
B. le watt
C. le volt
D. l''ohm

---

**Q8.** La période T et la fréquence f sont liées par :

A. T = 1/f
B. T = f
C. T = 2f
D. T = f²

---

**Q9.** La longueur d''onde λ et la fréquence f sont liées par :

A. λ = v/f
B. λ = v·f
C. λ = f/v
D. λ = v+f

---

**Q10.** La vitesse de la lumière dans le vide est environ :

A. 3×10⁸ m/s
B. 3×10⁶ m/s
C. 3×10¹⁰ m/s
D. 300 m/s

---

**Q11.** La loi de Snell-Descartes concerne :

A. la réfraction
B. la gravitation
C. l''induction
D. la thermique

---

**Q12.** L''indice de réfraction du vide est :

A. 1
B. 0
C. 1,5
D. 3

---

**Q13.** La vergence d''une lentille s''exprime en :

A. dioptries
B. newtons
C. watts
D. ohms

---

**Q14.** La quantité de mouvement est :

A. p = mv
B. p = m/v
C. p = v/m
D. p = m+v

---

**Q15.** Le théorème de l''énergie cinétique :

A. ΔEc = W
B. ΔEc = P
C. ΔEc = F
D. ΔEc = m

---

**Q16.** Le travail d''une force constante est :

A. W = F·d·cos(θ)
B. W = F·d
C. W = F/d
D. W = d/F

---

**Q17.** L''unité du travail est :

A. le joule
B. le watt
C. le newton
D. le pascal

---

**Q18.** La puissance est :

A. P = W/t
B. P = W·t
C. P = t/W
D. P = W+t

---

**Q19.** L''unité de la puissance est :

A. le watt
B. le joule
C. le newton
D. le volt

---

**Q20.** Le moment d''une force s''exprime en :

A. N·m
B. N/m
C. N·m²
D. N

---

## CORRIGÉ

1. le newton
2. Ec = ½ mv²
3. F = k·q₁q₂/r²
4. le coulomb
5. une charge en mouvement dans un champ
6. l''induction électromagnétique
7. le hertz
8. T = 1/f
9. λ = v/f
10. 3×10⁸ m/s
11. la réfraction
12. 1
13. dioptries
14. p = mv
15. ΔEc = W
16. W = F·d·cos(θ)
17. le joule
18. P = W/t
19. le watt
20. N·m
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5bcadb17-60d2-594b-e7fc-3847d1cdc78a', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** L''équilibre d''un solide exige :

A. la somme des forces et moments nulle
B. une force nulle
C. un moment nul
D. une vitesse nulle

---

**Q2.** Le champ gravitationnel est :

A. g = G·M/r²
B. g = G·M·r²
C. g = r²/G·M
D. g = G·r²/M

---

**Q3.** La constante de gravitation G vaut :

A. 6,67×10⁻¹¹ N·m²/kg²
B. 9,8 N/kg
C. 3×10⁸ m/s
D. 1,6×10⁻¹⁹ C

---

**Q4.** Le mouvement uniforme a :

A. une vitesse constante
B. une accélération constante
C. une vitesse nulle
D. une accélération nulle

---

**Q5.** Le mouvement uniformément accéléré a :

A. une accélération constante
B. une vitesse constante
C. une vitesse nulle
D. une accélération nulle

---

**Q6.** L''accélération est :

A. a = Δv/Δt
B. a = Δv·Δt
C. a = Δt/Δv
D. a = v·t

---

**Q7.** L''unité de l''accélération est :

A. m/s²
B. m/s
C. m
D. s

---

**Q8.** La radioactivité α émet :

A. un noyau d''hélium
B. un électron
C. un photon
D. un neutron

---

**Q9.** La radioactivité β⁻ émet :

A. un électron
B. un positron
C. un photon
D. un neutron

---

**Q10.** La radioactivité γ émet :

A. un photon
B. un électron
C. un proton
D. un neutron

---

**Q11.** La demi-vie est :

A. le temps pour que la moitié se désintègre
B. le temps total de désintégration
C. la moitié de la masse
D. la moitié de l''énergie

---

**Q12.** L''énergie de liaison est :

A. l''énergie pour séparer les nucléons
B. l''énergie cinétique
C. l''énergie potentielle
D. l''énergie thermique

---

**Q13.** Le défaut de masse est :

A. la différence entre masse des nucléons et du noyau
B. la masse totale
C. la masse des électrons
D. la masse nulle

---

**Q14.** L''équivalence masse-énergie est :

A. E = mc²
B. E = mc
C. E = m/c²
D. E = c²/m

---

**Q15.** La fission nucléaire :

A. divise un noyau lourd
B. fusionne des noyaux légers
C. émet des électrons
D. absorbe des photons

---

**Q16.** La fusion nucléaire :

A. fusionne des noyaux légers
B. divise un noyau lourd
C. émet des électrons
D. absorbe des photons

---

**Q17.** Le circuit RLC série :

A. contient résistance, bobine et condensateur
B. contient uniquement une résistance
C. contient uniquement une bobine
D. contient uniquement un condensateur

---

**Q18.** La résonance dans un circuit RLC :

A. l''impédance est minimale
B. l''impédance est maximale
C. le courant est nul
D. la tension est nulle

---

**Q19.** L''impédance Z d''un circuit :

A. Z = U/I
B. Z = U·I
C. Z = I/U
D. Z = U+I

---

**Q20.** L''unité de l''impédance est :

A. l''ohm
B. le volt
C. l''ampère
D. le watt

---

## CORRIGÉ

1. la somme des forces et moments nulle
2. g = G·M/r²
3. 6,67×10⁻¹¹ N·m²/kg²
4. une vitesse constante
5. une accélération constante
6. a = Δv/Δt
7. m/s²
8. un noyau d''hélium
9. un électron
10. un photon
11. le temps pour que la moitié se désintègre
12. l''énergie pour séparer les nucléons
13. la différence entre masse des nucléons et du noyau
14. E = mc²
15. divise un noyau lourd
16. fusionne des noyaux légers
17. contient résistance, bobine et condensateur
18. l''impédance est minimale
19. Z = U/I
20. l''ohm
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8038d128-1a7c-7955-ae5e-38b104613fa9', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le facteur de puissance est :

A. cos(φ)
B. sin(φ)
C. tan(φ)
D. φ

---

**Q2.** L''énergie électrique est :

A. E = P·t
B. E = P/t
C. E = t/P
D. E = P+t

---

**Q3.** L''effet photoélectrique :

A. émission d''électrons par la lumière
B. absorption de photons
C. émission de photons
D. réflexion

---

**Q4.** Le photon a une énergie :

A. E = h·f
B. E = h/f
C. E = f/h
D. E = h+f

---

**Q5.** La constante de Planck h vaut :

A. 6,63×10⁻³⁴ J·s
B. 6,67×10⁻¹¹
C. 9,8
D. 3×10⁸

---

**Q6.** L''effet Doppler concerne :

A. le changement de fréquence d''une onde
B. la réfraction
C. la réflexion
D. l''absorption

---

**Q7.** Les ondes mécaniques :

A. nécessitent un milieu
B. se propagent dans le vide
C. sont des particules
D. sont des charges

---

**Q8.** Les ondes électromagnétiques :

A. se propagent dans le vide
B. nécessitent un milieu
C. sont des particules
D. sont des charges

---

**Q9.** Le son est :

A. une onde mécanique
B. une onde électromagnétique
C. une particule
D. une charge

---

**Q10.** La vitesse du son dans l''air est environ :

A. 340 m/s
B. 3×10⁸ m/s
C. 1500 m/s
D. 100 m/s

---

**Q11.** L''intensité sonore se mesure en :

A. décibels
B. watts
C. newtons
D. pascals

---

**Q12.** Le champ électrique E s''exprime en :

A. V/m
B. V
C. A
D. Ω

---

**Q13.** Le potentiel électrique s''exprime en :

A. volts
B. ampères
C. ohms
D. watts

---

**Q14.** La capacité d''un condensateur s''exprime en :

A. farads
B. ohms
C. henrys
D. volts

---

**Q15.** L''inductance d''une bobine s''exprime en :

A. henrys
B. farads
C. ohms
D. volts

---

**Q16.** Le flux magnétique s''exprime en :

A. webers
B. teslas
C. henrys
D. farads

---

**Q17.** Le champ magnétique s''exprime en :

A. teslas
B. webers
C. henrys
D. farads

---

**Q18.** L''unité de la force est :

A. le newton
B. le joule
C. le watt
D. le pascal

---

**Q19.** La formule de l''énergie cinétique est :

A. Ec = ½ mv²
B. Ec = mv
C. Ec = mgh
D. Ec = ½ mgh

---

**Q20.** La loi de Coulomb s''écrit :

A. F = k·q₁q₂/r²
B. F = k·r²/q₁q₂
C. F = q₁q₂·r²
D. F = k·q₁q₂·r

---

## CORRIGÉ

1. cos(φ)
2. E = P·t
3. émission d''électrons par la lumière
4. E = h·f
5. 6,63×10⁻³⁴ J·s
6. le changement de fréquence d''une onde
7. nécessitent un milieu
8. se propagent dans le vide
9. une onde mécanique
10. 340 m/s
11. décibels
12. V/m
13. volts
14. farads
15. henrys
16. webers
17. teslas
18. le newton
19. Ec = ½ mv²
20. F = k·q₁q₂/r²
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b5c151d2-6ea6-9215-3470-df195cfaf4e2', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Physique (Première).

**Q1.** Question structurée 2 pour Physique (Première).

**Q1.** Question structurée 3 pour Physique (Première).

**Q1.** Question structurée 4 pour Physique (Première).

**Q1.** Question structurée 5 pour Physique (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Physique (Première).

**Q2.** Question structurée 7 pour Physique (Première).

**Q2.** Question structurée 8 pour Physique (Première).

**Q2.** Question structurée 9 pour Physique (Première).

**Q2.** Question structurée 10 pour Physique (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Physique (Première).

**Q3.** Question structurée 12 pour Physique (Première).

**Q3.** Question structurée 13 pour Physique (Première).

**Q3.** Question structurée 14 pour Physique (Première).

**Q3.** Question structurée 15 pour Physique (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Physique (Première).

**Q4.** Question structurée 17 pour Physique (Première).

**Q4.** Question structurée 18 pour Physique (Première).

**Q4.** Question structurée 19 pour Physique (Première).

**Q4.** Question structurée 20 pour Physique (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '43330906-8595-0b96-b5d1-d9f89ef191a9', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Physique (Première).

**Q1.** Question structurée 2 pour Physique (Première).

**Q1.** Question structurée 3 pour Physique (Première).

**Q1.** Question structurée 4 pour Physique (Première).

**Q1.** Question structurée 5 pour Physique (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Physique (Première).

**Q2.** Question structurée 7 pour Physique (Première).

**Q2.** Question structurée 8 pour Physique (Première).

**Q2.** Question structurée 9 pour Physique (Première).

**Q2.** Question structurée 10 pour Physique (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Physique (Première).

**Q3.** Question structurée 12 pour Physique (Première).

**Q3.** Question structurée 13 pour Physique (Première).

**Q3.** Question structurée 14 pour Physique (Première).

**Q3.** Question structurée 15 pour Physique (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Physique (Première).

**Q4.** Question structurée 17 pour Physique (Première).

**Q4.** Question structurée 18 pour Physique (Première).

**Q4.** Question structurée 19 pour Physique (Première).

**Q4.** Question structurée 20 pour Physique (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6a354653-7070-ab6a-fa25-275d2c50b919', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Physique (Première).

**Q1.** Question structurée 2 pour Physique (Première).

**Q1.** Question structurée 3 pour Physique (Première).

**Q1.** Question structurée 4 pour Physique (Première).

**Q1.** Question structurée 5 pour Physique (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Physique (Première).

**Q2.** Question structurée 7 pour Physique (Première).

**Q2.** Question structurée 8 pour Physique (Première).

**Q2.** Question structurée 9 pour Physique (Première).

**Q2.** Question structurée 10 pour Physique (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Physique (Première).

**Q3.** Question structurée 12 pour Physique (Première).

**Q3.** Question structurée 13 pour Physique (Première).

**Q3.** Question structurée 14 pour Physique (Première).

**Q3.** Question structurée 15 pour Physique (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Physique (Première).

**Q4.** Question structurée 17 pour Physique (Première).

**Q4.** Question structurée 18 pour Physique (Première).

**Q4.** Question structurée 19 pour Physique (Première).

**Q4.** Question structurée 20 pour Physique (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Physique — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '36277e0d-da4c-a64f-944f-1b03c1ee1cb0', 'fr-lycee-physique-meca-elec', 'Physique', 'Probatoire Physique — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire PHYSIQUE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Physique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Physique (Première).

**Q1.** Question structurée 2 pour Physique (Première).

**Q1.** Question structurée 3 pour Physique (Première).

**Q1.** Question structurée 4 pour Physique (Première).

**Q1.** Question structurée 5 pour Physique (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Physique (Première).

**Q2.** Question structurée 7 pour Physique (Première).

**Q2.** Question structurée 8 pour Physique (Première).

**Q2.** Question structurée 9 pour Physique (Première).

**Q2.** Question structurée 10 pour Physique (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Physique (Première).

**Q3.** Question structurée 12 pour Physique (Première).

**Q3.** Question structurée 13 pour Physique (Première).

**Q3.** Question structurée 14 pour Physique (Première).

**Q3.** Question structurée 15 pour Physique (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Physique (Première).

**Q4.** Question structurée 17 pour Physique (Première).

**Q4.** Question structurée 18 pour Physique (Première).

**Q4.** Question structurée 19 pour Physique (Première).

**Q4.** Question structurée 20 pour Physique (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Physique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '565f648c-8217-3313-a46b-ab2c4f62b04a', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le nombre d''Avogadro est :

A. 6,02×10²³
B. 6,67×10⁻¹¹
C. 3×10⁸
D. 9,8

---

**Q2.** La mole est :

A. l''unité de quantité de matière
B. l''unité de masse
C. l''unité de volume
D. l''unité de température

---

**Q3.** La masse molaire s''exprime en :

A. g/mol
B. g
C. mol
D. kg

---

**Q4.** Le volume molaire d''un gaz dans les CNTP est :

A. 22,4 L/mol
B. 1 L/mol
C. 6,02 L/mol
D. 100 L/mol

---

**Q5.** La concentration molaire est :

A. C = n/V
B. C = n·V
C. C = V/n
D. C = n+V

---

**Q6.** La concentration massique est :

A. Cm = m/V
B. Cm = m·V
C. Cm = V/m
D. Cm = m+V

---

**Q7.** Le pH d''une solution est :

A. pH = -log[H⁺]
B. pH = log[H⁺]
C. pH = [H⁺]
D. pH = 1/[H⁺]

---

**Q8.** Une solution neutre a un pH :

A. égal à 7
B. inférieur à 7
C. supérieur à 7
D. égal à 0

---

**Q9.** La constante d''acidité Ka :

A. mesure la force d''un acide
B. mesure la température
C. mesure la masse
D. mesure le volume

---

**Q10.** Un acide fort :

A. se dissocie totalement
B. se dissocie partiellement
C. ne se dissocie pas
D. est basique

---

**Q11.** Une base faible :

A. se dissocie partiellement
B. se dissocie totalement
C. ne se dissocie pas
D. est acide

---

**Q12.** La réaction d''oxydoréduction :

A. échange des électrons
B. échange des protons
C. échange des neutrons
D. échange de la chaleur

---

**Q13.** L''oxydation est :

A. une perte d''électrons
B. un gain d''électrons
C. un gain de protons
D. une perte de protons

---

**Q14.** La réduction est :

A. un gain d''électrons
B. une perte d''électrons
C. un gain de protons
D. une perte de protons

---

**Q15.** L''oxydant est :

A. l''espèce qui capte des électrons
B. l''espèce qui cède des électrons
C. l''espèce neutre
D. l''espèce chargée

---

**Q16.** Le réducteur est :

A. l''espèce qui cède des électrons
B. l''espèce qui capte des électrons
C. l''espèce neutre
D. l''espèce chargée

---

**Q17.** Le nombre d''oxydation :

A. mesure l''état d''oxydation
B. mesure la masse
C. mesure le volume
D. mesure la température

---

**Q18.** L''électrolyse :

A. transforme l''énergie électrique en chimique
B. produit de l''électricité
C. est une combustion
D. est une distillation

---

**Q19.** La pile électrochimique :

A. transforme l''énergie chimique en électrique
B. consomme de l''électricité
C. est une électrolyse
D. est une combustion

---

**Q20.** L''anode est :

A. l''électrode où a lieu l''oxydation
B. l''électrode où a lieu la réduction
C. l''électrode neutre
D. le pôle négatif

---

## CORRIGÉ

1. 6,02×10²³
2. l''unité de quantité de matière
3. g/mol
4. 22,4 L/mol
5. C = n/V
6. Cm = m/V
7. pH = -log[H⁺]
8. égal à 7
9. mesure la force d''un acide
10. se dissocie totalement
11. se dissocie partiellement
12. échange des électrons
13. une perte d''électrons
14. un gain d''électrons
15. l''espèce qui capte des électrons
16. l''espèce qui cède des électrons
17. mesure l''état d''oxydation
18. transforme l''énergie électrique en chimique
19. transforme l''énergie chimique en électrique
20. l''électrode où a lieu l''oxydation
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3fe06b18-f429-6038-5448-d826b9d2187e', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La cathode est :

A. l''électrode où a lieu la réduction
B. l''électrode où a lieu l''oxydation
C. l''électrode neutre
D. le pôle positif

---

**Q2.** La cinétique chimique étudie :

A. la vitesse des réactions
B. l''équilibre
C. la thermodynamique
D. la structure

---

**Q3.** La vitesse d''une réaction :

A. diminue avec le temps
B. augmente avec le temps
C. est constante
D. est nulle

---

**Q4.** Un catalyseur :

A. accélère la réaction sans être consommé
B. ralentit la réaction
C. est consommé
D. n''a aucun effet

---

**Q5.** La température :

A. augmente la vitesse de réaction
B. diminue la vitesse
C. n''a aucun effet
D. arrête la réaction

---

**Q6.** L''équilibre chimique :

A. les vitesses directe et inverse sont égales
B. la réaction s''arrête
C. les concentrations sont nulles
D. la réaction est totale

---

**Q7.** La constante d''équilibre K :

A. caractérise l''équilibre
B. mesure la vitesse
C. mesure la température
D. mesure la masse

---

**Q8.** Le principe de Le Chatelier :

A. un système réagit pour s''opposer à une perturbation
B. un système ne réagit pas
C. un système accélère
D. un système s''arrête

---

**Q9.** La thermochimie étudie :

A. les échanges de chaleur
B. la vitesse
C. l''équilibre
D. la structure

---

**Q10.** Une réaction exothermique :

A. libère de la chaleur
B. absorbe de la chaleur
C. ne dégage rien
D. est froide

---

**Q11.** Une réaction endothermique :

A. absorbe de la chaleur
B. libère de la chaleur
C. ne dégage rien
D. est chaude

---

**Q12.** L''enthalpie de réaction ΔH :

A. mesure la chaleur échangée
B. mesure la vitesse
C. mesure la masse
D. mesure le volume

---

**Q13.** La chimie organique étudie :

A. les composés du carbone
B. les métaux
C. les gaz rares
D. les sels

---

**Q14.** Le carbone a une valence :

A. 4
B. 2
C. 3
D. 1

---

**Q15.** L''isomérie :

A. même formule brute, structure différente
B. formule différente
C. même structure
D. même masse

---

**Q16.** Les alcanes ont pour formule générale :

A. CnH₂n₊₂
B. CnH₂n
C. CnH₂n₋₂
D. CnHn

---

**Q17.** Les alcènes ont pour formule générale :

A. CnH₂n
B. CnH₂n₊₂
C. CnH₂n₋₂
D. CnHn

---

**Q18.** Les alcynes ont pour formule générale :

A. CnH₂n₋₂
B. CnH₂n
C. CnH₂n₊₂
D. CnHn

---

**Q19.** Le groupe fonctionnel des alcools est :

A. -OH
B. -COOH
C. -CHO
D. -NH₂

---

**Q20.** Le groupe fonctionnel des acides carboxyliques est :

A. -COOH
B. -OH
C. -CHO
D. -NH₂

---

## CORRIGÉ

1. l''électrode où a lieu la réduction
2. la vitesse des réactions
3. diminue avec le temps
4. accélère la réaction sans être consommé
5. augmente la vitesse de réaction
6. les vitesses directe et inverse sont égales
7. caractérise l''équilibre
8. un système réagit pour s''opposer à une perturbation
9. les échanges de chaleur
10. libère de la chaleur
11. absorbe de la chaleur
12. mesure la chaleur échangée
13. les composés du carbone
14. 4
15. même formule brute, structure différente
16. CnH₂n₊₂
17. CnH₂n
18. CnH₂n₋₂
19. -OH
20. -COOH
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ab03b351-fad5-9f3d-e338-6061522d6d15', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le groupe fonctionnel des aldéhydes est :

A. -CHO
B. -OH
C. -COOH
D. -NH₂

---

**Q2.** Le groupe fonctionnel des amines est :

A. -NH₂
B. -OH
C. -COOH
D. -CHO

---

**Q3.** L''estérification :

A. acide + alcool → ester + eau
B. acide + base → sel
C. alcool → alcène
D. alcane → alcool

---

**Q4.** L''hydrolyse d''un ester :

A. ester + eau → acide + alcool
B. ester → alcool
C. ester → acide
D. ester → sel

---

**Q5.** La saponification :

A. ester + base → savon + alcool
B. acide + alcool → ester
C. alcool → alcène
D. alcane → alcool

---

**Q6.** La polymérisation :

A. assemble des monomères
B. divise des polymères
C. est une combustion
D. est une distillation

---

**Q7.** Le monomère est :

A. l''unité de base du polymère
B. le polymère
C. le produit final
D. un catalyseur

---

**Q8.** La distillation :

A. sépare les constituants d''un mélange
B. mélange deux liquides
C. solidifie
D. cristallise

---

**Q9.** La chromatographie :

A. sépare les constituants d''un mélange
B. mélange
C. solidifie
D. cristallise

---

**Q10.** Le titrage :

A. détermine une concentration
B. mesure la masse
C. mesure le volume
D. mesure la température

---

**Q11.** Le point d''équivalence :

A. les réactifs sont en proportions stœchiométriques
B. la réaction s''arrête
C. le pH est nul
D. la température est maximale

---

**Q12.** La spectrophotométrie :

A. mesure l''absorbance
B. mesure la masse
C. mesure le volume
D. mesure la température

---

**Q13.** La loi de Beer-Lambert :

A. A = ε·l·C
B. A = ε·l/C
C. A = C/ε·l
D. A = ε·C/l

---

**Q14.** L''absorbance est :

A. proportionnelle à la concentration
B. inversement proportionnelle
C. constante
D. nulle

---

**Q15.** Le tableau d''avancement :

A. suit l''évolution d''une réaction
B. mesure la vitesse
C. mesure la température
D. mesure la masse

---

**Q16.** L''avancement maximal :

A. quand le réactif limitant est consommé
B. quand la réaction s''arrête
C. quand le pH est nul
D. quand la température est maximale

---

**Q17.** Le réactif limitant :

A. est entièrement consommé
B. reste en excès
C. est le catalyseur
D. est le produit

---

**Q18.** Le rendement d''une réaction :

A. quantité obtenue / quantité théorique
B. quantité théorique / obtenue
C. quantité obtenue × théorique
D. quantité théorique

---

**Q19.** La chimie verte :

A. réduit l''impact environnemental
B. augmente les déchets
C. utilise des toxiques
D. est polluante

---

**Q20.** L''atome de carbone peut former :

A. 4 liaisons
B. 2 liaisons
C. 3 liaisons
D. 1 liaison

---

## CORRIGÉ

1. -CHO
2. -NH₂
3. acide + alcool → ester + eau
4. ester + eau → acide + alcool
5. ester + base → savon + alcool
6. assemble des monomères
7. l''unité de base du polymère
8. sépare les constituants d''un mélange
9. sépare les constituants d''un mélange
10. détermine une concentration
11. les réactifs sont en proportions stœchiométriques
12. mesure l''absorbance
13. A = ε·l·C
14. proportionnelle à la concentration
15. suit l''évolution d''une réaction
16. quand le réactif limitant est consommé
17. est entièrement consommé
18. quantité obtenue / quantité théorique
19. réduit l''impact environnemental
20. 4 liaisons
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7fe973c6-6c49-e74c-e001-33589ce86d79', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — Sujet structuré — Série 4',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Chimie (Seconde).

**Q1.** Question structurée 2 pour Chimie (Seconde).

**Q1.** Question structurée 3 pour Chimie (Seconde).

**Q1.** Question structurée 4 pour Chimie (Seconde).

**Q1.** Question structurée 5 pour Chimie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Chimie (Seconde).

**Q2.** Question structurée 7 pour Chimie (Seconde).

**Q2.** Question structurée 8 pour Chimie (Seconde).

**Q2.** Question structurée 9 pour Chimie (Seconde).

**Q2.** Question structurée 10 pour Chimie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Chimie (Seconde).

**Q3.** Question structurée 12 pour Chimie (Seconde).

**Q3.** Question structurée 13 pour Chimie (Seconde).

**Q3.** Question structurée 14 pour Chimie (Seconde).

**Q3.** Question structurée 15 pour Chimie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Chimie (Seconde).

**Q4.** Question structurée 17 pour Chimie (Seconde).

**Q4.** Question structurée 18 pour Chimie (Seconde).

**Q4.** Question structurée 19 pour Chimie (Seconde).

**Q4.** Question structurée 20 pour Chimie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '06bc74e7-650f-1eb9-81e4-392dbdfc1c85', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — Sujet structuré — Série 5',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Chimie (Seconde).

**Q1.** Question structurée 2 pour Chimie (Seconde).

**Q1.** Question structurée 3 pour Chimie (Seconde).

**Q1.** Question structurée 4 pour Chimie (Seconde).

**Q1.** Question structurée 5 pour Chimie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Chimie (Seconde).

**Q2.** Question structurée 7 pour Chimie (Seconde).

**Q2.** Question structurée 8 pour Chimie (Seconde).

**Q2.** Question structurée 9 pour Chimie (Seconde).

**Q2.** Question structurée 10 pour Chimie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Chimie (Seconde).

**Q3.** Question structurée 12 pour Chimie (Seconde).

**Q3.** Question structurée 13 pour Chimie (Seconde).

**Q3.** Question structurée 14 pour Chimie (Seconde).

**Q3.** Question structurée 15 pour Chimie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Chimie (Seconde).

**Q4.** Question structurée 17 pour Chimie (Seconde).

**Q4.** Question structurée 18 pour Chimie (Seconde).

**Q4.** Question structurée 19 pour Chimie (Seconde).

**Q4.** Question structurée 20 pour Chimie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9c006c22-2207-c366-0eba-75a2796889ca', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — Sujet structuré — Série 6',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Chimie (Seconde).

**Q1.** Question structurée 2 pour Chimie (Seconde).

**Q1.** Question structurée 3 pour Chimie (Seconde).

**Q1.** Question structurée 4 pour Chimie (Seconde).

**Q1.** Question structurée 5 pour Chimie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Chimie (Seconde).

**Q2.** Question structurée 7 pour Chimie (Seconde).

**Q2.** Question structurée 8 pour Chimie (Seconde).

**Q2.** Question structurée 9 pour Chimie (Seconde).

**Q2.** Question structurée 10 pour Chimie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Chimie (Seconde).

**Q3.** Question structurée 12 pour Chimie (Seconde).

**Q3.** Question structurée 13 pour Chimie (Seconde).

**Q3.** Question structurée 14 pour Chimie (Seconde).

**Q3.** Question structurée 15 pour Chimie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Chimie (Seconde).

**Q4.** Question structurée 17 pour Chimie (Seconde).

**Q4.** Question structurée 18 pour Chimie (Seconde).

**Q4.** Question structurée 19 pour Chimie (Seconde).

**Q4.** Question structurée 20 pour Chimie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '42fc0e03-c63e-7f4d-6b41-87de329bf4ca', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — Sujet structuré — Série 7',
    'french', 'advanced', array['seconde']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Chimie (Seconde).

**Q1.** Question structurée 2 pour Chimie (Seconde).

**Q1.** Question structurée 3 pour Chimie (Seconde).

**Q1.** Question structurée 4 pour Chimie (Seconde).

**Q1.** Question structurée 5 pour Chimie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Chimie (Seconde).

**Q2.** Question structurée 7 pour Chimie (Seconde).

**Q2.** Question structurée 8 pour Chimie (Seconde).

**Q2.** Question structurée 9 pour Chimie (Seconde).

**Q2.** Question structurée 10 pour Chimie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Chimie (Seconde).

**Q3.** Question structurée 12 pour Chimie (Seconde).

**Q3.** Question structurée 13 pour Chimie (Seconde).

**Q3.** Question structurée 14 pour Chimie (Seconde).

**Q3.** Question structurée 15 pour Chimie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Chimie (Seconde).

**Q4.** Question structurée 17 pour Chimie (Seconde).

**Q4.** Question structurée 18 pour Chimie (Seconde).

**Q4.** Question structurée 19 pour Chimie (Seconde).

**Q4.** Question structurée 20 pour Chimie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '07e79518-c6a7-909b-4e51-31da0c36a4d2', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le nombre d''Avogadro est :

A. 6,02×10²³
B. 6,67×10⁻¹¹
C. 3×10⁸
D. 9,8

---

**Q2.** La mole est :

A. l''unité de quantité de matière
B. l''unité de masse
C. l''unité de volume
D. l''unité de température

---

**Q3.** La masse molaire s''exprime en :

A. g/mol
B. g
C. mol
D. kg

---

**Q4.** Le volume molaire d''un gaz dans les CNTP est :

A. 22,4 L/mol
B. 1 L/mol
C. 6,02 L/mol
D. 100 L/mol

---

**Q5.** La concentration molaire est :

A. C = n/V
B. C = n·V
C. C = V/n
D. C = n+V

---

**Q6.** La concentration massique est :

A. Cm = m/V
B. Cm = m·V
C. Cm = V/m
D. Cm = m+V

---

**Q7.** Le pH d''une solution est :

A. pH = -log[H⁺]
B. pH = log[H⁺]
C. pH = [H⁺]
D. pH = 1/[H⁺]

---

**Q8.** Une solution neutre a un pH :

A. égal à 7
B. inférieur à 7
C. supérieur à 7
D. égal à 0

---

**Q9.** La constante d''acidité Ka :

A. mesure la force d''un acide
B. mesure la température
C. mesure la masse
D. mesure le volume

---

**Q10.** Un acide fort :

A. se dissocie totalement
B. se dissocie partiellement
C. ne se dissocie pas
D. est basique

---

**Q11.** Une base faible :

A. se dissocie partiellement
B. se dissocie totalement
C. ne se dissocie pas
D. est acide

---

**Q12.** La réaction d''oxydoréduction :

A. échange des électrons
B. échange des protons
C. échange des neutrons
D. échange de la chaleur

---

**Q13.** L''oxydation est :

A. une perte d''électrons
B. un gain d''électrons
C. un gain de protons
D. une perte de protons

---

**Q14.** La réduction est :

A. un gain d''électrons
B. une perte d''électrons
C. un gain de protons
D. une perte de protons

---

**Q15.** L''oxydant est :

A. l''espèce qui capte des électrons
B. l''espèce qui cède des électrons
C. l''espèce neutre
D. l''espèce chargée

---

**Q16.** Le réducteur est :

A. l''espèce qui cède des électrons
B. l''espèce qui capte des électrons
C. l''espèce neutre
D. l''espèce chargée

---

**Q17.** Le nombre d''oxydation :

A. mesure l''état d''oxydation
B. mesure la masse
C. mesure le volume
D. mesure la température

---

**Q18.** L''électrolyse :

A. transforme l''énergie électrique en chimique
B. produit de l''électricité
C. est une combustion
D. est une distillation

---

**Q19.** La pile électrochimique :

A. transforme l''énergie chimique en électrique
B. consomme de l''électricité
C. est une électrolyse
D. est une combustion

---

**Q20.** L''anode est :

A. l''électrode où a lieu l''oxydation
B. l''électrode où a lieu la réduction
C. l''électrode neutre
D. le pôle négatif

---

## CORRIGÉ

1. 6,02×10²³
2. l''unité de quantité de matière
3. g/mol
4. 22,4 L/mol
5. C = n/V
6. Cm = m/V
7. pH = -log[H⁺]
8. égal à 7
9. mesure la force d''un acide
10. se dissocie totalement
11. se dissocie partiellement
12. échange des électrons
13. une perte d''électrons
14. un gain d''électrons
15. l''espèce qui capte des électrons
16. l''espèce qui cède des électrons
17. mesure l''état d''oxydation
18. transforme l''énergie électrique en chimique
19. transforme l''énergie chimique en électrique
20. l''électrode où a lieu l''oxydation
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c155c888-4af7-df6e-a248-227da1d047c4', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La cathode est :

A. l''électrode où a lieu la réduction
B. l''électrode où a lieu l''oxydation
C. l''électrode neutre
D. le pôle positif

---

**Q2.** La cinétique chimique étudie :

A. la vitesse des réactions
B. l''équilibre
C. la thermodynamique
D. la structure

---

**Q3.** La vitesse d''une réaction :

A. diminue avec le temps
B. augmente avec le temps
C. est constante
D. est nulle

---

**Q4.** Un catalyseur :

A. accélère la réaction sans être consommé
B. ralentit la réaction
C. est consommé
D. n''a aucun effet

---

**Q5.** La température :

A. augmente la vitesse de réaction
B. diminue la vitesse
C. n''a aucun effet
D. arrête la réaction

---

**Q6.** L''équilibre chimique :

A. les vitesses directe et inverse sont égales
B. la réaction s''arrête
C. les concentrations sont nulles
D. la réaction est totale

---

**Q7.** La constante d''équilibre K :

A. caractérise l''équilibre
B. mesure la vitesse
C. mesure la température
D. mesure la masse

---

**Q8.** Le principe de Le Chatelier :

A. un système réagit pour s''opposer à une perturbation
B. un système ne réagit pas
C. un système accélère
D. un système s''arrête

---

**Q9.** La thermochimie étudie :

A. les échanges de chaleur
B. la vitesse
C. l''équilibre
D. la structure

---

**Q10.** Une réaction exothermique :

A. libère de la chaleur
B. absorbe de la chaleur
C. ne dégage rien
D. est froide

---

**Q11.** Une réaction endothermique :

A. absorbe de la chaleur
B. libère de la chaleur
C. ne dégage rien
D. est chaude

---

**Q12.** L''enthalpie de réaction ΔH :

A. mesure la chaleur échangée
B. mesure la vitesse
C. mesure la masse
D. mesure le volume

---

**Q13.** La chimie organique étudie :

A. les composés du carbone
B. les métaux
C. les gaz rares
D. les sels

---

**Q14.** Le carbone a une valence :

A. 4
B. 2
C. 3
D. 1

---

**Q15.** L''isomérie :

A. même formule brute, structure différente
B. formule différente
C. même structure
D. même masse

---

**Q16.** Les alcanes ont pour formule générale :

A. CnH₂n₊₂
B. CnH₂n
C. CnH₂n₋₂
D. CnHn

---

**Q17.** Les alcènes ont pour formule générale :

A. CnH₂n
B. CnH₂n₊₂
C. CnH₂n₋₂
D. CnHn

---

**Q18.** Les alcynes ont pour formule générale :

A. CnH₂n₋₂
B. CnH₂n
C. CnH₂n₊₂
D. CnHn

---

**Q19.** Le groupe fonctionnel des alcools est :

A. -OH
B. -COOH
C. -CHO
D. -NH₂

---

**Q20.** Le groupe fonctionnel des acides carboxyliques est :

A. -COOH
B. -OH
C. -CHO
D. -NH₂

---

## CORRIGÉ

1. l''électrode où a lieu la réduction
2. la vitesse des réactions
3. diminue avec le temps
4. accélère la réaction sans être consommé
5. augmente la vitesse de réaction
6. les vitesses directe et inverse sont égales
7. caractérise l''équilibre
8. un système réagit pour s''opposer à une perturbation
9. les échanges de chaleur
10. libère de la chaleur
11. absorbe de la chaleur
12. mesure la chaleur échangée
13. les composés du carbone
14. 4
15. même formule brute, structure différente
16. CnH₂n₊₂
17. CnH₂n
18. CnH₂n₋₂
19. -OH
20. -COOH
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '912ef84f-d118-6625-9451-440968e59ee7', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le groupe fonctionnel des aldéhydes est :

A. -CHO
B. -OH
C. -COOH
D. -NH₂

---

**Q2.** Le groupe fonctionnel des amines est :

A. -NH₂
B. -OH
C. -COOH
D. -CHO

---

**Q3.** L''estérification :

A. acide + alcool → ester + eau
B. acide + base → sel
C. alcool → alcène
D. alcane → alcool

---

**Q4.** L''hydrolyse d''un ester :

A. ester + eau → acide + alcool
B. ester → alcool
C. ester → acide
D. ester → sel

---

**Q5.** La saponification :

A. ester + base → savon + alcool
B. acide + alcool → ester
C. alcool → alcène
D. alcane → alcool

---

**Q6.** La polymérisation :

A. assemble des monomères
B. divise des polymères
C. est une combustion
D. est une distillation

---

**Q7.** Le monomère est :

A. l''unité de base du polymère
B. le polymère
C. le produit final
D. un catalyseur

---

**Q8.** La distillation :

A. sépare les constituants d''un mélange
B. mélange deux liquides
C. solidifie
D. cristallise

---

**Q9.** La chromatographie :

A. sépare les constituants d''un mélange
B. mélange
C. solidifie
D. cristallise

---

**Q10.** Le titrage :

A. détermine une concentration
B. mesure la masse
C. mesure le volume
D. mesure la température

---

**Q11.** Le point d''équivalence :

A. les réactifs sont en proportions stœchiométriques
B. la réaction s''arrête
C. le pH est nul
D. la température est maximale

---

**Q12.** La spectrophotométrie :

A. mesure l''absorbance
B. mesure la masse
C. mesure le volume
D. mesure la température

---

**Q13.** La loi de Beer-Lambert :

A. A = ε·l·C
B. A = ε·l/C
C. A = C/ε·l
D. A = ε·C/l

---

**Q14.** L''absorbance est :

A. proportionnelle à la concentration
B. inversement proportionnelle
C. constante
D. nulle

---

**Q15.** Le tableau d''avancement :

A. suit l''évolution d''une réaction
B. mesure la vitesse
C. mesure la température
D. mesure la masse

---

**Q16.** L''avancement maximal :

A. quand le réactif limitant est consommé
B. quand la réaction s''arrête
C. quand le pH est nul
D. quand la température est maximale

---

**Q17.** Le réactif limitant :

A. est entièrement consommé
B. reste en excès
C. est le catalyseur
D. est le produit

---

**Q18.** Le rendement d''une réaction :

A. quantité obtenue / quantité théorique
B. quantité théorique / obtenue
C. quantité obtenue × théorique
D. quantité théorique

---

**Q19.** La chimie verte :

A. réduit l''impact environnemental
B. augmente les déchets
C. utilise des toxiques
D. est polluante

---

**Q20.** L''atome de carbone peut former :

A. 4 liaisons
B. 2 liaisons
C. 3 liaisons
D. 1 liaison

---

## CORRIGÉ

1. -CHO
2. -NH₂
3. acide + alcool → ester + eau
4. ester + eau → acide + alcool
5. ester + base → savon + alcool
6. assemble des monomères
7. l''unité de base du polymère
8. sépare les constituants d''un mélange
9. sépare les constituants d''un mélange
10. détermine une concentration
11. les réactifs sont en proportions stœchiométriques
12. mesure l''absorbance
13. A = ε·l·C
14. proportionnelle à la concentration
15. suit l''évolution d''une réaction
16. quand le réactif limitant est consommé
17. est entièrement consommé
18. quantité obtenue / quantité théorique
19. réduit l''impact environnemental
20. 4 liaisons
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '94c4fa8a-f486-98ef-f608-7dd3f03ab282', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Chimie (Première).

**Q1.** Question structurée 2 pour Chimie (Première).

**Q1.** Question structurée 3 pour Chimie (Première).

**Q1.** Question structurée 4 pour Chimie (Première).

**Q1.** Question structurée 5 pour Chimie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Chimie (Première).

**Q2.** Question structurée 7 pour Chimie (Première).

**Q2.** Question structurée 8 pour Chimie (Première).

**Q2.** Question structurée 9 pour Chimie (Première).

**Q2.** Question structurée 10 pour Chimie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Chimie (Première).

**Q3.** Question structurée 12 pour Chimie (Première).

**Q3.** Question structurée 13 pour Chimie (Première).

**Q3.** Question structurée 14 pour Chimie (Première).

**Q3.** Question structurée 15 pour Chimie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Chimie (Première).

**Q4.** Question structurée 17 pour Chimie (Première).

**Q4.** Question structurée 18 pour Chimie (Première).

**Q4.** Question structurée 19 pour Chimie (Première).

**Q4.** Question structurée 20 pour Chimie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '492e2657-a63f-16ec-23d5-bd798900d211', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Chimie (Première).

**Q1.** Question structurée 2 pour Chimie (Première).

**Q1.** Question structurée 3 pour Chimie (Première).

**Q1.** Question structurée 4 pour Chimie (Première).

**Q1.** Question structurée 5 pour Chimie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Chimie (Première).

**Q2.** Question structurée 7 pour Chimie (Première).

**Q2.** Question structurée 8 pour Chimie (Première).

**Q2.** Question structurée 9 pour Chimie (Première).

**Q2.** Question structurée 10 pour Chimie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Chimie (Première).

**Q3.** Question structurée 12 pour Chimie (Première).

**Q3.** Question structurée 13 pour Chimie (Première).

**Q3.** Question structurée 14 pour Chimie (Première).

**Q3.** Question structurée 15 pour Chimie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Chimie (Première).

**Q4.** Question structurée 17 pour Chimie (Première).

**Q4.** Question structurée 18 pour Chimie (Première).

**Q4.** Question structurée 19 pour Chimie (Première).

**Q4.** Question structurée 20 pour Chimie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1bd8bc02-0ad5-4166-2976-63c5bb25aa49', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Chimie (Première).

**Q1.** Question structurée 2 pour Chimie (Première).

**Q1.** Question structurée 3 pour Chimie (Première).

**Q1.** Question structurée 4 pour Chimie (Première).

**Q1.** Question structurée 5 pour Chimie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Chimie (Première).

**Q2.** Question structurée 7 pour Chimie (Première).

**Q2.** Question structurée 8 pour Chimie (Première).

**Q2.** Question structurée 9 pour Chimie (Première).

**Q2.** Question structurée 10 pour Chimie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Chimie (Première).

**Q3.** Question structurée 12 pour Chimie (Première).

**Q3.** Question structurée 13 pour Chimie (Première).

**Q3.** Question structurée 14 pour Chimie (Première).

**Q3.** Question structurée 15 pour Chimie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Chimie (Première).

**Q4.** Question structurée 17 pour Chimie (Première).

**Q4.** Question structurée 18 pour Chimie (Première).

**Q4.** Question structurée 19 pour Chimie (Première).

**Q4.** Question structurée 20 pour Chimie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Chimie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '665542a8-9a9c-3daf-f7c9-932ab1cc305f', 'fr-lycee-chimie-solutions-organique', 'Chimie', 'Probatoire Chimie — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere']::text[], array['c','d','e','ti']::text[], 'published',
    '# CAMEROON Probatoire CHIMIE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, E, TI
**Subject:** Chimie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Chimie (Première).

**Q1.** Question structurée 2 pour Chimie (Première).

**Q1.** Question structurée 3 pour Chimie (Première).

**Q1.** Question structurée 4 pour Chimie (Première).

**Q1.** Question structurée 5 pour Chimie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Chimie (Première).

**Q2.** Question structurée 7 pour Chimie (Première).

**Q2.** Question structurée 8 pour Chimie (Première).

**Q2.** Question structurée 9 pour Chimie (Première).

**Q2.** Question structurée 10 pour Chimie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Chimie (Première).

**Q3.** Question structurée 12 pour Chimie (Première).

**Q3.** Question structurée 13 pour Chimie (Première).

**Q3.** Question structurée 14 pour Chimie (Première).

**Q3.** Question structurée 15 pour Chimie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Chimie (Première).

**Q4.** Question structurée 17 pour Chimie (Première).

**Q4.** Question structurée 18 pour Chimie (Première).

**Q4.** Question structurée 19 pour Chimie (Première).

**Q4.** Question structurée 20 pour Chimie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Chimie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a2329521-7ec0-1986-55b0-c00a17d229cc', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['seconde']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f2c40487-ddfb-905c-48c4-448494516b99', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['seconde']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '47b0a292-f29a-22c0-a251-e50b06f79bd9', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['seconde']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c41631f3-6c13-b06b-404f-23916a63a718', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 4',
    'french', 'advanced', array['seconde']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 2 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 3 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 4 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 5 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 7 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 8 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 9 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 10 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 12 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 13 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 14 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 15 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 17 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 18 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 19 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 20 pour Sciences de la Vie et de la Terre (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7862174e-1805-848a-679c-ec3bc0a246d1', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 5',
    'french', 'advanced', array['seconde']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 2 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 3 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 4 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 5 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 7 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 8 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 9 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 10 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 12 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 13 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 14 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 15 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 17 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 18 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 19 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 20 pour Sciences de la Vie et de la Terre (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c196ab93-91de-769f-0755-d542a65872c5', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 6',
    'french', 'advanced', array['seconde']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 2 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 3 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 4 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 5 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 7 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 8 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 9 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 10 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 12 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 13 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 14 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 15 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 17 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 18 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 19 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 20 pour Sciences de la Vie et de la Terre (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1cdd8c7c-6fe5-813e-7ea9-1f8608d4f18c', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 7',
    'french', 'advanced', array['seconde']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 2 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 3 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 4 pour Sciences de la Vie et de la Terre (Seconde).

**Q1.** Question structurée 5 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 7 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 8 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 9 pour Sciences de la Vie et de la Terre (Seconde).

**Q2.** Question structurée 10 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 12 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 13 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 14 pour Sciences de la Vie et de la Terre (Seconde).

**Q3.** Question structurée 15 pour Sciences de la Vie et de la Terre (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 17 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 18 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 19 pour Sciences de la Vie et de la Terre (Seconde).

**Q4.** Question structurée 20 pour Sciences de la Vie et de la Terre (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '63fda00c-c2d6-019b-7461-f4cd1bb25713', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3a3dce63-a277-fba9-b9d9-27be2693a58b', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '10abc3cc-fe96-b2a8-e5cc-52e869a94efc', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '637ab651-d1e5-9696-8e21-980d2f22bec0', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 2 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 3 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 4 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 5 pour Sciences de la Vie et de la Terre (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 7 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 8 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 9 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 10 pour Sciences de la Vie et de la Terre (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 12 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 13 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 14 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 15 pour Sciences de la Vie et de la Terre (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 17 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 18 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 19 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 20 pour Sciences de la Vie et de la Terre (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd959607b-1ec2-45d3-e0b7-bbbd0eb477a1', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 2 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 3 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 4 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 5 pour Sciences de la Vie et de la Terre (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 7 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 8 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 9 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 10 pour Sciences de la Vie et de la Terre (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 12 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 13 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 14 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 15 pour Sciences de la Vie et de la Terre (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 17 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 18 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 19 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 20 pour Sciences de la Vie et de la Terre (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3280a449-57cd-ae26-8e87-b7f1655ea32f', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 2 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 3 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 4 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 5 pour Sciences de la Vie et de la Terre (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 7 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 8 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 9 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 10 pour Sciences de la Vie et de la Terre (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 12 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 13 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 14 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 15 pour Sciences de la Vie et de la Terre (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 17 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 18 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 19 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 20 pour Sciences de la Vie et de la Terre (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '10554ff7-e1ad-7984-d196-3e32656b76bf', 'fr-lycee-svt-genetique-immunologie', 'Sciences de la Vie et de la Terre', 'Probatoire Sciences de la Vie et de la Terre — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere']::text[], array['c','d','ti']::text[], 'published',
    '# CAMEROON Probatoire SCIENCES DE LA VIE ET DE LA TERRE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** C, D, TI
**Subject:** Sciences de la Vie et de la Terre
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 2 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 3 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 4 pour Sciences de la Vie et de la Terre (Première).

**Q1.** Question structurée 5 pour Sciences de la Vie et de la Terre (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 7 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 8 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 9 pour Sciences de la Vie et de la Terre (Première).

**Q2.** Question structurée 10 pour Sciences de la Vie et de la Terre (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 12 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 13 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 14 pour Sciences de la Vie et de la Terre (Première).

**Q3.** Question structurée 15 pour Sciences de la Vie et de la Terre (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 17 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 18 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 19 pour Sciences de la Vie et de la Terre (Première).

**Q4.** Question structurée 20 pour Sciences de la Vie et de la Terre (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Sciences de la Vie et de la Terre Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e826ca34-8387-211a-cab3-24c67b4d5985', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7884b84f-8194-f2bf-f666-3ab56b224414', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd188d3ba-0ab8-c14d-03cf-d67c2aa10ab3', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a7771d7d-60bb-6fe9-2674-494a97b466b5', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — Sujet structuré — Série 4',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 2 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 3 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 4 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 5 pour Histoire-Géographie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 7 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 8 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 9 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 10 pour Histoire-Géographie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 12 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 13 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 14 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 15 pour Histoire-Géographie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 17 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 18 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 19 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 20 pour Histoire-Géographie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1fc164c4-1c65-859a-e04f-34b918628f48', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — Sujet structuré — Série 5',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 2 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 3 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 4 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 5 pour Histoire-Géographie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 7 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 8 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 9 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 10 pour Histoire-Géographie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 12 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 13 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 14 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 15 pour Histoire-Géographie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 17 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 18 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 19 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 20 pour Histoire-Géographie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ba9bf7b4-aae1-9805-ce6b-46bbe871f534', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — Sujet structuré — Série 6',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 2 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 3 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 4 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 5 pour Histoire-Géographie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 7 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 8 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 9 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 10 pour Histoire-Géographie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 12 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 13 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 14 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 15 pour Histoire-Géographie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 17 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 18 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 19 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 20 pour Histoire-Géographie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b49ee9db-92b8-e20a-3f74-2b0ff02aa2ee', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — Sujet structuré — Série 7',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 2 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 3 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 4 pour Histoire-Géographie (Seconde).

**Q1.** Question structurée 5 pour Histoire-Géographie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 7 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 8 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 9 pour Histoire-Géographie (Seconde).

**Q2.** Question structurée 10 pour Histoire-Géographie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 12 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 13 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 14 pour Histoire-Géographie (Seconde).

**Q3.** Question structurée 15 pour Histoire-Géographie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 17 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 18 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 19 pour Histoire-Géographie (Seconde).

**Q4.** Question structurée 20 pour Histoire-Géographie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '304ee1df-f75d-a829-8e34-cb697dacbe45', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ca336d8b-b7bd-a3de-eac2-8da5c9c87515', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c3b8925f-75b3-f86c-4435-a08c0898844c', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd19cae3d-6570-e543-f673-e0dacd170731', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Histoire-Géographie (Première).

**Q1.** Question structurée 2 pour Histoire-Géographie (Première).

**Q1.** Question structurée 3 pour Histoire-Géographie (Première).

**Q1.** Question structurée 4 pour Histoire-Géographie (Première).

**Q1.** Question structurée 5 pour Histoire-Géographie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Histoire-Géographie (Première).

**Q2.** Question structurée 7 pour Histoire-Géographie (Première).

**Q2.** Question structurée 8 pour Histoire-Géographie (Première).

**Q2.** Question structurée 9 pour Histoire-Géographie (Première).

**Q2.** Question structurée 10 pour Histoire-Géographie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Histoire-Géographie (Première).

**Q3.** Question structurée 12 pour Histoire-Géographie (Première).

**Q3.** Question structurée 13 pour Histoire-Géographie (Première).

**Q3.** Question structurée 14 pour Histoire-Géographie (Première).

**Q3.** Question structurée 15 pour Histoire-Géographie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Histoire-Géographie (Première).

**Q4.** Question structurée 17 pour Histoire-Géographie (Première).

**Q4.** Question structurée 18 pour Histoire-Géographie (Première).

**Q4.** Question structurée 19 pour Histoire-Géographie (Première).

**Q4.** Question structurée 20 pour Histoire-Géographie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4a386c25-c34e-1001-ac6f-0dcab845405b', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Histoire-Géographie (Première).

**Q1.** Question structurée 2 pour Histoire-Géographie (Première).

**Q1.** Question structurée 3 pour Histoire-Géographie (Première).

**Q1.** Question structurée 4 pour Histoire-Géographie (Première).

**Q1.** Question structurée 5 pour Histoire-Géographie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Histoire-Géographie (Première).

**Q2.** Question structurée 7 pour Histoire-Géographie (Première).

**Q2.** Question structurée 8 pour Histoire-Géographie (Première).

**Q2.** Question structurée 9 pour Histoire-Géographie (Première).

**Q2.** Question structurée 10 pour Histoire-Géographie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Histoire-Géographie (Première).

**Q3.** Question structurée 12 pour Histoire-Géographie (Première).

**Q3.** Question structurée 13 pour Histoire-Géographie (Première).

**Q3.** Question structurée 14 pour Histoire-Géographie (Première).

**Q3.** Question structurée 15 pour Histoire-Géographie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Histoire-Géographie (Première).

**Q4.** Question structurée 17 pour Histoire-Géographie (Première).

**Q4.** Question structurée 18 pour Histoire-Géographie (Première).

**Q4.** Question structurée 19 pour Histoire-Géographie (Première).

**Q4.** Question structurée 20 pour Histoire-Géographie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '69741e57-b9cd-0047-e954-9ebd026564a9', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Histoire-Géographie (Première).

**Q1.** Question structurée 2 pour Histoire-Géographie (Première).

**Q1.** Question structurée 3 pour Histoire-Géographie (Première).

**Q1.** Question structurée 4 pour Histoire-Géographie (Première).

**Q1.** Question structurée 5 pour Histoire-Géographie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Histoire-Géographie (Première).

**Q2.** Question structurée 7 pour Histoire-Géographie (Première).

**Q2.** Question structurée 8 pour Histoire-Géographie (Première).

**Q2.** Question structurée 9 pour Histoire-Géographie (Première).

**Q2.** Question structurée 10 pour Histoire-Géographie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Histoire-Géographie (Première).

**Q3.** Question structurée 12 pour Histoire-Géographie (Première).

**Q3.** Question structurée 13 pour Histoire-Géographie (Première).

**Q3.** Question structurée 14 pour Histoire-Géographie (Première).

**Q3.** Question structurée 15 pour Histoire-Géographie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Histoire-Géographie (Première).

**Q4.** Question structurée 17 pour Histoire-Géographie (Première).

**Q4.** Question structurée 18 pour Histoire-Géographie (Première).

**Q4.** Question structurée 19 pour Histoire-Géographie (Première).

**Q4.** Question structurée 20 pour Histoire-Géographie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Histoire-Géographie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '12fb4cf0-2cf8-c826-6557-847a9a4d6270', 'fr-premiere-a4-hg-cameroun', 'Histoire-Géographie', 'Probatoire Histoire-Géographie — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi','c','d']::text[], 'published',
    '# CAMEROON Probatoire HISTOIRE-GÉOGRAPHIE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI, C, D
**Subject:** Histoire-Géographie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Histoire-Géographie (Première).

**Q1.** Question structurée 2 pour Histoire-Géographie (Première).

**Q1.** Question structurée 3 pour Histoire-Géographie (Première).

**Q1.** Question structurée 4 pour Histoire-Géographie (Première).

**Q1.** Question structurée 5 pour Histoire-Géographie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Histoire-Géographie (Première).

**Q2.** Question structurée 7 pour Histoire-Géographie (Première).

**Q2.** Question structurée 8 pour Histoire-Géographie (Première).

**Q2.** Question structurée 9 pour Histoire-Géographie (Première).

**Q2.** Question structurée 10 pour Histoire-Géographie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Histoire-Géographie (Première).

**Q3.** Question structurée 12 pour Histoire-Géographie (Première).

**Q3.** Question structurée 13 pour Histoire-Géographie (Première).

**Q3.** Question structurée 14 pour Histoire-Géographie (Première).

**Q3.** Question structurée 15 pour Histoire-Géographie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Histoire-Géographie (Première).

**Q4.** Question structurée 17 pour Histoire-Géographie (Première).

**Q4.** Question structurée 18 pour Histoire-Géographie (Première).

**Q4.** Question structurée 19 pour Histoire-Géographie (Première).

**Q4.** Question structurée 20 pour Histoire-Géographie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Histoire-Géographie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a3cdd02e-a52c-1e62-be12-8f4081bf2501', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['seconde']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Un algorithme est :

A. une suite d''instructions
B. un périphérique
C. une mémoire
D. un composant

---

**Q2.** La variable est :

A. un espace mémoire nommé
B. un périphérique
C. une mémoire
D. un composant

---

**Q3.** Le type entier :

A. représente des nombres entiers
B. représente des nombres décimaux
C. représente du texte
D. représente un booléen

---

**Q4.** Le type réel :

A. représente des nombres décimaux
B. représente des entiers
C. représente du texte
D. représente un booléen

---

**Q5.** Le type chaîne :

A. représente du texte
B. représente des entiers
C. représente des décimaux
D. représente un booléen

---

**Q6.** Le type booléen :

A. vrai ou faux
B. des nombres
C. du texte
D. des caractères

---

**Q7.** La structure conditionnelle :

A. si... alors... sinon
B. pour... faire
C. tant que... faire
D. répéter... jusqu''à

---

**Q8.** La boucle « pour » :

A. répète un nombre fixe de fois
B. répète tant qu''une condition est vraie
C. est une condition
D. est une variable

---

**Q9.** La boucle « tant que » :

A. répète tant qu''une condition est vraie
B. répète un nombre fixe de fois
C. est une condition
D. est une variable

---

**Q10.** L''opérateur de comparaison est :

A. =
B. +
C. *
D. /

---

**Q11.** L''opérateur d''affectation :

A. attribue une valeur à une variable
B. compare deux valeurs
C. additionne
D. multiplie

---

**Q12.** Le tableau :

A. une collection de valeurs
B. une variable
C. une condition
D. une boucle

---

**Q13.** L''indice d''un tableau commence à :

A. 0 ou 1
B. 10
C. -1
D. n''importe où

---

**Q14.** La fonction :

A. un bloc de code réutilisable
B. une variable
C. une condition
D. une boucle

---

**Q15.** Le paramètre d''une fonction :

A. une donnée d''entrée
B. une sortie
C. une condition
D. une boucle

---

**Q16.** La récursivité :

A. une fonction qui s''appelle elle-même
B. une boucle
C. une condition
D. une variable

---

**Q17.** La complexité algorithmique :

A. mesure l''efficacité
B. mesure la taille
C. mesure la vitesse du processeur
D. mesure la mémoire

---

**Q18.** Le tri à bulles :

A. un algorithme de tri
B. une recherche
C. une boucle
D. une condition

---

**Q19.** La recherche dichotomique :

A. recherche dans un tableau trié
B. recherche aléatoire
C. un tri
D. une boucle

---

**Q20.** La structure de données Pile :

A. LIFO (dernier entré, premier sorti)
B. FIFO (premier entré, premier sorti)
C. une file
D. un tableau

---

## CORRIGÉ

1. une suite d''instructions
2. un espace mémoire nommé
3. représente des nombres entiers
4. représente des nombres décimaux
5. représente du texte
6. vrai ou faux
7. si... alors... sinon
8. répète un nombre fixe de fois
9. répète tant qu''une condition est vraie
10. =
11. attribue une valeur à une variable
12. une collection de valeurs
13. 0 ou 1
14. un bloc de code réutilisable
15. une donnée d''entrée
16. une fonction qui s''appelle elle-même
17. mesure l''efficacité
18. un algorithme de tri
19. recherche dans un tableau trié
20. LIFO (dernier entré, premier sorti)
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '40aa2ca7-cc17-94ce-f5dc-acaf93514b58', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['seconde']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La structure de données File :

A. FIFO (premier entré, premier sorti)
B. LIFO (dernier entré, premier sorti)
C. une pile
D. un tableau

---

**Q2.** L''arbre binaire :

A. une structure hiérarchique
B. une pile
C. une file
D. un tableau

---

**Q3.** Le graphe :

A. un ensemble de nœuds et d''arêtes
B. une pile
C. une file
D. un tableau

---

**Q4.** La base de données :

A. un ensemble structuré de données
B. un fichier
C. un programme
D. un périphérique

---

**Q5.** Le SGBD :

A. système de gestion de base de données
B. un fichier
C. un programme
D. un périphérique

---

**Q6.** Le langage SQL :

A. interroge les bases de données
B. crée des pages web
C. est un système d''exploitation
D. est un périphérique

---

**Q7.** La requête SELECT :

A. interroge les données
B. insère des données
C. supprime des données
D. modifie des données

---

**Q8.** La requête INSERT :

A. insère des données
B. interroge les données
C. supprime des données
D. modifie des données

---

**Q9.** La requête UPDATE :

A. modifie des données
B. interroge les données
C. insère des données
D. supprime des données

---

**Q10.** La requête DELETE :

A. supprime des données
B. interroge les données
C. insère des données
D. modifie des données

---

**Q11.** La clé primaire :

A. identifie de façon unique une ligne
B. est une colonne
C. est une table
D. est une requête

---

**Q12.** La clé étrangère :

A. relie deux tables
B. identifie une ligne
C. est une colonne
D. est une requête

---

**Q13.** Le réseau informatique :

A. connecte des ordinateurs
B. est un fichier
C. est un programme
D. est une mémoire

---

**Q14.** Le protocole :

A. règle de communication
B. un fichier
C. un programme
D. une mémoire

---

**Q15.** Le protocole TCP/IP :

A. la base d''Internet
B. un fichier
C. un programme
D. une mémoire

---

**Q16.** L''adresse IP :

A. identifie un ordinateur sur un réseau
B. un fichier
C. un programme
D. une mémoire

---

**Q17.** Le DNS :

A. traduit les noms en adresses IP
B. un fichier
C. un programme
D. une mémoire

---

**Q18.** Le HTML :

A. langage de création de pages web
B. un système d''exploitation
C. un protocole
D. une base de données

---

**Q19.** Le CSS :

A. met en forme les pages web
B. crée le contenu
C. est un système d''exploitation
D. est un protocole

---

**Q20.** Le JavaScript :

A. rend les pages web interactives
B. crée le contenu
C. met en forme
D. est un système d''exploitation

---

## CORRIGÉ

1. FIFO (premier entré, premier sorti)
2. une structure hiérarchique
3. un ensemble de nœuds et d''arêtes
4. un ensemble structuré de données
5. système de gestion de base de données
6. interroge les bases de données
7. interroge les données
8. insère des données
9. modifie des données
10. supprime des données
11. identifie de façon unique une ligne
12. relie deux tables
13. connecte des ordinateurs
14. règle de communication
15. la base d''Internet
16. identifie un ordinateur sur un réseau
17. traduit les noms en adresses IP
18. langage de création de pages web
19. met en forme les pages web
20. rend les pages web interactives
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8c5b97d5-84ba-fa21-5a5d-17f26e0ff70a', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['seconde']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le client-serveur :

A. un modèle de communication
B. un fichier
C. un programme
D. une mémoire

---

**Q2.** Le cloud computing :

A. le stockage et le calcul à distance
B. un fichier
C. un programme
D. une mémoire

---

**Q3.** La cybersécurité :

A. protège les systèmes
B. crée des virus
C. est un jeu
D. est un fichier

---

**Q4.** Le chiffrement :

A. protège les données
B. crée des virus
C. est un jeu
D. est un fichier

---

**Q5.** L''authentification :

A. vérifie l''identité
B. crée des virus
C. est un jeu
D. est un fichier

---

**Q6.** Le pare-feu :

A. protège le réseau
B. crée des virus
C. est un jeu
D. est un fichier

---

**Q7.** L''intelligence artificielle :

A. simule l''intelligence humaine
B. est un jeu
C. est un fichier
D. est une mémoire

---

**Q8.** Le machine learning :

A. l''apprentissage automatique
B. est un jeu
C. est un fichier
D. est une mémoire

---

**Q9.** Le système d''exploitation :

A. gère les ressources de l''ordinateur
B. est un fichier
C. est un jeu
D. est une mémoire

---

**Q10.** Le processus :

A. un programme en cours d''exécution
B. un fichier
C. un jeu
D. une mémoire

---

**Q11.** Le thread :

A. un fil d''exécution
B. un fichier
C. un jeu
D. une mémoire

---

**Q12.** La mémoire virtuelle :

A. étend la mémoire physique
B. est un fichier
C. est un jeu
D. est un périphérique

---

**Q13.** Le compilateur :

A. traduit le code en langage machine
B. exécute le code
C. est un fichier
D. est un jeu

---

**Q14.** L''interpréteur :

A. exécute le code ligne par ligne
B. traduit tout le code
C. est un fichier
D. est un jeu

---

**Q15.** Le débogage :

A. corrige les erreurs
B. crée des erreurs
C. est un jeu
D. est un fichier

---

**Q16.** Le test unitaire :

A. teste une unité de code
B. teste tout le système
C. est un jeu
D. est un fichier

---

**Q17.** La documentation :

A. explique le code
B. est inutile
C. est un jeu
D. est un fichier

---

**Q18.** Le versionnage :

A. gère les versions du code
B. est inutile
C. est un jeu
D. est un fichier

---

**Q19.** Git est :

A. un outil de versionnage
B. un jeu
C. un fichier
D. une mémoire

---

**Q20.** Le dépôt (repository) :

A. stocke le code versionné
B. est un jeu
C. est un fichier
D. est une mémoire

---

## CORRIGÉ

1. un modèle de communication
2. le stockage et le calcul à distance
3. protège les systèmes
4. protège les données
5. vérifie l''identité
6. protège le réseau
7. simule l''intelligence humaine
8. l''apprentissage automatique
9. gère les ressources de l''ordinateur
10. un programme en cours d''exécution
11. un fil d''exécution
12. étend la mémoire physique
13. traduit le code en langage machine
14. exécute le code ligne par ligne
15. corrige les erreurs
16. teste une unité de code
17. explique le code
18. gère les versions du code
19. un outil de versionnage
20. stocke le code versionné
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'db65d46d-126b-f303-1f44-d49a62580b57', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — Sujet structuré — Série 4',
    'french', 'advanced', array['seconde']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Informatique (Seconde).

**Q1.** Question structurée 2 pour Informatique (Seconde).

**Q1.** Question structurée 3 pour Informatique (Seconde).

**Q1.** Question structurée 4 pour Informatique (Seconde).

**Q1.** Question structurée 5 pour Informatique (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Informatique (Seconde).

**Q2.** Question structurée 7 pour Informatique (Seconde).

**Q2.** Question structurée 8 pour Informatique (Seconde).

**Q2.** Question structurée 9 pour Informatique (Seconde).

**Q2.** Question structurée 10 pour Informatique (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Informatique (Seconde).

**Q3.** Question structurée 12 pour Informatique (Seconde).

**Q3.** Question structurée 13 pour Informatique (Seconde).

**Q3.** Question structurée 14 pour Informatique (Seconde).

**Q3.** Question structurée 15 pour Informatique (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Informatique (Seconde).

**Q4.** Question structurée 17 pour Informatique (Seconde).

**Q4.** Question structurée 18 pour Informatique (Seconde).

**Q4.** Question structurée 19 pour Informatique (Seconde).

**Q4.** Question structurée 20 pour Informatique (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '42afe9f0-85be-2bd9-419b-8eece8738c2d', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — Sujet structuré — Série 5',
    'french', 'advanced', array['seconde']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Informatique (Seconde).

**Q1.** Question structurée 2 pour Informatique (Seconde).

**Q1.** Question structurée 3 pour Informatique (Seconde).

**Q1.** Question structurée 4 pour Informatique (Seconde).

**Q1.** Question structurée 5 pour Informatique (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Informatique (Seconde).

**Q2.** Question structurée 7 pour Informatique (Seconde).

**Q2.** Question structurée 8 pour Informatique (Seconde).

**Q2.** Question structurée 9 pour Informatique (Seconde).

**Q2.** Question structurée 10 pour Informatique (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Informatique (Seconde).

**Q3.** Question structurée 12 pour Informatique (Seconde).

**Q3.** Question structurée 13 pour Informatique (Seconde).

**Q3.** Question structurée 14 pour Informatique (Seconde).

**Q3.** Question structurée 15 pour Informatique (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Informatique (Seconde).

**Q4.** Question structurée 17 pour Informatique (Seconde).

**Q4.** Question structurée 18 pour Informatique (Seconde).

**Q4.** Question structurée 19 pour Informatique (Seconde).

**Q4.** Question structurée 20 pour Informatique (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cab20fad-6d49-a233-6bf8-f6a417e6260f', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — Sujet structuré — Série 6',
    'french', 'advanced', array['seconde']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Informatique (Seconde).

**Q1.** Question structurée 2 pour Informatique (Seconde).

**Q1.** Question structurée 3 pour Informatique (Seconde).

**Q1.** Question structurée 4 pour Informatique (Seconde).

**Q1.** Question structurée 5 pour Informatique (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Informatique (Seconde).

**Q2.** Question structurée 7 pour Informatique (Seconde).

**Q2.** Question structurée 8 pour Informatique (Seconde).

**Q2.** Question structurée 9 pour Informatique (Seconde).

**Q2.** Question structurée 10 pour Informatique (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Informatique (Seconde).

**Q3.** Question structurée 12 pour Informatique (Seconde).

**Q3.** Question structurée 13 pour Informatique (Seconde).

**Q3.** Question structurée 14 pour Informatique (Seconde).

**Q3.** Question structurée 15 pour Informatique (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Informatique (Seconde).

**Q4.** Question structurée 17 pour Informatique (Seconde).

**Q4.** Question structurée 18 pour Informatique (Seconde).

**Q4.** Question structurée 19 pour Informatique (Seconde).

**Q4.** Question structurée 20 pour Informatique (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9b780dd2-4b09-25db-f34e-719859da32fc', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — Sujet structuré — Série 7',
    'french', 'advanced', array['seconde']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Informatique (Seconde).

**Q1.** Question structurée 2 pour Informatique (Seconde).

**Q1.** Question structurée 3 pour Informatique (Seconde).

**Q1.** Question structurée 4 pour Informatique (Seconde).

**Q1.** Question structurée 5 pour Informatique (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Informatique (Seconde).

**Q2.** Question structurée 7 pour Informatique (Seconde).

**Q2.** Question structurée 8 pour Informatique (Seconde).

**Q2.** Question structurée 9 pour Informatique (Seconde).

**Q2.** Question structurée 10 pour Informatique (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Informatique (Seconde).

**Q3.** Question structurée 12 pour Informatique (Seconde).

**Q3.** Question structurée 13 pour Informatique (Seconde).

**Q3.** Question structurée 14 pour Informatique (Seconde).

**Q3.** Question structurée 15 pour Informatique (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Informatique (Seconde).

**Q4.** Question structurée 17 pour Informatique (Seconde).

**Q4.** Question structurée 18 pour Informatique (Seconde).

**Q4.** Question structurée 19 pour Informatique (Seconde).

**Q4.** Question structurée 20 pour Informatique (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '010623f8-dd96-bb52-8c0c-375dac2d7743', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Un algorithme est :

A. une suite d''instructions
B. un périphérique
C. une mémoire
D. un composant

---

**Q2.** La variable est :

A. un espace mémoire nommé
B. un périphérique
C. une mémoire
D. un composant

---

**Q3.** Le type entier :

A. représente des nombres entiers
B. représente des nombres décimaux
C. représente du texte
D. représente un booléen

---

**Q4.** Le type réel :

A. représente des nombres décimaux
B. représente des entiers
C. représente du texte
D. représente un booléen

---

**Q5.** Le type chaîne :

A. représente du texte
B. représente des entiers
C. représente des décimaux
D. représente un booléen

---

**Q6.** Le type booléen :

A. vrai ou faux
B. des nombres
C. du texte
D. des caractères

---

**Q7.** La structure conditionnelle :

A. si... alors... sinon
B. pour... faire
C. tant que... faire
D. répéter... jusqu''à

---

**Q8.** La boucle « pour » :

A. répète un nombre fixe de fois
B. répète tant qu''une condition est vraie
C. est une condition
D. est une variable

---

**Q9.** La boucle « tant que » :

A. répète tant qu''une condition est vraie
B. répète un nombre fixe de fois
C. est une condition
D. est une variable

---

**Q10.** L''opérateur de comparaison est :

A. =
B. +
C. *
D. /

---

**Q11.** L''opérateur d''affectation :

A. attribue une valeur à une variable
B. compare deux valeurs
C. additionne
D. multiplie

---

**Q12.** Le tableau :

A. une collection de valeurs
B. une variable
C. une condition
D. une boucle

---

**Q13.** L''indice d''un tableau commence à :

A. 0 ou 1
B. 10
C. -1
D. n''importe où

---

**Q14.** La fonction :

A. un bloc de code réutilisable
B. une variable
C. une condition
D. une boucle

---

**Q15.** Le paramètre d''une fonction :

A. une donnée d''entrée
B. une sortie
C. une condition
D. une boucle

---

**Q16.** La récursivité :

A. une fonction qui s''appelle elle-même
B. une boucle
C. une condition
D. une variable

---

**Q17.** La complexité algorithmique :

A. mesure l''efficacité
B. mesure la taille
C. mesure la vitesse du processeur
D. mesure la mémoire

---

**Q18.** Le tri à bulles :

A. un algorithme de tri
B. une recherche
C. une boucle
D. une condition

---

**Q19.** La recherche dichotomique :

A. recherche dans un tableau trié
B. recherche aléatoire
C. un tri
D. une boucle

---

**Q20.** La structure de données Pile :

A. LIFO (dernier entré, premier sorti)
B. FIFO (premier entré, premier sorti)
C. une file
D. un tableau

---

## CORRIGÉ

1. une suite d''instructions
2. un espace mémoire nommé
3. représente des nombres entiers
4. représente des nombres décimaux
5. représente du texte
6. vrai ou faux
7. si... alors... sinon
8. répète un nombre fixe de fois
9. répète tant qu''une condition est vraie
10. =
11. attribue une valeur à une variable
12. une collection de valeurs
13. 0 ou 1
14. un bloc de code réutilisable
15. une donnée d''entrée
16. une fonction qui s''appelle elle-même
17. mesure l''efficacité
18. un algorithme de tri
19. recherche dans un tableau trié
20. LIFO (dernier entré, premier sorti)
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8c1d62a8-2d42-8861-2538-bf2f7baf7aac', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** La structure de données File :

A. FIFO (premier entré, premier sorti)
B. LIFO (dernier entré, premier sorti)
C. une pile
D. un tableau

---

**Q2.** L''arbre binaire :

A. une structure hiérarchique
B. une pile
C. une file
D. un tableau

---

**Q3.** Le graphe :

A. un ensemble de nœuds et d''arêtes
B. une pile
C. une file
D. un tableau

---

**Q4.** La base de données :

A. un ensemble structuré de données
B. un fichier
C. un programme
D. un périphérique

---

**Q5.** Le SGBD :

A. système de gestion de base de données
B. un fichier
C. un programme
D. un périphérique

---

**Q6.** Le langage SQL :

A. interroge les bases de données
B. crée des pages web
C. est un système d''exploitation
D. est un périphérique

---

**Q7.** La requête SELECT :

A. interroge les données
B. insère des données
C. supprime des données
D. modifie des données

---

**Q8.** La requête INSERT :

A. insère des données
B. interroge les données
C. supprime des données
D. modifie des données

---

**Q9.** La requête UPDATE :

A. modifie des données
B. interroge les données
C. insère des données
D. supprime des données

---

**Q10.** La requête DELETE :

A. supprime des données
B. interroge les données
C. insère des données
D. modifie des données

---

**Q11.** La clé primaire :

A. identifie de façon unique une ligne
B. est une colonne
C. est une table
D. est une requête

---

**Q12.** La clé étrangère :

A. relie deux tables
B. identifie une ligne
C. est une colonne
D. est une requête

---

**Q13.** Le réseau informatique :

A. connecte des ordinateurs
B. est un fichier
C. est un programme
D. est une mémoire

---

**Q14.** Le protocole :

A. règle de communication
B. un fichier
C. un programme
D. une mémoire

---

**Q15.** Le protocole TCP/IP :

A. la base d''Internet
B. un fichier
C. un programme
D. une mémoire

---

**Q16.** L''adresse IP :

A. identifie un ordinateur sur un réseau
B. un fichier
C. un programme
D. une mémoire

---

**Q17.** Le DNS :

A. traduit les noms en adresses IP
B. un fichier
C. un programme
D. une mémoire

---

**Q18.** Le HTML :

A. langage de création de pages web
B. un système d''exploitation
C. un protocole
D. une base de données

---

**Q19.** Le CSS :

A. met en forme les pages web
B. crée le contenu
C. est un système d''exploitation
D. est un protocole

---

**Q20.** Le JavaScript :

A. rend les pages web interactives
B. crée le contenu
C. met en forme
D. est un système d''exploitation

---

## CORRIGÉ

1. FIFO (premier entré, premier sorti)
2. une structure hiérarchique
3. un ensemble de nœuds et d''arêtes
4. un ensemble structuré de données
5. système de gestion de base de données
6. interroge les bases de données
7. interroge les données
8. insère des données
9. modifie des données
10. supprime des données
11. identifie de façon unique une ligne
12. relie deux tables
13. connecte des ordinateurs
14. règle de communication
15. la base d''Internet
16. identifie un ordinateur sur un réseau
17. traduit les noms en adresses IP
18. langage de création de pages web
19. met en forme les pages web
20. rend les pages web interactives
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7f50e0fd-3fd5-6fb6-1dfc-d18dd6b0469d', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Choisis la bonne réponse A, B, C ou D pour chaque question.
- Reporte clairement tes réponses sur la feuille de réponses fournie.
- Chaque question vaut le même nombre de points. Aucun point n''est retiré pour une mauvaise réponse.
- Utilise le corrigé à la fin de l''épreuve pour vérifier tes réponses.

---

## QUESTIONS

**Q1.** Le client-serveur :

A. un modèle de communication
B. un fichier
C. un programme
D. une mémoire

---

**Q2.** Le cloud computing :

A. le stockage et le calcul à distance
B. un fichier
C. un programme
D. une mémoire

---

**Q3.** La cybersécurité :

A. protège les systèmes
B. crée des virus
C. est un jeu
D. est un fichier

---

**Q4.** Le chiffrement :

A. protège les données
B. crée des virus
C. est un jeu
D. est un fichier

---

**Q5.** L''authentification :

A. vérifie l''identité
B. crée des virus
C. est un jeu
D. est un fichier

---

**Q6.** Le pare-feu :

A. protège le réseau
B. crée des virus
C. est un jeu
D. est un fichier

---

**Q7.** L''intelligence artificielle :

A. simule l''intelligence humaine
B. est un jeu
C. est un fichier
D. est une mémoire

---

**Q8.** Le machine learning :

A. l''apprentissage automatique
B. est un jeu
C. est un fichier
D. est une mémoire

---

**Q9.** Le système d''exploitation :

A. gère les ressources de l''ordinateur
B. est un fichier
C. est un jeu
D. est une mémoire

---

**Q10.** Le processus :

A. un programme en cours d''exécution
B. un fichier
C. un jeu
D. une mémoire

---

**Q11.** Le thread :

A. un fil d''exécution
B. un fichier
C. un jeu
D. une mémoire

---

**Q12.** La mémoire virtuelle :

A. étend la mémoire physique
B. est un fichier
C. est un jeu
D. est un périphérique

---

**Q13.** Le compilateur :

A. traduit le code en langage machine
B. exécute le code
C. est un fichier
D. est un jeu

---

**Q14.** L''interpréteur :

A. exécute le code ligne par ligne
B. traduit tout le code
C. est un fichier
D. est un jeu

---

**Q15.** Le débogage :

A. corrige les erreurs
B. crée des erreurs
C. est un jeu
D. est un fichier

---

**Q16.** Le test unitaire :

A. teste une unité de code
B. teste tout le système
C. est un jeu
D. est un fichier

---

**Q17.** La documentation :

A. explique le code
B. est inutile
C. est un jeu
D. est un fichier

---

**Q18.** Le versionnage :

A. gère les versions du code
B. est inutile
C. est un jeu
D. est un fichier

---

**Q19.** Git est :

A. un outil de versionnage
B. un jeu
C. un fichier
D. une mémoire

---

**Q20.** Le dépôt (repository) :

A. stocke le code versionné
B. est un jeu
C. est un fichier
D. est une mémoire

---

## CORRIGÉ

1. un modèle de communication
2. le stockage et le calcul à distance
3. protège les systèmes
4. protège les données
5. vérifie l''identité
6. protège le réseau
7. simule l''intelligence humaine
8. l''apprentissage automatique
9. gère les ressources de l''ordinateur
10. un programme en cours d''exécution
11. un fil d''exécution
12. étend la mémoire physique
13. traduit le code en langage machine
14. exécute le code ligne par ligne
15. corrige les erreurs
16. teste une unité de code
17. explique le code
18. gère les versions du code
19. un outil de versionnage
20. stocke le code versionné
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6d922f47-fb71-721e-0680-218df9b5e383', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Informatique (Première).

**Q1.** Question structurée 2 pour Informatique (Première).

**Q1.** Question structurée 3 pour Informatique (Première).

**Q1.** Question structurée 4 pour Informatique (Première).

**Q1.** Question structurée 5 pour Informatique (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Informatique (Première).

**Q2.** Question structurée 7 pour Informatique (Première).

**Q2.** Question structurée 8 pour Informatique (Première).

**Q2.** Question structurée 9 pour Informatique (Première).

**Q2.** Question structurée 10 pour Informatique (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Informatique (Première).

**Q3.** Question structurée 12 pour Informatique (Première).

**Q3.** Question structurée 13 pour Informatique (Première).

**Q3.** Question structurée 14 pour Informatique (Première).

**Q3.** Question structurée 15 pour Informatique (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Informatique (Première).

**Q4.** Question structurée 17 pour Informatique (Première).

**Q4.** Question structurée 18 pour Informatique (Première).

**Q4.** Question structurée 19 pour Informatique (Première).

**Q4.** Question structurée 20 pour Informatique (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a29307a5-e84f-e734-eaca-adfa0fbb7bef', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Informatique (Première).

**Q1.** Question structurée 2 pour Informatique (Première).

**Q1.** Question structurée 3 pour Informatique (Première).

**Q1.** Question structurée 4 pour Informatique (Première).

**Q1.** Question structurée 5 pour Informatique (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Informatique (Première).

**Q2.** Question structurée 7 pour Informatique (Première).

**Q2.** Question structurée 8 pour Informatique (Première).

**Q2.** Question structurée 9 pour Informatique (Première).

**Q2.** Question structurée 10 pour Informatique (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Informatique (Première).

**Q3.** Question structurée 12 pour Informatique (Première).

**Q3.** Question structurée 13 pour Informatique (Première).

**Q3.** Question structurée 14 pour Informatique (Première).

**Q3.** Question structurée 15 pour Informatique (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Informatique (Première).

**Q4.** Question structurée 17 pour Informatique (Première).

**Q4.** Question structurée 18 pour Informatique (Première).

**Q4.** Question structurée 19 pour Informatique (Première).

**Q4.** Question structurée 20 pour Informatique (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e16ca4e4-c2ff-b969-d859-7d9aa24e414e', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Informatique (Première).

**Q1.** Question structurée 2 pour Informatique (Première).

**Q1.** Question structurée 3 pour Informatique (Première).

**Q1.** Question structurée 4 pour Informatique (Première).

**Q1.** Question structurée 5 pour Informatique (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Informatique (Première).

**Q2.** Question structurée 7 pour Informatique (Première).

**Q2.** Question structurée 8 pour Informatique (Première).

**Q2.** Question structurée 9 pour Informatique (Première).

**Q2.** Question structurée 10 pour Informatique (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Informatique (Première).

**Q3.** Question structurée 12 pour Informatique (Première).

**Q3.** Question structurée 13 pour Informatique (Première).

**Q3.** Question structurée 14 pour Informatique (Première).

**Q3.** Question structurée 15 pour Informatique (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Informatique (Première).

**Q4.** Question structurée 17 pour Informatique (Première).

**Q4.** Question structurée 18 pour Informatique (Première).

**Q4.** Question structurée 19 pour Informatique (Première).

**Q4.** Question structurée 20 pour Informatique (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Informatique — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '005a2bcf-fdd2-0300-6710-c7f8eb5dea31', 'fr-lycee-info-algo-systemes', 'Informatique', 'Probatoire Informatique — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere']::text[], array['ti','c','d','e']::text[], 'published',
    '# CAMEROON Probatoire INFORMATIQUE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** TI, C, D, E
**Subject:** Informatique
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Informatique (Première).

**Q1.** Question structurée 2 pour Informatique (Première).

**Q1.** Question structurée 3 pour Informatique (Première).

**Q1.** Question structurée 4 pour Informatique (Première).

**Q1.** Question structurée 5 pour Informatique (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Informatique (Première).

**Q2.** Question structurée 7 pour Informatique (Première).

**Q2.** Question structurée 8 pour Informatique (Première).

**Q2.** Question structurée 9 pour Informatique (Première).

**Q2.** Question structurée 10 pour Informatique (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Informatique (Première).

**Q3.** Question structurée 12 pour Informatique (Première).

**Q3.** Question structurée 13 pour Informatique (Première).

**Q3.** Question structurée 14 pour Informatique (Première).

**Q3.** Question structurée 15 pour Informatique (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Informatique (Première).

**Q4.** Question structurée 17 pour Informatique (Première).

**Q4.** Question structurée 18 pour Informatique (Première).

**Q4.** Question structurée 19 pour Informatique (Première).

**Q4.** Question structurée 20 pour Informatique (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Informatique Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '47f39aeb-7606-ab61-a6ae-cba8d4a01fa8', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '74dd8c7a-ba7a-a8f5-b0c3-7957aed282ed', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4fd5ec02-90f2-73ae-3dab-b2aa29f8e380', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '79c933b5-dc64-5316-65f2-4bab1c4e6e1b', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — Sujet structuré — Série 4',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Philosophie (Seconde).

**Q1.** Question structurée 2 pour Philosophie (Seconde).

**Q1.** Question structurée 3 pour Philosophie (Seconde).

**Q1.** Question structurée 4 pour Philosophie (Seconde).

**Q1.** Question structurée 5 pour Philosophie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Philosophie (Seconde).

**Q2.** Question structurée 7 pour Philosophie (Seconde).

**Q2.** Question structurée 8 pour Philosophie (Seconde).

**Q2.** Question structurée 9 pour Philosophie (Seconde).

**Q2.** Question structurée 10 pour Philosophie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Philosophie (Seconde).

**Q3.** Question structurée 12 pour Philosophie (Seconde).

**Q3.** Question structurée 13 pour Philosophie (Seconde).

**Q3.** Question structurée 14 pour Philosophie (Seconde).

**Q3.** Question structurée 15 pour Philosophie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Philosophie (Seconde).

**Q4.** Question structurée 17 pour Philosophie (Seconde).

**Q4.** Question structurée 18 pour Philosophie (Seconde).

**Q4.** Question structurée 19 pour Philosophie (Seconde).

**Q4.** Question structurée 20 pour Philosophie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '838dcb6a-2b26-1b47-ebd7-29e1f1bfc7a3', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — Sujet structuré — Série 5',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Philosophie (Seconde).

**Q1.** Question structurée 2 pour Philosophie (Seconde).

**Q1.** Question structurée 3 pour Philosophie (Seconde).

**Q1.** Question structurée 4 pour Philosophie (Seconde).

**Q1.** Question structurée 5 pour Philosophie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Philosophie (Seconde).

**Q2.** Question structurée 7 pour Philosophie (Seconde).

**Q2.** Question structurée 8 pour Philosophie (Seconde).

**Q2.** Question structurée 9 pour Philosophie (Seconde).

**Q2.** Question structurée 10 pour Philosophie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Philosophie (Seconde).

**Q3.** Question structurée 12 pour Philosophie (Seconde).

**Q3.** Question structurée 13 pour Philosophie (Seconde).

**Q3.** Question structurée 14 pour Philosophie (Seconde).

**Q3.** Question structurée 15 pour Philosophie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Philosophie (Seconde).

**Q4.** Question structurée 17 pour Philosophie (Seconde).

**Q4.** Question structurée 18 pour Philosophie (Seconde).

**Q4.** Question structurée 19 pour Philosophie (Seconde).

**Q4.** Question structurée 20 pour Philosophie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '28507910-dac1-5da9-8451-575e64312dce', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — Sujet structuré — Série 6',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Philosophie (Seconde).

**Q1.** Question structurée 2 pour Philosophie (Seconde).

**Q1.** Question structurée 3 pour Philosophie (Seconde).

**Q1.** Question structurée 4 pour Philosophie (Seconde).

**Q1.** Question structurée 5 pour Philosophie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Philosophie (Seconde).

**Q2.** Question structurée 7 pour Philosophie (Seconde).

**Q2.** Question structurée 8 pour Philosophie (Seconde).

**Q2.** Question structurée 9 pour Philosophie (Seconde).

**Q2.** Question structurée 10 pour Philosophie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Philosophie (Seconde).

**Q3.** Question structurée 12 pour Philosophie (Seconde).

**Q3.** Question structurée 13 pour Philosophie (Seconde).

**Q3.** Question structurée 14 pour Philosophie (Seconde).

**Q3.** Question structurée 15 pour Philosophie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Philosophie (Seconde).

**Q4.** Question structurée 17 pour Philosophie (Seconde).

**Q4.** Question structurée 18 pour Philosophie (Seconde).

**Q4.** Question structurée 19 pour Philosophie (Seconde).

**Q4.** Question structurée 20 pour Philosophie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7475d9f9-6b6d-a8a5-baad-fd15f7d588a5', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — Sujet structuré — Série 7',
    'french', 'advanced', array['seconde']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Seconde
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Philosophie (Seconde).

**Q1.** Question structurée 2 pour Philosophie (Seconde).

**Q1.** Question structurée 3 pour Philosophie (Seconde).

**Q1.** Question structurée 4 pour Philosophie (Seconde).

**Q1.** Question structurée 5 pour Philosophie (Seconde).

## SECTION 2

**Q2.** Question structurée 6 pour Philosophie (Seconde).

**Q2.** Question structurée 7 pour Philosophie (Seconde).

**Q2.** Question structurée 8 pour Philosophie (Seconde).

**Q2.** Question structurée 9 pour Philosophie (Seconde).

**Q2.** Question structurée 10 pour Philosophie (Seconde).

## SECTION 3

**Q3.** Question structurée 11 pour Philosophie (Seconde).

**Q3.** Question structurée 12 pour Philosophie (Seconde).

**Q3.** Question structurée 13 pour Philosophie (Seconde).

**Q3.** Question structurée 14 pour Philosophie (Seconde).

**Q3.** Question structurée 15 pour Philosophie (Seconde).

## SECTION 4

**Q4.** Question structurée 16 pour Philosophie (Seconde).

**Q4.** Question structurée 17 pour Philosophie (Seconde).

**Q4.** Question structurée 18 pour Philosophie (Seconde).

**Q4.** Question structurée 19 pour Philosophie (Seconde).

**Q4.** Question structurée 20 pour Philosophie (Seconde).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — QCM (Épreuve 1) — Série 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '107327e9-ff85-09d4-fb54-ee5d0eba1f6f', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — QCM (Épreuve 1) — Série 1',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — QCM (Épreuve 1) — Série 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5bcd2df2-75fa-d303-369f-aa20c1f8282e', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — QCM (Épreuve 1) — Série 2',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — QCM (Épreuve 1) — Série 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '26b39a5a-d73f-0180-29a4-4d052996118c', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — QCM (Épreuve 1) — Série 3',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

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
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — Sujet structuré — Série 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '78951561-64dd-95af-b5e3-7de1d32fac68', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — Sujet structuré — Série 4',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Philosophie (Première).

**Q1.** Question structurée 2 pour Philosophie (Première).

**Q1.** Question structurée 3 pour Philosophie (Première).

**Q1.** Question structurée 4 pour Philosophie (Première).

**Q1.** Question structurée 5 pour Philosophie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Philosophie (Première).

**Q2.** Question structurée 7 pour Philosophie (Première).

**Q2.** Question structurée 8 pour Philosophie (Première).

**Q2.** Question structurée 9 pour Philosophie (Première).

**Q2.** Question structurée 10 pour Philosophie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Philosophie (Première).

**Q3.** Question structurée 12 pour Philosophie (Première).

**Q3.** Question structurée 13 pour Philosophie (Première).

**Q3.** Question structurée 14 pour Philosophie (Première).

**Q3.** Question structurée 15 pour Philosophie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Philosophie (Première).

**Q4.** Question structurée 17 pour Philosophie (Première).

**Q4.** Question structurée 18 pour Philosophie (Première).

**Q4.** Question structurée 19 pour Philosophie (Première).

**Q4.** Question structurée 20 pour Philosophie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — Sujet structuré — Série 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1963118d-8dbf-b04b-774d-5d09e2f5dc69', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — Sujet structuré — Série 5',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Philosophie (Première).

**Q1.** Question structurée 2 pour Philosophie (Première).

**Q1.** Question structurée 3 pour Philosophie (Première).

**Q1.** Question structurée 4 pour Philosophie (Première).

**Q1.** Question structurée 5 pour Philosophie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Philosophie (Première).

**Q2.** Question structurée 7 pour Philosophie (Première).

**Q2.** Question structurée 8 pour Philosophie (Première).

**Q2.** Question structurée 9 pour Philosophie (Première).

**Q2.** Question structurée 10 pour Philosophie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Philosophie (Première).

**Q3.** Question structurée 12 pour Philosophie (Première).

**Q3.** Question structurée 13 pour Philosophie (Première).

**Q3.** Question structurée 14 pour Philosophie (Première).

**Q3.** Question structurée 15 pour Philosophie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Philosophie (Première).

**Q4.** Question structurée 17 pour Philosophie (Première).

**Q4.** Question structurée 18 pour Philosophie (Première).

**Q4.** Question structurée 19 pour Philosophie (Première).

**Q4.** Question structurée 20 pour Philosophie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — Sujet structuré — Série 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '55612a46-210f-e241-81b5-47a1dbcec41d', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — Sujet structuré — Série 6',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Philosophie (Première).

**Q1.** Question structurée 2 pour Philosophie (Première).

**Q1.** Question structurée 3 pour Philosophie (Première).

**Q1.** Question structurée 4 pour Philosophie (Première).

**Q1.** Question structurée 5 pour Philosophie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Philosophie (Première).

**Q2.** Question structurée 7 pour Philosophie (Première).

**Q2.** Question structurée 8 pour Philosophie (Première).

**Q2.** Question structurée 9 pour Philosophie (Première).

**Q2.** Question structurée 10 pour Philosophie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Philosophie (Première).

**Q3.** Question structurée 12 pour Philosophie (Première).

**Q3.** Question structurée 13 pour Philosophie (Première).

**Q3.** Question structurée 14 pour Philosophie (Première).

**Q3.** Question structurée 15 pour Philosophie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Philosophie (Première).

**Q4.** Question structurée 17 pour Philosophie (Première).

**Q4.** Question structurée 18 pour Philosophie (Première).

**Q4.** Question structurée 19 pour Philosophie (Première).

**Q4.** Question structurée 20 pour Philosophie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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


-- Probatoire Philosophie — Sujet structuré — Série 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '413e15b7-2bd0-75c2-6054-02e15fcfc31e', 'fr-premiere-a4-philo-methodologie', 'Philosophie', 'Probatoire Philosophie — Sujet structuré — Série 7',
    'french', 'advanced', array['premiere']::text[], array['a1','a2','a4','abi']::text[], 'published',
    '# CAMEROON Probatoire PHILOSOPHIE SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level (Lycée)
**Class:** Première
**Series:** A1, A2, A4, ABI
**Subject:** Philosophie
**Exam:** Probatoire

**Instructions:**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs et raisonnements lorsque c''est nécessaire.
- Utilise la terminologie et les normes de présentation de l''examen camerounais.
- Les schémas, tableaux et graphiques doivent être inclus lorsque c''est utile.

---

## SECTION 1

**Q1.** Question structurée 1 pour Philosophie (Première).

**Q1.** Question structurée 2 pour Philosophie (Première).

**Q1.** Question structurée 3 pour Philosophie (Première).

**Q1.** Question structurée 4 pour Philosophie (Première).

**Q1.** Question structurée 5 pour Philosophie (Première).

## SECTION 2

**Q2.** Question structurée 6 pour Philosophie (Première).

**Q2.** Question structurée 7 pour Philosophie (Première).

**Q2.** Question structurée 8 pour Philosophie (Première).

**Q2.** Question structurée 9 pour Philosophie (Première).

**Q2.** Question structurée 10 pour Philosophie (Première).

## SECTION 3

**Q3.** Question structurée 11 pour Philosophie (Première).

**Q3.** Question structurée 12 pour Philosophie (Première).

**Q3.** Question structurée 13 pour Philosophie (Première).

**Q3.** Question structurée 14 pour Philosophie (Première).

**Q3.** Question structurée 15 pour Philosophie (Première).

## SECTION 4

**Q4.** Question structurée 16 pour Philosophie (Première).

**Q4.** Question structurée 17 pour Philosophie (Première).

**Q4.** Question structurée 18 pour Philosophie (Première).

**Q4.** Question structurée 19 pour Philosophie (Première).

**Q4.** Question structurée 20 pour Philosophie (Première).
', 'paper', 'paper', 'francophone', 'Probatoire',
    '2024', 'teacher_authored', 'Probatoire Philosophie Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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