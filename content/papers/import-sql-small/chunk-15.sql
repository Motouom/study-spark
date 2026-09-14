begin;

with chosen_topic as (
  select id from public.topics where subject = 'Business Studies' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3' limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies', 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3', 'english', 'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published', '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ENTERPRISE

**Q1.** Enterprise: Enterprise case 1 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Enterprise: Enterprise case 2 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Enterprise: Enterprise case 3 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Enterprise: Enterprise case 4 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Enterprise: Enterprise case 5 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: BUSINESS OWNERSHIP

**Q6.** Business ownership: Enterprise case 6 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Business ownership: Enterprise case 7 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Business ownership: Enterprise case 8 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Business ownership: Enterprise case 9 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Business ownership: Enterprise case 10 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: MANAGEMENT

**Q11.** Management: Enterprise case 11 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Management: Enterprise case 12 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Management: Enterprise case 13 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Management: Enterprise case 14 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Management: Enterprise case 15 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: MARKETING

**Q16.** Marketing: Enterprise case 16 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Marketing: Enterprise case 17 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Marketing: Enterprise case 18 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Marketing: Enterprise case 19 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Marketing: Enterprise case 20 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: FINANCE

**Q21.** Finance: Enterprise case 21 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Finance: Enterprise case 22 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Finance: Enterprise case 23 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Finance: Enterprise case 24 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Finance: Enterprise case 25 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: HUMAN RESOURCES

**Q26.** Human resources: Enterprise case 26 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Human resources: Enterprise case 27 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Human resources: Enterprise case 28 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Human resources: Enterprise case 29 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Human resources: Enterprise case 30 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: PRODUCTION

**Q31.** Production: Enterprise case 31 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Production: Enterprise case 32 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Production: Enterprise case 33 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Production: Enterprise case 34 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Production: Enterprise case 35 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: BUSINESS ENVIRONMENT

**Q36.** Business environment: Enterprise case 36 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** Business environment: Enterprise case 37 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** Business environment: Enterprise case 38 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** Business environment: Enterprise case 39 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** Business environment: Enterprise case 40 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---
', null
) on conflict (id) do update set
  topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language,
  level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status,
  markdown_content = excluded.markdown_content, updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Computer Science' order by case when level = 'advanced' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 1' limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Computer Science', 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 1', 'english', 'advanced',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published', '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 1

## Structural Question Bank - Set 1

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
', null
) on conflict (id) do update set
  topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language,
  level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status,
  markdown_content = excluded.markdown_content, updated_at = now();

commit;