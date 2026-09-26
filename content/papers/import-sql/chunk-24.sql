begin;

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
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8

## Structural Question Bank — Productivity tools and digital communication

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, commercial, technical
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PRODUCTIVITY TOOLS AND DIGITAL COMMUNICATION

**Q1.** (a) What is a word processor? *(2 marks)*

(b) State four features of a word processor. *(4 marks)*

(c) Explain the difference between saving a document and printing a document. *(4 marks)*

---

**Q2.** (a) Define the terms "cut", "copy", and "paste" as used in word processing. *(3 marks)*

(b) Describe how you would change the font and size of text in a word processor. *(4 marks)*

(c) State two advantages of using a word processor over a typewriter. *(4 marks)*

---

**Q3.** (a) What is a spreadsheet? *(2 marks)*

(b) Define the terms cell, row, column, and range. *(4 marks)*

(c) Explain the difference between a formula and a function in a spreadsheet. *(4 marks)*

---

**Q4.** (a) State the function of the following spreadsheet functions: SUM, AVERAGE, MAX, MIN. *(4 marks)*

(b) Write the formula to add the values in cells A1 to A10. *(3 marks)*

(c) Explain what happens when a formula is copied to another cell. *(4 marks)*

---

**Q5.** (a) What is a presentation? *(2 marks)*

(b) State four features of a presentation program. *(4 marks)*

(c) Explain the importance of using bullet points in a presentation. *(4 marks)*

---

**Q6.** (a) Define the terms slide, transition, and animation. *(3 marks)*

(b) Describe how you would add a transition to a slide. *(4 marks)*

(c) State two guidelines for making an effective presentation. *(4 marks)*

---

**Q7.** (a) What is the internet? *(2 marks)*

(b) State three services provided by the internet. *(3 marks)*

(c) Explain the difference between the internet and the World Wide Web. *(4 marks)*

---

**Q8.** (a) Define the terms URL, browser, and search engine. *(3 marks)*

(b) Describe how you would search for information on the internet. *(4 marks)*

(c) State two ways of evaluating the reliability of a website. *(4 marks)*

---

**Q9.** (a) What is email? *(2 marks)*

(b) State the parts of an email address. *(3 marks)*

(c) Explain the difference between "To", "Cc", and "Bcc" fields in an email. *(4 marks)*

---

**Q10.** (a) Define the terms attachment and spam. *(2 marks)*

(b) Describe how you would attach a file to an email. *(4 marks)*

(c) State two precautions to take when opening email attachments. *(4 marks)*

---

**Q11.** (a) What is a social media platform? *(2 marks)*

(b) State three benefits of social media. *(3 marks)*

(c) Explain two risks of using social media. *(4 marks)*

---

**Q12.** (a) Define the term "digital citizenship". *(2 marks)*

(b) State three responsibilities of a digital citizen. *(3 marks)*

(c) Explain what is meant by "digital footprint". *(4 marks)*

---

**Q13.** (a) What is cyberbullying? *(2 marks)*

(b) State three ways to protect yourself from cyberbullying. *(3 marks)*

(c) Explain what you should do if you are a victim of cyberbullying. *(4 marks)*

---

**Q14.** (a) Define the terms "netiquette" and "copyright". *(4 marks)*

(b) State two examples of good netiquette. *(2 marks)*

(c) Explain why it is important to respect copyright when using online content. *(4 marks)*

---

**Q15.** (a) What is cloud computing? *(2 marks)*

(b) State three advantages of cloud storage. *(3 marks)*

(c) Explain one risk of storing data in the cloud. *(4 marks)*

---

**Q16.** (a) Define the terms "upload" and "download". *(2 marks)*

(b) Describe how you would share a document using a cloud service. *(4 marks)*

(c) State two benefits of collaborating on documents online. *(4 marks)*

---

**Q17.** (a) What is a database? *(2 marks)*

(b) Define the terms table, record, and field. *(3 marks)*

(c) Explain the difference between a primary key and a foreign key. *(4 marks)*

---

**Q18.** (a) State the function of a query in a database. *(2 marks)*

(b) Describe how you would sort records in a database. *(4 marks)*

(c) Explain the difference between a filter and a query. *(4 marks)*

---

**Q19.** (a) What is a computer virus? *(2 marks)*

(b) State three ways a computer can be infected by a virus. *(3 marks)*

(c) Describe two ways of protecting a computer from viruses. *(4 marks)*

---

**Q20.** (a) Define the terms "firewall" and "antivirus software". *(4 marks)*

(b) Explain the difference between a firewall and antivirus software. *(4 marks)*

