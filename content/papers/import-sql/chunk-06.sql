begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Business Studies'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level BUSINESS STUDIES P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CASE STUDY ANALYSIS

**Q1.** Case Study Analysis: A detailed examination question covering case study analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: STRATEGIC PLANNING

**Q2.** Strategic Planning: A detailed examination question covering strategic planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: MARKETING PLAN

**Q3.** Marketing Plan: A detailed examination question covering marketing plan concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FINANCIAL ANALYSIS

**Q4.** Financial Analysis: A detailed examination question covering financial analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HR STRATEGY

**Q5.** HR Strategy: A detailed examination question covering hr strategy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: OPERATIONS MANAGEMENT

**Q6.** Operations Management: A detailed examination question covering operations management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: BUSINESS ETHICS

**Q7.** Business Ethics: A detailed examination question covering business ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENTREPRENEURSHIP

**Q8.** Entrepreneurship: A detailed examination question covering entrepreneurship concepts and applications.

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
  where subject = 'Business Studies'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level BUSINESS STUDIES P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CASE STUDY ANALYSIS

**Q1.** Case Study Analysis: A detailed examination question covering case study analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: STRATEGIC PLANNING

**Q2.** Strategic Planning: A detailed examination question covering strategic planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: MARKETING PLAN

**Q3.** Marketing Plan: A detailed examination question covering marketing plan concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FINANCIAL ANALYSIS

**Q4.** Financial Analysis: A detailed examination question covering financial analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HR STRATEGY

**Q5.** HR Strategy: A detailed examination question covering hr strategy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: OPERATIONS MANAGEMENT

**Q6.** Operations Management: A detailed examination question covering operations management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: BUSINESS ETHICS

**Q7.** Business Ethics: A detailed examination question covering business ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENTREPRENEURSHIP

**Q8.** Entrepreneurship: A detailed examination question covering entrepreneurship concepts and applications.

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
  where subject = 'Business Studies'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level BUSINESS STUDIES P2 SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CASE STUDY ANALYSIS

**Q1.** Case Study Analysis: A detailed examination question covering case study analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: STRATEGIC PLANNING

**Q2.** Strategic Planning: A detailed examination question covering strategic planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: MARKETING PLAN

**Q3.** Marketing Plan: A detailed examination question covering marketing plan concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FINANCIAL ANALYSIS

**Q4.** Financial Analysis: A detailed examination question covering financial analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HR STRATEGY

**Q5.** HR Strategy: A detailed examination question covering hr strategy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: OPERATIONS MANAGEMENT

**Q6.** Operations Management: A detailed examination question covering operations management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: BUSINESS ETHICS

**Q7.** Business Ethics: A detailed examination question covering business ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENTREPRENEURSHIP

**Q8.** Entrepreneurship: A detailed examination question covering entrepreneurship concepts and applications.

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
  where subject = 'Business Studies'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level BUSINESS STUDIES P2 SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CASE STUDY ANALYSIS

**Q1.** Case Study Analysis: A detailed examination question covering case study analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: STRATEGIC PLANNING

**Q2.** Strategic Planning: A detailed examination question covering strategic planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: MARKETING PLAN

**Q3.** Marketing Plan: A detailed examination question covering marketing plan concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FINANCIAL ANALYSIS

**Q4.** Financial Analysis: A detailed examination question covering financial analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HR STRATEGY

**Q5.** HR Strategy: A detailed examination question covering hr strategy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: OPERATIONS MANAGEMENT

**Q6.** Operations Management: A detailed examination question covering operations management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: BUSINESS ETHICS

**Q7.** Business Ethics: A detailed examination question covering business ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENTREPRENEURSHIP

**Q8.** Entrepreneurship: A detailed examination question covering entrepreneurship concepts and applications.

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
  where subject = 'Business Studies'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level BUSINESS STUDIES P2 SET 8

## Structural Question Bank - Set 8

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CASE STUDY ANALYSIS

**Q1.** Case Study Analysis: A detailed examination question covering case study analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: STRATEGIC PLANNING

**Q2.** Strategic Planning: A detailed examination question covering strategic planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: MARKETING PLAN

**Q3.** Marketing Plan: A detailed examination question covering marketing plan concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FINANCIAL ANALYSIS

**Q4.** Financial Analysis: A detailed examination question covering financial analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: HR STRATEGY

**Q5.** HR Strategy: A detailed examination question covering hr strategy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: OPERATIONS MANAGEMENT

**Q6.** Operations Management: A detailed examination question covering operations management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: BUSINESS ETHICS

**Q7.** Business Ethics: A detailed examination question covering business ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: ENTREPRENEURSHIP

**Q8.** Entrepreneurship: A detailed examination question covering entrepreneurship concepts and applications.

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
  where subject = 'Chemistry'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Chemistry

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The number of protons in an atom is called the:

A. atomic number  
B. mass number  
C. valency  
D. isotope number  

---

**Q2.** The total number of protons and neutrons is the:

A. mass number  
B. atomic number  
C. atomic mass  
D. valency  

---

**Q3.** An atom of carbon has 6 protons and 6 neutrons. Its mass number is:

A. 12  
B. 18  
C. 6  
D. 24  

