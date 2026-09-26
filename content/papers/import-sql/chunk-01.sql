begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Accounting'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level ACCOUNTING P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Financial Accounting: Sample question 1 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Cost Accounting: Sample question 2 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Management Accounting: Sample question 3 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Auditing: Sample question 4 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Taxation: Sample question 5 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Accounting Standards: Sample question 6 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Corporate Reporting: Sample question 7 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Ethics: Sample question 8 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Financial Accounting: Sample question 9 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Cost Accounting: Sample question 10 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Management Accounting: Sample question 11 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Auditing: Sample question 12 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Taxation: Sample question 13 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Accounting Standards: Sample question 14 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Corporate Reporting: Sample question 15 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Ethics: Sample question 16 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Financial Accounting: Sample question 17 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Cost Accounting: Sample question 18 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Management Accounting: Sample question 19 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Auditing: Sample question 20 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Taxation: Sample question 21 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Accounting Standards: Sample question 22 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Corporate Reporting: Sample question 23 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Ethics: Sample question 24 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Financial Accounting: Sample question 25 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Cost Accounting: Sample question 26 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Management Accounting: Sample question 27 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Auditing: Sample question 28 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Taxation: Sample question 29 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Accounting Standards: Sample question 30 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Corporate Reporting: Sample question 31 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Ethics: Sample question 32 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Financial Accounting: Sample question 33 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Cost Accounting: Sample question 34 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Management Accounting: Sample question 35 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Auditing: Sample question 36 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Taxation: Sample question 37 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Accounting Standards: Sample question 38 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Corporate Reporting: Sample question 39 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Ethics: Sample question 40 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Financial Accounting: Sample question 41 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Cost Accounting: Sample question 42 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Management Accounting: Sample question 43 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Auditing: Sample question 44 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Taxation: Sample question 45 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Accounting Standards: Sample question 46 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Corporate Reporting: Sample question 47 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Ethics: Sample question 48 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Financial Accounting: Sample question 49 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Cost Accounting: Sample question 50 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Management Accounting: Sample question 51 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Auditing: Sample question 52 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Taxation: Sample question 53 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Accounting Standards: Sample question 54 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Corporate Reporting: Sample question 55 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Ethics: Sample question 56 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Financial Accounting: Sample question 57 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Cost Accounting: Sample question 58 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Management Accounting: Sample question 59 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Auditing: Sample question 60 for Accounting Advanced Level Paper 1.

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
  where subject = 'Accounting'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level ACCOUNTING P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Financial Accounting: Sample question 1 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Cost Accounting: Sample question 2 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Management Accounting: Sample question 3 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Auditing: Sample question 4 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Taxation: Sample question 5 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Accounting Standards: Sample question 6 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Corporate Reporting: Sample question 7 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Ethics: Sample question 8 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Financial Accounting: Sample question 9 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Cost Accounting: Sample question 10 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Management Accounting: Sample question 11 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Auditing: Sample question 12 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Taxation: Sample question 13 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Accounting Standards: Sample question 14 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Corporate Reporting: Sample question 15 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Ethics: Sample question 16 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Financial Accounting: Sample question 17 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Cost Accounting: Sample question 18 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Management Accounting: Sample question 19 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Auditing: Sample question 20 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Taxation: Sample question 21 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Accounting Standards: Sample question 22 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Corporate Reporting: Sample question 23 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Ethics: Sample question 24 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Financial Accounting: Sample question 25 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Cost Accounting: Sample question 26 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Management Accounting: Sample question 27 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Auditing: Sample question 28 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Taxation: Sample question 29 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Accounting Standards: Sample question 30 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Corporate Reporting: Sample question 31 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Ethics: Sample question 32 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Financial Accounting: Sample question 33 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Cost Accounting: Sample question 34 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Management Accounting: Sample question 35 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Auditing: Sample question 36 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Taxation: Sample question 37 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Accounting Standards: Sample question 38 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Corporate Reporting: Sample question 39 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Ethics: Sample question 40 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Financial Accounting: Sample question 41 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Cost Accounting: Sample question 42 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Management Accounting: Sample question 43 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Auditing: Sample question 44 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Taxation: Sample question 45 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Accounting Standards: Sample question 46 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Corporate Reporting: Sample question 47 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Ethics: Sample question 48 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Financial Accounting: Sample question 49 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Cost Accounting: Sample question 50 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Management Accounting: Sample question 51 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Auditing: Sample question 52 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Taxation: Sample question 53 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Accounting Standards: Sample question 54 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Corporate Reporting: Sample question 55 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Ethics: Sample question 56 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Financial Accounting: Sample question 57 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Cost Accounting: Sample question 58 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Management Accounting: Sample question 59 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Auditing: Sample question 60 for Accounting Advanced Level Paper 1.

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
  where subject = 'Accounting'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level ACCOUNTING P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Financial Accounting: Sample question 1 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Cost Accounting: Sample question 2 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Management Accounting: Sample question 3 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Auditing: Sample question 4 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Taxation: Sample question 5 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Accounting Standards: Sample question 6 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Corporate Reporting: Sample question 7 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Ethics: Sample question 8 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Financial Accounting: Sample question 9 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Cost Accounting: Sample question 10 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Management Accounting: Sample question 11 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Auditing: Sample question 12 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Taxation: Sample question 13 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Accounting Standards: Sample question 14 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Corporate Reporting: Sample question 15 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Ethics: Sample question 16 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Financial Accounting: Sample question 17 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Cost Accounting: Sample question 18 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Management Accounting: Sample question 19 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Auditing: Sample question 20 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Taxation: Sample question 21 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Accounting Standards: Sample question 22 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Corporate Reporting: Sample question 23 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Ethics: Sample question 24 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Financial Accounting: Sample question 25 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Cost Accounting: Sample question 26 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Management Accounting: Sample question 27 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Auditing: Sample question 28 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Taxation: Sample question 29 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Accounting Standards: Sample question 30 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Corporate Reporting: Sample question 31 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Ethics: Sample question 32 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Financial Accounting: Sample question 33 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Cost Accounting: Sample question 34 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Management Accounting: Sample question 35 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Auditing: Sample question 36 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Taxation: Sample question 37 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Accounting Standards: Sample question 38 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Corporate Reporting: Sample question 39 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Ethics: Sample question 40 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Financial Accounting: Sample question 41 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Cost Accounting: Sample question 42 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Management Accounting: Sample question 43 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Auditing: Sample question 44 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Taxation: Sample question 45 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Accounting Standards: Sample question 46 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Corporate Reporting: Sample question 47 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Ethics: Sample question 48 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Financial Accounting: Sample question 49 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Cost Accounting: Sample question 50 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Management Accounting: Sample question 51 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Auditing: Sample question 52 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Taxation: Sample question 53 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Accounting Standards: Sample question 54 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Corporate Reporting: Sample question 55 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Ethics: Sample question 56 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Financial Accounting: Sample question 57 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Cost Accounting: Sample question 58 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Management Accounting: Sample question 59 for Accounting Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Auditing: Sample question 60 for Accounting Advanced Level Paper 1.

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
  where subject = 'Accounting'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1

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
  where subject = 'Accounting'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 2

