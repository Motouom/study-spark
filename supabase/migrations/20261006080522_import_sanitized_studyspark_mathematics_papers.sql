-- Import sanitized StudySpark Mathematics paper package from /home/victoire-ws/Downloads/studyspark-mathematics-papers.
-- Duplicate long question blocks were removed from later occurrences before import.

begin;

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1$studyspark$,
  'english',
  'ordinary',
  array['form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical']::text[],
  'published',
  $studyspark$# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1

## Objective Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions.
- Each question is followed by four possible answers lettered A to D.
- Choose the correct answer and shade the corresponding letter.
- Each question carries 1 mark. Total: 42 marks.

---

---

## NUMBER BASES

**Q1.** Convert $28_{10}$ to base 2.

**A.** 110110  **B.** 10011  **C.** 111010  **D.** 11100

---

## INDICES

**Q2.** Simplify $5^{4} \times 5^{2}$.

**A.** $5^{6}$  **B.** $10^{6}$  **C.** $5^{2}$  **D.** $5^{8}$

---

## PERCENTAGES

**Q3.** A shirt costs 7500 FCFA. Find its new price after a 15% discount.

**A.** 8625 FCFA  **B.** 7485 FCFA  **C.** 1125 FCFA  **D.** 6375 FCFA

---

## LINEAR EQUATIONS

**Q4.** Solve for $x$: $2x - 7 = 7$.

**A.** -7  **B.** 7  **C.** 6  **D.** 8

---

## QUADRATIC EQUATIONS

**Q5.** Solve $x^{2} + 9 x + 20 = 0$.

**A.** $x = -4 \text{ or } x = -3$  **B.** $x = 5 \text{ or } x = -4$  **C.** $x = -5 \text{ or } x = 4$  **D.** $x = -5 \text{ or } x = -4$

---

## MENSURATION

**Q6.** Find the area of a circle of radius 21 cm. (Take $\pi = 22/7$.)

**A.** $1365 \text{ cm}^2$  **B.** $132 \text{ cm}^2$  **C.** $1386 \text{ cm}^2$  **D.** $1407 \text{ cm}^2$

---

**Q7.** A cuboid has length 3 cm, width 3 cm and height 5 cm. Find its volume.

**A.** $55 \text{ cm}^3$  **B.** $11 \text{ cm}^3$  **C.** $45 \text{ cm}^3$  **D.** $78 \text{ cm}^3$

---

## TRIGONOMETRY

**Q8.** In a right-angled triangle, the side opposite angle $\theta$ is 5 cm, the hypotenuse is 13 cm, and the third side is 12 cm. Find $\sin\theta$.

**A.** $\frac{5}{12}$  **B.** $\frac{5}{13}$  **C.** $\frac{13}{5}$  **D.** $\frac{12}{13}$

---

**Q9.** Evaluate $\cos 60^\circ$.

**A.** 0  **B.** 1  **C.** $1/2$  **D.** $\sqrt{2}/2$

---

## STATISTICS

**Q10.** Find the mean of the data set: $3, 5, 6, 25, 28$.

**A.** $67/5$  **B.** 67  **C.** 6  **D.** 13

---

## SIMULTANEOUS EQUATIONS

**Q11.** Solve: $1x + 1y = 9$ and $3x + 4y = 30$.

**A.** $x=3, y=6$  **B.** $x=7, y=3$  **C.** $x=6, y=3$  **D.** $x=6, y=4$

---

## SETS

**Q12.** In a class of 40 students, 11 study Physics, 14 study Chemistry, and 6 study both. How many study neither?

**A.** 13  **B.** 21  **C.** 19  **D.** 23

---

## PROBABILITY

**Q13.** A bag contains 2 red balls and 3 blue balls. A ball is picked at random. Find the probability that it is red.

**A.** $2/5$  **B.** $2/3$  **C.** $3/5$  **D.** $1/3$

---

## BEARINGS

**Q14.** The bearing of point Y from point X is 300$^\circ$. Find the bearing of X from Y (the back bearing).

**A.** $060^\circ$  **B.** $300^\circ$  **C.** $120^\circ$  **D.** $030^\circ$

---

## NUMBER BASES

**Q15.** Convert $60_{10}$ to base 2.

**A.** 111001  **B.** 111100  **C.** 10010  **D.** 10001

---

## INDICES

**Q16.** Simplify $5^{3} \times 5^{3}$.

**A.** $5^{9}$  **B.** $5^{0}$  **C.** $10^{6}$  **D.** $5^{6}$

---

## PERCENTAGES

**Q17.** A shirt costs 2500 FCFA. Find its new price after a 5% discount.

**A.** 125 FCFA  **B.** 2375 FCFA  **C.** 2625 FCFA  **D.** 2495 FCFA

---

## LINEAR EQUATIONS

**Q18.** Solve for $x$: $8x + 8 = -16$.

**A.** -2  **B.** 3  **C.** -4  **D.** -3

---

## QUADRATIC EQUATIONS

**Q19.** Solve $x^{2} - 5 x - 6 = 0$.

**A.** $x = 0 \text{ or } x = 7$  **B.** $x = -1 \text{ or } x = -6$  **C.** $x = 1 \text{ or } x = 6$  **D.** $x = -1 \text{ or } x = 6$

---

## MENSURATION

**Q20.** Find the area of a circle of radius 14 cm. (Take $\pi = 22/7$.)

**A.** $616 \text{ cm}^2$  **B.** $602 \text{ cm}^2$  **C.** $88 \text{ cm}^2$  **D.** $630 \text{ cm}^2$

---

**Q21.** A cuboid has length 6 cm, width 7 cm and height 6 cm. Find its volume.

**A.** $19 \text{ cm}^3$  **B.** $252 \text{ cm}^3$  **C.** $240 \text{ cm}^3$  **D.** $262 \text{ cm}^3$

---

## TRIGONOMETRY

**Q22.** In a right-angled triangle, the side opposite angle $\theta$ is 9 cm, the hypotenuse is 15 cm, and the third side is 12 cm. Find $\sin\theta$.

**A.** $\frac{3}{4}$  **B.** $\frac{5}{3}$  **C.** $\frac{4}{5}$  **D.** $\frac{3}{5}$

---

**Q23.** Evaluate $\tan 0^\circ$.

**A.** $\sqrt{2}/2$  **B.** 0  **C.** $\sqrt{3}/2$  **D.** $1/2$

---

## STATISTICS

**Q24.** Find the mean of the data set: $5, 8, 9, 12, 19$.

**A.** 10  **B.** 9  **C.** 53  **D.** $53/5$

---

## SIMULTANEOUS EQUATIONS

**Q25.** Solve: $1x + 2y = 6$ and $1x + 4y = 8$.

**A.** $x=1, y=4$  **B.** $x=4, y=2$  **C.** $x=4, y=1$  **D.** $x=5, y=1$

---

## SETS

**Q26.** In a class of 40 students, 9 study Physics, 9 study Chemistry, and 4 study both. How many study neither?

**A.** 10  **B.** 24  **C.** 28  **D.** 26

---

## PROBABILITY

**Q27.** A bag contains 4 red balls and 4 blue balls. A ball is picked at random. Find the probability that it is red.

**A.** $1/2$  **B.** 1  **C.** $4/9$  **D.** $5/8$

---

## BEARINGS

**Q28.** The bearing of point Y from point X is 120$^\circ$. Find the bearing of X from Y (the back bearing).

**A.** $300^\circ$  **B.** $120^\circ$  **C.** $210^\circ$  **D.** $240^\circ$

---

## NUMBER BASES

**Q29.** Convert $27_{10}$ to base 2.

**A.** 11011  **B.** 110110  **C.** 110011  **D.** 101000

---

## INDICES

**Q30.** Simplify $3^{3} \times 3^{1}$.

**A.** $6^{4}$  **B.** $3^{4}$  **C.** $3^{2}$  **D.** $3^{3}$

---

## PERCENTAGES

**Q31.** A shirt costs 6000 FCFA. Find its new price after a 10% discount.

**A.** 5990 FCFA  **B.** 600 FCFA  **C.** 5400 FCFA  **D.** 6600 FCFA

---

## LINEAR EQUATIONS

**Q32.** Solve for $x$: $6x + 5 = 35$.

**A.** 6  **B.** -5  **C.** 4  **D.** 5

---

## QUADRATIC EQUATIONS

**Q33.** Solve $x^{2} - 5 x + 6 = 0$.

**A.** $x = 2 \text{ or } x = -3$  **B.** $x = -2 \text{ or } x = 3$  **C.** $x = 3 \text{ or } x = 4$  **D.** $x = 2 \text{ or } x = 3$

---

## MENSURATION

**Q34.** Find the area of a circle of radius 7 cm. (Take $\pi = 22/7$.)

**A.** $154 \text{ cm}^2$  **B.** $44 \text{ cm}^2$  **C.** $147 \text{ cm}^2$  **D.** $161 \text{ cm}^2$

---

**Q35.** A cuboid has length 3 cm, width 4 cm and height 4 cm. Find its volume.

**A.** $48 \text{ cm}^3$  **B.** $58 \text{ cm}^3$  **C.** $80 \text{ cm}^3$  **D.** $11 \text{ cm}^3$

---

## TRIGONOMETRY

**Q36.** In a right-angled triangle, the side opposite angle $\theta$ is 8 cm, the hypotenuse is 17 cm, and the third side is 15 cm. Find $\sin\theta$.

**A.** $\frac{17}{8}$  **B.** $\frac{8}{17}$  **C.** $\frac{8}{15}$  **D.** $\frac{15}{17}$

---

## STATISTICS

**Q37.** Find the mean of the data set: $4, 5, 9, 16, 23$.

**A.** 9  **B.** $57/5$  **C.** 57  **D.** 11

---

## SIMULTANEOUS EQUATIONS

**Q38.** Solve: $4x + 4y = 32$ and $3x + 3y = 24$.

**A.** $x=6, y=3$  **B.** $x=6, y=2$  **C.** $x=2, y=6$  **D.** $x=7, y=2$

---

## SETS

**Q39.** In a class of 40 students, 11 study Physics, 12 study Chemistry, and 5 study both. How many study neither?

**A.** 13  **B.** 20  **C.** 24  **D.** 22

---

## PROBABILITY

**Q40.** A bag contains 6 red balls and 2 blue balls. A ball is picked at random. Find the probability that it is red.

**A.** $7/8$  **B.** $1/4$  **C.** $3/4$  **D.** 3

---

## BEARINGS

**Q41.** The bearing of point Y from point X is 060$^\circ$. Find the bearing of X from Y (the back bearing).

**A.** $240^\circ$  **B.** $060^\circ$  **C.** $150^\circ$  **D.** $300^\circ$

---

## NUMBER BASES

**Q42.** Convert $51_{10}$ to base 8.

**A.** 57  **B.** 67  **C.** 63  **D.** 52

---

## ANSWER KEY

1. D  2. A  3. D  4. B  5. D  6. C
7. C  8. B  9. C  10. A  11. C  12. B
13. A  14. C  15. B  16. D  17. B  18. D
19. D  20. A  21. B  22. D  23. B  24. D
25. C  26. D  27. A  28. A  29. A  30. B
31. C  32. D  33. D  34. A  35. A  36. B
37. B  38. B  39. D  40. C  41. A  42. C
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_o_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/f5-mcq-1.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: f5-mcq-1.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2$studyspark$,
  'english',
  'ordinary',
  array['form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical']::text[],
  'published',
  $studyspark$# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2

## Objective Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions.
- Each question is followed by four possible answers lettered A to D.
- Choose the correct answer and shade the corresponding letter.
- Each question carries 1 mark. Total: 41 marks.

---

---

## NUMBER BASES

**Q1.** Convert $43_{10}$ to base 5.

**A.** 204  **B.** 32  **C.** 133  **D.** 134

