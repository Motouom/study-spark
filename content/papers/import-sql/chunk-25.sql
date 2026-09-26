begin;

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
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level LOGIC P2 SET 7

## Structural Question Bank - Set 7

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
  where title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level LOGIC P2 SET 8

## Structural Question Bank - Set 8

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
  where subject = 'Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, technical
**Subject:** Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Solve $2^{x} = 32$.

A. 5  
B. 6  
C. 4  
D. 16  

---

**Q2.** Simplify $\sqrt{72}$.

A. $6\sqrt{2}$  
B. $3\sqrt{8}$  
C. $2\sqrt{18}$  
D. $8\sqrt{3}$  

---

**Q3.** Evaluate $\log_{3} 81$.

A. 4  
B. 2  
C. 3  
D. 9  

---

**Q4.** The 4th term of an AP is 14 and the common difference is 3. Find the first term.

A. 5  
B. 11  
C. 2  
D. 8  

---

**Q5.** Find the sum to infinity of a GP with $a = 12$ and $r = \dfrac{1}{3}$.

A. 18  
B. 36  
C. 16  
D. 24  

---

**Q6.** Factorise $x^2 - 9$.

A. $(x-3)(x+3)$  
B. $(x+9)(x-1)$  
C. $(x-3)^2$  
D. $(x-9)(x+1)$  

---

**Q7.** Solve $3x - 7 = 11$.

A. 4  
B. 6  
C. 8  
D. 5  

---

**Q8.** Expand $(x+2)^2$.

A. $x^2 + 2x + 4$  
B. $x^2 + 4x + 4$  
C. $x^2 + 4$  
D. $x^2 + 4x + 2$  

---

**Q9.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 1 and 6  
B. -2 and -3  
C. 2 and 3  
D. 2 and -3  

---

**Q10.** Simplify $\dfrac{x^2 - 4}{x - 2}$ for $x \neq 2$.

A. $x - 2$  
B. $x^2 + 2$  
C. $x$  
D. $x + 2$  

---

**Q11.** Find the value of $\log_{10} 1000$.

A. 2  
B. 1  
C. 3  
D. 10  

---

**Q12.** If $f(x) = 2x + 3$, find $f^{-1}(x)$.

A. $\dfrac{x+3}{2}$  
B. $\dfrac{x}{2} + 3$  
C. $2x - 3$  
D. $\dfrac{x-3}{2}$  

---

**Q13.** The 10th term of the sequence $2, 5, 8, \ldots$ is:

A. 26  
B. 29  
C. 32  
D. 50  

---

**Q14.** Solve the simultaneous equations $x + y = 10$ and $x - y = 4$.

A. $x=5, y=5$  
B. $x=7, y=3$  
C. $x=8, y=2$  
D. $x=6, y=4$  

---

**Q15.** Evaluate $\dfrac{1}{2} + \dfrac{1}{3}$.

A. $\dfrac{1}{6}$  
B. $\dfrac{2}{5}$  
C. $\dfrac{5}{6}$  
D. $\dfrac{3}{5}$  

---

**Q16.** The sum of the interior angles of a hexagon is:

A. 900°  
B. 540°  
C. 1080°  
D. 720°  

---

**Q17.** The area of a circle of radius 7 cm (take $\pi = \dfrac{22}{7}$) is:

A. 156 cm²  
B. 148 cm²  
C. 154 cm²  
D. 144 cm²  

---

**Q18.** The circumference of a circle of diameter 10 cm is:

A. $20\pi$ cm  
B. $100\pi$ cm  
C. $5\pi$ cm  
D. $10\pi$ cm  

---

**Q19.** The volume of a cylinder of radius 3 cm and height 10 cm is:

A. $300\pi$ cm³  
B. $90\pi$ cm³  
C. $30\pi$ cm³  
D. $13\pi$ cm³  

---

**Q20.** The interior angle of a regular octagon is:

A. 144°  
B. 135°  
C. 120°  
D. 140°  

---

**Q21.** The volume of a sphere of radius 3 cm is (in terms of $\pi$):

A. $108\pi$ cm³  
B. $27\pi$ cm³  
C. $36\pi$ cm³  
D. $9\pi$ cm³  

---

**Q22.** The area of a sector of radius 12 cm and angle 60° is:

A. $144\pi$ cm²  
B. $24\pi$ cm²  
C. $6\pi$ cm²  
D. $12\pi$ cm²  

---

**Q23.** A right triangle has legs 6 cm and 8 cm. Its hypotenuse is:

A. 7 cm  
B. 14 cm  
C. 10 cm  
D. 12 cm  

---

**Q24.** The perimeter of a rectangle of length 12 cm and width 5 cm is:

A. 28 cm  
B. 17 cm  
C. 60 cm  
D. 34 cm  

---

**Q25.** The distance between $(1,2)$ and $(4,6)$ is:

A. 5  
B. 7  
C. 12  
D. 25  

---

**Q26.** The gradient of the line through $(0,0)$ and $(3,5)$ is:

A. $\dfrac{5}{3}$  
B. $\dfrac{3}{5}$  
C. 3  
D. 5  

---

**Q27.** The angle in a semicircle is:

A. 90°  
B. 45°  
C. 60°  
D. 180°  

---

**Q28.** The volume of a cone of radius 3 cm and height 9 cm is (in terms of $\pi$):

A. $27\pi$ cm³  
B. $9\pi$ cm³  
C. $54\pi$ cm³  
D. $81\pi$ cm³  

---

**Q29.** The sum of the exterior angles of any convex polygon is:

A. 360°  
B. 720°  
C. 180°  
D. 540°  

---

**Q30.** The area of a triangle with base 10 cm and height 6 cm is:

A. 30 cm²  
B. 36 cm²  
C. 16 cm²  
D. 60 cm²  

---

**Q31.** The exact value of $\sin 30^\circ$ is:

A. $\dfrac{\sqrt{3}}{2}$  
B. $\dfrac{1}{2}$  
C. $\dfrac{1}{\sqrt{2}}$  
D. 1  

---

**Q32.** The exact value of $\cos 60^\circ$ is:

A. $\dfrac{\sqrt{3}}{2}$  
B. $\dfrac{1}{2}$  
C. 0  
D. $\dfrac{1}{\sqrt{2}}$  

---

**Q33.** The exact value of $\tan 45^\circ$ is:

A. $\sqrt{3}$  
B. $\dfrac{1}{\sqrt{3}}$  
C. 1  
D. 0  

---

**Q34.** In a right triangle, $\sin\theta = \dfrac{3}{5}$. Then $\cos\theta$ is:

A. $\dfrac{5}{3}$  
B. $\dfrac{3}{4}$  
C. $\dfrac{1}{5}$  
D. $\dfrac{4}{5}$  

---

