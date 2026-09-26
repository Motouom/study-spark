begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: STATE AND NATION

**Q1.** State and nation: Community case 1 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** State and nation: Community case 2 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** State and nation: Community case 3 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** State and nation: Community case 4 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** State and nation: Community case 5 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: RIGHTS AND DUTIES

**Q6.** Rights and duties: Community case 6 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Rights and duties: Community case 7 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Rights and duties: Community case 8 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Rights and duties: Community case 9 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Rights and duties: Community case 10 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: DEMOCRACY

**Q11.** Democracy: Community case 11 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Democracy: Community case 12 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Democracy: Community case 13 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Democracy: Community case 14 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Democracy: Community case 15 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: ELECTIONS

**Q16.** Elections: Community case 16 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Elections: Community case 17 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Elections: Community case 18 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Elections: Community case 19 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Elections: Community case 20 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: CONSTITUTION

**Q21.** Constitution: Community case 21 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Constitution: Community case 22 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Constitution: Community case 23 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Constitution: Community case 24 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Constitution: Community case 25 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: PEACE AND CONFLICT

**Q26.** Peace and conflict: Community case 26 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Peace and conflict: Community case 27 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Peace and conflict: Community case 28 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Peace and conflict: Community case 29 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Peace and conflict: Community case 30 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: NATIONAL INTEGRATION

**Q31.** National integration: Community case 31 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** National integration: Community case 32 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** National integration: Community case 33 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** National integration: Community case 34 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** National integration: Community case 35 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: CIVIC RESPONSIBILITY

**Q36.** Civic responsibility: Community case 36 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Civic responsibility: Community case 37 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Civic responsibility: Community case 38 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Civic responsibility: Community case 39 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Civic responsibility: Community case 40 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: STATE AND NATION

**Q1.** State and nation: Community case 1 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** State and nation: Community case 2 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** State and nation: Community case 3 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** State and nation: Community case 4 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** State and nation: Community case 5 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: RIGHTS AND DUTIES

**Q6.** Rights and duties: Community case 6 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Rights and duties: Community case 7 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Rights and duties: Community case 8 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Rights and duties: Community case 9 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Rights and duties: Community case 10 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: DEMOCRACY

**Q11.** Democracy: Community case 11 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Democracy: Community case 12 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Democracy: Community case 13 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Democracy: Community case 14 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Democracy: Community case 15 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: ELECTIONS

**Q16.** Elections: Community case 16 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Elections: Community case 17 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Elections: Community case 18 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Elections: Community case 19 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Elections: Community case 20 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: CONSTITUTION

**Q21.** Constitution: Community case 21 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Constitution: Community case 22 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Constitution: Community case 23 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Constitution: Community case 24 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Constitution: Community case 25 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: PEACE AND CONFLICT

**Q26.** Peace and conflict: Community case 26 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Peace and conflict: Community case 27 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Peace and conflict: Community case 28 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Peace and conflict: Community case 29 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Peace and conflict: Community case 30 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: NATIONAL INTEGRATION

**Q31.** National integration: Community case 31 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** National integration: Community case 32 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** National integration: Community case 33 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** National integration: Community case 34 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** National integration: Community case 35 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: CIVIC RESPONSIBILITY

**Q36.** Civic responsibility: Community case 36 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Civic responsibility: Community case 37 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Civic responsibility: Community case 38 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Civic responsibility: Community case 39 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Civic responsibility: Community case 40 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level CITIZENSHIP EDUCATION P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: RIGHTS & DUTIES

**Q1.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: GOVERNMENT

**Q2.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: CONSTITUTION

**Q3.** Constitution: A detailed examination question covering constitution concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DEMOCRACY

**Q4.** Democracy: A detailed examination question covering democracy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HUMAN RIGHTS

**Q5.** Human Rights: A detailed examination question covering human rights concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVIC PARTICIPATION

**Q6.** Civic Participation: A detailed examination question covering civic participation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: NATIONAL IDENTITY

**Q7.** National Identity: A detailed examination question covering national identity concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: GLOBAL CITIZENSHIP

