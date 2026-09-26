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
  where title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 6'
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
  'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 6

## Structural Question Bank — Trigonometry

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

## SECTION 1: TRIGONOMETRY

**Q1.** Prove the identity $\dfrac{\sin 2\theta}{1 + \cos 2\theta} = \tan \theta$. *(6 marks)*

---

**Q2.** In triangle $PQR$, $p = 8$ cm, $q = 11$ cm and $\angle R = 47^\circ$. Find $r$. *(6 marks)*

---

**Q3.** Solve $2\sin x \cos x = \cos x$ for $0^\circ \leq x \leq 360^\circ$. *(5 marks)*

---

**Q4.** Find the exact value of $\sin 105^\circ$. *(4 marks)*

---

**Q5.** A ship sails 12 km on a bearing of $040^\circ$ then 9 km on a bearing of $130^\circ$.

(a) Find the direct distance from the start. *(5 marks)*

(b) Find the bearing of the start from the end point. *(4 marks)*

---

**Q6.** Show that $\cos 3\theta \equiv 4\cos^3\theta - 3\cos\theta$. Hence solve $\cos 3\theta = \dfrac{1}{2}$ for $0 \leq \theta < 2\pi$. *(8 marks)*

---

**Q7.** The height of a cliff is measured from two points 80 m apart at the base. Angles of elevation are $42^\circ$ and $61^\circ$. Find the height of the cliff. *(6 marks)*

---

**Q8.** Express $3\sin x + 4\cos x$ in the form $R\sin(x + \alpha)$. Hence find its maximum value. *(6 marks)*

---

**Q9.** In triangle $ABC$, $a = 7$, $b = 8$ and $c = 9$. Find the largest angle correct to 1 decimal place. *(5 marks)*

---

**Q10.** Solve $\tan 2x = \sqrt{3}$ for $0^\circ \leq x \leq 180^\circ$. *(4 marks)*

---

**Q11.** A triangular plot has sides 130 m, 150 m and 180 m. Find the area of the plot. *(6 marks)*

---

**Q12.** Prove that $\sin(A+B)\sin(A-B) \equiv \sin^2 A - \sin^2 B$. *(6 marks)*

---

**Q13.** From the top of a 60 m mast, the angle of depression of a buoy is $28^\circ$. Find the horizontal distance to the buoy. *(4 marks)*

---

**Q14.** Find the general solution of $2\cos^2 x - 3\sin x = 0$ for $0^\circ \leq x \leq 360^\circ$. *(6 marks)*

---

**Q15.** The angles of a triangle are in the ratio $3:4:5$. Find the exact values of the smallest and largest angles'' sines. *(5 marks)*

---

**Q16.** Two towers of heights 40 m and 60 m stand on level ground 100 m apart. Find the angle of elevation from the top of the shorter tower to the top of the taller one. *(5 marks)*

---

**Q17.** Simplify $\dfrac{1 - \cos 2\theta}{\sin 2\theta}$ and hence evaluate it when $\theta = 30^\circ$. *(5 marks)*

---

**Q18.** A plane flies on a bearing of $115^\circ$ for 200 km, then turns to a bearing of $200^\circ$ for 150 km. Find its distance and bearing from the starting point. *(7 marks)*

---

**Q19.** Prove that $\cot\theta - \tan\theta \equiv 2\cot 2\theta$. *(5 marks)*

---

