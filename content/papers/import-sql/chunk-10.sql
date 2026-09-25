begin;

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
  where title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 7

## Structural Question Bank — Statistics and probability

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

## SECTION 1: STATISTICS AND PROBABILITY

**Q1.** The marks of 50 students are grouped as: $0-9:3$, $10-19:7$, $20-29:12$, $30-39:15$, $40-49:9$, $50-59:4$.

(a) Estimate the mean mark. *(4 marks)*

(b) Estimate the median and comment on the skewness. *(4 marks)*

---

**Q2.** Two bags contain red and blue counters. Bag 1 has 3 red and 5 blue; bag 2 has 4 red and 1 blue. A bag is chosen at random and a counter drawn. Find the probability the counter is red. *(6 marks)*

---

**Q3.** The mean of 8 numbers is 24. If one number, 31, is removed, find the new mean. *(3 marks)*

---

**Q4.** A die and a coin are thrown together. Find the probability of getting a six and a head. *(3 marks)*

---

**Q5.** The quartiles of a data set are $Q1 = 12$, $Q2 = 18$, $Q3 = 27$.

(a) Find the interquartile range. *(2 marks)*

(b) Show that an observation of 52 is an outlier by the $1.5\times IQR$ rule. *(3 marks)*

---

**Q6.** In a class of 30 students, 18 play football, 14 play basketball and 6 play both.

(a) Draw a Venn diagram. *(3 marks)*

(b) Find the probability that a randomly chosen student plays neither. *(3 marks)*

---

**Q7.** The table gives the frequency of books read per month: 0 books (5 students), 1 book (9), 2 books (12), 3 books (6), 4 books (3). Find the mean and mode. *(5 marks)*

---

**Q8.** A bag contains 5 green, 3 yellow and 2 red sweets. Three sweets are drawn without replacement. Find the probability all three are green. *(6 marks)*

---

**Q9.** The mean and standard deviation of a data set are 50 and 8. Find the coefficient of variation and interpret it. *(4 marks)*

---

**Q10.** Two cards are drawn from a standard pack without replacement. Find the probability both are hearts. *(4 marks)*

---

**Q11.** A cumulative frequency curve gives $Q1 = 22$, median = 31 and $Q3 = 44$. Find the interquartile range and the semi-interquartile range. *(4 marks)*

---

**Q12.** The probability that a student passes a test is 0.7. Four students are chosen. Find the probability exactly two pass. *(6 marks)*

---

**Q13.** A sample of 40 light bulbs has mean life 1200 h and standard deviation 60 h. Construct a 95% confidence interval for the mean. *(5 marks)*

---

**Q14.** The scatter diagram of height (cm) against mass (kg) for 10 children shows a strong positive correlation. Explain what this does and does not imply. *(4 marks)*

---

**Q15.** A spinner has 4 equal sections numbered 1 to 4. It is spun twice. Find the probability the sum is 5. *(4 marks)*

---

**Q16.** The marks below 40 are 12 students and above or equal to 40 are 28 students. Find the probability that a randomly chosen student scored at least 40, and state the complement. *(3 marks)*

---

**Q17.** A factory produces 1 in 20 defective items. Two items are picked at random. Find the probability at least one is defective. *(5 marks)*

---

**Q18.** The table shows the heights (cm) and masses (kg) of 8 students: height $150, 155, 160, 165, 170, 175, 180, 185$; mass $48, 52, 55, 58, 62, 66, 70, 74$.

(a) Plot a scatter diagram of mass against height. *(3 marks)*

(b) Describe the correlation between height and mass. *(2 marks)*

(c) Estimate the mass of a student of height 172 cm using a line of best fit. *(3 marks)*

---

**Q19.** Events $A$ and $B$ are independent with $P(A) = 0.4$ and $P(B) = 0.5$. Find $P(A \cup B)$. *(4 marks)*

---

**Q20.** A survey records the number of siblings of 20 students: mean 2.4, mode 2, median 2. Discuss which measure best represents a typical student and why. *(5 marks)*
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
  where title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 8

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

**Q1.** Solve $\log_2(x+3) + \log_2(x-1) = 5$. Hence state the restriction on $x$. *(9 marks)*

---

**Q2.** Given $8^{2x-1} = 4^{x+3}$, find the exact value of $x$. *(7 marks)*

---

**Q3.** Simplify $\dfrac{\sqrt{50} - \sqrt{18}}{\sqrt{2}}$ leaving your answer in the form $a + b\sqrt{c}$. *(7 marks)*

---

**Q4.** The 3rd term of an arithmetic progression is 12 and the sum of the first 12 terms is 186.

(a) Find the first term and common difference. *(6 marks)*

(b) Find the least value of $n$ for which $T_n > 100$. *(4 marks)*

---

**Q5.** A geometric progression has sum to infinity 96 and common ratio $\dfrac{3}{4}$.

(a) Find the first term. *(4 marks)*

(b) Find the least number of terms for which the sum exceeds 90. *(6 marks)*

---

**Q6.** Prove that for all real $x > 0$, $x + \dfrac{1}{x} \geq 2$. State when equality holds. *(7 marks)*

---

**Q7.** Solve the inequality $\dfrac{2x+5}{x-3} \geq 1$ and represent the solution on a number line. *(8 marks)*

---

**Q8.** When $P(x) = 2x^3 - 5x^2 + ax - 6$ is divided by $(x-2)$ the remainder is 3. Find $a$ and hence factorise $P(x)$ completely. *(9 marks)*

---

**Q9.** Expand $(1 - 2x)^4$ in ascending powers of $x$, and hence find the coefficient of $x^3$. *(6 marks)*

---

**Q10.** Solve simultaneously $y = x^2 - 4x + 3$ and $y = 2x - 6$. *(8 marks)*

---

**Q11.** Express $\dfrac{3x+11}{x^2+x-6}$ in partial fractions. *(7 marks)*

---