---

## INDICES

**Q2.** Simplify $4^{2} \times 4^{1}$.

**A.** $8^{3}$  **B.** $4^{3}$  **C.** $4^{1}$  **D.** $4^{2}$

---

## PERCENTAGES

**Q3.** A shirt costs 2500 FCFA. Find its new price after a 10% discount.

**A.** 2490 FCFA  **B.** 250 FCFA  **C.** 2250 FCFA  **D.** 2750 FCFA

---

## LINEAR EQUATIONS

**Q4.** Solve for $x$: $8x + 0 = 48$.

**A.** 6  **B.** 5  **C.** 7  **D.** -6

---

## QUADRATIC EQUATIONS

**Q5.** Solve $x^{2} - x - 6 = 0$.

**A.** $x = -2 \text{ or } x = 3$  **B.** $x = -1 \text{ or } x = 4$  **C.** $x = -2 \text{ or } x = -3$  **D.** $x = 2 \text{ or } x = 3$

---

## MENSURATION

**Q6.** Find the area of a circle of radius 7 cm. (Take $\pi = 22/7$.)

**A.** $154 \text{ cm}^2$  **B.** $44 \text{ cm}^2$  **C.** $161 \text{ cm}^2$  **D.** $147 \text{ cm}^2$

---

**Q7.** A cuboid has length 7 cm, width 3 cm and height 8 cm. Find its volume.

**A.** $178 \text{ cm}^3$  **B.** $18 \text{ cm}^3$  **C.** $202 \text{ cm}^3$  **D.** $168 \text{ cm}^3$

---

## TRIGONOMETRY

**Q8.** In a right-angled triangle, the side opposite angle $\theta$ is 9 cm, the hypotenuse is 15 cm, and the third side is 12 cm. Find $\sin\theta$.

**A.** $\frac{5}{3}$  **B.** $\frac{3}{5}$  **C.** $\frac{4}{5}$  **D.** $\frac{3}{4}$

---

**Q9.** Evaluate $\sin 90^\circ$.

**A.** 1  **B.** $1/2$  **C.** $\sqrt{2}/2$  **D.** $\sqrt{3}/2$

---

## STATISTICS

**Q10.** Find the mean of the data set: $12, 15, 16, 21, 27$.

**A.** 18  **B.** $91/5$  **C.** 16  **D.** 91

---

## SIMULTANEOUS EQUATIONS

**Q11.** Solve: $1x + 3y = 26$ and $2x + 1y = 22$.

**A.** $x=8, y=7$  **B.** $x=8, y=6$  **C.** $x=6, y=8$  **D.** $x=9, y=6$

---

## SETS

**Q12.** In a class of 40 students, 11 study Physics, 13 study Chemistry, and 4 study both. How many study neither?

**A.** 16  **B.** 18  **C.** 22  **D.** 20

---

## PROBABILITY

**Q13.** A bag contains 4 red balls and 2 blue balls. A ball is picked at random. Find the probability that it is red.

**A.** $2/3$  **B.** $1/3$  **C.** $5/6$  **D.** 2

---

## BEARINGS

**Q14.** The bearing of point Y from point X is 240$^\circ$. Find the bearing of X from Y (the back bearing).

**A.** $060^\circ$  **B.** $120^\circ$  **C.** $240^\circ$  **D.** $330^\circ$

---

## NUMBER BASES

**Q15.** Convert $19_{10}$ to base 2.

**A.** 10011  **B.** 110011  **C.** 10101  **D.** 111001

---

## INDICES

**Q16.** Simplify $2^{3} \times 2^{1}$.

**A.** $2^{4}$  **B.** $2^{2}$  **C.** $4^{4}$  **D.** $2^{3}$

---

## PERCENTAGES

**Q17.** A shirt costs 4000 FCFA. Find its new price after a 25% discount.

**A.** 5000 FCFA  **B.** 3000 FCFA  **C.** 3975 FCFA  **D.** 1000 FCFA

---

## LINEAR EQUATIONS

**Q18.** Solve for $x$: $9x - 8 = -26$.

**A.** -1  **B.** -3  **C.** -2  **D.** 2

---

## QUADRATIC EQUATIONS

**Q19.** Solve $x^{2} + 7 x + 10 = 0$.

**A.** $x = -5 \text{ or } x = 2$  **B.** $x = -4 \text{ or } x = -1$  **C.** $x = 5 \text{ or } x = -2$  **D.** $x = -5 \text{ or } x = -2$

---

## MENSURATION

**Q20.** Find the area of a circle of radius 28 cm. (Take $\pi = 22/7$.)

**A.** $176 \text{ cm}^2$  **B.** $2492 \text{ cm}^2$  **C.** $2464 \text{ cm}^2$  **D.** $2436 \text{ cm}^2$

---

**Q21.** A cuboid has length 4 cm, width 8 cm and height 7 cm. Find its volume.

**A.** $224 \text{ cm}^3$  **B.** $234 \text{ cm}^3$  **C.** $232 \text{ cm}^3$  **D.** $19 \text{ cm}^3$

---

## TRIGONOMETRY

**Q22.** In a right-angled triangle, the side opposite angle $\theta$ is 3 cm, the hypotenuse is 5 cm, and the third side is 4 cm. Find $\sin\theta$.

**A.** $\frac{4}{5}$  **B.** $\frac{3}{4}$  **C.** $\frac{5}{3}$  **D.** $\frac{3}{5}$

---

**Q23.** Evaluate $\tan 0^\circ$.

**A.** $1/2$  **B.** $1/\sqrt{3}$  **C.** 0  **D.** $\sqrt{3}/2$

---

## STATISTICS

**Q24.** Find the mean of the data set: $2, 8, 16, 18, 23$.

**A.** $67/5$  **B.** 67  **C.** 13  **D.** 16

---

## SIMULTANEOUS EQUATIONS

**Q25.** Solve: $4x + 3y = 37$ and $2x + 2y = 20$.

**A.** $x=8, y=3$  **B.** $x=3, y=7$  **C.** $x=7, y=3$  **D.** $x=7, y=4$

---

## SETS

**Q26.** In a class of 40 students, 13 study Physics, 13 study Chemistry, and 6 study both. How many study neither?

**A.** 20  **B.** 14  **C.** 22  **D.** 18

---

## PROBABILITY

**Q27.** A bag contains 5 red balls and 5 blue balls. A ball is picked at random. Find the probability that it is red.

**A.** 1  **B.** $3/5$  **C.** $5/11$  **D.** $1/2$

---

## NUMBER BASES

**Q28.** Convert $10_{10}$ to base 8.

**A.** 12  **B.** 35  **C.** 37  **D.** 54

---

## INDICES

**Q29.** Simplify $3^{2} \times 3^{3}$.

**A.** $6^{5}$  **B.** $3^{-1}$  **C.** $3^{5}$  **D.** $3^{6}$

---

## PERCENTAGES

**Q30.** A shirt costs 2500 FCFA. Find its new price after a 20% discount.

**A.** 2000 FCFA  **B.** 500 FCFA  **C.** 3000 FCFA  **D.** 2480 FCFA

---

## LINEAR EQUATIONS

**Q31.** Solve for $x$: $8x - 2 = -34$.

**A.** -4  **B.** -3  **C.** 4  **D.** -5

---

## QUADRATIC EQUATIONS

**Q32.** Solve $x^{2} - x - 2 = 0$.

**A.** $x = -1 \text{ or } x = -2$  **B.** $x = 1 \text{ or } x = 2$  **C.** $x = -1 \text{ or } x = 2$  **D.** $x = 0 \text{ or } x = 3$

---

## MENSURATION

**Q33.** A cuboid has length 6 cm, width 3 cm and height 5 cm. Find its volume.

**A.** $14 \text{ cm}^3$  **B.** $100 \text{ cm}^3$  **C.** $90 \text{ cm}^3$  **D.** $126 \text{ cm}^3$

---

## TRIGONOMETRY

**Q34.** In a right-angled triangle, the side opposite angle $\theta$ is 6 cm, the hypotenuse is 10 cm, and the third side is 8 cm. Find $\sin\theta$.

**A.** $\frac{4}{5}$  **B.** $\frac{3}{5}$  **C.** $\frac{3}{4}$  **D.** $\frac{5}{3}$

---

## STATISTICS

**Q35.** Find the mean of the data set: $6, 10, 15, 16, 22$.

**A.** 15  **B.** 13  **C.** 69  **D.** $69/5$

---

## SIMULTANEOUS EQUATIONS

**Q36.** Solve: $4x + 4y = 52$ and $4x + 4y = 52$.

**A.** $x=5, y=8$  **B.** $x=6, y=8$  **C.** $x=5, y=9$  **D.** $x=8, y=5$

---

## SETS

**Q37.** In a class of 40 students, 14 study Physics, 11 study Chemistry, and 5 study both. How many study neither?

**A.** 15  **B.** 22  **C.** 20  **D.** 18

---

## NUMBER BASES

**Q38.** Convert $54_{10}$ to base 8.

**A.** 12  **B.** 66  **C.** 45  **D.** 20

---

## INDICES

**Q39.** Simplify $2^{2} \times 2^{3}$.

**A.** $2^{6}$  **B.** $2^{5}$  **C.** $2^{-1}$  **D.** $4^{5}$

---

## PERCENTAGES

**Q40.** A shirt costs 8000 FCFA. Find its new price after a 15% discount.

**A.** 9200 FCFA  **B.** 7985 FCFA  **C.** 1200 FCFA  **D.** 6800 FCFA

---

## LINEAR EQUATIONS

**Q41.** Solve for $x$: $2x - 5 = -9$.

**A.** -1  **B.** -2  **C.** 2  **D.** -3

---

## ANSWER KEY

1. C  2. B  3. C  4. A  5. A  6. A
7. D  8. B  9. A  10. B  11. B  12. D
13. A  14. A  15. A  16. A  17. B  18. C
19. D  20. C  21. A  22. D  23. C  24. A
25. C  26. A  27. D  28. A  29. C  30. A
31. A  32. C  33. C  34. B  35. D  36. A
37. C  38. B  39. B  40. D  41. B
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_o_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/f5-mcq-2.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: f5-mcq-2.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 3$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 3$studyspark$,
  'english',
  'ordinary',
  array['form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical']::text[],
  'published',
  $studyspark$# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, and labelled sketches should be included where useful.

---

---

## NUMBER BASES

**Q1.** Consider the numbers 39 and 11 in base 10.

(a) Convert 39 to base 2. *(4 marks)*

(b) Convert 11 to base 2. *(4 marks)*

(c) Hence find the sum $39+11$ and express your answer in base 2. *(5 marks)*

---

## INDICES AND STANDARD FORM

**Q2.** This question tests indices and standard form.

(a) Simplify $\dfrac{2^{6}}{2^{1}}$, leaving your answer in index form. *(4 marks)*

(b) Express 78000 in standard form. *(4 marks)*

(c) State the number of significant figures in your answer to part (b). *(2 marks)*

---

## ALGEBRAIC MANIPULATION

**Q3.** Given the expression $x^{2} - 5 x + 6$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - 5 x + 6 = 0$. *(4 marks)*

(c) Simplify $\dfrac{6x}{3} + \dfrac{x}{6}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q4.** Consider the inequality $3x + 9 \leq 2$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q5.** Solve the simultaneous equations $5x + 2y = 21$ and $5x - 5y = -35$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q6.** A quadratic function is given by $y = x^2 + -4x + -19$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + -4x + -19 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## VARIATION

**Q7.** $y$ varies directly as $x$. When $x=5$, $y=15$.

(a) Find the equation connecting $y$ and $x$. *(4 marks)*

(b) Find the value of $y$ when $x=12$. *(3 marks)*

(c) Find the value of $x$ when $y=60$. *(3 marks)*

---

## SETS