(c) State two other security measures for protecting data. *(4 marks)*
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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level LOGIC P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Propositions: Sample question 1 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Arguments: Sample question 2 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Fallacies: Sample question 3 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Syllogisms: Sample question 4 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Truth Tables: Sample question 5 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Propositional Logic: Sample question 6 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Predicate Logic: Sample question 7 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Critical Thinking: Sample question 8 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Propositions: Sample question 9 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Arguments: Sample question 10 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Fallacies: Sample question 11 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Syllogisms: Sample question 12 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Truth Tables: Sample question 13 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Propositional Logic: Sample question 14 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Predicate Logic: Sample question 15 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Critical Thinking: Sample question 16 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Propositions: Sample question 17 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Arguments: Sample question 18 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Fallacies: Sample question 19 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Syllogisms: Sample question 20 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Truth Tables: Sample question 21 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Propositional Logic: Sample question 22 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Predicate Logic: Sample question 23 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Critical Thinking: Sample question 24 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Propositions: Sample question 25 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Arguments: Sample question 26 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Fallacies: Sample question 27 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Syllogisms: Sample question 28 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Truth Tables: Sample question 29 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Propositional Logic: Sample question 30 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Predicate Logic: Sample question 31 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Critical Thinking: Sample question 32 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Propositions: Sample question 33 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Arguments: Sample question 34 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Fallacies: Sample question 35 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Syllogisms: Sample question 36 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Truth Tables: Sample question 37 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Propositional Logic: Sample question 38 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Predicate Logic: Sample question 39 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Critical Thinking: Sample question 40 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Propositions: Sample question 41 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Arguments: Sample question 42 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Fallacies: Sample question 43 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Syllogisms: Sample question 44 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Truth Tables: Sample question 45 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Propositional Logic: Sample question 46 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Predicate Logic: Sample question 47 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Critical Thinking: Sample question 48 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Propositions: Sample question 49 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Arguments: Sample question 50 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Fallacies: Sample question 51 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Syllogisms: Sample question 52 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Truth Tables: Sample question 53 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Propositional Logic: Sample question 54 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Predicate Logic: Sample question 55 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Critical Thinking: Sample question 56 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Propositions: Sample question 57 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Arguments: Sample question 58 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Fallacies: Sample question 59 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Syllogisms: Sample question 60 for Logic Ordinary Level Paper 1.

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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level LOGIC P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Propositions: Sample question 1 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Arguments: Sample question 2 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Fallacies: Sample question 3 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Syllogisms: Sample question 4 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Truth Tables: Sample question 5 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Propositional Logic: Sample question 6 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Predicate Logic: Sample question 7 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Critical Thinking: Sample question 8 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Propositions: Sample question 9 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Arguments: Sample question 10 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Fallacies: Sample question 11 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Syllogisms: Sample question 12 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Truth Tables: Sample question 13 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Propositional Logic: Sample question 14 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Predicate Logic: Sample question 15 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Critical Thinking: Sample question 16 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Propositions: Sample question 17 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Arguments: Sample question 18 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Fallacies: Sample question 19 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Syllogisms: Sample question 20 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Truth Tables: Sample question 21 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Propositional Logic: Sample question 22 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Predicate Logic: Sample question 23 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Critical Thinking: Sample question 24 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Propositions: Sample question 25 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Arguments: Sample question 26 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Fallacies: Sample question 27 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Syllogisms: Sample question 28 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Truth Tables: Sample question 29 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Propositional Logic: Sample question 30 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Predicate Logic: Sample question 31 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Critical Thinking: Sample question 32 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Propositions: Sample question 33 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Arguments: Sample question 34 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Fallacies: Sample question 35 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Syllogisms: Sample question 36 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Truth Tables: Sample question 37 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Propositional Logic: Sample question 38 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Predicate Logic: Sample question 39 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Critical Thinking: Sample question 40 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Propositions: Sample question 41 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Arguments: Sample question 42 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Fallacies: Sample question 43 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Syllogisms: Sample question 44 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Truth Tables: Sample question 45 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Propositional Logic: Sample question 46 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Predicate Logic: Sample question 47 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Critical Thinking: Sample question 48 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Propositions: Sample question 49 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Arguments: Sample question 50 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Fallacies: Sample question 51 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Syllogisms: Sample question 52 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Truth Tables: Sample question 53 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Propositional Logic: Sample question 54 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Predicate Logic: Sample question 55 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Critical Thinking: Sample question 56 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Propositions: Sample question 57 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Arguments: Sample question 58 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Fallacies: Sample question 59 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Syllogisms: Sample question 60 for Logic Ordinary Level Paper 1.

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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level LOGIC P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Propositions: Sample question 1 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Arguments: Sample question 2 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Fallacies: Sample question 3 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Syllogisms: Sample question 4 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Truth Tables: Sample question 5 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Propositional Logic: Sample question 6 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Predicate Logic: Sample question 7 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Critical Thinking: Sample question 8 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Propositions: Sample question 9 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Arguments: Sample question 10 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Fallacies: Sample question 11 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Syllogisms: Sample question 12 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Truth Tables: Sample question 13 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Propositional Logic: Sample question 14 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Predicate Logic: Sample question 15 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Critical Thinking: Sample question 16 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Propositions: Sample question 17 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Arguments: Sample question 18 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Fallacies: Sample question 19 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Syllogisms: Sample question 20 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Truth Tables: Sample question 21 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Propositional Logic: Sample question 22 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Predicate Logic: Sample question 23 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Critical Thinking: Sample question 24 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Propositions: Sample question 25 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Arguments: Sample question 26 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Fallacies: Sample question 27 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Syllogisms: Sample question 28 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Truth Tables: Sample question 29 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Propositional Logic: Sample question 30 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Predicate Logic: Sample question 31 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Critical Thinking: Sample question 32 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Propositions: Sample question 33 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Arguments: Sample question 34 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Fallacies: Sample question 35 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Syllogisms: Sample question 36 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Truth Tables: Sample question 37 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Propositional Logic: Sample question 38 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Predicate Logic: Sample question 39 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Critical Thinking: Sample question 40 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Propositions: Sample question 41 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Arguments: Sample question 42 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Fallacies: Sample question 43 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Syllogisms: Sample question 44 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Truth Tables: Sample question 45 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Propositional Logic: Sample question 46 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Predicate Logic: Sample question 47 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Critical Thinking: Sample question 48 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Propositions: Sample question 49 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Arguments: Sample question 50 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Fallacies: Sample question 51 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Syllogisms: Sample question 52 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Truth Tables: Sample question 53 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Propositional Logic: Sample question 54 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Predicate Logic: Sample question 55 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Critical Thinking: Sample question 56 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Propositions: Sample question 57 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Arguments: Sample question 58 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Fallacies: Sample question 59 for Logic Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Syllogisms: Sample question 60 for Logic Ordinary Level Paper 1.

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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ALGEBRA - Polynomials, Inequalities and Partial Fractions

**Q1.** The polynomial $P(x) = 2x^4 - 3x^3 + ax^2 + bx - 6$ has $(2x - 1)$ and $(x + 2)$ as factors.

(a) Find the values of $a$ and $b$. *(4 marks)*

(b) Factorise $P(x)$ completely over $\mathbb{R}$. *(3 marks)*

(c) Hence, solve the inequality $P(x) \geq 0$, expressing your answer in interval notation. *(3 marks)*

---

**Q2.** Given that $f(x) = \dfrac{3x^3 - x^2 - 13x + 7}{(x-2)(x^2 - x - 1)}$:

(a) Express $f(x)$ in partial fractions. *(6 marks)*

(b) Hence evaluate $\displaystyle\int_0^{1} f(x)\, dx$, leaving your answer in the form $a\ln 2 + b\ln 5 + c\ln 3$. *(4 marks)*

---

**Q3.** (a) Show that the equation $x^4 - 6x^2 + 2x + 3 = 0$ has a root between $x = 2$ and $x = 3$. *(2 marks)*

(b) Using the substitution $x = u + \dfrac{1}{u}$, or otherwise, solve $x^4 - 6x^2 + 2x + 3 = 0$ giving all real roots correct to 3 significant figures. *(6 marks)*

(c) Without further calculation, state the nature and number of complex roots. *(2 marks)*

---

**Q4.** Solve simultaneously the system:

$$\log_2(x + y) = 3, \quad \log_4(x - y) = 2, \quad x, y \in \mathbb{R}$$

Hence find all pairs $(x, y)$ that also satisfy $\dfrac{x^2 - y^2}{x + y} = 2y - 1$. *(10 marks)*

---

**Q5.** Given that $\alpha, \beta, \gamma$ are the roots of $x^3 - px + q = 0$, where $p, q \neq 0$:

(a) Find $\alpha^2+\beta^2+\gamma^2$, $\alpha^3+\beta^3+\gamma^3$, and $\alpha^4+\beta^4+\gamma^4$ in terms of $p$ and $q$. *(6 marks)*

(b) Find the cubic equation whose roots are $\alpha^2, \beta^2, \gamma^2$. *(4 marks)*

---

## SECTION 2: FUNCTIONS, SERIES AND TRIGONOMETRY

**Q6.** (a) Find the first four terms in the expansion of $(1 - 3x)^{-2}$ in ascending powers of $x$, stating the range of validity. *(4 marks)*

(b) Use your expansion to estimate $\dfrac{1}{0.97^2}$ correct to 5 decimal places. *(3 marks)*

(c) Find the coefficient of $x^8$ in $(1 + x + x^2)^9$. *(5 marks)*

---

**Q7.** The functions $f$ and $g$ are defined by $f(x)=e^{2x}-5$ and $g(x)=\dfrac{x+1}{x-3}$, $x \neq 3$.

(a) Find $f^{-1}(x)$ and state its domain. *(4 marks)*

(b) Solve $f(g(x)) = g(f(x))$ where both sides are defined. *(6 marks)*

(c) Find the fixed points of $g \circ g$. *(4 marks)*

---

**Q8.** The function $h(x)=x^2-6x+11$ is restricted to a domain on which it is one-to-one.

(a) State a suitable maximal domain and find $h^{-1}(x)$. *(4 marks)*

(b) Sketch $y=h(x)$ and $y=h^{-1}(x)$ on the same axes. *(3 marks)*

(c) Solve $h(x)=h^{-1}(x)$ for all possible values on the chosen domain. *(5 marks)*

---

**Q9.** (a) Prove that $\cot\theta - \tan\theta \equiv 2\cot 2\theta$. *(4 marks)*

