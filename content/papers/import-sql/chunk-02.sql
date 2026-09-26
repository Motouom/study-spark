begin;

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
  where title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level ACCOUNTING P2 SET 8

## Structural Question Bank - Set 8

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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** If $f(x) = 2x + 3$, then $f^{-1}(x)$ is:

A. $\dfrac{x-3}{2}$  
B. $\dfrac{x+3}{2}$  
C. $2x - 3$  
D. $\dfrac{x}{2} + 3$  

---

**Q2.** If $f(x) = x^2$ and $g(x) = x + 1$, then $fg(x)$ is:

A. $(x+1)^2$  
B. $x^2 + 1$  
C. $x + 1$  
D. $x^2 + x$  

---

**Q3.** The turning point of $y = x^2 - 4x + 3$ is:

A. (2, -1)  
B. (4, 3)  
C. (-2, 15)  
D. (2, 3)  

---

**Q4.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 2 and 3  
B. -2 and -3  
C. 5 and 6  
D. 1 and 6  

---

**Q5.** If $f(x) = \dfrac{1}{x}$, $x \neq 0$, then $f^{-1}(x)$ is:

A. $\dfrac{1}{x}$  
B. $x^2$  
C. $x$  
D. $-x$  

---

**Q6.** The graph of $y = x^2$ translated 3 units right becomes:

A. $y = (x-3)^2$  
B. $y = x^2 - 3$  
C. $y = x^2 + 3$  
D. $y = (x+3)^2$  

---

**Q7.** If $f(x) = 3x - 2$ and $g(x) = x^2$, then $gf(2)$ is:

A. 10  
B. 16  
C. 22  
D. 36  

---

**Q8.** The range of $y = x^2$ for $x \geq 0$ is:

A. $y > 0$  
B. $y \geq 0$  
C. $y \leq 0$  
D. all real $y$  

---

**Q9.** The equation $2^{2x} = 16$ has solution:

A. $x = 4$  
B. $x = 8$  
C. $x = 2$  
D. $x = 16$  

---

**Q10.** If $f(x) = x^2 - 1$, the value of $f(-2)$ is:

A. -3  
B. 5  
C. -5  
D. 3  

---

**Q11.** The axis of symmetry of $y = x^2 - 6x + 8$ is:

A. $x = -3$  
B. $x = 2$  
C. $x = 3$  
D. $x = 6$  

---

**Q12.** If $f(x) = 2x$ and $g(x) = x + 1$, then $fg(x)$ is:

A. $2x + 1$  
B. $2x$  
C. $x + 2$  
D. $2x + 2$  

---

**Q13.** The minimum value of $y = x^2 + 2x + 1$ is:

A. 2  
B. 0  
C. 1  
D. -1  

---

**Q14.** For $f(x) = \sqrt{x}$, the domain is:

A. all real $x$  
B. $x \geq 0$  
C. $x \leq 0$  
D. $x > 0$  

---

**Q15.** The graph of $y = -x^2$ is the graph of $y = x^2$:

A. translated up  
B. translated down  
C. reflected in the $x$-axis  
D. stretched  

---

**Q16.** If $f(x) = x^3$, then $f^{-1}(x)$ is:

A. $\dfrac{1}{x^3}$  
B. $x^3$  
C. $3x$  
D. $\sqrt[3]{x}$  

---

**Q17.** The sum of the roots of $2x^2 - 6x + 3 = 0$ is:

A. $\dfrac{3}{2}$  
B. 6  
C. 3  
D. -3  

---

**Q18.** If $f(x) = x + 2$ and $g(x) = 3x$, then $gf(x)$ is:

A. $x + 6$  
B. $3x$  
C. $3x + 2$  
D. $3x + 6$  

---

**Q19.** The graph of $y = |x|$ at $x = 0$ has:

A. a horizontal asymptote  
B. a sharp corner  
C. a smooth curve  
D. a vertical asymptote  

---

**Q20.** If $f(x) = \dfrac{x+1}{x-1}$, $x \neq 1$, then $f(3)$ is:

A. 3  
B. 2  
C. $\dfrac{1}{2}$  
D. 4  

---

**Q21.** The product of the roots of $x^2 - 4x + 7 = 0$ is:

A. -7  
B. 4  
C. 7  
D. -4  

---

**Q22.** The graph of $y = (x+1)^2$ has turning point:

A. (0, -1)  
B. (1, 0)  
C. (0, 1)  
D. (-1, 0)  

---

**Q23.** If $f(x) = 2x - 1$, then $f^{-1}(3)$ is:

A. 4  
B. 1  
C. 2  
D. 5  

---

**Q24.** The equation $x^2 - 2x + 5 = 0$ has:

A. three roots  
B. one repeated root  
C. two distinct real roots  
D. no real roots  

---

**Q25.** If $f(x) = x^2$ and $g(x) = 2x$, then $fg(3)$ is:

A. 36  
B. 18  
C. 12  
D. 9  

---

**Q26.** The range of $f(x) = x^2 + 1$ is:

A. $y \geq 1$  
B. $y > 1$  
C. $y \geq 0$  
D. all real $y$  

---

**Q27.** The graph of $y = x^2$ stretched vertically by factor 2 becomes:

A. $y = 2x^2$  
B. $y = (2x)^2$  
C. $y = x^4$  
D. $y = x^2 + 2$  

---

**Q28.** If $f(x) = \dfrac{2}{x}$, then $f^{-1}(x)$ is:

A. $\dfrac{2}{x}$  
B. $2x$  
C. $-\dfrac{2}{x}$  
D. $\dfrac{x}{2}$  

---

**Q29.** The discriminant of $x^2 - 4x + 4 = 0$ is:

A. 0  
B. 4  
C. 16  
D. -16  

---

**Q30.** If $f(x) = x + 1$ and $g(x) = x - 1$, then $fg(x)$ is:

A. $x$  
B. $x - 2$  
C. $x + 2$  
D. $x^2 - 1$  

---

**Q31.** The derivative of $x^3$ is:

A. $x^2$  
B. $3x^2$  
C. $3x$  
D. $\dfrac{x^4}{4}$  

---

**Q32.** The derivative of $5x^2$ is:

A. $5x$  
B. $10x$  
C. $25x$  
D. $2x$  

---

**Q33.** The derivative of a constant is:

A. 1  
B. the constant itself  
C. 0  
D. undefined  

