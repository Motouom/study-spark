begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Geography'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 2

## Structural Question Bank - Set 2

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

![Climograph](/paper-diagrams/geography-climograph.svg)

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
  where subject = 'Geography'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3

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

![Contour map extract](/paper-diagrams/geography-contours.svg)

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
  where subject = 'Geography'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4

## Structural Question Bank — Physical geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PHYSICAL GEOGRAPHY

**Q1.** (a) Define the term "weathering". *(2 marks)*

(b) Distinguish between physical and chemical weathering. *(4 marks)*

(c) Describe two processes of physical weathering and two of chemical weathering. *(6 marks)*

---

**Q2.** (a) What is a rock? *(2 marks)*

(b) Describe the three main types of rocks and how each is formed. *(6 marks)*

(c) Give one example of each type of rock. *(3 marks)*

---

**Q3.** (a) Define the terms "igneous", "sedimentary", and "metamorphic" rocks. *(3 marks)*

(b) Explain how limestone is formed. *(4 marks)*

(c) State two uses of limestone. *(2 marks)*

---

**Q4.** (a) What is the water cycle? *(2 marks)*

(b) Describe the processes of evaporation, condensation, and precipitation. *(6 marks)*

(c) Explain the importance of the water cycle. *(4 marks)*

---

**Q5.** (a) Define the term "climate". *(2 marks)*

(b) Distinguish between climate and weather. *(4 marks)*

(c) State three factors that affect the climate of a place. *(3 marks)*

---

**Q6.** (a) What is a river? *(2 marks)*

(b) Describe the three stages of a river. *(6 marks)*

(c) Explain how a waterfall is formed. *(4 marks)*

---

**Q7.** (a) Define the terms "erosion", "transportation", and "deposition". *(3 marks)*

(b) Describe three ways a river transports its load. *(6 marks)*

(c) Explain how a delta is formed. *(4 marks)*

---

**Q8.** (a) What is a drainage basin? *(2 marks)*

(b) Describe the features of a drainage basin. *(4 marks)*

(c) Explain the difference between a tributary and a distributary. *(4 marks)*

---

**Q9.** (a) Define the term "coast". *(2 marks)*

(b) Describe two landforms created by coastal erosion. *(4 marks)*

(c) Explain how a beach is formed. *(4 marks)*

---

**Q10.** (a) What is a wave? *(2 marks)*

(b) Distinguish between constructive and destructive waves. *(4 marks)*

(c) Explain how a spit is formed. *(4 marks)*

---

**Q11.** (a) Define the term "soil". *(2 marks)*

(b) Describe the layers of a soil profile. *(4 marks)*

(c) State three factors that affect soil formation. *(3 marks)*

---

**Q12.** (a) What is soil erosion? *(2 marks)*

(b) State three causes of soil erosion. *(3 marks)*

(c) Describe two methods of preventing soil erosion. *(4 marks)*

---

**Q13.** (a) Define the term "vegetation". *(2 marks)*

(b) Describe the characteristics of tropical rainforest vegetation. *(4 marks)*

(c) Explain how climate affects vegetation. *(4 marks)*

---

**Q14.** (a) What is a natural hazard? *(2 marks)*

(b) State three examples of natural hazards. *(3 marks)*

(c) Describe the effects of one natural hazard on people and the environment. *(5 marks)*

---

**Q15.** (a) Define the terms "earthquake" and "volcano". *(4 marks)

(b) Explain how an earthquake occurs. *(4 marks)*

(c) State two effects of earthquakes. *(2 marks)*

---

**Q16.** (a) What is a tropical storm? *(2 marks)*

(b) Describe the conditions needed for a tropical storm to form. *(4 marks)*

(c) Explain the effects of a tropical storm on coastal areas. *(4 marks)*

---

**Q17.** (a) Define the term "ecosystem". *(2 marks)*

(b) Describe the components of an ecosystem. *(4 marks)*

(c) Explain how a change in one component affects the whole ecosystem. *(4 marks)*

---

**Q18.** (a) What is deforestation? *(2 marks)*

(b) State three causes of deforestation. *(3 marks)*

