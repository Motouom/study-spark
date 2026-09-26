begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Grammaire Avancée: Sample question 1 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Vocabulaire Spécialisé: Sample question 2 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Compréhension: Sample question 3 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Expression Écrite: Sample question 4 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Civilisation Francophone: Sample question 5 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Littérature Africaine: Sample question 6 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Traduction: Sample question 7 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Communication: Sample question 8 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Grammaire Avancée: Sample question 9 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Vocabulaire Spécialisé: Sample question 10 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Compréhension: Sample question 11 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Expression Écrite: Sample question 12 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Civilisation Francophone: Sample question 13 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Littérature Africaine: Sample question 14 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Traduction: Sample question 15 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Communication: Sample question 16 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Grammaire Avancée: Sample question 17 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Vocabulaire Spécialisé: Sample question 18 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Compréhension: Sample question 19 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Expression Écrite: Sample question 20 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Civilisation Francophone: Sample question 21 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Littérature Africaine: Sample question 22 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Traduction: Sample question 23 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Communication: Sample question 24 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Grammaire Avancée: Sample question 25 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Vocabulaire Spécialisé: Sample question 26 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Compréhension: Sample question 27 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Expression Écrite: Sample question 28 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Civilisation Francophone: Sample question 29 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Littérature Africaine: Sample question 30 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Traduction: Sample question 31 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Communication: Sample question 32 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Grammaire Avancée: Sample question 33 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Vocabulaire Spécialisé: Sample question 34 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Compréhension: Sample question 35 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Expression Écrite: Sample question 36 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Civilisation Francophone: Sample question 37 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Littérature Africaine: Sample question 38 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Traduction: Sample question 39 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Communication: Sample question 40 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Grammaire Avancée: Sample question 41 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Vocabulaire Spécialisé: Sample question 42 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Compréhension: Sample question 43 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Expression Écrite: Sample question 44 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Civilisation Francophone: Sample question 45 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Littérature Africaine: Sample question 46 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Traduction: Sample question 47 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Communication: Sample question 48 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Grammaire Avancée: Sample question 49 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Vocabulaire Spécialisé: Sample question 50 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Compréhension: Sample question 51 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Expression Écrite: Sample question 52 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Civilisation Francophone: Sample question 53 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Littérature Africaine: Sample question 54 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Traduction: Sample question 55 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Communication: Sample question 56 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Grammaire Avancée: Sample question 57 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Vocabulaire Spécialisé: Sample question 58 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Compréhension: Sample question 59 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Expression Écrite: Sample question 60 for Special Bilingual Education French Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

## ANSWER KEY

1. A
2. B
3. C
4. D
5. A
6. B
7. C
8. D
9. A
10. B
11. C
12. D
13. A
14. B
15. C
16. D
17. A
18. B
19. C
20. D
21. A
22. B
23. C
24. D
25. A
26. B
27. C
28. D
29. A
30. B
31. C
32. D
33. A
34. B
35. C
36. D
37. A
38. B
39. C
40. D
41. A
42. B
43. C
44. D
45. A
46. B
47. C
48. D
49. A
50. B
51. C
52. D
53. A
54. B
55. C
56. D
57. A
58. B
59. C
60. D
',
  null
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
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ADVANCED COMPREHENSION

**Q1.** Advanced comprehension: Read original passage 1: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Advanced comprehension: Read original passage 2: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Advanced comprehension: Read original passage 3: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Advanced comprehension: Read original passage 4: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Advanced comprehension: Read original passage 5: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: TRANSLATION

**Q6.** Translation: Read original passage 6: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Translation: Read original passage 7: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Translation: Read original passage 8: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Translation: Read original passage 9: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Translation: Read original passage 10: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: EXPRESSION ECRITE

**Q11.** Expression ecrite: Read original passage 11: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Expression ecrite: Read original passage 12: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Expression ecrite: Read original passage 13: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Expression ecrite: Read original passage 14: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Expression ecrite: Read original passage 15: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: GRAMMAR

**Q16.** Grammar: Read original passage 16: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Grammar: Read original passage 17: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Grammar: Read original passage 18: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Grammar: Read original passage 19: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Grammar: Read original passage 20: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: ORAL PRODUCTION

