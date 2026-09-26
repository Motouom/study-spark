begin;

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
  where title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 5'
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
  'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 5',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level FOOD SCIENCE AND NUTRITION P2 SET 5

## Structural Question Bank - Set 5

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

**Q1.** Food Chemistry: A detailed examination question covering food chemistry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: NUTRITION SCIENCE

**Q2.** Nutrition Science: A detailed examination question covering nutrition science concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FOOD MICROBIOLOGY

**Q3.** Food Microbiology: A detailed examination question covering food microbiology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FOOD PROCESSING

**Q4.** Food Processing: A detailed examination question covering food processing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: DIET THERAPY

**Q5.** Diet Therapy: A detailed examination question covering diet therapy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: PUBLIC HEALTH NUTRITION

**Q6.** Public Health Nutrition: A detailed examination question covering public health nutrition concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: FOOD SAFETY

**Q7.** Food Safety: A detailed examination question covering food safety concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PRODUCT DEVELOPMENT

**Q8.** Product Development: A detailed examination question covering product development concepts and applications.

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
  where subject = 'Food Science and Nutrition'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 6'
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
  'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 6',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level FOOD SCIENCE AND NUTRITION P2 SET 6

## Structural Question Bank - Set 6

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

**Q1.** Food Chemistry: A detailed examination question covering food chemistry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: NUTRITION SCIENCE

**Q2.** Nutrition Science: A detailed examination question covering nutrition science concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FOOD MICROBIOLOGY

**Q3.** Food Microbiology: A detailed examination question covering food microbiology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FOOD PROCESSING

**Q4.** Food Processing: A detailed examination question covering food processing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: DIET THERAPY

**Q5.** Diet Therapy: A detailed examination question covering diet therapy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: PUBLIC HEALTH NUTRITION

**Q6.** Public Health Nutrition: A detailed examination question covering public health nutrition concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: FOOD SAFETY

**Q7.** Food Safety: A detailed examination question covering food safety concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PRODUCT DEVELOPMENT

**Q8.** Product Development: A detailed examination question covering product development concepts and applications.

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
  where subject = 'Food Science and Nutrition'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 7'
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
  'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 7',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level FOOD SCIENCE AND NUTRITION P2 SET 7

## Structural Question Bank - Set 7

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

**Q1.** Food Chemistry: A detailed examination question covering food chemistry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: NUTRITION SCIENCE

**Q2.** Nutrition Science: A detailed examination question covering nutrition science concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FOOD MICROBIOLOGY

**Q3.** Food Microbiology: A detailed examination question covering food microbiology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FOOD PROCESSING

**Q4.** Food Processing: A detailed examination question covering food processing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: DIET THERAPY

**Q5.** Diet Therapy: A detailed examination question covering diet therapy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: PUBLIC HEALTH NUTRITION

**Q6.** Public Health Nutrition: A detailed examination question covering public health nutrition concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: FOOD SAFETY

**Q7.** Food Safety: A detailed examination question covering food safety concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PRODUCT DEVELOPMENT

**Q8.** Product Development: A detailed examination question covering product development concepts and applications.

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
  where subject = 'Food Science and Nutrition'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 8'
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
  'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 8',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level FOOD SCIENCE AND NUTRITION P2 SET 8

## Structural Question Bank - Set 8

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

**Q1.** Food Chemistry: A detailed examination question covering food chemistry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: NUTRITION SCIENCE

**Q2.** Nutrition Science: A detailed examination question covering nutrition science concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FOOD MICROBIOLOGY

**Q3.** Food Microbiology: A detailed examination question covering food microbiology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FOOD PROCESSING

**Q4.** Food Processing: A detailed examination question covering food processing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: DIET THERAPY

**Q5.** Diet Therapy: A detailed examination question covering diet therapy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: PUBLIC HEALTH NUTRITION

**Q6.** Public Health Nutrition: A detailed examination question covering public health nutrition concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: FOOD SAFETY

**Q7.** Food Safety: A detailed examination question covering food safety concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PRODUCT DEVELOPMENT

**Q8.** Product Development: A detailed examination question covering product development concepts and applications.

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
  where subject = 'French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Complétez: Je ____ au marché.

A. vais  
B. va  
C. vont  
D. allons  

---

**Q2.** Complétez: Nous ____ français.

A. parlons  
B. parlez  
C. parle  
D. parlent  

---

**Q3.** Complétez: Elle ____ une lettre.

A. écrit  
B. écrivent  
C. écris  
D. écrivez  

---

**Q4.** Le passé composé de ''manger'' avec ''je'' est:

A. j''ai mangé  
B. je mangerai  
C. je mangeais  
D. je mange  