(c) Explain the effects of deforestation on the environment. *(5 marks)*

---

**Q19.** (a) Define the term "desertification". *(2 marks)*

(b) State three causes of desertification. *(3 marks)*

(c) Describe two ways of reducing desertification. *(4 marks)*

---

**Q20.** (a) What is climate change? *(2 marks)*

(b) State three causes of climate change. *(3 marks)*

(c) Explain two effects of climate change on Cameroon. *(5 marks)*
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
  where subject = 'Geography'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5

## Structural Question Bank — Human and Cameroon geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: HUMAN AND CAMEROON GEOGRAPHY

**Q1.** (a) Define the term "population". *(2 marks)*

(b) State three factors that affect population distribution. *(3 marks)*

(c) Explain the difference between population density and population distribution. *(4 marks)*

---

**Q2.** (a) What is population growth? *(2 marks)*

(b) State three causes of rapid population growth. *(3 marks)*

(c) Explain two effects of rapid population growth on a country. *(5 marks)*

---

**Q3.** (a) Define the terms "birth rate" and "death rate". *(4 marks)*

(b) Explain how birth rate and death rate affect population change. *(4 marks)*

(c) State two ways of controlling population growth. *(2 marks)*

---

**Q4.** (a) What is migration? *(2 marks)*

(b) Distinguish between internal and international migration. *(4 marks)*

(c) State three causes of rural-urban migration. *(3 marks)*

---

**Q5.** (a) Define the term "settlement". *(2 marks)*

(b) Distinguish between rural and urban settlements. *(4 marks)*

(c) State three functions of urban settlements. *(3 marks)*

---

**Q6.** (a) What is urbanisation? *(2 marks)*

(b) State three causes of urbanisation. *(3 marks)*

(c) Explain two problems caused by rapid urbanisation. *(5 marks)*

---

**Q7.** (a) Define the term "agriculture". *(2 marks)*

(b) Distinguish between subsistence and commercial farming. *(4 marks)*

(c) State three factors that affect agriculture. *(3 marks)*

---

**Q8.** (a) What is plantation agriculture? *(2 marks)*

(b) Describe the characteristics of plantation agriculture. *(4 marks)*

(c) State two advantages and two disadvantages of plantation agriculture. *(4 marks)*

---

**Q9.** (a) Define the terms "crop rotation" and "mixed farming". *(4 marks)*

(b) Explain the importance of agriculture to the economy of Cameroon. *(4 marks)*

(c) State two problems facing agriculture in Cameroon. *(2 marks)*

---

**Q10.** (a) What is industry? *(2 marks)*

(b) Distinguish between primary, secondary, and tertiary industries. *(6 marks)*

(c) Give two examples of each type of industry. *(3 marks)*

---

**Q11.** (a) Define the term "manufacturing". *(2 marks)*

(b) State three factors that influence the location of an industry. *(3 marks)*

(c) Explain why industries are often located near ports. *(4 marks)*

---

**Q12.** (a) What is transport? *(2 marks)*

(b) State three modes of transport. *(3 marks)*

(c) Explain the importance of transport to economic development. *(4 marks)*

---

**Q13.** (a) Define the term "trade". *(2 marks)*

(b) Distinguish between internal and international trade. *(4 marks)*

(c) State three reasons why countries trade with each other. *(3 marks)*

---

**Q14.** (a) What is a map? *(2 marks)*

(b) State three features of a good map. *(3 marks)*

(c) Explain how to measure distance on a map using a scale. *(4 marks)*

---

**Q15.** (a) Define the terms "contour line" and "relief". *(4 marks)*

(b) Explain how contour lines show the shape of the land. *(4 marks)*

(c) Describe how you would identify a hill and a valley on a map. *(4 marks)*

---

**Q16.** (a) What is a compass bearing? *(2 marks)*

(b) State the eight points of the compass. *(4 marks)*

(c) Explain how to find the bearing of one place from another on a map. *(4 marks)*

---

**Q17.** (a) Name the ten regions of Cameroon. *(5 marks)*

(b) State the capital city of Cameroon. *(1 mark)*

(c) Describe the main economic activity of two regions of Cameroon. *(4 marks)*