---

**Q34.** $\int 2x\,dx$ is:

A. $2x^2 + c$  
B. $x + c$  
C. $\dfrac{x^2}{2} + c$  
D. $x^2 + c$  

---

**Q35.** The gradient of $y = x^2$ at $x = 3$ is:

A. 9  
B. 12  
C. 6  
D. 3  

---

**Q36.** The derivative of $\dfrac{1}{x}$ is:

A. $\dfrac{1}{x^2}$  
B. $\ln x$  
C. $-x^2$  
D. $-\dfrac{1}{x^2}$  

---

**Q37.** $\int 3\,dx$ is:

A. $x^3 + c$  
B. $3x + c$  
C. $\dfrac{3x^2}{2} + c$  
D. $3 + c$  

---

**Q38.** A stationary point occurs where:

A. $x = 0$  
B. $\dfrac{dy}{dx} = 0$  
C. $\dfrac{dy}{dx} = 1$  
D. $y = 0$  

---

**Q39.** The derivative of $x^2 + 3x$ is:

A. $x^2 + 3$  
B. $2x$  
C. $2x + 3$  
D. $2x^2 + 3x$  

---

**Q40.** $\int_0^1 x\,dx$ is:

A. 0  
B. 1  
C. 2  
D. $\dfrac{1}{2}$  

---

**Q41.** The second derivative of $x^3$ is:

A. $6x^2$  
B. $3x$  
C. $6x$  
D. $3x^2$  

---

**Q42.** The equation of the tangent to $y = x^2$ at $(1, 1)$ is:

A. $y = 2x + 1$  
B. $y = x - 1$  
C. $y = x$  
D. $y = 2x - 1$  

---

**Q43.** If $\dfrac{dy}{dx} = 2x$ and $y = 1$ when $x = 0$, then $y$ is:

A. $x^2 - 1$  
B. $x^2 + 1$  
C. $x^2$  
D. $2x + 1$  

---

**Q44.** The derivative of $\sqrt{x}$ is:

A. $\dfrac{1}{2}x$  
B. $\dfrac{1}{2\sqrt{x}}$  
C. $2\sqrt{x}$  
D. $\dfrac{1}{\sqrt{x}}$  

---

**Q45.** The area under $y = x$ from $x = 0$ to $x = 2$ is:

A. 3  
B. 4  
C. 2  
D. 1  

---

**Q46.** A maximum point has:

A. $\dfrac{d^2y}{dx^2} = 0$  
B. $\dfrac{dy}{dx} = 0$ and $\dfrac{d^2y}{dx^2} > 0$  
C. $\dfrac{dy}{dx} > 0$  
D. $\dfrac{dy}{dx} = 0$ and $\dfrac{d^2y}{dx^2} < 0$  

---

**Q47.** The derivative of $4x^3 - 2x$ is:

A. $12x^3 - 2$  
B. $4x^2 - 2$  
C. $12x^2 - 2$  
D. $12x^2$  

---

**Q48.** $\int (x^2 + 1)\,dx$ is:

A. $2x + c$  
B. $\dfrac{x^3}{3} + c$  
C. $x^3 + x + c$  
D. $\dfrac{x^3}{3} + x + c$  

---

**Q49.** The gradient of $y = 3x - 2$ is:

A. 3  
B. -2  
C. 2  
D. 1  

---

**Q50.** If $s = t^2$, the velocity when $t = 3$ is:

A. 6  
B. 9  
C. 12  
D. 3  

---

**Q51.** The derivative of $x^4$ is:

A. $4x^3$  
B. $4x$  
C. $x^3$  
D. $\dfrac{x^5}{5}$  

---

**Q52.** $\int \dfrac{1}{x^2}\,dx$ is:

A. $-\dfrac{1}{x} + c$  
B. $\ln x + c$  
C. $-x + c$  
D. $\dfrac{1}{x} + c$  

---

**Q53.** The turning point of $y = x^2 - 2x$ is:

A. (1, -1)  
B. (2, 0)  
C. (-1, 3)  
D. (1, 1)  

---

**Q54.** The derivative of $y = (2x+1)^2$ is:

A. $8x + 4$  
B. $4x$  
C. $2(2x+1)$  
D. $4x + 2$  

---

**Q55.** $\int_0^1 2x\,dx$ is:

A. 2  
B. 1  
C. 0  
D. 4  

---

**Q56.** If $\dfrac{dy}{dx} = 3x^2$, then $y$ is:

A. $3x^3 + c$  
B. $x^3 + c$  
C. $\dfrac{x^3}{3} + c$  
D. $6x + c$  

---

**Q57.** The normal to a curve is perpendicular to the:

A. curve itself  
B. $x$-axis  
C. tangent  
D. $y$-axis  

---

**Q58.** The derivative of $2x^3$ is:

A. $2x^2$  
B. $6x^3$  
C. $3x^2$  
D. $6x^2$  

---

**Q59.** $\int (3x^2 - 2)\,dx$ is:

A. $3x^3 - 2x + c$  
B. $6x - 2 + c$  
C. $x^3 - 2x + c$  
D. $x^3 - 2 + c$  

---

**Q60.** The area under $y = x^2$ from $x = 0$ to $x = 1$ is:

A. 1  
B. 2  
C. $\dfrac{1}{2}$  
D. $\dfrac{1}{3}$  

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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 2 and 3  
B. 1 and 6  
C. -2 and -3  
D. 5 and 6  

---

**Q2.** If $f(x) = \dfrac{1}{x}$, $x \neq 0$, then $f^{-1}(x)$ is:

A. $\dfrac{1}{x}$  
B. $x$  
C. $x^2$  
D. $-x$  

---

**Q3.** The graph of $y = x^2$ translated 3 units right becomes:

A. $y = (x-3)^2$  
B. $y = x^2 + 3$  
C. $y = (x+3)^2$  
D. $y = x^2 - 3$  

---

**Q4.** If $f(x) = 3x - 2$ and $g(x) = x^2$, then $gf(2)$ is:

A. 16  
B. 22  
C. 36  
D. 10  

---

**Q5.** The range of $y = x^2$ for $x \geq 0$ is:

A. $y \geq 0$  
B. $y \leq 0$  
C. $y > 0$  
D. all real $y$  

---

**Q6.** The equation $2^{2x} = 16$ has solution:

A. $x = 2$  
B. $x = 16$  
C. $x = 8$  
D. $x = 4$  

---

**Q7.** If $f(x) = x^2 - 1$, the value of $f(-2)$ is:

A. -3  
B. 3  
C. 5  
D. -5  

---

**Q8.** The axis of symmetry of $y = x^2 - 6x + 8$ is:

A. $x = -3$  
B. $x = 3$  
C. $x = 2$  
D. $x = 6$  

---

**Q9.** If $f(x) = 2x$ and $g(x) = x + 1$, then $fg(x)$ is:

A. $2x + 1$  
B. $x + 2$  
C. $2x + 2$  
D. $2x$  

---

**Q10.** The minimum value of $y = x^2 + 2x + 1$ is:

A. 1  
B. 2  
C. -1  
D. 0  

---

**Q11.** For $f(x) = \sqrt{x}$, the domain is:

A. $x > 0$  
B. $x \leq 0$  
C. $x \geq 0$  
D. all real $x$  

---

**Q12.** The graph of $y = -x^2$ is the graph of $y = x^2$:

A. translated down  
B. stretched  
C. translated up  
D. reflected in the $x$-axis  

---

**Q13.** If $f(x) = x^3$, then $f^{-1}(x)$ is:

A. $\dfrac{1}{x^3}$  
B. $\sqrt[3]{x}$  
C. $x^3$  
D. $3x$  

---

**Q14.** The sum of the roots of $2x^2 - 6x + 3 = 0$ is:

A. $\dfrac{3}{2}$  
B. 3  
C. 6  
D. -3  

---

**Q15.** If $f(x) = x + 2$ and $g(x) = 3x$, then $gf(x)$ is:

A. $x + 6$  
B. $3x + 2$  
C. $3x + 6$  
D. $3x$  

---

**Q16.** The graph of $y = |x|$ at $x = 0$ has:

A. a vertical asymptote  
B. a smooth curve  
C. a horizontal asymptote  
D. a sharp corner  

---

**Q17.** If $f(x) = \dfrac{x+1}{x-1}$, $x \neq 1$, then $f(3)$ is:

A. $\dfrac{1}{2}$  
B. 3  
C. 2  
D. 4  

---

**Q18.** The product of the roots of $x^2 - 4x + 7 = 0$ is:

A. -4  
B. -7  
C. 4  
D. 7  

---

**Q19.** The graph of $y = (x+1)^2$ has turning point:

A. (0, -1)  
B. (-1, 0)  
C. (1, 0)  
D. (0, 1)  

---

**Q20.** If $f(x) = 2x - 1$, then $f^{-1}(3)$ is:

A. 4  
B. 2  
C. 1  
D. 5  

---

**Q21.** The equation $x^2 - 2x + 5 = 0$ has:

A. three roots  
B. two distinct real roots  
C. no real roots  
D. one repeated root  

---

**Q22.** If $f(x) = x^2$ and $g(x) = 2x$, then $fg(3)$ is:

A. 9  
B. 18  
C. 12  
D. 36  

---

**Q23.** The range of $f(x) = x^2 + 1$ is:

A. $y \geq 0$  
B. all real $y$  
C. $y \geq 1$  
D. $y > 1$  

---

**Q24.** The graph of $y = x^2$ stretched vertically by factor 2 becomes:

A. $y = x^2 + 2$  
B. $y = (2x)^2$  
C. $y = x^4$  
D. $y = 2x^2$  

---

**Q25.** If $f(x) = \dfrac{2}{x}$, then $f^{-1}(x)$ is:

A. $\dfrac{2}{x}$  
B. $\dfrac{x}{2}$  
C. $2x$  
D. $-\dfrac{2}{x}$  

---

**Q26.** The discriminant of $x^2 - 4x + 4 = 0$ is:

A. 0  
B. 16  
C. 4  
D. -16  

---

**Q27.** If $f(x) = x + 1$ and $g(x) = x - 1$, then $fg(x)$ is:

A. $x$  
B. $x + 2$  
C. $x^2 - 1$  
D. $x - 2$  

---

**Q28.** If $f(x) = 2x + 3$, then $f^{-1}(x)$ is:

A. $\dfrac{x-3}{2}$  
B. $2x - 3$  
C. $\dfrac{x}{2} + 3$  
D. $\dfrac{x+3}{2}$  

---

**Q29.** If $f(x) = x^2$ and $g(x) = x + 1$, then $fg(x)$ is:

A. $(x+1)^2$  
B. $x + 1$  
C. $x^2 + 1$  
D. $x^2 + x$  

---

**Q30.** The turning point of $y = x^2 - 4x + 3$ is:

A. (2, -1)  
B. (2, 3)  
C. (4, 3)  
D. (-2, 15)  

---

**Q31.** $\int 2x\,dx$ is:

A. $2x^2 + c$  
B. $x^2 + c$  
C. $x + c$  
D. $\dfrac{x^2}{2} + c$  

---

**Q32.** The gradient of $y = x^2$ at $x = 3$ is:

A. 9  
B. 6  
C. 12  
D. 3  

---

**Q33.** The derivative of $\dfrac{1}{x}$ is:

A. $\dfrac{1}{x^2}$  
B. $-x^2$  
C. $-\dfrac{1}{x^2}$  
D. $\ln x$  

---

**Q34.** $\int 3\,dx$ is:

A. $\dfrac{3x^2}{2} + c$  
B. $x^3 + c$  
C. $3 + c$  
D. $3x + c$  

---

**Q35.** A stationary point occurs where:

A. $y = 0$  
B. $\dfrac{dy}{dx} = 1$  
C. $\dfrac{dy}{dx} = 0$  
D. $x = 0$  

---

**Q36.** The derivative of $x^2 + 3x$ is:

A. $2x$  
B. $2x^2 + 3x$  
C. $x^2 + 3$  
D. $2x + 3$  

---

**Q37.** $\int_0^1 x\,dx$ is:

A. 0  
B. $\dfrac{1}{2}$  
C. 1  
D. 2  

---

**Q38.** The second derivative of $x^3$ is:

A. $6x^2$  
B. $6x$  
C. $3x$  
D. $3x^2$  

---

**Q39.** The equation of the tangent to $y = x^2$ at $(1, 1)$ is:

A. $y = 2x + 1$  
B. $y = x$  
C. $y = 2x - 1$  
D. $y = x - 1$  

---