---

**Q5.** Complétez: Ils ____ à l''école.

A. vont  
B. allons  
C. va  
D. vais  

---

**Q6.** Le futur de ''être'' avec ''je'' est:

A. je serai  
B. je fus  
C. j''étais  
D. je suis  

---

**Q7.** Complétez: Tu ____ ton livre.

A. a  
B. as  
C. avez  
D. ont  

---

**Q8.** L''imparfait de ''avoir'' avec ''nous'' est:

A. nous avons  
B. nous avions  
C. nous eûmes  
D. nous aurons  

---

**Q9.** Complétez: Le livre ____ je parle est intéressant.

A. qui  
B. que  
C. dont  
D. où  

---

**Q10.** Complétez: La femme ____ chante est ma mère.

A. que  
B. dont  
C. où  
D. qui  

---

**Q11.** Le pluriel de ''le cheval'' est:

A. les chevals  
B. les chevauxs  
C. les chevaux  
D. les chevaus  

---

**Q12.** Complétez: ____ eau est bonne.

A. Le  
B. Les  
C. La  
D. L''  

---

**Q13.** Complétez: J''achète ____ pain.

A. des  
B. du  
C. de la  
D. le  

---

**Q14.** La négation de ''Il a mangé'' est:

A. Il ne mange pas  
B. Il n''a pas mangé  
C. Il n''a mangé pas  
D. Il a pas mangé  

---

**Q15.** Complétez: Elle est ____ grande que sa sœur.

A. aussi  
B. moins  
C. plus  
D. très  

---

**Q16.** Le féminin de ''acteur'' est:

A. acteurse  
B. acteure  
C. acteuse  
D. actrice  

---

**Q17.** Complétez: Il faut que tu ____.

A. viendras  
B. venais  
C. viennes  
D. viens  

---

**Q18.** Complétez: Je ____ voyager.

A. veux  
B. voulais  
C. voudrai  
D. voudrais  

---

**Q19.** Complétez: ____ maison est grande.

A. Cet  
B. Cette  
C. Ce  
D. Ces  

---

**Q20.** Complétez: ____ père travaille à l''hôpital.

A. Ton  
B. Mon  
C. Mes  
D. Ma  

---

**Q21.** Complétez: Nous ____ à Douala.

A. habite  
B. habitez  
C. habitons  
D. habitent  

---

**Q22.** Le passé composé de ''partir'' avec ''elle'' est:

A. elle a partie  
B. elle a parti  
C. elle est parti  
D. elle est partie  

---

**Q23.** Complétez: Il va ____ France.

A. aux  
B. au  
C. en  
D. à  

---

**Q24.** Complétez: Le livre est ____ la table.

A. de  
B. à  
C. dans  
D. sur  

---

**Q25.** Complétez: ____ enfants jouent dans la cour.

A. Les  
B. Le  
C. La  
D. Un  

---

**Q26.** Le pluriel de ''un travail'' est:

A. des travaux  
B. des travails  
C. des travail  
D. des travailes  

---

**Q27.** Complétez: Je ____ content.

A. suis  
B. est  
C. es  
D. sommes  

---

**Q28.** Complétez: Nous ____ le temps.

A. aurons  
B. avions  
C. eûmes  
D. avons  

---

**Q29.** Complétez: Elle ____ souvent.

A. vient  
B. viens  
C. viennent  
D. venez  

---

**Q30.** Complétez: Ils ____ leurs devoirs.

A. font  
B. faisons  
C. fais  
D. fait  

---

**Q31.** Le Cameroun est appelé:

A. le pays des lions  
B. l''Afrique en miniature  
C. la perle de l''Afrique  
D. le grenier de l''Afrique  

---

**Q32.** Combien de groupes ethniques compte le Cameroun?

A. environ 50  
B. plus de 250  
C. moins de 100  
D. plus de 1000  

---

**Q33.** Le marché de Mokolo se trouve à:

A. Douala  
B. Bafoussam  
C. Yaoundé  
D. Garoua  

---

**Q34.** L''équipe nationale de football du Cameroun s''appelle:

A. les Éléphants  
B. les Aigles  
C. les Panthères  
D. les Lions Indomptables  

---

**Q35.** Samuel Eto''o est un célèbre:

A. chanteur  
B. médecin  
C. footballeur  
D. écrivain  

---

**Q36.** Pour rester en bonne santé, il faut:

A. fumer  
B. ne pas dormir  
C. boire de l''alcool  
D. manger équilibré  

---

**Q37.** Le texte sur la pluie se termine par:

A. de la neige  
B. un arc-en-ciel  
C. une tempête  
D. un orage  

---