**Q12.** Given that $\log_{10} 2 = 0.3010$ and $\log_{10} 3 = 0.4771$, evaluate $\log_{10} 24$ without a table. *(5 marks)*

---

**Q13.** The sum of an infinite geometric series is 45 and the sum of the first two terms is 27. Find the common ratio. *(7 marks)*

---

**Q14.** Make $t$ the subject of $v = u + at$ and $s = ut + \dfrac{1}{2}at^2$, then eliminate $t$ to express $v^2$ in terms of $u$, $a$ and $s$. *(8 marks)*

---

**Q15.** Solve $|3x - 4| \leq 11$ and give the solution in interval form. *(6 marks)*

---

**Q16.** If $\alpha$ and $\beta$ are the roots of $2x^2 - 6x + 3 = 0$, find the value of $\alpha^2 + \beta^2$ and $\dfrac{1}{\alpha} + \dfrac{1}{\beta}$. *(7 marks)*

---

**Q17.** Simplify $\dfrac{a^2 - b^2}{a - b} \div \dfrac{a+b}{a^2+ab+b^2}$ where the expression is defined. *(6 marks)*

---

**Q18.** A contractor prices a job with a fixed cost plus a variable rate. 3 jobs cost 45,000 FCFA and 7 jobs cost 85,000 FCFA.

(a) Find the fixed cost and variable rate. *(6 marks)*

(b) Predict the cost of 10 jobs and comment on the model. *(4 marks)*

---

**Q19.** Find the sum of the first 40 terms of the series $3 + 7 + 11 + \cdots$. *(5 marks)*

---

**Q20.** Prove algebraically that the sum of any three consecutive integers is divisible by 3. *(7 marks)*
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
  where title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1'
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
  'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2'
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
  'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 3'
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
  'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  where subject = 'English Language'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'English Language',
  'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 4

## Structural Question Bank — Comprehension and summary

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** English Language

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPREHENSION AND SUMMARY

**Q1.** Read the passage below and answer the questions that follow.

*"The village market was more than a place of trade; it was the beating heart of the community. Here, farmers exchanged news with traders, and children learned the value of honest dealing. Yet in recent years, the market has been shrinking as young people migrate to the cities, leaving behind ageing vendors and empty stalls."*

(a) In one sentence, state the main idea of the passage. *(3 marks)*

(b) Give two reasons the writer gives for the market''s decline. *(4 marks)*

(c) Explain what the writer means by "the beating heart of the community". *(4 marks)*

---

**Q2.** Summarise the following passage in not more than 60 words.

*"Rainwater harvesting is an ancient practice that is regaining importance in Cameroon. By collecting runoff from rooftops into storage tanks, households can reduce their dependence on erratic municipal supplies. The water is ideal for gardening, washing, and, after proper treatment, even drinking. Critics argue that the initial cost of tanks and guttering is prohibitive, but supporters point out that the investment pays for itself within a few years through lower water bills and greater self-reliance."*

Your summary must be in continuous prose and must not include direct quotations. *(10 marks)*

---

**Q3.** Read the passage and answer the questions that follow.

*"The examination results were posted at dawn. For Amina, the moment was both terrifying and liberating. She had spent three sleepless nights rehearsing the worst-case scenario, yet when her name appeared on the list of successful candidates, she felt a surge of relief so powerful it left her breathless."*

(a) Identify the dominant emotion in the passage and quote one phrase that supports your answer. *(4 marks)*

(b) What does the phrase "rehearsing the worst-case scenario" reveal about Amina''s character? *(4 marks)*

(c) Suggest a suitable title for the passage. *(2 marks)*

---

**Q4.** Read the passage and answer the questions that follow.

*"Cameroon''s forests are among the most biodiverse on the continent, sheltering elephants, gorillas, and thousands of plant species. However, illegal logging and slash-and-burn farming are destroying these habitats at an alarming rate. Conservationists argue that protecting the forests is not merely an environmental concern but an economic one, since ecotourism and sustainable harvesting can generate lasting income for local communities."*

(a) State two threats to Cameroon''s forests mentioned in the passage. *(4 marks)*

(b) Explain why the writer describes forest protection as "an economic one". *(4 marks)*

(c) Give the meaning of "biodiverse" as used in the passage. *(2 marks)*

---

**Q5.** Summarise the following passage in not more than 70 words.

*"Mobile money has transformed financial life in Cameroon. Before its arrival, many rural families had no access to banks and relied on risky methods of storing and transferring cash. Today, a farmer can sell his cocoa, receive payment on his phone, and pay his children''s school fees without travelling to a town. Mobile money has also created jobs, as agents earn commissions on every transaction. Nevertheless, concerns remain about fraud, network failures, and the exclusion of the elderly who struggle with the technology."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q6.** Read the passage and answer the questions that follow.

*"The old woman refused to be rushed. Each morning she swept her compound with slow, deliberate strokes, as if the dust were an enemy she had known for years. Her neighbours, who hurried past with phones pressed to their ears, did not understand that for her, sweeping was not a chore but a meditation."*

(a) What does the writer suggest about the difference between the old woman and her neighbours? *(4 marks)*

(b) Explain the meaning of "a meditation" in the context of the passage. *(4 marks)*

(c) Identify one figure of speech used in the passage and explain its effect. *(4 marks)*

---

**Q7.** Read the passage and answer the questions that follow.

*"The river had always been generous, giving the village fish, water, and fertile soil. But generosity, the elders warned, must never be taken for granted. When the rains failed and the river shrank to a muddy trickle, the village learned that nature''s gifts come with conditions."*

(a) State the lesson the village learned. *(3 marks)*

(b) Explain how the writer uses personification in the passage. *(4 marks)*

(c) What is the writer''s attitude towards the river? Support your answer with evidence. *(4 marks)*

---

**Q8.** Summarise the following passage in not more than 60 words.