**Q8.** Global Citizenship: A detailed examination question covering global citizenship concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: RIGHTS & DUTIES

**Q9.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: GOVERNMENT

**Q10.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level CITIZENSHIP EDUCATION P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: RIGHTS & DUTIES

**Q1.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: GOVERNMENT

**Q2.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: CONSTITUTION

**Q3.** Constitution: A detailed examination question covering constitution concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DEMOCRACY

**Q4.** Democracy: A detailed examination question covering democracy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HUMAN RIGHTS

**Q5.** Human Rights: A detailed examination question covering human rights concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVIC PARTICIPATION

**Q6.** Civic Participation: A detailed examination question covering civic participation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: NATIONAL IDENTITY

**Q7.** National Identity: A detailed examination question covering national identity concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: GLOBAL CITIZENSHIP

**Q8.** Global Citizenship: A detailed examination question covering global citizenship concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: RIGHTS & DUTIES

**Q9.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: GOVERNMENT

**Q10.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level CITIZENSHIP EDUCATION P2 SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: RIGHTS & DUTIES

**Q1.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: GOVERNMENT

**Q2.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: CONSTITUTION

**Q3.** Constitution: A detailed examination question covering constitution concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DEMOCRACY

**Q4.** Democracy: A detailed examination question covering democracy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HUMAN RIGHTS

**Q5.** Human Rights: A detailed examination question covering human rights concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVIC PARTICIPATION

**Q6.** Civic Participation: A detailed examination question covering civic participation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: NATIONAL IDENTITY

**Q7.** National Identity: A detailed examination question covering national identity concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: GLOBAL CITIZENSHIP

**Q8.** Global Citizenship: A detailed examination question covering global citizenship concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: RIGHTS & DUTIES

**Q9.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: GOVERNMENT

**Q10.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level CITIZENSHIP EDUCATION P2 SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: RIGHTS & DUTIES

**Q1.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: GOVERNMENT

**Q2.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: CONSTITUTION

**Q3.** Constitution: A detailed examination question covering constitution concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DEMOCRACY

**Q4.** Democracy: A detailed examination question covering democracy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HUMAN RIGHTS

**Q5.** Human Rights: A detailed examination question covering human rights concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVIC PARTICIPATION

**Q6.** Civic Participation: A detailed examination question covering civic participation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: NATIONAL IDENTITY

**Q7.** National Identity: A detailed examination question covering national identity concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: GLOBAL CITIZENSHIP

**Q8.** Global Citizenship: A detailed examination question covering global citizenship concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: RIGHTS & DUTIES

**Q9.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: GOVERNMENT

**Q10.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level CITIZENSHIP EDUCATION P2 SET 8

## Structural Question Bank - Set 8

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: RIGHTS & DUTIES

**Q1.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: GOVERNMENT

**Q2.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: CONSTITUTION

**Q3.** Constitution: A detailed examination question covering constitution concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DEMOCRACY

**Q4.** Democracy: A detailed examination question covering democracy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HUMAN RIGHTS

**Q5.** Human Rights: A detailed examination question covering human rights concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: CIVIC PARTICIPATION

**Q6.** Civic Participation: A detailed examination question covering civic participation concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: NATIONAL IDENTITY

**Q7.** National Identity: A detailed examination question covering national identity concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: GLOBAL CITIZENSHIP

**Q8.** Global Citizenship: A detailed examination question covering global citizenship concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: RIGHTS & DUTIES

**Q9.** Rights & Duties: A detailed examination question covering rights & duties concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: GOVERNMENT

**Q10.** Government: A detailed examination question covering government concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Commerce'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The buying and selling of goods and services is called:

A. trade  
B. commerce  
C. industry  
D. transport  

---

**Q2.** The activities that facilitate trade are called:

A. aids to trade  
B. commerce  
C. production  
D. industry  

---

**Q3.** Trade carried out within a country is called:

A. home trade  
B. international trade  
C. foreign trade  
D. barter trade  

