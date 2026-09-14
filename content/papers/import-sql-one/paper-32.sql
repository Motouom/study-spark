begin;

with chosen_topic as (
  select id from public.topics where subject = 'Computer Science' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3' limit 1
)
insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by)
values (coalesce((select id from existing), gen_random_uuid()), (select id from chosen_topic), 'Computer Science', 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3', 'english', 'advanced', array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[], array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[], 'published', '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3

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
', null)
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, updated_at = now();

commit;