*"School feeding programmes in Cameroon serve a dual purpose. For children, a guaranteed midday meal improves concentration, attendance, and overall health. For farmers, the programmes provide a reliable market for their produce, since schools purchase staples such as maize, beans, and groundnuts from local cooperatives. Critics note that the programmes are expensive to run and vulnerable to corruption, but supporters argue that the long-term benefits to education and agriculture outweigh the costs."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q9.** Read the passage and answer the questions that follow.

*"He had rehearsed the speech a hundred times, yet when he stood before the crowd, the words evaporated. His palms were slick, his throat dry. Then he remembered his father''s advice: ''The audience wants you to succeed.'' He took a breath, and the first sentence came out steady."*

(a) Describe the speaker''s state of mind at the start of the passage. *(3 marks)*

(b) What effect does the father''s advice have on the speaker? *(4 marks)*

(c) Explain the meaning of "the words evaporated". *(3 marks)*

---

**Q10.** Read the passage and answer the questions that follow.

*"Plastic waste is choking Cameroon''s cities. Discarded bottles clog drainage channels, causing floods during the rainy season, while burning the waste releases toxic fumes. Some entrepreneurs have begun collecting plastics and recycling them into paving blocks, creating jobs and cleaning the streets. The challenge, they say, is not a lack of solutions but a lack of will."*

(a) State two problems caused by plastic waste. *(4 marks)*

(b) How have some entrepreneurs responded to the problem? *(3 marks)*

(c) Explain the final sentence: "The challenge... is not a lack of solutions but a lack of will." *(4 marks)*

---

**Q11.** Summarise the following passage in not more than 65 words.

*"Community health workers are the backbone of rural healthcare in Cameroon. Trained to diagnose common illnesses, administer vaccines, and advise on hygiene, they bring medical care to villages that would otherwise travel hours to reach a clinic. Their work has reduced infant mortality and improved maternal health in many regions. Yet these workers are often unpaid volunteers, and many leave the profession once they find better-paying work. Health experts argue that investing in community health workers is one of the most cost-effective ways to strengthen the health system."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q12.** Read the passage and answer the questions that follow.

*"The two brothers inherited the same plot of land. One planted cocoa and prospered; the other planted nothing and waited for the land to feed him. Years later, the first brother built a house, while the second still waited, blaming the soil for his poverty."*

(a) What is the moral of the passage? *(4 marks)*

(b) Contrast the attitudes of the two brothers. *(4 marks)*

(c) Explain the irony in the final sentence. *(4 marks)*

---

**Q13.** Read the passage and answer the questions that follow.

*"Tourism in Cameroon is a sleeping giant. The country boasts beaches, mountains, wildlife parks, and a rich cultural heritage, yet it attracts a fraction of the visitors that smaller neighbours receive. Poor infrastructure, limited marketing, and safety concerns are often cited as reasons. Those who have visited, however, speak of a country that rewards the adventurous traveller."*

(a) What does the writer mean by calling tourism "a sleeping giant"? *(4 marks)*

(b) Give two reasons why Cameroon attracts few tourists. *(4 marks)*

(c) What is the writer''s overall attitude towards Cameroon''s tourism potential? *(3 marks)*

---

**Q14.** Summarise the following passage in not more than 60 words.

*"The traditional African family is often described as an extended family, where uncles, aunts, and grandparents share in raising children. This system provides a safety net: when parents fall ill or travel, relatives step in. It also transmits values, history, and skills across generations. However, urbanisation and economic pressures are weakening these ties, as families become smaller and more mobile. Sociologists warn that the loss of the extended family could leave many children without the support they once enjoyed."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q15.** Read the passage and answer the questions that follow.

*"The teacher wrote a single word on the board: ''Why?'' For a moment the class was silent. Then hands shot up. The question, she explained, was more important than any answer, because it was the beginning of every discovery. From that day, her students stopped memorising and started questioning."*

(a) What change does the teacher bring about in her students? *(4 marks)*

(b) Explain the significance of the word "Why?" in the passage. *(4 marks)*

(c) What does the passage suggest about the difference between memorising and questioning? *(4 marks)*

---

**Q16.** Read the passage and answer the questions that follow.

*"The harvest festival drew people from every village in the district. Drummers led the procession, dancers in bright cloth followed, and elders presided over the ceremony with quiet dignity. For the young, it was a spectacle; for the old, a memory renewed. The festival was not merely entertainment; it was the community''s way of giving thanks and reaffirming its identity."*

(a) State two purposes of the harvest festival. *(4 marks)*

(b) Explain the difference between how the young and the old view the festival. *(4 marks)*

(c) What does the phrase "a memory renewed" suggest? *(3 marks)*

---

**Q17.** Summarise the following passage in not more than 70 words.

*"Reading is a habit that is dying among young people, replaced by short videos and instant messages. Yet reading offers what these distractions cannot: the ability to follow a complex argument, to enter another person''s mind, and to build the vocabulary that examinations reward. Teachers report that students who read widely write better essays and score higher in comprehension. Parents can help by setting aside time for reading at home and by letting children choose books that interest them, rather than forcing classics upon them."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q18.** Read the passage and answer the questions that follow.

*"The bridge collapsed without warning, cutting off the only road to the hospital. For three days, the sick were carried across the river in canoes, and the dead were buried on the wrong side of the water. When the government finally announced plans to rebuild, the villagers did not celebrate; they had heard such promises before."*

(a) What were the consequences of the bridge''s collapse? *(4 marks)*

(b) Why did the villagers not celebrate the government''s announcement? *(4 marks)*

(c) What does the passage reveal about the relationship between the villagers and the government? *(4 marks)*

---

**Q19.** Read the passage and answer the questions that follow.

*"Success, the speaker told the graduates, is not a destination but a journey. It is measured not by the certificates on your wall but by the obstacles you overcome and the people you help along the way. The audience applauded, though some wondered privately whether the speaker, who had inherited his father''s business, truly understood the obstacles they faced."*

(a) State the speaker''s definition of success. *(3 marks)*

(b) Explain the irony in the final sentence. *(4 marks)*