**Q35.** The value of $\sin 90^\circ$ is:

A. 0  
B. -1  
C. 1  
D. $\dfrac{1}{2}$  

---

**Q36.** The period of $y = \sin x$ is:

A. $\pi$  
B. $4\pi$  
C. $\dfrac{\pi}{2}$  
D. $2\pi$  

---

**Q37.** Which identity is correct?

A. $1 + \tan^2\theta = \cos^2\theta$  
B. $\sin^2\theta + \cos^2\theta = 1$  
C. $\sin^2\theta - \cos^2\theta = 1$  
D. $\sin\theta = \cos\theta$ always  

---

**Q38.** In triangle ABC with sides a=7, b=8, c=9, the largest angle is opposite the longest side. The largest side is:

A. b  
B. c  
C. cannot tell  
D. a  

---

**Q39.** The exact value of $\tan 30^\circ$ is:

A. 1  
B. $\sqrt{3}$  
C. $\dfrac{1}{\sqrt{3}}$  
D. $\dfrac{\sqrt{3}}{2}$  

---

**Q40.** The general solution of $\sin x = 0$ includes:

A. $x = \dfrac{\pi}{2} + n\pi$  
B. $x = 2n\pi$  
C. $x = n\pi + \dfrac{\pi}{4}$  
D. $x = n\pi$  

---

**Q41.** The cosine rule for a triangle is:

A. $c = a + b - \cos C$  
B. $c^2 = a^2 - b^2 + 2ab\cos C$  
C. $c^2 = a^2 + b^2 - 2ab\cos C$  
D. $c^2 = a^2 + b^2$  

---

**Q42.** The sine rule states:

A. $a + b = c$  
B. $\sin A = \sin B$ always  
C. $\dfrac{a}{\cos A} = \dfrac{b}{\cos B} = \dfrac{c}{\cos C}$  
D. $\dfrac{a}{\sin A} = \dfrac{b}{\sin B} = \dfrac{c}{\sin C}$  

---

**Q43.** The exact value of $\cos 45^\circ$ is:

A. 1  
B. $\dfrac{1}{\sqrt{2}}$  
C. $\dfrac{\sqrt{3}}{2}$  
D. $\dfrac{1}{2}$  

---

**Q44.** The angle of depression from a point equals:

A. half the elevation  
B. the angle of elevation from the other point  
C. twice the elevation  
D. 90° minus the elevation  

---

**Q45.** The exact value of $\sin 45^\circ$ is:

A. 1  
B. $\dfrac{\sqrt{3}}{2}$  
C. $\dfrac{1}{\sqrt{2}}$  
D. $\dfrac{1}{2}$  

---

**Q46.** The mean of 4, 8, 10 and 12 is:

A. 7.5  
B. 8  
C. 9  
D. 8.5  

---

**Q47.** The median of 3, 5, 7, 9, 11 is:

A. 6  
B. 9  
C. 7  
D. 5  

---

**Q48.** The mode of 2, 3, 3, 4, 4, 4, 5 is:

A. 2  
B. 5  
C. 3  
D. 4  

---

**Q49.** The range of 12, 18, 7, 20, 5 is:

A. 15  
B. 13  
C. 20  
D. 7  

---

**Q50.** The probability of rolling a 6 on a fair die is:

A. $\dfrac{1}{6}$  
B. $\dfrac{1}{3}$  
C. 1  
D. $\dfrac{1}{2}$  

---

**Q51.** The probability of getting a head on a fair coin is:

A. $\dfrac{1}{2}$  
B. 0  
C. 1  
D. $\dfrac{1}{4}$  

---

**Q52.** A bag has 5 red and 3 blue counters. Probability of drawing a blue is:

A. $\dfrac{3}{8}$  
B. $\dfrac{5}{8}$  
C. $\dfrac{1}{3}$  
D. $\dfrac{3}{5}$  

---

**Q53.** The interquartile range equals:

A. Q3 - Q1  
B. maximum - minimum  
C. Q3 - Q2  
D. Q2 - Q1  

---

**Q54.** The sum of all probabilities in a distribution must equal:

A. 1  
B. the number of outcomes  
C. 100  
D. 0  

---

**Q55.** If two events are mutually exclusive, P(A and B) is:

A. 1  
B. 0  
C. P(A) + P(B)  
D. P(A) × P(B)  

---

**Q56.** The mean of the first 5 positive integers is:

A. 2.5  
B. 3  
C. 5  
D. 4  

---

**Q57.** A coin is tossed twice. Probability of two heads is:

A. $\dfrac{1}{2}$  
B. $\dfrac{1}{3}$  
C. $\dfrac{1}{4}$  
D. 1  

---

**Q58.** The standard deviation measures:

A. central tendency  
B. the middle value  
C. the most frequent value  
D. spread about the mean  

---

**Q59.** The median of an even number of observations is:

A. the largest value  
B. the mode  
C. the mean of the two middle values  
D. the smallest value  

---

**Q60.** A survey of 200 students finds 120 prefer tea. The relative frequency is:

A. 0.4  
B. 1.67  
C. 80  
D. 0.6  

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
22. B
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
  where subject = 'Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, technical
**Subject:** Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The 4th term of an AP is 14 and the common difference is 3. Find the first term.

A. 5  
B. 8  
C. 11  
D. 2  

---

**Q2.** Find the sum to infinity of a GP with $a = 12$ and $r = \dfrac{1}{3}$.

A. 18  
B. 16  
C. 36  
D. 24  

---

**Q3.** Factorise $x^2 - 9$.

A. $(x-3)(x+3)$  
B. $(x-3)^2$  
C. $(x-9)(x+1)$  
D. $(x+9)(x-1)$  

---

**Q4.** Solve $3x - 7 = 11$.

A. 6  
B. 8  
C. 5  
D. 4  

---

**Q5.** Expand $(x+2)^2$.

A. $x^2 + 4x + 4$  
B. $x^2 + 4$  
C. $x^2 + 2x + 4$  
D. $x^2 + 4x + 2$  

---

**Q6.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 2 and 3  
B. 2 and -3  
C. -2 and -3  
D. 1 and 6  

---

**Q7.** Simplify $\dfrac{x^2 - 4}{x - 2}$ for $x \neq 2$.

A. $x - 2$  
B. $x + 2$  
C. $x^2 + 2$  
D. $x$  

---

**Q8.** Find the value of $\log_{10} 1000$.

A. 2  
B. 3  
C. 1  
D. 10  

---

**Q9.** If $f(x) = 2x + 3$, find $f^{-1}(x)$.

A. $\dfrac{x+3}{2}$  
B. $2x - 3$  
C. $\dfrac{x-3}{2}$  
D. $\dfrac{x}{2} + 3$  

---

**Q10.** The 10th term of the sequence $2, 5, 8, \ldots$ is:

A. 32  
B. 26  
C. 50  
D. 29  

---

**Q11.** Solve the simultaneous equations $x + y = 10$ and $x - y = 4$.

A. $x=6, y=4$  
B. $x=8, y=2$  
C. $x=7, y=3$  
D. $x=5, y=5$  

---

**Q12.** Evaluate $\dfrac{1}{2} + \dfrac{1}{3}$.

A. $\dfrac{2}{5}$  
B. $\dfrac{3}{5}$  
C. $\dfrac{1}{6}$  
D. $\dfrac{5}{6}$  

---

**Q13.** What is the value of $0.25$ as a fraction in lowest terms?

A. $\dfrac{2}{5}$  
B. $\dfrac{1}{4}$  
C. $\dfrac{1}{5}$  
D. $\dfrac{1}{8}$  

---

**Q14.** The discriminant of $x^2 + 4x + 5 = 0$ is:

A. 16  
B. -4  
C. 0  
D. 4  

---

**Q15.** Simplify $a^3 \cdot a^4$.

A. $a^{34}$  
B. $a^{12}$  
C. $a^7$  
D. $2a^7$  

---

**Q16.** The volume of a cylinder of radius 3 cm and height 10 cm is:

A. $13\pi$ cm³  
B. $30\pi$ cm³  
C. $300\pi$ cm³  
D. $90\pi$ cm³  

---

**Q17.** The interior angle of a regular octagon is:

A. 120°  
B. 144°  
C. 135°  
D. 140°  

---

**Q18.** The volume of a sphere of radius 3 cm is (in terms of $\pi$):

A. $9\pi$ cm³  
B. $108\pi$ cm³  
C. $27\pi$ cm³  
D. $36\pi$ cm³  

---

**Q19.** The area of a sector of radius 12 cm and angle 60° is:

A. $144\pi$ cm²  
B. $12\pi$ cm²  
C. $24\pi$ cm²  
D. $6\pi$ cm²  

---

**Q20.** A right triangle has legs 6 cm and 8 cm. Its hypotenuse is:

A. 7 cm  
B. 10 cm  
C. 14 cm  
D. 12 cm  

---

**Q21.** The perimeter of a rectangle of length 12 cm and width 5 cm is:

A. 28 cm  
B. 60 cm  
C. 34 cm  
D. 17 cm  

---

**Q22.** The distance between $(1,2)$ and $(4,6)$ is:

A. 25  
B. 7  
C. 12  
D. 5  

---

**Q23.** The gradient of the line through $(0,0)$ and $(3,5)$ is:

A. 3  
B. 5  
C. $\dfrac{5}{3}$  
D. $\dfrac{3}{5}$  

---

**Q24.** The angle in a semicircle is:

A. 180°  
B. 45°  
C. 60°  
D. 90°  

---

**Q25.** The volume of a cone of radius 3 cm and height 9 cm is (in terms of $\pi$):

A. $27\pi$ cm³  
B. $81\pi$ cm³  
C. $9\pi$ cm³  
D. $54\pi$ cm³  

---

**Q26.** The sum of the exterior angles of any convex polygon is:

A. 360°  
B. 180°  
C. 720°  
D. 540°  

---

**Q27.** The area of a triangle with base 10 cm and height 6 cm is:

A. 30 cm²  
B. 16 cm²  
C. 60 cm²  
D. 36 cm²  

---

**Q28.** The locus of points equidistant from a fixed point is:

A. a circle  
B. an ellipse  
C. a square  
D. a line  

---

**Q29.** The slant height of a cone is 5 cm and radius 3 cm; its vertical height is:

A. 4 cm  
B. 2 cm  
C. 6 cm  
D. 8 cm  

---

**Q30.** The area of a parallelogram of base 8 cm and perpendicular height 5 cm is:

A. 40 cm²  
B. 20 cm²  
C. 13 cm²  
D. 45 cm²  

---

**Q31.** In a right triangle, $\sin\theta = \dfrac{3}{5}$. Then $\cos\theta$ is:

A. $\dfrac{5}{3}$  
B. $\dfrac{4}{5}$  
C. $\dfrac{3}{4}$  
D. $\dfrac{1}{5}$  

---

**Q32.** The value of $\sin 90^\circ$ is:

A. 0  
B. 1  
C. -1  
D. $\dfrac{1}{2}$  

---

**Q33.** The period of $y = \sin x$ is:

A. $\pi$  
B. $\dfrac{\pi}{2}$  
C. $2\pi$  
D. $4\pi$  

---

**Q34.** Which identity is correct?

A. $\sin^2\theta - \cos^2\theta = 1$  
B. $1 + \tan^2\theta = \cos^2\theta$  
C. $\sin\theta = \cos\theta$ always  
D. $\sin^2\theta + \cos^2\theta = 1$  

---

**Q35.** In triangle ABC with sides a=7, b=8, c=9, the largest angle is opposite the longest side. The largest side is:

A. a  
B. cannot tell  
C. c  
D. b  

---

**Q36.** The exact value of $\tan 30^\circ$ is:

A. $\sqrt{3}$  
B. $\dfrac{\sqrt{3}}{2}$  
C. 1  
D. $\dfrac{1}{\sqrt{3}}$  

---

**Q37.** The general solution of $\sin x = 0$ includes:

A. $x = \dfrac{\pi}{2} + n\pi$  
B. $x = n\pi$  
C. $x = 2n\pi$  
D. $x = n\pi + \dfrac{\pi}{4}$  

---

**Q38.** The cosine rule for a triangle is:

A. $c = a + b - \cos C$  
B. $c^2 = a^2 + b^2 - 2ab\cos C$  
C. $c^2 = a^2 - b^2 + 2ab\cos C$  
D. $c^2 = a^2 + b^2$  

---

**Q39.** The sine rule states:

A. $a + b = c$  
B. $\dfrac{a}{\cos A} = \dfrac{b}{\cos B} = \dfrac{c}{\cos C}$  
C. $\dfrac{a}{\sin A} = \dfrac{b}{\sin B} = \dfrac{c}{\sin C}$  
D. $\sin A = \sin B$ always  

---

**Q40.** The exact value of $\cos 45^\circ$ is:

A. $\dfrac{1}{2}$  
B. $\dfrac{\sqrt{3}}{2}$  
C. 1  
D. $\dfrac{1}{\sqrt{2}}$  

---

**Q41.** The angle of depression from a point equals:

A. twice the elevation  
B. half the elevation  
C. the angle of elevation from the other point  
D. 90° minus the elevation  

---

**Q42.** The exact value of $\sin 45^\circ$ is:

A. $\dfrac{1}{2}$  
B. 1  
C. $\dfrac{\sqrt{3}}{2}$  
D. $\dfrac{1}{\sqrt{2}}$  

