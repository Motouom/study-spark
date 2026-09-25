begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'History'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5

## Structural Question Bank — World history

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: WORLD HISTORY

**Q1.** (a) What was the First World War? *(2 marks)*

(b) State three causes of the First World War. *(3 marks)*

(c) Explain how the assassination of Archduke Franz Ferdinand led to the war. *(4 marks)*

---

**Q2.** (a) Define the term "alliance". *(2 marks)*

(b) Describe the alliance system in Europe before 1914. *(4 marks)*

(c) Explain how the alliance system contributed to the outbreak of the First World War. *(4 marks)*

---

**Q3.** (a) What was the Treaty of Versailles? *(2 marks)*

(b) State three terms of the Treaty of Versailles. *(3 marks)*

(c) Explain the effects of the Treaty of Versailles on Germany. *(5 marks)*

---

**Q4.** (a) Define the term "League of Nations". *(2 marks)*

(b) State three aims of the League of Nations. *(3 marks)*

(c) Explain why the League of Nations failed to prevent the Second World War. *(5 marks)*

---

**Q5.** (a) What was the Second World War? *(2 marks)*

(b) State three causes of the Second World War. *(3 marks)*

(c) Explain the role of Adolf Hitler in causing the Second World War. *(5 marks)*

---

**Q6.** (a) Define the term "totalitarianism". *(2 marks)*

(b) Describe the rise of fascism in Italy and Nazism in Germany. *(5 marks)*

(c) Explain the effects of totalitarian rule on the people of Germany. *(4 marks)*

---

**Q7.** (a) What was the Holocaust? *(2 marks)*

(b) Describe the persecution of Jews under Nazi rule. *(4 marks)*

(c) Explain the consequences of the Holocaust. *(4 marks)*

---

**Q8.** (a) Define the term "Cold War". *(2 marks)*

(b) State three causes of the Cold War. *(3 marks)*

(c) Explain how the Cold War divided the world into two blocs. *(5 marks)*

---

**Q9.** (a) What was the Berlin Wall? *(2 marks)*

(b) Describe the events leading to the construction of the Berlin Wall in 1961. *(4 marks)*

(c) Explain the significance of the fall of the Berlin Wall in 1989. *(4 marks)*

---

**Q10.** (a) Define the term "nuclear arms race". *(2 marks)*

(b) Describe the development of nuclear weapons during the Cold War. *(4 marks)*

(c) Explain the importance of arms control agreements such as SALT. *(4 marks)*

---

**Q11.** (a) What was the United Nations? *(2 marks)*

(b) State three organs of the United Nations. *(3 marks)*

(c) Explain the role of the UN Security Council in maintaining peace. *(5 marks)*

---

**Q12.** (a) Define the term "decolonisation". *(2 marks)*

(b) State three factors that led to decolonisation after 1945. *(3 marks)*

(c) Explain the role of the UN in the decolonisation of Africa. *(4 marks)*

---

**Q13.** (a) What is globalisation? *(2 marks)*

(b) State three features of globalisation. *(3 marks)*

(c) Explain two effects of globalisation on developing countries. *(5 marks)*

---

**Q14.** (a) Define the term "international organisation". *(2 marks)*

(b) Describe the aims of the World Trade Organization. *(4 marks)*

(c) Explain the importance of the International Monetary Fund. *(4 marks)*

---

**Q15.** (a) What was the Cuban Missile Crisis? *(2 marks)*

(b) Describe the events of the Cuban Missile Crisis of 1962. *(5 marks)*

(c) Explain the consequences of the crisis for the Cold War. *(4 marks)*

---

**Q16.** (a) Define the term "proxy war". *(2 marks)*

(b) Describe the Korean War as a proxy war of the Cold War. *(4 marks)*

(c) Explain the effects of the Vietnam War on the United States. *(4 marks)*

---

**Q17.** (a) What was the European Union? *(2 marks)*

(b) Describe the stages of European integration from the EEC to the EU. *(5 marks)*

(c) Explain the benefits of the European Union to its members. *(4 marks)*

---

**Q18.** (a) Define the term "terrorism". *(2 marks)*

(b) State three causes of terrorism. *(3 marks)*

(c) Explain the effects of international terrorism on global security. *(5 marks)*

---

**Q19.** (a) What is the Commonwealth? *(2 marks)*

(b) State three objectives of the Commonwealth. *(3 marks)*

(c) Explain the importance of the Commonwealth to Cameroon. *(4 marks)*

---

**Q20.** (a) Define the term "human rights". *(2 marks)*

(b) State three examples of human rights. *(3 marks)*

