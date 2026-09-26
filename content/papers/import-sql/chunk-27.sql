begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Philosophy'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level PHILOSOPHY P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Philosophy

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ESSAY - LOGIC

**Q1.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: ESSAY - ETHICS

**Q2.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ESSAY - EPISTEMOLOGY

**Q3.** Essay - Epistemology: A detailed examination question covering essay - epistemology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: ESSAY - METAPHYSICS

**Q4.** Essay - Metaphysics: A detailed examination question covering essay - metaphysics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: ESSAY - AFRICAN PHILOSOPHY

**Q5.** Essay - African Philosophy: A detailed examination question covering essay - african philosophy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ESSAY - POLITICAL

**Q6.** Essay - Political: A detailed examination question covering essay - political concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ESSAY - APPLIED

**Q7.** Essay - Applied: A detailed examination question covering essay - applied concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: TEXT ANALYSIS

**Q8.** Text Analysis: A detailed examination question covering text analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: ESSAY - LOGIC

**Q9.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: ESSAY - ETHICS

**Q10.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Philosophy'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level PHILOSOPHY P2 SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Philosophy

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ESSAY - LOGIC

**Q1.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: ESSAY - ETHICS

**Q2.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ESSAY - EPISTEMOLOGY

**Q3.** Essay - Epistemology: A detailed examination question covering essay - epistemology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: ESSAY - METAPHYSICS

**Q4.** Essay - Metaphysics: A detailed examination question covering essay - metaphysics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: ESSAY - AFRICAN PHILOSOPHY

**Q5.** Essay - African Philosophy: A detailed examination question covering essay - african philosophy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ESSAY - POLITICAL

**Q6.** Essay - Political: A detailed examination question covering essay - political concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ESSAY - APPLIED

**Q7.** Essay - Applied: A detailed examination question covering essay - applied concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: TEXT ANALYSIS

**Q8.** Text Analysis: A detailed examination question covering text analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: ESSAY - LOGIC

**Q9.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: ESSAY - ETHICS

**Q10.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Philosophy'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level PHILOSOPHY P2 SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Philosophy

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ESSAY - LOGIC

**Q1.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: ESSAY - ETHICS

**Q2.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ESSAY - EPISTEMOLOGY

**Q3.** Essay - Epistemology: A detailed examination question covering essay - epistemology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: ESSAY - METAPHYSICS

**Q4.** Essay - Metaphysics: A detailed examination question covering essay - metaphysics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: ESSAY - AFRICAN PHILOSOPHY

**Q5.** Essay - African Philosophy: A detailed examination question covering essay - african philosophy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ESSAY - POLITICAL

**Q6.** Essay - Political: A detailed examination question covering essay - political concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ESSAY - APPLIED

**Q7.** Essay - Applied: A detailed examination question covering essay - applied concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: TEXT ANALYSIS

**Q8.** Text Analysis: A detailed examination question covering text analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: ESSAY - LOGIC

**Q9.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: ESSAY - ETHICS

**Q10.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Philosophy'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level PHILOSOPHY P2 SET 8

## Structural Question Bank - Set 8

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Philosophy

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ESSAY - LOGIC

**Q1.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: ESSAY - ETHICS

**Q2.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ESSAY - EPISTEMOLOGY

**Q3.** Essay - Epistemology: A detailed examination question covering essay - epistemology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: ESSAY - METAPHYSICS

**Q4.** Essay - Metaphysics: A detailed examination question covering essay - metaphysics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: ESSAY - AFRICAN PHILOSOPHY

**Q5.** Essay - African Philosophy: A detailed examination question covering essay - african philosophy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ESSAY - POLITICAL

**Q6.** Essay - Political: A detailed examination question covering essay - political concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ESSAY - APPLIED

**Q7.** Essay - Applied: A detailed examination question covering essay - applied concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: TEXT ANALYSIS

**Q8.** Text Analysis: A detailed examination question covering text analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: ESSAY - LOGIC

**Q9.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: ESSAY - ETHICS

**Q10.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Physics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The SI unit of force is the:

A. newton  
B. joule  
C. watt  
D. pascal  

---

**Q2.** The SI unit of work is the:

A. joule  
B. newton  
C. pascal  
D. watt  

---

**Q3.** The SI unit of power is the:

A. watt  
B. newton  
C. joule  
D. pascal  

---

**Q4.** The SI unit of pressure is the:

A. pascal  
B. joule  
C. watt  
D. newton  

---

**Q5.** The rate of change of velocity is called:

A. acceleration  
B. momentum  
C. speed  
D. displacement  

---

**Q6.** The distance travelled per unit time is called:

A. speed  
B. displacement  
C. acceleration  
D. velocity  

---

**Q7.** A car accelerates uniformly from rest to 20 m/s in 5 s. Its acceleration is:

A. 5 m/s²  
B. 4 m/s²  
C. 100 m/s²  
D. 0.25 m/s²  

---

**Q8.** The product of mass and velocity is called:

A. force  
B. momentum  
C. power  
D. work  

---

**Q9.** The force that opposes motion is called:

A. gravity  
B. tension  
C. friction  
D. upthrust  

---

**Q10.** The energy of a moving object is called:

A. potential energy  
B. heat energy  
C. sound energy  
D. kinetic energy  

---

**Q11.** The energy stored in a raised object is called:

A. kinetic energy  
B. light energy  
C. potential energy  
D. heat energy  

---

**Q12.** The kinetic energy of a 2 kg object moving at 3 m/s is:

A. 6 J  
B. 12 J  
C. 18 J  
D. 9 J  

---

**Q13.** The work done when a force of 10 N moves an object 5 m is:

A. 15 J  
B. 50 J  
C. 2 J  
D. 0.5 J  

---

**Q14.** The power of a machine that does 300 J of work in 10 s is:

A. 3 W  
B. 30 W  
C. 0.03 W  
D. 3000 W  

---

**Q15.** The pressure exerted by a force of 50 N on an area of 2 m² is:

A. 52 Pa  
B. 100 Pa  
C. 25 Pa  
D. 0.04 Pa  

---

**Q16.** The principle of moments states that for equilibrium:

A. work done = energy  
B. sum of forces = 0  
C. power = work × time  
D. sum of clockwise moments = sum of anticlockwise moments  

---

**Q17.** The density of a substance is defined as:

A. mass per unit area  
B. volume per unit mass  
C. mass per unit volume  
D. weight per unit volume  

---

**Q18.** A block of mass 270 g and volume 100 cm³ has a density of:

A. 27 g/cm³  
B. 27000 g/cm³  
C. 0.37 g/cm³  
D. 2.7 g/cm³  

---

**Q19.** The upthrust on a body in a fluid is equal to:

A. volume of the body  
B. weight of fluid displaced  
C. weight of the body  
D. mass of the body  

---

**Q20.** A machine with a mechanical advantage of 4 and velocity ratio of 5 has an efficiency of:

A. 9%  
B. 80%  
C. 125%  
D. 20%  

---

**Q21.** The velocity ratio of a lever with effort arm 2 m and load arm 0.5 m is:

A. 1.5  
B. 0.25  
C. 4  
D. 2.5  

---

**Q22.** A body moving with constant velocity has:

A. constant acceleration  
B. increasing acceleration  
C. decreasing acceleration  
D. zero acceleration  

---

**Q23.** The SI unit of momentum is:

A. J  
B. N m  
C. kg m/s  
D. kg m/s²  

---

**Q24.** The gravitational potential energy of a 2 kg mass raised 5 m (g = 10 m/s²) is:

A. 20 J  
B. 50 J  
C. 10 J  
D. 100 J  

---

**Q25.** The speed of a ball dropped from 20 m just before hitting the ground (g = 10 m/s²) is:

A. 20 m/s  
B. 10 m/s  
C. 40 m/s  
D. 200 m/s  

---

**Q26.** The centre of gravity of a uniform rod is at its:

A. midpoint  
B. end  
C. centre of mass of the rod  
D. one-quarter point  

---

**Q27.** A body floats when its weight is:

A. equal to the upthrust  
B. less than the upthrust  
C. greater than the upthrust  
D. zero  

---

**Q28.** The relative density of a substance with density 800 kg/m³ (water = 1000 kg/m³) is:

A. 0.8  
B. 80  
C. 1.25  
D. 8  

---

**Q29.** The change in momentum of a 0.5 kg ball going from 4 m/s to 3 m/s in the opposite direction is:

A. 3.5 kg m/s  
B. 1 kg m/s  
C. 0.5 kg m/s  
D. 7 kg m/s  

---

**Q30.** A car travelling at 20 m/s has a kinetic energy of 200 kJ. Its mass is:

A. 1000 kg  
B. 10000 kg  
C. 500 kg  
D. 2000 kg  

---

**Q31.** The SI unit of frequency is the:

A. watt  
B. hertz  
C. joule  
D. newton  

---

**Q32.** The distance between two successive crests of a wave is the:

A. amplitude  
B. wavelength  
C. period  
D. frequency  

---

**Q33.** The maximum displacement of a wave from its rest position is the:

A. wavelength  
B. frequency  
C. amplitude  
D. speed  

---

**Q34.** Sound waves are:

A. transverse  
B. electromagnetic  
C. stationary  
D. longitudinal  

---

**Q35.** Light waves are:

A. longitudinal  
B. sound  
C. transverse  
D. mechanical  

---

**Q36.** The speed of a wave with frequency 50 Hz and wavelength 4 m is:

A. 12.5 m/s  
B. 46 m/s  
C. 54 m/s  
D. 200 m/s  

---

**Q37.** The angle of reflection is equal to the angle of:

A. deviation  
B. incidence  
C. refraction  
D. critical angle  

---

**Q38.** The image formed by a plane mirror is:

A. virtual and upright  
B. virtual and laterally inverted  
C. real and upright  
D. real and inverted  

---

**Q39.** The bending of light as it passes from one medium to another is called:

A. diffraction  
B. reflection  
C. refraction  
D. dispersion  

---

**Q40.** The refractive index of a medium is the ratio of:

A. angle of incidence to angle of refraction  
B. speed in the medium to speed in vacuum  
C. wavelength to frequency  
D. speed of light in vacuum to speed in the medium  

---

**Q41.** Total internal reflection occurs when light travels from:

A. air to glass at any angle  
B. a denser to a rarer medium at any angle  
C. a denser to a rarer medium at an angle greater than the critical angle  
D. a rarer to a denser medium  

---

**Q42.** The critical angle for glass is about:

A. 30°  
B. 60°  
C. 90°  
D. 42°  

---

**Q43.** The lens that converges light rays is a:

A. prism  
B. convex lens  
C. concave lens  
D. plane mirror  

---

**Q44.** The lens formula is:

A. f = uv  
B. 1/f = 1/v + 1/u  
C. 1/f = v + u  
D. f = v + u  

---

**Q45.** The SI unit of electric current is the:

A. watt  
B. volt  
C. ampere  
D. ohm  

---

**Q46.** The SI unit of potential difference is the:

A. watt  
B. ampere  
C. ohm  
D. volt  

---

**Q47.** The SI unit of resistance is the:

A. watt  
B. ampere  
C. ohm  
D. volt  

---

**Q48.** Ohm''s law states that:

A. I = VR  
B. V = R/I  
C. V = I/R  
D. V = IR  

---

**Q49.** The charge that passes when 2 A flows for 10 s is:

A. 20 C  
B. 5 C  
C. 0.2 C  
D. 12 C  

---

**Q50.** Two resistors of 6 Ω and 3 Ω in series have a total resistance of:

A. 9 Ω  
B. 2 Ω  
C. 0.5 Ω  
D. 18 Ω  

---

**Q51.** Two resistors of 6 Ω and 3 Ω in parallel have a total resistance of:

A. 2 Ω  
B. 18 Ω  
C. 9 Ω  
D. 0.5 Ω  

---

**Q52.** The power of a device operating at 240 V drawing 5 A is:

A. 1200 W  
B. 245 W  
C. 235 W  
D. 48 W  

---

**Q53.** The energy used by a 1200 W heater in 2 hours is:

A. 2.4 kWh  
B. 0.5 kWh  
C. 2400 kWh  
D. 600 kWh  

---

**Q54.** The specific heat capacity of water is:

A. 4200 J/kg°C  
B. 4.2 J/kg°C  
C. 42000 J/kg°C  
D. 420 J/kg°C  

---

**Q55.** The heat needed to raise 2 kg of water from 20°C to 80°C is:

A. 504 J  
B. 504000 J  
C. 5040 J  
D. 168000 J  

---

**Q56.** The specific latent heat of fusion of ice is:

A. 3.34 J/kg  
B. 3.34 × 10⁵ J/kg  
C. 3.34 × 10³ J/kg  
D. 334 J/kg  

---

**Q57.** A magnet has two poles called:

A. east and west  
B. positive and negative  
C. north and south  
D. top and bottom  

---

**Q58.** The strength of an electromagnet increases when:

A. the current decreases  
B. the core is removed  
C. the wire is thinner  
D. the number of turns increases  

---

**Q59.** The pitch of a sound depends on its:

A. amplitude  
B. wavelength  
C. frequency  
D. speed  

---

**Q60.** The loudness of a sound depends on its:

A. frequency  
B. wavelength  
C. speed  
D. amplitude  

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
  where subject = 'Physics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The SI unit of pressure is the:

A. pascal  
B. newton  
C. joule  
D. watt  

---

**Q2.** The rate of change of velocity is called:

A. acceleration  
B. speed  
C. momentum  
D. displacement  

---

**Q3.** The distance travelled per unit time is called:

A. speed  
B. acceleration  
C. velocity  
D. displacement  

---

**Q4.** A car accelerates uniformly from rest to 20 m/s in 5 s. Its acceleration is:

A. 4 m/s²  
B. 100 m/s²  
C. 0.25 m/s²  
D. 5 m/s²  

---

**Q5.** The product of mass and velocity is called:

A. momentum  
B. power  
C. force  
D. work  

---

**Q6.** The force that opposes motion is called:

A. friction  
B. upthrust  
C. tension  
D. gravity  

---

**Q7.** The energy of a moving object is called:

A. potential energy  
B. kinetic energy  
C. heat energy  
D. sound energy  

---

**Q8.** The energy stored in a raised object is called:

A. kinetic energy  
B. potential energy  
C. light energy  
D. heat energy  

---

**Q9.** The kinetic energy of a 2 kg object moving at 3 m/s is:

A. 6 J  
B. 18 J  
C. 9 J  
D. 12 J  

---

**Q10.** The work done when a force of 10 N moves an object 5 m is:

A. 2 J  
B. 15 J  
C. 0.5 J  
D. 50 J  

---

**Q11.** The power of a machine that does 300 J of work in 10 s is:

A. 3000 W  
B. 0.03 W  
C. 30 W  
D. 3 W  

---

**Q12.** The pressure exerted by a force of 50 N on an area of 2 m² is:

A. 100 Pa  
B. 0.04 Pa  
C. 52 Pa  
D. 25 Pa  

---

**Q13.** The principle of moments states that for equilibrium:

A. work done = energy  
B. sum of clockwise moments = sum of anticlockwise moments  
C. sum of forces = 0  
D. power = work × time  

---

**Q14.** The density of a substance is defined as:

A. mass per unit area  
B. mass per unit volume  
C. volume per unit mass  
D. weight per unit volume  

---

**Q15.** A block of mass 270 g and volume 100 cm³ has a density of:

A. 27 g/cm³  
B. 0.37 g/cm³  
C. 2.7 g/cm³  
D. 27000 g/cm³  

---

**Q16.** The upthrust on a body in a fluid is equal to:

A. mass of the body  
B. weight of the body  
C. volume of the body  
D. weight of fluid displaced  

---

**Q17.** A machine with a mechanical advantage of 4 and velocity ratio of 5 has an efficiency of:

A. 125%  
B. 9%  
C. 80%  
D. 20%  

---

**Q18.** The velocity ratio of a lever with effort arm 2 m and load arm 0.5 m is:

A. 2.5  
B. 1.5  
C. 0.25  
D. 4  

---

**Q19.** A body moving with constant velocity has:

A. constant acceleration  
B. zero acceleration  
C. increasing acceleration  
D. decreasing acceleration  

---

**Q20.** The SI unit of momentum is:

A. J  
B. kg m/s  
C. N m  
D. kg m/s²  

---

**Q21.** The gravitational potential energy of a 2 kg mass raised 5 m (g = 10 m/s²) is:

A. 20 J  
B. 10 J  
C. 100 J  
D. 50 J  

---

**Q22.** The speed of a ball dropped from 20 m just before hitting the ground (g = 10 m/s²) is:

A. 200 m/s  
B. 10 m/s  
C. 40 m/s  
D. 20 m/s  

---

**Q23.** The centre of gravity of a uniform rod is at its:

A. centre of mass of the rod  
B. one-quarter point  
C. midpoint  
D. end  

---

**Q24.** A body floats when its weight is:

A. zero  
B. less than the upthrust  
C. greater than the upthrust  
D. equal to the upthrust  

---

**Q25.** The relative density of a substance with density 800 kg/m³ (water = 1000 kg/m³) is:

A. 0.8  
B. 8  
C. 80  
D. 1.25  

---

**Q26.** The change in momentum of a 0.5 kg ball going from 4 m/s to 3 m/s in the opposite direction is:

A. 3.5 kg m/s  
B. 0.5 kg m/s  
C. 1 kg m/s  
D. 7 kg m/s  

---

**Q27.** A car travelling at 20 m/s has a kinetic energy of 200 kJ. Its mass is:

A. 1000 kg  
B. 500 kg  
C. 2000 kg  
D. 10000 kg  

---

**Q28.** The SI unit of force is the:

A. newton  
B. watt  
C. pascal  
D. joule  

---

**Q29.** The SI unit of work is the:

A. joule  
B. pascal  
C. newton  
D. watt  

---

**Q30.** The SI unit of power is the:

A. watt  
B. pascal  
C. newton  
D. joule  

---

**Q31.** Sound waves are:

A. transverse  
B. longitudinal  
C. electromagnetic  
D. stationary  

---

**Q32.** Light waves are:

A. longitudinal  
B. transverse  
C. sound  
D. mechanical  

---

**Q33.** The speed of a wave with frequency 50 Hz and wavelength 4 m is:

A. 12.5 m/s  
B. 54 m/s  
C. 200 m/s  
D. 46 m/s  

---

**Q34.** The angle of reflection is equal to the angle of:

A. refraction  
B. deviation  
C. critical angle  
D. incidence  

---

**Q35.** The image formed by a plane mirror is:

A. real and inverted  
B. real and upright  
C. virtual and laterally inverted  
D. virtual and upright  

---

**Q36.** The bending of light as it passes from one medium to another is called:

A. reflection  
B. dispersion  
C. diffraction  
D. refraction  

---

**Q37.** The refractive index of a medium is the ratio of:

A. angle of incidence to angle of refraction  
B. speed of light in vacuum to speed in the medium  
C. speed in the medium to speed in vacuum  
D. wavelength to frequency  

---

**Q38.** Total internal reflection occurs when light travels from:

A. air to glass at any angle  
B. a denser to a rarer medium at an angle greater than the critical angle  
C. a denser to a rarer medium at any angle  
D. a rarer to a denser medium  

---

**Q39.** The critical angle for glass is about:

A. 30°  
B. 90°  
C. 42°  
D. 60°  

---

**Q40.** The lens that converges light rays is a:

A. plane mirror  
B. concave lens  
C. prism  
D. convex lens  

---

**Q41.** The lens formula is:

A. 1/f = v + u  
B. f = uv  
C. 1/f = 1/v + 1/u  
D. f = v + u  

---

**Q42.** The SI unit of electric current is the:

A. ohm  
B. watt  
C. volt  
D. ampere  

---

**Q43.** The SI unit of potential difference is the:

A. watt  
B. volt  
C. ampere  
D. ohm  

---

**Q44.** The SI unit of resistance is the:

A. watt  
B. ohm  
C. ampere  
D. volt  

---

**Q45.** Ohm''s law states that:

A. I = VR  
B. V = I/R  
C. V = IR  
D. V = R/I  

---

**Q46.** The charge that passes when 2 A flows for 10 s is:

A. 12 C  
B. 5 C  
C. 0.2 C  
D. 20 C  

---

**Q47.** Two resistors of 6 Ω and 3 Ω in series have a total resistance of:

A. 0.5 Ω  
B. 18 Ω  
C. 9 Ω  
D. 2 Ω  

---

**Q48.** Two resistors of 6 Ω and 3 Ω in parallel have a total resistance of:

A. 0.5 Ω  
B. 18 Ω  
C. 9 Ω  
D. 2 Ω  

---

**Q49.** The power of a device operating at 240 V drawing 5 A is:

A. 1200 W  
B. 48 W  
C. 245 W  
D. 235 W  

---

**Q50.** The energy used by a 1200 W heater in 2 hours is:

A. 2.4 kWh  
B. 2400 kWh  
C. 0.5 kWh  
D. 600 kWh  

---

**Q51.** The specific heat capacity of water is:

A. 4200 J/kg°C  
B. 42000 J/kg°C  
C. 420 J/kg°C  
D. 4.2 J/kg°C  

---

**Q52.** The heat needed to raise 2 kg of water from 20°C to 80°C is:

A. 504000 J  
B. 5040 J  
C. 168000 J  
D. 504 J  

---

**Q53.** The specific latent heat of fusion of ice is:

A. 3.34 × 10⁵ J/kg  
B. 3.34 × 10³ J/kg  
C. 3.34 J/kg  
D. 334 J/kg  

---

