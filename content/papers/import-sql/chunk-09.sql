begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Commerce'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 1

## Structural Question Bank - Set 1

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

## SECTION 1: TRADE

**Q1.** Trade: Trader case 1 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Trade: Trader case 2 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Trade: Trader case 3 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Trade: Trader case 4 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

![Market graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Trade: Trader case 5 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: RETAIL AND WHOLESALE

**Q6.** Retail and wholesale: Trader case 6 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Retail and wholesale: Trader case 7 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Retail and wholesale: Trader case 8 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Retail and wholesale: Trader case 9 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Retail and wholesale: Trader case 10 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: BUSINESS UNITS

**Q11.** Business units: Trader case 11 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Business units: Trader case 12 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Business units: Trader case 13 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Business units: Trader case 14 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Business units: Trader case 15 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: TRANSPORT

**Q16.** Transport: Trader case 16 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Transport: Trader case 17 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Transport: Trader case 18 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Transport: Trader case 19 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Transport: Trader case 20 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: WAREHOUSING

**Q21.** Warehousing: Trader case 21 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Warehousing: Trader case 22 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Warehousing: Trader case 23 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Warehousing: Trader case 24 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Warehousing: Trader case 25 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: INSURANCE

**Q26.** Insurance: Trader case 26 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Insurance: Trader case 27 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Insurance: Trader case 28 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Insurance: Trader case 29 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Insurance: Trader case 30 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: BANKING

**Q31.** Banking: Trader case 31 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Banking: Trader case 32 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Banking: Trader case 33 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Banking: Trader case 34 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Banking: Trader case 35 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: INTERNATIONAL TRADE

**Q36.** International trade: Trader case 36 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** International trade: Trader case 37 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** International trade: Trader case 38 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** International trade: Trader case 39 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** International trade: Trader case 40 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

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
  where subject = 'Commerce'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 2

## Structural Question Bank - Set 2

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

## SECTION 1: TRADE

**Q1.** Trade: Trader case 1 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Trade: Trader case 2 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Trade: Trader case 3 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Trade: Trader case 4 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

![Market graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Trade: Trader case 5 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: RETAIL AND WHOLESALE

**Q6.** Retail and wholesale: Trader case 6 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Retail and wholesale: Trader case 7 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Retail and wholesale: Trader case 8 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Retail and wholesale: Trader case 9 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Retail and wholesale: Trader case 10 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: BUSINESS UNITS

**Q11.** Business units: Trader case 11 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Business units: Trader case 12 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Business units: Trader case 13 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Business units: Trader case 14 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Business units: Trader case 15 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: TRANSPORT

**Q16.** Transport: Trader case 16 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Transport: Trader case 17 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Transport: Trader case 18 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Transport: Trader case 19 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Transport: Trader case 20 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: WAREHOUSING

**Q21.** Warehousing: Trader case 21 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Warehousing: Trader case 22 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Warehousing: Trader case 23 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Warehousing: Trader case 24 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Warehousing: Trader case 25 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: INSURANCE

**Q26.** Insurance: Trader case 26 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Insurance: Trader case 27 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Insurance: Trader case 28 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Insurance: Trader case 29 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Insurance: Trader case 30 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: BANKING

**Q31.** Banking: Trader case 31 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Banking: Trader case 32 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Banking: Trader case 33 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Banking: Trader case 34 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Banking: Trader case 35 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: INTERNATIONAL TRADE

**Q36.** International trade: Trader case 36 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** International trade: Trader case 37 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** International trade: Trader case 38 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** International trade: Trader case 39 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** International trade: Trader case 40 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

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
  where subject = 'Commerce'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3

## Structural Question Bank - Set 3

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

## SECTION 1: TRADE

**Q1.** Trade: Trader case 1 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Trade: Trader case 2 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Trade: Trader case 3 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Trade: Trader case 4 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

![Market graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Trade: Trader case 5 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: RETAIL AND WHOLESALE

**Q6.** Retail and wholesale: Trader case 6 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Retail and wholesale: Trader case 7 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Retail and wholesale: Trader case 8 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Retail and wholesale: Trader case 9 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Retail and wholesale: Trader case 10 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: BUSINESS UNITS

**Q11.** Business units: Trader case 11 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Business units: Trader case 12 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Business units: Trader case 13 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Business units: Trader case 14 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Business units: Trader case 15 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: TRANSPORT

**Q16.** Transport: Trader case 16 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Transport: Trader case 17 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Transport: Trader case 18 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Transport: Trader case 19 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Transport: Trader case 20 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: WAREHOUSING

**Q21.** Warehousing: Trader case 21 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Warehousing: Trader case 22 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Warehousing: Trader case 23 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Warehousing: Trader case 24 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Warehousing: Trader case 25 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: INSURANCE

**Q26.** Insurance: Trader case 26 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Insurance: Trader case 27 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Insurance: Trader case 28 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Insurance: Trader case 29 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Insurance: Trader case 30 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: BANKING

**Q31.** Banking: Trader case 31 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Banking: Trader case 32 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Banking: Trader case 33 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Banking: Trader case 34 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Banking: Trader case 35 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: INTERNATIONAL TRADE

**Q36.** International trade: Trader case 36 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** International trade: Trader case 37 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** International trade: Trader case 38 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** International trade: Trader case 39 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** International trade: Trader case 40 in Douala buys on credit, stores goods, transports them inland, insures them, and sells to retailers. Analyse the commercial documents and risks involved.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

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
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7

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
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8

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
  where subject = 'Computer Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level COMPUTER SCIENCE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Computer Science

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Computer Systems: Sample question 1 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Programming Basics: Sample question 2 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Data Representation: Sample question 3 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Algorithms: Sample question 4 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Internet & Networks: Sample question 5 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Databases: Sample question 6 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Social Impacts: Sample question 7 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Problem Solving: Sample question 8 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Computer Systems: Sample question 9 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Programming Basics: Sample question 10 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Data Representation: Sample question 11 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Algorithms: Sample question 12 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Internet & Networks: Sample question 13 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Databases: Sample question 14 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Social Impacts: Sample question 15 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Problem Solving: Sample question 16 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Computer Systems: Sample question 17 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Programming Basics: Sample question 18 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Data Representation: Sample question 19 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Algorithms: Sample question 20 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Internet & Networks: Sample question 21 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Databases: Sample question 22 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Social Impacts: Sample question 23 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Problem Solving: Sample question 24 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Computer Systems: Sample question 25 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Programming Basics: Sample question 26 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Data Representation: Sample question 27 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Algorithms: Sample question 28 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Internet & Networks: Sample question 29 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Databases: Sample question 30 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Social Impacts: Sample question 31 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Problem Solving: Sample question 32 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Computer Systems: Sample question 33 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Programming Basics: Sample question 34 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Data Representation: Sample question 35 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Algorithms: Sample question 36 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Internet & Networks: Sample question 37 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Databases: Sample question 38 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Social Impacts: Sample question 39 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Problem Solving: Sample question 40 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Computer Systems: Sample question 41 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Programming Basics: Sample question 42 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Data Representation: Sample question 43 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Algorithms: Sample question 44 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Internet & Networks: Sample question 45 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Databases: Sample question 46 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Social Impacts: Sample question 47 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Problem Solving: Sample question 48 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Computer Systems: Sample question 49 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Programming Basics: Sample question 50 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Data Representation: Sample question 51 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Algorithms: Sample question 52 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Internet & Networks: Sample question 53 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Databases: Sample question 54 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Social Impacts: Sample question 55 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Problem Solving: Sample question 56 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Computer Systems: Sample question 57 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Programming Basics: Sample question 58 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Data Representation: Sample question 59 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Algorithms: Sample question 60 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

## ANSWER KEY

1. A
2. B
3. C
4. D
5. A
6. B
7. C
8. D
9. A
10. B
11. C
12. D
13. A
14. B
15. C
16. D
17. A
18. B
19. C
20. D
21. A
22. B
23. C
24. D
25. A
26. B
27. C
28. D
29. A
30. B
31. C
32. D
33. A
34. B
35. C
36. D
37. A
38. B
39. C
40. D
41. A
42. B
43. C
44. D
45. A
46. B
47. C
48. D
49. A
50. B
51. C
52. D
53. A
54. B
55. C
56. D
57. A
58. B
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
  where subject = 'Computer Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level COMPUTER SCIENCE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Computer Science

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Computer Systems: Sample question 1 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Programming Basics: Sample question 2 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Data Representation: Sample question 3 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Algorithms: Sample question 4 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Internet & Networks: Sample question 5 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Databases: Sample question 6 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Social Impacts: Sample question 7 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Problem Solving: Sample question 8 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Computer Systems: Sample question 9 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Programming Basics: Sample question 10 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Data Representation: Sample question 11 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Algorithms: Sample question 12 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Internet & Networks: Sample question 13 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Databases: Sample question 14 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Social Impacts: Sample question 15 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Problem Solving: Sample question 16 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Computer Systems: Sample question 17 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Programming Basics: Sample question 18 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Data Representation: Sample question 19 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Algorithms: Sample question 20 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Internet & Networks: Sample question 21 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Databases: Sample question 22 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Social Impacts: Sample question 23 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Problem Solving: Sample question 24 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Computer Systems: Sample question 25 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Programming Basics: Sample question 26 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Data Representation: Sample question 27 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Algorithms: Sample question 28 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Internet & Networks: Sample question 29 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Databases: Sample question 30 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Social Impacts: Sample question 31 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Problem Solving: Sample question 32 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Computer Systems: Sample question 33 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Programming Basics: Sample question 34 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Data Representation: Sample question 35 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Algorithms: Sample question 36 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Internet & Networks: Sample question 37 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Databases: Sample question 38 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Social Impacts: Sample question 39 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Problem Solving: Sample question 40 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Computer Systems: Sample question 41 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Programming Basics: Sample question 42 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Data Representation: Sample question 43 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Algorithms: Sample question 44 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Internet & Networks: Sample question 45 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Databases: Sample question 46 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Social Impacts: Sample question 47 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Problem Solving: Sample question 48 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Computer Systems: Sample question 49 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Programming Basics: Sample question 50 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Data Representation: Sample question 51 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Algorithms: Sample question 52 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Internet & Networks: Sample question 53 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Databases: Sample question 54 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Social Impacts: Sample question 55 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Problem Solving: Sample question 56 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Computer Systems: Sample question 57 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Programming Basics: Sample question 58 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Data Representation: Sample question 59 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Algorithms: Sample question 60 for Computer Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

## ANSWER KEY

1. A
2. B
3. C
4. D
5. A
6. B
7. C
8. D
9. A
10. B
11. C
12. D
13. A
14. B
15. C
16. D
17. A
18. B
19. C
20. D
21. A
22. B
23. C
24. D
25. A
26. B
27. C
28. D
29. A
30. B
31. C
32. D
33. A
34. B
35. C
36. D
37. A
38. B
39. C
40. D
41. A
42. B
43. C
44. D
45. A
46. B
47. C
48. D
49. A
50. B
51. C
52. D
53. A
54. B
55. C
56. D
57. A
58. B
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