**Q8.** In a school survey of 39 students, 18 play football, 20 play basketball, and 6 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q9.** A cone has radius 8 cm and height 19 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cone. *(5 marks)*

(b) Find the curved surface area of the cone. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q10.** In a circle with centre $O$, a chord subtends an angle of 40$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## TRIGONOMETRY

**Q11.** A right-angled triangle $ABC$ has the right angle at $B$, with $AB=9$ cm and $BC=12$ cm.

(a) Find the length of the hypotenuse $AC$. *(3 marks)*

(b) Find $\sin(\angle BAC)$, $\cos(\angle BAC)$, and $\tan(\angle BAC)$, leaving your answers as fractions. *(6 marks)*

(c) Find the angle $\angle BAC$ correct to the nearest degree. *(4 marks)*

---

## STATISTICS

**Q12.** The marks obtained by 7 students in a test are: $5, 7, 11, 14, 18, 26, 32$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q13.** A ship sails from port $P$ for 6 km on a bearing of 045$^\circ$ to point $Q$, then sails 11 km on a bearing of 250$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q14.** A trader invests 75000 FCFA in a savings account paying 12% per annum.

(a) Calculate the simple interest earned after 2 years. *(4 marks)*

(b) Calculate the compound interest earned after 2 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q15.** Consider the numbers 26 and 18 in base 10.

(a) Convert 26 to base 2. *(4 marks)*

(b) Convert 18 to base 2. *(4 marks)*

(c) Hence find the sum $26+18$ and express your answer in base 2. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q16.** Given the expression $x^{2} - 4 x - 21$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - 4 x - 21 = 0$. *(4 marks)*

(c) Simplify $\dfrac{2x}{3} + \dfrac{x}{2}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q17.** Consider the inequality $6x + -8 \leq 8$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q18.** Solve the simultaneous equations $3x + 4y = 67$ and $1x - 4y = -31$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q19.** A quadratic function is given by $y = x^2 + -7x + -12$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + -7x + -12 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## VARIATION

**Q20.** $y$ varies directly as $x$. When $x=2$, $y=8$.

(a) Find the equation connecting $y$ and $x$. *(4 marks)*

(b) Find the value of $y$ when $x=12$. *(3 marks)*

(c) Find the value of $x$ when $y=80$. *(3 marks)*

---

## SETS

**Q21.** In a school survey of 50 students, 21 play football, 18 play basketball, and 9 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q22.** A cylinder has radius 7 cm and height 17 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cylinder. *(5 marks)*

(b) Find the curved surface area of the cylinder. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q23.** In a circle with centre $O$, a chord subtends an angle of 70$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## TRIGONOMETRY

**Q24.** A right-angled triangle $ABC$ has the right angle at $B$, with $AB=8$ cm and $BC=15$ cm.

(a) Find the length of the hypotenuse $AC$. *(3 marks)*

(b) Find $\sin(\angle BAC)$, $\cos(\angle BAC)$, and $\tan(\angle BAC)$, leaving your answers as fractions. *(6 marks)*

(c) Find the angle $\angle BAC$ correct to the nearest degree. *(4 marks)*

---

## STATISTICS

**Q25.** The marks obtained by 7 students in a test are: $9, 11, 25, 26, 28, 38, 44$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q26.** A ship sails from port $P$ for 4 km on a bearing of 070$^\circ$ to point $Q$, then sails 8 km on a bearing of 200$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q27.** A trader invests 100000 FCFA in a savings account paying 10% per annum.

(a) Calculate the simple interest earned after 3 years. *(4 marks)*

(b) Calculate the compound interest earned after 3 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q28.** Consider the numbers 31 and 15 in base 10.

(a) Convert 31 to base 5. *(4 marks)*

(b) Convert 15 to base 5. *(4 marks)*

(c) Hence find the sum $31+15$ and express your answer in base 5. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q29.** Given the expression $x^{2} - 2 x - 35$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - 2 x - 35 = 0$. *(4 marks)*

(c) Simplify $\dfrac{3x}{3} + \dfrac{x}{3}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q30.** Consider the inequality $2x + -4 \leq 9$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q31.** Solve the simultaneous equations $1x + 1y = 14$ and $1x - 1y = 4$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q32.** A quadratic function is given by $y = x^2 + -6x + -5$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + -6x + -5 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## VARIATION

**Q33.** $y$ varies directly as $x$. When $x=3$, $y=9$.

(a) Find the equation connecting $y$ and $x$. *(4 marks)*

(b) Find the value of $y$ when $x=11$. *(3 marks)*

(c) Find the value of $x$ when $y=60$. *(3 marks)*

---

## SETS

**Q34.** In a school survey of 49 students, 20 play football, 26 play basketball, and 11 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q35.** A cylinder has radius 7 cm and height 16 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cylinder. *(5 marks)*

(b) Find the curved surface area of the cylinder. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q36.** In a circle with centre $O$, a chord subtends an angle of 35$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## STATISTICS

**Q37.** The marks obtained by 7 students in a test are: $9, 13, 14, 17, 20, 26, 33$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q38.** A ship sails from port $P$ for 8 km on a bearing of 060$^\circ$ to point $Q$, then sails 5 km on a bearing of 200$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q39.** A trader invests 150000 FCFA in a savings account paying 5% per annum.

(a) Calculate the simple interest earned after 3 years. *(4 marks)*

(b) Calculate the compound interest earned after 3 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q40.** Consider the numbers 28 and 19 in base 10.

(a) Convert 28 to base 5. *(4 marks)*

(b) Convert 19 to base 5. *(4 marks)*

(c) Hence find the sum $28+19$ and express your answer in base 5. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q41.** Given the expression $x^{2} - 13 x + 42$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - 13 x + 42 = 0$. *(4 marks)*

(c) Simplify $\dfrac{4x}{3} + \dfrac{x}{4}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q42.** Consider the inequality $3x + -7 \leq 17$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_o_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/f5-structural-1.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: f5-structural-1.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4$studyspark$,
  'english',
  'ordinary',
  array['form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical']::text[],
  'published',
  $studyspark$# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, and labelled sketches should be included where useful.

---

---

## NUMBER BASES

**Q1.** Consider the numbers 34 and 18 in base 10.

(a) Convert 34 to base 8. *(4 marks)*

(b) Convert 18 to base 8. *(4 marks)*

(c) Hence find the sum $34+18$ and express your answer in base 8. *(5 marks)*

---

## INDICES AND STANDARD FORM

**Q2.** This question tests indices and standard form.

(a) Simplify $\dfrac{2^{4}}{2^{1}}$, leaving your answer in index form. *(4 marks)*

(b) Express 0.0056 in standard form. *(4 marks)*

(c) State the number of significant figures in your answer to part (b). *(2 marks)*

---

## ALGEBRAIC MANIPULATION

**Q3.** Given the expression $x^{2} - x - 30$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - x - 30 = 0$. *(4 marks)*

(c) Simplify $\dfrac{6x}{3} + \dfrac{x}{6}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q4.** Consider the inequality $6x + -8 \leq 14$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q5.** Solve the simultaneous equations $2x + 2y = 20$ and $1x - 4y = 5$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q6.** A quadratic function is given by $y = x^2 + -8x + 16$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + -8x + 16 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## VARIATION

**Q7.** $y$ varies directly as $x$. When $x=3$, $y=30$.

(a) Find the equation connecting $y$ and $x$. *(4 marks)*

(b) Find the value of $y$ when $x=11$. *(3 marks)*

(c) Find the value of $x$ when $y=200$. *(3 marks)*

---

## SETS

**Q8.** In a school survey of 40 students, 24 play football, 21 play basketball, and 9 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q9.** A cylinder has radius 8 cm and height 24 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cylinder. *(5 marks)*

(b) Find the curved surface area of the cylinder. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q10.** In a circle with centre $O$, a chord subtends an angle of 52$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## TRIGONOMETRY

**Q11.** A right-angled triangle $ABC$ has the right angle at $B$, with $AB=3$ cm and $BC=4$ cm.

(a) Find the length of the hypotenuse $AC$. *(3 marks)*

(b) Find $\sin(\angle BAC)$, $\cos(\angle BAC)$, and $\tan(\angle BAC)$, leaving your answers as fractions. *(6 marks)*

(c) Find the angle $\angle BAC$ correct to the nearest degree. *(4 marks)*

---

## STATISTICS

**Q12.** The marks obtained by 7 students in a test are: $9, 14, 25, 30, 31, 36, 44$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q13.** A ship sails from port $P$ for 12 km on a bearing of 030$^\circ$ to point $Q$, then sails 6 km on a bearing of 250$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q14.** A trader invests 50000 FCFA in a savings account paying 5% per annum.

(a) Calculate the simple interest earned after 2 years. *(4 marks)*

(b) Calculate the compound interest earned after 2 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q15.** Consider the numbers 17 and 20 in base 10.

(a) Convert 17 to base 5. *(4 marks)*

(b) Convert 20 to base 5. *(4 marks)*

(c) Hence find the sum $17+20$ and express your answer in base 5. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q16.** Given the expression $x^{2} + 11 x + 24$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} + 11 x + 24 = 0$. *(4 marks)*

(c) Simplify $\dfrac{3x}{3} + \dfrac{x}{3}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q17.** Consider the inequality $2x + 8 \leq 3$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q18.** Solve the simultaneous equations $1x + 2y = 10$ and $1x - 2y = -6$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q19.** A quadratic function is given by $y = x^2 + 7x + 0$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + 7x + 0 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## VARIATION

**Q20.** $y$ varies directly as $x$. When $x=5$, $y=40$.

(a) Find the equation connecting $y$ and $x$. *(4 marks)*

(b) Find the value of $y$ when $x=8$. *(3 marks)*

(c) Find the value of $x$ when $y=160$. *(3 marks)*

---

## SETS

**Q21.** In a school survey of 44 students, 22 play football, 16 play basketball, and 8 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q22.** A cone has radius 7 cm and height 12 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cone. *(5 marks)*

(b) Find the curved surface area of the cone. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q23.** In a circle with centre $O$, a chord subtends an angle of 60$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## TRIGONOMETRY

**Q24.** A right-angled triangle $ABC$ has the right angle at $B$, with $AB=5$ cm and $BC=12$ cm.

(a) Find the length of the hypotenuse $AC$. *(3 marks)*

(b) Find $\sin(\angle BAC)$, $\cos(\angle BAC)$, and $\tan(\angle BAC)$, leaving your answers as fractions. *(6 marks)*

(c) Find the angle $\angle BAC$ correct to the nearest degree. *(4 marks)*

---

## STATISTICS

**Q25.** The marks obtained by 7 students in a test are: $7, 12, 26, 29, 31, 40, 43$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q26.** A ship sails from port $P$ for 12 km on a bearing of 060$^\circ$ to point $Q$, then sails 5 km on a bearing of 200$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q27.** A trader invests 150000 FCFA in a savings account paying 6% per annum.

(a) Calculate the simple interest earned after 4 years. *(4 marks)*

(b) Calculate the compound interest earned after 4 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q28.** Consider the numbers 18 and 14 in base 10.

(a) Convert 18 to base 8. *(4 marks)*

(b) Convert 14 to base 8. *(4 marks)*

(c) Hence find the sum $18+14$ and express your answer in base 8. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q29.** Given the expression $x^{2} - 7 x + 12$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - 7 x + 12 = 0$. *(4 marks)*

(c) Simplify $\dfrac{4x}{3} + \dfrac{x}{4}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q30.** Consider the inequality $4x + 10 \leq 10$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q31.** Solve the simultaneous equations $2x + 3y = 28$ and $2x - 1y = 12$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q32.** A quadratic function is given by $y = x^2 + 4x + -4$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + 4x + -4 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## VARIATION

**Q33.** $y$ varies directly as $x$. When $x=4$, $y=12$.

(a) Find the equation connecting $y$ and $x$. *(4 marks)*