---

**Q4.** The electronic configuration of sodium (atomic number 11) is:

A. 2, 8, 1  
B. 2, 8, 3  
C. 2, 9  
D. 2, 8, 2  

---

**Q5.** Atoms of the same element with different numbers of neutrons are called:

A. isotopes  
B. compounds  
C. ions  
D. molecules  

---

**Q6.** An ionic bond is formed by:

A. transfer of electrons  
B. transfer of neutrons  
C. sharing of protons  
D. sharing of electrons  

---

**Q7.** A covalent bond is formed by:

A. transfer of electrons  
B. sharing of electrons  
C. transfer of protons  
D. sharing of neutrons  

---

**Q8.** The bond in sodium chloride is:

A. covalent  
B. ionic  
C. hydrogen  
D. metallic  

---

**Q9.** The bond in water is:

A. ionic  
B. metallic  
C. covalent  
D. hydrogen  

---

**Q10.** The bond in iron is:

A. ionic  
B. covalent  
C. hydrogen  
D. metallic  

---

**Q11.** Ionic compounds conduct electricity when:

A. solid  
B. frozen  
C. molten or dissolved  
D. gaseous  

---

**Q12.** The formula of a sodium ion is:

A. Na⁻  
B. Na  
C. Na²⁺  
D. Na⁺  

---

**Q13.** The formula of a chloride ion is:

A. Cl²⁻  
B. Cl⁻  
C. Cl⁺  
D. Cl  

---

**Q14.** The valency of oxygen is:

A. 3  
B. 2  
C. 4  
D. 1  

---

**Q15.** The valency of nitrogen is:

A. 2  
B. 1  
C. 3  
D. 4  

---

**Q16.** The formula of water is:

A. H₂O₂  
B. HO₂  
C. HO  
D. H₂O  

---

**Q17.** The formula of carbon dioxide is:

A. C₂O  
B. CO₃  
C. CO₂  
D. CO  

---

**Q18.** The formula of ammonia is:

A. N₂H  
B. NH₂  
C. NH₄  
D. NH₃  

---

**Q19.** Graphite conducts electricity because it has:

A. neutrons  
B. free electrons  
C. ions  
D. protons  

---

**Q20.** Diamond is very hard because:

A. it contains water  
B. each carbon atom is bonded to four others  
C. it is a metal  
D. it has free electrons  

---

**Q21.** The particles in a solid are:

A. closely packed and moving freely  
B. far apart and moving freely  
C. closely packed and vibrating  
D. far apart and stationary  

---

**Q22.** The particles in a gas are:

A. far apart and stationary  
B. closely packed and vibrating  
C. closely packed and moving freely  
D. far apart and moving freely  

---

**Q23.** Elements in the same group have the same number of:

A. shells  
B. neutrons  
C. outer electrons  
D. protons  

---

**Q24.** The most reactive metal in Group I is:

A. potassium  
B. sodium  
C. lithium  
D. caesium  

---

**Q25.** The most reactive halogen is:

A. fluorine  
B. chlorine  
C. bromine  
D. iodine  

---

**Q26.** A mixture of sand and salt can be separated by:

A. dissolving in water and filtering  
B. distillation only  
C. evaporation only  
D. chromatography only  

---

**Q27.** The relative atomic mass of carbon is:

A. 12  
B. 24  
C. 6  
D. 1  

---

**Q28.** The relative atomic mass of oxygen is:

A. 16  
B. 32  
C. 1  
D. 8  

---

**Q29.** A substance made of two or more elements chemically combined is a:

A. compound  
B. solution  
C. mixture  
D. element  

---

**Q30.** The number of electrons in a neutral atom equals the number of:

A. protons  
B. shells  
C. protons plus neutrons  
D. neutrons  

---

**Q31.** One mole of a substance contains:

A. 6.02 × 10²² particles  
B. 6.02 × 10²³ particles  
C. 1.0 × 10²³ particles  
D. 6.02 × 10²⁴ particles  

---

**Q32.** The number of moles in 8 g of oxygen gas (O₂, Ar = 16) is:

A. 0.5  
B. 0.25  
C. 2  
D. 1  

---

**Q33.** The mass of 0.5 moles of CO₂ (Mr = 44) is:

A. 44 g  
B. 11 g  
C. 22 g  
D. 88 g  

---

**Q34.** The molar volume of a gas at room temperature and pressure is:

A. 22.4 dm³  
B. 6.02 dm³  
C. 100 dm³  
D. 24 dm³  

---

**Q35.** The volume of 0.5 moles of CO₂ at r.t.p. is:

A. 24 dm³  
B. 48 dm³  
C. 12 dm³  
D. 6 dm³  

---

**Q36.** An acid turns blue litmus:

A. blue  
B. colourless  
C. green  
D. red  

---

**Q37.** A base turns red litmus:

A. green  
B. blue  
C. red  
D. colourless  

---

**Q38.** The pH of a neutral solution is:

A. 14  
B. 7  
C. 1  
D. 0  

---

**Q39.** The pH of a strong acid is:

A. 14  
B. 7  
C. 1  
D. 10  

---

**Q40.** The pH of a strong alkali is:

A. 7  
B. 1  
C. 5  
D. 14  

---