**Q38.** Dans le texte sur le marché, les vendeurs:

A. dorment  
B. crient pour attirer les clients  
C. lisent des livres  
D. chantent des chansons  

---

**Q39.** L''éducation est importante parce qu''elle:

A. est obligatoire  
B. coûte cher  
C. forme des travailleurs qualifiés  
D. est facile  

---

**Q40.** Les principales cultures d''exportation du Cameroun sont:

A. le coton et le tabac  
B. le riz et le blé  
C. les bananes et les oranges  
D. le cacao et le café  

---

**Q41.** Le commerce équitable garantit:

A. plus de publicité  
B. des prix plus élevés  
C. un prix juste pour les producteurs  
D. des produits gratuits  

---

**Q42.** Dans la culture camerounaise, les enfants:

A. quittent la maison  
B. ne parlent pas  
C. ignorent leurs parents  
D. respectent leurs aînés  

---

**Q43.** Pour protéger l''environnement, il faut:

A. couper les arbres  
B. trier les déchets  
C. jeter les ordures dans la nature  
D. gaspiller l''eau  

---

**Q44.** La technologie permet de:

A. apprendre sans effort  
B. voir ses proches à l''écran  
C. cuisiner plus vite  
D. voyager gratuitement  

---

**Q45.** Le texte sur la santé conseille de:

A. ne pas consulter le médecin  
B. fumer  
C. boire beaucoup d''eau  
D. manger trop  

---

**Q46.** Dans le texte sur la pluie, les enfants:

A. travaillaient  
B. pleuraient  
C. dormaient  
D. jouaient dans les flaques d''eau  

---

**Q47.** Le football est le sport le plus populaire:

A. au Brésil  
B. en Chine  
C. au Cameroun  
D. en France  

---

**Q48.** Les enfants jouent au football avec:

A. des bouteilles  
B. des pierres  
C. des ballons officiels  
D. des ballons improvisés  

---

**Q49.** Une lettre à un ami doit commencer par:

A. Cher/Cher ami  
B. Monsieur le Président  
C. À qui de droit  
D. Bonjour tout le monde  

---

**Q50.** Pour décrire sa journée typique, on utilise:

A. le présent  
B. le passé composé  
C. le subjonctif  
D. le futur  

---

**Q51.** Pour raconter ce qu''on a fait le week-end dernier, on utilise:

A. le passé composé  
B. le futur simple  
C. le présent  
D. l''impératif  

---

**Q52.** Un dialogue est un échange entre:

A. deux personnes  
B. un groupe de spectateurs  
C. un professeur et un tableau  
D. une seule personne  

---

**Q53.** Le texte sur la famille dit que les grandes occasions:

A. rassemblent toute la famille  
B. ne concernent que les enfants  
C. sont rares  
D. sont tristes  

---

**Q54.** Pour inviter un ami à son anniversaire, on écrit:

A. une lettre d''invitation  
B. un poème  
C. une lettre de démission  
D. une lettre de réclamation  

---

**Q55.** Le texte sur l''environnement dit que le respect commence:

A. à l''école  
B. à la maison  
C. au marché  
D. à la plage  

---

**Q56.** Dans le texte sur le marché, l''air est rempli:

A. de musique  
B. d''odeurs variées  
C. de silence  
D. de fumée  

---

**Q57.** Le texte sur l''éducation dit que l''éducation est:

A. un luxe  
B. une perte de temps  
C. la clé du développement  
D. réservée aux riches  

---

**Q58.** Pour rester en bonne santé, il faut éviter:

A. l''eau et les fruits  
B. le sport et le sommeil  
C. les légumes  
D. le tabac et l''alcool  

---

**Q59.** Le texte sur la technologie dit que certains pensent qu''elle:

A. nous rapproche toujours  
B. est trop chère  
C. nous éloigne les uns des autres  
D. est inutile  

---

**Q60.** Le texte sur le commerce équitable parle du:

A. pétrole et du gaz  
B. coton et du riz  
C. bois et du fer  
D. cacao et du café  

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
  where subject = 'French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Le passé composé de ''manger'' avec ''je'' est:

A. j''ai mangé  
B. je mange  
C. je mangerai  
D. je mangeais  

---

**Q2.** Complétez: Ils ____ à l''école.

A. vont  
B. va  
C. allons  
D. vais  

---

**Q3.** Le futur de ''être'' avec ''je'' est:

A. je serai  
B. j''étais  
C. je suis  
D. je fus  

---

**Q4.** Complétez: Tu ____ ton livre.

A. as  
B. avez  
C. ont  
D. a  

---

**Q5.** L''imparfait de ''avoir'' avec ''nous'' est:

A. nous avions  
B. nous eûmes  
C. nous avons  
D. nous aurons  

---

**Q6.** Complétez: Le livre ____ je parle est intéressant.

A. dont  
B. où  
C. que  
D. qui  

---

**Q7.** Complétez: La femme ____ chante est ma mère.

A. que  
B. qui  
C. dont  
D. où  

---

**Q8.** Le pluriel de ''le cheval'' est:

A. les chevals  
B. les chevaux  
C. les chevauxs  
D. les chevaus  

---

**Q9.** Complétez: ____ eau est bonne.

A. Le  
B. La  
C. L''  
D. Les  

---

**Q10.** Complétez: J''achète ____ pain.

A. de la  
B. des  
C. le  
D. du  

---

**Q11.** La négation de ''Il a mangé'' est:

A. Il a pas mangé  
B. Il n''a mangé pas  
C. Il n''a pas mangé  
D. Il ne mange pas  

---

**Q12.** Complétez: Elle est ____ grande que sa sœur.

A. moins  
B. très  
C. aussi  
D. plus  

---

**Q13.** Le féminin de ''acteur'' est:

A. acteurse  
B. actrice  
C. acteure  
D. acteuse  

---

**Q14.** Complétez: Il faut que tu ____.

A. viendras  
B. viennes  
C. venais  
D. viens  

---

**Q15.** Complétez: Je ____ voyager.

A. veux  
B. voudrai  
C. voudrais  
D. voulais  

---

**Q16.** Complétez: ____ maison est grande.

A. Ces  
B. Ce  
C. Cet  
D. Cette  

---

**Q17.** Complétez: ____ père travaille à l''hôpital.

A. Mes  
B. Ton  
C. Mon  
D. Ma  

---

**Q18.** Complétez: Nous ____ à Douala.

A. habitent  
B. habite  
C. habitez  
D. habitons  

---

**Q19.** Le passé composé de ''partir'' avec ''elle'' est:

A. elle a partie  
B. elle est partie  
C. elle a parti  
D. elle est parti  

---

**Q20.** Complétez: Il va ____ France.

A. aux  
B. en  
C. au  
D. à  

---

**Q21.** Complétez: Le livre est ____ la table.

A. de  
B. dans  
C. sur  
D. à  

---

**Q22.** Complétez: ____ enfants jouent dans la cour.

A. Un  
B. Le  
C. La  
D. Les  

---

**Q23.** Le pluriel de ''un travail'' est:

A. des travail  
B. des travailes  
C. des travaux  
D. des travails  

---

**Q24.** Complétez: Je ____ content.

A. sommes  
B. est  
C. es  
D. suis  

---

**Q25.** Complétez: Nous ____ le temps.

A. aurons  
B. avons  
C. avions  
D. eûmes  

---

**Q26.** Complétez: Elle ____ souvent.

A. vient  
B. viennent  
C. viens  
D. venez  

---

**Q27.** Complétez: Ils ____ leurs devoirs.

A. font  
B. fais  
C. fait  
D. faisons  

---

**Q28.** Complétez: Je ____ au marché.

A. vais  
B. vont  
C. allons  
D. va  

---

**Q29.** Complétez: Nous ____ français.

A. parlons  
B. parle  
C. parlez  
D. parlent  

---

**Q30.** Complétez: Elle ____ une lettre.

A. écrit  
B. écrivez  
C. écrivent  
D. écris  

---

**Q31.** L''équipe nationale de football du Cameroun s''appelle:

A. les Éléphants  
B. les Lions Indomptables  
C. les Aigles  
D. les Panthères  

---

**Q32.** Samuel Eto''o est un célèbre:

A. chanteur  
B. footballeur  
C. médecin  
D. écrivain  

---

**Q33.** Pour rester en bonne santé, il faut:

A. fumer  
B. boire de l''alcool  
C. manger équilibré  
D. ne pas dormir  

---

**Q34.** Le texte sur la pluie se termine par:

A. une tempête  
B. de la neige  
C. un orage  
D. un arc-en-ciel  

---

**Q35.** Dans le texte sur le marché, les vendeurs:

A. chantent des chansons  
B. lisent des livres  
C. crient pour attirer les clients  
D. dorment  

---

**Q36.** L''éducation est importante parce qu''elle:

A. coûte cher  
B. est facile  
C. est obligatoire  
D. forme des travailleurs qualifiés  

---

**Q37.** Les principales cultures d''exportation du Cameroun sont:

A. le coton et le tabac  
B. le cacao et le café  
C. le riz et le blé  
D. les bananes et les oranges  

---

**Q38.** Le commerce équitable garantit:

A. plus de publicité  
B. un prix juste pour les producteurs  
C. des prix plus élevés  
D. des produits gratuits  

---

**Q39.** Dans la culture camerounaise, les enfants:

A. quittent la maison  
B. ignorent leurs parents  
C. respectent leurs aînés  
D. ne parlent pas  

---

**Q40.** Pour protéger l''environnement, il faut:

A. gaspiller l''eau  
B. jeter les ordures dans la nature  
C. couper les arbres  
D. trier les déchets  

---

**Q41.** La technologie permet de:

A. cuisiner plus vite  
B. apprendre sans effort  
C. voir ses proches à l''écran  
D. voyager gratuitement  

---

**Q42.** Le texte sur la santé conseille de:

A. manger trop  
B. ne pas consulter le médecin  
C. fumer  
D. boire beaucoup d''eau  

---

**Q43.** Dans le texte sur la pluie, les enfants:

A. travaillaient  
B. jouaient dans les flaques d''eau  
C. pleuraient  
D. dormaient  

---

**Q44.** Le football est le sport le plus populaire:

A. au Brésil  
B. au Cameroun  
C. en Chine  
D. en France  

---

**Q45.** Les enfants jouent au football avec:

A. des bouteilles  
B. des ballons officiels  
C. des ballons improvisés  
D. des pierres  

---

**Q46.** Une lettre à un ami doit commencer par:

A. Bonjour tout le monde  
B. Monsieur le Président  
C. À qui de droit  
D. Cher/Cher ami  

---

**Q47.** Pour décrire sa journée typique, on utilise:

A. le subjonctif  
B. le futur  
C. le présent  
D. le passé composé  

---

**Q48.** Pour raconter ce qu''on a fait le week-end dernier, on utilise:

A. l''impératif  
B. le futur simple  
C. le présent  
D. le passé composé  

---

**Q49.** Un dialogue est un échange entre:

A. deux personnes  
B. une seule personne  
C. un groupe de spectateurs  
D. un professeur et un tableau  

---

**Q50.** Le texte sur la famille dit que les grandes occasions:

A. rassemblent toute la famille  
B. sont rares  
C. ne concernent que les enfants  
D. sont tristes  

---

**Q51.** Pour inviter un ami à son anniversaire, on écrit:

A. une lettre d''invitation  
B. une lettre de démission  
C. une lettre de réclamation  
D. un poème  

---

**Q52.** Le texte sur l''environnement dit que le respect commence:

A. à la maison  
B. au marché  
C. à la plage  
D. à l''école  

---

**Q53.** Dans le texte sur le marché, l''air est rempli:

A. d''odeurs variées  
B. de silence  
C. de musique  
D. de fumée  

---

**Q54.** Le texte sur l''éducation dit que l''éducation est:

A. la clé du développement  
B. réservée aux riches  
C. une perte de temps  
D. un luxe  

---

**Q55.** Pour rester en bonne santé, il faut éviter:

A. l''eau et les fruits  
B. le tabac et l''alcool  
C. le sport et le sommeil  
D. les légumes  

---

**Q56.** Le texte sur la technologie dit que certains pensent qu''elle:

A. nous rapproche toujours  
B. nous éloigne les uns des autres  
C. est trop chère  
D. est inutile  

---

**Q57.** Le texte sur le commerce équitable parle du:

A. pétrole et du gaz  
B. bois et du fer  
C. cacao et du café  
D. coton et du riz  

---

**Q58.** Le Cameroun est appelé:

A. le pays des lions  
B. la perle de l''Afrique  
C. le grenier de l''Afrique  
D. l''Afrique en miniature  

---

**Q59.** Combien de groupes ethniques compte le Cameroun?

A. environ 50  
B. moins de 100  
C. plus de 250  
D. plus de 1000  

---

**Q60.** Le marché de Mokolo se trouve à:

A. Douala  
B. Garoua  
C. Bafoussam  
D. Yaoundé  

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
  where subject = 'French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Complétez: Tu ____ ton livre.

A. as  
B. a  
C. avez  
D. ont  

---

**Q2.** L''imparfait de ''avoir'' avec ''nous'' est:

A. nous avions  
B. nous avons  
C. nous eûmes  
D. nous aurons  

---

**Q3.** Complétez: Le livre ____ je parle est intéressant.

A. dont  
B. que  
C. qui  
D. où  

---

**Q4.** Complétez: La femme ____ chante est ma mère.

A. qui  
B. dont  
C. où  
D. que  

---

**Q5.** Le pluriel de ''le cheval'' est:

A. les chevaux  
B. les chevauxs  
C. les chevals  
D. les chevaus  

---

**Q6.** Complétez: ____ eau est bonne.

