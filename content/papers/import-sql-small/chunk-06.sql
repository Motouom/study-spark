begin;

with chosen_topic as (
  select id from public.topics where subject = 'Geology' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3' limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geology', 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3', 'english', 'advanced',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published', '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3

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
', null
) on conflict (id) do update set
  topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language,
  level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status,
  markdown_content = excluded.markdown_content, updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Economics' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1' limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics', 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1', 'english', 'advanced',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published', '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: BASIC CONCEPTS

**Q1.** Basic concepts: Market case 1 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Basic concepts: Market case 2 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Basic concepts: Market case 3 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Basic concepts: Market case 4 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Basic concepts: Market case 5 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: DEMAND AND SUPPLY

**Q6.** Demand and supply: Market case 6 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Demand and supply: Market case 7 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Demand and supply: Market case 8 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Demand and supply: Market case 9 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Demand and supply: Market case 10 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: ELASTICITY

**Q11.** Elasticity: Market case 11 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Elasticity: Market case 12 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Elasticity: Market case 13 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Elasticity: Market case 14 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Elasticity: Market case 15 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: PRODUCTION AND COSTS

**Q16.** Production and costs: Market case 16 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Production and costs: Market case 17 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Production and costs: Market case 18 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Production and costs: Market case 19 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Production and costs: Market case 20 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: MARKET STRUCTURES

**Q21.** Market structures: Market case 21 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Market structures: Market case 22 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Market structures: Market case 23 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Market structures: Market case 24 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Market structures: Market case 25 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: NATIONAL INCOME

**Q26.** National income: Market case 26 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** National income: Market case 27 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** National income: Market case 28 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** National income: Market case 29 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** National income: Market case 30 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: MONEY AND BANKING

**Q31.** Money and banking: Market case 31 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Money and banking: Market case 32 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Money and banking: Market case 33 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Money and banking: Market case 34 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Money and banking: Market case 35 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: INTERNATIONAL TRADE

**Q36.** International trade: Market case 36 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** International trade: Market case 37 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** International trade: Market case 38 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** International trade: Market case 39 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** International trade: Market case 40 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---
', null
) on conflict (id) do update set
  topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language,
  level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status,
  markdown_content = excluded.markdown_content, updated_at = now();

commit;