---

**Q4.** Trade carried out between countries is called:

A. foreign trade  
B. local trade  
C. retail trade  
D. home trade  

---

**Q5.** The person who buys goods in large quantities from producers is the:

A. wholesaler  
B. agent  
C. retailer  
D. consumer  

---

**Q6.** The person who sells goods in small quantities to consumers is the:

A. retailer  
B. manufacturer  
C. producer  
D. wholesaler  

---

**Q7.** Goods bought from other countries are called:

A. exports  
B. imports  
C. surplus  
D. deficit  

---

**Q8.** Goods sold to other countries are called:

A. imports  
B. exports  
C. deficit  
D. surplus  

---

**Q9.** The document that lists the goods sold and their prices is an:

A. receipt  
B. cheque  
C. invoice  
D. order  

---

**Q10.** The document issued to confirm payment is a:

A. invoice  
B. credit note  
C. debit note  
D. receipt  

---

**Q11.** The document issued when goods are returned by a buyer is a:

A. debit note  
B. receipt  
C. credit note  
D. invoice  

---

**Q12.** The document issued when goods are returned by a seller is a:

A. credit note  
B. receipt  
C. invoice  
D. debit note  

---

**Q13.** The document used in sea transport of goods is the:

A. invoice  
B. bill of lading  
C. air waybill  
D. receipt  

---

**Q14.** The document used in air transport of goods is the:

A. invoice  
B. air waybill  
C. receipt  
D. bill of lading  

---

**Q15.** The storage of goods until they are needed is called:

A. advertising  
B. transport  
C. warehousing  
D. insurance  

---

**Q16.** The movement of goods from one place to another is called:

A. advertising  
B. warehousing  
C. banking  
D. transport  

---

**Q17.** The promotion of goods to attract buyers is called:

A. warehousing  
B. insurance  
C. advertising  
D. transport  

---

**Q18.** A business owned by one person is a:

A. company  
B. cooperative  
C. partnership  
D. sole proprietorship  

---

**Q19.** A business owned by two to twenty people is a:

A. cooperative  
B. partnership  
C. sole proprietorship  
D. company  

---

**Q20.** A business with limited liability owned by shareholders is a:

A. cooperative  
B. limited liability company  
C. partnership  
D. sole proprietorship  

---

**Q21.** A business owned and run by its members is a:

A. company  
B. sole proprietorship  
C. cooperative society  
D. partnership  

---

**Q22.** A company whose shares are sold to the public is a:

A. partnership  
B. private limited company  
C. sole proprietorship  
D. public limited company  

---

**Q23.** A company whose shares are not sold to the public is a:

A. partnership  
B. sole proprietorship  
C. private limited company  
D. public limited company  

---

**Q24.** A large company operating in several countries is a:

A. cooperative  
B. partnership  
C. sole proprietorship  
D. multinational company  

---

**Q25.** Buying and selling goods over the internet is called:

A. e-commerce  
B. e-banking  
C. e-learning  
D. e-mail  

---

**Q26.** An organisation that protects the interests of workers is a:

A. trade union  
B. consumer association  
C. company  
D. cooperative  

---

**Q27.** The four Ps of the marketing mix are product, price, place, and:

A. promotion  
B. process  
C. people  
D. profit  

---

**Q28.** The place where buyers and sellers meet to exchange goods is a:

A. market  
B. bank  
C. factory  
D. warehouse  

---

**Q29.** The person who buys goods for personal use is a:

A. consumer  
B. producer  
C. retailer  
D. wholesaler  

---

**Q30.** The person who produces goods is a:

A. producer  
B. wholesaler  
C. retailer  
D. consumer  

---

**Q31.** Anything generally accepted as a medium of exchange is:

A. goods  
B. money  
C. services  
D. credit  

---

**Q32.** The bank that issues currency and controls the money supply is the:

A. commercial bank  
B. central bank  
C. merchant bank  
D. development bank  

---

**Q33.** The bank that accepts deposits and gives loans to the public is a:

A. central bank  
B. development bank  
C. commercial bank  
D. stock exchange  