**Q40.** If $\dfrac{dy}{dx} = 2x$ and $y = 1$ when $x = 0$, then $y$ is:

A. $2x + 1$  
B. $x^2$  
C. $x^2 - 1$  
D. $x^2 + 1$  

---

**Q41.** The derivative of $\sqrt{x}$ is:

A. $2\sqrt{x}$  
B. $\dfrac{1}{2}x$  
C. $\dfrac{1}{2\sqrt{x}}$  
D. $\dfrac{1}{\sqrt{x}}$  

---

**Q42.** The area under $y = x$ from $x = 0$ to $x = 2$ is:

A. 1  
B. 3  
C. 4  
D. 2  

---

**Q43.** A maximum point has:

A. $\dfrac{d^2y}{dx^2} = 0$  
B. $\dfrac{dy}{dx} = 0$ and $\dfrac{d^2y}{dx^2} < 0$  
C. $\dfrac{dy}{dx} = 0$ and $\dfrac{d^2y}{dx^2} > 0$  
D. $\dfrac{dy}{dx} > 0$  

---

**Q44.** The derivative of $4x^3 - 2x$ is:

A. $12x^3 - 2$  
B. $12x^2 - 2$  
C. $4x^2 - 2$  
D. $12x^2$  

---

**Q45.** $\int (x^2 + 1)\,dx$ is:

A. $2x + c$  
B. $x^3 + x + c$  
C. $\dfrac{x^3}{3} + x + c$  
D. $\dfrac{x^3}{3} + c$  

---

**Q46.** The gradient of $y = 3x - 2$ is:

A. 1  
B. -2  
C. 2  
D. 3  

---

**Q47.** If $s = t^2$, the velocity when $t = 3$ is:

A. 12  
B. 3  
C. 6  
D. 9  

---

**Q48.** The derivative of $x^4$ is:

A. $\dfrac{x^5}{5}$  
B. $4x$  
C. $x^3$  
D. $4x^3$  

---

**Q49.** $\int \dfrac{1}{x^2}\,dx$ is:

A. $-\dfrac{1}{x} + c$  
B. $\dfrac{1}{x} + c$  
C. $\ln x + c$  
D. $-x + c$  

---

**Q50.** The turning point of $y = x^2 - 2x$ is:

A. (1, -1)  
B. (-1, 3)  
C. (2, 0)  
D. (1, 1)  

---

**Q51.** The derivative of $y = (2x+1)^2$ is:

A. $8x + 4$  
B. $2(2x+1)$  
C. $4x + 2$  
D. $4x$  

---

**Q52.** $\int_0^1 2x\,dx$ is:

A. 1  
B. 0  
C. 4  
D. 2  

---

**Q53.** If $\dfrac{dy}{dx} = 3x^2$, then $y$ is:

A. $x^3 + c$  
B. $\dfrac{x^3}{3} + c$  
C. $3x^3 + c$  
D. $6x + c$  

---

**Q54.** The normal to a curve is perpendicular to the:

A. tangent  
B. $y$-axis  
C. $x$-axis  
D. curve itself  

---

**Q55.** The derivative of $2x^3$ is:

A. $2x^2$  
B. $6x^2$  
C. $6x^3$  
D. $3x^2$  

---

**Q56.** $\int (3x^2 - 2)\,dx$ is:

A. $3x^3 - 2x + c$  
B. $x^3 - 2x + c$  
C. $6x - 2 + c$  
D. $x^3 - 2 + c$  

---

**Q57.** The area under $y = x^2$ from $x = 0$ to $x = 1$ is:

A. 1  
B. $\dfrac{1}{2}$  
C. $\dfrac{1}{3}$  
D. 2  

---

**Q58.** The derivative of $x^3$ is:

A. $x^2$  
B. $3x$  
C. $\dfrac{x^4}{4}$  
D. $3x^2$  

---

**Q59.** The derivative of $5x^2$ is:

A. $5x$  
B. $25x$  
C. $10x$  
D. $2x$  

---

**Q60.** The derivative of a constant is:

A. 1  
B. undefined  
C. the constant itself  
D. 0  

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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** If $f(x) = 3x - 2$ and $g(x) = x^2$, then $gf(2)$ is:

A. 16  
B. 10  
C. 22  
D. 36  

---

**Q2.** The range of $y = x^2$ for $x \geq 0$ is:

A. $y \geq 0$  
B. $y > 0$  
C. $y \leq 0$  
D. all real $y$  

---

**Q3.** The equation $2^{2x} = 16$ has solution:

A. $x = 2$  
B. $x = 8$  
C. $x = 4$  
D. $x = 16$  

---

**Q4.** If $f(x) = x^2 - 1$, the value of $f(-2)$ is:

A. 3  
B. 5  
C. -5  
D. -3  

---

**Q5.** The axis of symmetry of $y = x^2 - 6x + 8$ is:

A. $x = 3$  
B. $x = 2$  
C. $x = -3$  
D. $x = 6$  

---

**Q6.** If $f(x) = 2x$ and $g(x) = x + 1$, then $fg(x)$ is:

A. $2x + 2$  
B. $2x$  
C. $x + 2$  
D. $2x + 1$  

---

**Q7.** The minimum value of $y = x^2 + 2x + 1$ is:

A. 1  
B. 0  
C. 2  
D. -1  

---

**Q8.** For $f(x) = \sqrt{x}$, the domain is:

A. $x > 0$  
B. $x \geq 0$  
C. $x \leq 0$  
D. all real $x$  

---

**Q9.** The graph of $y = -x^2$ is the graph of $y = x^2$:

A. translated down  
B. translated up  
C. reflected in the $x$-axis  
D. stretched  

---

**Q10.** If $f(x) = x^3$, then $f^{-1}(x)$ is:

A. $x^3$  
B. $\dfrac{1}{x^3}$  
C. $3x$  
D. $\sqrt[3]{x}$  

---

**Q11.** The sum of the roots of $2x^2 - 6x + 3 = 0$ is:

A. -3  
B. 6  
C. 3  
D. $\dfrac{3}{2}$  

---

**Q12.** If $f(x) = x + 2$ and $g(x) = 3x$, then $gf(x)$ is:

A. $3x + 2$  
B. $3x$  
C. $x + 6$  
D. $3x + 6$  

---

**Q13.** The graph of $y = |x|$ at $x = 0$ has:

A. a vertical asymptote  
B. a sharp corner  
C. a smooth curve  
D. a horizontal asymptote  

---

**Q14.** If $f(x) = \dfrac{x+1}{x-1}$, $x \neq 1$, then $f(3)$ is:

A. $\dfrac{1}{2}$  
B. 2  
C. 3  
D. 4  

---

**Q15.** The product of the roots of $x^2 - 4x + 7 = 0$ is:

A. -4  
B. 4  
C. 7  
D. -7  

---

**Q16.** The graph of $y = (x+1)^2$ has turning point:

A. (0, 1)  
B. (1, 0)  
C. (0, -1)  
D. (-1, 0)  

---

**Q17.** If $f(x) = 2x - 1$, then $f^{-1}(3)$ is:

A. 1  
B. 4  
C. 2  
D. 5  

---

**Q18.** The equation $x^2 - 2x + 5 = 0$ has:

A. one repeated root  
B. three roots  
C. two distinct real roots  
D. no real roots  

---

**Q19.** If $f(x) = x^2$ and $g(x) = 2x$, then $fg(3)$ is:

A. 9  
B. 36  
C. 18  
D. 12  

---

**Q20.** The range of $f(x) = x^2 + 1$ is:

A. $y \geq 0$  
B. $y \geq 1$  
C. all real $y$  
D. $y > 1$  

---

**Q21.** The graph of $y = x^2$ stretched vertically by factor 2 becomes:

A. $y = x^2 + 2$  
B. $y = x^4$  
C. $y = 2x^2$  
D. $y = (2x)^2$  

---

**Q22.** If $f(x) = \dfrac{2}{x}$, then $f^{-1}(x)$ is:

A. $-\dfrac{2}{x}$  
B. $\dfrac{x}{2}$  
C. $2x$  
D. $\dfrac{2}{x}$  

---

**Q23.** The discriminant of $x^2 - 4x + 4 = 0$ is:

A. 4  
B. -16  
C. 0  
D. 16  

---

**Q24.** If $f(x) = x + 1$ and $g(x) = x - 1$, then $fg(x)$ is:

A. $x - 2$  
B. $x + 2$  
C. $x^2 - 1$  
D. $x$  

---

**Q25.** If $f(x) = 2x + 3$, then $f^{-1}(x)$ is:

A. $\dfrac{x-3}{2}$  
B. $\dfrac{x+3}{2}$  
C. $2x - 3$  
D. $\dfrac{x}{2} + 3$  

---

**Q26.** If $f(x) = x^2$ and $g(x) = x + 1$, then $fg(x)$ is:

A. $(x+1)^2$  
B. $x^2 + 1$  
C. $x + 1$  
D. $x^2 + x$  

---

**Q27.** The turning point of $y = x^2 - 4x + 3$ is:

A. (2, -1)  
B. (4, 3)  
C. (-2, 15)  
D. (2, 3)  

---

**Q28.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 2 and 3  
B. -2 and -3  
C. 5 and 6  
D. 1 and 6  

---

**Q29.** If $f(x) = \dfrac{1}{x}$, $x \neq 0$, then $f^{-1}(x)$ is:

A. $\dfrac{1}{x}$  
B. $x^2$  
C. $x$  
D. $-x$  

---

**Q30.** The graph of $y = x^2$ translated 3 units right becomes:

A. $y = (x-3)^2$  
B. $y = x^2 - 3$  
C. $y = x^2 + 3$  
D. $y = (x+3)^2$  

---

**Q31.** $\int 3\,dx$ is:

A. $\dfrac{3x^2}{2} + c$  
B. $3x + c$  
C. $x^3 + c$  
D. $3 + c$  

---

**Q32.** A stationary point occurs where:

A. $y = 0$  
B. $\dfrac{dy}{dx} = 0$  
C. $\dfrac{dy}{dx} = 1$  
D. $x = 0$  

---

**Q33.** The derivative of $x^2 + 3x$ is:

A. $2x$  
B. $x^2 + 3$  
C. $2x + 3$  
D. $2x^2 + 3x$  

---

**Q34.** $\int_0^1 x\,dx$ is:

A. 1  
B. 0  
C. 2  
D. $\dfrac{1}{2}$  

---

**Q35.** The second derivative of $x^3$ is:

A. $3x^2$  
B. $3x$  
C. $6x$  
D. $6x^2$  

---

**Q36.** The equation of the tangent to $y = x^2$ at $(1, 1)$ is:

A. $y = x$  
B. $y = x - 1$  
C. $y = 2x + 1$  
D. $y = 2x - 1$  

---

**Q37.** If $\dfrac{dy}{dx} = 2x$ and $y = 1$ when $x = 0$, then $y$ is:

A. $2x + 1$  
B. $x^2 + 1$  
C. $x^2$  
D. $x^2 - 1$  

---

**Q38.** The derivative of $\sqrt{x}$ is:

A. $2\sqrt{x}$  
B. $\dfrac{1}{2\sqrt{x}}$  
C. $\dfrac{1}{2}x$  
D. $\dfrac{1}{\sqrt{x}}$  

---

**Q39.** The area under $y = x$ from $x = 0$ to $x = 2$ is:

A. 1  
B. 4  
C. 2  
D. 3  

---

**Q40.** A maximum point has:

A. $\dfrac{dy}{dx} > 0$  
B. $\dfrac{dy}{dx} = 0$ and $\dfrac{d^2y}{dx^2} > 0$  
C. $\dfrac{d^2y}{dx^2} = 0$  
D. $\dfrac{dy}{dx} = 0$ and $\dfrac{d^2y}{dx^2} < 0$  

---

**Q41.** The derivative of $4x^3 - 2x$ is:

A. $4x^2 - 2$  
B. $12x^3 - 2$  
C. $12x^2 - 2$  
D. $12x^2$  

---

**Q42.** $\int (x^2 + 1)\,dx$ is:

A. $\dfrac{x^3}{3} + c$  
B. $2x + c$  
C. $x^3 + x + c$  
D. $\dfrac{x^3}{3} + x + c$  

---

**Q43.** The gradient of $y = 3x - 2$ is:

A. 1  
B. 3  
C. -2  
D. 2  

---

**Q44.** If $s = t^2$, the velocity when $t = 3$ is:

A. 12  
B. 6  
C. 3  
D. 9  

---

**Q45.** The derivative of $x^4$ is:

A. $\dfrac{x^5}{5}$  
B. $x^3$  
C. $4x^3$  
D. $4x$  

---

**Q46.** $\int \dfrac{1}{x^2}\,dx$ is:

A. $-x + c$  
B. $\dfrac{1}{x} + c$  
C. $\ln x + c$  
D. $-\dfrac{1}{x} + c$  

---

**Q47.** The turning point of $y = x^2 - 2x$ is:

A. (2, 0)  
B. (1, 1)  
C. (1, -1)  
D. (-1, 3)  

---

**Q48.** The derivative of $y = (2x+1)^2$ is:

A. $4x$  
B. $2(2x+1)$  
C. $4x + 2$  
D. $8x + 4$  

---

**Q49.** $\int_0^1 2x\,dx$ is:

A. 1  
B. 2  
C. 0  
D. 4  

---

**Q50.** If $\dfrac{dy}{dx} = 3x^2$, then $y$ is:

A. $x^3 + c$  
B. $3x^3 + c$  
C. $\dfrac{x^3}{3} + c$  
D. $6x + c$  

---

**Q51.** The normal to a curve is perpendicular to the:

A. tangent  
B. $x$-axis  
C. curve itself  
D. $y$-axis  

---

**Q52.** The derivative of $2x^3$ is:

A. $6x^2$  
B. $6x^3$  
C. $3x^2$  
D. $2x^2$  

---

**Q53.** $\int (3x^2 - 2)\,dx$ is:

A. $x^3 - 2x + c$  
B. $6x - 2 + c$  
C. $3x^3 - 2x + c$  
D. $x^3 - 2 + c$  

---

**Q54.** The area under $y = x^2$ from $x = 0$ to $x = 1$ is:

A. $\dfrac{1}{3}$  
B. 2  
C. $\dfrac{1}{2}$  
D. 1  

---

**Q55.** The derivative of $x^3$ is:

A. $x^2$  
B. $3x^2$  
C. $3x$  
D. $\dfrac{x^4}{4}$  

---

**Q56.** The derivative of $5x^2$ is:

A. $5x$  
B. $10x$  
C. $25x$  
D. $2x$  

---

**Q57.** The derivative of a constant is:

A. 1  
B. the constant itself  
C. 0  
D. undefined  

---

**Q58.** $\int 2x\,dx$ is:

A. $2x^2 + c$  
B. $x + c$  
C. $\dfrac{x^2}{2} + c$  
D. $x^2 + c$  

---

**Q59.** The gradient of $y = x^2$ at $x = 3$ is:

A. 9  
B. 12  
C. 6  
D. 3  

---

**Q60.** The derivative of $\dfrac{1}{x}$ is:

A. $\dfrac{1}{x^2}$  
B. $\ln x$  
C. $-x^2$  
D. $-\dfrac{1}{x^2}$  

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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

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

![Triangle ABC](/paper-diagrams/math-triangle.svg)

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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

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

![Cumulative frequency curve](/paper-diagrams/math-statistics.svg)

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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

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

![Graph sketch axes](/paper-diagrams/math-parabola.svg)

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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 4

## Structural Question Bank — Functions and graphs

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FUNCTIONS AND GRAPHS

**Q1.** Given $f(x) = \dfrac{2x+1}{x-3}$, $x \neq 3$:

(a) Find $f^{-1}(x)$. *(4 marks)*

(b) State the domain and range of $f^{-1}$. *(3 marks)*

(c) Solve $f(x) = f^{-1}(x)$. *(5 marks)*

---

**Q2.** The functions $f$ and $g$ are defined by $f(x) = 3x - 2$ and $g(x) = x^2 + 1$.

(a) Find $fg(x)$ and $gf(x)$. *(4 marks)*

(b) Solve $fg(x) = gf(x)$. *(5 marks)*

(c) Find the value of $x$ for which $f^{-1}(x) = g(2)$. *(4 marks)*

---

**Q3.** A quadratic function has roots $\alpha$ and $\beta$ where $\alpha + \beta = 5$ and $\alpha\beta = 6$.

(a) Write down the quadratic equation. *(3 marks)*

(b) Find the value of $\alpha^2 + \beta^2$. *(4 marks)*

(c) Find a quadratic equation whose roots are $\alpha^2$ and $\beta^2$. *(5 marks)*

---

**Q4.** Sketch the graph of $y = 2x^2 - 8x + 5$, showing clearly:

(a) the coordinates of the turning point; *(4 marks)*

(b) the roots of the equation $2x^2 - 8x + 5 = 0$; *(4 marks)*

(c) the $y$-intercept. *(2 marks)*

---

**Q5.** The function $f(x) = x^2 - 4x + 3$ is defined for $x \geq 2$.

(a) Show that $f$ is one-to-one on this domain. *(3 marks)*

(b) Find $f^{-1}(x)$. *(5 marks)*

(c) State the domain of $f^{-1}$. *(2 marks)*

---

**Q6.** Given $f(x) = \dfrac{1}{x}$, $x \neq 0$, and $g(x) = x + 2$:

(a) Find $gf(x)$ and state its domain. *(4 marks)*

(b) Find $fg(x)$ and state its domain. *(4 marks)*

(c) Solve $gf(x) = fg(x)$. *(4 marks)*

---

**Q7.** The graph of $y = x^2$ is transformed to $y = (x-3)^2 + 4$.

(a) Describe the two transformations. *(4 marks)*

(b) State the coordinates of the turning point of the new graph. *(2 marks)*

(c) Sketch both graphs on the same axes. *(4 marks)*

---

**Q8.** Solve the equation $2^{2x} - 5(2^x) + 4 = 0$. *(7 marks)*

---

**Q9.** The functions $f(x) = 2x + 1$ and $g(x) = \dfrac{x-1}{2}$ are given.

(a) Show that $f$ and $g$ are inverse functions. *(4 marks)*

(b) Find $fg(3)$ and $gf(3)$. *(3 marks)*

(c) Sketch the graphs of $f$ and $g$ on the same axes, showing the line $y = x$. *(4 marks)*

---

**Q10.** A curve has equation $y = x^2 - 6x + 10$.

(a) Express $y$ in the form $(x-a)^2 + b$. *(3 marks)*

(b) State the minimum value of $y$ and the value of $x$ at which it occurs. *(3 marks)*