(c) Do you agree with the speaker''s view? Give a reason. *(3 marks)*

---

**Q20.** Read the passage and answer the questions that follow.

*"The baobab tree stood at the centre of the village, older than anyone could remember. Its trunk was a storehouse of water, its bark a source of medicine, its leaves a vegetable for the evening pot. When developers proposed cutting it down to widen the road, the village united in protest. They had lost many things to progress; they would not lose the baobab."*

(a) List three uses of the baobab tree mentioned in the passage. *(3 marks)*

(b) Why did the village protest against the developers? *(4 marks)*

(c) What does the final sentence reveal about the villagers'' attitude towards progress? *(4 marks)*
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
  where subject = 'English Language'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'English Language',
  'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 5

## Structural Question Bank — Grammar and vocabulary

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** English Language

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: GRAMMAR AND VOCABULARY

**Q1.** Rewrite the following sentences, correcting the errors:

(a) "Neither of the boys were present at the meeting." *(2 marks)*

(b) "The committee have decided to postpone the event." *(2 marks)*

(c) "Each of the students have submitted their assignment." *(2 marks)*

(d) "The number of accidents are increasing every year." *(2 marks)*

---

**Q2.** Change the following sentences from direct to indirect speech:

(a) "I will visit you tomorrow," she said. *(3 marks)*

(b) "Have you finished the report?" the manager asked. *(3 marks)*

(c) "Do not touch the exhibits," the guard warned. *(3 marks)*

---

**Q3.** Fill in each blank with the correct form of the verb in brackets:

(a) By the time we arrived, the ceremony ____ (already begin). *(2 marks)*

(b) She ____ (live) in Douala for ten years before she moved to Yaoundé. *(2 marks)*

(c) If I ____ (know) the answer, I would have told you. *(2 marks)*

(d) The children ____ (play) in the yard when it started to rain. *(2 marks)*

---

**Q4.** Combine each pair of sentences using the conjunction in brackets:

(a) He was tired. He continued working. (although) *(3 marks)*

(b) The rain stopped. We went out. (as soon as) *(3 marks)*

(c) She studied hard. She failed the examination. (even though) *(3 marks)*

---

**Q5.** Choose the word that is closest in meaning to the word in bold:

(a) The meeting was **adjourned** until the following week. *(2 marks)*

(b) His **arrogant** behaviour offended his colleagues. *(2 marks)*

(c) The evidence was **inconclusive**, so the case was dismissed. *(2 marks)*

(d) She gave a **lucid** explanation of the difficult concept. *(2 marks)*

---

**Q6.** Rewrite the following sentences in the passive voice:

(a) The government built the new bridge last year. *(2 marks)*

(b) Someone has stolen my bicycle. *(2 marks)*

(c) They will announce the results on Friday. *(2 marks)*

(d) The chef is preparing the meal. *(2 marks)*

---

**Q7.** Identify the grammatical function of the underlined words in the following sentences:

(a) The **runner** won the race. *(2 marks)*

(b) She gave **him** a gift. *(2 marks)*

(c) The book on the table is **mine**. *(2 marks)*

(d) **Running** is good exercise. *(2 marks)*

---

**Q8.** Complete each sentence with the correct preposition:

(a) She is good ____ mathematics. *(1 mark)*

(b) He was accused ____ theft. *(1 mark)*

(c) The committee consists ____ ten members. *(1 mark)*

(d) We arrived ____ the station just in time. *(1 mark)*

(e) She is interested ____ learning French. *(1 mark)*

(f) The cat jumped ____ the table. *(1 mark)*

---

**Q9.** Rewrite the following sentences, using the correct form of the word in brackets:

(a) The ____ (decide) was made unanimously. *(2 marks)*

(b) Her ____ (perform) in the examination was outstanding. *(2 marks)*

(c) The ____ (manage) of the company resigned. *(2 marks)*

(d) We were impressed by his ____ (honest). *(2 marks)*

---

**Q10.** Punctuate the following passage correctly:

*"the minister said the government will build a new hospital in bamenda next year the project will create hundreds of jobs and improve healthcare in the region"* *(8 marks)*

---

**Q11.** Choose the correct word to complete each sentence:

(a) The principal gave the students ____ (advice / advise) on how to prepare for the examination. *(2 marks)*

(b) The new policy will ____ (affect / effect) all workers. *(2 marks)*

(c) Please ____ (bring / take) this letter to the post office. *(2 marks)*

(d) The company''s ____ (principal / principle) concern is customer satisfaction. *(2 marks)*

---

**Q12.** Rewrite the following sentences, beginning with the word given:

(a) "It is unlikely that he will pass the examination." → "He is unlikely ____." *(3 marks)*

(b) "She is too young to travel alone." → "She is not ____." *(3 marks)*

(c) "The problem was so difficult that nobody could solve it." → "It was such ____." *(3 marks)*

---

**Q13.** Identify and correct the error in each of the following sentences:

(a) "The two girls are very different from each other." *(2 marks)*

(b) "He is one of the students who has won the prize." *(2 marks)*

(c) "I look forward to hear from you." *(2 marks)*

(d) "The news are good." *(2 marks)*

---

**Q14.** Complete each sentence with the correct form of the word in brackets:

(a) The ____ (long) of the river is over 1,000 kilometres. *(2 marks)*

(b) She spoke with great ____ (confident). *(2 marks)*

(c) The ____ (fail) of the plan surprised everyone. *(2 marks)*

(d) His ____ (refuse) to cooperate delayed the project. *(2 marks)*

---

**Q15.** Rewrite the following sentences, replacing the underlined words with a suitable phrasal verb:

(a) He **postponed** the meeting until Monday. *(2 marks)*

(b) She **discovered** the truth by accident. *(2 marks)*

(c) The plane **departed** at noon. *(2 marks)*

(d) They **continued** working despite the noise. *(2 marks)*

---

**Q16.** Change the following sentences from active to passive, or vice versa:

(a) The letter was written by the secretary. *(2 marks)*