(b) Solve $2\sin^2 x + 5\cos x - 4 = 0$ for $0^\circ \leq x \leq 360^\circ$. *(4 marks)*

(c) Find the general solution of $\cos 3x + \cos x = \cos 2x$. *(5 marks)*

---

**Q10.** In triangle $ABC$, $a=7$, $b=8$, and $c=9$.

(a) Find all angles of the triangle correct to the nearest $0.1^\circ$. *(4 marks)*

(b) Find the area of the triangle using Heron''s formula. *(3 marks)*

(c) Hence find the radius of the incircle and the circumcircle. *(5 marks)*

---

## SECTION 3: LOGARITHMS, COMPLEX NUMBERS AND DIFFERENTIATION

**Q11.** (a) Prove that $\cosh^2 x - \sinh^2 x = 1$. *(3 marks)*

(b) Solve $\cosh x + 3\sinh x = 5$, giving exact answers in logarithmic form. *(6 marks)*

(c) Evaluate $\displaystyle\int_0^{1/2}\tanh^{-1}x\,dx$. *(5 marks)*

---

**Q12.** (a) Solve $\log_3(x+5)+\log_9(x+5)=\log_3(x+5)\log_9(x+5)+1$ for $x>-5$. *(5 marks)*

(b) Show that $\dfrac{\ln 2}{\ln 3}\cdot\dfrac{\ln 3}{\ln 5}\cdot\dfrac{\ln 5}{\ln 8}=\dfrac13$. *(3 marks)*

(c) Find the exact solution of $2^x=3^{x-1}5^{2-x}$. *(5 marks)*

---

**Q13.** The complex number $z$ satisfies $|z-3i|=|z+3|$ and $\arg(z-1)=\dfrac{\pi}{4}$.

(a) Describe each locus geometrically and sketch them on an Argand diagram. *(4 marks)*

(b) Find the complex number satisfying both conditions. *(4 marks)*

(c) Find all cube roots of $-8i$ in exact polar form. *(5 marks)*

---

**Q14.** (a) Differentiate from first principles $f(x)=\dfrac{1}{\sqrt{2x+1}}$. *(4 marks)*

(b) Given $y=x^{\sin x}$, $x>0$, find $\dfrac{dy}{dx}$. *(5 marks)*

(c) The equation $e^{xy}=x+y$ defines $y$ implicitly. Find $\dfrac{dy}{dx}$ at $(1,0)$. *(4 marks)*

---

**Q15.** A curve is defined parametrically by $x=\dfrac{3t}{1+t^3}$ and $y=\dfrac{3t^2}{1+t^3}$, $t \neq -1$.

(a) Show that $x^3+y^3=3xy$. *(3 marks)*

(b) Find the equation of the tangent at $t=1$. *(4 marks)*

(c) Show that $x+y+1=0$ is an asymptote. *(4 marks)*

---

## SECTION 4: INTEGRATION AND MECHANICS

**Q16.** (a) Use the Mean Value Theorem to prove that for $0<a<b$, $\dfrac{b-a}{b}<\ln\dfrac{b}{a}<\dfrac{b-a}{a}$. *(5 marks)*

(b) Find the stationary points of $y=x^3-6x^2+9x+4$ and determine their nature. *(5 marks)*

---

**Q17.** (a) Evaluate $\displaystyle\int \dfrac{2x+5}{x^2+5x+6}\,dx$. *(4 marks)*

(b) Use integration by parts to evaluate $\displaystyle\int_0^1 x^2e^x\,dx$. *(5 marks)*

(c) Find the area enclosed by $y=x^2$ and $y=2x+3$. *(5 marks)*

---

**Q18.** (a) Find a reduction formula for $I_n=\displaystyle\int_0^{\pi/2}\sin^n x\,dx$. *(6 marks)*

(b) Hence evaluate $I_6$. *(3 marks)*

(c) Use the result to estimate $\displaystyle\int_0^{\pi/2}\sin^6x\cos^2x\,dx$. *(5 marks)*

---

**Q19.** A particle moves in a straight line with displacement $s=t^3-6t^2+9t+4$ metres after $t$ seconds.

(a) Find its velocity and acceleration at time $t$. *(3 marks)*

(b) Determine when the particle is at rest. *(3 marks)*

(c) Find the total distance travelled in the first 5 seconds. *(6 marks)*

---

**Q20.** A projectile is fired with speed $40\,\text{m s}^{-1}$ at an angle $30^\circ$ to the horizontal from level ground.

(a) Find the time of flight. *(3 marks)*

(b) Find the greatest height reached. *(3 marks)*

(c) Find the horizontal range, taking $g=10\,\text{m s}^{-2}$. *(4 marks)*

---

## SECTION 5: STATISTICS, NUMERICAL METHODS AND MATRICES

**Q21.** A body of mass $5\,\text{kg}$ rests on a rough plane inclined at $30^\circ$ to the horizontal. The coefficient of friction is $0.25$.

(a) Find the component of weight down the plane. *(2 marks)*

(b) Determine whether the body will slide. *(4 marks)*

(c) Find the least force parallel to the plane needed to move the body upwards. *(5 marks)*

---

**Q22.** Two particles of masses $3\,\text{kg}$ and $5\,\text{kg}$ are connected by a light inextensible string over a smooth pulley.

(a) Find the acceleration of the system. *(4 marks)*

(b) Find the tension in the string. *(4 marks)*

(c) State how your answer changes if the pulley is rough. *(2 marks)*

---

**Q23.** A random variable $X$ has probability distribution $P(X=x)=kx$ for $x=1,2,3,4$.

(a) Find $k$. *(2 marks)*

(b) Find $E(X)$ and $\operatorname{Var}(X)$. *(5 marks)*

(c) Find $P(X\geq 3\mid X>1)$. *(3 marks)*

---

**Q24.** The marks of 60 candidates are grouped as follows: $0-9:4$, $10-19:8$, $20-29:15$, $30-39:18$, $40-49:10$, $50-59:5$.

(a) Estimate the mean mark. *(4 marks)*

(b) Estimate the median. *(4 marks)*

(c) Draw a cumulative frequency curve and use it to estimate the interquartile range. *(5 marks)*

---

**Q25.** A sample of 100 bulbs has mean lifetime 1240 hours and standard deviation 80 hours.

(a) Construct a 95% confidence interval for the population mean. *(5 marks)*

(b) Test at the 5% level whether the mean lifetime differs from 1200 hours. *(6 marks)*

---

## SECTION 6: PROOF, COORDINATE GEOMETRY AND SEQUENCES

**Q26.** (a) Use Newton-Raphson iteration to find a root of $x^3-x-1=0$ starting with $x_0=1$. Give three iterations. *(6 marks)*

(b) Explain, using the graph of the function, why the iteration converges to the real root. *(3 marks)*

---

**Q27.** (a) Show that the matrix $A=\begin{pmatrix}2&1\\1&3\end{pmatrix}$ is invertible and find $A^{-1}$. *(4 marks)*

(b) Solve the system $2x+y=5$, $x+3y=7$ using the inverse matrix method. *(4 marks)*

(c) Interpret the transformation represented by $A$ geometrically. *(4 marks)*

---

**Q28.** (a) Prove by induction that $1^2+2^2+\cdots+n^2=\dfrac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Hence find $\sum_{r=1}^{20}(3r^2-2r+1)$. *(4 marks)*

---

**Q29.** The roots of $x^2-5x+6=0$ are $\alpha$ and $\beta$.

(a) Find a quadratic equation whose roots are $\alpha^2$ and $\beta^2$. *(4 marks)*