(b) Find the value of $y$ when $x=11$. *(3 marks)*

(c) Find the value of $x$ when $y=60$. *(3 marks)*

---

## SETS

**Q34.** In a school survey of 44 students, 26 play football, 19 play basketball, and 11 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q35.** A cylinder has radius 12 cm and height 20 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cylinder. *(5 marks)*

(b) Find the curved surface area of the cylinder. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q36.** In a circle with centre $O$, a chord subtends an angle of 48$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## TRIGONOMETRY

**Q37.** A right-angled triangle $ABC$ has the right angle at $B$, with $AB=8$ cm and $BC=15$ cm.

(a) Find the length of the hypotenuse $AC$. *(3 marks)*

(b) Find $\sin(\angle BAC)$, $\cos(\angle BAC)$, and $\tan(\angle BAC)$, leaving your answers as fractions. *(6 marks)*

(c) Find the angle $\angle BAC$ correct to the nearest degree. *(4 marks)*

---

## STATISTICS

**Q38.** The marks obtained by 7 students in a test are: $10, 11, 15, 16, 19, 27, 30$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q39.** A ship sails from port $P$ for 8 km on a bearing of 060$^\circ$ to point $Q$, then sails 4 km on a bearing of 130$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q40.** A trader invests 200000 FCFA in a savings account paying 10% per annum.

(a) Calculate the simple interest earned after 2 years. *(4 marks)*

(b) Calculate the compound interest earned after 2 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q41.** Consider the numbers 24 and 11 in base 10.

(a) Convert 24 to base 8. *(4 marks)*

(b) Convert 11 to base 8. *(4 marks)*

(c) Hence find the sum $24+11$ and express your answer in base 8. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q42.** Given the expression $x^{2} + x - 2$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} + x - 2 = 0$. *(4 marks)*

(c) Simplify $\dfrac{5x}{3} + \dfrac{x}{5}$, giving your answer as a single fraction. *(4 marks)*
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_o_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/f5-structural-2.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: f5-structural-2.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5$studyspark$,
  'english',
  'ordinary',
  array['form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical']::text[],
  'published',
  $studyspark$# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, and labelled sketches should be included where useful.

---

---

## NUMBER BASES

**Q1.** Consider the numbers 32 and 16 in base 10.

(a) Convert 32 to base 5. *(4 marks)*

(b) Convert 16 to base 5. *(4 marks)*

(c) Hence find the sum $32+16$ and express your answer in base 5. *(5 marks)*

---

## INDICES AND STANDARD FORM

**Q2.** This question tests indices and standard form.

(a) Simplify $\dfrac{2^{6}}{2^{2}}$, leaving your answer in index form. *(4 marks)*

(b) Express 0.00041 in standard form. *(4 marks)*

(c) State the number of significant figures in your answer to part (b). *(2 marks)*

---

## ALGEBRAIC MANIPULATION

**Q3.** Given the expression $x^{2} - 8 x + 15$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - 8 x + 15 = 0$. *(4 marks)*

(c) Simplify $\dfrac{2x}{3} + \dfrac{x}{2}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q4.** Consider the inequality $4x + -8 \leq 16$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q5.** Solve the simultaneous equations $5x + 1y = 53$ and $3x - 3y = 3$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q6.** A quadratic function is given by $y = x^2 + 8x + -18$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + 8x + -18 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## VARIATION

**Q7.** $y$ varies directly as $x$. When $x=6$, $y=30$.

(a) Find the equation connecting $y$ and $x$. *(4 marks)*

(b) Find the value of $y$ when $x=11$. *(3 marks)*

(c) Find the value of $x$ when $y=100$. *(3 marks)*

---

## SETS

**Q8.** In a school survey of 36 students, 21 play football, 18 play basketball, and 10 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q9.** A cylinder has radius 9 cm and height 22 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cylinder. *(5 marks)*

(b) Find the curved surface area of the cylinder. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q10.** In a circle with centre $O$, a chord subtends an angle of 65$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## STATISTICS

**Q11.** The marks obtained by 7 students in a test are: $8, 13, 21, 22, 29, 30, 32$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q12.** A ship sails from port $P$ for 7 km on a bearing of 045$^\circ$ to point $Q$, then sails 11 km on a bearing of 160$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q13.** A trader invests 75000 FCFA in a savings account paying 6% per annum.

(a) Calculate the simple interest earned after 2 years. *(4 marks)*

(b) Calculate the compound interest earned after 2 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q14.** Consider the numbers 38 and 13 in base 10.

(a) Convert 38 to base 8. *(4 marks)*

(b) Convert 13 to base 8. *(4 marks)*

(c) Hence find the sum $38+13$ and express your answer in base 8. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q15.** Given the expression $x^{2} - 6 x + 5$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - 6 x + 5 = 0$. *(4 marks)*

(c) Simplify $\dfrac{4x}{3} + \dfrac{x}{4}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q16.** Consider the inequality $3x + 7 \leq 17$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q17.** Solve the simultaneous equations $1x + 2y = 21$ and $1x - 4y = -21$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q18.** A quadratic function is given by $y = x^2 + -3x + 12$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + -3x + 12 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## VARIATION

**Q19.** $y$ varies directly as $x$. When $x=6$, $y=36$.

(a) Find the equation connecting $y$ and $x$. *(4 marks)*

(b) Find the value of $y$ when $x=8$. *(3 marks)*

(c) Find the value of $x$ when $y=120$. *(3 marks)*

---

## SETS

**Q20.** In a school survey of 37 students, 26 play football, 26 play basketball, and 12 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q21.** A cone has radius 9 cm and height 10 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cone. *(5 marks)*

(b) Find the curved surface area of the cone. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q22.** In a circle with centre $O$, a chord subtends an angle of 35$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## TRIGONOMETRY

**Q23.** A right-angled triangle $ABC$ has the right angle at $B$, with $AB=3$ cm and $BC=4$ cm.

(a) Find the length of the hypotenuse $AC$. *(3 marks)*

(b) Find $\sin(\angle BAC)$, $\cos(\angle BAC)$, and $\tan(\angle BAC)$, leaving your answers as fractions. *(6 marks)*

(c) Find the angle $\angle BAC$ correct to the nearest degree. *(4 marks)*

---

## STATISTICS

**Q24.** The marks obtained by 7 students in a test are: $15, 20, 26, 29, 30, 35, 37$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q25.** A ship sails from port $P$ for 4 km on a bearing of 120$^\circ$ to point $Q$, then sails 11 km on a bearing of 130$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q26.** A trader invests 200000 FCFA in a savings account paying 8% per annum.

(a) Calculate the simple interest earned after 4 years. *(4 marks)*

(b) Calculate the compound interest earned after 4 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q27.** Consider the numbers 28 and 18 in base 10.

(a) Convert 28 to base 5. *(4 marks)*

(b) Convert 18 to base 5. *(4 marks)*

(c) Hence find the sum $28+18$ and express your answer in base 5. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q28.** Given the expression $x^{2} - 9 x + 8$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} - 9 x + 8 = 0$. *(4 marks)*

(c) Simplify $\dfrac{4x}{3} + \dfrac{x}{4}$, giving your answer as a single fraction. *(4 marks)*

---

## LINEAR EQUATIONS AND INEQUALITIES

**Q29.** Consider the inequality $2x + -9 \leq 12$.

(a) Solve the inequality for $x$. *(4 marks)*

(b) Represent your solution on a number line. *(3 marks)*

(c) State the largest integer value of $x$ that satisfies the inequality. *(3 marks)*

---

## SIMULTANEOUS EQUATIONS

**Q30.** Solve the simultaneous equations $1x + 1y = 9$ and $5x - 2y = -11$ by:

(a) the elimination method. *(6 marks)*

(b) the substitution method, confirming you obtain the same solution. *(6 marks)*

---

## QUADRATIC EQUATIONS

**Q31.** A quadratic function is given by $y = x^2 + -3x + 4$.

(a) Complete the square to express the function in the form $y=(x+p)^2+q$. *(5 marks)*

(b) State the coordinates of the minimum (or maximum) point of the curve. *(3 marks)*

(c) Use the quadratic formula to solve $x^2 + -3x + 4 = 0$, giving your answer to 2 decimal places where necessary. *(5 marks)*

---

## SETS

**Q32.** In a school survey of 38 students, 25 play football, 24 play basketball, and 12 play both games.

(a) Represent this information on a Venn diagram. *(6 marks)*

(b) Find the number of students who play neither game. *(4 marks)*

(c) Find the probability that a student chosen at random plays exactly one of the two games. *(4 marks)*

---

## MENSURATION

**Q33.** A cone has radius 8 cm and height 22 cm. (Take $\pi = 22/7$.)

(a) Find the volume of the cone. *(5 marks)*

(b) Find the curved surface area of the cone. *(5 marks)*

(c) If the shape is made of metal of density $8 \text{ g/cm}^3$, find its mass in kilograms. *(4 marks)*

---

## GEOMETRY — CIRCLE THEOREMS

**Q34.** In a circle with centre $O$, a chord subtends an angle of 60$^\circ$ at the circumference.

(a) State the circle theorem that relates the angle at the centre to the angle at the circumference. *(3 marks)*

(b) Hence find the angle subtended by the same chord at the centre $O$. *(3 marks)*

(c) If a cyclic quadrilateral has this angle as one of its interior angles, find the size of the opposite interior angle, stating the theorem used. *(5 marks)*

---

## TRIGONOMETRY

**Q35.** A right-angled triangle $ABC$ has the right angle at $B$, with $AB=5$ cm and $BC=12$ cm.

(a) Find the length of the hypotenuse $AC$. *(3 marks)*

(b) Find $\sin(\angle BAC)$, $\cos(\angle BAC)$, and $\tan(\angle BAC)$, leaving your answers as fractions. *(6 marks)*

(c) Find the angle $\angle BAC$ correct to the nearest degree. *(4 marks)*

---

## STATISTICS

**Q36.** The marks obtained by 7 students in a test are: $10, 14, 18, 24, 29, 30, 38$.

(a) Find the mean, median, and mode of the data. *(6 marks)*

(b) Find the range and the interquartile range. *(5 marks)*

(c) Draw a box-and-whisker plot to represent the data. *(4 marks)*

---

## BEARINGS AND SCALE DRAWING

**Q37.** A ship sails from port $P$ for 11 km on a bearing of 045$^\circ$ to point $Q$, then sails 10 km on a bearing of 100$^\circ$ to point $R$.

(a) Using a scale of 1 cm to represent 1 km, construct an accurate scale drawing showing $P$, $Q$, and $R$. *(7 marks)*

(b) By measurement, find the distance $PR$ in kilometres. *(3 marks)*

(c) By measurement, find the bearing of $R$ from $P$. *(3 marks)*

---

## COMMERCIAL ARITHMETIC

**Q38.** A trader invests 50000 FCFA in a savings account paying 12% per annum.

(a) Calculate the simple interest earned after 3 years. *(4 marks)*

(b) Calculate the compound interest earned after 3 years, correct to the nearest FCFA. *(6 marks)*

(c) Find the difference between the simple and compound interest. *(3 marks)*

---

## NUMBER BASES

**Q39.** Consider the numbers 22 and 15 in base 10.

(a) Convert 22 to base 5. *(4 marks)*

(b) Convert 15 to base 5. *(4 marks)*

(c) Hence find the sum $22+15$ and express your answer in base 5. *(5 marks)*

---

## ALGEBRAIC MANIPULATION

**Q40.** Given the expression $x^{2} + x - 2$.

(a) Factorise the expression completely. *(5 marks)*

(b) Hence solve the equation $x^{2} + x - 2 = 0$. *(4 marks)*