**Q20.** In triangle $ABC$, $\angle A = 58^\circ$, $a = 14$ cm and $b = 16$ cm. Show that there are two possible triangles and find both possible values of $\angle B$. *(7 marks)*
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
  where subject = 'Philosophy'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level PHILOSOPHY P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Philosophy

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Introduction to Philosophy: Sample question 1 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Logic: Sample question 2 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Ethics: Sample question 3 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Epistemology: Sample question 4 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Metaphysics: Sample question 5 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** African Philosophy: Sample question 6 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Political Philosophy: Sample question 7 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Applied Ethics: Sample question 8 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Introduction to Philosophy: Sample question 9 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Logic: Sample question 10 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Ethics: Sample question 11 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Epistemology: Sample question 12 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Metaphysics: Sample question 13 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** African Philosophy: Sample question 14 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Political Philosophy: Sample question 15 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Applied Ethics: Sample question 16 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Introduction to Philosophy: Sample question 17 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Logic: Sample question 18 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Ethics: Sample question 19 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Epistemology: Sample question 20 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Metaphysics: Sample question 21 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** African Philosophy: Sample question 22 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Political Philosophy: Sample question 23 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Applied Ethics: Sample question 24 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Introduction to Philosophy: Sample question 25 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Logic: Sample question 26 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Ethics: Sample question 27 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Epistemology: Sample question 28 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Metaphysics: Sample question 29 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** African Philosophy: Sample question 30 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Political Philosophy: Sample question 31 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Applied Ethics: Sample question 32 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Introduction to Philosophy: Sample question 33 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Logic: Sample question 34 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Ethics: Sample question 35 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Epistemology: Sample question 36 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Metaphysics: Sample question 37 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** African Philosophy: Sample question 38 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Political Philosophy: Sample question 39 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Applied Ethics: Sample question 40 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Introduction to Philosophy: Sample question 41 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Logic: Sample question 42 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Ethics: Sample question 43 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Epistemology: Sample question 44 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Metaphysics: Sample question 45 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** African Philosophy: Sample question 46 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Political Philosophy: Sample question 47 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Applied Ethics: Sample question 48 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Introduction to Philosophy: Sample question 49 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Logic: Sample question 50 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Ethics: Sample question 51 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Epistemology: Sample question 52 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Metaphysics: Sample question 53 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** African Philosophy: Sample question 54 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Political Philosophy: Sample question 55 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Applied Ethics: Sample question 56 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Introduction to Philosophy: Sample question 57 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Logic: Sample question 58 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Ethics: Sample question 59 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Epistemology: Sample question 60 for Philosophy Ordinary Level Paper 1.

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
  where subject = 'Philosophy'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level PHILOSOPHY P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Philosophy

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Introduction to Philosophy: Sample question 1 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Logic: Sample question 2 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Ethics: Sample question 3 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Epistemology: Sample question 4 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Metaphysics: Sample question 5 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** African Philosophy: Sample question 6 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Political Philosophy: Sample question 7 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Applied Ethics: Sample question 8 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Introduction to Philosophy: Sample question 9 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Logic: Sample question 10 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Ethics: Sample question 11 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Epistemology: Sample question 12 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Metaphysics: Sample question 13 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** African Philosophy: Sample question 14 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Political Philosophy: Sample question 15 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Applied Ethics: Sample question 16 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Introduction to Philosophy: Sample question 17 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Logic: Sample question 18 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Ethics: Sample question 19 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Epistemology: Sample question 20 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Metaphysics: Sample question 21 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** African Philosophy: Sample question 22 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Political Philosophy: Sample question 23 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Applied Ethics: Sample question 24 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Introduction to Philosophy: Sample question 25 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Logic: Sample question 26 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Ethics: Sample question 27 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Epistemology: Sample question 28 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Metaphysics: Sample question 29 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** African Philosophy: Sample question 30 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Political Philosophy: Sample question 31 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Applied Ethics: Sample question 32 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Introduction to Philosophy: Sample question 33 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Logic: Sample question 34 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Ethics: Sample question 35 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Epistemology: Sample question 36 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Metaphysics: Sample question 37 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** African Philosophy: Sample question 38 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Political Philosophy: Sample question 39 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Applied Ethics: Sample question 40 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Introduction to Philosophy: Sample question 41 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Logic: Sample question 42 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Ethics: Sample question 43 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Epistemology: Sample question 44 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Metaphysics: Sample question 45 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** African Philosophy: Sample question 46 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Political Philosophy: Sample question 47 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Applied Ethics: Sample question 48 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Introduction to Philosophy: Sample question 49 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Logic: Sample question 50 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Ethics: Sample question 51 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Epistemology: Sample question 52 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Metaphysics: Sample question 53 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** African Philosophy: Sample question 54 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Political Philosophy: Sample question 55 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Applied Ethics: Sample question 56 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Introduction to Philosophy: Sample question 57 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Logic: Sample question 58 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Ethics: Sample question 59 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Epistemology: Sample question 60 for Philosophy Ordinary Level Paper 1.

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
  where subject = 'Philosophy'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level PHILOSOPHY P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Philosophy

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Introduction to Philosophy: Sample question 1 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Logic: Sample question 2 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Ethics: Sample question 3 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Epistemology: Sample question 4 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Metaphysics: Sample question 5 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** African Philosophy: Sample question 6 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Political Philosophy: Sample question 7 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Applied Ethics: Sample question 8 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Introduction to Philosophy: Sample question 9 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Logic: Sample question 10 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Ethics: Sample question 11 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Epistemology: Sample question 12 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Metaphysics: Sample question 13 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** African Philosophy: Sample question 14 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Political Philosophy: Sample question 15 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Applied Ethics: Sample question 16 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Introduction to Philosophy: Sample question 17 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Logic: Sample question 18 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Ethics: Sample question 19 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Epistemology: Sample question 20 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Metaphysics: Sample question 21 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** African Philosophy: Sample question 22 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Political Philosophy: Sample question 23 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Applied Ethics: Sample question 24 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Introduction to Philosophy: Sample question 25 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Logic: Sample question 26 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Ethics: Sample question 27 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Epistemology: Sample question 28 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Metaphysics: Sample question 29 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** African Philosophy: Sample question 30 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Political Philosophy: Sample question 31 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Applied Ethics: Sample question 32 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Introduction to Philosophy: Sample question 33 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Logic: Sample question 34 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Ethics: Sample question 35 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Epistemology: Sample question 36 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Metaphysics: Sample question 37 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** African Philosophy: Sample question 38 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Political Philosophy: Sample question 39 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Applied Ethics: Sample question 40 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Introduction to Philosophy: Sample question 41 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Logic: Sample question 42 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Ethics: Sample question 43 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Epistemology: Sample question 44 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Metaphysics: Sample question 45 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** African Philosophy: Sample question 46 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Political Philosophy: Sample question 47 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Applied Ethics: Sample question 48 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Introduction to Philosophy: Sample question 49 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Logic: Sample question 50 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Ethics: Sample question 51 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Epistemology: Sample question 52 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Metaphysics: Sample question 53 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** African Philosophy: Sample question 54 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Political Philosophy: Sample question 55 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Applied Ethics: Sample question 56 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Introduction to Philosophy: Sample question 57 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Logic: Sample question 58 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Ethics: Sample question 59 for Philosophy Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Epistemology: Sample question 60 for Philosophy Ordinary Level Paper 1.

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
  where subject = 'Philosophy'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Philosophy

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: LOGIC AND ARGUMENT