**Q54.** A magnet has two poles called:

A. north and south  
B. top and bottom  
C. positive and negative  
D. east and west  

---

**Q55.** The strength of an electromagnet increases when:

A. the current decreases  
B. the number of turns increases  
C. the core is removed  
D. the wire is thinner  

---

**Q56.** The pitch of a sound depends on its:

A. amplitude  
B. frequency  
C. wavelength  
D. speed  

---

**Q57.** The loudness of a sound depends on its:

A. frequency  
B. speed  
C. amplitude  
D. wavelength  

---

**Q58.** The SI unit of frequency is the:

A. watt  
B. joule  
C. newton  
D. hertz  

---

**Q59.** The distance between two successive crests of a wave is the:

A. amplitude  
B. period  
C. wavelength  
D. frequency  

---

**Q60.** The maximum displacement of a wave from its rest position is the:

A. wavelength  
B. speed  
C. frequency  
D. amplitude  

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
  where subject = 'Physics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** A car accelerates uniformly from rest to 20 m/s in 5 s. Its acceleration is:

A. 4 m/s²  
B. 5 m/s²  
C. 100 m/s²  
D. 0.25 m/s²  

---

**Q2.** The product of mass and velocity is called:

A. momentum  
B. force  
C. power  
D. work  

---

**Q3.** The force that opposes motion is called:

A. friction  
B. tension  
C. gravity  
D. upthrust  

---

**Q4.** The energy of a moving object is called:

A. kinetic energy  
B. heat energy  
C. sound energy  
D. potential energy  

---

**Q5.** The energy stored in a raised object is called:

A. potential energy  
B. light energy  
C. kinetic energy  
D. heat energy  

---

**Q6.** The kinetic energy of a 2 kg object moving at 3 m/s is:

A. 9 J  
B. 12 J  
C. 18 J  
D. 6 J  

---

**Q7.** The work done when a force of 10 N moves an object 5 m is:

A. 2 J  
B. 50 J  
C. 15 J  
D. 0.5 J  

---

**Q8.** The power of a machine that does 300 J of work in 10 s is:

A. 3000 W  
B. 30 W  
C. 0.03 W  
D. 3 W  

---

**Q9.** The pressure exerted by a force of 50 N on an area of 2 m² is:

A. 100 Pa  
B. 52 Pa  
C. 25 Pa  
D. 0.04 Pa  

---

**Q10.** The principle of moments states that for equilibrium:

A. sum of forces = 0  
B. work done = energy  
C. power = work × time  
D. sum of clockwise moments = sum of anticlockwise moments  

---

**Q11.** The density of a substance is defined as:

A. weight per unit volume  
B. volume per unit mass  
C. mass per unit volume  
D. mass per unit area  

---

**Q12.** A block of mass 270 g and volume 100 cm³ has a density of:

A. 0.37 g/cm³  
B. 27000 g/cm³  
C. 27 g/cm³  
D. 2.7 g/cm³  

---

**Q13.** The upthrust on a body in a fluid is equal to:

A. mass of the body  
B. weight of fluid displaced  
C. weight of the body  
D. volume of the body  

---

**Q14.** A machine with a mechanical advantage of 4 and velocity ratio of 5 has an efficiency of:

A. 125%  
B. 80%  
C. 9%  
D. 20%  

---

**Q15.** The velocity ratio of a lever with effort arm 2 m and load arm 0.5 m is:

A. 2.5  
B. 0.25  
C. 4  
D. 1.5  

---

**Q16.** A body moving with constant velocity has:

A. decreasing acceleration  
B. increasing acceleration  
C. constant acceleration  
D. zero acceleration  

---

**Q17.** The SI unit of momentum is:

A. N m  
B. J  
C. kg m/s  
D. kg m/s²  

---

**Q18.** The gravitational potential energy of a 2 kg mass raised 5 m (g = 10 m/s²) is:

A. 50 J  
B. 20 J  
C. 10 J  
D. 100 J  

---

**Q19.** The speed of a ball dropped from 20 m just before hitting the ground (g = 10 m/s²) is:

A. 200 m/s  
B. 20 m/s  
C. 10 m/s  
D. 40 m/s  

---

**Q20.** The centre of gravity of a uniform rod is at its:

A. centre of mass of the rod  
B. midpoint  
C. one-quarter point  
D. end  

---

**Q21.** A body floats when its weight is:

A. zero  
B. greater than the upthrust  
C. equal to the upthrust  
D. less than the upthrust  

---

**Q22.** The relative density of a substance with density 800 kg/m³ (water = 1000 kg/m³) is:

A. 1.25  
B. 8  
C. 80  
D. 0.8  

---

**Q23.** The change in momentum of a 0.5 kg ball going from 4 m/s to 3 m/s in the opposite direction is:

A. 1 kg m/s  
B. 7 kg m/s  
C. 3.5 kg m/s  
D. 0.5 kg m/s  

---

**Q24.** A car travelling at 20 m/s has a kinetic energy of 200 kJ. Its mass is:

A. 10000 kg  
B. 500 kg  
C. 2000 kg  
D. 1000 kg  

---

**Q25.** The SI unit of force is the:

A. newton  
B. joule  
C. watt  
D. pascal  

---

**Q26.** The SI unit of work is the:

A. joule  
B. newton  
C. pascal  
D. watt  

---

**Q27.** The SI unit of power is the:

A. watt  
B. newton  
C. joule  
D. pascal  

---

**Q28.** The SI unit of pressure is the:

A. pascal  
B. joule  
C. watt  
D. newton  

---