---

**Q34.** The account used for frequent transactions is a:

A. savings account  
B. fixed deposit account  
C. loan account  
D. current account  

---

**Q35.** The account that earns interest and encourages saving is a:

A. current account  
B. loan account  
C. savings account  
D. overdraft account  

---

**Q36.** A written order to a bank to pay a stated sum is a:

A. receipt  
B. credit note  
C. invoice  
D. cheque  

---

**Q37.** A cheque that can only be paid into a bank account is a:

A. blank cheque  
B. crossed cheque  
C. open cheque  
D. post-dated cheque  

---

**Q38.** The person who writes a cheque is the:

A. payee  
B. drawer  
C. endorser  
D. drawee  

---

**Q39.** The bank on which a cheque is drawn is the:

A. payee  
B. drawer  
C. drawee  
D. endorser  

---

**Q40.** The person to whom a cheque is paid is the:

A. drawee  
B. drawer  
C. endorser  
D. payee  

---

**Q41.** The money charged for borrowing money is called:

A. commission  
B. dividend  
C. interest  
D. premium  

---

**Q42.** The simple interest on 100,000 FCFA at 5% for 2 years is:

A. 20,000 FCFA  
B. 2,000 FCFA  
C. 5,000 FCFA  
D. 10,000 FCFA  

---

**Q43.** The protection against financial loss is called:

A. warehousing  
B. insurance  
C. banking  
D. advertising  

---

**Q44.** The amount paid for an insurance policy is the:

A. dividend  
B. premium  
C. interest  
D. claim  

---

**Q45.** The document that contains the terms of an insurance contract is the:

A. receipt  
B. premium  
C. policy  
D. claim  

---

**Q46.** The payment made by an insurance company for a loss is a:

A. dividend  
B. premium  
C. policy  
D. claim  

---

**Q47.** The principle that the insured must not profit from a loss is:

A. contribution  
B. utmost good faith  
C. indemnity  
D. insurable interest  

---

**Q48.** The principle that the insured must have a financial interest in the subject matter is:

A. subrogation  
B. utmost good faith  
C. indemnity  
D. insurable interest  

---

**Q49.** Insurance against the death of the insured is:

A. life insurance  
B. fire insurance  
C. marine insurance  
D. motor insurance  

---

**Q50.** Insurance against damage to goods in transit by sea is:

A. marine insurance  
B. fire insurance  
C. motor insurance  
D. life insurance  

---

**Q51.** The exchange of information between people is called:

A. communication  
B. advertising  
C. transport  
D. banking  

---

**Q52.** The protection of consumers from unfair practices is called:

A. consumer protection  
B. marketing  
C. insurance  
D. advertising  

---

**Q53.** An organisation that protects the interests of consumers is a:

A. consumer association  
B. company  
C. trade union  
D. cooperative  

---

**Q54.** A financial institution that gives small loans to small businesses is a:

A. microfinance institution  
B. insurance company  
C. stock exchange  
D. central bank  

---

**Q55.** The market where shares are bought and sold is the:

A. commodity market  
B. stock exchange  
C. money market  
D. foreign exchange market  

---

**Q56.** The unit of ownership of a company is a:

A. bond  
B. share  
C. premium  
D. cheque  

---

**Q57.** A loan to a company or government that pays interest is a:

A. share  
B. cheque  
C. bond  
D. premium  

---

**Q58.** A general rise in the price level is called:

A. deflation  
B. recession  
C. depression  
D. inflation  

---

**Q59.** A plan of expected income and expenditure is a:

A. balance sheet  
B. receipt  
C. budget  
D. invoice  

---

**Q60.** The stock exchange in Cameroon is located in:

A. Yaoundé  
B. Garoua  
C. Buea  
D. Douala  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
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
  where subject = 'Commerce'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Trade carried out between countries is called:

A. foreign trade  
B. home trade  
C. local trade  
D. retail trade  

---

**Q2.** The person who buys goods in large quantities from producers is the:

A. wholesaler  
B. retailer  
C. agent  
D. consumer  