## Structural Question Bank - Set 2

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

**Q1.** Source documents: A business records transactions involving cash 3000, credit sales 5000, purchases 7000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Source documents: A business records transactions involving cash 4000, credit sales 6000, purchases 8000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Source documents: A business records transactions involving cash 5000, credit sales 7000, purchases 9000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Source documents: A business records transactions involving cash 6000, credit sales 8000, purchases 10000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Source documents: A business records transactions involving cash 7000, credit sales 9000, purchases 11000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: BOOKS OF ORIGINAL ENTRY

**Q6.** Books of original entry: A business records transactions involving cash 8000, credit sales 10000, purchases 12000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Books of original entry: A business records transactions involving cash 9000, credit sales 11000, purchases 13000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Books of original entry: A business records transactions involving cash 10000, credit sales 12000, purchases 14000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Books of original entry: A business records transactions involving cash 11000, credit sales 13000, purchases 15000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Books of original entry: A business records transactions involving cash 12000, credit sales 14000, purchases 16000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: LEDGER ACCOUNTS

**Q11.** Ledger accounts: A business records transactions involving cash 13000, credit sales 15000, purchases 17000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Ledger accounts: A business records transactions involving cash 14000, credit sales 16000, purchases 18000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Ledger accounts: A business records transactions involving cash 15000, credit sales 17000, purchases 19000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Ledger accounts: A business records transactions involving cash 16000, credit sales 18000, purchases 20000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Ledger accounts: A business records transactions involving cash 17000, credit sales 19000, purchases 21000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: TRIAL BALANCE

**Q16.** Trial balance: A business records transactions involving cash 18000, credit sales 20000, purchases 22000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Trial balance: A business records transactions involving cash 19000, credit sales 21000, purchases 23000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Trial balance: A business records transactions involving cash 20000, credit sales 22000, purchases 24000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Trial balance: A business records transactions involving cash 21000, credit sales 23000, purchases 25000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Trial balance: A business records transactions involving cash 22000, credit sales 24000, purchases 26000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: FINAL ACCOUNTS

**Q21.** Final accounts: A business records transactions involving cash 23000, credit sales 25000, purchases 27000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Final accounts: A business records transactions involving cash 24000, credit sales 26000, purchases 28000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Final accounts: A business records transactions involving cash 25000, credit sales 27000, purchases 29000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Final accounts: A business records transactions involving cash 26000, credit sales 28000, purchases 30000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Final accounts: A business records transactions involving cash 27000, credit sales 29000, purchases 31000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: CONTROL ACCOUNTS