**Q41.** The reaction between an acid and a base is called:

A. reduction  
B. combustion  
C. neutralisation  
D. oxidation  

---

**Q42.** The products of the reaction between an acid and an alkali are:

A. salt and carbon dioxide  
B. water and oxygen  
C. salt and hydrogen  
D. salt and water  

---

**Q43.** The products of the reaction between an acid and a metal are:

A. water and hydrogen  
B. salt and hydrogen  
C. salt and water  
D. salt and carbon dioxide  

---

**Q44.** The products of the reaction between an acid and a carbonate are:

A. water and oxygen  
B. salt, water, and carbon dioxide  
C. salt and water  
D. salt and hydrogen  

---

**Q45.** In the reaction Zn + CuSO₄ → ZnSO₄ + Cu, the substance oxidised is:

A. oxygen  
B. copper  
C. zinc  
D. sulfate  

---

**Q46.** Oxidation is the:

A. loss of neutrons  
B. gain of electrons  
C. gain of protons  
D. loss of electrons  

---

**Q47.** Reduction is the:

A. loss of neutrons  
B. gain of protons  
C. gain of electrons  
D. loss of electrons  

---

**Q48.** A substance that speeds up a reaction without being used up is a:

A. indicator  
B. product  
C. reactant  
D. catalyst  

---

**Q49.** Increasing the temperature of a reaction:

A. increases the rate  
B. decreases the rate  
C. has no effect  
D. stops the reaction  

---

**Q50.** Increasing the surface area of a solid reactant:

A. increases the rate  
B. decreases the rate  
C. stops the reaction  
D. has no effect  

---

**Q51.** The concentration of a solution containing 0.5 moles in 250 cm³ is:

A. 2 mol/dm³  
B. 1 mol/dm³  
C. 0.5 mol/dm³  
D. 0.25 mol/dm³  

---

**Q52.** The number of moles in 100 cm³ of a 0.2 mol/dm³ solution is:

A. 0.02  
B. 2  
C. 20  
D. 0.2  

---

**Q53.** A reaction that releases heat energy is:

A. exothermic  
B. neutral  
C. endothermic  
D. reversible  

---

**Q54.** A reaction that absorbs heat energy is:

A. endothermic  
B. neutral  
C. reversible  
D. exothermic  

---

**Q55.** The indicator used in a titration between a strong acid and a strong alkali is:

A. universal indicator only  
B. methyl orange or phenolphthalein  
C. litmus only  
D. starch  

---

**Q56.** The empirical formula of a compound with 40% C, 6.7% H, and 53.3% O is:

A. CHO  
B. CH₂O  
C. CH₄O  
D. C₂H₄O₂  

---

**Q57.** In the reaction 2Mg + O₂ → 2MgO, the substance reduced is:

A. magnesium  
B. magnesium oxide  
C. oxygen  
D. none  

---

**Q58.** Le Chatelier''s principle states that a system at equilibrium responds to a change by:

A. increasing the change  
B. ignoring the change  
C. stopping the reaction  
D. counteracting the change  

---

**Q59.** Increasing the pressure on N₂ + 3H₂ ⇌ 2NH₃ favours:

A. the backward reaction  
B. no change  
C. the forward reaction  
D. neither direction  

---

**Q60.** The number of moles in 48 dm³ of oxygen gas at r.t.p. is:

A. 1  
B. 4  
C. 0.5  
D. 2  

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
  where subject = 'Chemistry'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Chemistry

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The electronic configuration of sodium (atomic number 11) is:

A. 2, 8, 1  
B. 2, 8, 2  
C. 2, 8, 3  
D. 2, 9  

---

**Q2.** Atoms of the same element with different numbers of neutrons are called:

A. isotopes  
B. ions  
C. compounds  
D. molecules  

---

**Q3.** An ionic bond is formed by:

A. transfer of electrons  
B. sharing of protons  
C. sharing of electrons  
D. transfer of neutrons  

---

**Q4.** A covalent bond is formed by:

A. sharing of electrons  
B. transfer of protons  
C. sharing of neutrons  
D. transfer of electrons  

---

**Q5.** The bond in sodium chloride is:

A. ionic  
B. hydrogen  
C. covalent  
D. metallic  

---

**Q6.** The bond in water is:

A. covalent  
B. hydrogen  
C. metallic  
D. ionic  

---

**Q7.** The bond in iron is:

A. ionic  
B. metallic  
C. covalent  
D. hydrogen  

---

**Q8.** Ionic compounds conduct electricity when:

A. solid  
B. molten or dissolved  
C. frozen  
D. gaseous  

---

**Q9.** The formula of a sodium ion is:

A. Na⁻  
B. Na²⁺  
C. Na⁺  
D. Na  

---

**Q10.** The formula of a chloride ion is:

A. Cl⁺  
B. Cl²⁻  
C. Cl  
D. Cl⁻  

---

**Q11.** The valency of oxygen is:

A. 1  
B. 4  
C. 2  
D. 3  

---

**Q12.** The valency of nitrogen is:

A. 1  
B. 4  
C. 2  
D. 3  

---

**Q13.** The formula of water is:

A. H₂O₂  
B. H₂O  
C. HO₂  
D. HO  

---

**Q14.** The formula of carbon dioxide is:

A. C₂O  
B. CO₂  
C. CO₃  
D. CO  

---

**Q15.** The formula of ammonia is:

A. N₂H  
B. NH₄  
C. NH₃  
D. NH₂  

---

**Q16.** Graphite conducts electricity because it has:

A. protons  
B. ions  
C. neutrons  
D. free electrons  

---

**Q17.** Diamond is very hard because:

A. it is a metal  
B. it contains water  
C. each carbon atom is bonded to four others  
D. it has free electrons  

---

**Q18.** The particles in a solid are:

A. far apart and stationary  
B. closely packed and moving freely  
C. far apart and moving freely  
D. closely packed and vibrating  

---

**Q19.** The particles in a gas are:

A. far apart and stationary  
B. far apart and moving freely  
C. closely packed and vibrating  
D. closely packed and moving freely  

---

**Q20.** Elements in the same group have the same number of:

A. shells  
B. outer electrons  
C. neutrons  
D. protons  

---

**Q21.** The most reactive metal in Group I is:

A. potassium  
B. lithium  
C. caesium  
D. sodium  

---

**Q22.** The most reactive halogen is:

A. iodine  
B. chlorine  
C. bromine  
D. fluorine  

---

**Q23.** A mixture of sand and salt can be separated by:

A. evaporation only  
B. chromatography only  
C. dissolving in water and filtering  
D. distillation only  

---

**Q24.** The relative atomic mass of carbon is:

A. 1  
B. 24  
C. 6  
D. 12  

---

**Q25.** The relative atomic mass of oxygen is:

A. 16  
B. 8  
C. 32  
D. 1  

---

**Q26.** A substance made of two or more elements chemically combined is a:

A. compound  
B. mixture  
C. solution  
D. element  

---

**Q27.** The number of electrons in a neutral atom equals the number of:

A. protons  
B. protons plus neutrons  
C. neutrons  
D. shells  

---

**Q28.** The number of protons in an atom is called the:

A. atomic number  
B. valency  
C. isotope number  
D. mass number  

---

**Q29.** The total number of protons and neutrons is the:

A. mass number  
B. atomic mass  
C. atomic number  
D. valency  

---

**Q30.** An atom of carbon has 6 protons and 6 neutrons. Its mass number is:

A. 12  
B. 24  
C. 18  
D. 6  

---

**Q31.** The molar volume of a gas at room temperature and pressure is:

A. 22.4 dm³  
B. 24 dm³  
C. 6.02 dm³  
D. 100 dm³  

---

**Q32.** The volume of 0.5 moles of CO₂ at r.t.p. is:

A. 24 dm³  
B. 12 dm³  
C. 48 dm³  
D. 6 dm³  

---

**Q33.** An acid turns blue litmus:

A. blue  
B. green  
C. red  
D. colourless  

---

**Q34.** A base turns red litmus:

A. red  
B. green  
C. colourless  
D. blue  

---

**Q35.** The pH of a neutral solution is:

A. 0  
B. 1  
C. 7  
D. 14  

---

**Q36.** The pH of a strong acid is:

A. 7  
B. 10  
C. 14  
D. 1  

---

**Q37.** The pH of a strong alkali is:

A. 7  
B. 14  
C. 1  
D. 5  

---

**Q38.** The reaction between an acid and a base is called:

A. reduction  
B. neutralisation  
C. combustion  
D. oxidation  

---

**Q39.** The products of the reaction between an acid and an alkali are:

A. salt and carbon dioxide  
B. salt and hydrogen  
C. salt and water  
D. water and oxygen  

---

**Q40.** The products of the reaction between an acid and a metal are:

A. salt and carbon dioxide  
B. salt and water  
C. water and hydrogen  
D. salt and hydrogen  

---

**Q41.** The products of the reaction between an acid and a carbonate are:

A. salt and water  
B. water and oxygen  
C. salt, water, and carbon dioxide  
D. salt and hydrogen  

---

**Q42.** In the reaction Zn + CuSO₄ → ZnSO₄ + Cu, the substance oxidised is:

A. sulfate  
B. oxygen  
C. copper  
D. zinc  

---

**Q43.** Oxidation is the:

A. loss of neutrons  
B. loss of electrons  
C. gain of electrons  
D. gain of protons  

---

**Q44.** Reduction is the:

A. loss of neutrons  
B. gain of electrons  
C. gain of protons  
D. loss of electrons  

---

**Q45.** A substance that speeds up a reaction without being used up is a:

A. indicator  
B. reactant  
C. catalyst  
D. product  

---

**Q46.** Increasing the temperature of a reaction:

A. stops the reaction  
B. decreases the rate  
C. has no effect  
D. increases the rate  

---

**Q47.** Increasing the surface area of a solid reactant:

A. stops the reaction  
B. has no effect  
C. increases the rate  
D. decreases the rate  

---

**Q48.** The concentration of a solution containing 0.5 moles in 250 cm³ is:

A. 0.25 mol/dm³  
B. 1 mol/dm³  
C. 0.5 mol/dm³  
D. 2 mol/dm³  

---

**Q49.** The number of moles in 100 cm³ of a 0.2 mol/dm³ solution is:

A. 0.02  
B. 0.2  
C. 2  
D. 20  

