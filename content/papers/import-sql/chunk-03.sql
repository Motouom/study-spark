begin;

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
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 7

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
  where title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 8

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
  where subject = 'Agricultural Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level AGRICULTURAL SCIENCE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Agricultural Science

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Soil Science: Sample question 1 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Crop Production: Sample question 2 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Animal Husbandry: Sample question 3 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Farm Tools: Sample question 4 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Agricultural Economics: Sample question 5 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Pest Control: Sample question 6 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Farm Records: Sample question 7 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Extension: Sample question 8 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Soil Science: Sample question 9 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Crop Production: Sample question 10 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Animal Husbandry: Sample question 11 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Farm Tools: Sample question 12 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Agricultural Economics: Sample question 13 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Pest Control: Sample question 14 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Farm Records: Sample question 15 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Extension: Sample question 16 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Soil Science: Sample question 17 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Crop Production: Sample question 18 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Animal Husbandry: Sample question 19 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Farm Tools: Sample question 20 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Agricultural Economics: Sample question 21 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Pest Control: Sample question 22 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Farm Records: Sample question 23 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Extension: Sample question 24 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Soil Science: Sample question 25 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Crop Production: Sample question 26 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Animal Husbandry: Sample question 27 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Farm Tools: Sample question 28 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Agricultural Economics: Sample question 29 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Pest Control: Sample question 30 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Farm Records: Sample question 31 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Extension: Sample question 32 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Soil Science: Sample question 33 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Crop Production: Sample question 34 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Animal Husbandry: Sample question 35 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Farm Tools: Sample question 36 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Agricultural Economics: Sample question 37 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Pest Control: Sample question 38 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Farm Records: Sample question 39 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Extension: Sample question 40 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Soil Science: Sample question 41 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Crop Production: Sample question 42 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Animal Husbandry: Sample question 43 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Farm Tools: Sample question 44 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Agricultural Economics: Sample question 45 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Pest Control: Sample question 46 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Farm Records: Sample question 47 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Extension: Sample question 48 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Soil Science: Sample question 49 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Crop Production: Sample question 50 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Animal Husbandry: Sample question 51 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Farm Tools: Sample question 52 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Agricultural Economics: Sample question 53 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Pest Control: Sample question 54 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Farm Records: Sample question 55 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Extension: Sample question 56 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Soil Science: Sample question 57 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Crop Production: Sample question 58 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Animal Husbandry: Sample question 59 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Farm Tools: Sample question 60 for Agricultural Science Ordinary Level Paper 1.

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
  where subject = 'Agricultural Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level AGRICULTURAL SCIENCE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Agricultural Science

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Soil Science: Sample question 1 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Crop Production: Sample question 2 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Animal Husbandry: Sample question 3 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Farm Tools: Sample question 4 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Agricultural Economics: Sample question 5 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Pest Control: Sample question 6 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Farm Records: Sample question 7 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Extension: Sample question 8 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Soil Science: Sample question 9 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Crop Production: Sample question 10 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Animal Husbandry: Sample question 11 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Farm Tools: Sample question 12 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Agricultural Economics: Sample question 13 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Pest Control: Sample question 14 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Farm Records: Sample question 15 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Extension: Sample question 16 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Soil Science: Sample question 17 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Crop Production: Sample question 18 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Animal Husbandry: Sample question 19 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Farm Tools: Sample question 20 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Agricultural Economics: Sample question 21 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Pest Control: Sample question 22 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Farm Records: Sample question 23 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Extension: Sample question 24 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Soil Science: Sample question 25 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Crop Production: Sample question 26 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Animal Husbandry: Sample question 27 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Farm Tools: Sample question 28 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Agricultural Economics: Sample question 29 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Pest Control: Sample question 30 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Farm Records: Sample question 31 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Extension: Sample question 32 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Soil Science: Sample question 33 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Crop Production: Sample question 34 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Animal Husbandry: Sample question 35 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Farm Tools: Sample question 36 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Agricultural Economics: Sample question 37 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Pest Control: Sample question 38 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Farm Records: Sample question 39 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Extension: Sample question 40 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Soil Science: Sample question 41 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Crop Production: Sample question 42 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Animal Husbandry: Sample question 43 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Farm Tools: Sample question 44 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Agricultural Economics: Sample question 45 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Pest Control: Sample question 46 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Farm Records: Sample question 47 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Extension: Sample question 48 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Soil Science: Sample question 49 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Crop Production: Sample question 50 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Animal Husbandry: Sample question 51 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Farm Tools: Sample question 52 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Agricultural Economics: Sample question 53 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Pest Control: Sample question 54 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Farm Records: Sample question 55 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Extension: Sample question 56 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Soil Science: Sample question 57 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Crop Production: Sample question 58 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Animal Husbandry: Sample question 59 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Farm Tools: Sample question 60 for Agricultural Science Ordinary Level Paper 1.

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
  where subject = 'Agricultural Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level AGRICULTURAL SCIENCE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Agricultural Science

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Soil Science: Sample question 1 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Crop Production: Sample question 2 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Animal Husbandry: Sample question 3 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Farm Tools: Sample question 4 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Agricultural Economics: Sample question 5 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Pest Control: Sample question 6 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Farm Records: Sample question 7 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Extension: Sample question 8 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Soil Science: Sample question 9 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Crop Production: Sample question 10 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Animal Husbandry: Sample question 11 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Farm Tools: Sample question 12 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Agricultural Economics: Sample question 13 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Pest Control: Sample question 14 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Farm Records: Sample question 15 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Extension: Sample question 16 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Soil Science: Sample question 17 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Crop Production: Sample question 18 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Animal Husbandry: Sample question 19 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Farm Tools: Sample question 20 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Agricultural Economics: Sample question 21 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Pest Control: Sample question 22 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Farm Records: Sample question 23 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Extension: Sample question 24 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Soil Science: Sample question 25 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Crop Production: Sample question 26 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Animal Husbandry: Sample question 27 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Farm Tools: Sample question 28 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Agricultural Economics: Sample question 29 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Pest Control: Sample question 30 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Farm Records: Sample question 31 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Extension: Sample question 32 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Soil Science: Sample question 33 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Crop Production: Sample question 34 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Animal Husbandry: Sample question 35 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Farm Tools: Sample question 36 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Agricultural Economics: Sample question 37 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Pest Control: Sample question 38 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Farm Records: Sample question 39 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Extension: Sample question 40 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Soil Science: Sample question 41 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Crop Production: Sample question 42 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Animal Husbandry: Sample question 43 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Farm Tools: Sample question 44 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Agricultural Economics: Sample question 45 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Pest Control: Sample question 46 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Farm Records: Sample question 47 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Extension: Sample question 48 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Soil Science: Sample question 49 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Crop Production: Sample question 50 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Animal Husbandry: Sample question 51 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Farm Tools: Sample question 52 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Agricultural Economics: Sample question 53 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Pest Control: Sample question 54 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Farm Records: Sample question 55 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Extension: Sample question 56 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Soil Science: Sample question 57 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Crop Production: Sample question 58 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Animal Husbandry: Sample question 59 for Agricultural Science Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Farm Tools: Sample question 60 for Agricultural Science Ordinary Level Paper 1.

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
  where subject = 'Agricultural Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Agricultural Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOIL SCIENCE