(c) Simplify $\dfrac{3x}{3} + \dfrac{x}{3}$, giving your answer as a single fraction. *(4 marks)*
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_o_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/f5-structural-3.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: f5-structural-3.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 1$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 1$studyspark$,
  'english',
  'advanced',
  array['lower_sixth']::text[],
  array['a_science']::text[],
  'published',
  $studyspark$# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 1

## Objective Question Bank - Set 1

**Level:** Advanced Level
**Class:** LOWER SIXTH
**Series:** a_science
**Subject:** Mathematics

**Instructions:**

- Answer all questions.
- Each question is followed by four possible answers lettered A to D.
- Choose the correct answer and shade the corresponding letter.
- Each question carries 1 mark. Total: 42 marks.

---

---

## SURDS

**Q1.** Simplify $\sqrt{63}$.

**A.** $3\sqrt{8}$  **B.** $4\sqrt{7}$  **C.** $2\sqrt{7}$  **D.** $3\sqrt{7}$

---

## LOGARITHMS

**Q2.** Given that $\log_{3} 81 = x$, find $x$.

**A.** 6  **B.** 3  **C.** 4  **D.** 5

---

## REMAINDER THEOREM

**Q3.** Find the remainder when $P(x) = x^{2} - x - 4$ is divided by $(x + 4)$.

**A.** 15  **B.** 17  **C.** 16  **D.** -16

---

## QUADRATICS

**Q4.** Find the discriminant, $b^2-4ac$, of $x^2 - 4x + 1$.

**A.** -12  **B.** 12  **C.** 16  **D.** 8

---

## DIFFERENTIATION

**Q5.** Differentiate $y = 2 x^{4} + 4 x$ with respect to $x$.

**A.** $8 x^{3} + 4$  **B.** $8 x^{3}$  **C.** $8 x^{3} + x + 4$  **D.** $8 x^{3} + 4 x$

---

## INTEGRATION

**Q6.** Find $\int 2 x\,dx$.

**A.** $x^{2}$  **B.** $x^{2} + c$  **C.** $4 x + c$  **D.** $x^{3} + c$

---

## TRIGONOMETRIC IDENTITIES

**Q7.** Simplify $1 + \cot^2\theta$.

**A.** $\text{cosec}^2\theta$  **B.** $\sec^2\theta$  **C.** 2  **D.** $\tan\theta$

---

## SEQUENCES & SERIES

**Q8.** An arithmetic progression has first term 7 and common difference 6. Find the 9th term.

**A.** 55  **B.** 56  **C.** 49  **D.** 61

---

**Q9.** A geometric progression has first term 2 and common ratio 3. Find the 4th term.

**A.** 18  **B.** 57  **C.** 54  **D.** 24

---

## COORDINATE GEOMETRY

**Q10.** Find the gradient of the line joining $A(4, 1)$ and $B(-1, -2)$.

**A.** $- \frac{3}{5}$  **B.** $- \frac{2}{5}$  **C.** $\frac{8}{5}$  **D.** $\frac{3}{5}$

---

## BINOMIAL EXPANSION

**Q11.** Find the coefficient of the term containing $x^2$ in the expansion of $(1+x)^{3}$.

**A.** 3  **B.** 4  **C.** 2  **D.** 6

---

## FUNCTIONS

**Q12.** Given $f(x) = x + 3$, find $f(-4)$.

**A.** 0  **B.** -1  **C.** -4  **D.** -2

---

## VECTORS

**Q13.** Given $\vec{a} = \begin{pmatrix} -3 \\ -3 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -5 \\ 4 \end{pmatrix}$, find $\vec{a} + \vec{b}$.

**A.** $\begin{pmatrix} -8 \\ 1 \end{pmatrix}$  **B.** $\begin{pmatrix} -7 \\ 1 \end{pmatrix}$  **C.** $\begin{pmatrix} 2 \\ -7 \end{pmatrix}$  **D.** $\begin{pmatrix} 15 \\ -12 \end{pmatrix}$

---

## SURDS

**Q14.** Simplify $\sqrt{12}$.

**A.** $3\sqrt{3}$  **B.** $1\sqrt{3}$  **C.** $2\sqrt{3}$  **D.** $2\sqrt{4}$

---

## LOGARITHMS

**Q15.** Given that $\log_{3} 243 = x$, find $x$.

**A.** 6  **B.** 7  **C.** 5  **D.** 4

---

## REMAINDER THEOREM

**Q16.** Find the remainder when $P(x) = 3 x^{2} + 5 x + 3$ is divided by $(x + 1)$.

**A.** -1  **B.** 2  **C.** 1  **D.** 0

---

## QUADRATICS

**Q17.** Find the discriminant, $b^2-4ac$, of $2x^2 - 8x + 1$.

**A.** 48  **B.** 60  **C.** 64  **D.** 56

---

## DIFFERENTIATION

**Q18.** Differentiate $y = 6 x^{2} + x$ with respect to $x$.

**A.** 13 x  **B.** $13 x + 1$  **C.** $12 x + 1$  **D.** 12 x

---

## INTEGRATION

**Q19.** Find $\int 5 x^{3}\,dx$.

**A.** $\frac{5 x^{5}}{4} + c$  **B.** $\frac{5 x^{4}}{4} + c$  **C.** $\frac{5 x^{4}}{4}$  **D.** $20 x^{3} + c$

---

## TRIGONOMETRIC IDENTITIES

**Q20.** Simplify $1 + \tan^2\theta$.

**A.** $\sec^2\theta$  **B.** 1  **C.** $\text{cosec}^2\theta$  **D.** $\tan\theta$

---

## SEQUENCES & SERIES

**Q21.** An arithmetic progression has first term 2 and common difference 4. Find the 11th term.

**A.** 46  **B.** 43  **C.** 42  **D.** 38

---

**Q22.** A geometric progression has first term 4 and common ratio 2. Find the 6th term.

**A.** 128  **B.** 130  **C.** 64  **D.** 48

---

## COORDINATE GEOMETRY

**Q23.** Find the gradient of the line joining $A(4, -5)$ and $B(5, 2)$.

**A.** 8  **B.** 6  **C.** 7  **D.** -7

---

## BINOMIAL EXPANSION

**Q24.** Find the coefficient of the term containing $x^1$ in the expansion of $(1+x)^{3}$.

**A.** 4  **B.** 1  **C.** 3  **D.** 6

---

## FUNCTIONS

**Q25.** Given $f(x) = 3 x$, find $f(3)$.

**A.** 10  **B.** 12  **C.** 8  **D.** 9

---

## VECTORS

**Q26.** Given $\vec{a} = \begin{pmatrix} 1 \\ 5 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} 2 \\ 1 \end{pmatrix}$, find $\vec{a} + \vec{b}$.

**A.** $\begin{pmatrix} 2 \\ 5 \end{pmatrix}$  **B.** $\begin{pmatrix} 3 \\ 6 \end{pmatrix}$  **C.** $\begin{pmatrix} 4 \\ 6 \end{pmatrix}$  **D.** $\begin{pmatrix} -1 \\ 4 \end{pmatrix}$

---

## SURDS

**Q27.** Simplify $\sqrt{44}$.

**A.** $2\sqrt{11}$  **B.** $2\sqrt{12}$  **C.** $1\sqrt{11}$  **D.** $3\sqrt{11}$

---

## LOGARITHMS

**Q28.** Given that $\log_{2} 8 = x$, find $x$.

**A.** 5  **B.** 4  **C.** 2  **D.** 3

---

## REMAINDER THEOREM

**Q29.** Find the remainder when $P(x) = 2 x^{2} - 3$ is divided by $(x + 4)$.

**A.** 29  **B.** 28  **C.** -29  **D.** 30

---

## QUADRATICS

**Q30.** Find the discriminant, $b^2-4ac$, of $x^2 - 4x - 1$.

**A.** 16  **B.** 20  **C.** -20  **D.** 24

---

## DIFFERENTIATION

**Q31.** Differentiate $y = 3 x^{4} + 3 x$ with respect to $x$.

**A.** $12 x^{3} + 3 x$  **B.** $12 x^{3}$  **C.** $12 x^{3} + 3$  **D.** $12 x^{3} + x + 3$

---

## INTEGRATION

**Q32.** Find $\int 4 x^{2}\,dx$.

**A.** $\frac{4 x^{3}}{3} + c$  **B.** $\frac{4 x^{3}}{3}$  **C.** $12 x^{2} + c$  **D.** $\frac{4 x^{4}}{3} + c$

---

## TRIGONOMETRIC IDENTITIES

**Q33.** Simplify $\sin^2\theta + \cos^2\theta$.

**A.** 2  **B.** 0  **C.** $\tan\theta$  **D.** 1

---

## SEQUENCES & SERIES

**Q34.** An arithmetic progression has first term 9 and common difference 4. Find the 10th term.

**A.** 49  **B.** 41  **C.** 46  **D.** 45

---

**Q35.** A geometric progression has first term 3 and common ratio 3. Find the 3th term.

**A.** 26  **B.** 30  **C.** 9  **D.** 27

---

## COORDINATE GEOMETRY

**Q36.** Find the gradient of the line joining $A(2, 3)$ and $B(-1, -2)$.

**A.** $\frac{2}{3}$  **B.** $\frac{8}{3}$  **C.** $\frac{5}{3}$  **D.** $- \frac{5}{3}$

---

## BINOMIAL EXPANSION

**Q37.** Find the coefficient of the term containing $x^4$ in the expansion of $(1+x)^{5}$.

**A.** 4  **B.** 6  **C.** 5  **D.** 10

---

## FUNCTIONS

**Q38.** Given $f(x) = 3 x - 2$, find $f(4)$.

**A.** 10  **B.** 12  **C.** 13  **D.** 11

---

## VECTORS

**Q39.** Given $\vec{a} = \begin{pmatrix} -4 \\ 3 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} 2 \\ 5 \end{pmatrix}$, find $\vec{a} + \vec{b}$.

**A.** $\begin{pmatrix} -6 \\ -2 \end{pmatrix}$  **B.** $\begin{pmatrix} -2 \\ 8 \end{pmatrix}$  **C.** $\begin{pmatrix} -8 \\ 15 \end{pmatrix}$  **D.** $\begin{pmatrix} -1 \\ 8 \end{pmatrix}$

---

## SURDS

**Q40.** Simplify $\sqrt{54}$.

**A.** $3\sqrt{7}$  **B.** $4\sqrt{6}$  **C.** $3\sqrt{6}$  **D.** $2\sqrt{6}$

---

## LOGARITHMS

**Q41.** Given that $\log_{3} 9 = x$, find $x$.

**A.** 4  **B.** 1  **C.** 2  **D.** 3

---

## REMAINDER THEOREM

**Q42.** Find the remainder when $P(x) = 2 x^{2} - 3 x$ is divided by $(x - 4)$.

**A.** 20  **B.** -20  **C.** 19  **D.** 21

---

## ANSWER KEY

1. D  2. C  3. C  4. B  5. A  6. B
7. A  8. A  9. C  10. D  11. A  12. B
13. A  14. C  15. C  16. C  17. D  18. C
19. B  20. A  21. C  22. A  23. C  24. C
25. D  26. B  27. A  28. D  29. A  30. B
31. C  32. A  33. D  34. D  35. D  36. C
37. C  38. A  39. B  40. C  41. C  42. A
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_a_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/ls-mcq-1.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: ls-mcq-1.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 2$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 2$studyspark$,
  'english',
  'advanced',
  array['lower_sixth']::text[],
  array['a_science']::text[],
  'published',
  $studyspark$# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 2

## Objective Question Bank - Set 2

**Level:** Advanced Level
**Class:** LOWER SIXTH
**Series:** a_science
**Subject:** Mathematics

**Instructions:**

- Answer all questions.
- Each question is followed by four possible answers lettered A to D.
- Choose the correct answer and shade the corresponding letter.
- Each question carries 1 mark. Total: 42 marks.

---

---

## SURDS