---

**Q3.** The person who sells goods in small quantities to consumers is the:

A. retailer  
B. producer  
C. wholesaler  
D. manufacturer  

---

**Q4.** Goods bought from other countries are called:

A. imports  
B. surplus  
C. deficit  
D. exports  

---

**Q5.** Goods sold to other countries are called:

A. exports  
B. deficit  
C. imports  
D. surplus  

---

**Q6.** The document that lists the goods sold and their prices is an:

A. invoice  
B. order  
C. cheque  
D. receipt  

---

**Q7.** The document issued to confirm payment is a:

A. invoice  
B. receipt  
C. credit note  
D. debit note  

---

**Q8.** The document issued when goods are returned by a buyer is a:

A. debit note  
B. credit note  
C. receipt  
D. invoice  

---

**Q9.** The document issued when goods are returned by a seller is a:

A. credit note  
B. invoice  
C. debit note  
D. receipt  

---

**Q10.** The document used in sea transport of goods is the:

A. air waybill  
B. invoice  
C. receipt  
D. bill of lading  

---

**Q11.** The document used in air transport of goods is the:

A. bill of lading  
B. receipt  
C. air waybill  
D. invoice  

---

**Q12.** The storage of goods until they are needed is called:

A. transport  
B. insurance  
C. advertising  
D. warehousing  

---

**Q13.** The movement of goods from one place to another is called:

A. advertising  
B. transport  
C. warehousing  
D. banking  

---

**Q14.** The promotion of goods to attract buyers is called:

A. warehousing  
B. advertising  
C. insurance  
D. transport  

---

**Q15.** A business owned by one person is a:

A. company  
B. partnership  
C. sole proprietorship  
D. cooperative  

---

**Q16.** A business owned by two to twenty people is a:

A. company  
B. sole proprietorship  
C. cooperative  
D. partnership  

---

**Q17.** A business with limited liability owned by shareholders is a:

A. partnership  
B. cooperative  
C. limited liability company  
D. sole proprietorship  

---

**Q18.** A business owned and run by its members is a:

A. partnership  
B. company  
C. sole proprietorship  
D. cooperative society  

---

**Q19.** A company whose shares are sold to the public is a:

A. partnership  
B. public limited company  
C. private limited company  
D. sole proprietorship  

---

**Q20.** A company whose shares are not sold to the public is a:

A. partnership  
B. private limited company  
C. sole proprietorship  
D. public limited company  

---

**Q21.** A large company operating in several countries is a:

A. cooperative  
B. sole proprietorship  
C. multinational company  
D. partnership  

---

**Q22.** Buying and selling goods over the internet is called:

A. e-mail  
B. e-banking  
C. e-learning  
D. e-commerce  

---

**Q23.** An organisation that protects the interests of workers is a:

A. company  
B. cooperative  
C. trade union  
D. consumer association  

---

**Q24.** The four Ps of the marketing mix are product, price, place, and:

A. profit  
B. process  
C. people  
D. promotion  

---

**Q25.** The place where buyers and sellers meet to exchange goods is a:

A. market  
B. warehouse  
C. bank  
D. factory  

---

**Q26.** The person who buys goods for personal use is a:

A. consumer  
B. retailer  
C. producer  
D. wholesaler  

---

**Q27.** The person who produces goods is a:

A. producer  
B. retailer  
C. consumer  
D. wholesaler  

---

**Q28.** The buying and selling of goods and services is called:

A. trade  
B. industry  
C. transport  
D. commerce  

---

**Q29.** The activities that facilitate trade are called:

A. aids to trade  
B. production  
C. commerce  
D. industry  

---

**Q30.** Trade carried out within a country is called:

A. home trade  
B. barter trade  
C. international trade  
D. foreign trade  

---

**Q31.** The account used for frequent transactions is a:

A. savings account  
B. current account  
C. fixed deposit account  
D. loan account  

---

**Q32.** The account that earns interest and encourages saving is a:

A. current account  
B. savings account  
C. loan account  
D. overdraft account  