---

**Q18.** (a) What is the relief of Cameroon? *(2 marks)*

(b) Describe the main physical features of Cameroon. *(4 marks)*

(c) Explain how the relief of Cameroon affects agriculture. *(4 marks)*

---

**Q19.** (a) Define the term "tourism". *(2 marks)*

(b) State three tourist attractions in Cameroon. *(3 marks)*

(c) Explain two benefits of tourism to Cameroon. *(4 marks)*

---

**Q20.** (a) What is sustainable development? *(2 marks)*

(b) State three ways Cameroon can achieve sustainable development. *(3 marks)*

(c) Explain the importance of conserving natural resources. *(4 marks)*
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
  where subject = 'Geography'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6

## Structural Question Bank — Physical geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PHYSICAL GEOGRAPHY

**Q1.** (a) Define the term "weathering". *(2 marks)*

(b) Distinguish between physical and chemical weathering. *(4 marks)*

(c) Describe two processes of physical weathering and two of chemical weathering. *(6 marks)*

---

**Q2.** (a) What is a rock? *(2 marks)*

(b) Describe the three main types of rocks and how each is formed. *(6 marks)*

(c) Give one example of each type of rock. *(3 marks)*

---

**Q3.** (a) Define the terms "igneous", "sedimentary", and "metamorphic" rocks. *(3 marks)*

(b) Explain how limestone is formed. *(4 marks)*

(c) State two uses of limestone. *(2 marks)*

---

**Q4.** (a) What is the water cycle? *(2 marks)*

(b) Describe the processes of evaporation, condensation, and precipitation. *(6 marks)*

(c) Explain the importance of the water cycle. *(4 marks)*

---

**Q5.** (a) Define the term "climate". *(2 marks)*

(b) Distinguish between climate and weather. *(4 marks)*

(c) State three factors that affect the climate of a place. *(3 marks)*

---

**Q6.** (a) What is a river? *(2 marks)*

(b) Describe the three stages of a river. *(6 marks)*

(c) Explain how a waterfall is formed. *(4 marks)*

---

**Q7.** (a) Define the terms "erosion", "transportation", and "deposition". *(3 marks)*

(b) Describe three ways a river transports its load. *(6 marks)*

(c) Explain how a delta is formed. *(4 marks)*

---

**Q8.** (a) What is a drainage basin? *(2 marks)*

(b) Describe the features of a drainage basin. *(4 marks)*

(c) Explain the difference between a tributary and a distributary. *(4 marks)*

---

**Q9.** (a) Define the term "coast". *(2 marks)*

(b) Describe two landforms created by coastal erosion. *(4 marks)*

(c) Explain how a beach is formed. *(4 marks)*

---

**Q10.** (a) What is a wave? *(2 marks)*

(b) Distinguish between constructive and destructive waves. *(4 marks)*

(c) Explain how a spit is formed. *(4 marks)*

---

**Q11.** (a) Define the term "soil". *(2 marks)*

(b) Describe the layers of a soil profile. *(4 marks)*

(c) State three factors that affect soil formation. *(3 marks)*

---

**Q12.** (a) What is soil erosion? *(2 marks)*

(b) State three causes of soil erosion. *(3 marks)*

(c) Describe two methods of preventing soil erosion. *(4 marks)*

---

**Q13.** (a) Define the term "vegetation". *(2 marks)*

(b) Describe the characteristics of tropical rainforest vegetation. *(4 marks)*

(c) Explain how climate affects vegetation. *(4 marks)*

---

**Q14.** (a) What is a natural hazard? *(2 marks)*

(b) State three examples of natural hazards. *(3 marks)*

(c) Describe the effects of one natural hazard on people and the environment. *(5 marks)*

---

**Q15.** (a) Define the terms "earthquake" and "volcano". *(4 marks)

(b) Explain how an earthquake occurs. *(4 marks)*

(c) State two effects of earthquakes. *(2 marks)*

---

**Q16.** (a) What is a tropical storm? *(2 marks)*

(b) Describe the conditions needed for a tropical storm to form. *(4 marks)*

(c) Explain the effects of a tropical storm on coastal areas. *(4 marks)*

