begin;

with chosen_topic as (
  select id from public.topics where subject = 'Commerce' order by case when level = 'ordinary' then 0 else 1 end, title limit 1
), existing as (
  select id from public.course_documents where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3' limit 1
)
insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, created_by)
values (coalesce((select id from existing), gen_random_uuid()), (select id from chosen_topic), 'Commerce', 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3', 'english', 'ordinary', array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth']::text[], array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[], 'published', '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3

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
', null)
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, updated_at = now();

commit;