(c) Find the range of $y$ for $0 \leq x \leq 5$. *(4 marks)*

---

**Q11.** Given $f(x) = \sqrt{x+1}$, $x \geq -1$:

(a) Find $f^{-1}(x)$. *(4 marks)*

(b) State the domain and range of $f$ and of $f^{-1}$. *(4 marks)*

(c) Solve $f(x) = f^{-1}(x)$. *(4 marks)*

---

**Q12.** The roots of $x^2 - 3x + 1 = 0$ are $\alpha$ and $\beta$.

(a) Write down the values of $\alpha + \beta$ and $\alpha\beta$. *(2 marks)*

(b) Find the value of $\dfrac{1}{\alpha} + \dfrac{1}{\beta}$. *(4 marks)*

(c) Find a quadratic equation with roots $\alpha + 1$ and $\beta + 1$. *(5 marks)*

---

**Q13.** Sketch the graph of $y = |x - 2|$ for $-1 \leq x \leq 5$, and hence solve $|x - 2| = 3$. *(7 marks)*

---

**Q14.** The function $f(x) = ax^2 + bx + c$ has a maximum value of 9 at $x = 1$, and passes through $(0, 5)$. Find $a$, $b$ and $c$. *(7 marks)*

---

**Q15.** Given $f(x) = \dfrac{2x}{x+1}$, $x \neq -1$:

(a) Find $f^{-1}(x)$. *(4 marks)*

(b) Find $f^2(x) = ff(x)$. *(5 marks)*

(c) Solve $f^2(x) = x$. *(4 marks)*

---

**Q16.** The graph of $y = f(x)$ is reflected in the $y$-axis and then translated 2 units down.

(a) Write down the equation of the resulting graph. *(3 marks)*

(b) If $f(x) = x^2 - 4x$, find the equation of the resulting graph in simplified form. *(5 marks)*

(c) State the turning point of the resulting graph. *(3 marks)*

---

**Q17.** Solve the simultaneous equations $y = x^2 - 2x$ and $y = 2x - 3$. *(6 marks)*

---

**Q18.** Given $f(x) = \dfrac{x+2}{x-1}$, $x \neq 1$:

(a) Find $f^{-1}(x)$. *(4 marks)*

(b) Show that $f^{-1}(x) = f(x)$. *(3 marks)*

(c) Find $f^2(x)$. *(4 marks)*

---

**Q19.** A function $f$ is defined by $f(x) = 2x^2 - 4x + 1$ for $x \geq 1$.

(a) Complete the square. *(3 marks)*

(b) Find the range of $f$. *(3 marks)*

(c) Find $f^{-1}(x)$. *(5 marks)*

---

**Q20.** The graph of $y = x^2$ is stretched parallel to the $y$-axis by factor 3 and translated 1 unit left.

(a) Write down the equation of the resulting graph. *(4 marks)*

(b) State the coordinates of its turning point. *(2 marks)*

(c) Find the value of $y$ when $x = 2$. *(2 marks)*
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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 5

## Structural Question Bank — Introductory calculus

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: INTRODUCTORY CALCULUS

**Q1.** Differentiate from first principles $y = x^2 + 3x$. *(6 marks)*

---

**Q2.** Find the derivative of each of the following:

(a) $y = 3x^4 - 2x^3 + 5x - 7$ *(3 marks)*

(b) $y = \dfrac{2}{x^3}$ *(3 marks)*

(c) $y = \sqrt{x} + \dfrac{1}{\sqrt{x}}$ *(4 marks)*

---

**Q3.** Find the equation of the tangent to the curve $y = x^3 - 2x$ at the point where $x = 1$. *(6 marks)*

---

**Q4.** Find the coordinates of the stationary points of $y = x^3 - 3x^2 - 9x + 5$ and determine their nature. *(8 marks)*

---

**Q5.** Evaluate the following integrals:

(a) $\int (3x^2 + 2x - 1)\,dx$ *(3 marks)*

(b) $\int \dfrac{1}{x^2}\,dx$ *(3 marks)*

(c) $\int \sqrt{x}\,dx$ *(3 marks)*

---

**Q6.** Find the area enclosed by the curve $y = x^2 - 4x + 3$ and the $x$-axis. *(7 marks)*

---

**Q7.** A curve passes through the point $(1, 4)$ and has gradient function $\dfrac{dy}{dx} = 2x + 3$. Find the equation of the curve. *(5 marks)*

---

**Q8.** Find the equation of the normal to the curve $y = x^2 - 4x + 2$ at the point where $x = 3$. *(6 marks)*

---

**Q9.** A rectangular field is to be fenced using 200 m of fencing. Find the maximum area that can be enclosed. *(7 marks)*

---

**Q10.** Differentiate $y = (2x + 1)^5$ using the chain rule. *(4 marks)*

---

**Q11.** Find $\dfrac{dy}{dx}$ for each of the following:

(a) $y = \dfrac{x^2 + 1}{x}$ *(4 marks)*

(b) $y = (x^2 - 1)(x + 2)$ *(4 marks)*

---

**Q12.** Evaluate $\int_0^2 (x^2 + 1)\,dx$. *(5 marks)*

---

**Q13.** The displacement of a particle is given by $s = t^3 - 6t^2 + 9t$.

(a) Find the velocity and acceleration. *(4 marks)*

(b) Find the times when the particle is at rest. *(3 marks)*

(c) Find the displacement when the particle is at rest. *(3 marks)*

---

**Q14.** Find the maximum and minimum values of $y = 2x^3 - 9x^2 + 12x$ on the interval $0 \leq x \leq 3$. *(8 marks)*

---

**Q15.** Find the area between the curves $y = x^2$ and $y = x + 2$. *(8 marks)*

---

**Q16.** Given $y = \dfrac{3}{x} - x^2$, find $\dfrac{dy}{dx}$ and hence find the gradient of the curve at $x = 1$. *(5 marks)*

---

**Q17.** A curve has equation $y = x^3 - 3x$. Find the coordinates of the points where the gradient is 9. *(6 marks)*

---

**Q18.** Find $\int (2x + 1)(x - 3)\,dx$. *(5 marks)*

---

**Q19.** The volume of a sphere is increasing at a rate of $8\pi$ cm³/s. Find the rate of increase of the radius when the radius is 4 cm. *(6 marks)*

---