---

**Q50.** A reaction that releases heat energy is:

A. exothermic  
B. endothermic  
C. neutral  
D. reversible  

---

**Q51.** A reaction that absorbs heat energy is:

A. endothermic  
B. reversible  
C. exothermic  
D. neutral  

---

**Q52.** The indicator used in a titration between a strong acid and a strong alkali is:

A. methyl orange or phenolphthalein  
B. litmus only  
C. starch  
D. universal indicator only  

---

**Q53.** The empirical formula of a compound with 40% C, 6.7% H, and 53.3% O is:

A. CH₂O  
B. CH₄O  
C. CHO  
D. C₂H₄O₂  

---

**Q54.** In the reaction 2Mg + O₂ → 2MgO, the substance reduced is:

A. oxygen  
B. none  
C. magnesium oxide  
D. magnesium  

---

**Q55.** Le Chatelier''s principle states that a system at equilibrium responds to a change by:

A. increasing the change  
B. counteracting the change  
C. ignoring the change  
D. stopping the reaction  

---

**Q56.** Increasing the pressure on N₂ + 3H₂ ⇌ 2NH₃ favours:

A. the backward reaction  
B. the forward reaction  
C. no change  
D. neither direction  

---

**Q57.** The number of moles in 48 dm³ of oxygen gas at r.t.p. is:

A. 1  
B. 0.5  
C. 2  
D. 4  

---

**Q58.** One mole of a substance contains:

A. 6.02 × 10²² particles  
B. 1.0 × 10²³ particles  
C. 6.02 × 10²⁴ particles  
D. 6.02 × 10²³ particles  

---

**Q59.** The number of moles in 8 g of oxygen gas (O₂, Ar = 16) is:

A. 0.5  
B. 2  
C. 0.25  
D. 1  

---

**Q60.** The mass of 0.5 moles of CO₂ (Mr = 44) is:

A. 44 g  
B. 88 g  
C. 11 g  
D. 22 g  

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
  where subject = 'Chemistry'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Chemistry

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** A covalent bond is formed by:

A. sharing of electrons  
B. transfer of electrons  
C. transfer of protons  
D. sharing of neutrons  

---

**Q2.** The bond in sodium chloride is:

A. ionic  
B. covalent  
C. hydrogen  
D. metallic  

---

**Q3.** The bond in water is:

A. covalent  
B. metallic  
C. ionic  
D. hydrogen  

---

**Q4.** The bond in iron is:

A. metallic  
B. covalent  
C. hydrogen  
D. ionic  

---

**Q5.** Ionic compounds conduct electricity when:

A. molten or dissolved  
B. frozen  
C. solid  
D. gaseous  

---

**Q6.** The formula of a sodium ion is:

A. Na⁺  
B. Na  
C. Na²⁺  
D. Na⁻  

---

**Q7.** The formula of a chloride ion is:

A. Cl⁺  
B. Cl⁻  
C. Cl²⁻  
D. Cl  

---

**Q8.** The valency of oxygen is:

A. 1  
B. 2  
C. 4  
D. 3  

---

**Q9.** The valency of nitrogen is:

A. 1  
B. 2  
C. 3  
D. 4  

---

**Q10.** The formula of water is:

A. HO₂  
B. H₂O₂  
C. HO  
D. H₂O  

---

**Q11.** The formula of carbon dioxide is:

A. CO  
B. CO₃  
C. CO₂  
D. C₂O  

---

**Q12.** The formula of ammonia is:

A. NH₄  
B. NH₂  
C. N₂H  
D. NH₃  

---

**Q13.** Graphite conducts electricity because it has:

A. protons  
B. free electrons  
C. ions  
D. neutrons  

---

**Q14.** Diamond is very hard because:

A. it is a metal  
B. each carbon atom is bonded to four others  
C. it contains water  
D. it has free electrons  

---

**Q15.** The particles in a solid are:

A. far apart and stationary  
B. far apart and moving freely  
C. closely packed and vibrating  
D. closely packed and moving freely  

---

**Q16.** The particles in a gas are:

A. closely packed and moving freely  
B. closely packed and vibrating  
C. far apart and stationary  
D. far apart and moving freely  

---

**Q17.** Elements in the same group have the same number of:

A. neutrons  
B. shells  
C. outer electrons  
D. protons  

---

**Q18.** The most reactive metal in Group I is:

A. sodium  
B. potassium  
C. lithium  
D. caesium  

---

**Q19.** The most reactive halogen is:

A. iodine  
B. fluorine  
C. chlorine  
D. bromine  

---

**Q20.** A mixture of sand and salt can be separated by:

A. evaporation only  
B. dissolving in water and filtering  
C. chromatography only  
D. distillation only  

---

**Q21.** The relative atomic mass of carbon is:

A. 1  
B. 6  
C. 12  
D. 24  

---

**Q22.** The relative atomic mass of oxygen is:

A. 1  
B. 8  
C. 32  
D. 16  

---

**Q23.** A substance made of two or more elements chemically combined is a:

A. solution  
B. element  
C. compound  
D. mixture  

---

**Q24.** The number of electrons in a neutral atom equals the number of:

A. shells  
B. protons plus neutrons  
C. neutrons  
D. protons  