---

**Q33.** A written order to a bank to pay a stated sum is a:

A. receipt  
B. invoice  
C. cheque  
D. credit note  

---

**Q34.** A cheque that can only be paid into a bank account is a:

A. open cheque  
B. blank cheque  
C. post-dated cheque  
D. crossed cheque  

---

**Q35.** The person who writes a cheque is the:

A. drawee  
B. endorser  
C. drawer  
D. payee  

---

**Q36.** The bank on which a cheque is drawn is the:

A. drawer  
B. endorser  
C. payee  
D. drawee  

---

**Q37.** The person to whom a cheque is paid is the:

A. drawee  
B. payee  
C. drawer  
D. endorser  

---

**Q38.** The money charged for borrowing money is called:

A. commission  
B. interest  
C. dividend  
D. premium  

---

**Q39.** The simple interest on 100,000 FCFA at 5% for 2 years is:

A. 20,000 FCFA  
B. 5,000 FCFA  
C. 10,000 FCFA  
D. 2,000 FCFA  

---

**Q40.** The protection against financial loss is called:

A. advertising  
B. banking  
C. warehousing  
D. insurance  

---

**Q41.** The amount paid for an insurance policy is the:

A. interest  
B. dividend  
C. premium  
D. claim  

---

**Q42.** The document that contains the terms of an insurance contract is the:

A. claim  
B. receipt  
C. premium  
D. policy  

---

**Q43.** The payment made by an insurance company for a loss is a:

A. dividend  
B. claim  
C. premium  
D. policy  

---

**Q44.** The principle that the insured must not profit from a loss is:

A. contribution  
B. indemnity  
C. utmost good faith  
D. insurable interest  

---

**Q45.** The principle that the insured must have a financial interest in the subject matter is:

A. subrogation  
B. indemnity  
C. insurable interest  
D. utmost good faith  

---

**Q46.** Insurance against the death of the insured is:

A. motor insurance  
B. fire insurance  
C. marine insurance  
D. life insurance  

---

**Q47.** Insurance against damage to goods in transit by sea is:

A. motor insurance  
B. life insurance  
C. marine insurance  
D. fire insurance  

---

**Q48.** The exchange of information between people is called:

A. banking  
B. advertising  
C. transport  
D. communication  

---

**Q49.** The protection of consumers from unfair practices is called:

A. consumer protection  
B. advertising  
C. marketing  
D. insurance  

---

**Q50.** An organisation that protects the interests of consumers is a:

A. consumer association  
B. trade union  
C. company  
D. cooperative  

---

**Q51.** A financial institution that gives small loans to small businesses is a:

A. microfinance institution  
B. stock exchange  
C. central bank  
D. insurance company  

---

**Q52.** The market where shares are bought and sold is the:

A. stock exchange  
B. money market  
C. foreign exchange market  
D. commodity market  

---

**Q53.** The unit of ownership of a company is a:

A. share  
B. premium  
C. bond  
D. cheque  

---

**Q54.** A loan to a company or government that pays interest is a:

A. bond  
B. premium  
C. cheque  
D. share  

---

**Q55.** A general rise in the price level is called:

A. deflation  
B. inflation  
C. recession  
D. depression  

---

**Q56.** A plan of expected income and expenditure is a:

A. balance sheet  
B. budget  
C. receipt  
D. invoice  

---

**Q57.** The stock exchange in Cameroon is located in:

A. Yaoundé  
B. Buea  
C. Douala  
D. Garoua  

---

**Q58.** Anything generally accepted as a medium of exchange is:

A. goods  
B. services  
C. credit  
D. money  

---

**Q59.** The bank that issues currency and controls the money supply is the:

A. commercial bank  
B. merchant bank  
C. central bank  
D. development bank  

---

**Q60.** The bank that accepts deposits and gives loans to the public is a:

A. central bank  
B. stock exchange  
C. development bank  
D. commercial bank  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
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
  where subject = 'Commerce'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Goods bought from other countries are called:

A. imports  
B. exports  
C. surplus  
D. deficit  