(b) The children are being taught by a new teacher. *(2 marks)*

(c) The manager will interview the candidates tomorrow. *(2 marks)*

(d) The bridge was being repaired when we crossed it. *(2 marks)*

---

**Q17.** Complete each sentence with the correct form of the word in brackets:

(a) The ____ (arrive) of the delegation was delayed. *(2 marks)*

(b) She has a strong ____ (believe) in hard work. *(2 marks)*

(c) The ____ (compare) between the two products was interesting. *(2 marks)*

(d) His ____ (behave) at the meeting was unacceptable. *(2 marks)*

---

**Q18.** Rewrite the following sentences, using the correct tense:

(a) "I have seen that film yesterday." *(2 marks)*

(b) "She has been working here since five years." *(2 marks)*

(c) "When I arrived, he already left." *(2 marks)*

(d) "I will call you when I will arrive." *(2 marks)*

---

**Q19.** Choose the correct word to complete each sentence:

(a) The ____ (weather / whether) was perfect for the picnic. *(2 marks)*

(b) ____ (Their / There / They''re) going to the market. *(2 marks)*

(c) The dog wagged ____ (its / it''s) tail. *(2 marks)*

(d) ____ (Who''s / Whose) book is this? *(2 marks)*

---

**Q20.** Rewrite the following sentences, correcting the errors:

(a) "The teacher, along with her students, are going on the trip." *(2 marks)*

(b) "He is the tallest of the two brothers." *(2 marks)*

(c) "I have less money than him." *(2 marks)*

(d) "She is more taller than her sister." *(2 marks)*
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
  where subject = 'English Language'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'English Language',
  'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 6

## Structural Question Bank — Composition and essay writing

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** English Language

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPOSITION AND ESSAY WRITING

**Q1.** Write an essay of about 450 words on the following topic:

"Describe a journey you will never forget. Explain why it remains memorable."

Your essay should have a clear introduction, body, and conclusion. *(20 marks)*

---

**Q2.** Write an argumentative essay of about 450 words on the topic:

"Mobile phones should be banned in secondary schools."

Present a clear argument, support it with reasons and examples, and address at least one counter-argument. *(20 marks)*

---

**Q3.** Write a narrative essay of about 450 words beginning with the sentence:

*"It was the last day of the school year, and nothing had gone as planned."*

Use vivid description and a clear sequence of events. *(20 marks)*

---

**Q4.** Write an expository essay of about 450 words on the topic:

"Explain the importance of agriculture to the economy of Cameroon."

Organise your ideas logically and support them with specific examples. *(20 marks)*

---

**Q5.** Write a descriptive essay of about 450 words on the topic:

"Describe your favourite place and explain why it is special to you."

Use sensory details (sight, sound, smell, touch, taste) to bring the place to life. *(20 marks)*

---

**Q6.** Write an argumentative essay of about 450 words on the topic:

"Examinations are not the best way to measure a student''s ability."

Give reasons for your position and consider the opposing view. *(20 marks)*

---

**Q7.** Write a narrative essay of about 450 words ending with the sentence:

*"That was the day I learned that honesty is always the best policy."*

Build your story towards this conclusion. *(20 marks)*

---

**Q8.** Write a formal letter to the mayor of your town, complaining about the poor state of the roads in your area. Your letter should be about 350 words and should include:

(a) Your address and the date. *(2 marks)*

(b) A clear statement of the problem. *(6 marks)*

(c) The effects of the problem on the community. *(6 marks)*

(d) A request for action. *(6 marks)*

---

**Q9.** Write an expository essay of about 450 words on the topic:

"Discuss the causes and effects of drug abuse among young people."

Structure your essay with clear paragraphs. *(20 marks)*

---

**Q10.** Write a narrative essay of about 450 words on the topic:

"Write a story that illustrates the saying: ''A friend in need is a friend indeed.''"

Your story should have a clear plot, characters, and a lesson. *(20 marks)*

---

**Q11.** Write an argumentative essay of about 450 words on the topic:

"Social media does more harm than good to young people."

Support your argument with evidence and address the opposing view. *(20 marks)*

---

**Q12.** Write a descriptive essay of about 450 words on the topic:

"Describe the scene at a busy market in your town."

Use vivid language to convey the sights, sounds, and atmosphere. *(20 marks)*

---

**Q13.** Write a formal letter of application for the post of a sales assistant in a supermarket. Your letter should be about 350 words and should include:

(a) Your address and the date. *(2 marks)*

(b) The post you are applying for and where you saw it advertised. *(4 marks)*

(c) Your qualifications and relevant experience. *(8 marks)*

(d) A request for an interview. *(6 marks)*

---

**Q14.** Write an expository essay of about 450 words on the topic:

"Explain the causes of road accidents in Cameroon and suggest ways to reduce them."

Organise your answer into causes and solutions. *(20 marks)*

---

**Q15.** Write a narrative essay of about 450 words on the topic:

"Write a story about a time when you had to make a difficult decision."

Describe the situation, the options you faced, and the outcome. *(20 marks)*

---

**Q16.** Write an argumentative essay of about 450 words on the topic:

"University education should be free for all students in Cameroon."

Present a clear position with supporting arguments and counter-arguments. *(20 marks)*

---

**Q17.** Write a descriptive essay of about 450 words on the topic:

"Describe a traditional ceremony you have witnessed."

Include details of the setting, the participants, and the significance of the ceremony. *(20 marks)*

---

**Q18.** Write a formal letter to the editor of a national newspaper, expressing your views on the topic:

"The importance of preserving Cameroon''s cultural heritage."

Your letter should be about 350 words and should include a clear introduction, body, and conclusion. *(20 marks)*

---

**Q19.** Write an expository essay of about 450 words on the topic:

"Discuss the benefits of learning a second language."

Support your points with specific examples. *(20 marks)*

---

**Q20.** Write a narrative essay of about 450 words on the topic:

"Write a story that ends with the sentence: ''Sometimes the smallest act of kindness means the most.''"