A. L''  
B. Les  
C. La  
D. Le  

---

**Q7.** Complétez: J''achète ____ pain.

A. de la  
B. du  
C. des  
D. le  

---

**Q8.** La négation de ''Il a mangé'' est:

A. Il a pas mangé  
B. Il n''a pas mangé  
C. Il n''a mangé pas  
D. Il ne mange pas  

---

**Q9.** Complétez: Elle est ____ grande que sa sœur.

A. moins  
B. aussi  
C. plus  
D. très  

---

**Q10.** Le féminin de ''acteur'' est:

A. acteure  
B. acteurse  
C. acteuse  
D. actrice  

---

**Q11.** Complétez: Il faut que tu ____.

A. viens  
B. venais  
C. viennes  
D. viendras  

---

**Q12.** Complétez: Je ____ voyager.

A. voudrai  
B. voulais  
C. veux  
D. voudrais  

---

**Q13.** Complétez: ____ maison est grande.

A. Ces  
B. Cette  
C. Ce  
D. Cet  

---

**Q14.** Complétez: ____ père travaille à l''hôpital.

A. Mes  
B. Mon  
C. Ton  
D. Ma  

---

**Q15.** Complétez: Nous ____ à Douala.

A. habitent  
B. habitez  
C. habitons  
D. habite  

---

**Q16.** Le passé composé de ''partir'' avec ''elle'' est:

A. elle est parti  
B. elle a parti  
C. elle a partie  
D. elle est partie  

---

**Q17.** Complétez: Il va ____ France.

A. au  
B. aux  
C. en  
D. à  

---

**Q18.** Complétez: Le livre est ____ la table.

A. à  
B. de  
C. dans  
D. sur  

---

**Q19.** Complétez: ____ enfants jouent dans la cour.

A. Un  
B. Les  
C. Le  
D. La  

---

**Q20.** Le pluriel de ''un travail'' est:

A. des travail  
B. des travaux  
C. des travailes  
D. des travails  

---

**Q21.** Complétez: Je ____ content.

A. sommes  
B. es  
C. suis  
D. est  

---

**Q22.** Complétez: Nous ____ le temps.

A. eûmes  
B. avons  
C. avions  
D. aurons  

---

**Q23.** Complétez: Elle ____ souvent.

A. viens  
B. venez  
C. vient  
D. viennent  

---

**Q24.** Complétez: Ils ____ leurs devoirs.

A. faisons  
B. fais  
C. fait  
D. font  

---

**Q25.** Complétez: Je ____ au marché.

A. vais  
B. va  
C. vont  
D. allons  

---

**Q26.** Complétez: Nous ____ français.

A. parlons  
B. parlez  
C. parle  
D. parlent  

---

**Q27.** Complétez: Elle ____ une lettre.

A. écrit  
B. écrivent  
C. écris  
D. écrivez  

---

**Q28.** Le passé composé de ''manger'' avec ''je'' est:

A. j''ai mangé  
B. je mangerai  
C. je mangeais  
D. je mange  

---

**Q29.** Complétez: Ils ____ à l''école.

A. vont  
B. allons  
C. va  
D. vais  

---

**Q30.** Le futur de ''être'' avec ''je'' est:

A. je serai  
B. je fus  
C. j''étais  
D. je suis  

---

**Q31.** Le texte sur la pluie se termine par:

A. une tempête  
B. un arc-en-ciel  
C. de la neige  
D. un orage  

---

**Q32.** Dans le texte sur le marché, les vendeurs:

A. chantent des chansons  
B. crient pour attirer les clients  
C. lisent des livres  
D. dorment  

---

**Q33.** L''éducation est importante parce qu''elle:

A. coûte cher  
B. est obligatoire  
C. forme des travailleurs qualifiés  
D. est facile  

---

**Q34.** Les principales cultures d''exportation du Cameroun sont:

A. le riz et le blé  
B. le coton et le tabac  
C. les bananes et les oranges  
D. le cacao et le café  

---

**Q35.** Le commerce équitable garantit:

A. des produits gratuits  
B. des prix plus élevés  
C. un prix juste pour les producteurs  
D. plus de publicité  

---

**Q36.** Dans la culture camerounaise, les enfants:

A. ignorent leurs parents  
B. ne parlent pas  
C. quittent la maison  
D. respectent leurs aînés  

---

**Q37.** Pour protéger l''environnement, il faut:

A. gaspiller l''eau  
B. trier les déchets  
C. jeter les ordures dans la nature  
D. couper les arbres  

---

**Q38.** La technologie permet de:

A. cuisiner plus vite  
B. voir ses proches à l''écran  
C. apprendre sans effort  
D. voyager gratuitement  

---