**Q1.** Logic and argument: Argument 1 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Logic and argument: Argument 2 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Logic and argument: Argument 3 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Logic and argument: Argument 4 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Logic and argument: Argument 5 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: EPISTEMOLOGY

**Q6.** Epistemology: Argument 6 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Epistemology: Argument 7 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Epistemology: Argument 8 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Epistemology: Argument 9 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Epistemology: Argument 10 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: ETHICS

**Q11.** Ethics: Argument 11 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Ethics: Argument 12 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Ethics: Argument 13 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Ethics: Argument 14 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Ethics: Argument 15 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: POLITICAL PHILOSOPHY

**Q16.** Political philosophy: Argument 16 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Political philosophy: Argument 17 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Political philosophy: Argument 18 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Political philosophy: Argument 19 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Political philosophy: Argument 20 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: METAPHYSICS

**Q21.** Metaphysics: Argument 21 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Metaphysics: Argument 22 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Metaphysics: Argument 23 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Metaphysics: Argument 24 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Metaphysics: Argument 25 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: AFRICAN PHILOSOPHY

**Q26.** African philosophy: Argument 26 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** African philosophy: Argument 27 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** African philosophy: Argument 28 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** African philosophy: Argument 29 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** African philosophy: Argument 30 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: PHILOSOPHY OF SCIENCE

**Q31.** Philosophy of science: Argument 31 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Philosophy of science: Argument 32 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Philosophy of science: Argument 33 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Philosophy of science: Argument 34 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Philosophy of science: Argument 35 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: HUMAN FREEDOM

**Q36.** Human freedom: Argument 36 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Human freedom: Argument 37 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Human freedom: Argument 38 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Human freedom: Argument 39 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Human freedom: Argument 40 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

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
  where subject = 'Philosophy'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Philosophy

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: LOGIC AND ARGUMENT

**Q1.** Logic and argument: Argument 1 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Logic and argument: Argument 2 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Logic and argument: Argument 3 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Logic and argument: Argument 4 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Logic and argument: Argument 5 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: EPISTEMOLOGY

**Q6.** Epistemology: Argument 6 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Epistemology: Argument 7 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Epistemology: Argument 8 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Epistemology: Argument 9 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Epistemology: Argument 10 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: ETHICS

**Q11.** Ethics: Argument 11 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Ethics: Argument 12 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Ethics: Argument 13 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Ethics: Argument 14 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Ethics: Argument 15 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: POLITICAL PHILOSOPHY

**Q16.** Political philosophy: Argument 16 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Political philosophy: Argument 17 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Political philosophy: Argument 18 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Political philosophy: Argument 19 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Political philosophy: Argument 20 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: METAPHYSICS