(b) Find a quadratic equation whose roots are $\dfrac{1}{\alpha}$ and $\dfrac{1}{\beta}$. *(4 marks)*

(c) Hence evaluate $\alpha^4+\beta^4$. *(3 marks)*

---

**Q30.** (a) Solve $|2x-3|+|x+1|=8$. *(5 marks)*

(b) Solve $\dfrac{x^2-4x+3}{x^2-x-6}\leq 0$. *(5 marks)*

(c) Represent both solution sets on separate number lines. *(2 marks)*

---

## SECTION 7: DIFFERENTIAL EQUATIONS, MODELS AND NUMERICAL INTEGRATION

**Q31.** (a) Find the equation of the circle passing through $(1,2)$, $(3,4)$, and $(5,0)$. *(6 marks)*

(b) Find the tangent to the circle at $(1,2)$. *(4 marks)*

---

**Q32.** A line $y=mx+c$ is tangent to the parabola $y=x^2-4x+1$.

(a) Find the condition relating $m$ and $c$. *(5 marks)*

(b) Find the two tangents from the point $(0,-3)$ to the parabola. *(6 marks)*

---

**Q33.** (a) Solve $\sin x + \sqrt3\cos x = 1$ for $0\leq x\leq 2\pi$. *(5 marks)*

(b) Prove that $\dfrac{1-\cos 2x}{\sin 2x}=\tan x$ where both sides are defined. *(3 marks)*

(c) Find all $x$ such that $\tan 2x=\sqrt3$ in the interval $0^\circ\leq x\leq 180^\circ$. *(4 marks)*

---

**Q34.** The arithmetic progression has first term $a$ and common difference $d$. The 5th term is 17 and the sum of the first 10 terms is 200.

(a) Find $a$ and $d$. *(5 marks)*

(b) Find the least value of $n$ for which the sum of the first $n$ terms exceeds 500. *(5 marks)*

---

**Q35.** A geometric progression has first term 81 and common ratio $\dfrac{2}{3}$.

(a) Find the 8th term. *(3 marks)*

(b) Find the sum to infinity. *(3 marks)*

(c) Find the number of terms required for the partial sum to exceed 230. *(5 marks)*

---

## SECTION 8: VECTORS AND THREE-DIMENSIONAL GEOMETRY

**Q36.** (a) Solve the differential equation $\dfrac{dy}{dx}=3x^2(1+y)$ given that $y=0$ when $x=0$. *(6 marks)*

(b) Find the value of $y$ when $x=1$. *(2 marks)*

(c) Sketch the solution curve. *(3 marks)*

---

**Q37.** A population model is given by $P(t)=\dfrac{5000}{1+4e^{-0.3t}}$.

(a) Find the initial population. *(2 marks)*

(b) Find the time when the population first reaches 3000. *(4 marks)*

(c) State the limiting population as $t\to\infty$. *(2 marks)*

---

**Q38.** (a) Use Simpson''s rule with four strips to estimate $\displaystyle\int_0^2 \dfrac{1}{1+x^2}\,dx$. *(6 marks)*

(b) Compare your estimate with $\tan^{-1}2$ and comment on the accuracy. *(4 marks)*

---

**Q39.** The vectors $\mathbf{a}=2\mathbf{i}-\mathbf{j}+3\mathbf{k}$ and $\mathbf{b}=\mathbf{i}+4\mathbf{j}-2\mathbf{k}$ are given.

(a) Find $\mathbf{a}\cdot\mathbf{b}$ and the angle between them. *(5 marks)*

(b) Find $\mathbf{a}\times\mathbf{b}$. *(4 marks)*

(c) Find the area of the parallelogram formed by $\mathbf{a}$ and $\mathbf{b}$. *(3 marks)*

---

**Q40.** The plane $2x-y+3z=6$ meets the coordinate axes at $A$, $B$, and $C$.

(a) Find the coordinates of $A$, $B$, and $C$. *(3 marks)*

(b) Find the area of triangle $ABC$. *(5 marks)*

(c) Find the shortest distance from the origin to the plane. *(4 marks)*

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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ALGEBRA - Polynomials, Inequalities and Partial Fractions

**Q1.** The polynomial $P(x) = 2x^4 - 3x^3 + ax^2 + bx - 6$ has $(2x - 1)$ and $(x + 2)$ as factors.

(a) Find the values of $a$ and $b$. *(4 marks)*

(b) Factorise $P(x)$ completely over $\mathbb{R}$. *(3 marks)*

(c) Hence, solve the inequality $P(x) \geq 0$, expressing your answer in interval notation. *(3 marks)*

---

**Q2.** Given that $f(x) = \dfrac{3x^3 - x^2 - 13x + 7}{(x-2)(x^2 - x - 1)}$:

(a) Express $f(x)$ in partial fractions. *(6 marks)*

(b) Hence evaluate $\displaystyle\int_0^{1} f(x)\, dx$, leaving your answer in the form $a\ln 2 + b\ln 5 + c\ln 3$. *(4 marks)*

---

**Q3.** (a) Show that the equation $x^4 - 6x^2 + 2x + 3 = 0$ has a root between $x = 2$ and $x = 3$. *(2 marks)*

(b) Using the substitution $x = u + \dfrac{1}{u}$, or otherwise, solve $x^4 - 6x^2 + 2x + 3 = 0$ giving all real roots correct to 3 significant figures. *(6 marks)*

(c) Without further calculation, state the nature and number of complex roots. *(2 marks)*

---

**Q4.** Solve simultaneously the system:

$$\log_2(x + y) = 3, \quad \log_4(x - y) = 2, \quad x, y \in \mathbb{R}$$

Hence find all pairs $(x, y)$ that also satisfy $\dfrac{x^2 - y^2}{x + y} = 2y - 1$. *(10 marks)*

---

**Q5.** Given that $\alpha, \beta, \gamma$ are the roots of $x^3 - px + q = 0$, where $p, q \neq 0$:

(a) Find $\alpha^2+\beta^2+\gamma^2$, $\alpha^3+\beta^3+\gamma^3$, and $\alpha^4+\beta^4+\gamma^4$ in terms of $p$ and $q$. *(6 marks)*

(b) Find the cubic equation whose roots are $\alpha^2, \beta^2, \gamma^2$. *(4 marks)*

---

## SECTION 2: FUNCTIONS, SERIES AND TRIGONOMETRY

**Q6.** (a) Find the first four terms in the expansion of $(1 - 3x)^{-2}$ in ascending powers of $x$, stating the range of validity. *(4 marks)*

(b) Use your expansion to estimate $\dfrac{1}{0.97^2}$ correct to 5 decimal places. *(3 marks)*

(c) Find the coefficient of $x^8$ in $(1 + x + x^2)^9$. *(5 marks)*

---

**Q7.** The functions $f$ and $g$ are defined by $f(x)=e^{2x}-5$ and $g(x)=\dfrac{x+1}{x-3}$, $x \neq 3$.

(a) Find $f^{-1}(x)$ and state its domain. *(4 marks)*

(b) Solve $f(g(x)) = g(f(x))$ where both sides are defined. *(6 marks)*

(c) Find the fixed points of $g \circ g$. *(4 marks)*

---

**Q8.** The function $h(x)=x^2-6x+11$ is restricted to a domain on which it is one-to-one.

(a) State a suitable maximal domain and find $h^{-1}(x)$. *(4 marks)*

(b) Sketch $y=h(x)$ and $y=h^{-1}(x)$ on the same axes. *(3 marks)*

