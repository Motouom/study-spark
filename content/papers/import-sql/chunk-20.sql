begin;

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
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: EARTH STRUCTURE

**Q1.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

![Geological cross-section](/paper-diagrams/geology-section.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MINERALS

**Q6.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ROCKS

**Q11.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: PLATE TECTONICS

**Q16.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: WEATHERING

**Q21.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: STRATIGRAPHY

**Q26.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ECONOMIC GEOLOGY

**Q31.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: GEOLOGICAL MAPS

**Q36.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: EARTH STRUCTURE

**Q1.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

![Geological cross-section](/paper-diagrams/geology-section.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MINERALS

**Q6.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ROCKS

**Q11.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: PLATE TECTONICS

**Q16.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: WEATHERING

**Q21.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: STRATIGRAPHY

**Q26.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ECONOMIC GEOLOGY

**Q31.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: GEOLOGICAL MAPS

**Q36.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: EARTH STRUCTURE

**Q1.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Earth structure: A field study on earth structure describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MINERALS

**Q6.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

![Geological cross-section](/paper-diagrams/geology-section.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Minerals: A field study on minerals describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ROCKS

**Q11.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Rocks: A field study on rocks describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: PLATE TECTONICS

**Q16.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Plate tectonics: A field study on plate tectonics describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: WEATHERING

**Q21.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Weathering: A field study on weathering describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: STRATIGRAPHY

**Q26.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Stratigraphy: A field study on stratigraphy describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ECONOMIC GEOLOGY

**Q31.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Economic geology: A field study on economic geology describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: GEOLOGICAL MAPS

**Q36.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Geological maps: A field study on geological maps describes rock layers A, B, and C, a fault, and map evidence from a Cameroon locality. Interpret the geological history and economic importance.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 4'
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
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 4',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level GEOLOGY P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MINERALOGY

**Q1.** Mineralogy: A detailed examination question covering mineralogy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: PETROLOGY

**Q2.** Petrology: A detailed examination question covering petrology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: STRUCTURAL GEOLOGY

**Q3.** Structural Geology: A detailed examination question covering structural geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: PALAEONTOLOGY

**Q4.** Palaeontology: A detailed examination question covering palaeontology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: STRATIGRAPHY

**Q5.** Stratigraphy: A detailed examination question covering stratigraphy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ECONOMIC GEOLOGY

**Q6.** Economic Geology: A detailed examination question covering economic geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: GEOMORPHOLOGY

**Q7.** Geomorphology: A detailed examination question covering geomorphology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENVIRONMENTAL GEOLOGY

**Q8.** Environmental Geology: A detailed examination question covering environmental geology concepts and applications.

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 5'
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
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 5',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level GEOLOGY P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MINERALOGY

**Q1.** Mineralogy: A detailed examination question covering mineralogy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: PETROLOGY

**Q2.** Petrology: A detailed examination question covering petrology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: STRUCTURAL GEOLOGY

**Q3.** Structural Geology: A detailed examination question covering structural geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: PALAEONTOLOGY

**Q4.** Palaeontology: A detailed examination question covering palaeontology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: STRATIGRAPHY

**Q5.** Stratigraphy: A detailed examination question covering stratigraphy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ECONOMIC GEOLOGY

**Q6.** Economic Geology: A detailed examination question covering economic geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: GEOMORPHOLOGY

**Q7.** Geomorphology: A detailed examination question covering geomorphology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENVIRONMENTAL GEOLOGY

**Q8.** Environmental Geology: A detailed examination question covering environmental geology concepts and applications.

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 6'
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
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 6',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level GEOLOGY P2 SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MINERALOGY

**Q1.** Mineralogy: A detailed examination question covering mineralogy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: PETROLOGY

**Q2.** Petrology: A detailed examination question covering petrology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: STRUCTURAL GEOLOGY

**Q3.** Structural Geology: A detailed examination question covering structural geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: PALAEONTOLOGY

**Q4.** Palaeontology: A detailed examination question covering palaeontology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: STRATIGRAPHY

**Q5.** Stratigraphy: A detailed examination question covering stratigraphy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ECONOMIC GEOLOGY

**Q6.** Economic Geology: A detailed examination question covering economic geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: GEOMORPHOLOGY

**Q7.** Geomorphology: A detailed examination question covering geomorphology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENVIRONMENTAL GEOLOGY

**Q8.** Environmental Geology: A detailed examination question covering environmental geology concepts and applications.

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 7'
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
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 7',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level GEOLOGY P2 SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MINERALOGY

**Q1.** Mineralogy: A detailed examination question covering mineralogy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: PETROLOGY

**Q2.** Petrology: A detailed examination question covering petrology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: STRUCTURAL GEOLOGY

**Q3.** Structural Geology: A detailed examination question covering structural geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: PALAEONTOLOGY

**Q4.** Palaeontology: A detailed examination question covering palaeontology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: STRATIGRAPHY

**Q5.** Stratigraphy: A detailed examination question covering stratigraphy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ECONOMIC GEOLOGY

**Q6.** Economic Geology: A detailed examination question covering economic geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: GEOMORPHOLOGY

**Q7.** Geomorphology: A detailed examination question covering geomorphology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENVIRONMENTAL GEOLOGY

**Q8.** Environmental Geology: A detailed examination question covering environmental geology concepts and applications.

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
  where subject = 'Geology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 8'
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
  'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 8',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level GEOLOGY P2 SET 8

## Structural Question Bank - Set 8

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science, a_arts
**Subject:** Geology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MINERALOGY

**Q1.** Mineralogy: A detailed examination question covering mineralogy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: PETROLOGY

**Q2.** Petrology: A detailed examination question covering petrology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: STRUCTURAL GEOLOGY

**Q3.** Structural Geology: A detailed examination question covering structural geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: PALAEONTOLOGY

**Q4.** Palaeontology: A detailed examination question covering palaeontology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: STRATIGRAPHY

**Q5.** Stratigraphy: A detailed examination question covering stratigraphy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ECONOMIC GEOLOGY

**Q6.** Economic Geology: A detailed examination question covering economic geology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: GEOMORPHOLOGY

**Q7.** Geomorphology: A detailed examination question covering geomorphology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENVIRONMENTAL GEOLOGY

**Q8.** Environmental Geology: A detailed examination question covering environmental geology concepts and applications.

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
  where subject = 'History'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'History',
  'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** History

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The study of past events is called:

A. history  
B. geography  
C. economics  
D. sociology  

---

**Q2.** Written records of the past are called:

A. documents  
B. artefacts  
C. legends  
D. monuments  

---

**Q3.** Objects made by people in the past are called:

A. artefacts  
B. archives  
C. documents  
D. manuscripts  

---

**Q4.** The traditional ruler of the Bamenda people is the:

A. Fon  
B. Lamido  
C. Chief  
D. Sultan  

---

**Q5.** The traditional ruler of the Bamoun people is the:

A. Sultan  
B. Emir  
C. Fon  
D. Lamido  

---

**Q6.** The forced removal of Africans to the Americas was called the:

A. slave trade  
B. mandate  
C. partition  
D. scramble  

---

**Q7.** The slave trade was abolished in the British Empire in:

A. 1884  
B. 1807  
C. 1914  
D. 1945  

---

**Q8.** The conference that divided Africa among European powers was the:

A. Paris Conference  
B. Berlin Conference  
C. London Conference  
D. Geneva Conference  

---

**Q9.** The Berlin Conference took place in:

A. 1914-1918  
B. 1939-1945  
C. 1884-1885  
D. 1960-1961  

---

**Q10.** The European power that first colonised Cameroon was:

A. Britain  
B. France  
C. Belgium  
D. Germany  

---

**Q11.** Germany lost Cameroon after the:

A. Second World War  
B. Scramble for Africa  
C. First World War  
D. Berlin Conference  

---

**Q12.** After the First World War, Cameroon was divided between:

A. Britain and Germany  
B. Germany and Italy  
C. France and Belgium  
D. Britain and France  

---

**Q13.** The system of government used by the British in Cameroon was:

A. assimilation  
B. indirect rule  
C. direct rule  
D. apartheid  

---

**Q14.** The system of government used by the French in Cameroon was:

A. apartheid  
B. assimilation  
C. federation  
D. indirect rule  

---

**Q15.** The desire of a people to govern themselves is called:

A. imperialism  
B. colonialism  
C. nationalism  
D. federalism  

---

**Q16.** The political party that led the struggle for independence in French Cameroon was the:

A. CPNC  
B. KNDP  
C. CNO  
D. UPC  

---

**Q17.** French Cameroon gained independence in:

A. 1945  
B. 1972  
C. 1960  
D. 1961  

---

**Q18.** The vote held in British Southern Cameroons in 1961 was called the:

A. election  
B. census  
C. referendum  
D. plebiscite  

---

**Q19.** The reunification of Cameroon took place in:

A. 1982  
B. 1961  
C. 1960  
D. 1972  

---

**Q20.** The conference that discussed the reunification of Cameroon was held at:

A. Buea  
B. Foumban  
C. Douala  
D. Yaoundé  

---

**Q21.** Cameroon became a federation in:

A. 1984  
B. 1960  
C. 1961  
D. 1972  

---

**Q22.** The federal system in Cameroon was replaced by a unitary system in:

A. 1990  
B. 1961  
C. 1982  
D. 1972  

---

**Q23.** The first president of Cameroon was:

A. Ruben Um Nyobé  
B. John Ngu Foncha  
C. Ahmadou Ahidjo  
D. Paul Biya  

---

**Q24.** The current president of Cameroon is:

A. Emmanuel Nganou  
B. John Ngu Foncha  
C. Ahmadou Ahidjo  
D. Paul Biya  

---

**Q25.** Multiparty politics was reintroduced in Cameroon in:

A. 1990  
B. 1972  
C. 1961  
D. 1982  

---

**Q26.** The organisation formed in 1963 to unite African states was the:

A. OAU  
B. AU  
C. ECOWAS  
D. UN  

---

**Q27.** The OAU was replaced by the African Union in:

A. 2002  
B. 1963  
C. 1990  
D. 2010  

---

**Q28.** The system of racial segregation in South Africa was called:

A. apartheid  
B. indirect rule  
C. colonialism  
D. assimilation  

---

**Q29.** The leader who fought against apartheid in South Africa was:

A. Nelson Mandela  
B. Julius Nyerere  
C. Kwame Nkrumah  
D. Jomo Kenyatta  

---

**Q30.** The first president of independent Ghana was:

A. Kwame Nkrumah  
B. Julius Nyerere  
C. Jomo Kenyatta  
D. Nelson Mandela  

---

**Q31.** The First World War began in:

A. 1918  
B. 1914  
C. 1939  
D. 1900  

---

**Q32.** The First World War ended in:

A. 1914  
B. 1918  
C. 1920  
D. 1945  

---

**Q33.** The assassination that triggered the First World War was that of:

A. Adolf Hitler  
B. Napoleon  
C. Archduke Franz Ferdinand  
D. Kaiser Wilhelm  

---

**Q34.** The alliance of Germany, Austria-Hungary, and Italy was called the:

A. Triple Entente  
B. Axis  
C. Allies  
D. Triple Alliance  

---

**Q35.** The alliance of Britain, France, and Russia was called the:

A. Triple Alliance  
B. Central Powers  
C. Triple Entente  
D. Axis  

---

**Q36.** The treaty that ended the First World War was the:

A. Treaty of Paris  
B. Treaty of Rome  
C. Treaty of Berlin  
D. Treaty of Versailles  

---

**Q37.** The international organisation formed after the First World War was the:

A. African Union  
B. League of Nations  
C. United Nations  
D. European Union  

---

**Q38.** The Second World War began in:

A. 1945  
B. 1939  
C. 1929  
D. 1914  

---

**Q39.** The Second World War ended in:

A. 1918  
B. 1939  
C. 1945  
D. 1950  

---

**Q40.** The leader of Nazi Germany was:

A. Joseph Stalin  
B. Benito Mussolini  
C. Winston Churchill  
D. Adolf Hitler  

---

**Q41.** The leader of Fascist Italy was:

A. Joseph Stalin  
B. Francisco Franco  
C. Benito Mussolini  
D. Adolf Hitler  

---

**Q42.** The systematic murder of six million Jews by the Nazis was called the:

A. Pogrom  
B. Inquisition  
C. Genocide  
D. Holocaust  

---

**Q43.** The state of tension between the USA and the USSR after 1945 was called the:

A. Trade War  
B. Cold War  
C. World War  
D. Proxy War  

---

**Q44.** The wall that divided Berlin was built in:

A. 1950  
B. 1961  
C. 1989  
D. 1945  

---

**Q45.** The Berlin Wall fell in:

A. 1991  
B. 1961  
C. 1989  
D. 1945  

---

**Q46.** The international organisation formed in 1945 to maintain peace was the:

A. European Union  
B. League of Nations  
C. African Union  
D. United Nations  

---

**Q47.** The organ of the UN responsible for maintaining peace is the:

A. ICJ  
B. Secretariat  
C. Security Council  
D. General Assembly  

---

**Q48.** The crisis of 1962 that brought the world close to nuclear war was the:

A. Korean Crisis  
B. Suez Crisis  
C. Berlin Crisis  
D. Cuban Missile Crisis  

---

**Q49.** The war fought between North and South Korea from 1950 to 1953 was a:

A. proxy war  
B. world war  
C. civil war  
D. trade war  

---

**Q50.** The process of granting independence to colonies is called:

A. decolonisation  
B. colonisation  
C. globalisation  
D. imperialism  

---

**Q51.** The economic union of European states is called the:

A. European Union  
B. United Nations  
C. African Union  
D. Commonwealth  

---

**Q52.** The organisation that regulates international trade is the:

A. WTO  
B. UN  
C. AU  
D. IMF  

---

**Q53.** The organisation that provides financial assistance to countries is the:

A. IMF  
B. AU  
C. WTO  
D. UN  

---

**Q54.** The increasing interconnection of the world''s economies is called:

A. globalisation  
B. protectionism  
C. nationalism  
D. colonisation  

---

**Q55.** The use of violence for political aims is called:

A. nationalism  
B. terrorism  
C. imperialism  
D. diplomacy  

---

**Q56.** The association of former British colonies is called the:

A. European Union  
B. Commonwealth  
C. United Nations  
D. African Union  

---

**Q57.** The declaration that protects the rights of all people was the:

A. Treaty of Versailles  
B. Berlin Act  
C. Universal Declaration of Human Rights  
D. Atlantic Charter  

---

**Q58.** The Universal Declaration of Human Rights was adopted in:

A. 1918  
B. 1939  
C. 1960  
D. 1948  

---

**Q59.** The leader of the Soviet Union during the Cuban Missile Crisis was:

A. Joseph Stalin  
B. Mikhail Gorbachev  
C. Nikita Khrushchev  
D. Vladimir Lenin  

---

**Q60.** The leader of the United States during the Cuban Missile Crisis was:

A. Franklin Roosevelt  
B. Richard Nixon  
C. Harry Truman  
D. John F. Kennedy  

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
  where subject = 'History'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'History',
  'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** History

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The traditional ruler of the Bamenda people is the:

A. Fon  
B. Sultan  
C. Lamido  
D. Chief  

---

**Q2.** The traditional ruler of the Bamoun people is the:

A. Sultan  
B. Fon  
C. Emir  
D. Lamido  

---

**Q3.** The forced removal of Africans to the Americas was called the:

A. slave trade  
B. partition  
C. scramble  
D. mandate  

---

**Q4.** The slave trade was abolished in the British Empire in:

A. 1807  
B. 1914  
C. 1945  
D. 1884  

---

**Q5.** The conference that divided Africa among European powers was the:

A. Berlin Conference  
B. London Conference  
C. Paris Conference  
D. Geneva Conference  

---

**Q6.** The Berlin Conference took place in:

A. 1884-1885  
B. 1960-1961  
C. 1939-1945  
D. 1914-1918  

---

**Q7.** The European power that first colonised Cameroon was:

A. Britain  
B. Germany  
C. France  
D. Belgium  

---

**Q8.** Germany lost Cameroon after the:

A. Second World War  
B. First World War  
C. Scramble for Africa  
D. Berlin Conference  

---

**Q9.** After the First World War, Cameroon was divided between:

A. Britain and Germany  
B. France and Belgium  
C. Britain and France  
D. Germany and Italy  

---

**Q10.** The system of government used by the British in Cameroon was:

A. direct rule  
B. assimilation  
C. apartheid  
D. indirect rule  

---

**Q11.** The system of government used by the French in Cameroon was:

A. indirect rule  
B. federation  
C. assimilation  
D. apartheid  

---

**Q12.** The desire of a people to govern themselves is called:

A. colonialism  
B. federalism  
C. imperialism  
D. nationalism  

---

**Q13.** The political party that led the struggle for independence in French Cameroon was the:

A. CPNC  
B. UPC  
C. KNDP  
D. CNO  

---

**Q14.** French Cameroon gained independence in:

A. 1945  
B. 1960  
C. 1972  
D. 1961  

---

**Q15.** The vote held in British Southern Cameroons in 1961 was called the:

A. election  
B. referendum  
C. plebiscite  
D. census  

---

**Q16.** The reunification of Cameroon took place in:

A. 1972  
B. 1960  
C. 1982  
D. 1961  

---

**Q17.** The conference that discussed the reunification of Cameroon was held at:

A. Douala  
B. Buea  
C. Foumban  
D. Yaoundé  

---

**Q18.** Cameroon became a federation in:

A. 1972  
B. 1984  
C. 1960  
D. 1961  

---

**Q19.** The federal system in Cameroon was replaced by a unitary system in:

A. 1990  
B. 1972  
C. 1961  
D. 1982  

---

**Q20.** The first president of Cameroon was:

A. Ruben Um Nyobé  
B. Ahmadou Ahidjo  
C. John Ngu Foncha  
D. Paul Biya  

---

**Q21.** The current president of Cameroon is:

A. Emmanuel Nganou  
B. Ahmadou Ahidjo  
C. Paul Biya  
D. John Ngu Foncha  

---

**Q22.** Multiparty politics was reintroduced in Cameroon in:

A. 1982  
B. 1972  
C. 1961  
D. 1990  

---

**Q23.** The organisation formed in 1963 to unite African states was the:

A. ECOWAS  
B. UN  
C. OAU  
D. AU  

---

**Q24.** The OAU was replaced by the African Union in:

A. 2010  
B. 1963  
C. 1990  
D. 2002  

---

**Q25.** The system of racial segregation in South Africa was called:

A. apartheid  
B. assimilation  
C. indirect rule  
D. colonialism  

---

**Q26.** The leader who fought against apartheid in South Africa was:

A. Nelson Mandela  
B. Kwame Nkrumah  
C. Julius Nyerere  
D. Jomo Kenyatta  

---

**Q27.** The first president of independent Ghana was:

A. Kwame Nkrumah  
B. Jomo Kenyatta  
C. Nelson Mandela  
D. Julius Nyerere  

---

**Q28.** The study of past events is called:

A. history  
B. economics  
C. sociology  
D. geography  

---

**Q29.** Written records of the past are called:

A. documents  
B. legends  
C. artefacts  
D. monuments  

---

**Q30.** Objects made by people in the past are called:

A. artefacts  
B. manuscripts  
C. archives  
D. documents  

---

**Q31.** The alliance of Germany, Austria-Hungary, and Italy was called the:

A. Triple Entente  
B. Triple Alliance  
C. Axis  
D. Allies  

---

**Q32.** The alliance of Britain, France, and Russia was called the:

A. Triple Alliance  
B. Triple Entente  
C. Central Powers  
D. Axis  

---

**Q33.** The treaty that ended the First World War was the:

A. Treaty of Paris  
B. Treaty of Berlin  
C. Treaty of Versailles  
D. Treaty of Rome  

---

**Q34.** The international organisation formed after the First World War was the:

A. United Nations  
B. African Union  
C. European Union  
D. League of Nations  

---

**Q35.** The Second World War began in:

A. 1914  
B. 1929  
C. 1939  
D. 1945  

---

**Q36.** The Second World War ended in:

A. 1939  
B. 1950  
C. 1918  
D. 1945  

---

**Q37.** The leader of Nazi Germany was:

A. Joseph Stalin  
B. Adolf Hitler  
C. Benito Mussolini  
D. Winston Churchill  

---

**Q38.** The leader of Fascist Italy was:

A. Joseph Stalin  
B. Benito Mussolini  
C. Francisco Franco  
D. Adolf Hitler  

---

**Q39.** The systematic murder of six million Jews by the Nazis was called the:

A. Pogrom  
B. Genocide  
C. Holocaust  
D. Inquisition  

---

**Q40.** The state of tension between the USA and the USSR after 1945 was called the:

A. Proxy War  
B. World War  
C. Trade War  
D. Cold War  

---

**Q41.** The wall that divided Berlin was built in:

A. 1989  
B. 1950  
C. 1961  
D. 1945  

---

**Q42.** The Berlin Wall fell in:

A. 1945  
B. 1991  
C. 1961  
D. 1989  

---

**Q43.** The international organisation formed in 1945 to maintain peace was the:

A. European Union  
B. United Nations  
C. League of Nations  
D. African Union  

---

**Q44.** The organ of the UN responsible for maintaining peace is the:

A. ICJ  
B. Security Council  
C. Secretariat  
D. General Assembly  

---

**Q45.** The crisis of 1962 that brought the world close to nuclear war was the:

A. Korean Crisis  
B. Berlin Crisis  
C. Cuban Missile Crisis  
D. Suez Crisis  

---

**Q46.** The war fought between North and South Korea from 1950 to 1953 was a:

A. trade war  
B. world war  
C. civil war  
D. proxy war  

---

**Q47.** The process of granting independence to colonies is called:

A. globalisation  
B. imperialism  
C. decolonisation  
D. colonisation  

---

**Q48.** The economic union of European states is called the:

A. Commonwealth  
B. United Nations  
C. African Union  
D. European Union  

---

**Q49.** The organisation that regulates international trade is the:

A. WTO  
B. IMF  
C. UN  
D. AU  

---

**Q50.** The organisation that provides financial assistance to countries is the:

A. IMF  
B. WTO  
C. AU  
D. UN  

---

**Q51.** The increasing interconnection of the world''s economies is called:

A. globalisation  
B. nationalism  
C. colonisation  
D. protectionism  

---

**Q52.** The use of violence for political aims is called:

A. terrorism  
B. imperialism  
C. diplomacy  
D. nationalism  

---

**Q53.** The association of former British colonies is called the:

A. Commonwealth  
B. United Nations  
C. European Union  
D. African Union  

---

**Q54.** The declaration that protects the rights of all people was the:

A. Universal Declaration of Human Rights  
B. Atlantic Charter  
C. Berlin Act  
D. Treaty of Versailles  

---

**Q55.** The Universal Declaration of Human Rights was adopted in:

A. 1918  
B. 1948  
C. 1939  
D. 1960  

---

**Q56.** The leader of the Soviet Union during the Cuban Missile Crisis was:

A. Joseph Stalin  
B. Nikita Khrushchev  
C. Mikhail Gorbachev  
D. Vladimir Lenin  

---

**Q57.** The leader of the United States during the Cuban Missile Crisis was:

A. Franklin Roosevelt  
B. Harry Truman  
C. John F. Kennedy  
D. Richard Nixon  

---

**Q58.** The First World War began in:

A. 1918  
B. 1939  
C. 1900  
D. 1914  

---

**Q59.** The First World War ended in:

A. 1914  
B. 1920  
C. 1918  
D. 1945  

---

**Q60.** The assassination that triggered the First World War was that of:

A. Adolf Hitler  
B. Kaiser Wilhelm  
C. Napoleon  
D. Archduke Franz Ferdinand  

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