**Q29.** The rate of change of velocity is called:

A. acceleration  
B. momentum  
C. speed  
D. displacement  

---

**Q30.** The distance travelled per unit time is called:

A. speed  
B. displacement  
C. acceleration  
D. velocity  

---

**Q31.** The angle of reflection is equal to the angle of:

A. refraction  
B. incidence  
C. deviation  
D. critical angle  

---

**Q32.** The image formed by a plane mirror is:

A. real and inverted  
B. virtual and laterally inverted  
C. real and upright  
D. virtual and upright  

---

**Q33.** The bending of light as it passes from one medium to another is called:

A. reflection  
B. diffraction  
C. refraction  
D. dispersion  

---

**Q34.** The refractive index of a medium is the ratio of:

A. speed in the medium to speed in vacuum  
B. angle of incidence to angle of refraction  
C. wavelength to frequency  
D. speed of light in vacuum to speed in the medium  

---

**Q35.** Total internal reflection occurs when light travels from:

A. a rarer to a denser medium  
B. a denser to a rarer medium at any angle  
C. a denser to a rarer medium at an angle greater than the critical angle  
D. air to glass at any angle  

---

**Q36.** The critical angle for glass is about:

A. 90°  
B. 60°  
C. 30°  
D. 42°  

---

**Q37.** The lens that converges light rays is a:

A. plane mirror  
B. convex lens  
C. concave lens  
D. prism  

---

**Q38.** The lens formula is:

A. 1/f = v + u  
B. 1/f = 1/v + 1/u  
C. f = uv  
D. f = v + u  

---

**Q39.** The SI unit of electric current is the:

A. ohm  
B. volt  
C. ampere  
D. watt  

---

**Q40.** The SI unit of potential difference is the:

A. ohm  
B. ampere  
C. watt  
D. volt  

---

**Q41.** The SI unit of resistance is the:

A. ampere  
B. watt  
C. ohm  
D. volt  

---

**Q42.** Ohm''s law states that:

A. V = R/I  
B. I = VR  
C. V = I/R  
D. V = IR  

---

**Q43.** The charge that passes when 2 A flows for 10 s is:

A. 12 C  
B. 20 C  
C. 5 C  
D. 0.2 C  

---

**Q44.** Two resistors of 6 Ω and 3 Ω in series have a total resistance of:

A. 0.5 Ω  
B. 9 Ω  
C. 18 Ω  
D. 2 Ω  

---

**Q45.** Two resistors of 6 Ω and 3 Ω in parallel have a total resistance of:

A. 0.5 Ω  
B. 9 Ω  
C. 2 Ω  
D. 18 Ω  

---

**Q46.** The power of a device operating at 240 V drawing 5 A is:

A. 235 W  
B. 48 W  
C. 245 W  
D. 1200 W  

---

**Q47.** The energy used by a 1200 W heater in 2 hours is:

A. 0.5 kWh  
B. 600 kWh  
C. 2.4 kWh  
D. 2400 kWh  

---

**Q48.** The specific heat capacity of water is:

A. 4.2 J/kg°C  
B. 42000 J/kg°C  
C. 420 J/kg°C  
D. 4200 J/kg°C  

---

**Q49.** The heat needed to raise 2 kg of water from 20°C to 80°C is:

A. 504000 J  
B. 504 J  
C. 5040 J  
D. 168000 J  

---

**Q50.** The specific latent heat of fusion of ice is:

A. 3.34 × 10⁵ J/kg  
B. 3.34 J/kg  
C. 3.34 × 10³ J/kg  
D. 334 J/kg  

---

**Q51.** A magnet has two poles called:

A. north and south  
B. positive and negative  
C. east and west  
D. top and bottom  

---

**Q52.** The strength of an electromagnet increases when:

A. the number of turns increases  
B. the core is removed  
C. the wire is thinner  
D. the current decreases  

---

**Q53.** The pitch of a sound depends on its:

A. frequency  
B. wavelength  
C. amplitude  
D. speed  

---

**Q54.** The loudness of a sound depends on its:

A. amplitude  
B. wavelength  
C. speed  
D. frequency  

---

**Q55.** The SI unit of frequency is the:

A. watt  
B. hertz  
C. joule  
D. newton  

---

**Q56.** The distance between two successive crests of a wave is the:

A. amplitude  
B. wavelength  
C. period  
D. frequency  

---

**Q57.** The maximum displacement of a wave from its rest position is the:

A. wavelength  
B. frequency  
C. amplitude  
D. speed  

---

**Q58.** Sound waves are:

A. transverse  
B. electromagnetic  
C. stationary  
D. longitudinal  

---

**Q59.** Light waves are:

A. longitudinal  
B. sound  
C. transverse  
D. mechanical  

---

**Q60.** The speed of a wave with frequency 50 Hz and wavelength 4 m is:

A. 12.5 m/s  
B. 46 m/s  
C. 54 m/s  
D. 200 m/s  

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
  where subject = 'Physics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MEASUREMENTS

**Q1.** Measurements: A laboratory setup for measurements records readings 2, 3, 4, and 5 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Measurements: A laboratory setup for measurements records readings 3, 4, 5, and 7 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