**Q39.** Le texte sur la santé conseille de:

A. manger trop  
B. fumer  
C. boire beaucoup d''eau  
D. ne pas consulter le médecin  

---

**Q40.** Dans le texte sur la pluie, les enfants:

A. dormaient  
B. pleuraient  
C. travaillaient  
D. jouaient dans les flaques d''eau  

---

**Q41.** Le football est le sport le plus populaire:

A. en Chine  
B. au Brésil  
C. au Cameroun  
D. en France  

---

**Q42.** Les enfants jouent au football avec:

A. des pierres  
B. des bouteilles  
C. des ballons officiels  
D. des ballons improvisés  

---

**Q43.** Une lettre à un ami doit commencer par:

A. Bonjour tout le monde  
B. Cher/Cher ami  
C. Monsieur le Président  
D. À qui de droit  

---

**Q44.** Pour décrire sa journée typique, on utilise:

A. le subjonctif  
B. le présent  
C. le futur  
D. le passé composé  

---

**Q45.** Pour raconter ce qu''on a fait le week-end dernier, on utilise:

A. l''impératif  
B. le présent  
C. le passé composé  
D. le futur simple  

---

**Q46.** Un dialogue est un échange entre:

A. un professeur et un tableau  
B. une seule personne  
C. un groupe de spectateurs  
D. deux personnes  

---

**Q47.** Le texte sur la famille dit que les grandes occasions:

A. ne concernent que les enfants  
B. sont tristes  
C. rassemblent toute la famille  
D. sont rares  

---

**Q48.** Pour inviter un ami à son anniversaire, on écrit:

A. un poème  
B. une lettre de démission  
C. une lettre de réclamation  
D. une lettre d''invitation  

---

**Q49.** Le texte sur l''environnement dit que le respect commence:

A. à la maison  
B. à l''école  
C. au marché  
D. à la plage  

---

**Q50.** Dans le texte sur le marché, l''air est rempli:

A. d''odeurs variées  
B. de musique  
C. de silence  
D. de fumée  

---

**Q51.** Le texte sur l''éducation dit que l''éducation est:

A. la clé du développement  
B. une perte de temps  
C. un luxe  
D. réservée aux riches  

---

**Q52.** Pour rester en bonne santé, il faut éviter:

A. le tabac et l''alcool  
B. le sport et le sommeil  
C. les légumes  
D. l''eau et les fruits  

---

**Q53.** Le texte sur la technologie dit que certains pensent qu''elle:

A. nous éloigne les uns des autres  
B. est trop chère  
C. nous rapproche toujours  
D. est inutile  

---

**Q54.** Le texte sur le commerce équitable parle du:

A. cacao et du café  
B. coton et du riz  
C. bois et du fer  
D. pétrole et du gaz  

---

**Q55.** Le Cameroun est appelé:

A. le pays des lions  
B. l''Afrique en miniature  
C. la perle de l''Afrique  
D. le grenier de l''Afrique  

---

**Q56.** Combien de groupes ethniques compte le Cameroun?

A. environ 50  
B. plus de 250  
C. moins de 100  
D. plus de 1000  

---

**Q57.** Le marché de Mokolo se trouve à:

A. Douala  
B. Bafoussam  
C. Yaoundé  
D. Garoua  

---

**Q58.** L''équipe nationale de football du Cameroun s''appelle:

A. les Éléphants  
B. les Aigles  
C. les Panthères  
D. les Lions Indomptables  

---

**Q59.** Samuel Eto''o est un célèbre:

A. chanteur  
B. médecin  
C. footballeur  
D. écrivain  

---

**Q60.** Pour rester en bonne santé, il faut:

A. fumer  
B. ne pas dormir  
C. boire de l''alcool  
D. manger équilibré  

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
  where subject = 'French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPREHENSION

**Q1.** Comprehension: Read original passage 1: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Comprehension: Read original passage 2: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Comprehension: Read original passage 3: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Comprehension: Read original passage 4: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Comprehension: Read original passage 5: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: GRAMMAR

**Q6.** Grammar: Read original passage 6: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Grammar: Read original passage 7: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Grammar: Read original passage 8: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Grammar: Read original passage 9: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Grammar: Read original passage 10: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: TRANSLATION

**Q11.** Translation: Read original passage 11: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Translation: Read original passage 12: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Translation: Read original passage 13: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Translation: Read original passage 14: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Translation: Read original passage 15: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: ESSAY WRITING

**Q16.** Essay writing: Read original passage 16: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Essay writing: Read original passage 17: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Essay writing: Read original passage 18: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Essay writing: Read original passage 19: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Essay writing: Read original passage 20: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: VOCABULARY