**Q20.** Find the equation of the tangent to $y = \dfrac{1}{x}$ at the point $(2, \tfrac{1}{2})$. *(5 marks)*
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
  where subject = 'Additional Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Additional Mathematics',
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 6

## Structural Question Bank — Functions and graphs

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Additional Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FUNCTIONS AND GRAPHS

**Q1.** Given $f(x) = \dfrac{2x+1}{x-3}$, $x \neq 3$:

(a) Find $f^{-1}(x)$. *(4 marks)*

(b) State the domain and range of $f^{-1}$. *(3 marks)*

(c) Solve $f(x) = f^{-1}(x)$. *(5 marks)*

---

**Q2.** The functions $f$ and $g$ are defined by $f(x) = 3x - 2$ and $g(x) = x^2 + 1$.

(a) Find $fg(x)$ and $gf(x)$. *(4 marks)*

(b) Solve $fg(x) = gf(x)$. *(5 marks)*

(c) Find the value of $x$ for which $f^{-1}(x) = g(2)$. *(4 marks)*

---

**Q3.** A quadratic function has roots $\alpha$ and $\beta$ where $\alpha + \beta = 5$ and $\alpha\beta = 6$.

(a) Write down the quadratic equation. *(3 marks)*

(b) Find the value of $\alpha^2 + \beta^2$. *(4 marks)*

(c) Find a quadratic equation whose roots are $\alpha^2$ and $\beta^2$. *(5 marks)*

---

**Q4.** Sketch the graph of $y = 2x^2 - 8x + 5$, showing clearly:

(a) the coordinates of the turning point; *(4 marks)*

(b) the roots of the equation $2x^2 - 8x + 5 = 0$; *(4 marks)*

(c) the $y$-intercept. *(2 marks)*

---

**Q5.** The function $f(x) = x^2 - 4x + 3$ is defined for $x \geq 2$.

(a) Show that $f$ is one-to-one on this domain. *(3 marks)*

(b) Find $f^{-1}(x)$. *(5 marks)*

(c) State the domain of $f^{-1}$. *(2 marks)*

---

**Q6.** Given $f(x) = \dfrac{1}{x}$, $x \neq 0$, and $g(x) = x + 2$:

(a) Find $gf(x)$ and state its domain. *(4 marks)*

(b) Find $fg(x)$ and state its domain. *(4 marks)*

(c) Solve $gf(x) = fg(x)$. *(4 marks)*

---

**Q7.** The graph of $y = x^2$ is transformed to $y = (x-3)^2 + 4$.

(a) Describe the two transformations. *(4 marks)*

(b) State the coordinates of the turning point of the new graph. *(2 marks)*

(c) Sketch both graphs on the same axes. *(4 marks)*

---

**Q8.** Solve the equation $2^{2x} - 5(2^x) + 4 = 0$. *(7 marks)*

---

**Q9.** The functions $f(x) = 2x + 1$ and $g(x) = \dfrac{x-1}{2}$ are given.

(a) Show that $f$ and $g$ are inverse functions. *(4 marks)*

(b) Find $fg(3)$ and $gf(3)$. *(3 marks)*

(c) Sketch the graphs of $f$ and $g$ on the same axes, showing the line $y = x$. *(4 marks)*

---

**Q10.** A curve has equation $y = x^2 - 6x + 10$.

(a) Express $y$ in the form $(x-a)^2 + b$. *(3 marks)*

(b) State the minimum value of $y$ and the value of $x$ at which it occurs. *(3 marks)*

(c) Find the range of $y$ for $0 \leq x \leq 5$. *(4 marks)*

---

**Q11.** Given $f(x) = \sqrt{x+1}$, $x \geq -1$:

(a) Find $f^{-1}(x)$. *(4 marks)*

(b) State the domain and range of $f$ and of $f^{-1}$. *(4 marks)*

(c) Solve $f(x) = f^{-1}(x)$. *(4 marks)*

---

**Q12.** The roots of $x^2 - 3x + 1 = 0$ are $\alpha$ and $\beta$.

(a) Write down the values of $\alpha + \beta$ and $\alpha\beta$. *(2 marks)*

(b) Find the value of $\dfrac{1}{\alpha} + \dfrac{1}{\beta}$. *(4 marks)*

(c) Find a quadratic equation with roots $\alpha + 1$ and $\beta + 1$. *(5 marks)*

---

**Q13.** Sketch the graph of $y = |x - 2|$ for $-1 \leq x \leq 5$, and hence solve $|x - 2| = 3$. *(7 marks)*

---

**Q14.** The function $f(x) = ax^2 + bx + c$ has a maximum value of 9 at $x = 1$, and passes through $(0, 5)$. Find $a$, $b$ and $c$. *(7 marks)*

---

**Q15.** Given $f(x) = \dfrac{2x}{x+1}$, $x \neq -1$:

(a) Find $f^{-1}(x)$. *(4 marks)*

(b) Find $f^2(x) = ff(x)$. *(5 marks)*

(c) Solve $f^2(x) = x$. *(4 marks)*

---

**Q16.** The graph of $y = f(x)$ is reflected in the $y$-axis and then translated 2 units down.

(a) Write down the equation of the resulting graph. *(3 marks)*

(b) If $f(x) = x^2 - 4x$, find the equation of the resulting graph in simplified form. *(5 marks)*

(c) State the turning point of the resulting graph. *(3 marks)*

---

**Q17.** Solve the simultaneous equations $y = x^2 - 2x$ and $y = 2x - 3$. *(6 marks)*

---

**Q18.** Given $f(x) = \dfrac{x+2}{x-1}$, $x \neq 1$:

(a) Find $f^{-1}(x)$. *(4 marks)*

(b) Show that $f^{-1}(x) = f(x)$. *(3 marks)*

(c) Find $f^2(x)$. *(4 marks)*

---

**Q19.** A function $f$ is defined by $f(x) = 2x^2 - 4x + 1$ for $x \geq 1$.

(a) Complete the square. *(3 marks)*

(b) Find the range of $f$. *(3 marks)*

(c) Find $f^{-1}(x)$. *(5 marks)*

---

**Q20.** The graph of $y = x^2$ is stretched parallel to the $y$-axis by factor 3 and translated 1 unit left.

(a) Write down the equation of the resulting graph. *(4 marks)*

(b) State the coordinates of its turning point. *(2 marks)*

(c) Find the value of $y$ when $x = 2$. *(2 marks)*
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