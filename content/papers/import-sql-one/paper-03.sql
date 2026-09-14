begin;

with chosen_topic as (
  select id from public.topics where subject = 'Biology' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1' limit 1
)
insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by)
values (coalesce((select id from existing), gen_random_uuid()), (select id from chosen_topic), 'Biology', 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1', 'english', 'advanced', array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[], array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[], 'published', '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CELL BIOLOGY

**Q1.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: BIOCHEMISTRY

**Q6.** Biochemistry: Experiment 6 studies biochemistry by changing concentration 0.7 mol dm-3, temperature 26 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Biochemistry: Experiment 7 studies biochemistry by changing concentration 0.8 mol dm-3, temperature 27 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Biochemistry: Experiment 8 studies biochemistry by changing concentration 0.9 mol dm-3, temperature 28 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Biochemistry: Experiment 9 studies biochemistry by changing concentration 1 mol dm-3, temperature 29 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Biochemistry: Experiment 10 studies biochemistry by changing concentration 1.1 mol dm-3, temperature 30 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: GENETICS

**Q11.** Genetics: A biological investigation on genetics compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Genetics: A biological investigation on genetics compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Genetics: A biological investigation on genetics compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Genetics: A biological investigation on genetics compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Genetics: A biological investigation on genetics compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: ECOLOGY

**Q16.** Ecology: A biological investigation on ecology compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Ecology: A biological investigation on ecology compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Ecology: A biological investigation on ecology compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Ecology: A biological investigation on ecology compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Ecology: A biological investigation on ecology compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: PLANT PHYSIOLOGY

**Q21.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: ANIMAL PHYSIOLOGY

**Q26.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: EVOLUTION

**Q31.** Evolution: A biological investigation on evolution compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Evolution: A biological investigation on evolution compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Evolution: A biological investigation on evolution compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Evolution: A biological investigation on evolution compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Evolution: A biological investigation on evolution compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL BIOLOGY

**Q36.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---
', null)
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, updated_at = now();

commit;