---

**Q43.** In a right triangle with angle θ, tan θ = opposite/adjacent. If opposite = 3 and adjacent = 4, tan θ is:

A. $\dfrac{3}{5}$  
B. $\dfrac{3}{4}$  
C. $\dfrac{4}{3}$  
D. $\dfrac{5}{4}$  

---

**Q44.** The value of $\sin 0^\circ$ is:

A. -1  
B. 0  
C. $\dfrac{1}{2}$  
D. 1  

---

**Q45.** The value of $\cos 0^\circ$ is:

A. -1  
B. 0  
C. 1  
D. $\dfrac{1}{2}$  

---

**Q46.** The range of 12, 18, 7, 20, 5 is:

A. 7  
B. 13  
C. 20  
D. 15  

---

**Q47.** The probability of rolling a 6 on a fair die is:

A. 1  
B. $\dfrac{1}{2}$  
C. $\dfrac{1}{6}$  
D. $\dfrac{1}{3}$  

---

**Q48.** The probability of getting a head on a fair coin is:

A. $\dfrac{1}{4}$  
B. 0  
C. 1  
D. $\dfrac{1}{2}$  

---

**Q49.** A bag has 5 red and 3 blue counters. Probability of drawing a blue is:

A. $\dfrac{3}{8}$  
B. $\dfrac{3}{5}$  
C. $\dfrac{5}{8}$  
D. $\dfrac{1}{3}$  

---

**Q50.** The interquartile range equals:

A. Q3 - Q1  
B. Q3 - Q2  
C. maximum - minimum  
D. Q2 - Q1  

---

**Q51.** The sum of all probabilities in a distribution must equal:

A. 1  
B. 100  
C. 0  
D. the number of outcomes  

---

**Q52.** If two events are mutually exclusive, P(A and B) is:

A. 0  
B. P(A) + P(B)  
C. P(A) × P(B)  
D. 1  

---

**Q53.** The mean of the first 5 positive integers is:

A. 3  
B. 5  
C. 2.5  
D. 4  

---

**Q54.** A coin is tossed twice. Probability of two heads is:

A. $\dfrac{1}{4}$  
B. 1  
C. $\dfrac{1}{3}$  
D. $\dfrac{1}{2}$  

---

**Q55.** The standard deviation measures:

A. central tendency  
B. spread about the mean  
C. the middle value  
D. the most frequent value  

---

**Q56.** The median of an even number of observations is:

A. the largest value  
B. the mean of the two middle values  
C. the mode  
D. the smallest value  

---

**Q57.** A survey of 200 students finds 120 prefer tea. The relative frequency is:

A. 0.4  
B. 80  
C. 0.6  
D. 1.67  

---

**Q58.** The mode of a grouped frequency distribution is found using:

A. the median class  
B. the mean class  
C. the class boundary  
D. the modal class  

---

**Q59.** If P(A) = 0.3 and A and B are independent with P(B) = 0.5, P(A and B) is:

A. 0.8  
B. 0.4  
C. 0.15  
D. 0.2  

---

**Q60.** The mean of grouped data is estimated using:

A. class boundaries  
B. the modal class  
C. class widths  
D. class midpoints  

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
19. C
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
  where subject = 'Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, technical
**Subject:** Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Solve $3x - 7 = 11$.

A. 6  
B. 4  
C. 8  
D. 5  

---

**Q2.** Expand $(x+2)^2$.

A. $x^2 + 4x + 4$  
B. $x^2 + 2x + 4$  
C. $x^2 + 4$  
D. $x^2 + 4x + 2$  

---

**Q3.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 2 and 3  
B. -2 and -3  
C. 1 and 6  
D. 2 and -3  

---

**Q4.** Simplify $\dfrac{x^2 - 4}{x - 2}$ for $x \neq 2$.

A. $x + 2$  
B. $x^2 + 2$  
C. $x$  
D. $x - 2$  

---

**Q5.** Find the value of $\log_{10} 1000$.

A. 3  
B. 1  
C. 2  
D. 10  

---

**Q6.** If $f(x) = 2x + 3$, find $f^{-1}(x)$.

A. $\dfrac{x-3}{2}$  
B. $\dfrac{x}{2} + 3$  
C. $2x - 3$  
D. $\dfrac{x+3}{2}$  

---

**Q7.** The 10th term of the sequence $2, 5, 8, \ldots$ is:

A. 32  
B. 29  
C. 26  
D. 50  

---

**Q8.** Solve the simultaneous equations $x + y = 10$ and $x - y = 4$.

A. $x=6, y=4$  
B. $x=7, y=3$  
C. $x=8, y=2$  
D. $x=5, y=5$  

---

**Q9.** Evaluate $\dfrac{1}{2} + \dfrac{1}{3}$.

A. $\dfrac{2}{5}$  
B. $\dfrac{1}{6}$  
C. $\dfrac{5}{6}$  
D. $\dfrac{3}{5}$  

---

**Q10.** What is the value of $0.25$ as a fraction in lowest terms?

A. $\dfrac{1}{5}$  
B. $\dfrac{2}{5}$  
C. $\dfrac{1}{8}$  
D. $\dfrac{1}{4}$  

---

**Q11.** The discriminant of $x^2 + 4x + 5 = 0$ is:

A. 4  
B. 0  
C. -4  
D. 16  

---

**Q12.** Simplify $a^3 \cdot a^4$.

A. $a^{12}$  
B. $2a^7$  
C. $a^{34}$  
D. $a^7$  

---

**Q13.** Make $x$ the subject of $y = 3x - 5$.

A. $x = 3y - 5$  
B. $x = \dfrac{y+5}{3}$  
C. $x = \dfrac{y-5}{3}$  
D. $x = \dfrac{y}{3} + 5$  

---

**Q14.** Find the coefficient of $x^2$ in $(1 + x)^4$.

A. 1  
B. 6  
C. 12  
D. 4  

---

**Q15.** Solve $2^{x} = 32$.

A. 4  
B. 6  
C. 5  
D. 16  

---

**Q16.** The area of a sector of radius 12 cm and angle 60° is:

A. $6\pi$ cm²  
B. $24\pi$ cm²  
C. $144\pi$ cm²  
D. $12\pi$ cm²  

---

**Q17.** A right triangle has legs 6 cm and 8 cm. Its hypotenuse is:

A. 14 cm  
B. 7 cm  
C. 10 cm  
D. 12 cm  

---

**Q18.** The perimeter of a rectangle of length 12 cm and width 5 cm is:

A. 17 cm  
B. 28 cm  
C. 60 cm  
D. 34 cm  

---

**Q19.** The distance between $(1,2)$ and $(4,6)$ is:

A. 25  
B. 5  
C. 7  
D. 12  

---