(c) Explain the role of the Universal Declaration of Human Rights in protecting people. *(5 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6

## Structural Question Bank — Cameroon and African history

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CAMEROON AND AFRICAN HISTORY

**Q1.** (a) What is history? *(2 marks)*

(b) State three sources of history. *(3 marks)*

(c) Explain the importance of studying history. *(4 marks)*

---

**Q2.** (a) Define the term "pre-colonial". *(2 marks)*

(b) Describe the political organisation of the Bamoun kingdom before colonisation. *(5 marks)*

(c) Explain the role of the Fon in the traditional Bamenda society. *(4 marks)*

---

**Q3.** (a) What was the slave trade? *(2 marks)*

(b) Describe the effects of the transatlantic slave trade on Africa. *(5 marks)*

(c) Explain why the slave trade was abolished. *(4 marks)*

---

**Q4.** (a) Define the term "colonisation". *(2 marks)*

(b) Explain why European powers colonised Africa. *(4 marks)*

(c) Describe how Germany colonised Cameroon. *(5 marks)*

---

**Q5.** (a) What was the Berlin Conference? *(2 marks)*

(b) State the decisions taken at the Berlin Conference of 1884-1885. *(4 marks)*

(c) Explain the effects of the Berlin Conference on Africa. *(4 marks)*

---

**Q6.** (a) Define the term "mandate". *(2 marks)*

(b) Explain how Cameroon was divided between Britain and France after the First World War. *(5 marks)*

(c) Describe the system of indirect rule used by the British in Cameroon. *(4 marks)*

---

**Q7.** (a) What is nationalism? *(2 marks)*

(b) State three factors that led to the rise of nationalism in Cameroon. *(3 marks)*

(c) Explain the role of the UPC in the struggle for independence in Cameroon. *(5 marks)*

---

**Q8.** (a) When did Cameroon gain independence? *(2 marks)*

(b) Describe the process by which French Cameroon gained independence. *(4 marks)*

(c) Explain the role of Ahmadou Ahidjo in the independence of Cameroon. *(4 marks)*

---

**Q9.** (a) What was the plebiscite of 1961? *(2 marks)*

(b) Describe the results of the 1961 plebiscite in British Southern Cameroons. *(4 marks)*

(c) Explain the consequences of the plebiscite for the reunification of Cameroon. *(4 marks)*

---

**Q10.** (a) Define the term "reunification". *(2 marks)

(b) Describe the events leading to the reunification of Cameroon in 1961. *(5 marks)*

(c) Explain the importance of the Foumban Conference of 1961. *(4 marks)*

---

**Q11.** (a) What is a federation? *(2 marks)*

(b) Describe the federal system of government in Cameroon from 1961 to 1972. *(5 marks)*

(c) Explain why the federal system was replaced by a unitary system. *(4 marks)*

---

**Q12.** (a) Define the term "unitary state". *(2 marks)*

(b) Describe the political changes in Cameroon after 1972. *(4 marks)*

(c) Explain the role of Paul Biya in the political history of Cameroon. *(4 marks)*

---

**Q13.** (a) What is multiparty democracy? *(2 marks)*

(b) Describe the reintroduction of multiparty politics in Cameroon in 1990. *(4 marks)*

(c) Explain the importance of the 1996 constitution in Cameroon. *(4 marks)*

---

**Q14.** (a) Define the term "pan-Africanism". *(2 marks)*

(b) State three aims of pan-Africanism. *(3 marks)*

(c) Explain the role of the Organisation of African Unity in African history. *(5 marks)*

---

**Q15.** (a) What was the Scramble for Africa? *(2 marks)*

(b) Describe the causes of the Scramble for Africa. *(4 marks)*

(c) Explain the effects of the Scramble for Africa on the continent. *(4 marks)*

---

**Q16.** (a) Define the term "decolonisation". *(2 marks)*

(b) State three factors that led to the decolonisation of Africa. *(3 marks)*

(c) Explain the role of Kwame Nkrumah in the decolonisation of Ghana. *(5 marks)*

---

**Q17.** (a) What is apartheid? *(2 marks)*

(b) Describe the system of apartheid in South Africa. *(4 marks)*

(c) Explain the role of Nelson Mandela in ending apartheid. *(5 marks)*

---

**Q18.** (a) Define the term "civil war". *(2 marks)*

(b) Describe the causes of the Nigerian Civil War (1967-1970). *(4 marks)*

(c) Explain the effects of the civil war on Nigeria. *(4 marks)*

---

**Q19.** (a) What is the African Union? *(2 marks)*

(b) State three objectives of the African Union. *(3 marks)*

(c) Explain the difference between the OAU and the African Union. *(4 marks)*

---

**Q20.** (a) Define the term "economic integration". *(2 marks)*

(b) Describe the aims of the Economic Community of Central African States (ECCAS). *(4 marks)*

(c) Explain the importance of regional economic integration for Cameroon. *(4 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7

## Structural Question Bank — World history

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: WORLD HISTORY

**Q1.** (a) What was the First World War? *(2 marks)*

(b) State three causes of the First World War. *(3 marks)*

(c) Explain how the assassination of Archduke Franz Ferdinand led to the war. *(4 marks)*

---

**Q2.** (a) Define the term "alliance". *(2 marks)*

(b) Describe the alliance system in Europe before 1914. *(4 marks)*

(c) Explain how the alliance system contributed to the outbreak of the First World War. *(4 marks)*

---

**Q3.** (a) What was the Treaty of Versailles? *(2 marks)*

(b) State three terms of the Treaty of Versailles. *(3 marks)*

(c) Explain the effects of the Treaty of Versailles on Germany. *(5 marks)*

---

**Q4.** (a) Define the term "League of Nations". *(2 marks)*

(b) State three aims of the League of Nations. *(3 marks)*

(c) Explain why the League of Nations failed to prevent the Second World War. *(5 marks)*

---

**Q5.** (a) What was the Second World War? *(2 marks)*

(b) State three causes of the Second World War. *(3 marks)*

(c) Explain the role of Adolf Hitler in causing the Second World War. *(5 marks)*

---

**Q6.** (a) Define the term "totalitarianism". *(2 marks)*

(b) Describe the rise of fascism in Italy and Nazism in Germany. *(5 marks)*

(c) Explain the effects of totalitarian rule on the people of Germany. *(4 marks)*

---

**Q7.** (a) What was the Holocaust? *(2 marks)*

(b) Describe the persecution of Jews under Nazi rule. *(4 marks)*

(c) Explain the consequences of the Holocaust. *(4 marks)*

---

**Q8.** (a) Define the term "Cold War". *(2 marks)*

(b) State three causes of the Cold War. *(3 marks)*

(c) Explain how the Cold War divided the world into two blocs. *(5 marks)*

---

**Q9.** (a) What was the Berlin Wall? *(2 marks)*

(b) Describe the events leading to the construction of the Berlin Wall in 1961. *(4 marks)*

(c) Explain the significance of the fall of the Berlin Wall in 1989. *(4 marks)*

---

**Q10.** (a) Define the term "nuclear arms race". *(2 marks)*

(b) Describe the development of nuclear weapons during the Cold War. *(4 marks)*

(c) Explain the importance of arms control agreements such as SALT. *(4 marks)*

---

**Q11.** (a) What was the United Nations? *(2 marks)*

(b) State three organs of the United Nations. *(3 marks)*

(c) Explain the role of the UN Security Council in maintaining peace. *(5 marks)*

---

**Q12.** (a) Define the term "decolonisation". *(2 marks)*

(b) State three factors that led to decolonisation after 1945. *(3 marks)*

(c) Explain the role of the UN in the decolonisation of Africa. *(4 marks)*

---

**Q13.** (a) What is globalisation? *(2 marks)*

(b) State three features of globalisation. *(3 marks)*

(c) Explain two effects of globalisation on developing countries. *(5 marks)*

---

**Q14.** (a) Define the term "international organisation". *(2 marks)*

(b) Describe the aims of the World Trade Organization. *(4 marks)*

(c) Explain the importance of the International Monetary Fund. *(4 marks)*

---

**Q15.** (a) What was the Cuban Missile Crisis? *(2 marks)*

(b) Describe the events of the Cuban Missile Crisis of 1962. *(5 marks)*

(c) Explain the consequences of the crisis for the Cold War. *(4 marks)*

---

**Q16.** (a) Define the term "proxy war". *(2 marks)*

(b) Describe the Korean War as a proxy war of the Cold War. *(4 marks)*

(c) Explain the effects of the Vietnam War on the United States. *(4 marks)*

---

**Q17.** (a) What was the European Union? *(2 marks)*

(b) Describe the stages of European integration from the EEC to the EU. *(5 marks)*

(c) Explain the benefits of the European Union to its members. *(4 marks)*

---

**Q18.** (a) Define the term "terrorism". *(2 marks)*

(b) State three causes of terrorism. *(3 marks)*

(c) Explain the effects of international terrorism on global security. *(5 marks)*

---

**Q19.** (a) What is the Commonwealth? *(2 marks)*

(b) State three objectives of the Commonwealth. *(3 marks)*

(c) Explain the importance of the Commonwealth to Cameroon. *(4 marks)*

---

**Q20.** (a) Define the term "human rights". *(2 marks)*

(b) State three examples of human rights. *(3 marks)*

(c) Explain the role of the Universal Declaration of Human Rights in protecting people. *(5 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8

## Structural Question Bank — Cameroon and African history

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CAMEROON AND AFRICAN HISTORY

**Q1.** (a) What is history? *(2 marks)*

(b) State three sources of history. *(3 marks)*

(c) Explain the importance of studying history. *(4 marks)*

---

**Q2.** (a) Define the term "pre-colonial". *(2 marks)*

(b) Describe the political organisation of the Bamoun kingdom before colonisation. *(5 marks)*

(c) Explain the role of the Fon in the traditional Bamenda society. *(4 marks)*

---

**Q3.** (a) What was the slave trade? *(2 marks)*

(b) Describe the effects of the transatlantic slave trade on Africa. *(5 marks)*

(c) Explain why the slave trade was abolished. *(4 marks)*

---

**Q4.** (a) Define the term "colonisation". *(2 marks)*

(b) Explain why European powers colonised Africa. *(4 marks)*

(c) Describe how Germany colonised Cameroon. *(5 marks)*

---

**Q5.** (a) What was the Berlin Conference? *(2 marks)*

(b) State the decisions taken at the Berlin Conference of 1884-1885. *(4 marks)*

(c) Explain the effects of the Berlin Conference on Africa. *(4 marks)*

---

**Q6.** (a) Define the term "mandate". *(2 marks)*

(b) Explain how Cameroon was divided between Britain and France after the First World War. *(5 marks)*

(c) Describe the system of indirect rule used by the British in Cameroon. *(4 marks)*

---

**Q7.** (a) What is nationalism? *(2 marks)*

(b) State three factors that led to the rise of nationalism in Cameroon. *(3 marks)*

(c) Explain the role of the UPC in the struggle for independence in Cameroon. *(5 marks)*

---

**Q8.** (a) When did Cameroon gain independence? *(2 marks)*

(b) Describe the process by which French Cameroon gained independence. *(4 marks)*

(c) Explain the role of Ahmadou Ahidjo in the independence of Cameroon. *(4 marks)*

---

**Q9.** (a) What was the plebiscite of 1961? *(2 marks)*

(b) Describe the results of the 1961 plebiscite in British Southern Cameroons. *(4 marks)*

(c) Explain the consequences of the plebiscite for the reunification of Cameroon. *(4 marks)*

---

**Q10.** (a) Define the term "reunification". *(2 marks)

(b) Describe the events leading to the reunification of Cameroon in 1961. *(5 marks)*

(c) Explain the importance of the Foumban Conference of 1961. *(4 marks)*

---

**Q11.** (a) What is a federation? *(2 marks)*

(b) Describe the federal system of government in Cameroon from 1961 to 1972. *(5 marks)*

(c) Explain why the federal system was replaced by a unitary system. *(4 marks)*

---

**Q12.** (a) Define the term "unitary state". *(2 marks)*

(b) Describe the political changes in Cameroon after 1972. *(4 marks)*

(c) Explain the role of Paul Biya in the political history of Cameroon. *(4 marks)*

---

**Q13.** (a) What is multiparty democracy? *(2 marks)*

(b) Describe the reintroduction of multiparty politics in Cameroon in 1990. *(4 marks)*

(c) Explain the importance of the 1996 constitution in Cameroon. *(4 marks)*

---

**Q14.** (a) Define the term "pan-Africanism". *(2 marks)*

(b) State three aims of pan-Africanism. *(3 marks)*

(c) Explain the role of the Organisation of African Unity in African history. *(5 marks)*

---

**Q15.** (a) What was the Scramble for Africa? *(2 marks)*

(b) Describe the causes of the Scramble for Africa. *(4 marks)*

(c) Explain the effects of the Scramble for Africa on the continent. *(4 marks)*

---

**Q16.** (a) Define the term "decolonisation". *(2 marks)*

(b) State three factors that led to the decolonisation of Africa. *(3 marks)*

(c) Explain the role of Kwame Nkrumah in the decolonisation of Ghana. *(5 marks)*

---

**Q17.** (a) What is apartheid? *(2 marks)*

(b) Describe the system of apartheid in South Africa. *(4 marks)*

(c) Explain the role of Nelson Mandela in ending apartheid. *(5 marks)*

---

**Q18.** (a) Define the term "civil war". *(2 marks)*

(b) Describe the causes of the Nigerian Civil War (1967-1970). *(4 marks)*

(c) Explain the effects of the civil war on Nigeria. *(4 marks)*

---

**Q19.** (a) What is the African Union? *(2 marks)*

(b) State three objectives of the African Union. *(3 marks)*

(c) Explain the difference between the OAU and the African Union. *(4 marks)*

---

**Q20.** (a) Define the term "economic integration". *(2 marks)*

(b) Describe the aims of the Economic Community of Central African States (ECCAS). *(4 marks)*

(c) Explain the importance of regional economic integration for Cameroon. *(4 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 1'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 2'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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

with chosen_topic as (
  select id
  from public.topics
  where subject = 'History'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 3'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 3

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

**Q1.** The slave trade was abolished in the British Empire in:

A. 1807  
B. 1884  
C. 1914  
D. 1945  

---

**Q2.** The conference that divided Africa among European powers was the:

A. Berlin Conference  
B. Paris Conference  
C. London Conference  
D. Geneva Conference  

---

**Q3.** The Berlin Conference took place in:

A. 1884-1885  
B. 1939-1945  
C. 1914-1918  
D. 1960-1961  

---

**Q4.** The European power that first colonised Cameroon was:

A. Germany  
B. France  
C. Belgium  
D. Britain  

---

**Q5.** Germany lost Cameroon after the:

A. First World War  
B. Scramble for Africa  
C. Second World War  
D. Berlin Conference  

---

**Q6.** After the First World War, Cameroon was divided between:

A. Britain and France  
B. Germany and Italy  
C. France and Belgium  
D. Britain and Germany  

---

**Q7.** The system of government used by the British in Cameroon was:

A. direct rule  
B. indirect rule  
C. assimilation  
D. apartheid  

---

**Q8.** The system of government used by the French in Cameroon was:

A. indirect rule  
B. assimilation  
C. federation  
D. apartheid  

---

**Q9.** The desire of a people to govern themselves is called:

A. colonialism  
B. imperialism  
C. nationalism  
D. federalism  

---

**Q10.** The political party that led the struggle for independence in French Cameroon was the:

A. KNDP  
B. CPNC  
C. CNO  
D. UPC  

---

**Q11.** French Cameroon gained independence in:

A. 1961  
B. 1972  
C. 1960  
D. 1945  

---

**Q12.** The vote held in British Southern Cameroons in 1961 was called the:

A. referendum  
B. census  
C. election  
D. plebiscite  

---

**Q13.** The reunification of Cameroon took place in:

A. 1972  
B. 1961  
C. 1960  
D. 1982  

---

**Q14.** The conference that discussed the reunification of Cameroon was held at:

A. Douala  
B. Foumban  
C. Buea  
D. Yaoundé  

---

**Q15.** Cameroon became a federation in:

A. 1972  
B. 1960  
C. 1961  
D. 1984  

---

**Q16.** The federal system in Cameroon was replaced by a unitary system in:

A. 1982  
B. 1961  
C. 1990  
D. 1972  

---

**Q17.** The first president of Cameroon was:

A. John Ngu Foncha  
B. Ruben Um Nyobé  
C. Ahmadou Ahidjo  
D. Paul Biya  

---

**Q18.** The current president of Cameroon is:

A. John Ngu Foncha  
B. Emmanuel Nganou  
C. Ahmadou Ahidjo  
D. Paul Biya  

---

**Q19.** Multiparty politics was reintroduced in Cameroon in:

A. 1982  
B. 1990  
C. 1972  
D. 1961  

---

**Q20.** The organisation formed in 1963 to unite African states was the:

A. ECOWAS  
B. OAU  
C. UN  
D. AU  

---

**Q21.** The OAU was replaced by the African Union in:

A. 2010  
B. 1990  
C. 2002  
D. 1963  

---

**Q22.** The system of racial segregation in South Africa was called:

A. colonialism  
B. assimilation  
C. indirect rule  
D. apartheid  

---

**Q23.** The leader who fought against apartheid in South Africa was:

A. Julius Nyerere  
B. Jomo Kenyatta  
C. Nelson Mandela  
D. Kwame Nkrumah  

---

**Q24.** The first president of independent Ghana was:

A. Julius Nyerere  
B. Jomo Kenyatta  
C. Nelson Mandela  
D. Kwame Nkrumah  

---

**Q25.** The study of past events is called:

A. history  
B. geography  
C. economics  
D. sociology  

---

**Q26.** Written records of the past are called:

A. documents  
B. artefacts  
C. legends  
D. monuments  

---

**Q27.** Objects made by people in the past are called:

A. artefacts  
B. archives  
C. documents  
D. manuscripts  

---

**Q28.** The traditional ruler of the Bamenda people is the:

A. Fon  
B. Lamido  
C. Chief  
D. Sultan  

---

**Q29.** The traditional ruler of the Bamoun people is the:

A. Sultan  
B. Emir  
C. Fon  
D. Lamido  

---

**Q30.** The forced removal of Africans to the Americas was called the:

A. slave trade  
B. mandate  
C. partition  
D. scramble  

---

**Q31.** The international organisation formed after the First World War was the:

A. United Nations  
B. League of Nations  
C. African Union  
D. European Union  

---

**Q32.** The Second World War began in:

A. 1914  
B. 1939  
C. 1929  
D. 1945  

---

**Q33.** The Second World War ended in:

A. 1939  
B. 1918  
C. 1945  
D. 1950  

---

**Q34.** The leader of Nazi Germany was:

A. Benito Mussolini  
B. Joseph Stalin  
C. Winston Churchill  
D. Adolf Hitler  

---

**Q35.** The leader of Fascist Italy was:

A. Adolf Hitler  
B. Francisco Franco  
C. Benito Mussolini  
D. Joseph Stalin  

---

**Q36.** The systematic murder of six million Jews by the Nazis was called the:

A. Genocide  
B. Inquisition  
C. Pogrom  
D. Holocaust  

---

**Q37.** The state of tension between the USA and the USSR after 1945 was called the:

A. Proxy War  
B. Cold War  
C. World War  
D. Trade War  

---

**Q38.** The wall that divided Berlin was built in:

A. 1989  
B. 1961  
C. 1950  
D. 1945  

---

**Q39.** The Berlin Wall fell in:

A. 1945  
B. 1961  
C. 1989  
D. 1991  

---

**Q40.** The international organisation formed in 1945 to maintain peace was the:

A. African Union  
B. League of Nations  
C. European Union  
D. United Nations  

---

**Q41.** The organ of the UN responsible for maintaining peace is the:

A. Secretariat  
B. ICJ  
C. Security Council  
D. General Assembly  

---

**Q42.** The crisis of 1962 that brought the world close to nuclear war was the:

A. Suez Crisis  
B. Korean Crisis  
C. Berlin Crisis  
D. Cuban Missile Crisis  

---

**Q43.** The war fought between North and South Korea from 1950 to 1953 was a:

A. trade war  
B. proxy war  
C. world war  
D. civil war  

---

**Q44.** The process of granting independence to colonies is called:

A. globalisation  
B. decolonisation  
C. imperialism  
D. colonisation  

---

**Q45.** The economic union of European states is called the:

A. Commonwealth  
B. African Union  
C. European Union  
D. United Nations  

---

**Q46.** The organisation that regulates international trade is the:

A. AU  
B. IMF  
C. UN  
D. WTO  

---

**Q47.** The organisation that provides financial assistance to countries is the:

A. AU  
B. UN  
C. IMF  
D. WTO  

---

**Q48.** The increasing interconnection of the world''s economies is called:

A. protectionism  
B. nationalism  
C. colonisation  
D. globalisation  

---

**Q49.** The use of violence for political aims is called:

A. terrorism  
B. nationalism  
C. imperialism  
D. diplomacy  

---

**Q50.** The association of former British colonies is called the:

A. Commonwealth  
B. European Union  
C. United Nations  
D. African Union  

---

**Q51.** The declaration that protects the rights of all people was the:

A. Universal Declaration of Human Rights  
B. Berlin Act  
C. Treaty of Versailles  
D. Atlantic Charter  

---

**Q52.** The Universal Declaration of Human Rights was adopted in:

A. 1948  
B. 1939  
C. 1960  
D. 1918  

---

**Q53.** The leader of the Soviet Union during the Cuban Missile Crisis was:

A. Nikita Khrushchev  
B. Mikhail Gorbachev  
C. Joseph Stalin  
D. Vladimir Lenin  

---

**Q54.** The leader of the United States during the Cuban Missile Crisis was:

A. John F. Kennedy  
B. Richard Nixon  
C. Harry Truman  
D. Franklin Roosevelt  

---

**Q55.** The First World War began in:

A. 1918  
B. 1914  
C. 1939  
D. 1900  

---

**Q56.** The First World War ended in:

A. 1914  
B. 1918  
C. 1920  
D. 1945  

---

**Q57.** The assassination that triggered the First World War was that of:

A. Adolf Hitler  
B. Napoleon  
C. Archduke Franz Ferdinand  
D. Kaiser Wilhelm  

---

**Q58.** The alliance of Germany, Austria-Hungary, and Italy was called the:

A. Triple Entente  
B. Axis  
C. Allies  
D. Triple Alliance  

---

**Q59.** The alliance of Britain, France, and Russia was called the:

A. Triple Alliance  
B. Central Powers  
C. Triple Entente  
D. Axis  

---

**Q60.** The treaty that ended the First World War was the:

A. Treaty of Paris  
B. Treaty of Rome  
C. Treaty of Berlin  
D. Treaty of Versailles  

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
  where subject = 'Commerce'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 4

## Structural Question Bank — Trade and business documents

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: TRADE AND BUSINESS DOCUMENTS

**Q1.** (a) Define the term "commerce". *(2 marks)*

(b) Distinguish between trade and aids to trade. *(4 marks)*

(c) Explain the importance of commerce to the economy of Cameroon. *(4 marks)*

---

**Q2.** (a) What is home trade? *(2 marks)*

(b) Distinguish between wholesale and retail trade. *(4 marks)*

(c) State three functions of a wholesaler. *(3 marks)*

---

**Q3.** (a) Define the term "retailer". *(2 marks)*

(b) State three functions of a retailer. *(3 marks)*

(c) Explain two problems faced by retailers in Cameroon. *(4 marks)*

---

**Q4.** (a) What is foreign trade? *(2 marks)*

(b) Distinguish between imports and exports. *(4 marks)*

(c) Explain the importance of foreign trade to Cameroon. *(4 marks)*

---

**Q5.** (a) Define the terms "balance of trade" and "balance of payments". *(4 marks)*

(b) Explain the difference between a favourable and an unfavourable balance of trade. *(4 marks)*

(c) State three ways of correcting an unfavourable balance of trade. *(3 marks)*

---

**Q6.** (a) What is an invoice? *(2 marks)*

(b) State the information contained in an invoice. *(4 marks)*

(c) Distinguish between a proforma invoice and a commercial invoice. *(4 marks)*

---

**Q7.** (a) Define the terms "receipt" and "credit note". *(4 marks)*

(b) Explain when a credit note is issued. *(3 marks)*

(c) Distinguish between a debit note and a credit note. *(4 marks)*

---

**Q8.** (a) What is a bill of lading? *(2 marks)*

(b) State the functions of a bill of lading. *(4 marks)*

(c) Explain the difference between a bill of lading and an air waybill. *(4 marks)*

---

**Q9.** (a) Define the term "transport". *(2 marks)*

(b) State three modes of transport used in trade. *(3 marks)*

(c) Explain the advantages and disadvantages of road transport. *(5 marks)*

---

**Q10.** (a) What is a warehouse? *(2 marks)*

(b) State three functions of warehousing. *(3 marks)

(c) Explain the importance of warehousing to a wholesaler. *(4 marks)*

---

**Q11.** (a) Define the term "advertising". *(2 marks)*

(b) State three media used for advertising. *(3 marks)*

(c) Explain the importance of advertising to a business. *(4 marks)*

---

**Q12.** (a) What is a market? *(2 marks)*

(b) Distinguish between a consumer market and an industrial market. *(4 marks)*

(c) State three factors that influence the choice of a market. *(3 marks)*

---

**Q13.** (a) Define the term "marketing". *(2 marks)*

(b) State the four Ps of the marketing mix. *(4 marks)*

(c) Explain the importance of the marketing mix to a business. *(4 marks)*

---

**Q14.** (a) What is a sole proprietorship? *(2 marks)*

(b) State three advantages and three disadvantages of a sole proprietorship. *(6 marks)*

(c) Explain why many small businesses in Cameroon are sole proprietorships. *(3 marks)*

---

**Q15.** (a) Define the term "partnership". *(2 marks)*

(b) State three features of a partnership. *(3 marks)*

(c) Explain the difference between a general partner and a limited partner. *(4 marks)*

---

**Q16.** (a) What is a limited liability company? *(2 marks)*

(b) Distinguish between a private limited company and a public limited company. *(4 marks)*

(c) State three advantages of a limited liability company. *(3 marks)*

---

**Q17.** (a) Define the term "cooperative society". *(2 marks)*

(b) State three types of cooperative societies. *(3 marks)*

(c) Explain the importance of cooperative societies to farmers in Cameroon. *(4 marks)*

---

**Q18.** (a) What is a multinational company? *(2 marks)*

(b) State three characteristics of a multinational company. *(3 marks)*

(c) Explain two advantages and two disadvantages of multinational companies to Cameroon. *(5 marks)*

---

**Q19.** (a) Define the term "e-commerce". *(2 marks)*

(b) State three forms of e-commerce. *(3 marks)*

(c) Explain the advantages and disadvantages of e-commerce. *(5 marks)*

---

**Q20.** (a) What is a trade union? *(2 marks)*

(b) State three functions of a trade union. *(3 marks)*

(c) Explain the importance of trade unions to workers. *(4 marks)*
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
  where subject = 'Commerce'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 5

## Structural Question Bank — Finance, banking, and insurance

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FINANCE, BANKING, AND INSURANCE

**Q1.** (a) Define the term "money". *(2 marks)*

(b) State the functions of money. *(4 marks)*

(c) Explain the qualities of good money. *(4 marks)*

---

**Q2.** (a) What is a bank? *(2 marks)*

(b) Distinguish between a commercial bank and a central bank. *(4 marks)*

(c) State three functions of a commercial bank. *(3 marks)*

---

**Q3.** (a) Define the terms "deposit" and "withdrawal". *(4 marks)*

(b) State three types of bank accounts. *(3 marks)*

(c) Explain the difference between a current account and a savings account. *(4 marks)*

---

**Q4.** (a) What is a cheque? *(2 marks)*

(b) State the parties to a cheque. *(3 marks)*

(c) Distinguish between an open cheque and a crossed cheque. *(4 marks)*

---

**Q5.** (a) Define the terms "credit" and "debit". *(4 marks)*

(b) State three forms of credit. *(3 marks)*

(c) Explain the advantages and disadvantages of buying on credit. *(4 marks)*

---

**Q6.** (a) What is a loan? *(2 marks)*

(b) State three types of loans offered by banks. *(3 marks)*

(c) Explain the importance of loans to businesses. *(4 marks)*

---

**Q7.** (a) Define the term "interest". *(2 marks)*

(b) Explain the difference between simple interest and compound interest. *(4 marks)*

(c) Calculate the simple interest on 100,000 FCFA at 5% per annum for 2 years. *(4 marks)*

---

**Q8.** (a) What is insurance? *(2 marks)*

(b) State the principles of insurance. *(4 marks)*

(c) Explain the difference between life insurance and general insurance. *(4 marks)*

---

**Q9.** (a) Define the terms "premium" and "policy". *(4 marks)*

(b) Explain the principle of insurable interest. *(4 marks)*

(c) State three types of insurance policies. *(3 marks)*

---

**Q10.** (a) What is a claim? *(2 marks)*

(b) Describe the procedure for making an insurance claim. *(4 marks)*

(c) Explain the principle of indemnity. *(4 marks)*

---

**Q11.** (a) Define the term "communication". *(2 marks)*

(b) State three means of communication used in business. *(3 marks)*

(c) Explain the importance of communication in business. *(4 marks)*

---

**Q12.** (a) What is a telephone? *(2 marks)*

(b) State three advantages of using the telephone in business. *(3 marks)*

(c) Explain the difference between a landline and a mobile phone. *(4 marks)*

---

**Q13.** (a) Define the term "advertising". *(2 marks)*

(b) State three objectives of advertising. *(3 marks)*

(c) Explain the difference between informative and persuasive advertising. *(4 marks)*

---

**Q14.** (a) What is consumer protection? *(2 marks)*

(b) State three rights of a consumer. *(3 marks)*

(c) Explain the role of the government in protecting consumers. *(4 marks)*

---

**Q15.** (a) Define the term "consumer association". *(2 marks)*

(b) State three functions of a consumer association. *(3 marks)*

(c) Explain how consumers can protect themselves from exploitation. *(4 marks)*

---

**Q16.** (a) What is a savings and loan cooperative? *(2 marks)*

(b) State three functions of savings and loan cooperatives. *(3 marks)*

(c) Explain the importance of microfinance institutions to small businesses. *(4 marks)*

---

**Q17.** (a) Define the term "stock exchange". *(2 marks)*

(b) State three functions of a stock exchange. *(3 marks)*

(c) Explain the importance of the Douala Stock Exchange to Cameroon. *(4 marks)*

---

**Q18.** (a) What is a bond? *(2 marks)*

(b) Distinguish between shares and bonds. *(4 marks)*

(c) State three types of shares. *(3 marks)*

---

**Q19.** (a) Define the term "inflation". *(2 marks)*

(b) State three causes of inflation. *(3 marks)*

(c) Explain the effects of inflation on consumers and businesses. *(5 marks)*

---

**Q20.** (a) What is a budget? *(2 marks)*

(b) State three types of budgets. *(3 marks)*

(c) Explain the importance of budgeting to a business. *(4 marks)*
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
  where subject = 'Commerce'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 6

## Structural Question Bank — Trade and business documents

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: TRADE AND BUSINESS DOCUMENTS

**Q1.** (a) Define the term "commerce". *(2 marks)*

(b) Distinguish between trade and aids to trade. *(4 marks)*

(c) Explain the importance of commerce to the economy of Cameroon. *(4 marks)*

---

**Q2.** (a) What is home trade? *(2 marks)*

(b) Distinguish between wholesale and retail trade. *(4 marks)*

(c) State three functions of a wholesaler. *(3 marks)*

---

**Q3.** (a) Define the term "retailer". *(2 marks)*

(b) State three functions of a retailer. *(3 marks)*

(c) Explain two problems faced by retailers in Cameroon. *(4 marks)*

---

**Q4.** (a) What is foreign trade? *(2 marks)*

(b) Distinguish between imports and exports. *(4 marks)*

(c) Explain the importance of foreign trade to Cameroon. *(4 marks)*

---

**Q5.** (a) Define the terms "balance of trade" and "balance of payments". *(4 marks)*

(b) Explain the difference between a favourable and an unfavourable balance of trade. *(4 marks)*

(c) State three ways of correcting an unfavourable balance of trade. *(3 marks)*

---

**Q6.** (a) What is an invoice? *(2 marks)*

(b) State the information contained in an invoice. *(4 marks)*

(c) Distinguish between a proforma invoice and a commercial invoice. *(4 marks)*

---

**Q7.** (a) Define the terms "receipt" and "credit note". *(4 marks)*

(b) Explain when a credit note is issued. *(3 marks)*

(c) Distinguish between a debit note and a credit note. *(4 marks)*

---

**Q8.** (a) What is a bill of lading? *(2 marks)*

(b) State the functions of a bill of lading. *(4 marks)*

(c) Explain the difference between a bill of lading and an air waybill. *(4 marks)*

---

**Q9.** (a) Define the term "transport". *(2 marks)*

(b) State three modes of transport used in trade. *(3 marks)*

(c) Explain the advantages and disadvantages of road transport. *(5 marks)*

---

**Q10.** (a) What is a warehouse? *(2 marks)*

(b) State three functions of warehousing. *(3 marks)

(c) Explain the importance of warehousing to a wholesaler. *(4 marks)*

---

**Q11.** (a) Define the term "advertising". *(2 marks)*

(b) State three media used for advertising. *(3 marks)*

(c) Explain the importance of advertising to a business. *(4 marks)*

---

**Q12.** (a) What is a market? *(2 marks)*

(b) Distinguish between a consumer market and an industrial market. *(4 marks)*

(c) State three factors that influence the choice of a market. *(3 marks)*

---

**Q13.** (a) Define the term "marketing". *(2 marks)*

(b) State the four Ps of the marketing mix. *(4 marks)*

(c) Explain the importance of the marketing mix to a business. *(4 marks)*

---

**Q14.** (a) What is a sole proprietorship? *(2 marks)*

(b) State three advantages and three disadvantages of a sole proprietorship. *(6 marks)*

(c) Explain why many small businesses in Cameroon are sole proprietorships. *(3 marks)*

---

**Q15.** (a) Define the term "partnership". *(2 marks)*

(b) State three features of a partnership. *(3 marks)*

(c) Explain the difference between a general partner and a limited partner. *(4 marks)*

---

**Q16.** (a) What is a limited liability company? *(2 marks)*

(b) Distinguish between a private limited company and a public limited company. *(4 marks)*

(c) State three advantages of a limited liability company. *(3 marks)*

---

**Q17.** (a) Define the term "cooperative society". *(2 marks)*

(b) State three types of cooperative societies. *(3 marks)*

(c) Explain the importance of cooperative societies to farmers in Cameroon. *(4 marks)*

---

**Q18.** (a) What is a multinational company? *(2 marks)*

(b) State three characteristics of a multinational company. *(3 marks)*

(c) Explain two advantages and two disadvantages of multinational companies to Cameroon. *(5 marks)*

---

**Q19.** (a) Define the term "e-commerce". *(2 marks)*

(b) State three forms of e-commerce. *(3 marks)*

(c) Explain the advantages and disadvantages of e-commerce. *(5 marks)*

---

**Q20.** (a) What is a trade union? *(2 marks)*

(b) State three functions of a trade union. *(3 marks)*

(c) Explain the importance of trade unions to workers. *(4 marks)*
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