---

**Q2.** Goods sold to other countries are called:

A. exports  
B. imports  
C. deficit  
D. surplus  

---

**Q3.** The document that lists the goods sold and their prices is an:

A. invoice  
B. cheque  
C. receipt  
D. order  

---

**Q4.** The document issued to confirm payment is a:

A. receipt  
B. credit note  
C. debit note  
D. invoice  

---

**Q5.** The document issued when goods are returned by a buyer is a:

A. credit note  
B. receipt  
C. debit note  
D. invoice  

---

**Q6.** The document issued when goods are returned by a seller is a:

A. debit note  
B. receipt  
C. invoice  
D. credit note  

---

**Q7.** The document used in sea transport of goods is the:

A. air waybill  
B. bill of lading  
C. invoice  
D. receipt  

---

**Q8.** The document used in air transport of goods is the:

A. bill of lading  
B. air waybill  
C. receipt  
D. invoice  

---

**Q9.** The storage of goods until they are needed is called:

A. transport  
B. advertising  
C. warehousing  
D. insurance  

---

**Q10.** The movement of goods from one place to another is called:

A. warehousing  
B. advertising  
C. banking  
D. transport  

---

**Q11.** The promotion of goods to attract buyers is called:

A. transport  
B. insurance  
C. advertising  
D. warehousing  

---

**Q12.** A business owned by one person is a:

A. partnership  
B. cooperative  
C. company  
D. sole proprietorship  

---

**Q13.** A business owned by two to twenty people is a:

A. company  
B. partnership  
C. sole proprietorship  
D. cooperative  

---

**Q14.** A business with limited liability owned by shareholders is a:

A. partnership  
B. limited liability company  
C. cooperative  
D. sole proprietorship  

---

**Q15.** A business owned and run by its members is a:

A. partnership  
B. sole proprietorship  
C. cooperative society  
D. company  

---

**Q16.** A company whose shares are sold to the public is a:

A. sole proprietorship  
B. private limited company  
C. partnership  
D. public limited company  

---

**Q17.** A company whose shares are not sold to the public is a:

A. sole proprietorship  
B. partnership  
C. private limited company  
D. public limited company  

---

**Q18.** A large company operating in several countries is a:

A. partnership  
B. cooperative  
C. sole proprietorship  
D. multinational company  

---

**Q19.** Buying and selling goods over the internet is called:

A. e-mail  
B. e-commerce  
C. e-banking  
D. e-learning  

---

**Q20.** An organisation that protects the interests of workers is a:

A. company  
B. trade union  
C. cooperative  
D. consumer association  

---

**Q21.** The four Ps of the marketing mix are product, price, place, and:

A. profit  
B. people  
C. promotion  
D. process  

---

**Q22.** The place where buyers and sellers meet to exchange goods is a:

A. factory  
B. warehouse  
C. bank  
D. market  

---

**Q23.** The person who buys goods for personal use is a:

A. producer  
B. wholesaler  
C. consumer  
D. retailer  

---

**Q24.** The person who produces goods is a:

A. wholesaler  
B. retailer  
C. consumer  
D. producer  

---

**Q25.** The buying and selling of goods and services is called:

A. trade  
B. commerce  
C. industry  
D. transport  

---

**Q26.** The activities that facilitate trade are called:

A. aids to trade  
B. commerce  
C. production  
D. industry  

---

**Q27.** Trade carried out within a country is called:

A. home trade  
B. international trade  
C. foreign trade  
D. barter trade  

---

**Q28.** Trade carried out between countries is called:

A. foreign trade  
B. local trade  
C. retail trade  
D. home trade  

---

**Q29.** The person who buys goods in large quantities from producers is the:

A. wholesaler  
B. agent  
C. retailer  
D. consumer  

---

**Q30.** The person who sells goods in small quantities to consumers is the:

A. retailer  
B. manufacturer  
C. producer  
D. wholesaler  

---

**Q31.** A cheque that can only be paid into a bank account is a:

A. open cheque  
B. crossed cheque  
C. blank cheque  
D. post-dated cheque  