**Q1.** Simplify $\sqrt{27}$.

**A.** $2\sqrt{3}$  **B.** $3\sqrt{3}$  **C.** $3\sqrt{4}$  **D.** $4\sqrt{3}$

---

## LOGARITHMS

**Q2.** Given that $\log_{5} 125 = x$, find $x$.

**A.** 2  **B.** 5  **C.** 3  **D.** 4

---

## REMAINDER THEOREM

**Q3.** Find the remainder when $P(x) = 3 x^{2} - 5 x - 5$ is divided by $(x - 2)$.

**A.** -2  **B.** -3  **C.** 3  **D.** -4

---

## QUADRATICS

**Q4.** Find the discriminant, $b^2-4ac$, of $3x^2 - 6x + 5$.

**A.** 16  **B.** -12  **C.** -36  **D.** -24

---

## DIFFERENTIATION

**Q5.** Differentiate $y = 5 x^{3} + x$ with respect to $x$.

**A.** $15 x^{2} + x$  **B.** $15 x^{2}$  **C.** $15 x^{2} + x + 1$  **D.** $15 x^{2} + 1$

---

## INTEGRATION

**Q6.** Find $\int 5 x\,dx$.

**A.** $\frac{5 x^{2}}{2}$  **B.** $10 x + c$  **C.** $\frac{5 x^{2}}{2} + c$  **D.** $\frac{5 x^{3}}{2} + c$

---

## TRIGONOMETRIC IDENTITIES

**Q7.** Simplify $1 + \cot^2\theta$.

**A.** $\text{cosec}^2\theta$  **B.** 2  **C.** 1  **D.** $\tan\theta$

---

## SEQUENCES & SERIES

**Q8.** An arithmetic progression has first term 8 and common difference 5. Find the 7th term.

**A.** 43  **B.** 39  **C.** 33  **D.** 38

---

**Q9.** A geometric progression has first term 2 and common ratio 2. Find the 4th term.

**A.** 16  **B.** 8  **C.** 18  **D.** 15

---

## COORDINATE GEOMETRY

**Q10.** Find the gradient of the line joining $A(-4, 0)$ and $B(3, -3)$.

**A.** $\frac{4}{7}$  **B.** $\frac{3}{7}$  **C.** $- \frac{3}{7}$  **D.** $- \frac{10}{7}$

---

## BINOMIAL EXPANSION

**Q11.** Find the coefficient of the term containing $x^2$ in the expansion of $(1+x)^{5}$.

**A.** 20  **B.** 10  **C.** 5  **D.** 15

---

## FUNCTIONS

**Q12.** Given $f(x) = 3 x - 3$, find $f(-4)$.

**A.** -12  **B.** -16  **C.** -15  **D.** -14

---

## VECTORS

**Q13.** Given $\vec{a} = \begin{pmatrix} 4 \\ 5 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -5 \\ 3 \end{pmatrix}$, find $\vec{a} + \vec{b}$.

**A.** $\begin{pmatrix} 0 \\ 8 \end{pmatrix}$  **B.** $\begin{pmatrix} -20 \\ 15 \end{pmatrix}$  **C.** $\begin{pmatrix} -1 \\ 8 \end{pmatrix}$  **D.** $\begin{pmatrix} 9 \\ 2 \end{pmatrix}$

---

## SURDS

**Q14.** Simplify $\sqrt{40}$.

**A.** $2\sqrt{10}$  **B.** $2\sqrt{11}$  **C.** $1\sqrt{10}$  **D.** $3\sqrt{10}$

---

## REMAINDER THEOREM

**Q15.** Find the remainder when $P(x) = 2 x^{2} - 3 x + 1$ is divided by $(x - 4)$.

**A.** 21  **B.** 22  **C.** 20  **D.** -21

---

## QUADRATICS

**Q16.** Find the discriminant, $b^2-4ac$, of $4x^2 - 7x - 5$.

**A.** 113  **B.** 69  **C.** 129  **D.** 145

---

## DIFFERENTIATION

**Q17.** Differentiate $y = 5 x^{3} + 3 x$ with respect to $x$.

**A.** $15 x^{2} + 3$  **B.** $15 x^{2} + 3 x$  **C.** $15 x^{2}$  **D.** $15 x^{2} + x + 3$

---

## INTEGRATION

**Q18.** Find $\int 3 x^{2}\,dx$.

**A.** $x^{3}$  **B.** $x^{4} + c$  **C.** $9 x^{2} + c$  **D.** $x^{3} + c$

---

## TRIGONOMETRIC IDENTITIES

**Q19.** Simplify $1 + \tan^2\theta$.

**A.** $\text{cosec}^2\theta$  **B.** 0  **C.** $\sec^2\theta$  **D.** 2

---

## SEQUENCES & SERIES

**Q20.** An arithmetic progression has first term 5 and common difference 2. Find the 12th term.

**A.** 27  **B.** 25  **C.** 28  **D.** 29

---

**Q21.** A geometric progression has first term 3 and common ratio 3. Find the 3th term.

**A.** 9  **B.** 26  **C.** 27  **D.** 30

---

## COORDINATE GEOMETRY

**Q22.** Find the gradient of the line joining $A(-5, 0)$ and $B(-1, -3)$.

**A.** $- \frac{7}{4}$  **B.** $\frac{1}{4}$  **C.** $- \frac{3}{4}$  **D.** $\frac{3}{4}$

---

## BINOMIAL EXPANSION

**Q23.** Find the coefficient of the term containing $x^1$ in the expansion of $(1+x)^{3}$.

**A.** 3  **B.** 1  **C.** 4  **D.** 6

---

## FUNCTIONS

**Q24.** Given $f(x) = x + 1$, find $f(-2)$.

**A.** 1  **B.** -1  **C.** 0  **D.** -2

---

## VECTORS

**Q25.** Given $\vec{a} = \begin{pmatrix} 4 \\ -3 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} 2 \\ -1 \end{pmatrix}$, find $\vec{a} + \vec{b}$.

**A.** $\begin{pmatrix} 7 \\ -4 \end{pmatrix}$  **B.** $\begin{pmatrix} 2 \\ -2 \end{pmatrix}$  **C.** $\begin{pmatrix} 8 \\ 3 \end{pmatrix}$  **D.** $\begin{pmatrix} 6 \\ -4 \end{pmatrix}$

---

## SURDS

**Q26.** Simplify $\sqrt{28}$.

**A.** $2\sqrt{8}$  **B.** $3\sqrt{7}$  **C.** $2\sqrt{7}$  **D.** $1\sqrt{7}$

---

## LOGARITHMS

**Q27.** Given that $\log_{3} 81 = x$, find $x$.

**A.** 4  **B.** 5  **C.** 3  **D.** 6

---

## REMAINDER THEOREM

**Q28.** Find the remainder when $P(x) = 3 x^{2} + 2 x + 3$ is divided by $(x - 4)$.

**A.** 58  **B.** 60  **C.** 59  **D.** -59

---

## QUADRATICS

**Q29.** Find the discriminant, $b^2-4ac$, of $4x^2 + 8x + 6$.

**A.** -48  **B.** 40  **C.** -16  **D.** -32

---

## DIFFERENTIATION

**Q30.** Differentiate $y = 3 x^{3} + 2 x$ with respect to $x$.

**A.** $9 x^{2} + 2$  **B.** $9 x^{2}$  **C.** $9 x^{2} + x + 2$  **D.** $9 x^{2} + 2 x$

---

## TRIGONOMETRIC IDENTITIES

**Q31.** Simplify $\sin^2\theta + \cos^2\theta$.

**A.** 1  **B.** $\text{cosec}^2\theta$  **C.** $\sec^2\theta$  **D.** 2

---

## SEQUENCES & SERIES

**Q32.** An arithmetic progression has first term 5 and common difference 4. Find the 12th term.

**A.** 53  **B.** 45  **C.** 49  **D.** 50

---

**Q33.** A geometric progression has first term 4 and common ratio 2. Find the 4th term.

**A.** 34  **B.** 32  **C.** 16  **D.** 31

---

## COORDINATE GEOMETRY

**Q34.** Find the gradient of the line joining $A(0, 0)$ and $B(-3, -2)$.

**A.** $\frac{5}{3}$  **B.** $- \frac{2}{3}$  **C.** $\frac{2}{3}$  **D.** $- \frac{1}{3}$

---

## BINOMIAL EXPANSION

**Q35.** Find the coefficient of the term containing $x^2$ in the expansion of $(1+x)^{3}$.

**A.** 2  **B.** 4  **C.** 3  **D.** 6

---

## FUNCTIONS

**Q36.** Given $f(x) = x - 3$, find $f(0)$.

**A.** -3  **B.** 0  **C.** -4  **D.** -2

---

## VECTORS

**Q37.** Given $\vec{a} = \begin{pmatrix} -2 \\ -5 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -3 \\ -2 \end{pmatrix}$, find $\vec{a} + \vec{b}$.

**A.** $\begin{pmatrix} -5 \\ -7 \end{pmatrix}$  **B.** $\begin{pmatrix} 6 \\ 10 \end{pmatrix}$  **C.** $\begin{pmatrix} 1 \\ -3 \end{pmatrix}$  **D.** $\begin{pmatrix} -4 \\ -7 \end{pmatrix}$

---

## REMAINDER THEOREM

**Q38.** Find the remainder when $P(x) = 2 x^{2} + 4 x$ is divided by $(x - 1)$.

**A.** 6  **B.** 5  **C.** 7  **D.** -6

---

## QUADRATICS

**Q39.** Find the discriminant, $b^2-4ac$, of $3x^2 - 6x - 1$.

**A.** 36  **B.** 40  **C.** 60  **D.** 48

---

## DIFFERENTIATION

**Q40.** Differentiate $y = 2 x^{4} + 2 x$ with respect to $x$.

**A.** $8 x^{3} + x + 2$  **B.** $8 x^{3} + 2$  **C.** $8 x^{3}$  **D.** $8 x^{3} + 2 x$

---

## INTEGRATION

**Q41.** Find $\int 4 x^{2}\,dx$.

**A.** $\frac{4 x^{3}}{3}$  **B.** $12 x^{2} + c$  **C.** $\frac{4 x^{3}}{3} + c$  **D.** $\frac{4 x^{4}}{3} + c$

---

## SEQUENCES & SERIES

**Q42.** An arithmetic progression has first term 7 and common difference 6. Find the 8th term.

**A.** 55  **B.** 43  **C.** 49  **D.** 50

---

## ANSWER KEY

1. B  2. C  3. B  4. D  5. D  6. C
7. A  8. D  9. A  10. C  11. B  12. C
13. C  14. A  15. A  16. C  17. A  18. D
19. C  20. A  21. C  22. C  23. A  24. B
25. D  26. C  27. A  28. C  29. D  30. A
31. A  32. C  33. B  34. C  35. C  36. A
37. A  38. A  39. D  40. B  41. C  42. C
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_a_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/ls-mcq-2.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: ls-mcq-2.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 3$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 3$studyspark$,
  'english',
  'advanced',
  array['lower_sixth']::text[],
  array['a_science']::text[],
  'published',
  $studyspark$# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** LOWER SIXTH
**Series:** a_science
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, and labelled sketches should be included where useful.

---

---

## SURDS AND INDICES

**Q1.** Consider the surd $\sqrt{45}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{5}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{45} \times \sqrt{5}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q2.** A polynomial is given by $P(x) = x^{3} + x^{2} - 3 x + 5$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x + 2)$. *(4 marks)*

(b) Determine whether $(x + 2)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q3.** A quadratic function is defined by $f(x) = 2x^2 + 6x + 8$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q4.** An arithmetic progression has first term 6 and common difference 3.

(a) Find the 9th term of the progression. *(3 marks)*

(b) Find the sum of the first 9 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## BINOMIAL EXPANSION