Build your story towards this ending. *(20 marks)*
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
  where subject = 'English Language'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'English Language',
  'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 7

## Structural Question Bank — Comprehension and summary

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** English Language

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPREHENSION AND SUMMARY

**Q1.** Read the passage below and answer the questions that follow.

*"The village market was more than a place of trade; it was the beating heart of the community. Here, farmers exchanged news with traders, and children learned the value of honest dealing. Yet in recent years, the market has been shrinking as young people migrate to the cities, leaving behind ageing vendors and empty stalls."*

(a) In one sentence, state the main idea of the passage. *(3 marks)*

(b) Give two reasons the writer gives for the market''s decline. *(4 marks)*

(c) Explain what the writer means by "the beating heart of the community". *(4 marks)*

---

**Q2.** Summarise the following passage in not more than 60 words.

*"Rainwater harvesting is an ancient practice that is regaining importance in Cameroon. By collecting runoff from rooftops into storage tanks, households can reduce their dependence on erratic municipal supplies. The water is ideal for gardening, washing, and, after proper treatment, even drinking. Critics argue that the initial cost of tanks and guttering is prohibitive, but supporters point out that the investment pays for itself within a few years through lower water bills and greater self-reliance."*

Your summary must be in continuous prose and must not include direct quotations. *(10 marks)*

---

**Q3.** Read the passage and answer the questions that follow.

*"The examination results were posted at dawn. For Amina, the moment was both terrifying and liberating. She had spent three sleepless nights rehearsing the worst-case scenario, yet when her name appeared on the list of successful candidates, she felt a surge of relief so powerful it left her breathless."*

(a) Identify the dominant emotion in the passage and quote one phrase that supports your answer. *(4 marks)*

(b) What does the phrase "rehearsing the worst-case scenario" reveal about Amina''s character? *(4 marks)*

(c) Suggest a suitable title for the passage. *(2 marks)*

---

**Q4.** Read the passage and answer the questions that follow.

*"Cameroon''s forests are among the most biodiverse on the continent, sheltering elephants, gorillas, and thousands of plant species. However, illegal logging and slash-and-burn farming are destroying these habitats at an alarming rate. Conservationists argue that protecting the forests is not merely an environmental concern but an economic one, since ecotourism and sustainable harvesting can generate lasting income for local communities."*

(a) State two threats to Cameroon''s forests mentioned in the passage. *(4 marks)*

(b) Explain why the writer describes forest protection as "an economic one". *(4 marks)*

(c) Give the meaning of "biodiverse" as used in the passage. *(2 marks)*

---

**Q5.** Summarise the following passage in not more than 70 words.

*"Mobile money has transformed financial life in Cameroon. Before its arrival, many rural families had no access to banks and relied on risky methods of storing and transferring cash. Today, a farmer can sell his cocoa, receive payment on his phone, and pay his children''s school fees without travelling to a town. Mobile money has also created jobs, as agents earn commissions on every transaction. Nevertheless, concerns remain about fraud, network failures, and the exclusion of the elderly who struggle with the technology."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q6.** Read the passage and answer the questions that follow.

*"The old woman refused to be rushed. Each morning she swept her compound with slow, deliberate strokes, as if the dust were an enemy she had known for years. Her neighbours, who hurried past with phones pressed to their ears, did not understand that for her, sweeping was not a chore but a meditation."*

(a) What does the writer suggest about the difference between the old woman and her neighbours? *(4 marks)*

(b) Explain the meaning of "a meditation" in the context of the passage. *(4 marks)*

(c) Identify one figure of speech used in the passage and explain its effect. *(4 marks)*

---

**Q7.** Read the passage and answer the questions that follow.

*"The river had always been generous, giving the village fish, water, and fertile soil. But generosity, the elders warned, must never be taken for granted. When the rains failed and the river shrank to a muddy trickle, the village learned that nature''s gifts come with conditions."*

(a) State the lesson the village learned. *(3 marks)*

(b) Explain how the writer uses personification in the passage. *(4 marks)*

(c) What is the writer''s attitude towards the river? Support your answer with evidence. *(4 marks)*

---

**Q8.** Summarise the following passage in not more than 60 words.

*"School feeding programmes in Cameroon serve a dual purpose. For children, a guaranteed midday meal improves concentration, attendance, and overall health. For farmers, the programmes provide a reliable market for their produce, since schools purchase staples such as maize, beans, and groundnuts from local cooperatives. Critics note that the programmes are expensive to run and vulnerable to corruption, but supporters argue that the long-term benefits to education and agriculture outweigh the costs."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q9.** Read the passage and answer the questions that follow.

*"He had rehearsed the speech a hundred times, yet when he stood before the crowd, the words evaporated. His palms were slick, his throat dry. Then he remembered his father''s advice: ''The audience wants you to succeed.'' He took a breath, and the first sentence came out steady."*

(a) Describe the speaker''s state of mind at the start of the passage. *(3 marks)*

(b) What effect does the father''s advice have on the speaker? *(4 marks)*

(c) Explain the meaning of "the words evaporated". *(3 marks)*

---

**Q10.** Read the passage and answer the questions that follow.

*"Plastic waste is choking Cameroon''s cities. Discarded bottles clog drainage channels, causing floods during the rainy season, while burning the waste releases toxic fumes. Some entrepreneurs have begun collecting plastics and recycling them into paving blocks, creating jobs and cleaning the streets. The challenge, they say, is not a lack of solutions but a lack of will."*

(a) State two problems caused by plastic waste. *(4 marks)*

(b) How have some entrepreneurs responded to the problem? *(3 marks)*

(c) Explain the final sentence: "The challenge... is not a lack of solutions but a lack of will." *(4 marks)*

---

**Q11.** Summarise the following passage in not more than 65 words.