---

**Q17.** (a) Define the term "ecosystem". *(2 marks)*

(b) Describe the components of an ecosystem. *(4 marks)*

(c) Explain how a change in one component affects the whole ecosystem. *(4 marks)*

---

**Q18.** (a) What is deforestation? *(2 marks)*

(b) State three causes of deforestation. *(3 marks)*

(c) Explain the effects of deforestation on the environment. *(5 marks)*

---

**Q19.** (a) Define the term "desertification". *(2 marks)*

(b) State three causes of desertification. *(3 marks)*

(c) Describe two ways of reducing desertification. *(4 marks)*

---

**Q20.** (a) What is climate change? *(2 marks)*

(b) State three causes of climate change. *(3 marks)*

(c) Explain two effects of climate change on Cameroon. *(5 marks)*
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
  where subject = 'Geography'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7

## Structural Question Bank — Human and Cameroon geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: HUMAN AND CAMEROON GEOGRAPHY

**Q1.** (a) Define the term "population". *(2 marks)*

(b) State three factors that affect population distribution. *(3 marks)*

(c) Explain the difference between population density and population distribution. *(4 marks)*

---

**Q2.** (a) What is population growth? *(2 marks)*

(b) State three causes of rapid population growth. *(3 marks)*

(c) Explain two effects of rapid population growth on a country. *(5 marks)*

---

**Q3.** (a) Define the terms "birth rate" and "death rate". *(4 marks)*

(b) Explain how birth rate and death rate affect population change. *(4 marks)*

(c) State two ways of controlling population growth. *(2 marks)*

---

**Q4.** (a) What is migration? *(2 marks)*

(b) Distinguish between internal and international migration. *(4 marks)*

(c) State three causes of rural-urban migration. *(3 marks)*

---

**Q5.** (a) Define the term "settlement". *(2 marks)*

(b) Distinguish between rural and urban settlements. *(4 marks)*

(c) State three functions of urban settlements. *(3 marks)*

---

**Q6.** (a) What is urbanisation? *(2 marks)*

(b) State three causes of urbanisation. *(3 marks)*

(c) Explain two problems caused by rapid urbanisation. *(5 marks)*

---

**Q7.** (a) Define the term "agriculture". *(2 marks)*

(b) Distinguish between subsistence and commercial farming. *(4 marks)*

(c) State three factors that affect agriculture. *(3 marks)*

---

**Q8.** (a) What is plantation agriculture? *(2 marks)*

(b) Describe the characteristics of plantation agriculture. *(4 marks)*

(c) State two advantages and two disadvantages of plantation agriculture. *(4 marks)*

---

**Q9.** (a) Define the terms "crop rotation" and "mixed farming". *(4 marks)*

(b) Explain the importance of agriculture to the economy of Cameroon. *(4 marks)*

(c) State two problems facing agriculture in Cameroon. *(2 marks)*

---

**Q10.** (a) What is industry? *(2 marks)*

(b) Distinguish between primary, secondary, and tertiary industries. *(6 marks)*

(c) Give two examples of each type of industry. *(3 marks)*

---

**Q11.** (a) Define the term "manufacturing". *(2 marks)*

(b) State three factors that influence the location of an industry. *(3 marks)*

(c) Explain why industries are often located near ports. *(4 marks)*

---

**Q12.** (a) What is transport? *(2 marks)*

(b) State three modes of transport. *(3 marks)*

(c) Explain the importance of transport to economic development. *(4 marks)*

---

**Q13.** (a) Define the term "trade". *(2 marks)*

(b) Distinguish between internal and international trade. *(4 marks)*

(c) State three reasons why countries trade with each other. *(3 marks)*

---

**Q14.** (a) What is a map? *(2 marks)*

(b) State three features of a good map. *(3 marks)*

(c) Explain how to measure distance on a map using a scale. *(4 marks)*

---

**Q15.** (a) Define the terms "contour line" and "relief". *(4 marks)*

(b) Explain how contour lines show the shape of the land. *(4 marks)*

(c) Describe how you would identify a hill and a valley on a map. *(4 marks)*

---