**Q5.** Consider the binomial expansion of $(1+x)^{5}$.

(a) Write out the full expansion using the binomial theorem, simplifying each coefficient. *(6 marks)*

(b) Find the coefficient of $x^3$ in the expansion. *(3 marks)*

(c) Use your expansion to estimate $(1.02)^{5}$ correct to 4 decimal places. *(4 marks)*

---

## DIFFERENTIATION

**Q6.** A curve has equation $y = 4 x^{4} + 4 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q7.** Consider the function $f(x) = 6 x$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## TRIGONOMETRIC EQUATIONS

**Q8.** Consider the equation $\sin x = 1$ for $0^\circ \leq x \leq 360^\circ$.

(a) State the trigonometric identity $\sin^2 x + \cos^2 x = ?$ *(2 marks)*

(b) Solve the equation for $x$, giving all solutions in the given range. *(5 marks)*

(c) Hence solve $\sin 2\theta = 1$ for $0^\circ \leq \theta \leq 180^\circ$. *(5 marks)*

---

## COORDINATE GEOMETRY

**Q9.** Points $A(-3, -5)$ and $B(0, 3)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q10.** Given $\vec{a} = \begin{pmatrix} -1 \\ 1 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -6 \\ 1 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q11.** A function is defined by $f(x) = 2x + 2$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## LOGARITHMS AND EXPONENTIAL FUNCTIONS

**Q12.** Consider the equation $2^x = 50$.

(a) Solve for $x$ by taking logarithms, giving your answer correct to 3 significant figures. *(4 marks)*

(b) State the laws of logarithms for: (i) $\log(ab)$, (ii) $\log(a/b)$, (iii) $\log(a^n)$. *(4 marks)*

(c) Hence solve $\log_{2}(x) + \log_{2}(x-3) = \log_{2}(10)$. *(5 marks)*

---

## SURDS AND INDICES

**Q13.** Consider the surd $\sqrt{80}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{5}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{80} \times \sqrt{5}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q14.** A polynomial is given by $P(x) = x^{3} - 4 x^{2} - x + 2$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x + 1)$. *(4 marks)*

(b) Determine whether $(x + 1)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q15.** A quadratic function is defined by $f(x) = 2x^2 + 7x - 5$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q16.** An arithmetic progression has first term 9 and common difference 7.

(a) Find the 9th term of the progression. *(3 marks)*

(b) Find the sum of the first 9 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## BINOMIAL EXPANSION

**Q17.** Consider the binomial expansion of $(1+x)^{4}$.

(a) Write out the full expansion using the binomial theorem, simplifying each coefficient. *(6 marks)*

(b) Find the coefficient of $x^3$ in the expansion. *(3 marks)*

(c) Use your expansion to estimate $(1.02)^{4}$ correct to 4 decimal places. *(4 marks)*

---

## DIFFERENTIATION

**Q18.** A curve has equation $y = 5 x^{2} + 3 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q19.** Consider the function $f(x) = 4 x$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## TRIGONOMETRIC EQUATIONS

**Q20.** Consider the equation $\sin x = 0.5$ for $0^\circ \leq x \leq 360^\circ$.

(a) State the trigonometric identity $\sin^2 x + \cos^2 x = ?$ *(2 marks)*

(b) Solve the equation for $x$, giving all solutions in the given range. *(5 marks)*

(c) Hence solve $\sin 2\theta = 0.5$ for $0^\circ \leq \theta \leq 180^\circ$. *(5 marks)*

---

## COORDINATE GEOMETRY

**Q21.** Points $A(2, 6)$ and $B(4, 1)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q22.** Given $\vec{a} = \begin{pmatrix} 0 \\ -6 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -4 \\ -4 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q23.** A function is defined by $f(x) = 3x + -4$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## SURDS AND INDICES

**Q24.** Consider the surd $\sqrt{27}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{3}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{27} \times \sqrt{3}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q25.** A polynomial is given by $P(x) = x^{3} - 5 x^{2} - 2 x - 1$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x - 2)$. *(4 marks)*

(b) Determine whether $(x - 2)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q26.** A quadratic function is defined by $f(x) = 3x^2 - 3x - 1$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q27.** An arithmetic progression has first term 2 and common difference 4.

(a) Find the 15th term of the progression. *(3 marks)*

(b) Find the sum of the first 15 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## DIFFERENTIATION

**Q28.** A curve has equation $y = 3 x^{2} + 3 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q29.** Consider the function $f(x) = 3 x$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## TRIGONOMETRIC EQUATIONS

**Q30.** Consider the equation $\sin x = -0.5$ for $0^\circ \leq x \leq 360^\circ$.

(a) State the trigonometric identity $\sin^2 x + \cos^2 x = ?$ *(2 marks)*

(b) Solve the equation for $x$, giving all solutions in the given range. *(5 marks)*

(c) Hence solve $\sin 2\theta = -0.5$ for $0^\circ \leq \theta \leq 180^\circ$. *(5 marks)*

---

## COORDINATE GEOMETRY

**Q31.** Points $A(1, 1)$ and $B(5, -2)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q32.** Given $\vec{a} = \begin{pmatrix} 1 \\ -1 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -4 \\ -1 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q33.** A function is defined by $f(x) = 4x + -6$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## LOGARITHMS AND EXPONENTIAL FUNCTIONS

**Q34.** Consider the equation $3^x = 50$.

(a) Solve for $x$ by taking logarithms, giving your answer correct to 3 significant figures. *(4 marks)*

(b) State the laws of logarithms for: (i) $\log(ab)$, (ii) $\log(a/b)$, (iii) $\log(a^n)$. *(4 marks)*

(c) Hence solve $\log_{3}(x) + \log_{3}(x-3) = \log_{3}(10)$. *(5 marks)*

---

## SURDS AND INDICES

**Q35.** Consider the surd $\sqrt{32}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{2}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{32} \times \sqrt{2}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q36.** A polynomial is given by $P(x) = x^{3} + 5 x^{2} - 4 x + 4$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x + 1)$. *(4 marks)*

(b) Determine whether $(x + 1)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q37.** A quadratic function is defined by $f(x) = 2x^2 - 3x - 8$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q38.** An arithmetic progression has first term 10 and common difference 6.

(a) Find the 14th term of the progression. *(3 marks)*

(b) Find the sum of the first 14 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## DIFFERENTIATION

**Q39.** A curve has equation $y = 3 x^{2} + 2 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q40.** Consider the function $f(x) = 4 x^{3}$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## COORDINATE GEOMETRY

**Q41.** Points $A(1, 4)$ and $B(-4, 1)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q42.** Given $\vec{a} = \begin{pmatrix} 2 \\ -4 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} 6 \\ 1 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_a_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/ls-structural-1.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: ls-structural-1.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 4$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 4$studyspark$,
  'english',
  'advanced',
  array['lower_sixth']::text[],
  array['a_science']::text[],
  'published',
  $studyspark$# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** LOWER SIXTH
**Series:** a_science
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, and labelled sketches should be included where useful.

---

---

## SURDS AND INDICES

**Q1.** Consider the surd $\sqrt{20}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{5}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{20} \times \sqrt{5}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q2.** A polynomial is given by $P(x) = x^{3} + x^{2} - 2 x + 4$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x - 1)$. *(4 marks)*

(b) Determine whether $(x - 1)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q3.** A quadratic function is defined by $f(x) = 2x^2 - 1x + 5$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q4.** An arithmetic progression has first term 10 and common difference 6.

(a) Find the 11th term of the progression. *(3 marks)*

(b) Find the sum of the first 11 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## BINOMIAL EXPANSION

**Q5.** Consider the binomial expansion of $(1+x)^{6}$.

(a) Write out the full expansion using the binomial theorem, simplifying each coefficient. *(6 marks)*

(b) Find the coefficient of $x^3$ in the expansion. *(3 marks)*

(c) Use your expansion to estimate $(1.02)^{6}$ correct to 4 decimal places. *(4 marks)*

---

## DIFFERENTIATION

**Q6.** A curve has equation $y = 3 x^{3} + 4 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q7.** Consider the function $f(x) = 2 x^{2}$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## TRIGONOMETRIC EQUATIONS

**Q8.** Consider the equation $\sin x = -1$ for $0^\circ \leq x \leq 360^\circ$.

(a) State the trigonometric identity $\sin^2 x + \cos^2 x = ?$ *(2 marks)*

(b) Solve the equation for $x$, giving all solutions in the given range. *(5 marks)*

(c) Hence solve $\sin 2\theta = -1$ for $0^\circ \leq \theta \leq 180^\circ$. *(5 marks)*

---

## COORDINATE GEOMETRY

**Q9.** Points $A(-5, 1)$ and $B(3, -3)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q10.** Given $\vec{a} = \begin{pmatrix} 0 \\ 1 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} 5 \\ -1 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q11.** A function is defined by $f(x) = 2x + -3$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## LOGARITHMS AND EXPONENTIAL FUNCTIONS

**Q12.** Consider the equation $10^x = 50$.

(a) Solve for $x$ by taking logarithms, giving your answer correct to 3 significant figures. *(4 marks)*

(b) State the laws of logarithms for: (i) $\log(ab)$, (ii) $\log(a/b)$, (iii) $\log(a^n)$. *(4 marks)*

(c) Hence solve $\log_{10}(x) + \log_{10}(x-3) = \log_{10}(10)$. *(5 marks)*

---

## SURDS AND INDICES

**Q13.** Consider the surd $\sqrt{96}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{6}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{96} \times \sqrt{6}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q14.** A polynomial is given by $P(x) = x^{3} + 2 x^{2} + 5 x + 3$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x - 2)$. *(4 marks)*

(b) Determine whether $(x - 2)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q15.** A quadratic function is defined by $f(x) = x^2 - 6x - 4$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q16.** An arithmetic progression has first term 2 and common difference 4.

(a) Find the 9th term of the progression. *(3 marks)*

(b) Find the sum of the first 9 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## DIFFERENTIATION

**Q17.** A curve has equation $y = 2 x^{2} + 5 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q18.** Consider the function $f(x) = 3 x^{2}$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## TRIGONOMETRIC EQUATIONS

**Q19.** Consider the equation $\sin x = -0.5$ for $0^\circ \leq x \leq 360^\circ$.

(a) State the trigonometric identity $\sin^2 x + \cos^2 x = ?$ *(2 marks)*

(b) Solve the equation for $x$, giving all solutions in the given range. *(5 marks)*

(c) Hence solve $\sin 2\theta = -0.5$ for $0^\circ \leq \theta \leq 180^\circ$. *(5 marks)*

---

## COORDINATE GEOMETRY

**Q20.** Points $A(-3, 6)$ and $B(-6, 6)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q21.** Given $\vec{a} = \begin{pmatrix} -4 \\ 6 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} 4 \\ 2 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q22.** A function is defined by $f(x) = 2x + 2$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## SURDS AND INDICES

**Q23.** Consider the surd $\sqrt{112}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{7}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{112} \times \sqrt{7}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q24.** A polynomial is given by $P(x) = 2 x^{3} + 3 x^{2} + 3 x + 3$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x + 2)$. *(4 marks)*

(b) Determine whether $(x + 2)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q25.** A quadratic function is defined by $f(x) = 3x^2 - 6x + 3$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q26.** An arithmetic progression has first term 10 and common difference 3.

(a) Find the 13th term of the progression. *(3 marks)*

(b) Find the sum of the first 13 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## BINOMIAL EXPANSION

**Q27.** Consider the binomial expansion of $(1+x)^{4}$.

(a) Write out the full expansion using the binomial theorem, simplifying each coefficient. *(6 marks)*

(b) Find the coefficient of $x^3$ in the expansion. *(3 marks)*

(c) Use your expansion to estimate $(1.02)^{4}$ correct to 4 decimal places. *(4 marks)*

---

## DIFFERENTIATION

