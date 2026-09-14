begin;

with chosen_topic as (
  select id from public.topics where subject = 'Commerce' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3' limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce', 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3', 'english', 'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published', '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3

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
', null
) on conflict (id) do update set
  topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language,
  level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status,
  markdown_content = excluded.markdown_content, updated_at = now();

with chosen_topic as (
  select id from public.topics where subject = 'Accounting' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1' limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by
) values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting', 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1', 'english', 'ordinary',
  array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published', '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOURCE DOCUMENTS

**Q1.** Source documents: A business records transactions involving cash 2000, credit sales 3000, purchases 4000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Source documents: A business records transactions involving cash 3000, credit sales 4000, purchases 5000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Source documents: A business records transactions involving cash 4000, credit sales 5000, purchases 6000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Source documents: A business records transactions involving cash 5000, credit sales 6000, purchases 7000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Source documents: A business records transactions involving cash 6000, credit sales 7000, purchases 8000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: BOOKS OF ORIGINAL ENTRY

**Q6.** Books of original entry: A business records transactions involving cash 7000, credit sales 8000, purchases 9000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Books of original entry: A business records transactions involving cash 8000, credit sales 9000, purchases 10000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Books of original entry: A business records transactions involving cash 9000, credit sales 10000, purchases 11000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Books of original entry: A business records transactions involving cash 10000, credit sales 11000, purchases 12000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Books of original entry: A business records transactions involving cash 11000, credit sales 12000, purchases 13000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: LEDGER ACCOUNTS

**Q11.** Ledger accounts: A business records transactions involving cash 12000, credit sales 13000, purchases 14000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Ledger accounts: A business records transactions involving cash 13000, credit sales 14000, purchases 15000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Ledger accounts: A business records transactions involving cash 14000, credit sales 15000, purchases 16000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Ledger accounts: A business records transactions involving cash 15000, credit sales 16000, purchases 17000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Ledger accounts: A business records transactions involving cash 16000, credit sales 17000, purchases 18000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: TRIAL BALANCE

**Q16.** Trial balance: A business records transactions involving cash 17000, credit sales 18000, purchases 19000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Trial balance: A business records transactions involving cash 18000, credit sales 19000, purchases 20000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Trial balance: A business records transactions involving cash 19000, credit sales 20000, purchases 21000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Trial balance: A business records transactions involving cash 20000, credit sales 21000, purchases 22000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Trial balance: A business records transactions involving cash 21000, credit sales 22000, purchases 23000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: FINAL ACCOUNTS

**Q21.** Final accounts: A business records transactions involving cash 22000, credit sales 23000, purchases 24000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Final accounts: A business records transactions involving cash 23000, credit sales 24000, purchases 25000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Final accounts: A business records transactions involving cash 24000, credit sales 25000, purchases 26000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Final accounts: A business records transactions involving cash 25000, credit sales 26000, purchases 27000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Final accounts: A business records transactions involving cash 26000, credit sales 27000, purchases 28000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: CONTROL ACCOUNTS

**Q26.** Control accounts: A business records transactions involving cash 27000, credit sales 28000, purchases 29000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Control accounts: A business records transactions involving cash 28000, credit sales 29000, purchases 30000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Control accounts: A business records transactions involving cash 29000, credit sales 30000, purchases 31000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Control accounts: A business records transactions involving cash 30000, credit sales 31000, purchases 32000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Control accounts: A business records transactions involving cash 31000, credit sales 32000, purchases 33000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: BANK RECONCILIATION

**Q31.** Bank reconciliation: A business records transactions involving cash 32000, credit sales 33000, purchases 34000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Bank reconciliation: A business records transactions involving cash 33000, credit sales 34000, purchases 35000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Bank reconciliation: A business records transactions involving cash 34000, credit sales 35000, purchases 36000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Bank reconciliation: A business records transactions involving cash 35000, credit sales 36000, purchases 37000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Bank reconciliation: A business records transactions involving cash 36000, credit sales 37000, purchases 38000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: DEPRECIATION

**Q36.** Depreciation: A business records transactions involving cash 37000, credit sales 38000, purchases 39000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** Depreciation: A business records transactions involving cash 38000, credit sales 39000, purchases 40000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** Depreciation: A business records transactions involving cash 39000, credit sales 40000, purchases 41000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** Depreciation: A business records transactions involving cash 40000, credit sales 41000, purchases 42000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** Depreciation: A business records transactions involving cash 41000, credit sales 42000, purchases 43000, returns, and depreciation. Prepare or correct the required accounting records.

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