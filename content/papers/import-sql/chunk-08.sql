begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Computer Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Computer Science',
  'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 2',
  'english',
  'advanced',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Computer Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DATA REPRESENTATION

**Q1.** Data representation: A school system with 31 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Data representation: A school system with 32 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Data representation: A school system with 33 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

![Computer network topology](/paper-diagrams/computer-network.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Data representation: A school system with 34 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Data representation: A school system with 35 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: COMPUTER ARCHITECTURE

**Q6.** Computer architecture: A school system with 36 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Computer architecture: A school system with 37 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Computer architecture: A school system with 38 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Computer architecture: A school system with 39 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Computer architecture: A school system with 40 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ALGORITHMS

**Q11.** Algorithms: A school system with 41 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Algorithms: A school system with 42 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Algorithms: A school system with 43 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Algorithms: A school system with 44 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Algorithms: A school system with 45 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: PROGRAMMING

**Q16.** Programming: A school system with 46 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Programming: A school system with 47 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Programming: A school system with 48 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Programming: A school system with 49 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Programming: A school system with 50 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: DATABASES

**Q21.** Databases: A school system with 51 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Databases: A school system with 52 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Databases: A school system with 53 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Databases: A school system with 54 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Databases: A school system with 55 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: NETWORKS

**Q26.** Networks: A school system with 56 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Networks: A school system with 57 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Networks: A school system with 58 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Networks: A school system with 59 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Networks: A school system with 60 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: SYSTEMS ANALYSIS

**Q31.** Systems analysis: A school system with 61 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Systems analysis: A school system with 62 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Systems analysis: A school system with 63 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Systems analysis: A school system with 64 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Systems analysis: A school system with 65 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: CYBERSECURITY

**Q36.** Cybersecurity: A school system with 66 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Cybersecurity: A school system with 67 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Cybersecurity: A school system with 68 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Cybersecurity: A school system with 69 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Cybersecurity: A school system with 70 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

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
  where subject = 'Computer Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Computer Science',
  'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3',
  'english',
  'advanced',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Computer Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DATA REPRESENTATION

**Q1.** Data representation: A school system with 31 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Data representation: A school system with 32 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

![Computer network topology](/paper-diagrams/computer-network.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Data representation: A school system with 33 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Data representation: A school system with 34 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Data representation: A school system with 35 learner records must process data representation securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: COMPUTER ARCHITECTURE

**Q6.** Computer architecture: A school system with 36 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Computer architecture: A school system with 37 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Computer architecture: A school system with 38 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Computer architecture: A school system with 39 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Computer architecture: A school system with 40 learner records must process computer architecture securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ALGORITHMS

**Q11.** Algorithms: A school system with 41 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Algorithms: A school system with 42 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Algorithms: A school system with 43 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Algorithms: A school system with 44 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Algorithms: A school system with 45 learner records must process algorithms securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: PROGRAMMING

**Q16.** Programming: A school system with 46 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Programming: A school system with 47 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Programming: A school system with 48 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Programming: A school system with 49 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Programming: A school system with 50 learner records must process programming securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: DATABASES

**Q21.** Databases: A school system with 51 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Databases: A school system with 52 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Databases: A school system with 53 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Databases: A school system with 54 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Databases: A school system with 55 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: NETWORKS

**Q26.** Networks: A school system with 56 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Networks: A school system with 57 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Networks: A school system with 58 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Networks: A school system with 59 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Networks: A school system with 60 learner records must process networks securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: SYSTEMS ANALYSIS

**Q31.** Systems analysis: A school system with 61 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Systems analysis: A school system with 62 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Systems analysis: A school system with 63 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Systems analysis: A school system with 64 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Systems analysis: A school system with 65 learner records must process systems analysis securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: CYBERSECURITY

**Q36.** Cybersecurity: A school system with 66 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Cybersecurity: A school system with 67 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Cybersecurity: A school system with 68 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Cybersecurity: A school system with 69 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Cybersecurity: A school system with 70 learner records must process cybersecurity securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

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
  where subject = 'ICT'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'ICT',
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical, science
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPUTER SYSTEMS

**Q1.** Computer systems: A school system with 31 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Computer systems: A school system with 32 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

![Computer network topology](/paper-diagrams/computer-network.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Computer systems: A school system with 33 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Computer systems: A school system with 34 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Computer systems: A school system with 35 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: WORD PROCESSING

**Q6.** Word processing: A school system with 36 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Word processing: A school system with 37 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Word processing: A school system with 38 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Word processing: A school system with 39 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Word processing: A school system with 40 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: SPREADSHEETS

**Q11.** Spreadsheets: A school system with 41 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Spreadsheets: A school system with 42 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Spreadsheets: A school system with 43 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Spreadsheets: A school system with 44 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Spreadsheets: A school system with 45 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: DATABASES

**Q16.** Databases: A school system with 46 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Databases: A school system with 47 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Databases: A school system with 48 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Databases: A school system with 49 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Databases: A school system with 50 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: INTERNET

**Q21.** Internet: A school system with 51 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Internet: A school system with 52 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Internet: A school system with 53 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Internet: A school system with 54 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Internet: A school system with 55 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PRESENTATION SOFTWARE

**Q26.** Presentation software: A school system with 56 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Presentation software: A school system with 57 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Presentation software: A school system with 58 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Presentation software: A school system with 59 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Presentation software: A school system with 60 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: DIGITAL SAFETY

**Q31.** Digital safety: A school system with 61 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Digital safety: A school system with 62 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Digital safety: A school system with 63 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Digital safety: A school system with 64 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Digital safety: A school system with 65 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: ICT IN SOCIETY

**Q36.** ICT in society: A school system with 66 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** ICT in society: A school system with 67 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** ICT in society: A school system with 68 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** ICT in society: A school system with 69 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** ICT in society: A school system with 70 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

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
  where subject = 'ICT'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'ICT',
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical, science
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPUTER SYSTEMS

**Q1.** Computer systems: A school system with 31 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Computer systems: A school system with 32 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Computer systems: A school system with 33 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

![Computer network topology](/paper-diagrams/computer-network.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Computer systems: A school system with 34 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Computer systems: A school system with 35 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: WORD PROCESSING

**Q6.** Word processing: A school system with 36 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Word processing: A school system with 37 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Word processing: A school system with 38 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Word processing: A school system with 39 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Word processing: A school system with 40 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: SPREADSHEETS

**Q11.** Spreadsheets: A school system with 41 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Spreadsheets: A school system with 42 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Spreadsheets: A school system with 43 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Spreadsheets: A school system with 44 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Spreadsheets: A school system with 45 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: DATABASES

**Q16.** Databases: A school system with 46 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Databases: A school system with 47 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Databases: A school system with 48 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Databases: A school system with 49 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Databases: A school system with 50 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: INTERNET

**Q21.** Internet: A school system with 51 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Internet: A school system with 52 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Internet: A school system with 53 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Internet: A school system with 54 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Internet: A school system with 55 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PRESENTATION SOFTWARE

**Q26.** Presentation software: A school system with 56 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Presentation software: A school system with 57 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Presentation software: A school system with 58 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Presentation software: A school system with 59 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Presentation software: A school system with 60 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: DIGITAL SAFETY

**Q31.** Digital safety: A school system with 61 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Digital safety: A school system with 62 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Digital safety: A school system with 63 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Digital safety: A school system with 64 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Digital safety: A school system with 65 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: ICT IN SOCIETY

**Q36.** ICT in society: A school system with 66 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** ICT in society: A school system with 67 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** ICT in society: A school system with 68 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** ICT in society: A school system with 69 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** ICT in society: A school system with 70 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

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
  where subject = 'ICT'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'ICT',
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical, science
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPUTER SYSTEMS

**Q1.** Computer systems: A school system with 31 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Computer systems: A school system with 32 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

![Computer network topology](/paper-diagrams/computer-network.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Computer systems: A school system with 33 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Computer systems: A school system with 34 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Computer systems: A school system with 35 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: WORD PROCESSING

**Q6.** Word processing: A school system with 36 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Word processing: A school system with 37 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Word processing: A school system with 38 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Word processing: A school system with 39 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Word processing: A school system with 40 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: SPREADSHEETS

**Q11.** Spreadsheets: A school system with 41 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Spreadsheets: A school system with 42 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Spreadsheets: A school system with 43 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Spreadsheets: A school system with 44 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Spreadsheets: A school system with 45 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: DATABASES

**Q16.** Databases: A school system with 46 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Databases: A school system with 47 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Databases: A school system with 48 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Databases: A school system with 49 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Databases: A school system with 50 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: INTERNET

**Q21.** Internet: A school system with 51 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Internet: A school system with 52 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Internet: A school system with 53 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Internet: A school system with 54 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Internet: A school system with 55 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PRESENTATION SOFTWARE

**Q26.** Presentation software: A school system with 56 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Presentation software: A school system with 57 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Presentation software: A school system with 58 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Presentation software: A school system with 59 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Presentation software: A school system with 60 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: DIGITAL SAFETY

**Q31.** Digital safety: A school system with 61 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Digital safety: A school system with 62 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Digital safety: A school system with 63 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Digital safety: A school system with 64 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Digital safety: A school system with 65 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: ICT IN SOCIETY

**Q36.** ICT in society: A school system with 66 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** ICT in society: A school system with 67 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** ICT in society: A school system with 68 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** ICT in society: A school system with 69 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** ICT in society: A school system with 70 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

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
  where subject = 'Food and Nutrition'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Food and Nutrition',
  'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general
**Subject:** Food and Nutrition

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: NUTRIENTS

**Q1.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

![Balanced diet plate](/paper-diagrams/food-plate.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MEAL PLANNING

**Q6.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 8 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 9 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 10 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 11 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 12 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FOOD HYGIENE

**Q11.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: COOKING METHODS

**Q16.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: FOOD PRESERVATION

**Q21.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: DIET AND HEALTH

**Q26.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: CONSUMER EDUCATION

**Q31.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL PLANNING

**Q36.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Food and Nutrition'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Food and Nutrition',
  'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general
**Subject:** Food and Nutrition

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: NUTRIENTS

**Q1.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

![Balanced diet plate](/paper-diagrams/food-plate.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MEAL PLANNING

**Q6.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 8 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 9 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 10 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 11 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 12 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FOOD HYGIENE

**Q11.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: COOKING METHODS

**Q16.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: FOOD PRESERVATION

**Q21.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: DIET AND HEALTH

**Q26.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: CONSUMER EDUCATION

**Q31.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL PLANNING

**Q36.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Food and Nutrition'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Food and Nutrition',
  'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general
**Subject:** Food and Nutrition

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: NUTRIENTS

**Q1.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

![Balanced diet plate](/paper-diagrams/food-plate.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Nutrients: A biological investigation on nutrients compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MEAL PLANNING

**Q6.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 8 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 9 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 10 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 11 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Meal planning: A biological investigation on meal planning compares sample A with sample B after 12 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FOOD HYGIENE

**Q11.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Food hygiene: A biological investigation on food hygiene compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: COOKING METHODS

**Q16.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Cooking methods: A biological investigation on cooking methods compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: FOOD PRESERVATION

**Q21.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Food preservation: A biological investigation on food preservation compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: DIET AND HEALTH

**Q26.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Diet and health: A biological investigation on diet and health compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: CONSUMER EDUCATION

**Q31.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Consumer education: A biological investigation on consumer education compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL PLANNING

**Q36.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical planning: A biological investigation on practical planning compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Food Science and Nutrition'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Food Science and Nutrition',
  'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 1',
  'english',
  'advanced',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Food Science and Nutrition

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FOOD CHEMISTRY

**Q1.** Food chemistry: Experiment 1 studies food chemistry by changing concentration 0.2 mol dm-3, temperature 21 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

![Balanced diet plate](/paper-diagrams/food-plate.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Food chemistry: Experiment 2 studies food chemistry by changing concentration 0.3 mol dm-3, temperature 22 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Food chemistry: Experiment 3 studies food chemistry by changing concentration 0.4 mol dm-3, temperature 23 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Food chemistry: Experiment 4 studies food chemistry by changing concentration 0.5 mol dm-3, temperature 24 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Food chemistry: Experiment 5 studies food chemistry by changing concentration 0.6 mol dm-3, temperature 25 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MICROBIOLOGY

**Q6.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 8 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 9 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 10 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 11 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 12 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: NUTRITIONAL BIOCHEMISTRY

**Q11.** Nutritional biochemistry: Experiment 11 studies nutritional biochemistry by changing concentration 1.2 mol dm-3, temperature 31 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Nutritional biochemistry: Experiment 12 studies nutritional biochemistry by changing concentration 1.3 mol dm-3, temperature 32 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Nutritional biochemistry: Experiment 13 studies nutritional biochemistry by changing concentration 1.4 mol dm-3, temperature 33 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Nutritional biochemistry: Experiment 14 studies nutritional biochemistry by changing concentration 1.5 mol dm-3, temperature 34 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Nutritional biochemistry: Experiment 15 studies nutritional biochemistry by changing concentration 1.6 mol dm-3, temperature 35 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: FOOD PROCESSING

**Q16.** Food processing: A biological investigation on food processing compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Food processing: A biological investigation on food processing compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Food processing: A biological investigation on food processing compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Food processing: A biological investigation on food processing compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Food processing: A biological investigation on food processing compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: QUALITY CONTROL

**Q21.** Quality control: A biological investigation on quality control compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Quality control: A biological investigation on quality control compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Quality control: A biological investigation on quality control compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Quality control: A biological investigation on quality control compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Quality control: A biological investigation on quality control compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: DIET THERAPY

**Q26.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: PUBLIC HEALTH NUTRITION

**Q31.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: FOOD PRODUCT DEVELOPMENT

**Q36.** Food product development: A biological investigation on food product development compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Food product development: A biological investigation on food product development compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Food product development: A biological investigation on food product development compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Food product development: A biological investigation on food product development compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Food product development: A biological investigation on food product development compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Food Science and Nutrition'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Food Science and Nutrition',
  'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 2',
  'english',
  'advanced',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Food Science and Nutrition

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FOOD CHEMISTRY

**Q1.** Food chemistry: Experiment 1 studies food chemistry by changing concentration 0.3 mol dm-3, temperature 21 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

![Balanced diet plate](/paper-diagrams/food-plate.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Food chemistry: Experiment 2 studies food chemistry by changing concentration 0.4 mol dm-3, temperature 22 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Food chemistry: Experiment 3 studies food chemistry by changing concentration 0.5 mol dm-3, temperature 23 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Food chemistry: Experiment 4 studies food chemistry by changing concentration 0.6 mol dm-3, temperature 24 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Food chemistry: Experiment 5 studies food chemistry by changing concentration 0.7 mol dm-3, temperature 25 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MICROBIOLOGY

**Q6.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 8 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 9 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 10 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 11 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Microbiology: A biological investigation on microbiology compares sample A with sample B after 12 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: NUTRITIONAL BIOCHEMISTRY

**Q11.** Nutritional biochemistry: Experiment 11 studies nutritional biochemistry by changing concentration 1.3 mol dm-3, temperature 31 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Nutritional biochemistry: Experiment 12 studies nutritional biochemistry by changing concentration 1.4 mol dm-3, temperature 32 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Nutritional biochemistry: Experiment 13 studies nutritional biochemistry by changing concentration 1.5 mol dm-3, temperature 33 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Nutritional biochemistry: Experiment 14 studies nutritional biochemistry by changing concentration 1.6 mol dm-3, temperature 34 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Nutritional biochemistry: Experiment 15 studies nutritional biochemistry by changing concentration 1.7 mol dm-3, temperature 35 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: FOOD PROCESSING

**Q16.** Food processing: A biological investigation on food processing compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Food processing: A biological investigation on food processing compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Food processing: A biological investigation on food processing compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Food processing: A biological investigation on food processing compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Food processing: A biological investigation on food processing compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: QUALITY CONTROL

**Q21.** Quality control: A biological investigation on quality control compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Quality control: A biological investigation on quality control compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Quality control: A biological investigation on quality control compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Quality control: A biological investigation on quality control compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Quality control: A biological investigation on quality control compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: DIET THERAPY

**Q26.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Diet therapy: A biological investigation on diet therapy compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: PUBLIC HEALTH NUTRITION

**Q31.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Public health nutrition: A biological investigation on public health nutrition compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: FOOD PRODUCT DEVELOPMENT

**Q36.** Food product development: A biological investigation on food product development compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Food product development: A biological investigation on food product development compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Food product development: A biological investigation on food product development compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Food product development: A biological investigation on food product development compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Food product development: A biological investigation on food product development compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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

commit;