**Q16.** (a) What is a compass bearing? *(2 marks)*

(b) State the eight points of the compass. *(4 marks)*

(c) Explain how to find the bearing of one place from another on a map. *(4 marks)*

---

**Q17.** (a) Name the ten regions of Cameroon. *(5 marks)*

(b) State the capital city of Cameroon. *(1 mark)*

(c) Describe the main economic activity of two regions of Cameroon. *(4 marks)*

---

**Q18.** (a) What is the relief of Cameroon? *(2 marks)*

(b) Describe the main physical features of Cameroon. *(4 marks)*

(c) Explain how the relief of Cameroon affects agriculture. *(4 marks)*

---

**Q19.** (a) Define the term "tourism". *(2 marks)*

(b) State three tourist attractions in Cameroon. *(3 marks)*

(c) Explain two benefits of tourism to Cameroon. *(4 marks)*

---

**Q20.** (a) What is sustainable development? *(2 marks)*

(b) State three ways Cameroon can achieve sustainable development. *(3 marks)*

(c) Explain the importance of conserving natural resources. *(4 marks)*
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
  where subject = 'Geography'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8

## Structural Question Bank — Physical geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PHYSICAL GEOGRAPHY

**Q1.** (a) Define the term "weathering". *(2 marks)*

(b) Distinguish between physical and chemical weathering. *(4 marks)*

(c) Describe two processes of physical weathering and two of chemical weathering. *(6 marks)*

---

**Q2.** (a) What is a rock? *(2 marks)*

(b) Describe the three main types of rocks and how each is formed. *(6 marks)*

(c) Give one example of each type of rock. *(3 marks)*

---

**Q3.** (a) Define the terms "igneous", "sedimentary", and "metamorphic" rocks. *(3 marks)*

(b) Explain how limestone is formed. *(4 marks)*

(c) State two uses of limestone. *(2 marks)*

---

**Q4.** (a) What is the water cycle? *(2 marks)*

(b) Describe the processes of evaporation, condensation, and precipitation. *(6 marks)*

(c) Explain the importance of the water cycle. *(4 marks)*

---

**Q5.** (a) Define the term "climate". *(2 marks)*

(b) Distinguish between climate and weather. *(4 marks)*

(c) State three factors that affect the climate of a place. *(3 marks)*

---

**Q6.** (a) What is a river? *(2 marks)*

(b) Describe the three stages of a river. *(6 marks)*

(c) Explain how a waterfall is formed. *(4 marks)*

---

**Q7.** (a) Define the terms "erosion", "transportation", and "deposition". *(3 marks)*

(b) Describe three ways a river transports its load. *(6 marks)*

(c) Explain how a delta is formed. *(4 marks)*

---

**Q8.** (a) What is a drainage basin? *(2 marks)*

(b) Describe the features of a drainage basin. *(4 marks)*

(c) Explain the difference between a tributary and a distributary. *(4 marks)*

---

**Q9.** (a) Define the term "coast". *(2 marks)*

(b) Describe two landforms created by coastal erosion. *(4 marks)*

(c) Explain how a beach is formed. *(4 marks)*

---

**Q10.** (a) What is a wave? *(2 marks)*

(b) Distinguish between constructive and destructive waves. *(4 marks)*

(c) Explain how a spit is formed. *(4 marks)*

---

**Q11.** (a) Define the term "soil". *(2 marks)*

(b) Describe the layers of a soil profile. *(4 marks)*

(c) State three factors that affect soil formation. *(3 marks)*

---

**Q12.** (a) What is soil erosion? *(2 marks)*

(b) State three causes of soil erosion. *(3 marks)*

(c) Describe two methods of preventing soil erosion. *(4 marks)*

---

**Q13.** (a) Define the term "vegetation". *(2 marks)*

(b) Describe the characteristics of tropical rainforest vegetation. *(4 marks)*

(c) Explain how climate affects vegetation. *(4 marks)*

---

**Q14.** (a) What is a natural hazard? *(2 marks)*

(b) State three examples of natural hazards. *(3 marks)*

(c) Describe the effects of one natural hazard on people and the environment. *(5 marks)*

---