(c) Solve $h(x)=h^{-1}(x)$ for all possible values on the chosen domain. *(5 marks)*

---

**Q9.** (a) Prove that $\cot\theta - \tan\theta \equiv 2\cot 2\theta$. *(4 marks)*

(b) Solve $2\sin^2 x + 5\cos x - 4 = 0$ for $0^\circ \leq x \leq 360^\circ$. *(4 marks)*

(c) Find the general solution of $\cos 3x + \cos x = \cos 2x$. *(5 marks)*

---

**Q10.** In triangle $ABC$, $a=7$, $b=8$, and $c=9$.

(a) Find all angles of the triangle correct to the nearest $0.1^\circ$. *(4 marks)*

(b) Find the area of the triangle using Heron''s formula. *(3 marks)*

(c) Hence find the radius of the incircle and the circumcircle. *(5 marks)*

---

## SECTION 3: LOGARITHMS, COMPLEX NUMBERS AND DIFFERENTIATION

**Q11.** (a) Prove that $\cosh^2 x - \sinh^2 x = 1$. *(3 marks)*

(b) Solve $\cosh x + 3\sinh x = 5$, giving exact answers in logarithmic form. *(6 marks)*

(c) Evaluate $\displaystyle\int_0^{1/2}\tanh^{-1}x\,dx$. *(5 marks)*

---

**Q12.** (a) Solve $\log_3(x+5)+\log_9(x+5)=\log_3(x+5)\log_9(x+5)+1$ for $x>-5$. *(5 marks)*

(b) Show that $\dfrac{\ln 2}{\ln 3}\cdot\dfrac{\ln 3}{\ln 5}\cdot\dfrac{\ln 5}{\ln 8}=\dfrac13$. *(3 marks)*

(c) Find the exact solution of $2^x=3^{x-1}5^{2-x}$. *(5 marks)*

---

**Q13.** The complex number $z$ satisfies $|z-3i|=|z+3|$ and $\arg(z-1)=\dfrac{\pi}{4}$.

(a) Describe each locus geometrically and sketch them on an Argand diagram. *(4 marks)*

(b) Find the complex number satisfying both conditions. *(4 marks)*

(c) Find all cube roots of $-8i$ in exact polar form. *(5 marks)*

---

**Q14.** (a) Differentiate from first principles $f(x)=\dfrac{1}{\sqrt{2x+1}}$. *(4 marks)*

(b) Given $y=x^{\sin x}$, $x>0$, find $\dfrac{dy}{dx}$. *(5 marks)*

(c) The equation $e^{xy}=x+y$ defines $y$ implicitly. Find $\dfrac{dy}{dx}$ at $(1,0)$. *(4 marks)*

---

**Q15.** A curve is defined parametrically by $x=\dfrac{3t}{1+t^3}$ and $y=\dfrac{3t^2}{1+t^3}$, $t \neq -1$.

(a) Show that $x^3+y^3=3xy$. *(3 marks)*

(b) Find the equation of the tangent at $t=1$. *(4 marks)*

(c) Show that $x+y+1=0$ is an asymptote. *(4 marks)*

---

## SECTION 4: INTEGRATION AND MECHANICS

**Q16.** (a) Use the Mean Value Theorem to prove that for $0<a<b$, $\dfrac{b-a}{b}<\ln\dfrac{b}{a}<\dfrac{b-a}{a}$. *(5 marks)*

(b) Find the stationary points of $y=x^3-6x^2+9x+4$ and determine their nature. *(5 marks)*

---

**Q17.** (a) Evaluate $\displaystyle\int \dfrac{2x+5}{x^2+5x+6}\,dx$. *(4 marks)*

(b) Use integration by parts to evaluate $\displaystyle\int_0^1 x^2e^x\,dx$. *(5 marks)*

(c) Find the area enclosed by $y=x^2$ and $y=2x+3$. *(5 marks)*

---

**Q18.** (a) Find a reduction formula for $I_n=\displaystyle\int_0^{\pi/2}\sin^n x\,dx$. *(6 marks)*

(b) Hence evaluate $I_6$. *(3 marks)*

(c) Use the result to estimate $\displaystyle\int_0^{\pi/2}\sin^6x\cos^2x\,dx$. *(5 marks)*

---

**Q19.** A particle moves in a straight line with displacement $s=t^3-6t^2+9t+4$ metres after $t$ seconds.

(a) Find its velocity and acceleration at time $t$. *(3 marks)*

(b) Determine when the particle is at rest. *(3 marks)*

(c) Find the total distance travelled in the first 5 seconds. *(6 marks)*

---

**Q20.** A projectile is fired with speed $40\,\text{m s}^{-1}$ at an angle $30^\circ$ to the horizontal from level ground.

(a) Find the time of flight. *(3 marks)*

(b) Find the greatest height reached. *(3 marks)*

(c) Find the horizontal range, taking $g=10\,\text{m s}^{-2}$. *(4 marks)*

---

## SECTION 5: STATISTICS, NUMERICAL METHODS AND MATRICES

**Q21.** A body of mass $5\,\text{kg}$ rests on a rough plane inclined at $30^\circ$ to the horizontal. The coefficient of friction is $0.25$.

(a) Find the component of weight down the plane. *(2 marks)*

(b) Determine whether the body will slide. *(4 marks)*

(c) Find the least force parallel to the plane needed to move the body upwards. *(5 marks)*

---

**Q22.** Two particles of masses $3\,\text{kg}$ and $5\,\text{kg}$ are connected by a light inextensible string over a smooth pulley.

(a) Find the acceleration of the system. *(4 marks)*

(b) Find the tension in the string. *(4 marks)*

(c) State how your answer changes if the pulley is rough. *(2 marks)*

---

**Q23.** A random variable $X$ has probability distribution $P(X=x)=kx$ for $x=1,2,3,4$.

(a) Find $k$. *(2 marks)*

(b) Find $E(X)$ and $\operatorname{Var}(X)$. *(5 marks)*

(c) Find $P(X\geq 3\mid X>1)$. *(3 marks)*

---

**Q24.** The marks of 60 candidates are grouped as follows: $0-9:4$, $10-19:8$, $20-29:15$, $30-39:18$, $40-49:10$, $50-59:5$.

(a) Estimate the mean mark. *(4 marks)*

(b) Estimate the median. *(4 marks)*

(c) Draw a cumulative frequency curve and use it to estimate the interquartile range. *(5 marks)*

---

**Q25.** A sample of 100 bulbs has mean lifetime 1240 hours and standard deviation 80 hours.

(a) Construct a 95% confidence interval for the population mean. *(5 marks)*

(b) Test at the 5% level whether the mean lifetime differs from 1200 hours. *(6 marks)*

---

## SECTION 6: PROOF, COORDINATE GEOMETRY AND SEQUENCES

**Q26.** (a) Use Newton-Raphson iteration to find a root of $x^3-x-1=0$ starting with $x_0=1$. Give three iterations. *(6 marks)*

(b) Explain, using the graph of the function, why the iteration converges to the real root. *(3 marks)*

---

**Q27.** (a) Show that the matrix $A=\begin{pmatrix}2&1\\1&3\end{pmatrix}$ is invertible and find $A^{-1}$. *(4 marks)*

(b) Solve the system $2x+y=5$, $x+3y=7$ using the inverse matrix method. *(4 marks)*

(c) Interpret the transformation represented by $A$ geometrically. *(4 marks)*

---

**Q28.** (a) Prove by induction that $1^2+2^2+\cdots+n^2=\dfrac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Hence find $\sum_{r=1}^{20}(3r^2-2r+1)$. *(4 marks)*