**Q26.** Control accounts: A business records transactions involving cash 28000, credit sales 30000, purchases 32000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Control accounts: A business records transactions involving cash 29000, credit sales 31000, purchases 33000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Control accounts: A business records transactions involving cash 30000, credit sales 32000, purchases 34000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Control accounts: A business records transactions involving cash 31000, credit sales 33000, purchases 35000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Control accounts: A business records transactions involving cash 32000, credit sales 34000, purchases 36000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: BANK RECONCILIATION

**Q31.** Bank reconciliation: A business records transactions involving cash 33000, credit sales 35000, purchases 37000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Bank reconciliation: A business records transactions involving cash 34000, credit sales 36000, purchases 38000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Bank reconciliation: A business records transactions involving cash 35000, credit sales 37000, purchases 39000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Bank reconciliation: A business records transactions involving cash 36000, credit sales 38000, purchases 40000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Bank reconciliation: A business records transactions involving cash 37000, credit sales 39000, purchases 41000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: DEPRECIATION

**Q36.** Depreciation: A business records transactions involving cash 38000, credit sales 40000, purchases 42000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** Depreciation: A business records transactions involving cash 39000, credit sales 41000, purchases 43000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** Depreciation: A business records transactions involving cash 40000, credit sales 42000, purchases 44000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** Depreciation: A business records transactions involving cash 41000, credit sales 43000, purchases 45000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** Depreciation: A business records transactions involving cash 42000, credit sales 44000, purchases 46000, returns, and depreciation. Prepare or correct the required accounting records.

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
  where subject = 'Accounting'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 3

## Structural Question Bank - Set 3

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

**Q1.** Source documents: A business records transactions involving cash 4000, credit sales 7000, purchases 10000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Source documents: A business records transactions involving cash 5000, credit sales 8000, purchases 11000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Source documents: A business records transactions involving cash 6000, credit sales 9000, purchases 12000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Source documents: A business records transactions involving cash 7000, credit sales 10000, purchases 13000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Source documents: A business records transactions involving cash 8000, credit sales 11000, purchases 14000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: BOOKS OF ORIGINAL ENTRY

**Q6.** Books of original entry: A business records transactions involving cash 9000, credit sales 12000, purchases 15000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Books of original entry: A business records transactions involving cash 10000, credit sales 13000, purchases 16000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Books of original entry: A business records transactions involving cash 11000, credit sales 14000, purchases 17000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Books of original entry: A business records transactions involving cash 12000, credit sales 15000, purchases 18000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Books of original entry: A business records transactions involving cash 13000, credit sales 16000, purchases 19000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: LEDGER ACCOUNTS

**Q11.** Ledger accounts: A business records transactions involving cash 14000, credit sales 17000, purchases 20000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Ledger accounts: A business records transactions involving cash 15000, credit sales 18000, purchases 21000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Ledger accounts: A business records transactions involving cash 16000, credit sales 19000, purchases 22000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Ledger accounts: A business records transactions involving cash 17000, credit sales 20000, purchases 23000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Ledger accounts: A business records transactions involving cash 18000, credit sales 21000, purchases 24000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: TRIAL BALANCE

**Q16.** Trial balance: A business records transactions involving cash 19000, credit sales 22000, purchases 25000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Trial balance: A business records transactions involving cash 20000, credit sales 23000, purchases 26000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Trial balance: A business records transactions involving cash 21000, credit sales 24000, purchases 27000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Trial balance: A business records transactions involving cash 22000, credit sales 25000, purchases 28000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Trial balance: A business records transactions involving cash 23000, credit sales 26000, purchases 29000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: FINAL ACCOUNTS

**Q21.** Final accounts: A business records transactions involving cash 24000, credit sales 27000, purchases 30000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Final accounts: A business records transactions involving cash 25000, credit sales 28000, purchases 31000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Final accounts: A business records transactions involving cash 26000, credit sales 29000, purchases 32000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Final accounts: A business records transactions involving cash 27000, credit sales 30000, purchases 33000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Final accounts: A business records transactions involving cash 28000, credit sales 31000, purchases 34000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: CONTROL ACCOUNTS

**Q26.** Control accounts: A business records transactions involving cash 29000, credit sales 32000, purchases 35000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Control accounts: A business records transactions involving cash 30000, credit sales 33000, purchases 36000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Control accounts: A business records transactions involving cash 31000, credit sales 34000, purchases 37000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Control accounts: A business records transactions involving cash 32000, credit sales 35000, purchases 38000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Control accounts: A business records transactions involving cash 33000, credit sales 36000, purchases 39000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: BANK RECONCILIATION