**Q15.** (a) Define the terms "earthquake" and "volcano". *(4 marks)

(b) Explain how an earthquake occurs. *(4 marks)*

(c) State two effects of earthquakes. *(2 marks)*

---

**Q16.** (a) What is a tropical storm? *(2 marks)*

(b) Describe the conditions needed for a tropical storm to form. *(4 marks)*

(c) Explain the effects of a tropical storm on coastal areas. *(4 marks)*

---

**Q17.** (a) Define the term "ecosystem". *(2 marks)*

(b) Describe the components of an ecosystem. *(4 marks)*

(c) Explain how a change in one component affects the whole ecosystem. *(4 marks)*

---

**Q18.** (a) What is deforestation? *(2 marks)*

(b) State three causes of deforestation. *(3 marks)*

(c) Explain the effects of deforestation on the environment. *(5 marks)*

---

**Q19.** (a) Define the term "desertification". *(2 marks)*

(b) State three causes of desertification. *(3 marks)*

(c) Describe two ways of reducing desertification. *(4 marks)*

---

**Q20.** (a) What is climate change? *(2 marks)*

(b) State three causes of climate change. *(3 marks)*

(c) Explain two effects of climate change on Cameroon. *(5 marks)*
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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geology',
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level GEOLOGY P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Mineralogy: Sample question 1 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Petrology: Sample question 2 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Structural Geology: Sample question 3 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Palaeontology: Sample question 4 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Stratigraphy: Sample question 5 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Economic Geology: Sample question 6 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Geomorphology: Sample question 7 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Environmental Geology: Sample question 8 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Mineralogy: Sample question 9 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Petrology: Sample question 10 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Structural Geology: Sample question 11 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Palaeontology: Sample question 12 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Stratigraphy: Sample question 13 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Economic Geology: Sample question 14 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Geomorphology: Sample question 15 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Environmental Geology: Sample question 16 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Mineralogy: Sample question 17 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Petrology: Sample question 18 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Structural Geology: Sample question 19 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Palaeontology: Sample question 20 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Stratigraphy: Sample question 21 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Economic Geology: Sample question 22 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Geomorphology: Sample question 23 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Environmental Geology: Sample question 24 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Mineralogy: Sample question 25 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Petrology: Sample question 26 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Structural Geology: Sample question 27 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Palaeontology: Sample question 28 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Stratigraphy: Sample question 29 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Economic Geology: Sample question 30 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Geomorphology: Sample question 31 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Environmental Geology: Sample question 32 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Mineralogy: Sample question 33 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Petrology: Sample question 34 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Structural Geology: Sample question 35 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Palaeontology: Sample question 36 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Stratigraphy: Sample question 37 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Economic Geology: Sample question 38 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Geomorphology: Sample question 39 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Environmental Geology: Sample question 40 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Mineralogy: Sample question 41 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Petrology: Sample question 42 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Structural Geology: Sample question 43 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Palaeontology: Sample question 44 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Stratigraphy: Sample question 45 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Economic Geology: Sample question 46 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Geomorphology: Sample question 47 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Environmental Geology: Sample question 48 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Mineralogy: Sample question 49 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Petrology: Sample question 50 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Structural Geology: Sample question 51 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Palaeontology: Sample question 52 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Stratigraphy: Sample question 53 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Economic Geology: Sample question 54 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Geomorphology: Sample question 55 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Environmental Geology: Sample question 56 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Mineralogy: Sample question 57 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Petrology: Sample question 58 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Structural Geology: Sample question 59 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Palaeontology: Sample question 60 for Geology Advanced Level Paper 1.

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geology',
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level GEOLOGY P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Mineralogy: Sample question 1 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Petrology: Sample question 2 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Structural Geology: Sample question 3 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Palaeontology: Sample question 4 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Stratigraphy: Sample question 5 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Economic Geology: Sample question 6 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Geomorphology: Sample question 7 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Environmental Geology: Sample question 8 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Mineralogy: Sample question 9 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Petrology: Sample question 10 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Structural Geology: Sample question 11 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Palaeontology: Sample question 12 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Stratigraphy: Sample question 13 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Economic Geology: Sample question 14 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Geomorphology: Sample question 15 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Environmental Geology: Sample question 16 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Mineralogy: Sample question 17 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Petrology: Sample question 18 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Structural Geology: Sample question 19 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Palaeontology: Sample question 20 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Stratigraphy: Sample question 21 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Economic Geology: Sample question 22 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Geomorphology: Sample question 23 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Environmental Geology: Sample question 24 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Mineralogy: Sample question 25 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Petrology: Sample question 26 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Structural Geology: Sample question 27 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Palaeontology: Sample question 28 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Stratigraphy: Sample question 29 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Economic Geology: Sample question 30 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Geomorphology: Sample question 31 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Environmental Geology: Sample question 32 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Mineralogy: Sample question 33 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Petrology: Sample question 34 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Structural Geology: Sample question 35 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Palaeontology: Sample question 36 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Stratigraphy: Sample question 37 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Economic Geology: Sample question 38 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Geomorphology: Sample question 39 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Environmental Geology: Sample question 40 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Mineralogy: Sample question 41 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Petrology: Sample question 42 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Structural Geology: Sample question 43 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Palaeontology: Sample question 44 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Stratigraphy: Sample question 45 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Economic Geology: Sample question 46 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Geomorphology: Sample question 47 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Environmental Geology: Sample question 48 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Mineralogy: Sample question 49 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Petrology: Sample question 50 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Structural Geology: Sample question 51 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Palaeontology: Sample question 52 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Stratigraphy: Sample question 53 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Economic Geology: Sample question 54 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Geomorphology: Sample question 55 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Environmental Geology: Sample question 56 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Mineralogy: Sample question 57 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Petrology: Sample question 58 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Structural Geology: Sample question 59 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Palaeontology: Sample question 60 for Geology Advanced Level Paper 1.

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geology',
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level GEOLOGY P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Mineralogy: Sample question 1 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Petrology: Sample question 2 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Structural Geology: Sample question 3 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Palaeontology: Sample question 4 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Stratigraphy: Sample question 5 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Economic Geology: Sample question 6 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Geomorphology: Sample question 7 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Environmental Geology: Sample question 8 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Mineralogy: Sample question 9 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Petrology: Sample question 10 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Structural Geology: Sample question 11 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Palaeontology: Sample question 12 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Stratigraphy: Sample question 13 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Economic Geology: Sample question 14 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Geomorphology: Sample question 15 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Environmental Geology: Sample question 16 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Mineralogy: Sample question 17 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Petrology: Sample question 18 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Structural Geology: Sample question 19 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Palaeontology: Sample question 20 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Stratigraphy: Sample question 21 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Economic Geology: Sample question 22 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Geomorphology: Sample question 23 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Environmental Geology: Sample question 24 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Mineralogy: Sample question 25 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Petrology: Sample question 26 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Structural Geology: Sample question 27 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Palaeontology: Sample question 28 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Stratigraphy: Sample question 29 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Economic Geology: Sample question 30 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Geomorphology: Sample question 31 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Environmental Geology: Sample question 32 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Mineralogy: Sample question 33 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Petrology: Sample question 34 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Structural Geology: Sample question 35 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Palaeontology: Sample question 36 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Stratigraphy: Sample question 37 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Economic Geology: Sample question 38 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Geomorphology: Sample question 39 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Environmental Geology: Sample question 40 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Mineralogy: Sample question 41 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Petrology: Sample question 42 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Structural Geology: Sample question 43 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Palaeontology: Sample question 44 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Stratigraphy: Sample question 45 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Economic Geology: Sample question 46 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Geomorphology: Sample question 47 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Environmental Geology: Sample question 48 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Mineralogy: Sample question 49 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Petrology: Sample question 50 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Structural Geology: Sample question 51 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Palaeontology: Sample question 52 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Stratigraphy: Sample question 53 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Economic Geology: Sample question 54 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Geomorphology: Sample question 55 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Environmental Geology: Sample question 56 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Mineralogy: Sample question 57 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Petrology: Sample question 58 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Structural Geology: Sample question 59 for Geology Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Palaeontology: Sample question 60 for Geology Advanced Level Paper 1.

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

commit;