**Q21.** Metaphysics: Argument 21 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Metaphysics: Argument 22 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Metaphysics: Argument 23 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Metaphysics: Argument 24 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Metaphysics: Argument 25 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: AFRICAN PHILOSOPHY

**Q26.** African philosophy: Argument 26 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** African philosophy: Argument 27 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** African philosophy: Argument 28 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** African philosophy: Argument 29 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** African philosophy: Argument 30 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: PHILOSOPHY OF SCIENCE

**Q31.** Philosophy of science: Argument 31 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Philosophy of science: Argument 32 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Philosophy of science: Argument 33 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Philosophy of science: Argument 34 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Philosophy of science: Argument 35 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: HUMAN FREEDOM

**Q36.** Human freedom: Argument 36 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Human freedom: Argument 37 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Human freedom: Argument 38 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Human freedom: Argument 39 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Human freedom: Argument 40 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

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
  where subject = 'Philosophy'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Philosophy

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: LOGIC AND ARGUMENT

**Q1.** Logic and argument: Argument 1 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Logic and argument: Argument 2 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Logic and argument: Argument 3 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Logic and argument: Argument 4 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Logic and argument: Argument 5 defends a claim about knowledge, morality, freedom, or society. Analyse it using logic and argument and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: EPISTEMOLOGY

**Q6.** Epistemology: Argument 6 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Epistemology: Argument 7 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Epistemology: Argument 8 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Epistemology: Argument 9 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Epistemology: Argument 10 defends a claim about knowledge, morality, freedom, or society. Analyse it using epistemology and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: ETHICS

**Q11.** Ethics: Argument 11 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Ethics: Argument 12 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Ethics: Argument 13 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Ethics: Argument 14 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Ethics: Argument 15 defends a claim about knowledge, morality, freedom, or society. Analyse it using ethics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: POLITICAL PHILOSOPHY

**Q16.** Political philosophy: Argument 16 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Political philosophy: Argument 17 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Political philosophy: Argument 18 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Political philosophy: Argument 19 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Political philosophy: Argument 20 defends a claim about knowledge, morality, freedom, or society. Analyse it using political philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: METAPHYSICS

**Q21.** Metaphysics: Argument 21 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Metaphysics: Argument 22 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Metaphysics: Argument 23 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Metaphysics: Argument 24 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Metaphysics: Argument 25 defends a claim about knowledge, morality, freedom, or society. Analyse it using metaphysics and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: AFRICAN PHILOSOPHY

**Q26.** African philosophy: Argument 26 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** African philosophy: Argument 27 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** African philosophy: Argument 28 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** African philosophy: Argument 29 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** African philosophy: Argument 30 defends a claim about knowledge, morality, freedom, or society. Analyse it using african philosophy and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: PHILOSOPHY OF SCIENCE

**Q31.** Philosophy of science: Argument 31 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Philosophy of science: Argument 32 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Philosophy of science: Argument 33 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Philosophy of science: Argument 34 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Philosophy of science: Argument 35 defends a claim about knowledge, morality, freedom, or society. Analyse it using philosophy of science and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: HUMAN FREEDOM

**Q36.** Human freedom: Argument 36 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Human freedom: Argument 37 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Human freedom: Argument 38 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Human freedom: Argument 39 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Human freedom: Argument 40 defends a claim about knowledge, morality, freedom, or society. Analyse it using human freedom and test its validity.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

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
  where subject = 'Philosophy'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Philosophy',
  'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level PHILOSOPHY P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** arts
**Subject:** Philosophy

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ESSAY - LOGIC

**Q1.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: ESSAY - ETHICS

**Q2.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ESSAY - EPISTEMOLOGY

**Q3.** Essay - Epistemology: A detailed examination question covering essay - epistemology concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: ESSAY - METAPHYSICS

**Q4.** Essay - Metaphysics: A detailed examination question covering essay - metaphysics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: ESSAY - AFRICAN PHILOSOPHY

**Q5.** Essay - African Philosophy: A detailed examination question covering essay - african philosophy concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: ESSAY - POLITICAL

**Q6.** Essay - Political: A detailed examination question covering essay - political concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ESSAY - APPLIED

**Q7.** Essay - Applied: A detailed examination question covering essay - applied concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: TEXT ANALYSIS

**Q8.** Text Analysis: A detailed examination question covering text analysis concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: ESSAY - LOGIC

**Q9.** Essay - Logic: A detailed examination question covering essay - logic concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: ESSAY - ETHICS

**Q10.** Essay - Ethics: A detailed examination question covering essay - ethics concepts and applications.

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