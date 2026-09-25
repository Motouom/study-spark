begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Further Mathematics',
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The value of $i^4$ is:

A. 1  
B. -1  
C. i  
D. -i  

---

**Q2.** The determinant of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 5  
B. 11  
C. 6  
D. 10  

---

**Q3.** The inverse of $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$ is:

A. $\begin{pmatrix} 1/2 & 0 \\ 0 & 1/4 \end{pmatrix}$  
B. $\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$  
C. $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$  
D. $\begin{pmatrix} 0 & 2 \\ 4 & 0 \end{pmatrix}$  

---

**Q4.** The trace of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 6  
B. 11  
C. 10  
D. 5  

---

**Q5.** The eigenvalues of $\begin{pmatrix} 2 & 0 \\ 0 & 3 \end{pmatrix}$ are:

A. 2 and 3  
B. 0 and 1  
C. 5 and 6  
D. 1 and 2  

---

**Q6.** The dot product of $\mathbf{i} + 2\mathbf{j}$ and $2\mathbf{i} + 3\mathbf{j}$ is:

A. 8  
B. 5  
C. 6  
D. 7  

---

**Q7.** The vectors $\mathbf{a} = 2\mathbf{i} + \mathbf{j}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j}$ are:

A. parallel  
B. perpendicular  
C. equal  
D. opposite  

---

**Q8.** The sum $1 + 2 + 3 + \cdots + n$ equals:

A. $\frac{n(n-1)}{2}$  
B. $\frac{n(n+1)}{2}$  
C. $\frac{n(n+1)(2n+1)}{6}$  
D. $n^2$  

---

**Q9.** The sum $1^2 + 2^2 + \cdots + n^2$ equals:

A. $\frac{n(n+1)}{2}$  
B. $n^3$  
C. $\frac{n(n+1)(2n+1)}{6}$  
D. $\frac{n^2(n+1)}{2}$  

---

**Q10.** The sum to infinity of $1 + \frac{1}{2} + \frac{1}{4} + \cdots$ is:

A. 1  
B. 3  
C. $\frac{3}{2}$  
D. 2  

---

**Q11.** The coefficient of $x^2$ in $(1 + x)^4$ is:

A. 4  
B. 8  
C. 6  
D. 12  

---

**Q12.** The remainder when $x^3 - 2x + 1$ is divided by $x - 1$ is:

A. 1  
B. -1  
C. 2  
D. 0  

---

**Q13.** Given that $x - 1$ is a factor of $x^3 - 1$, the other factor is:

A. $x^2 + 1$  
B. $x^2 + x + 1$  
C. $x^2 - x + 1$  
D. $x^2 - 1$  

---

**Q14.** The value of $\lim_{x \to 0} \frac{\sin x}{x}$ is:

A. ∞  
B. 1  
C. undefined  
D. 0  

---

**Q15.** The value of $\lim_{x \to \infty} \frac{1}{x}$ is:

A. ∞  
B. 1  
C. 0  
D. undefined  

---

**Q16.** The general solution of $\frac{dy}{dx} = \frac{y}{x}$ is:

A. $y = kx^2$  
B. $y = k/x$  
C. $y = e^{kx}$  
D. $y = kx$  

---

**Q17.** The roots of $x^2 - 5x + 6 = 0$ are:

A. -2 and -3  
B. 5 and 6  
C. 2 and 3  
D. 1 and 6  

---

**Q18.** The sum of the roots of $x^2 - 5x + 6 = 0$ is:

A. -5  
B. -6  
C. 6  
D. 5  

---

**Q19.** The product of the roots of $x^2 - 5x + 6 = 0$ is:

A. -5  
B. 6  
C. 5  
D. -6  

---

**Q20.** The partial fractions of $\frac{1}{(x-1)(x+1)}$ are:

A. $\frac{1}{x-1} - \frac{1}{x+1}$  
B. $\frac{1/2}{x-1} - \frac{1/2}{x+1}$  
C. $\frac{1/2}{x-1} + \frac{1/2}{x+1}$  
D. $\frac{1}{x-1} + \frac{1}{x+1}$  

---

**Q21.** The value of $(1 + i)^2$ is:

A. -2  
B. 2  
C. 2i  
D. -2i  

---

**Q22.** The value of $(1 + i)^4$ is:

A. -4i  
B. 4  
C. 4i  
D. -4  

---

**Q23.** The modulus of $\frac{1}{i}$ is:

A. -1  
B. i  
C. 1  
D. 0  

---

**Q24.** The argument of $-1$ is:

A. 270°  
B. 90°  
C. 0°  
D. 180°  

---

**Q25.** The modulus of $3 + 4i$ is:

A. 5  
B. 7  
C. 1  
D. 25  

---

**Q26.** The argument of $1 + i$ is:

A. 45°  
B. 90°  
C. 30°  
D. 135°  

---

**Q27.** The complex conjugate of $2 - 3i$ is:

A. 2 + 3i  
B. -2 + 3i  
C. 2 - 3i  
D. -2 - 3i  

---

**Q28.** The product $(1 + i)(1 - i)$ equals:

A. 2  
B. 1  
C. -2  
D. 0  

---

**Q29.** The roots of $z^2 + 4 = 0$ are:

A. ±2i  
B. ±4  
C. ±2  
D. ±4i  

---

**Q30.** The value of $i^2$ is:

A. -1  
B. -i  
C. i  
D. 1  

---

**Q31.** The work done by a force of 10 N moving a body 5 m is:

A. 2 J  
B. 50 J  
C. 15 J  
D. 0.5 J  

---

**Q32.** The power of a machine doing 300 J of work in 10 s is:

A. 3000 W  
B. 30 W  
C. 0.03 W  
D. 3 W  

---

**Q33.** The maximum height reached by a body projected at 20 m/s (g = 10 m/s²) is:

A. 10 m  
B. 40 m  
C. 20 m  
D. 2 m  

---

**Q34.** The time of flight of a projectile fired at 50 m/s at 30° to the horizontal (g = 10 m/s²) is:

A. 10 s  
B. 2.5 s  
C. 50 s  
D. 5 s  

---

**Q35.** The horizontal range of a projectile fired at 50 m/s at 30° (g = 10 m/s²) is:

A. 125 m  
B. 433 m  
C. 216.5 m  
D. 250 m  

---

**Q36.** A uniform rod is balanced at its centre. The principle of moments states:

A. sum of forces = 0  
B. power = work ÷ time  
C. work = force × distance  
D. sum of clockwise moments = sum of anticlockwise moments  

---

**Q37.** The centre of mass of a uniform rod is at its:

A. one-quarter point  
B. midpoint  
C. end  
D. centre of gravity of the rod  

---

**Q38.** The probability of getting exactly 6 heads in 10 tosses of a fair coin is:

A. $\binom{10}{6}(1/2)^6$  
B. $\binom{10}{6}(1/2)^{10}$  
C. $6/10$  
D. $(1/2)^6$  

---

**Q39.** The mean of a binomial distribution with n = 10 and p = 0.5 is:

A. 10  
B. 2.5  
C. 5  
D. 0.5  

---

**Q40.** The variance of a binomial distribution with n = 10 and p = 0.5 is:

A. 10  
B. 5  
C. 0.5  
D. 2.5  

---

**Q41.** The mean of a Poisson distribution with parameter λ is:

A. √λ  
B. 1/λ  
C. λ  
D. λ²  

---

**Q42.** The variance of a Poisson distribution with parameter λ is:

A. √λ  
B. 1/λ  
C. λ²  
D. λ  

---

**Q43.** For a standard normal distribution, the mean is:

A. 100  
B. 0  
C. 1  
D. 50  

---

**Q44.** For a standard normal distribution, the variance is:

A. 100  
B. 1  
C. 50  
D. 0  

---

**Q45.** The z-score of a value 60 from a normal distribution with mean 50 and standard deviation 5 is:

A. 1.2  
B. 10  
C. 2  
D. 0.5  

---

**Q46.** The 95% confidence interval for a mean uses the z-value:

A. 0.95  
B. 1.64  
C. 2.58  
D. 1.96  

---

**Q47.** The 99% confidence interval for a mean uses the z-value:

A. 0.99  
B. 1.64  
C. 2.58  
D. 1.96  

---

**Q48.** A sample of 100 items has mean 60 and standard deviation 8. The standard error of the mean is:

A. 80  
B. 0.08  
C. 8  
D. 0.8  

---

**Q49.** The Pearson correlation coefficient ranges from:

A. -1 to 1  
B. 0 to 1  
C. -∞ to ∞  
D. 0 to 100  

---

**Q50.** A correlation coefficient of 0 indicates:

A. no linear correlation  
B. perfect positive correlation  
C. strong correlation  
D. perfect negative correlation  

---

**Q51.** The probability of getting a sum of 7 when two dice are thrown is:

A. 6/36  
B. 7/36  
C. 1/36  
D. 1/6  

---

**Q52.** The probability of drawing a red ball from a bag of 3 red and 5 blue balls is:

A. 3/8  
B. 3/5  
C. 1/8  
D. 5/8  

---

**Q53.** Two events are independent if:

A. P(A∩B) = P(A)P(B)  
B. P(A) = P(B)  
C. P(A∩B) = P(A) + P(B)  
D. P(A∪B) = P(A)P(B)  

---

**Q54.** The probability of an impossible event is:

A. 0  
B. undefined  
C. 0.5  
D. 1  

---

**Q55.** The probability of a certain event is:

A. 0  
B. 1  
C. 0.5  
D. undefined  

---

**Q56.** The SI unit of force is the:

A. joule  
B. newton  
C. pascal  
D. watt  

---

**Q57.** The SI unit of momentum is:

A. kg m/s²  
B. N m  
C. kg m/s  
D. J  

---

**Q58.** The SI unit of impulse is:

A. N m  
B. J  
C. W  
D. N s  

---

**Q59.** The acceleration of a body of mass 2 kg under a force of 10 N is:

A. 2 m/s²  
B. 0.2 m/s²  
C. 5 m/s²  
D. 20 m/s²  

---

**Q60.** The momentum of a 3 kg body moving at 4 m/s is:

A. 7 kg m/s  
B. 48 kg m/s  
C. 1 kg m/s  
D. 12 kg m/s  

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

commit;