**Q28.** A curve has equation $y = 3 x^{2} + 2 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## COORDINATE GEOMETRY

**Q29.** Points $A(-6, 5)$ and $B(-5, 6)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q30.** Given $\vec{a} = \begin{pmatrix} -6 \\ -2 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -2 \\ 2 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q31.** A function is defined by $f(x) = 3x + 3$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## SURDS AND INDICES

**Q32.** Consider the surd $\sqrt{32}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{2}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{32} \times \sqrt{2}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q33.** A polynomial is given by $P(x) = 2 x^{3} - 4 x^{2} - 4 x + 4$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x + 2)$. *(4 marks)*

(b) Determine whether $(x + 2)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q34.** A quadratic function is defined by $f(x) = 3x^2 + 1x + 2$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q35.** An arithmetic progression has first term 8 and common difference 4.

(a) Find the 10th term of the progression. *(3 marks)*

(b) Find the sum of the first 10 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## DIFFERENTIATION

**Q36.** A curve has equation $y = 4 x^{3} + 2 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q37.** Consider the function $f(x) = 4 x$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## COORDINATE GEOMETRY

**Q38.** Points $A(5, 2)$ and $B(-2, 5)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q39.** Given $\vec{a} = \begin{pmatrix} 1 \\ 4 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -3 \\ 4 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q40.** A function is defined by $f(x) = 4x + -6$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## LOGARITHMS AND EXPONENTIAL FUNCTIONS

**Q41.** Consider the equation $3^x = 50$.

(a) Solve for $x$ by taking logarithms, giving your answer correct to 3 significant figures. *(4 marks)*

(b) State the laws of logarithms for: (i) $\log(ab)$, (ii) $\log(a/b)$, (iii) $\log(a^n)$. *(4 marks)*

(c) Hence solve $\log_{3}(x) + \log_{3}(x-3) = \log_{3}(10)$. *(5 marks)*
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_a_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/ls-structural-2.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: ls-structural-2.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Mathematics' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 5$studyspark$ limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by,
  doc_type, content_kind, curriculum_path, exam, content_year, source_type, source_reference,
  permission_status, review_status, published_at, content_version, change_note
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  $studyspark$CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 5$studyspark$,
  'english',
  'advanced',
  array['lower_sixth']::text[],
  array['a_science']::text[],
  'published',
  $studyspark$# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** LOWER SIXTH
**Series:** a_science
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, and labelled sketches should be included where useful.

---

---

## SURDS AND INDICES

**Q1.** Consider the surd $\sqrt{54}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{6}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{54} \times \sqrt{6}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q2.** A polynomial is given by $P(x) = x^{3} + 4 x^{2} + 4 x - 5$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x + 2)$. *(4 marks)*

(b) Determine whether $(x + 2)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q3.** A quadratic function is defined by $f(x) = x^2 + 4x - 2$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q4.** An arithmetic progression has first term 6 and common difference 2.

(a) Find the 13th term of the progression. *(3 marks)*

(b) Find the sum of the first 13 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## BINOMIAL EXPANSION

**Q5.** Consider the binomial expansion of $(1+x)^{4}$.

(a) Write out the full expansion using the binomial theorem, simplifying each coefficient. *(6 marks)*

(b) Find the coefficient of $x^3$ in the expansion. *(3 marks)*

(c) Use your expansion to estimate $(1.02)^{4}$ correct to 4 decimal places. *(4 marks)*

---

## DIFFERENTIATION

**Q6.** A curve has equation $y = 5 x^{4} + 3 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q7.** Consider the function $f(x) = 2 x$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## COORDINATE GEOMETRY

**Q8.** Points $A(-2, 5)$ and $B(6, 4)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q9.** Given $\vec{a} = \begin{pmatrix} -4 \\ 0 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -1 \\ -1 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q10.** A function is defined by $f(x) = 2x + -5$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## SURDS AND INDICES

**Q11.** Consider the surd $\sqrt{27}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{3}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{27} \times \sqrt{3}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q12.** A polynomial is given by $P(x) = x^{3} + x^{2} - 4 x + 1$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x + 2)$. *(4 marks)*

(b) Determine whether $(x + 2)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q13.** A quadratic function is defined by $f(x) = 3x^2 - 4x - 7$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q14.** An arithmetic progression has first term 6 and common difference 4.

(a) Find the 12th term of the progression. *(3 marks)*

(b) Find the sum of the first 12 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## BINOMIAL EXPANSION

**Q15.** Consider the binomial expansion of $(1+x)^{6}$.

(a) Write out the full expansion using the binomial theorem, simplifying each coefficient. *(6 marks)*

(b) Find the coefficient of $x^3$ in the expansion. *(3 marks)*

(c) Use your expansion to estimate $(1.02)^{6}$ correct to 4 decimal places. *(4 marks)*

---

## DIFFERENTIATION

**Q16.** A curve has equation $y = 3 x^{2} + 3 x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q17.** Consider the function $f(x) = 6 x^{3}$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## COORDINATE GEOMETRY

**Q18.** Points $A(1, 1)$ and $B(2, -5)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q19.** Given $\vec{a} = \begin{pmatrix} -1 \\ -2 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} -2 \\ 0 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q20.** A function is defined by $f(x) = 4x + 6$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## LOGARITHMS AND EXPONENTIAL FUNCTIONS

**Q21.** Consider the equation $3^x = 50$.

(a) Solve for $x$ by taking logarithms, giving your answer correct to 3 significant figures. *(4 marks)*

(b) State the laws of logarithms for: (i) $\log(ab)$, (ii) $\log(a/b)$, (iii) $\log(a^n)$. *(4 marks)*

(c) Hence solve $\log_{3}(x) + \log_{3}(x-3) = \log_{3}(10)$. *(5 marks)*

---

## SURDS AND INDICES

**Q22.** Consider the surd $\sqrt{24}$.

(a) Simplify the surd, leaving your answer in the form $k\sqrt{a}$. *(3 marks)*

(b) Rationalise the denominator of $\dfrac{1}{\sqrt{6}}$. *(3 marks)*

(c) Hence, or otherwise, simplify $\sqrt{24} \times \sqrt{6}$. *(4 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q23.** A polynomial is given by $P(x) = 2 x^{3} - x^{2} - 3 x$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x - 2)$. *(4 marks)*

(b) Determine whether $(x - 2)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q24.** A quadratic function is defined by $f(x) = x^2 + 3x - 9$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q25.** An arithmetic progression has first term 5 and common difference 6.

(a) Find the 14th term of the progression. *(3 marks)*

(b) Find the sum of the first 14 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## DIFFERENTIATION

**Q26.** A curve has equation $y = 5 x^{4} + x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q27.** Consider the function $f(x) = 3 x^{3}$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## COORDINATE GEOMETRY

**Q28.** Points $A(-2, -5)$ and $B(-2, 5)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q29.** Given $\vec{a} = \begin{pmatrix} -3 \\ -3 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} 6 \\ 4 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q30.** A function is defined by $f(x) = 3x + 4$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*

---

## POLYNOMIALS AND THE REMAINDER THEOREM

**Q31.** A polynomial is given by $P(x) = 2 x^{3} - 5 x^{2} + 5 x + 5$.

(a) Use the remainder theorem to find the remainder when $P(x)$ is divided by $(x + 1)$. *(4 marks)*

(b) Determine whether $(x + 1)$ is a factor of $P(x)$, giving a reason. *(3 marks)*

(c) Find $P'(x)$, the derivative of $P(x)$. *(4 marks)*

---

## QUADRATIC FUNCTIONS

**Q32.** A quadratic function is defined by $f(x) = x^2 + 5x + 6$.

(a) Find the discriminant of $f(x)$ and use it to state the number of real roots. *(4 marks)*

(b) Express $f(x)$ in completed-square form. *(5 marks)*

(c) Hence state the coordinates of the turning point of the curve $y=f(x)$ and determine whether it is a maximum or minimum. *(4 marks)*

---

## SEQUENCES AND SERIES

**Q33.** An arithmetic progression has first term 4 and common difference 4.

(a) Find the 14th term of the progression. *(3 marks)*

(b) Find the sum of the first 14 terms of the progression. *(4 marks)*

(c) A geometric progression has the same first term and a common ratio of 2. Find its 6th term. *(4 marks)*

---

## DIFFERENTIATION

**Q34.** A curve has equation $y = 2 x^{4} + x$.

(a) Find $\dfrac{dy}{dx}$. *(4 marks)*

(b) Find the gradient of the curve at the point where $x=1$. *(3 marks)*

(c) Find the coordinates of any stationary point(s) on the curve, and determine their nature. *(6 marks)*

---

## INTEGRATION

**Q35.** Consider the function $f(x) = 4 x^{3}$.

(a) Find $\int f(x)\,dx$. *(3 marks)*

(b) Find the area enclosed between the curve $y=f(x)$, the $x$-axis, and the lines $x=1$ and $x=2$. *(5 marks)*

(c) Find the particular solution of $\dfrac{dy}{dx} = f(x)$ given that $y=3$ when $x=0$. *(4 marks)*

---

## TRIGONOMETRIC EQUATIONS

**Q36.** Consider the equation $\sin x = -0.5$ for $0^\circ \leq x \leq 360^\circ$.

(a) State the trigonometric identity $\sin^2 x + \cos^2 x = ?$ *(2 marks)*

(b) Solve the equation for $x$, giving all solutions in the given range. *(5 marks)*

(c) Hence solve $\sin 2\theta = -0.5$ for $0^\circ \leq \theta \leq 180^\circ$. *(5 marks)*

---

## COORDINATE GEOMETRY

**Q37.** Points $A(-5, -2)$ and $B(0, -2)$ are given.

(a) Find the gradient of the line $AB$. *(3 marks)*

(b) Find the equation of the line $AB$ in the form $y=mx+c$. *(4 marks)*

(c) Find the equation of the perpendicular bisector of $AB$. *(5 marks)*

---

## VECTORS

**Q38.** Given $\vec{a} = \begin{pmatrix} 2 \\ -3 \end{pmatrix}$ and $\vec{b} = \begin{pmatrix} 5 \\ -5 \end{pmatrix}$.

(a) Find $\vec{a} + \vec{b}$ and $\vec{a} - \vec{b}$. *(4 marks)*

(b) Find $|\vec{a}|$, the magnitude of $\vec{a}$, leaving your answer as a surd where necessary. *(3 marks)*

(c) Find the unit vector in the direction of $\vec{a}$. *(4 marks)*

---

## FUNCTIONS

**Q39.** A function is defined by $f(x) = 1x + -3$ for $x \in \mathbb{R}$.

(a) State the domain and range of $f$. *(3 marks)*

(b) Find $f^{-1}(x)$, the inverse function. *(4 marks)*

(c) Find $ff(x)$, the composite function $f$ applied to itself, in simplified form. *(5 marks)*
$studyspark$,
  null,
  'paper',
  'paper',
  'gce',
  'gce_a_level',
  '2026',
  'internal',
  $studyspark$Downloads/studyspark-mathematics-papers/ls-structural-3.md$studyspark$,
  'approved',
  'approved',
  now(),
  '2026.10.06-sanitized',
  $studyspark$Imported from StudySpark mathematics papers package on 2026-10-06 after removing duplicate long question blocks. Original file: ls-structural-3.md.$studyspark$
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
  doc_type = excluded.doc_type,
  content_kind = excluded.content_kind,
  curriculum_path = excluded.curriculum_path,
  exam = excluded.exam,
  content_year = excluded.content_year,
  source_type = excluded.source_type,
  source_reference = excluded.source_reference,
  permission_status = excluded.permission_status,
  review_status = excluded.review_status,
  published_at = coalesce(public.course_documents.published_at, now()),
  content_version = excluded.content_version,
  change_note = excluded.change_note,
  updated_at = now();

notify pgrst, 'reload schema';

commit;