---

**Q32.** The person who writes a cheque is the:

A. drawee  
B. drawer  
C. endorser  
D. payee  

---

**Q33.** The bank on which a cheque is drawn is the:

A. drawer  
B. payee  
C. drawee  
D. endorser  

---

**Q34.** The person to whom a cheque is paid is the:

A. drawer  
B. drawee  
C. endorser  
D. payee  

---

**Q35.** The money charged for borrowing money is called:

A. premium  
B. dividend  
C. interest  
D. commission  

---

**Q36.** The simple interest on 100,000 FCFA at 5% for 2 years is:

A. 5,000 FCFA  
B. 2,000 FCFA  
C. 20,000 FCFA  
D. 10,000 FCFA  

---

**Q37.** The protection against financial loss is called:

A. advertising  
B. insurance  
C. banking  
D. warehousing  

---

**Q38.** The amount paid for an insurance policy is the:

A. interest  
B. premium  
C. dividend  
D. claim  

---

**Q39.** The document that contains the terms of an insurance contract is the:

A. claim  
B. premium  
C. policy  
D. receipt  

---

**Q40.** The payment made by an insurance company for a loss is a:

A. policy  
B. premium  
C. dividend  
D. claim  

---

**Q41.** The principle that the insured must not profit from a loss is:

A. utmost good faith  
B. contribution  
C. indemnity  
D. insurable interest  

---

**Q42.** The principle that the insured must have a financial interest in the subject matter is:

A. utmost good faith  
B. subrogation  
C. indemnity  
D. insurable interest  

---

**Q43.** Insurance against the death of the insured is:

A. motor insurance  
B. life insurance  
C. fire insurance  
D. marine insurance  

---

**Q44.** Insurance against damage to goods in transit by sea is:

A. motor insurance  
B. marine insurance  
C. life insurance  
D. fire insurance  

---

**Q45.** The exchange of information between people is called:

A. banking  
B. transport  
C. communication  
D. advertising  

---

**Q46.** The protection of consumers from unfair practices is called:

A. insurance  
B. advertising  
C. marketing  
D. consumer protection  

---

**Q47.** An organisation that protects the interests of consumers is a:

A. company  
B. cooperative  
C. consumer association  
D. trade union  

---

**Q48.** A financial institution that gives small loans to small businesses is a:

A. insurance company  
B. stock exchange  
C. central bank  
D. microfinance institution  

---

**Q49.** The market where shares are bought and sold is the:

A. stock exchange  
B. commodity market  
C. money market  
D. foreign exchange market  

---

**Q50.** The unit of ownership of a company is a:

A. share  
B. bond  
C. premium  
D. cheque  

---

**Q51.** A loan to a company or government that pays interest is a:

A. bond  
B. cheque  
C. share  
D. premium  

---

**Q52.** A general rise in the price level is called:

A. inflation  
B. recession  
C. depression  
D. deflation  

---

**Q53.** A plan of expected income and expenditure is a:

A. budget  
B. receipt  
C. balance sheet  
D. invoice  

---

**Q54.** The stock exchange in Cameroon is located in:

A. Douala  
B. Garoua  
C. Buea  
D. Yaoundé  

---

**Q55.** Anything generally accepted as a medium of exchange is:

A. goods  
B. money  
C. services  
D. credit  

---

**Q56.** The bank that issues currency and controls the money supply is the:

A. commercial bank  
B. central bank  
C. merchant bank  
D. development bank  

---

**Q57.** The bank that accepts deposits and gives loans to the public is a:

A. central bank  
B. development bank  
C. commercial bank  
D. stock exchange  

---

**Q58.** The account used for frequent transactions is a:

A. savings account  
B. fixed deposit account  
C. loan account  
D. current account  

---

**Q59.** The account that earns interest and encourages saving is a:

A. current account  
B. loan account  
C. savings account  
D. overdraft account  

---

**Q60.** A written order to a bank to pay a stated sum is a:

A. receipt  
B. credit note  
C. invoice  
D. cheque  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
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

commit;