*"Community health workers are the backbone of rural healthcare in Cameroon. Trained to diagnose common illnesses, administer vaccines, and advise on hygiene, they bring medical care to villages that would otherwise travel hours to reach a clinic. Their work has reduced infant mortality and improved maternal health in many regions. Yet these workers are often unpaid volunteers, and many leave the profession once they find better-paying work. Health experts argue that investing in community health workers is one of the most cost-effective ways to strengthen the health system."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q12.** Read the passage and answer the questions that follow.

*"The two brothers inherited the same plot of land. One planted cocoa and prospered; the other planted nothing and waited for the land to feed him. Years later, the first brother built a house, while the second still waited, blaming the soil for his poverty."*

(a) What is the moral of the passage? *(4 marks)*

(b) Contrast the attitudes of the two brothers. *(4 marks)*

(c) Explain the irony in the final sentence. *(4 marks)*

---

**Q13.** Read the passage and answer the questions that follow.

*"Tourism in Cameroon is a sleeping giant. The country boasts beaches, mountains, wildlife parks, and a rich cultural heritage, yet it attracts a fraction of the visitors that smaller neighbours receive. Poor infrastructure, limited marketing, and safety concerns are often cited as reasons. Those who have visited, however, speak of a country that rewards the adventurous traveller."*

(a) What does the writer mean by calling tourism "a sleeping giant"? *(4 marks)*

(b) Give two reasons why Cameroon attracts few tourists. *(4 marks)*

(c) What is the writer''s overall attitude towards Cameroon''s tourism potential? *(3 marks)*

---

**Q14.** Summarise the following passage in not more than 60 words.

*"The traditional African family is often described as an extended family, where uncles, aunts, and grandparents share in raising children. This system provides a safety net: when parents fall ill or travel, relatives step in. It also transmits values, history, and skills across generations. However, urbanisation and economic pressures are weakening these ties, as families become smaller and more mobile. Sociologists warn that the loss of the extended family could leave many children without the support they once enjoyed."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q15.** Read the passage and answer the questions that follow.

*"The teacher wrote a single word on the board: ''Why?'' For a moment the class was silent. Then hands shot up. The question, she explained, was more important than any answer, because it was the beginning of every discovery. From that day, her students stopped memorising and started questioning."*

(a) What change does the teacher bring about in her students? *(4 marks)*

(b) Explain the significance of the word "Why?" in the passage. *(4 marks)*

(c) What does the passage suggest about the difference between memorising and questioning? *(4 marks)*

---

**Q16.** Read the passage and answer the questions that follow.

*"The harvest festival drew people from every village in the district. Drummers led the procession, dancers in bright cloth followed, and elders presided over the ceremony with quiet dignity. For the young, it was a spectacle; for the old, a memory renewed. The festival was not merely entertainment; it was the community''s way of giving thanks and reaffirming its identity."*

(a) State two purposes of the harvest festival. *(4 marks)*

(b) Explain the difference between how the young and the old view the festival. *(4 marks)*

(c) What does the phrase "a memory renewed" suggest? *(3 marks)*

---

**Q17.** Summarise the following passage in not more than 70 words.

*"Reading is a habit that is dying among young people, replaced by short videos and instant messages. Yet reading offers what these distractions cannot: the ability to follow a complex argument, to enter another person''s mind, and to build the vocabulary that examinations reward. Teachers report that students who read widely write better essays and score higher in comprehension. Parents can help by setting aside time for reading at home and by letting children choose books that interest them, rather than forcing classics upon them."*

Your summary must be in continuous prose. *(10 marks)*

---

**Q18.** Read the passage and answer the questions that follow.

*"The bridge collapsed without warning, cutting off the only road to the hospital. For three days, the sick were carried across the river in canoes, and the dead were buried on the wrong side of the water. When the government finally announced plans to rebuild, the villagers did not celebrate; they had heard such promises before."*

(a) What were the consequences of the bridge''s collapse? *(4 marks)*

(b) Why did the villagers not celebrate the government''s announcement? *(4 marks)*

(c) What does the passage reveal about the relationship between the villagers and the government? *(4 marks)*

---

**Q19.** Read the passage and answer the questions that follow.

*"Success, the speaker told the graduates, is not a destination but a journey. It is measured not by the certificates on your wall but by the obstacles you overcome and the people you help along the way. The audience applauded, though some wondered privately whether the speaker, who had inherited his father''s business, truly understood the obstacles they faced."*

(a) State the speaker''s definition of success. *(3 marks)*

(b) Explain the irony in the final sentence. *(4 marks)*

(c) Do you agree with the speaker''s view? Give a reason. *(3 marks)*

---

**Q20.** Read the passage and answer the questions that follow.

*"The baobab tree stood at the centre of the village, older than anyone could remember. Its trunk was a storehouse of water, its bark a source of medicine, its leaves a vegetable for the evening pot. When developers proposed cutting it down to widen the road, the village united in protest. They had lost many things to progress; they would not lose the baobab."*

(a) List three uses of the baobab tree mentioned in the passage. *(3 marks)*

(b) Why did the village protest against the developers? *(4 marks)*

(c) What does the final sentence reveal about the villagers'' attitude towards progress? *(4 marks)*
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
  where subject = 'English Language'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'English Language',
  'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 8

## Structural Question Bank — Grammar and vocabulary

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** English Language

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: GRAMMAR AND VOCABULARY

**Q1.** Rewrite the following sentences, correcting the errors:

(a) "Neither of the boys were present at the meeting." *(2 marks)*

(b) "The committee have decided to postpone the event." *(2 marks)*

(c) "Each of the students have submitted their assignment." *(2 marks)*

(d) "The number of accidents are increasing every year." *(2 marks)*

---

**Q2.** Change the following sentences from direct to indirect speech:

(a) "I will visit you tomorrow," she said. *(3 marks)*

(b) "Have you finished the report?" the manager asked. *(3 marks)*

(c) "Do not touch the exhibits," the guard warned. *(3 marks)*

---

**Q3.** Fill in each blank with the correct form of the verb in brackets:

(a) By the time we arrived, the ceremony ____ (already begin). *(2 marks)*