---

**Q25.** The number of protons in an atom is called the:

A. atomic number  
B. mass number  
C. valency  
D. isotope number  

---

**Q26.** The total number of protons and neutrons is the:

A. mass number  
B. atomic number  
C. atomic mass  
D. valency  

---

**Q27.** An atom of carbon has 6 protons and 6 neutrons. Its mass number is:

A. 12  
B. 18  
C. 6  
D. 24  

---

**Q28.** The electronic configuration of sodium (atomic number 11) is:

A. 2, 8, 1  
B. 2, 8, 3  
C. 2, 9  
D. 2, 8, 2  

---

**Q29.** Atoms of the same element with different numbers of neutrons are called:

A. isotopes  
B. compounds  
C. ions  
D. molecules  

---

**Q30.** An ionic bond is formed by:

A. transfer of electrons  
B. transfer of neutrons  
C. sharing of protons  
D. sharing of electrons  

---

**Q31.** A base turns red litmus:

A. red  
B. blue  
C. green  
D. colourless  

---

**Q32.** The pH of a neutral solution is:

A. 0  
B. 7  
C. 1  
D. 14  

---

**Q33.** The pH of a strong acid is:

A. 7  
B. 14  
C. 1  
D. 10  

---

**Q34.** The pH of a strong alkali is:

A. 1  
B. 7  
C. 5  
D. 14  

---

**Q35.** The reaction between an acid and a base is called:

A. oxidation  
B. combustion  
C. neutralisation  
D. reduction  

---

**Q36.** The products of the reaction between an acid and an alkali are:

A. salt and hydrogen  
B. water and oxygen  
C. salt and carbon dioxide  
D. salt and water  

---

**Q37.** The products of the reaction between an acid and a metal are:

A. salt and carbon dioxide  
B. salt and hydrogen  
C. salt and water  
D. water and hydrogen  

---

**Q38.** The products of the reaction between an acid and a carbonate are:

A. salt and water  
B. salt, water, and carbon dioxide  
C. water and oxygen  
D. salt and hydrogen  

---

**Q39.** In the reaction Zn + CuSO₄ → ZnSO₄ + Cu, the substance oxidised is:

A. sulfate  
B. copper  
C. zinc  
D. oxygen  

---

**Q40.** Oxidation is the:

A. gain of protons  
B. gain of electrons  
C. loss of neutrons  
D. loss of electrons  

---

**Q41.** Reduction is the:

A. gain of protons  
B. loss of neutrons  
C. gain of electrons  
D. loss of electrons  

---

**Q42.** A substance that speeds up a reaction without being used up is a:

A. product  
B. indicator  
C. reactant  
D. catalyst  

---

**Q43.** Increasing the temperature of a reaction:

A. stops the reaction  
B. increases the rate  
C. decreases the rate  
D. has no effect  

---

**Q44.** Increasing the surface area of a solid reactant:

A. stops the reaction  
B. increases the rate  
C. has no effect  
D. decreases the rate  

---

**Q45.** The concentration of a solution containing 0.5 moles in 250 cm³ is:

A. 0.25 mol/dm³  
B. 0.5 mol/dm³  
C. 2 mol/dm³  
D. 1 mol/dm³  

---

**Q46.** The number of moles in 100 cm³ of a 0.2 mol/dm³ solution is:

A. 20  
B. 0.2  
C. 2  
D. 0.02  

---

**Q47.** A reaction that releases heat energy is:

A. neutral  
B. reversible  
C. exothermic  
D. endothermic  

---

**Q48.** A reaction that absorbs heat energy is:

A. neutral  
B. reversible  
C. exothermic  
D. endothermic  

---

**Q49.** The indicator used in a titration between a strong acid and a strong alkali is:

A. methyl orange or phenolphthalein  
B. universal indicator only  
C. litmus only  
D. starch  

---

**Q50.** The empirical formula of a compound with 40% C, 6.7% H, and 53.3% O is:

A. CH₂O  
B. CHO  
C. CH₄O  
D. C₂H₄O₂  

---

**Q51.** In the reaction 2Mg + O₂ → 2MgO, the substance reduced is:

A. oxygen  
B. magnesium oxide  
C. magnesium  
D. none  

---

**Q52.** Le Chatelier''s principle states that a system at equilibrium responds to a change by:

A. counteracting the change  
B. ignoring the change  
C. stopping the reaction  
D. increasing the change  

---

**Q53.** Increasing the pressure on N₂ + 3H₂ ⇌ 2NH₃ favours:

A. the forward reaction  
B. no change  
C. the backward reaction  
D. neither direction  

---

**Q54.** The number of moles in 48 dm³ of oxygen gas at r.t.p. is:

A. 2  
B. 4  
C. 0.5  
D. 1  

---

**Q55.** One mole of a substance contains:

A. 6.02 × 10²² particles  
B. 6.02 × 10²³ particles  
C. 1.0 × 10²³ particles  
D. 6.02 × 10²⁴ particles  

---

**Q56.** The number of moles in 8 g of oxygen gas (O₂, Ar = 16) is:

A. 0.5  
B. 0.25  
C. 2  
D. 1  

---

**Q57.** The mass of 0.5 moles of CO₂ (Mr = 44) is:

A. 44 g  
B. 11 g  
C. 22 g  
D. 88 g  

---

**Q58.** The molar volume of a gas at room temperature and pressure is:

A. 22.4 dm³  
B. 6.02 dm³  
C. 100 dm³  
D. 24 dm³  

---

**Q59.** The volume of 0.5 moles of CO₂ at r.t.p. is:

A. 24 dm³  
B. 48 dm³  
C. 12 dm³  
D. 6 dm³  

---

**Q60.** An acid turns blue litmus:

A. blue  
B. colourless  
C. green  
D. red  

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
  where subject = 'Chemistry'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Chemistry

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ATOMIC STRUCTURE

**Q1.** Atomic structure: A laboratory setup for atomic structure records readings 2, 3, 4, and 5 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Atomic structure: A laboratory setup for atomic structure records readings 3, 4, 5, and 7 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

![Titration apparatus](/paper-diagrams/chemistry-titration.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Atomic structure: A laboratory setup for atomic structure records readings 4, 5, 6, and 9 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Atomic structure: A laboratory setup for atomic structure records readings 5, 6, 7, and 11 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Atomic structure: A laboratory setup for atomic structure records readings 6, 7, 8, and 13 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: BONDING

**Q6.** Bonding: Experiment 6 studies bonding by changing concentration 0.7 mol dm-3, temperature 26 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Bonding: Experiment 7 studies bonding by changing concentration 0.8 mol dm-3, temperature 27 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Bonding: Experiment 8 studies bonding by changing concentration 0.9 mol dm-3, temperature 28 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Bonding: Experiment 9 studies bonding by changing concentration 1 mol dm-3, temperature 29 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Bonding: Experiment 10 studies bonding by changing concentration 1.1 mol dm-3, temperature 30 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ENERGETICS

**Q11.** Energetics: Experiment 11 studies energetics by changing concentration 1.2 mol dm-3, temperature 31 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Energetics: Experiment 12 studies energetics by changing concentration 1.3 mol dm-3, temperature 32 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Energetics: Experiment 13 studies energetics by changing concentration 1.4 mol dm-3, temperature 33 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Energetics: Experiment 14 studies energetics by changing concentration 1.5 mol dm-3, temperature 34 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Energetics: Experiment 15 studies energetics by changing concentration 1.6 mol dm-3, temperature 35 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: KINETICS

**Q16.** Kinetics: Experiment 16 studies kinetics by changing concentration 1.7 mol dm-3, temperature 36 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Kinetics: Experiment 17 studies kinetics by changing concentration 1.8 mol dm-3, temperature 37 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Kinetics: Experiment 18 studies kinetics by changing concentration 1.9 mol dm-3, temperature 38 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Kinetics: Experiment 19 studies kinetics by changing concentration 2 mol dm-3, temperature 39 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Kinetics: Experiment 20 studies kinetics by changing concentration 2.1 mol dm-3, temperature 40 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: EQUILIBRIUM

**Q21.** Equilibrium: Experiment 21 studies equilibrium by changing concentration 2.2 mol dm-3, temperature 41 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Equilibrium: Experiment 22 studies equilibrium by changing concentration 2.3 mol dm-3, temperature 42 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Equilibrium: Experiment 23 studies equilibrium by changing concentration 2.4 mol dm-3, temperature 43 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Equilibrium: Experiment 24 studies equilibrium by changing concentration 2.5 mol dm-3, temperature 44 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Equilibrium: Experiment 25 studies equilibrium by changing concentration 2.6 mol dm-3, temperature 45 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: ORGANIC CHEMISTRY

**Q26.** Organic chemistry: Experiment 26 studies organic chemistry by changing concentration 2.7 mol dm-3, temperature 46 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Organic chemistry: Experiment 27 studies organic chemistry by changing concentration 2.8 mol dm-3, temperature 47 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Organic chemistry: Experiment 28 studies organic chemistry by changing concentration 2.9 mol dm-3, temperature 48 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Organic chemistry: Experiment 29 studies organic chemistry by changing concentration 3 mol dm-3, temperature 49 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Organic chemistry: Experiment 30 studies organic chemistry by changing concentration 3.1 mol dm-3, temperature 50 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ELECTROCHEMISTRY

**Q31.** Electrochemistry: Experiment 31 studies electrochemistry by changing concentration 3.2 mol dm-3, temperature 51 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Electrochemistry: Experiment 32 studies electrochemistry by changing concentration 3.3 mol dm-3, temperature 52 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Electrochemistry: Experiment 33 studies electrochemistry by changing concentration 3.4 mol dm-3, temperature 53 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Electrochemistry: Experiment 34 studies electrochemistry by changing concentration 3.5 mol dm-3, temperature 54 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Electrochemistry: Experiment 35 studies electrochemistry by changing concentration 3.6 mol dm-3, temperature 55 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: QUALITATIVE ANALYSIS

**Q36.** Qualitative analysis: Experiment 36 studies qualitative analysis by changing concentration 3.7 mol dm-3, temperature 56 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Qualitative analysis: Experiment 37 studies qualitative analysis by changing concentration 3.8 mol dm-3, temperature 57 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Qualitative analysis: Experiment 38 studies qualitative analysis by changing concentration 3.9 mol dm-3, temperature 58 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Qualitative analysis: Experiment 39 studies qualitative analysis by changing concentration 4 mol dm-3, temperature 59 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Qualitative analysis: Experiment 40 studies qualitative analysis by changing concentration 4.1 mol dm-3, temperature 60 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

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
  where subject = 'Chemistry'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Chemistry

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ATOMIC STRUCTURE

**Q1.** Atomic structure: A laboratory setup for atomic structure records readings 3, 5, 7, and 8 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Atomic structure: A laboratory setup for atomic structure records readings 4, 6, 8, and 10 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Atomic structure: A laboratory setup for atomic structure records readings 5, 7, 9, and 12 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Atomic structure: A laboratory setup for atomic structure records readings 6, 8, 10, and 14 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Atomic structure: A laboratory setup for atomic structure records readings 7, 9, 11, and 16 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: BONDING

**Q6.** Bonding: Experiment 6 studies bonding by changing concentration 0.8 mol dm-3, temperature 26 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

![Electrochemical cell](/paper-diagrams/chemistry-cell.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Bonding: Experiment 7 studies bonding by changing concentration 0.9 mol dm-3, temperature 27 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Bonding: Experiment 8 studies bonding by changing concentration 1 mol dm-3, temperature 28 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Bonding: Experiment 9 studies bonding by changing concentration 1.1 mol dm-3, temperature 29 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Bonding: Experiment 10 studies bonding by changing concentration 1.2 mol dm-3, temperature 30 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ENERGETICS

**Q11.** Energetics: Experiment 11 studies energetics by changing concentration 1.3 mol dm-3, temperature 31 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Energetics: Experiment 12 studies energetics by changing concentration 1.4 mol dm-3, temperature 32 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Energetics: Experiment 13 studies energetics by changing concentration 1.5 mol dm-3, temperature 33 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Energetics: Experiment 14 studies energetics by changing concentration 1.6 mol dm-3, temperature 34 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Energetics: Experiment 15 studies energetics by changing concentration 1.7 mol dm-3, temperature 35 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: KINETICS

**Q16.** Kinetics: Experiment 16 studies kinetics by changing concentration 1.8 mol dm-3, temperature 36 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Kinetics: Experiment 17 studies kinetics by changing concentration 1.9 mol dm-3, temperature 37 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Kinetics: Experiment 18 studies kinetics by changing concentration 2 mol dm-3, temperature 38 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Kinetics: Experiment 19 studies kinetics by changing concentration 2.1 mol dm-3, temperature 39 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Kinetics: Experiment 20 studies kinetics by changing concentration 2.2 mol dm-3, temperature 40 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: EQUILIBRIUM

**Q21.** Equilibrium: Experiment 21 studies equilibrium by changing concentration 2.3 mol dm-3, temperature 41 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Equilibrium: Experiment 22 studies equilibrium by changing concentration 2.4 mol dm-3, temperature 42 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Equilibrium: Experiment 23 studies equilibrium by changing concentration 2.5 mol dm-3, temperature 43 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Equilibrium: Experiment 24 studies equilibrium by changing concentration 2.6 mol dm-3, temperature 44 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Equilibrium: Experiment 25 studies equilibrium by changing concentration 2.7 mol dm-3, temperature 45 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: ORGANIC CHEMISTRY

**Q26.** Organic chemistry: Experiment 26 studies organic chemistry by changing concentration 2.8 mol dm-3, temperature 46 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Organic chemistry: Experiment 27 studies organic chemistry by changing concentration 2.9 mol dm-3, temperature 47 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Organic chemistry: Experiment 28 studies organic chemistry by changing concentration 3 mol dm-3, temperature 48 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Organic chemistry: Experiment 29 studies organic chemistry by changing concentration 3.1 mol dm-3, temperature 49 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Organic chemistry: Experiment 30 studies organic chemistry by changing concentration 3.2 mol dm-3, temperature 50 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ELECTROCHEMISTRY

**Q31.** Electrochemistry: Experiment 31 studies electrochemistry by changing concentration 3.3 mol dm-3, temperature 51 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Electrochemistry: Experiment 32 studies electrochemistry by changing concentration 3.4 mol dm-3, temperature 52 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Electrochemistry: Experiment 33 studies electrochemistry by changing concentration 3.5 mol dm-3, temperature 53 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Electrochemistry: Experiment 34 studies electrochemistry by changing concentration 3.6 mol dm-3, temperature 54 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Electrochemistry: Experiment 35 studies electrochemistry by changing concentration 3.7 mol dm-3, temperature 55 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: QUALITATIVE ANALYSIS

**Q36.** Qualitative analysis: Experiment 36 studies qualitative analysis by changing concentration 3.8 mol dm-3, temperature 56 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Qualitative analysis: Experiment 37 studies qualitative analysis by changing concentration 3.9 mol dm-3, temperature 57 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Qualitative analysis: Experiment 38 studies qualitative analysis by changing concentration 4 mol dm-3, temperature 58 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Qualitative analysis: Experiment 39 studies qualitative analysis by changing concentration 4.1 mol dm-3, temperature 59 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Qualitative analysis: Experiment 40 studies qualitative analysis by changing concentration 4.2 mol dm-3, temperature 60 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

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