**Q1.** Soil science: A biological investigation on soil science compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

![Soil profile](/paper-diagrams/agriculture-soil.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Soil science: A biological investigation on soil science compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Soil science: A biological investigation on soil science compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Soil science: A biological investigation on soil science compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Soil science: A biological investigation on soil science compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: CROP PRODUCTION

**Q6.** Crop production: A biological investigation on crop production compares sample A with sample B after 8 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Crop production: A biological investigation on crop production compares sample A with sample B after 9 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Crop production: A biological investigation on crop production compares sample A with sample B after 10 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Crop production: A biological investigation on crop production compares sample A with sample B after 11 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Crop production: A biological investigation on crop production compares sample A with sample B after 12 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ANIMAL PRODUCTION

**Q11.** Animal production: A biological investigation on animal production compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Animal production: A biological investigation on animal production compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Animal production: A biological investigation on animal production compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Animal production: A biological investigation on animal production compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Animal production: A biological investigation on animal production compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: FARM MANAGEMENT

**Q16.** Farm management: A biological investigation on farm management compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Farm management: A biological investigation on farm management compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Farm management: A biological investigation on farm management compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Farm management: A biological investigation on farm management compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Farm management: A biological investigation on farm management compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: AGRICULTURAL ECONOMICS

**Q21.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PESTS AND DISEASES

**Q26.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: AGROFORESTRY

**Q31.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL AGRICULTURE

**Q36.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Agricultural Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Agricultural Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOIL SCIENCE

**Q1.** Soil science: A biological investigation on soil science compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

![Soil profile](/paper-diagrams/agriculture-soil.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Soil science: A biological investigation on soil science compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Soil science: A biological investigation on soil science compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Soil science: A biological investigation on soil science compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Soil science: A biological investigation on soil science compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: CROP PRODUCTION

**Q6.** Crop production: A biological investigation on crop production compares sample A with sample B after 8 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Crop production: A biological investigation on crop production compares sample A with sample B after 9 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Crop production: A biological investigation on crop production compares sample A with sample B after 10 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Crop production: A biological investigation on crop production compares sample A with sample B after 11 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Crop production: A biological investigation on crop production compares sample A with sample B after 12 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ANIMAL PRODUCTION

**Q11.** Animal production: A biological investigation on animal production compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Animal production: A biological investigation on animal production compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Animal production: A biological investigation on animal production compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Animal production: A biological investigation on animal production compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Animal production: A biological investigation on animal production compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: FARM MANAGEMENT

**Q16.** Farm management: A biological investigation on farm management compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Farm management: A biological investigation on farm management compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Farm management: A biological investigation on farm management compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Farm management: A biological investigation on farm management compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Farm management: A biological investigation on farm management compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: AGRICULTURAL ECONOMICS

**Q21.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PESTS AND DISEASES

**Q26.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: AGROFORESTRY

**Q31.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL AGRICULTURE

**Q36.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Agricultural Science'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Agricultural Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOIL SCIENCE

**Q1.** Soil science: A biological investigation on soil science compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

![Soil profile](/paper-diagrams/agriculture-soil.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Soil science: A biological investigation on soil science compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Soil science: A biological investigation on soil science compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Soil science: A biological investigation on soil science compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Soil science: A biological investigation on soil science compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: CROP PRODUCTION

**Q6.** Crop production: A biological investigation on crop production compares sample A with sample B after 8 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Crop production: A biological investigation on crop production compares sample A with sample B after 9 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Crop production: A biological investigation on crop production compares sample A with sample B after 10 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Crop production: A biological investigation on crop production compares sample A with sample B after 11 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Crop production: A biological investigation on crop production compares sample A with sample B after 12 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ANIMAL PRODUCTION

**Q11.** Animal production: A biological investigation on animal production compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Animal production: A biological investigation on animal production compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Animal production: A biological investigation on animal production compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Animal production: A biological investigation on animal production compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Animal production: A biological investigation on animal production compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: FARM MANAGEMENT

**Q16.** Farm management: A biological investigation on farm management compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Farm management: A biological investigation on farm management compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Farm management: A biological investigation on farm management compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Farm management: A biological investigation on farm management compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Farm management: A biological investigation on farm management compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: AGRICULTURAL ECONOMICS

**Q21.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Agricultural economics: A biological investigation on agricultural economics compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PESTS AND DISEASES

**Q26.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Pests and diseases: A biological investigation on pests and diseases compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: AGROFORESTRY

**Q31.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Agroforestry: A biological investigation on agroforestry compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL AGRICULTURE

**Q36.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical agriculture: A biological investigation on practical agriculture compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Agricultural Science'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level AGRICULTURAL SCIENCE P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Agricultural Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOIL MANAGEMENT

**Q1.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: CROP HUSBANDRY

**Q2.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ANIMAL PRODUCTION

**Q3.** Animal Production: A detailed examination question covering animal production concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FARM MACHINERY

**Q4.** Farm Machinery: A detailed examination question covering farm machinery concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: AGRICULTURAL ECONOMICS

**Q5.** Agricultural Economics: A detailed examination question covering agricultural economics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: FARM PLANNING

**Q6.** Farm Planning: A detailed examination question covering farm planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: MARKETING

**Q7.** Marketing: A detailed examination question covering marketing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PROJECT WORK

**Q8.** Project Work: A detailed examination question covering project work concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: SOIL MANAGEMENT

**Q9.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: CROP HUSBANDRY

**Q10.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

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
  where subject = 'Agricultural Science'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level AGRICULTURAL SCIENCE P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Agricultural Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOIL MANAGEMENT

**Q1.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: CROP HUSBANDRY

**Q2.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ANIMAL PRODUCTION

**Q3.** Animal Production: A detailed examination question covering animal production concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FARM MACHINERY

**Q4.** Farm Machinery: A detailed examination question covering farm machinery concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: AGRICULTURAL ECONOMICS

**Q5.** Agricultural Economics: A detailed examination question covering agricultural economics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: FARM PLANNING

**Q6.** Farm Planning: A detailed examination question covering farm planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: MARKETING

**Q7.** Marketing: A detailed examination question covering marketing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PROJECT WORK

**Q8.** Project Work: A detailed examination question covering project work concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: SOIL MANAGEMENT

**Q9.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: CROP HUSBANDRY

**Q10.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

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