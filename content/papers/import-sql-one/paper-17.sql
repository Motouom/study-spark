begin;

with chosen_topic as (
  select id from public.topics where subject = 'Geography' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3' limit 1
)
insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by)
values (coalesce((select id from existing), gen_random_uuid()), (select id from chosen_topic), 'Geography', 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3', 'english', 'advanced', array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[], array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[], 'published', '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MAP WORK

**Q1.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q2.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q3.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q4.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q5.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 2: GEOMORPHOLOGY

**Q6.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q7.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q8.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q9.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q10.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 3: CLIMATOLOGY

**Q11.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q12.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q13.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q14.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q15.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 4: POPULATION

**Q16.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q17.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q18.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q19.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q20.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 5: SETTLEMENT

**Q21.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q22.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q23.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q24.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q25.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 6: AGRICULTURE

**Q26.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q27.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q28.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q29.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q30.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 7: INDUSTRY

**Q31.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q32.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q33.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q34.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q35.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 8: REGIONAL GEOGRAPHY OF CAMEROON

**Q36.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q37.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q38.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q39.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q40.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---
', null)
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, updated_at = now();

commit;