(b) She ____ (live) in Douala for ten years before she moved to Yaoundé. *(2 marks)*

(c) If I ____ (know) the answer, I would have told you. *(2 marks)*

(d) The children ____ (play) in the yard when it started to rain. *(2 marks)*

---

**Q4.** Combine each pair of sentences using the conjunction in brackets:

(a) He was tired. He continued working. (although) *(3 marks)*

(b) The rain stopped. We went out. (as soon as) *(3 marks)*

(c) She studied hard. She failed the examination. (even though) *(3 marks)*

---

**Q5.** Choose the word that is closest in meaning to the word in bold:

(a) The meeting was **adjourned** until the following week. *(2 marks)*

(b) His **arrogant** behaviour offended his colleagues. *(2 marks)*

(c) The evidence was **inconclusive**, so the case was dismissed. *(2 marks)*

(d) She gave a **lucid** explanation of the difficult concept. *(2 marks)*

---

**Q6.** Rewrite the following sentences in the passive voice:

(a) The government built the new bridge last year. *(2 marks)*

(b) Someone has stolen my bicycle. *(2 marks)*

(c) They will announce the results on Friday. *(2 marks)*

(d) The chef is preparing the meal. *(2 marks)*

---

**Q7.** Identify the grammatical function of the underlined words in the following sentences:

(a) The **runner** won the race. *(2 marks)*

(b) She gave **him** a gift. *(2 marks)*

(c) The book on the table is **mine**. *(2 marks)*

(d) **Running** is good exercise. *(2 marks)*

---

**Q8.** Complete each sentence with the correct preposition:

(a) She is good ____ mathematics. *(1 mark)*

(b) He was accused ____ theft. *(1 mark)*

(c) The committee consists ____ ten members. *(1 mark)*

(d) We arrived ____ the station just in time. *(1 mark)*

(e) She is interested ____ learning French. *(1 mark)*

(f) The cat jumped ____ the table. *(1 mark)*

---

**Q9.** Rewrite the following sentences, using the correct form of the word in brackets:

(a) The ____ (decide) was made unanimously. *(2 marks)*

(b) Her ____ (perform) in the examination was outstanding. *(2 marks)*

(c) The ____ (manage) of the company resigned. *(2 marks)*

(d) We were impressed by his ____ (honest). *(2 marks)*

---

**Q10.** Punctuate the following passage correctly:

*"the minister said the government will build a new hospital in bamenda next year the project will create hundreds of jobs and improve healthcare in the region"* *(8 marks)*

---

**Q11.** Choose the correct word to complete each sentence:

(a) The principal gave the students ____ (advice / advise) on how to prepare for the examination. *(2 marks)*

(b) The new policy will ____ (affect / effect) all workers. *(2 marks)*

(c) Please ____ (bring / take) this letter to the post office. *(2 marks)*

(d) The company''s ____ (principal / principle) concern is customer satisfaction. *(2 marks)*

---

**Q12.** Rewrite the following sentences, beginning with the word given:

(a) "It is unlikely that he will pass the examination." → "He is unlikely ____." *(3 marks)*

(b) "She is too young to travel alone." → "She is not ____." *(3 marks)*

(c) "The problem was so difficult that nobody could solve it." → "It was such ____." *(3 marks)*

---

**Q13.** Identify and correct the error in each of the following sentences:

(a) "The two girls are very different from each other." *(2 marks)*

(b) "He is one of the students who has won the prize." *(2 marks)*

(c) "I look forward to hear from you." *(2 marks)*

(d) "The news are good." *(2 marks)*

---

**Q14.** Complete each sentence with the correct form of the word in brackets:

(a) The ____ (long) of the river is over 1,000 kilometres. *(2 marks)*

(b) She spoke with great ____ (confident). *(2 marks)*

(c) The ____ (fail) of the plan surprised everyone. *(2 marks)*

(d) His ____ (refuse) to cooperate delayed the project. *(2 marks)*

---

**Q15.** Rewrite the following sentences, replacing the underlined words with a suitable phrasal verb:

(a) He **postponed** the meeting until Monday. *(2 marks)*

(b) She **discovered** the truth by accident. *(2 marks)*

(c) The plane **departed** at noon. *(2 marks)*

(d) They **continued** working despite the noise. *(2 marks)*

---

**Q16.** Change the following sentences from active to passive, or vice versa:

(a) The letter was written by the secretary. *(2 marks)*

(b) The children are being taught by a new teacher. *(2 marks)*

(c) The manager will interview the candidates tomorrow. *(2 marks)*

(d) The bridge was being repaired when we crossed it. *(2 marks)*

---

**Q17.** Complete each sentence with the correct form of the word in brackets:

(a) The ____ (arrive) of the delegation was delayed. *(2 marks)*

(b) She has a strong ____ (believe) in hard work. *(2 marks)*

(c) The ____ (compare) between the two products was interesting. *(2 marks)*

(d) His ____ (behave) at the meeting was unacceptable. *(2 marks)*

---

**Q18.** Rewrite the following sentences, using the correct tense:

(a) "I have seen that film yesterday." *(2 marks)*

(b) "She has been working here since five years." *(2 marks)*

(c) "When I arrived, he already left." *(2 marks)*

(d) "I will call you when I will arrive." *(2 marks)*

---

**Q19.** Choose the correct word to complete each sentence:

(a) The ____ (weather / whether) was perfect for the picnic. *(2 marks)*

(b) ____ (Their / There / They''re) going to the market. *(2 marks)*

(c) The dog wagged ____ (its / it''s) tail. *(2 marks)*

(d) ____ (Who''s / Whose) book is this? *(2 marks)*

---

**Q20.** Rewrite the following sentences, correcting the errors:

(a) "The teacher, along with her students, are going on the trip." *(2 marks)*

(b) "He is the tallest of the two brothers." *(2 marks)*

(c) "I have less money than him." *(2 marks)*

(d) "She is more taller than her sister." *(2 marks)*
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