---

**Q29.** The roots of $x^2-5x+6=0$ are $\alpha$ and $\beta$.

(a) Find a quadratic equation whose roots are $\alpha^2$ and $\beta^2$. *(4 marks)*

(b) Find a quadratic equation whose roots are $\dfrac{1}{\alpha}$ and $\dfrac{1}{\beta}$. *(4 marks)*

(c) Hence evaluate $\alpha^4+\beta^4$. *(3 marks)*

---

**Q30.** (a) Solve $|2x-3|+|x+1|=8$. *(5 marks)*

(b) Solve $\dfrac{x^2-4x+3}{x^2-x-6}\leq 0$. *(5 marks)*

(c) Represent both solution sets on separate number lines. *(2 marks)*

---

## SECTION 7: DIFFERENTIAL EQUATIONS, MODELS AND NUMERICAL INTEGRATION

**Q31.** (a) Find the equation of the circle passing through $(1,2)$, $(3,4)$, and $(5,0)$. *(6 marks)*

(b) Find the tangent to the circle at $(1,2)$. *(4 marks)*

---

**Q32.** A line $y=mx+c$ is tangent to the parabola $y=x^2-4x+1$.

(a) Find the condition relating $m$ and $c$. *(5 marks)*

(b) Find the two tangents from the point $(0,-3)$ to the parabola. *(6 marks)*

---

**Q33.** (a) Solve $\sin x + \sqrt3\cos x = 1$ for $0\leq x\leq 2\pi$. *(5 marks)*

(b) Prove that $\dfrac{1-\cos 2x}{\sin 2x}=\tan x$ where both sides are defined. *(3 marks)*

(c) Find all $x$ such that $\tan 2x=\sqrt3$ in the interval $0^\circ\leq x\leq 180^\circ$. *(4 marks)*

---

**Q34.** The arithmetic progression has first term $a$ and common difference $d$. The 5th term is 17 and the sum of the first 10 terms is 200.

(a) Find $a$ and $d$. *(5 marks)*

(b) Find the least value of $n$ for which the sum of the first $n$ terms exceeds 500. *(5 marks)*

---

**Q35.** A geometric progression has first term 81 and common ratio $\dfrac{2}{3}$.

(a) Find the 8th term. *(3 marks)*

(b) Find the sum to infinity. *(3 marks)*

(c) Find the number of terms required for the partial sum to exceed 230. *(5 marks)*

---

## SECTION 8: VECTORS AND THREE-DIMENSIONAL GEOMETRY

**Q36.** (a) Solve the differential equation $\dfrac{dy}{dx}=3x^2(1+y)$ given that $y=0$ when $x=0$. *(6 marks)*

(b) Find the value of $y$ when $x=1$. *(2 marks)*

(c) Sketch the solution curve. *(3 marks)*

---

**Q37.** A population model is given by $P(t)=\dfrac{5000}{1+4e^{-0.3t}}$.

(a) Find the initial population. *(2 marks)*

(b) Find the time when the population first reaches 3000. *(4 marks)*

(c) State the limiting population as $t\to\infty$. *(2 marks)*

---

**Q38.** (a) Use Simpson''s rule with four strips to estimate $\displaystyle\int_0^2 \dfrac{1}{1+x^2}\,dx$. *(6 marks)*

(b) Compare your estimate with $\tan^{-1}2$ and comment on the accuracy. *(4 marks)*

---

**Q39.** The vectors $\mathbf{a}=2\mathbf{i}-\mathbf{j}+3\mathbf{k}$ and $\mathbf{b}=\mathbf{i}+4\mathbf{j}-2\mathbf{k}$ are given.

(a) Find $\mathbf{a}\cdot\mathbf{b}$ and the angle between them. *(5 marks)*

(b) Find $\mathbf{a}\times\mathbf{b}$. *(4 marks)*

(c) Find the area of the parallelogram formed by $\mathbf{a}$ and $\mathbf{b}$. *(3 marks)*

---

**Q40.** The plane $2x-y+3z=6$ meets the coordinate axes at $A$, $B$, and $C$.

(a) Find the coordinates of $A$, $B$, and $C$. *(3 marks)*

(b) Find the area of triangle $ABC$. *(5 marks)*

(c) Find the shortest distance from the origin to the plane. *(4 marks)*

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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ALGEBRA - Polynomials, Inequalities and Partial Fractions

**Q1.** The polynomial $P(x) = 2x^4 - 3x^3 + ax^2 + bx - 6$ has $(2x - 1)$ and $(x + 2)$ as factors.

(a) Find the values of $a$ and $b$. *(4 marks)*

(b) Factorise $P(x)$ completely over $\mathbb{R}$. *(3 marks)*

(c) Hence, solve the inequality $P(x) \geq 0$, expressing your answer in interval notation. *(3 marks)*

---

**Q2.** Given that $f(x) = \dfrac{3x^3 - x^2 - 13x + 7}{(x-2)(x^2 - x - 1)}$:

(a) Express $f(x)$ in partial fractions. *(6 marks)*

(b) Hence evaluate $\displaystyle\int_0^{1} f(x)\, dx$, leaving your answer in the form $a\ln 2 + b\ln 5 + c\ln 3$. *(4 marks)*

---

**Q3.** (a) Show that the equation $x^4 - 6x^2 + 2x + 3 = 0$ has a root between $x = 2$ and $x = 3$. *(2 marks)*

(b) Using the substitution $x = u + \dfrac{1}{u}$, or otherwise, solve $x^4 - 6x^2 + 2x + 3 = 0$ giving all real roots correct to 3 significant figures. *(6 marks)*

(c) Without further calculation, state the nature and number of complex roots. *(2 marks)*

---

**Q4.** Solve simultaneously the system:

$$\log_2(x + y) = 3, \quad \log_4(x - y) = 2, \quad x, y \in \mathbb{R}$$

Hence find all pairs $(x, y)$ that also satisfy $\dfrac{x^2 - y^2}{x + y} = 2y - 1$. *(10 marks)*

---

**Q5.** Given that $\alpha, \beta, \gamma$ are the roots of $x^3 - px + q = 0$, where $p, q \neq 0$:

(a) Find $\alpha^2+\beta^2+\gamma^2$, $\alpha^3+\beta^3+\gamma^3$, and $\alpha^4+\beta^4+\gamma^4$ in terms of $p$ and $q$. *(6 marks)*

(b) Find the cubic equation whose roots are $\alpha^2, \beta^2, \gamma^2$. *(4 marks)*

---

## SECTION 2: FUNCTIONS, SERIES AND TRIGONOMETRY

**Q6.** (a) Find the first four terms in the expansion of $(1 - 3x)^{-2}$ in ascending powers of $x$, stating the range of validity. *(4 marks)*

(b) Use your expansion to estimate $\dfrac{1}{0.97^2}$ correct to 5 decimal places. *(3 marks)*

(c) Find the coefficient of $x^8$ in $(1 + x + x^2)^9$. *(5 marks)*

---

**Q7.** The functions $f$ and $g$ are defined by $f(x)=e^{2x}-5$ and $g(x)=\dfrac{x+1}{x-3}$, $x \neq 3$.

(a) Find $f^{-1}(x)$ and state its domain. *(4 marks)*

(b) Solve $f(g(x)) = g(f(x))$ where both sides are defined. *(6 marks)*

(c) Find the fixed points of $g \circ g$. *(4 marks)*

---

**Q8.** The function $h(x)=x^2-6x+11$ is restricted to a domain on which it is one-to-one.

(a) State a suitable maximal domain and find $h^{-1}(x)$. *(4 marks)*