**Q31.** Bank reconciliation: A business records transactions involving cash 34000, credit sales 37000, purchases 40000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Bank reconciliation: A business records transactions involving cash 35000, credit sales 38000, purchases 41000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Bank reconciliation: A business records transactions involving cash 36000, credit sales 39000, purchases 42000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Bank reconciliation: A business records transactions involving cash 37000, credit sales 40000, purchases 43000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Bank reconciliation: A business records transactions involving cash 38000, credit sales 41000, purchases 44000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: DEPRECIATION

**Q36.** Depreciation: A business records transactions involving cash 39000, credit sales 42000, purchases 45000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** Depreciation: A business records transactions involving cash 40000, credit sales 43000, purchases 46000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** Depreciation: A business records transactions involving cash 41000, credit sales 44000, purchases 47000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** Depreciation: A business records transactions involving cash 42000, credit sales 45000, purchases 48000, returns, and depreciation. Prepare or correct the required accounting records.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** Depreciation: A business records transactions involving cash 43000, credit sales 46000, purchases 49000, returns, and depreciation. Prepare or correct the required accounting records.

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
  where subject = 'Accounting'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level ACCOUNTING P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FINANCIAL STATEMENTS

**Q1.** Financial Statements: A detailed examination question covering financial statements concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COSTING METHODS

**Q2.** Costing Methods: A detailed examination question covering costing methods concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: BUDGETING

**Q3.** Budgeting: A detailed examination question covering budgeting concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DECISION MAKING

**Q4.** Decision Making: A detailed examination question covering decision making concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: PARTNERSHIP/COMPANY ACCOUNTS

**Q5.** Partnership/Company Accounts: A detailed examination question covering partnership/company accounts concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: MANUFACTURING ACCOUNTS

**Q6.** Manufacturing Accounts: A detailed examination question covering manufacturing accounts concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: RATIO ANALYSIS

**Q7.** Ratio Analysis: A detailed examination question covering ratio analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: CASE STUDY

**Q8.** Case Study: A detailed examination question covering case study concepts and applications.

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
  where subject = 'Accounting'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level ACCOUNTING P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FINANCIAL STATEMENTS

**Q1.** Financial Statements: A detailed examination question covering financial statements concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COSTING METHODS

**Q2.** Costing Methods: A detailed examination question covering costing methods concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: BUDGETING

**Q3.** Budgeting: A detailed examination question covering budgeting concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DECISION MAKING

**Q4.** Decision Making: A detailed examination question covering decision making concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: PARTNERSHIP/COMPANY ACCOUNTS

**Q5.** Partnership/Company Accounts: A detailed examination question covering partnership/company accounts concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: MANUFACTURING ACCOUNTS

**Q6.** Manufacturing Accounts: A detailed examination question covering manufacturing accounts concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: RATIO ANALYSIS

**Q7.** Ratio Analysis: A detailed examination question covering ratio analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: CASE STUDY

**Q8.** Case Study: A detailed examination question covering case study concepts and applications.

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
  where subject = 'Accounting'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level ACCOUNTING P2 SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FINANCIAL STATEMENTS

**Q1.** Financial Statements: A detailed examination question covering financial statements concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COSTING METHODS

**Q2.** Costing Methods: A detailed examination question covering costing methods concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: BUDGETING

**Q3.** Budgeting: A detailed examination question covering budgeting concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DECISION MAKING

**Q4.** Decision Making: A detailed examination question covering decision making concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: PARTNERSHIP/COMPANY ACCOUNTS

**Q5.** Partnership/Company Accounts: A detailed examination question covering partnership/company accounts concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: MANUFACTURING ACCOUNTS

**Q6.** Manufacturing Accounts: A detailed examination question covering manufacturing accounts concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: RATIO ANALYSIS

**Q7.** Ratio Analysis: A detailed examination question covering ratio analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: CASE STUDY

**Q8.** Case Study: A detailed examination question covering case study concepts and applications.

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
  where subject = 'Accounting'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Accounting',
  'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level ACCOUNTING P2 SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FINANCIAL STATEMENTS

**Q1.** Financial Statements: A detailed examination question covering financial statements concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: COSTING METHODS

**Q2.** Costing Methods: A detailed examination question covering costing methods concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: BUDGETING

**Q3.** Budgeting: A detailed examination question covering budgeting concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: DECISION MAKING

**Q4.** Decision Making: A detailed examination question covering decision making concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: PARTNERSHIP/COMPANY ACCOUNTS

**Q5.** Partnership/Company Accounts: A detailed examination question covering partnership/company accounts concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: MANUFACTURING ACCOUNTS

**Q6.** Manufacturing Accounts: A detailed examination question covering manufacturing accounts concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: RATIO ANALYSIS

**Q7.** Ratio Analysis: A detailed examination question covering ratio analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: CASE STUDY

**Q8.** Case Study: A detailed examination question covering case study concepts and applications.

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

commit;