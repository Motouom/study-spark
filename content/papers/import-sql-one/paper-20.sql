begin;

with chosen_topic as (
  select id from public.topics where subject = 'History' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3' limit 1
)
insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by)
values (coalesce((select id from existing), gen_random_uuid()), (select id from chosen_topic), 'History', 'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3', 'english', 'advanced', array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[], array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[], 'published', '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CAMEROON HISTORY

**Q1.** Cameroon history: Source 1 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Cameroon history: Source 2 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Cameroon history: Source 3 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Cameroon history: Source 4 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Cameroon history: Source 5 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: WEST AFRICA

**Q6.** West Africa: Source 6 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** West Africa: Source 7 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** West Africa: Source 8 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** West Africa: Source 9 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** West Africa: Source 10 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: EUROPEAN IMPERIALISM

**Q11.** European imperialism: Source 11 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** European imperialism: Source 12 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** European imperialism: Source 13 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** European imperialism: Source 14 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** European imperialism: Source 15 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: WORLD WARS

**Q16.** World wars: Source 16 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** World wars: Source 17 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** World wars: Source 18 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** World wars: Source 19 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** World wars: Source 20 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: DECOLONISATION

**Q21.** Decolonisation: Source 21 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Decolonisation: Source 22 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Decolonisation: Source 23 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Decolonisation: Source 24 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Decolonisation: Source 25 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: COLD WAR

**Q26.** Cold War: Source 26 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Cold War: Source 27 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Cold War: Source 28 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Cold War: Source 29 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Cold War: Source 30 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: NATIONALISM

**Q31.** Nationalism: Source 31 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Nationalism: Source 32 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Nationalism: Source 33 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Nationalism: Source 34 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Nationalism: Source 35 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: INTERNATIONAL ORGANISATIONS

**Q36.** International organisations: Source 36 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** International organisations: Source 37 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** International organisations: Source 38 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** International organisations: Source 39 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** International organisations: Source 40 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---
', null)
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, updated_at = now();

commit;