(b) Sketch $y=h(x)$ and $y=h^{-1}(x)$ on the same axes. *(3 marks)*

(c) Solve $h(x)=h^{-1}(x)$ for all possible values on the chosen domain. *(5 marks)*

---

**Q9.** (a) Prove that $\cot\theta - \tan\theta \equiv 2\cot 2\theta$. *(4 marks)*

(b) Solve $2\sin^2 x + 5\cos x - 4 = 0$ for $0^\circ \leq x \leq 360^\circ$. *(4 marks)*

(c) Find the general solution of $\cos 3x + \cos x = \cos 2x$. *(5 marks)*

---

**Q10.** In triangle $ABC$, $a=7$, $b=8$, and $c=9$.

(a) Find all angles of the triangle correct to the nearest $0.1^\circ$. *(4 marks)*

(b) Find the area of the triangle using Heron''s formula. *(3 marks)*

(c) Hence find the radius of the incircle and the circumcircle. *(5 marks)*

---

## SECTION 3: LOGARITHMS, COMPLEX NUMBERS AND DIFFERENTIATION

**Q11.** (a) Prove that $\cosh^2 x - \sinh^2 x = 1$. *(3 marks)*

(b) Solve $\cosh x + 3\sinh x = 5$, giving exact answers in logarithmic form. *(6 marks)*

(c) Evaluate $\displaystyle\int_0^{1/2}\tanh^{-1}x\,dx$. *(5 marks)*

---

**Q12.** (a) Solve $\log_3(x+5)+\log_9(x+5)=\log_3(x+5)\log_9(x+5)+1$ for $x>-5$. *(5 marks)*

(b) Show that $\dfrac{\ln 2}{\ln 3}\cdot\dfrac{\ln 3}{\ln 5}\cdot\dfrac{\ln 5}{\ln 8}=\dfrac13$. *(3 marks)*

(c) Find the exact solution of $2^x=3^{x-1}5^{2-x}$. *(5 marks)*

---

**Q13.** The complex number $z$ satisfies $|z-3i|=|z+3|$ and $\arg(z-1)=\dfrac{\pi}{4}$.

(a) Describe each locus geometrically and sketch them on an Argand diagram. *(4 marks)*

(b) Find the complex number satisfying both conditions. *(4 marks)*

(c) Find all cube roots of $-8i$ in exact polar form. *(5 marks)*

---

**Q14.** (a) Differentiate from first principles $f(x)=\dfrac{1}{\sqrt{2x+1}}$. *(4 marks)*

(b) Given $y=x^{\sin x}$, $x>0$, find $\dfrac{dy}{dx}$. *(5 marks)*

(c) The equation $e^{xy}=x+y$ defines $y$ implicitly. Find $\dfrac{dy}{dx}$ at $(1,0)$. *(4 marks)*

---

**Q15.** A curve is defined parametrically by $x=\dfrac{3t}{1+t^3}$ and $y=\dfrac{3t^2}{1+t^3}$, $t \neq -1$.

(a) Show that $x^3+y^3=3xy$. *(3 marks)*

(b) Find the equation of the tangent at $t=1$. *(4 marks)*

(c) Show that $x+y+1=0$ is an asymptote. *(4 marks)*

---

## SECTION 4: INTEGRATION AND MECHANICS

**Q16.** (a) Use the Mean Value Theorem to prove that for $0<a<b$, $\dfrac{b-a}{b}<\ln\dfrac{b}{a}<\dfrac{b-a}{a}$. *(5 marks)*

(b) Find the stationary points of $y=x^3-6x^2+9x+4$ and determine their nature. *(5 marks)*

---

**Q17.** (a) Evaluate $\displaystyle\int \dfrac{2x+5}{x^2+5x+6}\,dx$. *(4 marks)*

(b) Use integration by parts to evaluate $\displaystyle\int_0^1 x^2e^x\,dx$. *(5 marks)*

(c) Find the area enclosed by $y=x^2$ and $y=2x+3$. *(5 marks)*

---

**Q18.** (a) Find a reduction formula for $I_n=\displaystyle\int_0^{\pi/2}\sin^n x\,dx$. *(6 marks)*

(b) Hence evaluate $I_6$. *(3 marks)*

(c) Use the result to estimate $\displaystyle\int_0^{\pi/2}\sin^6x\cos^2x\,dx$. *(5 marks)*

---

**Q19.** A particle moves in a straight line with displacement $s=t^3-6t^2+9t+4$ metres after $t$ seconds.

(a) Find its velocity and acceleration at time $t$. *(3 marks)*

(b) Determine when the particle is at rest. *(3 marks)*

(c) Find the total distance travelled in the first 5 seconds. *(6 marks)*

---

**Q20.** A projectile is fired with speed $40\,\text{m s}^{-1}$ at an angle $30^\circ$ to the horizontal from level ground.

(a) Find the time of flight. *(3 marks)*

(b) Find the greatest height reached. *(3 marks)*

(c) Find the horizontal range, taking $g=10\,\text{m s}^{-2}$. *(4 marks)*

---

## SECTION 5: STATISTICS, NUMERICAL METHODS AND MATRICES

**Q21.** A body of mass $5\,\text{kg}$ rests on a rough plane inclined at $30^\circ$ to the horizontal. The coefficient of friction is $0.25$.

(a) Find the component of weight down the plane. *(2 marks)*

(b) Determine whether the body will slide. *(4 marks)*

(c) Find the least force parallel to the plane needed to move the body upwards. *(5 marks)*

---

**Q22.** Two particles of masses $3\,\text{kg}$ and $5\,\text{kg}$ are connected by a light inextensible string over a smooth pulley.

(a) Find the acceleration of the system. *(4 marks)*

(b) Find the tension in the string. *(4 marks)*

(c) State how your answer changes if the pulley is rough. *(2 marks)*

---

**Q23.** A random variable $X$ has probability distribution $P(X=x)=kx$ for $x=1,2,3,4$.

(a) Find $k$. *(2 marks)*

(b) Find $E(X)$ and $\operatorname{Var}(X)$. *(5 marks)*

(c) Find $P(X\geq 3\mid X>1)$. *(3 marks)*

---

**Q24.** The marks of 60 candidates are grouped as follows: $0-9:4$, $10-19:8$, $20-29:15$, $30-39:18$, $40-49:10$, $50-59:5$.

(a) Estimate the mean mark. *(4 marks)*

(b) Estimate the median. *(4 marks)*

(c) Draw a cumulative frequency curve and use it to estimate the interquartile range. *(5 marks)*

---

**Q25.** A sample of 100 bulbs has mean lifetime 1240 hours and standard deviation 80 hours.

(a) Construct a 95% confidence interval for the population mean. *(5 marks)*

(b) Test at the 5% level whether the mean lifetime differs from 1200 hours. *(6 marks)*

---

## SECTION 6: PROOF, COORDINATE GEOMETRY AND SEQUENCES

**Q26.** (a) Use Newton-Raphson iteration to find a root of $x^3-x-1=0$ starting with $x_0=1$. Give three iterations. *(6 marks)*

(b) Explain, using the graph of the function, why the iteration converges to the real root. *(3 marks)*

---

**Q27.** (a) Show that the matrix $A=\begin{pmatrix}2&1\\1&3\end{pmatrix}$ is invertible and find $A^{-1}$. *(4 marks)*

(b) Solve the system $2x+y=5$, $x+3y=7$ using the inverse matrix method. *(4 marks)*

(c) Interpret the transformation represented by $A$ geometrically. *(4 marks)*