![Circuit diagram](/paper-diagrams/physics-circuit.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Measurements: A laboratory setup for measurements records readings 4, 5, 6, and 9 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Measurements: A laboratory setup for measurements records readings 5, 6, 7, and 11 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Measurements: A laboratory setup for measurements records readings 6, 7, 8, and 13 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MECHANICS

**Q6.** Mechanics: A laboratory setup for mechanics records readings 7, 8, 9, and 15 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Mechanics: A laboratory setup for mechanics records readings 8, 9, 10, and 17 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Mechanics: A laboratory setup for mechanics records readings 9, 10, 11, and 19 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Mechanics: A laboratory setup for mechanics records readings 10, 11, 12, and 21 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Mechanics: A laboratory setup for mechanics records readings 11, 12, 13, and 23 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: WAVES

**Q11.** Waves: A laboratory setup for waves records readings 12, 13, 14, and 25 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Waves: A laboratory setup for waves records readings 13, 14, 15, and 27 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Waves: A laboratory setup for waves records readings 14, 15, 16, and 29 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Waves: A laboratory setup for waves records readings 15, 16, 17, and 31 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Waves: A laboratory setup for waves records readings 16, 17, 18, and 33 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: ELECTRICITY

**Q16.** Electricity: A laboratory setup for electricity records readings 17, 18, 19, and 35 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Electricity: A laboratory setup for electricity records readings 18, 19, 20, and 37 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Electricity: A laboratory setup for electricity records readings 19, 20, 21, and 39 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Electricity: A laboratory setup for electricity records readings 20, 21, 22, and 41 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Electricity: A laboratory setup for electricity records readings 21, 22, 23, and 43 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: MAGNETISM

**Q21.** Magnetism: A laboratory setup for magnetism records readings 22, 23, 24, and 45 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Magnetism: A laboratory setup for magnetism records readings 23, 24, 25, and 47 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Magnetism: A laboratory setup for magnetism records readings 24, 25, 26, and 49 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Magnetism: A laboratory setup for magnetism records readings 25, 26, 27, and 51 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Magnetism: A laboratory setup for magnetism records readings 26, 27, 28, and 53 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: THERMAL PHYSICS

**Q26.** Thermal physics: A laboratory setup for thermal physics records readings 27, 28, 29, and 55 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Thermal physics: A laboratory setup for thermal physics records readings 28, 29, 30, and 57 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Thermal physics: A laboratory setup for thermal physics records readings 29, 30, 31, and 59 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Thermal physics: A laboratory setup for thermal physics records readings 30, 31, 32, and 61 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Thermal physics: A laboratory setup for thermal physics records readings 31, 32, 33, and 63 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ATOMIC PHYSICS

**Q31.** Atomic physics: A laboratory setup for atomic physics records readings 32, 33, 34, and 65 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Atomic physics: A laboratory setup for atomic physics records readings 33, 34, 35, and 67 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Atomic physics: A laboratory setup for atomic physics records readings 34, 35, 36, and 69 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Atomic physics: A laboratory setup for atomic physics records readings 35, 36, 37, and 71 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Atomic physics: A laboratory setup for atomic physics records readings 36, 37, 38, and 73 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL ANALYSIS

**Q36.** Practical analysis: A laboratory setup for practical analysis records readings 37, 38, 39, and 75 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical analysis: A laboratory setup for practical analysis records readings 38, 39, 40, and 77 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical analysis: A laboratory setup for practical analysis records readings 39, 40, 41, and 79 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical analysis: A laboratory setup for practical analysis records readings 40, 41, 42, and 81 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical analysis: A laboratory setup for practical analysis records readings 41, 42, 43, and 83 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

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
  where subject = 'Physics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MEASUREMENTS

**Q1.** Measurements: A laboratory setup for measurements records readings 3, 5, 7, and 8 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Measurements: A laboratory setup for measurements records readings 4, 6, 8, and 10 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Measurements: A laboratory setup for measurements records readings 5, 7, 9, and 12 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

![Convex lens ray diagram](/paper-diagrams/physics-optics.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Measurements: A laboratory setup for measurements records readings 6, 8, 10, and 14 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Measurements: A laboratory setup for measurements records readings 7, 9, 11, and 16 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MECHANICS

**Q6.** Mechanics: A laboratory setup for mechanics records readings 8, 10, 12, and 18 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Mechanics: A laboratory setup for mechanics records readings 9, 11, 13, and 20 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Mechanics: A laboratory setup for mechanics records readings 10, 12, 14, and 22 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Mechanics: A laboratory setup for mechanics records readings 11, 13, 15, and 24 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Mechanics: A laboratory setup for mechanics records readings 12, 14, 16, and 26 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: WAVES

**Q11.** Waves: A laboratory setup for waves records readings 13, 15, 17, and 28 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Waves: A laboratory setup for waves records readings 14, 16, 18, and 30 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Waves: A laboratory setup for waves records readings 15, 17, 19, and 32 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Waves: A laboratory setup for waves records readings 16, 18, 20, and 34 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Waves: A laboratory setup for waves records readings 17, 19, 21, and 36 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: ELECTRICITY

**Q16.** Electricity: A laboratory setup for electricity records readings 18, 20, 22, and 38 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Electricity: A laboratory setup for electricity records readings 19, 21, 23, and 40 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Electricity: A laboratory setup for electricity records readings 20, 22, 24, and 42 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Electricity: A laboratory setup for electricity records readings 21, 23, 25, and 44 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Electricity: A laboratory setup for electricity records readings 22, 24, 26, and 46 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: MAGNETISM

**Q21.** Magnetism: A laboratory setup for magnetism records readings 23, 25, 27, and 48 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Magnetism: A laboratory setup for magnetism records readings 24, 26, 28, and 50 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Magnetism: A laboratory setup for magnetism records readings 25, 27, 29, and 52 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Magnetism: A laboratory setup for magnetism records readings 26, 28, 30, and 54 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Magnetism: A laboratory setup for magnetism records readings 27, 29, 31, and 56 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: THERMAL PHYSICS

**Q26.** Thermal physics: A laboratory setup for thermal physics records readings 28, 30, 32, and 58 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Thermal physics: A laboratory setup for thermal physics records readings 29, 31, 33, and 60 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Thermal physics: A laboratory setup for thermal physics records readings 30, 32, 34, and 62 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Thermal physics: A laboratory setup for thermal physics records readings 31, 33, 35, and 64 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Thermal physics: A laboratory setup for thermal physics records readings 32, 34, 36, and 66 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ATOMIC PHYSICS

**Q31.** Atomic physics: A laboratory setup for atomic physics records readings 33, 35, 37, and 68 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Atomic physics: A laboratory setup for atomic physics records readings 34, 36, 38, and 70 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Atomic physics: A laboratory setup for atomic physics records readings 35, 37, 39, and 72 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Atomic physics: A laboratory setup for atomic physics records readings 36, 38, 40, and 74 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Atomic physics: A laboratory setup for atomic physics records readings 37, 39, 41, and 76 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL ANALYSIS

**Q36.** Practical analysis: A laboratory setup for practical analysis records readings 38, 40, 42, and 78 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical analysis: A laboratory setup for practical analysis records readings 39, 41, 43, and 80 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical analysis: A laboratory setup for practical analysis records readings 40, 42, 44, and 82 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical analysis: A laboratory setup for practical analysis records readings 41, 43, 45, and 84 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical analysis: A laboratory setup for practical analysis records readings 42, 44, 46, and 86 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

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
  where subject = 'Physics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MEASUREMENTS

**Q1.** Measurements: A laboratory setup for measurements records readings 4, 7, 10, and 11 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Measurements: A laboratory setup for measurements records readings 5, 8, 11, and 13 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Measurements: A laboratory setup for measurements records readings 6, 9, 12, and 15 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Measurements: A laboratory setup for measurements records readings 7, 10, 13, and 17 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

![Inclined plane force diagram](/paper-diagrams/physics-inclined-plane.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Measurements: A laboratory setup for measurements records readings 8, 11, 14, and 19 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: MECHANICS

**Q6.** Mechanics: A laboratory setup for mechanics records readings 9, 12, 15, and 21 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Mechanics: A laboratory setup for mechanics records readings 10, 13, 16, and 23 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Mechanics: A laboratory setup for mechanics records readings 11, 14, 17, and 25 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Mechanics: A laboratory setup for mechanics records readings 12, 15, 18, and 27 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Mechanics: A laboratory setup for mechanics records readings 13, 16, 19, and 29 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: WAVES

**Q11.** Waves: A laboratory setup for waves records readings 14, 17, 20, and 31 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Waves: A laboratory setup for waves records readings 15, 18, 21, and 33 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Waves: A laboratory setup for waves records readings 16, 19, 22, and 35 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Waves: A laboratory setup for waves records readings 17, 20, 23, and 37 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Waves: A laboratory setup for waves records readings 18, 21, 24, and 39 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: ELECTRICITY

**Q16.** Electricity: A laboratory setup for electricity records readings 19, 22, 25, and 41 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Electricity: A laboratory setup for electricity records readings 20, 23, 26, and 43 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Electricity: A laboratory setup for electricity records readings 21, 24, 27, and 45 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Electricity: A laboratory setup for electricity records readings 22, 25, 28, and 47 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Electricity: A laboratory setup for electricity records readings 23, 26, 29, and 49 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: MAGNETISM

**Q21.** Magnetism: A laboratory setup for magnetism records readings 24, 27, 30, and 51 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Magnetism: A laboratory setup for magnetism records readings 25, 28, 31, and 53 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Magnetism: A laboratory setup for magnetism records readings 26, 29, 32, and 55 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Magnetism: A laboratory setup for magnetism records readings 27, 30, 33, and 57 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Magnetism: A laboratory setup for magnetism records readings 28, 31, 34, and 59 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: THERMAL PHYSICS

**Q26.** Thermal physics: A laboratory setup for thermal physics records readings 29, 32, 35, and 61 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Thermal physics: A laboratory setup for thermal physics records readings 30, 33, 36, and 63 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Thermal physics: A laboratory setup for thermal physics records readings 31, 34, 37, and 65 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Thermal physics: A laboratory setup for thermal physics records readings 32, 35, 38, and 67 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Thermal physics: A laboratory setup for thermal physics records readings 33, 36, 39, and 69 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ATOMIC PHYSICS

**Q31.** Atomic physics: A laboratory setup for atomic physics records readings 34, 37, 40, and 71 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Atomic physics: A laboratory setup for atomic physics records readings 35, 38, 41, and 73 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Atomic physics: A laboratory setup for atomic physics records readings 36, 39, 42, and 75 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Atomic physics: A laboratory setup for atomic physics records readings 37, 40, 43, and 77 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Atomic physics: A laboratory setup for atomic physics records readings 38, 41, 44, and 79 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL ANALYSIS

**Q36.** Practical analysis: A laboratory setup for practical analysis records readings 39, 42, 45, and 81 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical analysis: A laboratory setup for practical analysis records readings 40, 43, 46, and 83 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical analysis: A laboratory setup for practical analysis records readings 41, 44, 47, and 85 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical analysis: A laboratory setup for practical analysis records readings 42, 45, 48, and 87 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical analysis: A laboratory setup for practical analysis records readings 43, 46, 49, and 89 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

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