**Q20.** The gradient of the line through $(0,0)$ and $(3,5)$ is:

A. 3  
B. $\dfrac{5}{3}$  
C. 5  
D. $\dfrac{3}{5}$  

---

**Q21.** The angle in a semicircle is:

A. 180°  
B. 60°  
C. 90°  
D. 45°  

---

**Q22.** The volume of a cone of radius 3 cm and height 9 cm is (in terms of $\pi$):

A. $54\pi$ cm³  
B. $81\pi$ cm³  
C. $9\pi$ cm³  
D. $27\pi$ cm³  

---

**Q23.** The sum of the exterior angles of any convex polygon is:

A. 720°  
B. 540°  
C. 360°  
D. 180°  

---

**Q24.** The area of a triangle with base 10 cm and height 6 cm is:

A. 36 cm²  
B. 16 cm²  
C. 60 cm²  
D. 30 cm²  

---

**Q25.** The locus of points equidistant from a fixed point is:

A. a circle  
B. a line  
C. an ellipse  
D. a square  

---

**Q26.** The slant height of a cone is 5 cm and radius 3 cm; its vertical height is:

A. 4 cm  
B. 6 cm  
C. 2 cm  
D. 8 cm  

---

**Q27.** The area of a parallelogram of base 8 cm and perpendicular height 5 cm is:

A. 40 cm²  
B. 13 cm²  
C. 45 cm²  
D. 20 cm²  

---

**Q28.** The volume of a rectangular prism 4 cm × 3 cm × 5 cm is:

A. 60 cm³  
B. 47 cm³  
C. 120 cm³  
D. 35 cm³  

---

**Q29.** The complement of an angle of 35° is:

A. 55°  
B. 125°  
C. 145°  
D. 65°  

---

**Q30.** The sum of the interior angles of a hexagon is:

A. 720°  
B. 1080°  
C. 900°  
D. 540°  

---

**Q31.** Which identity is correct?

A. $\sin^2\theta - \cos^2\theta = 1$  
B. $\sin^2\theta + \cos^2\theta = 1$  
C. $1 + \tan^2\theta = \cos^2\theta$  
D. $\sin\theta = \cos\theta$ always  

---

**Q32.** In triangle ABC with sides a=7, b=8, c=9, the largest angle is opposite the longest side. The largest side is:

A. a  
B. c  
C. cannot tell  
D. b  

---

**Q33.** The exact value of $\tan 30^\circ$ is:

A. $\sqrt{3}$  
B. 1  
C. $\dfrac{1}{\sqrt{3}}$  
D. $\dfrac{\sqrt{3}}{2}$  

---

**Q34.** The general solution of $\sin x = 0$ includes:

A. $x = 2n\pi$  
B. $x = \dfrac{\pi}{2} + n\pi$  
C. $x = n\pi + \dfrac{\pi}{4}$  
D. $x = n\pi$  

---

**Q35.** The cosine rule for a triangle is:

A. $c^2 = a^2 + b^2$  
B. $c^2 = a^2 - b^2 + 2ab\cos C$  
C. $c^2 = a^2 + b^2 - 2ab\cos C$  
D. $c = a + b - \cos C$  

---

**Q36.** The sine rule states:

A. $\dfrac{a}{\cos A} = \dfrac{b}{\cos B} = \dfrac{c}{\cos C}$  
B. $\sin A = \sin B$ always  
C. $a + b = c$  
D. $\dfrac{a}{\sin A} = \dfrac{b}{\sin B} = \dfrac{c}{\sin C}$  

---

**Q37.** The exact value of $\cos 45^\circ$ is:

A. $\dfrac{1}{2}$  
B. $\dfrac{1}{\sqrt{2}}$  
C. $\dfrac{\sqrt{3}}{2}$  
D. 1  

---

**Q38.** The angle of depression from a point equals:

A. twice the elevation  
B. the angle of elevation from the other point  
C. half the elevation  
D. 90° minus the elevation  

---

**Q39.** The exact value of $\sin 45^\circ$ is:

A. $\dfrac{1}{2}$  
B. $\dfrac{\sqrt{3}}{2}$  
C. $\dfrac{1}{\sqrt{2}}$  
D. 1  

---

**Q40.** In a right triangle with angle θ, tan θ = opposite/adjacent. If opposite = 3 and adjacent = 4, tan θ is:

A. $\dfrac{5}{4}$  
B. $\dfrac{4}{3}$  
C. $\dfrac{3}{5}$  
D. $\dfrac{3}{4}$  

---

**Q41.** The value of $\sin 0^\circ$ is:

A. $\dfrac{1}{2}$  
B. -1  
C. 0  
D. 1  

---

**Q42.** The value of $\cos 0^\circ$ is:

A. $\dfrac{1}{2}$  
B. -1  
C. 0  
D. 1  

---

**Q43.** The supplementary angle of 120° is:

A. 150°  
B. 60°  
C. 30°  
D. 240°  

---

**Q44.** The exact value of $\sin 150^\circ$ is:

A. 1  
B. $\dfrac{1}{2}$  
C. -$\dfrac{1}{2}$  
D. $\dfrac{\sqrt{3}}{2}$  

---

**Q45.** The exact value of $\sin 30^\circ$ is:

A. 1  
B. $\dfrac{\sqrt{3}}{2}$  
C. $\dfrac{1}{2}$  
D. $\dfrac{1}{\sqrt{2}}$  

---

**Q46.** A bag has 5 red and 3 blue counters. Probability of drawing a blue is:

A. $\dfrac{1}{3}$  
B. $\dfrac{3}{5}$  
C. $\dfrac{5}{8}$  
D. $\dfrac{3}{8}$  

---

**Q47.** The interquartile range equals:

A. maximum - minimum  
B. Q2 - Q1  
C. Q3 - Q1  
D. Q3 - Q2  

---

**Q48.** The sum of all probabilities in a distribution must equal:

A. the number of outcomes  
B. 100  
C. 0  
D. 1  

---

**Q49.** If two events are mutually exclusive, P(A and B) is:

A. 0  
B. 1  
C. P(A) + P(B)  
D. P(A) × P(B)  

---

**Q50.** The mean of the first 5 positive integers is:

A. 3  
B. 2.5  
C. 5  
D. 4  

---

**Q51.** A coin is tossed twice. Probability of two heads is:

A. $\dfrac{1}{4}$  
B. $\dfrac{1}{3}$  
C. $\dfrac{1}{2}$  
D. 1  

---

**Q52.** The standard deviation measures:

A. spread about the mean  
B. the middle value  
C. the most frequent value  
D. central tendency  

---

**Q53.** The median of an even number of observations is:

A. the mean of the two middle values  
B. the mode  
C. the largest value  
D. the smallest value  

---

**Q54.** A survey of 200 students finds 120 prefer tea. The relative frequency is:

A. 0.6  
B. 1.67  
C. 80  
D. 0.4  

---

**Q55.** The mode of a grouped frequency distribution is found using:

A. the median class  
B. the modal class  
C. the mean class  
D. the class boundary  

---

**Q56.** If P(A) = 0.3 and A and B are independent with P(B) = 0.5, P(A and B) is:

A. 0.8  
B. 0.15  
C. 0.4  
D. 0.2  

---

**Q57.** The mean of grouped data is estimated using:

A. class boundaries  
B. class widths  
C. class midpoints  
D. the modal class  

---

**Q58.** The complement of an event with probability 0.25 has probability:

A. 0.25  
B. 1.25  
C. 0.5  
D. 0.75  

---

**Q59.** A cumulative frequency graph is used to estimate:

A. the mode  
B. the range  
C. the median and quartiles  
D. the standard deviation  

---

**Q60.** The mean of 4, 8, 10 and 12 is:

A. 8  
B. 7.5  
C. 9  
D. 8.5  

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
16. B
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
  where subject = 'Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: NUMBER, ALGEBRA AND COMMERCIAL ARITHMETIC

**Q1.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(8 marks)*

---

**Q2.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(3 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(4 marks)*

---

**Q3.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(8 marks)*

---

**Q4.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(2 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(5 marks)*

---

**Q5.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(3 marks)*

(b) Find the number who study neither subject. *(4 marks)*

---

## SECTION 2: GEOMETRY, SETS AND STATISTICS

**Q6.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(6 marks)*

---

**Q7.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(3 marks)*

(b) Find the area of the sector. *(3 marks)*

---

**Q8.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(5 marks)*

(b) Find the range and interquartile range. *(4 marks)*

---

**Q9.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(5 marks)*

---

**Q10.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

![Triangle ABC](/paper-diagrams/math-triangle.svg)

(a) Find the height reached on the wall. *(3 marks)*

(b) Find the angle the ladder makes with the ground. *(3 marks)*

---

## SECTION 3: TRIGONOMETRY, MENSURATION AND EQUATIONS

**Q11.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(9 marks)*

---

**Q12.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(4 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(5 marks)*

---

**Q13.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(9 marks)*

---

**Q14.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(3 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(6 marks)*

---

**Q15.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(4 marks)*

(b) Find the number who study neither subject. *(5 marks)*

---

## SECTION 4: ALGEBRAIC FRACTIONS AND COORDINATE GEOMETRY

**Q16.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(7 marks)*

---

**Q17.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(4 marks)*

(b) Find the area of the sector. *(4 marks)*

---

**Q18.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(6 marks)*

(b) Find the range and interquartile range. *(5 marks)*

---

**Q19.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(6 marks)*

---

**Q20.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(4 marks)*

(b) Find the angle the ladder makes with the ground. *(4 marks)*

---

## SECTION 5: PROBABILITY, VECTORS AND TRANSFORMATIONS

**Q21.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(10 marks)*

---

**Q22.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(5 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(6 marks)*

---

**Q23.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(10 marks)*

---

**Q24.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(4 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(7 marks)*

---

**Q25.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(5 marks)*

(b) Find the number who study neither subject. *(6 marks)*

---

## SECTION 6: NUMBER, ALGEBRA AND COMMERCIAL ARITHMETIC

**Q26.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(8 marks)*

---

**Q27.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(5 marks)*

(b) Find the area of the sector. *(5 marks)*

---

**Q28.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(7 marks)*

(b) Find the range and interquartile range. *(6 marks)*

---

**Q29.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(7 marks)*

---

**Q30.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(5 marks)*

(b) Find the angle the ladder makes with the ground. *(5 marks)*

---

## SECTION 7: GEOMETRY, SETS AND STATISTICS

**Q31.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(11 marks)*

---

**Q32.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(6 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(7 marks)*

---

**Q33.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(11 marks)*

---

**Q34.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(5 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(8 marks)*

---

**Q35.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(6 marks)*

(b) Find the number who study neither subject. *(7 marks)*

---

## SECTION 8: TRIGONOMETRY, MENSURATION AND EQUATIONS

**Q36.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(9 marks)*

---

**Q37.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(6 marks)*

(b) Find the area of the sector. *(6 marks)*

---

**Q38.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(8 marks)*

(b) Find the range and interquartile range. *(7 marks)*

---

**Q39.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(8 marks)*

---

**Q40.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(6 marks)*

(b) Find the angle the ladder makes with the ground. *(6 marks)*

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
  where subject = 'Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: NUMBER, ALGEBRA AND COMMERCIAL ARITHMETIC

**Q1.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(8 marks)*

---

**Q2.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(3 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(4 marks)*

---

**Q3.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(8 marks)*

---

**Q4.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(2 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(5 marks)*

---

**Q5.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(3 marks)*

(b) Find the number who study neither subject. *(4 marks)*

---

## SECTION 2: GEOMETRY, SETS AND STATISTICS

**Q6.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(6 marks)*

---

**Q7.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(3 marks)*

(b) Find the area of the sector. *(3 marks)*

---

**Q8.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

![Graph sketch axes](/paper-diagrams/math-parabola.svg)

(a) Find the mean, median, and mode. *(5 marks)*

(b) Find the range and interquartile range. *(4 marks)*

---

**Q9.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(5 marks)*

---

**Q10.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(3 marks)*

(b) Find the angle the ladder makes with the ground. *(3 marks)*

---

## SECTION 3: TRIGONOMETRY, MENSURATION AND EQUATIONS

**Q11.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(9 marks)*

---

**Q12.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(4 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(5 marks)*

---

**Q13.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(9 marks)*

---

**Q14.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(3 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(6 marks)*

---

**Q15.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(4 marks)*

(b) Find the number who study neither subject. *(5 marks)*

---

## SECTION 4: ALGEBRAIC FRACTIONS AND COORDINATE GEOMETRY

**Q16.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(7 marks)*

---

**Q17.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(4 marks)*

(b) Find the area of the sector. *(4 marks)*

---

**Q18.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(6 marks)*

(b) Find the range and interquartile range. *(5 marks)*

---

**Q19.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(6 marks)*

---

**Q20.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(4 marks)*

(b) Find the angle the ladder makes with the ground. *(4 marks)*

---

## SECTION 5: PROBABILITY, VECTORS AND TRANSFORMATIONS

**Q21.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(10 marks)*

---

**Q22.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(5 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(6 marks)*

---

**Q23.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(10 marks)*

---

**Q24.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(4 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(7 marks)*

---

**Q25.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(5 marks)*

(b) Find the number who study neither subject. *(6 marks)*

---

## SECTION 6: NUMBER, ALGEBRA AND COMMERCIAL ARITHMETIC

**Q26.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(8 marks)*

---

**Q27.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(5 marks)*

(b) Find the area of the sector. *(5 marks)*

---

**Q28.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(7 marks)*

(b) Find the range and interquartile range. *(6 marks)*

---

**Q29.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(7 marks)*

---

**Q30.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(5 marks)*

(b) Find the angle the ladder makes with the ground. *(5 marks)*

---

## SECTION 7: GEOMETRY, SETS AND STATISTICS

**Q31.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(11 marks)*

---

**Q32.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(6 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(7 marks)*

---

**Q33.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(11 marks)*

---

**Q34.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(5 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(8 marks)*

---

**Q35.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(6 marks)*

(b) Find the number who study neither subject. *(7 marks)*

---

## SECTION 8: TRIGONOMETRY, MENSURATION AND EQUATIONS

**Q36.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(9 marks)*

---

**Q37.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(6 marks)*

(b) Find the area of the sector. *(6 marks)*

---

**Q38.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(8 marks)*

(b) Find the range and interquartile range. *(7 marks)*

---

**Q39.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(8 marks)*

---

**Q40.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(6 marks)*

(b) Find the angle the ladder makes with the ground. *(6 marks)*

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
  where subject = 'Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: NUMBER, ALGEBRA AND COMMERCIAL ARITHMETIC

**Q1.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(8 marks)*

---

**Q2.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(3 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(4 marks)*

---

**Q3.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(8 marks)*

---

**Q4.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(2 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(5 marks)*

---

**Q5.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(3 marks)*

(b) Find the number who study neither subject. *(4 marks)*

---

## SECTION 2: GEOMETRY, SETS AND STATISTICS

**Q6.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(6 marks)*

---

**Q7.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(3 marks)*

(b) Find the area of the sector. *(3 marks)*

---

**Q8.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(5 marks)*

(b) Find the range and interquartile range. *(4 marks)*

---

**Q9.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(5 marks)*

---

**Q10.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(3 marks)*

(b) Find the angle the ladder makes with the ground. *(3 marks)*

---

## SECTION 3: TRIGONOMETRY, MENSURATION AND EQUATIONS

**Q11.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(9 marks)*

---

**Q12.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(4 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(5 marks)*

---

**Q13.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(9 marks)*

---

**Q14.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

![Argand diagram](/paper-diagrams/math-argand.svg)

(a) Find the gradient of $AB$. *(3 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(6 marks)*

---

**Q15.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(4 marks)*

(b) Find the number who study neither subject. *(5 marks)*

---

## SECTION 4: ALGEBRAIC FRACTIONS AND COORDINATE GEOMETRY

**Q16.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(7 marks)*

---

**Q17.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(4 marks)*

(b) Find the area of the sector. *(4 marks)*

---

**Q18.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(6 marks)*

(b) Find the range and interquartile range. *(5 marks)*

---

**Q19.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(6 marks)*

---

**Q20.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(4 marks)*

(b) Find the angle the ladder makes with the ground. *(4 marks)*

---

## SECTION 5: PROBABILITY, VECTORS AND TRANSFORMATIONS

**Q21.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(10 marks)*

---

**Q22.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(5 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(6 marks)*

---

**Q23.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(10 marks)*

---

**Q24.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(4 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(7 marks)*

---

**Q25.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(5 marks)*

(b) Find the number who study neither subject. *(6 marks)*

---

## SECTION 6: NUMBER, ALGEBRA AND COMMERCIAL ARITHMETIC

**Q26.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(8 marks)*

---

**Q27.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(5 marks)*

(b) Find the area of the sector. *(5 marks)*

---

**Q28.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(7 marks)*

(b) Find the range and interquartile range. *(6 marks)*

---

**Q29.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(7 marks)*

---

**Q30.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(5 marks)*

(b) Find the angle the ladder makes with the ground. *(5 marks)*

---

## SECTION 7: GEOMETRY, SETS AND STATISTICS

**Q31.** Solve $3x^2 - 11x - 4 = 0$ and hence find the values of $x$ for which $3x^2 - 11x - 4 > 0$. *(11 marks)*

---

**Q32.** A trader bought an article for 48,000 FCFA and sold it at a profit of 15%.

(a) Find the selling price. *(6 marks)*

(b) If the selling price includes VAT at 19.25%, find the price before VAT. *(7 marks)*

---

**Q33.** Simplify $\dfrac{2x^2-5x-3}{x^2-9}\div\dfrac{x+1}{x-3}$, stating all excluded values of $x$. *(11 marks)*

---

**Q34.** The points $A(2,3)$, $B(6,7)$, and $C(k,1)$ are given.

(a) Find the gradient of $AB$. *(5 marks)*

(b) Find $k$ if $AB$ is perpendicular to $AC$. *(8 marks)*

---

**Q35.** In a class of 40 students, 24 study Mathematics, 18 study Physics, and 10 study both subjects.

(a) Draw a Venn diagram. *(6 marks)*

(b) Find the number who study neither subject. *(7 marks)*

---

## SECTION 8: TRIGONOMETRY, MENSURATION AND EQUATIONS

**Q36.** Solve the simultaneous equations $2x+3y=17$ and $5x-y=9$. *(9 marks)*

---

**Q37.** A sector of a circle has radius 14 cm and angle $135^\circ$.

(a) Find the length of the arc. *(6 marks)*

(b) Find the area of the sector. *(6 marks)*

---

**Q38.** The table shows marks: $10, 12, 15, 15, 18, 20, 22, 25, 25, 28$.

(a) Find the mean, median, and mode. *(8 marks)*

(b) Find the range and interquartile range. *(7 marks)*

---

**Q39.** Solve $\sin x=0.5$ for $0^\circ\leq x\leq 360^\circ$. *(8 marks)*

---

**Q40.** A ladder 10 m long leans against a vertical wall. Its foot is 6 m from the wall.

(a) Find the height reached on the wall. *(6 marks)*

(b) Find the angle the ladder makes with the ground. *(6 marks)*

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
  where subject = 'Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4

## Structural Question Bank — Number and algebra

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: NUMBER AND ALGEBRA

**Q1.** Solve $\log_2(x+3) + \log_2(x-1) = 5$. Hence state the restriction on $x$. *(8 marks)*

---

**Q2.** Given $8^{2x-1} = 4^{x+3}$, find the exact value of $x$. *(6 marks)*

---

**Q3.** Simplify $\dfrac{\sqrt{50} - \sqrt{18}}{\sqrt{2}}$ leaving your answer in the form $a + b\sqrt{c}$. *(6 marks)*

---

**Q4.** The 3rd term of an arithmetic progression is 12 and the sum of the first 12 terms is 186.

(a) Find the first term and common difference. *(5 marks)*

(b) Find the least value of $n$ for which $T_n > 100$. *(3 marks)*

---

**Q5.** A geometric progression has sum to infinity 96 and common ratio $\dfrac{3}{4}$.

(a) Find the first term. *(3 marks)*

(b) Find the least number of terms for which the sum exceeds 90. *(5 marks)*

---

**Q6.** Prove that for all real $x > 0$, $x + \dfrac{1}{x} \geq 2$. State when equality holds. *(6 marks)*

---

**Q7.** Solve the inequality $\dfrac{2x+5}{x-3} \geq 1$ and represent the solution on a number line. *(7 marks)*

---

**Q8.** When $P(x) = 2x^3 - 5x^2 + ax - 6$ is divided by $(x-2)$ the remainder is 3. Find $a$ and hence factorise $P(x)$ completely. *(8 marks)*

---

**Q9.** Expand $(1 - 2x)^4$ in ascending powers of $x$, and hence find the coefficient of $x^3$. *(5 marks)*

---

**Q10.** Solve simultaneously $y = x^2 - 4x + 3$ and $y = 2x - 6$. *(7 marks)*

---

**Q11.** Express $\dfrac{3x+11}{x^2+x-6}$ in partial fractions. *(6 marks)*

---

**Q12.** Given that $\log_{10} 2 = 0.3010$ and $\log_{10} 3 = 0.4771$, evaluate $\log_{10} 24$ without a table. *(4 marks)*

---

**Q13.** The sum of an infinite geometric series is 45 and the sum of the first two terms is 27. Find the common ratio. *(6 marks)*

---

**Q14.** Make $t$ the subject of $v = u + at$ and $s = ut + \dfrac{1}{2}at^2$, then eliminate $t$ to express $v^2$ in terms of $u$, $a$ and $s$. *(7 marks)*

---

**Q15.** Solve $|3x - 4| \leq 11$ and give the solution in interval form. *(5 marks)*

---

**Q16.** If $\alpha$ and $\beta$ are the roots of $2x^2 - 6x + 3 = 0$, find the value of $\alpha^2 + \beta^2$ and $\dfrac{1}{\alpha} + \dfrac{1}{\beta}$. *(6 marks)*

---

**Q17.** Simplify $\dfrac{a^2 - b^2}{a - b} \div \dfrac{a+b}{a^2+ab+b^2}$ where the expression is defined. *(5 marks)*

---

**Q18.** A contractor prices a job with a fixed cost plus a variable rate. 3 jobs cost 45,000 FCFA and 7 jobs cost 85,000 FCFA.

(a) Find the fixed cost and variable rate. *(5 marks)*

(b) Predict the cost of 10 jobs and comment on the model. *(3 marks)*

---

**Q19.** Find the sum of the first 40 terms of the series $3 + 7 + 11 + \cdots$. *(4 marks)*

---

**Q20.** Prove algebraically that the sum of any three consecutive integers is divisible by 3. *(6 marks)*
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
  where subject = 'Mathematics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Mathematics',
  'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5

## Structural Question Bank — Geometry and measurement

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, technical
**Subject:** Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: GEOMETRY AND MEASUREMENT

**Q1.** In a circle of radius 7 cm, a chord subtends an angle of $140^\circ$ at the centre.

(a) Find the length of the chord. *(4 marks)*

(b) Find the area of the minor segment. *(4 marks)*

---

**Q2.** The interior angle of a regular polygon is $156^\circ$. Find the number of sides and the name of the polygon. *(5 marks)*

---

**Q3.** A cone has slant height 13 cm and base radius 5 cm.

(a) Find the vertical height. *(3 marks)*

(b) Find the curved surface area. *(4 marks)*

---

**Q4.** Two ships leave a port at the same time. Ship A sails on a bearing of $070^\circ$ for 60 km and ship B on a bearing of $150^\circ$ for 80 km. Find the distance between them. *(6 marks)*

---

**Q5.** A sector of radius 10 cm and angle $72^\circ$ is folded into a cone.

(a) Find the arc length. *(3 marks)*

(b) Find the radius of the cone''s base. *(3 marks)*

(c) Find the volume of the cone. *(4 marks)*

---

**Q6.** In the diagram, $AB$ is a diameter of a circle centre $O$. $C$ is a point on the circumference with $\angle BAC = 35^\circ$. Find $\angle OBC$ and justify your answer using a circle theorem. *(5 marks)*

---

**Q7.** Find the volume of a sphere of radius 9 cm, giving your answer in terms of $\pi$. *(4 marks)*

---

**Q8.** A road of gradient $1$ in $12$ rises over a horizontal distance of 240 m. Find the vertical rise and the length of the road. *(5 marks)*

---

**Q9.** The coordinates of the vertices of a triangle are $A(1,2)$, $B(6,2)$ and $C(4,7)$.

(a) Find the area of the triangle. *(4 marks)*

(b) Find the equation of the altitude from $C$ to $AB$. *(4 marks)*

---

**Q10.** A cylindrical tank of radius 1.4 m and height 3 m is filled with water.

(a) Find the volume of water in the tank. *(3 marks)*

(b) If water leaves at 5 litres per second, how long does it take to empty? *(4 marks)*

---

**Q11.** Describe and construct the locus of points equidistant from two intersecting lines. State the number of points in the locus. *(5 marks)*

---

**Q12.** A pyramid has a square base of side 6 cm and slant height 10 cm. Find its total surface area. *(5 marks)*

---

**Q13.** Two parallel lines are cut by a transversal. One interior angle on the same side is $(3x+15)^\circ$ and the other is $(2x+30)^\circ$. Find $x$ and both angles. *(5 marks)*

---

**Q14.** A sector of a circle of radius 12 cm has area $48\pi$ cm$^2$. Find the angle of the sector in radians. *(5 marks)*

---

**Q15.** An arc of length 20 cm subtends an angle of $1.6$ radians at the centre of a circle. Find the radius and the area of the sector. *(5 marks)*

---

**Q16.** A right prism has a triangular cross-section with sides 5 cm, 12 cm and 13 cm, and length 20 cm. Find its volume and total surface area. *(6 marks)*

---

**Q17.** Using a scale of 1 cm to 5 m, a rectangular field measures 6.4 cm by 3.7 cm on a plan.

(a) Find the actual dimensions. *(3 marks)*

(b) Find the actual area in hectares. *(4 marks)*

---

**Q18.** The angle of elevation of the top of a tower from a point A is $30^\circ$. From a point B, 40 m further away on the same horizontal line, the angle of elevation is $15^\circ$. Find the height of the tower. *(7 marks)*

---

**Q19.** Prove that the angle in a semicircle is a right angle. *(5 marks)*

---

**Q20.** A capsule is formed by a cylinder of radius 2 cm and height 6 cm with a hemisphere at each end. Find the total volume and surface area of the capsule. *(6 marks)*
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