**Q21.** Vocabulary: Read original passage 21: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Vocabulary: Read original passage 22: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Vocabulary: Read original passage 23: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Vocabulary: Read original passage 24: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Vocabulary: Read original passage 25: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: DIALOGUE

**Q26.** Dialogue: Read original passage 26: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Dialogue: Read original passage 27: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Dialogue: Read original passage 28: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Dialogue: Read original passage 29: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Dialogue: Read original passage 30: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: LETTER WRITING

**Q31.** Letter writing: Read original passage 31: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Letter writing: Read original passage 32: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Letter writing: Read original passage 33: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Letter writing: Read original passage 34: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Letter writing: Read original passage 35: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: CULTURE

**Q36.** Culture: Read original passage 36: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Culture: Read original passage 37: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Culture: Read original passage 38: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Culture: Read original passage 39: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Culture: Read original passage 40: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

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
  where subject = 'French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPREHENSION

**Q1.** Comprehension: Read original passage 1: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Comprehension: Read original passage 2: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Comprehension: Read original passage 3: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Comprehension: Read original passage 4: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Comprehension: Read original passage 5: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: GRAMMAR

**Q6.** Grammar: Read original passage 6: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Grammar: Read original passage 7: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Grammar: Read original passage 8: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Grammar: Read original passage 9: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Grammar: Read original passage 10: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: TRANSLATION

**Q11.** Translation: Read original passage 11: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Translation: Read original passage 12: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Translation: Read original passage 13: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Translation: Read original passage 14: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Translation: Read original passage 15: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: ESSAY WRITING

**Q16.** Essay writing: Read original passage 16: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Essay writing: Read original passage 17: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Essay writing: Read original passage 18: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Essay writing: Read original passage 19: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Essay writing: Read original passage 20: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: VOCABULARY

**Q21.** Vocabulary: Read original passage 21: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Vocabulary: Read original passage 22: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Vocabulary: Read original passage 23: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Vocabulary: Read original passage 24: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Vocabulary: Read original passage 25: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: DIALOGUE

**Q26.** Dialogue: Read original passage 26: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Dialogue: Read original passage 27: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Dialogue: Read original passage 28: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Dialogue: Read original passage 29: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Dialogue: Read original passage 30: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: LETTER WRITING

**Q31.** Letter writing: Read original passage 31: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Letter writing: Read original passage 32: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Letter writing: Read original passage 33: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Letter writing: Read original passage 34: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Letter writing: Read original passage 35: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: CULTURE

**Q36.** Culture: Read original passage 36: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Culture: Read original passage 37: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Culture: Read original passage 38: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Culture: Read original passage 39: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Culture: Read original passage 40: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

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
  where subject = 'French'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPREHENSION

**Q1.** Comprehension: Read original passage 1: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Comprehension: Read original passage 2: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Comprehension: Read original passage 3: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Comprehension: Read original passage 4: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Comprehension: Read original passage 5: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on comprehension.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: GRAMMAR

**Q6.** Grammar: Read original passage 6: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Grammar: Read original passage 7: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Grammar: Read original passage 8: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Grammar: Read original passage 9: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Grammar: Read original passage 10: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on grammar.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: TRANSLATION

**Q11.** Translation: Read original passage 11: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Translation: Read original passage 12: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Translation: Read original passage 13: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Translation: Read original passage 14: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Translation: Read original passage 15: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on translation.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: ESSAY WRITING

**Q16.** Essay writing: Read original passage 16: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Essay writing: Read original passage 17: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Essay writing: Read original passage 18: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Essay writing: Read original passage 19: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Essay writing: Read original passage 20: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on essay writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: VOCABULARY

**Q21.** Vocabulary: Read original passage 21: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Vocabulary: Read original passage 22: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Vocabulary: Read original passage 23: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Vocabulary: Read original passage 24: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Vocabulary: Read original passage 25: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on vocabulary.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: DIALOGUE

**Q26.** Dialogue: Read original passage 26: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Dialogue: Read original passage 27: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Dialogue: Read original passage 28: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Dialogue: Read original passage 29: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Dialogue: Read original passage 30: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on dialogue.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: LETTER WRITING

**Q31.** Letter writing: Read original passage 31: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Letter writing: Read original passage 32: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Letter writing: Read original passage 33: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Letter writing: Read original passage 34: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Letter writing: Read original passage 35: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on letter writing.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: CULTURE

**Q36.** Culture: Read original passage 36: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Culture: Read original passage 37: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Culture: Read original passage 38: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Culture: Read original passage 39: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Culture: Read original passage 40: a learner writes to a school authority about discipline, study habits, community service, and future plans. Use it to answer on culture.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

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