**Q21.** Oral production: Read original passage 21: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Oral production: Read original passage 22: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Oral production: Read original passage 23: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Oral production: Read original passage 24: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Oral production: Read original passage 25: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: CULTURE

**Q26.** Culture: Read original passage 26: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Culture: Read original passage 27: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Culture: Read original passage 28: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Culture: Read original passage 29: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Culture: Read original passage 30: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: REGISTER

**Q31.** Register: Read original passage 31: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Register: Read original passage 32: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Register: Read original passage 33: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Register: Read original passage 34: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Register: Read original passage 35: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: TEXT ANALYSIS

**Q36.** Text analysis: Read original passage 36: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Text analysis: Read original passage 37: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Text analysis: Read original passage 38: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Text analysis: Read original passage 39: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Text analysis: Read original passage 40: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---
',
  null
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
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ADVANCED COMPREHENSION

**Q1.** Advanced comprehension: Read original passage 1: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Advanced comprehension: Read original passage 2: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Advanced comprehension: Read original passage 3: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Advanced comprehension: Read original passage 4: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Advanced comprehension: Read original passage 5: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: TRANSLATION

**Q6.** Translation: Read original passage 6: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Translation: Read original passage 7: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Translation: Read original passage 8: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Translation: Read original passage 9: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Translation: Read original passage 10: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: EXPRESSION ECRITE

**Q11.** Expression ecrite: Read original passage 11: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Expression ecrite: Read original passage 12: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Expression ecrite: Read original passage 13: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Expression ecrite: Read original passage 14: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Expression ecrite: Read original passage 15: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: GRAMMAR

**Q16.** Grammar: Read original passage 16: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Grammar: Read original passage 17: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Grammar: Read original passage 18: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Grammar: Read original passage 19: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Grammar: Read original passage 20: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: ORAL PRODUCTION

**Q21.** Oral production: Read original passage 21: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Oral production: Read original passage 22: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Oral production: Read original passage 23: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Oral production: Read original passage 24: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Oral production: Read original passage 25: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: CULTURE

**Q26.** Culture: Read original passage 26: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Culture: Read original passage 27: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Culture: Read original passage 28: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Culture: Read original passage 29: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Culture: Read original passage 30: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: REGISTER

**Q31.** Register: Read original passage 31: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Register: Read original passage 32: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Register: Read original passage 33: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Register: Read original passage 34: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Register: Read original passage 35: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: TEXT ANALYSIS

**Q36.** Text analysis: Read original passage 36: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Text analysis: Read original passage 37: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Text analysis: Read original passage 38: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Text analysis: Read original passage 39: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Text analysis: Read original passage 40: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---
',
  null
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
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ADVANCED COMPREHENSION

**Q1.** Advanced comprehension: Read original passage 1: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Advanced comprehension: Read original passage 2: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Advanced comprehension: Read original passage 3: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Advanced comprehension: Read original passage 4: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Advanced comprehension: Read original passage 5: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on advanced comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: TRANSLATION

**Q6.** Translation: Read original passage 6: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Translation: Read original passage 7: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Translation: Read original passage 8: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Translation: Read original passage 9: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Translation: Read original passage 10: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: EXPRESSION ECRITE

**Q11.** Expression ecrite: Read original passage 11: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Expression ecrite: Read original passage 12: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Expression ecrite: Read original passage 13: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Expression ecrite: Read original passage 14: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Expression ecrite: Read original passage 15: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on expression ecrite.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: GRAMMAR

**Q16.** Grammar: Read original passage 16: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Grammar: Read original passage 17: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Grammar: Read original passage 18: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Grammar: Read original passage 19: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Grammar: Read original passage 20: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: ORAL PRODUCTION

**Q21.** Oral production: Read original passage 21: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Oral production: Read original passage 22: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Oral production: Read original passage 23: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Oral production: Read original passage 24: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Oral production: Read original passage 25: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on oral production.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: CULTURE

**Q26.** Culture: Read original passage 26: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Culture: Read original passage 27: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Culture: Read original passage 28: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Culture: Read original passage 29: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Culture: Read original passage 30: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: REGISTER

**Q31.** Register: Read original passage 31: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Register: Read original passage 32: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Register: Read original passage 33: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Register: Read original passage 34: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Register: Read original passage 35: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on register.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: TEXT ANALYSIS