---

**Q28.** (a) Prove by induction that $1^2+2^2+\cdots+n^2=\dfrac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Hence find $\sum_{r=1}^{20}(3r^2-2r+1)$. *(4 marks)*

---

**Q29.** The roots of $x^2-5x+6=0$ are $\alpha$ and $\beta$.

(a) Find a quadratic equation whose roots are $\alpha^2$ and $\beta^2$. *(4 marks)*

(b) Find a quadratic equation whose roots are $\dfrac{1}{\alpha}$ and $\dfrac{1}{\beta}$. *(4 marks)*

(c) Hence evaluate $\alpha^4+\beta^4$. *(3 marks)*

---

**Q30.** (a) Solve $|2x-3|+|x+1|=8$. *(5 marks)*

(b) Solve $\dfrac{x^2-4x+3}{x^2-x-6}\leq 0$. *(5 marks)*

(c) Represent both solution sets on separate number lines. *(2 marks)*

---

## SECTION 7: DIFFERENTIAL EQUATIONS, MODELS AND NUMERICAL INTEGRATION

**Q31.** (a) Find the equation of the circle passing through $(1,2)$, $(3,4)$, and $(5,0)$. *(6 marks)*

(b) Find the tangent to the circle at $(1,2)$. *(4 marks)*

---

**Q32.** A line $y=mx+c$ is tangent to the parabola $y=x^2-4x+1$.

(a) Find the condition relating $m$ and $c$. *(5 marks)*

(b) Find the two tangents from the point $(0,-3)$ to the parabola. *(6 marks)*

---

**Q33.** (a) Solve $\sin x + \sqrt3\cos x = 1$ for $0\leq x\leq 2\pi$. *(5 marks)*

(b) Prove that $\dfrac{1-\cos 2x}{\sin 2x}=\tan x$ where both sides are defined. *(3 marks)*

(c) Find all $x$ such that $\tan 2x=\sqrt3$ in the interval $0^\circ\leq x\leq 180^\circ$. *(4 marks)*

---

**Q34.** The arithmetic progression has first term $a$ and common difference $d$. The 5th term is 17 and the sum of the first 10 terms is 200.

(a) Find $a$ and $d$. *(5 marks)*

(b) Find the least value of $n$ for which the sum of the first $n$ terms exceeds 500. *(5 marks)*

---

**Q35.** A geometric progression has first term 81 and common ratio $\dfrac{2}{3}$.

(a) Find the 8th term. *(3 marks)*

(b) Find the sum to infinity. *(3 marks)*

(c) Find the number of terms required for the partial sum to exceed 230. *(5 marks)*

---

## SECTION 8: VECTORS AND THREE-DIMENSIONAL GEOMETRY

**Q36.** (a) Solve the differential equation $\dfrac{dy}{dx}=3x^2(1+y)$ given that $y=0$ when $x=0$. *(6 marks)*

(b) Find the value of $y$ when $x=1$. *(2 marks)*

(c) Sketch the solution curve. *(3 marks)*

---

**Q37.** A population model is given by $P(t)=\dfrac{5000}{1+4e^{-0.3t}}$.

(a) Find the initial population. *(2 marks)*

(b) Find the time when the population first reaches 3000. *(4 marks)*

(c) State the limiting population as $t\to\infty$. *(2 marks)*

---

**Q38.** (a) Use Simpson''s rule with four strips to estimate $\displaystyle\int_0^2 \dfrac{1}{1+x^2}\,dx$. *(6 marks)*

(b) Compare your estimate with $\tan^{-1}2$ and comment on the accuracy. *(4 marks)*

---

**Q39.** The vectors $\mathbf{a}=2\mathbf{i}-\mathbf{j}+3\mathbf{k}$ and $\mathbf{b}=\mathbf{i}+4\mathbf{j}-2\mathbf{k}$ are given.

(a) Find $\mathbf{a}\cdot\mathbf{b}$ and the angle between them. *(5 marks)*

(b) Find $\mathbf{a}\times\mathbf{b}$. *(4 marks)*

(c) Find the area of the parallelogram formed by $\mathbf{a}$ and $\mathbf{b}$. *(3 marks)*

---

**Q40.** The plane $2x-y+3z=6$ meets the coordinate axes at $A$, $B$, and $C$.

(a) Find the coordinates of $A$, $B$, and $C$. *(3 marks)*

(b) Find the area of triangle $ABC$. *(5 marks)*

(c) Find the shortest distance from the origin to the plane. *(4 marks)*

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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level LOGIC P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PROPOSITIONS

**Q1.** Propositions: A detailed examination question covering propositions concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: ARGUMENTS

**Q2.** Arguments: A detailed examination question covering arguments concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FALLACIES

**Q3.** Fallacies: A detailed examination question covering fallacies concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: SYLLOGISMS

**Q4.** Syllogisms: A detailed examination question covering syllogisms concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: TRUTH TABLES

**Q5.** Truth Tables: A detailed examination question covering truth tables concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: PROPOSITIONAL LOGIC

**Q6.** Propositional Logic: A detailed examination question covering propositional logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: PREDICATE LOGIC

**Q7.** Predicate Logic: A detailed examination question covering predicate logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: CRITICAL THINKING

**Q8.** Critical Thinking: A detailed examination question covering critical thinking concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: PROPOSITIONS

**Q9.** Propositions: A detailed examination question covering propositions concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: ARGUMENTS

**Q10.** Arguments: A detailed examination question covering arguments concepts and applications.

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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level LOGIC P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PROPOSITIONS

**Q1.** Propositions: A detailed examination question covering propositions concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: ARGUMENTS

**Q2.** Arguments: A detailed examination question covering arguments concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FALLACIES

**Q3.** Fallacies: A detailed examination question covering fallacies concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: SYLLOGISMS

**Q4.** Syllogisms: A detailed examination question covering syllogisms concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: TRUTH TABLES

**Q5.** Truth Tables: A detailed examination question covering truth tables concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: PROPOSITIONAL LOGIC

**Q6.** Propositional Logic: A detailed examination question covering propositional logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: PREDICATE LOGIC

**Q7.** Predicate Logic: A detailed examination question covering predicate logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: CRITICAL THINKING

**Q8.** Critical Thinking: A detailed examination question covering critical thinking concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: PROPOSITIONS

**Q9.** Propositions: A detailed examination question covering propositions concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: ARGUMENTS

**Q10.** Arguments: A detailed examination question covering arguments concepts and applications.

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
  where subject = 'Logic'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Logic',
  'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level LOGIC P2 SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Logic

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PROPOSITIONS

**Q1.** Propositions: A detailed examination question covering propositions concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: ARGUMENTS

**Q2.** Arguments: A detailed examination question covering arguments concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: FALLACIES

**Q3.** Fallacies: A detailed examination question covering fallacies concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: SYLLOGISMS

**Q4.** Syllogisms: A detailed examination question covering syllogisms concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: TRUTH TABLES

**Q5.** Truth Tables: A detailed examination question covering truth tables concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: PROPOSITIONAL LOGIC

**Q6.** Propositional Logic: A detailed examination question covering propositional logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: PREDICATE LOGIC

**Q7.** Predicate Logic: A detailed examination question covering predicate logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: CRITICAL THINKING

**Q8.** Critical Thinking: A detailed examination question covering critical thinking concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: PROPOSITIONS

**Q9.** Propositions: A detailed examination question covering propositions concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: ARGUMENTS

**Q10.** Arguments: A detailed examination question covering arguments concepts and applications.

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

commit;