**Q36.** Text analysis: Read original passage 36: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Text analysis: Read original passage 37: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Text analysis: Read original passage 38: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Text analysis: Read original passage 39: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Text analysis: Read original passage 40: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on text analysis.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---
',
  null
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
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DISSERTATION

**Q1.** Dissertation: A detailed examination question covering dissertation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COMMENTAIRE COMPOSÉ

**Q2.** Commentaire Composé: A detailed examination question covering commentaire composé concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: TRADUCTION

**Q3.** Traduction: A detailed examination question covering traduction concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: VERSION

**Q4.** Version: A detailed examination question covering version concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: THÈME

**Q5.** Thème: A detailed examination question covering thème concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVILISATION

**Q6.** Civilisation: A detailed examination question covering civilisation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: LITTÉRATURE

**Q7.** Littérature: A detailed examination question covering littérature concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: EXPRESSION ORALE

**Q8.** Expression Orale: A detailed examination question covering expression orale concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

',
  null
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
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DISSERTATION

**Q1.** Dissertation: A detailed examination question covering dissertation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COMMENTAIRE COMPOSÉ

**Q2.** Commentaire Composé: A detailed examination question covering commentaire composé concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: TRADUCTION

**Q3.** Traduction: A detailed examination question covering traduction concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: VERSION

**Q4.** Version: A detailed examination question covering version concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: THÈME

**Q5.** Thème: A detailed examination question covering thème concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVILISATION

**Q6.** Civilisation: A detailed examination question covering civilisation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: LITTÉRATURE

**Q7.** Littérature: A detailed examination question covering littérature concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: EXPRESSION ORALE

**Q8.** Expression Orale: A detailed examination question covering expression orale concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

',
  null
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
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DISSERTATION

**Q1.** Dissertation: A detailed examination question covering dissertation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COMMENTAIRE COMPOSÉ

**Q2.** Commentaire Composé: A detailed examination question covering commentaire composé concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: TRADUCTION

**Q3.** Traduction: A detailed examination question covering traduction concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: VERSION

**Q4.** Version: A detailed examination question covering version concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: THÈME

**Q5.** Thème: A detailed examination question covering thème concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVILISATION

**Q6.** Civilisation: A detailed examination question covering civilisation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: LITTÉRATURE

**Q7.** Littérature: A detailed examination question covering littérature concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: EXPRESSION ORALE

**Q8.** Expression Orale: A detailed examination question covering expression orale concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

',
  null
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
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DISSERTATION

**Q1.** Dissertation: A detailed examination question covering dissertation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COMMENTAIRE COMPOSÉ

**Q2.** Commentaire Composé: A detailed examination question covering commentaire composé concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: TRADUCTION

**Q3.** Traduction: A detailed examination question covering traduction concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: VERSION

**Q4.** Version: A detailed examination question covering version concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: THÈME

**Q5.** Thème: A detailed examination question covering thème concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVILISATION

**Q6.** Civilisation: A detailed examination question covering civilisation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: LITTÉRATURE

**Q7.** Littérature: A detailed examination question covering littérature concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: EXPRESSION ORALE

**Q8.** Expression Orale: A detailed examination question covering expression orale concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

',
  null
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
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Special Bilingual Education French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Special Bilingual Education French',
  'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8

## Structural Question Bank - Set 8

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Special Bilingual Education French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DISSERTATION

**Q1.** Dissertation: A detailed examination question covering dissertation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COMMENTAIRE COMPOSÉ

**Q2.** Commentaire Composé: A detailed examination question covering commentaire composé concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: TRADUCTION

**Q3.** Traduction: A detailed examination question covering traduction concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: VERSION

**Q4.** Version: A detailed examination question covering version concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: THÈME

**Q5.** Thème: A detailed examination question covering thème concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVILISATION

**Q6.** Civilisation: A detailed examination question covering civilisation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: LITTÉRATURE

**Q7.** Littérature: A detailed examination question covering littérature concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: EXPRESSION ORALE

**Q8.** Expression Orale: A detailed examination question covering expression orale concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

',
  null
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
  updated_at = now();

commit;