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
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

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
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4

## Structural Question Bank — Pure mathematics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PURE MATHEMATICS

**Q1.** (a) Express $z = 3 + 4i$ in modulus-argument form. *(4 marks)*

(b) Find the modulus and argument of $z^2$. *(4 marks)*

(c) Solve the equation $z^2 + 2z + 5 = 0$, giving your answers in the form $a + bi$. *(4 marks)*

---

**Q2.** (a) Given $z_1 = 2 + 3i$ and $z_2 = 1 - i$, find $z_1 z_2$ and $\frac{z_1}{z_2}$. *(6 marks)*

(b) Find the square roots of $-8 + 6i$. *(6 marks)*

---

**Q3.** (a) Express $z = 2(\cos 60^\circ + i\sin 60^\circ)$ in the form $a + bi$. *(3 marks)*

(b) Use De Moivre''s theorem to find $(1 + i)^8$. *(5 marks)*

(c) Solve $z^3 = 8$, giving all three roots. *(5 marks)*

---

**Q4.** (a) State the conditions for two matrices to be multiplied. *(2 marks)*

(b) Given $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ and $B = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$, find $AB$ and $BA$. *(6 marks)*

(c) Show that $AB \neq BA$. *(2 marks)*

---

**Q5.** (a) Find the determinant and inverse of $A = \begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$. *(5 marks)*

(b) Use the inverse matrix method to solve the simultaneous equations $2x + 3y = 7$ and $x + 4y = 6$. *(5 marks)*

---

**Q6.** (a) Find the eigenvalues and eigenvectors of $A = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$. *(6 marks)*

(b) State the trace and determinant of $A$. *(2 marks)*

(c) Verify that the sum of the eigenvalues equals the trace. *(2 marks)*

---

**Q7.** (a) Given $\mathbf{a} = 2\mathbf{i} + 3\mathbf{j} - \mathbf{k}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j} + 4\mathbf{k}$, find $\mathbf{a} \cdot \mathbf{b}$. *(3 marks)*

(b) Find the angle between $\mathbf{a}$ and $\mathbf{b}$. *(4 marks)*

(c) Find $\mathbf{a} \times \mathbf{b}$. *(4 marks)*

---

**Q8.** (a) Find the equation of the plane passing through the points $(1, 2, 3)$, $(2, 0, 1)$, and $(0, 1, 2)$. *(6 marks)*

(b) Find the distance from the point $(1, 1, 1)$ to this plane. *(4 marks)*

---

**Q9.** (a) Prove by induction that $1^2 + 2^2 + 3^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Prove by induction that $3^n > n^2$ for all positive integers $n$. *(5 marks)*

---

**Q10.** (a) Prove by contradiction that $\sqrt{2}$ is irrational. *(5 marks)*

(b) Prove that the sum of two odd numbers is even. *(3 marks)*

(c) Prove that $n^3 - n$ is divisible by 6 for all positive integers $n$. *(5 marks)*

---

**Q11.** (a) Find the sum of the series $1 + 2 + 3 + \cdots + n$. *(3 marks)*

(b) Find the sum of the series $1^2 + 3^2 + 5^2 + \cdots + (2n-1)^2$. *(5 marks)*

(c) Determine whether the series $\sum_{n=1}^{\infty} \frac{1}{n(n+1)}$ converges, and find its sum. *(5 marks)*

---

**Q12.** (a) State the binomial theorem. *(2 marks)*

(b) Expand $(1 + x)^{10}$ up to the term in $x^3$. *(4 marks)*

(c) Find the coefficient of $x^5$ in the expansion of $(2 - 3x)^8$. *(5 marks)*

---

**Q13.** (a) Find the first three terms in the binomial expansion of $\frac{1}{\sqrt{1 + x}}$ for $|x| < 1$. *(5 marks)*

(b) Use your expansion to approximate $\frac{1}{\sqrt{1.1}}$. *(3 marks)*

(c) State the range of validity of the expansion. *(2 marks)*

---

**Q14.** (a) Find the general solution of the differential equation $\frac{dy}{dx} = \frac{y}{x}$. *(4 marks)*

(b) Solve the differential equation $\frac{dy}{dx} + 2y = e^{-x}$ given that $y = 1$ when $x = 0$. *(6 marks)*

---

**Q15.** (a) Solve the differential equation $\frac{d^2y}{dx^2} - 3\frac{dy}{dx} + 2y = 0$. *(5 marks)*

(b) Given that $y = 1$ and $\frac{dy}{dx} = 0$ when $x = 0$, find the particular solution. *(4 marks)*

---

**Q16.** (a) Express $f(x) = \frac{3x + 1}{(x-1)(x+2)}$ in partial fractions. *(5 marks)*

(b) Express $\frac{2x^2 + 3x + 1}{(x+1)(x^2 + 1)}$ in partial fractions. *(6 marks)*

---

**Q17.** (a) Find the roots of the equation $x^3 - 6x^2 + 11x - 6 = 0$. *(5 marks)*

(b) Given that $1 - i$ is a root of $x^3 - 3x^2 + 4x - 2 = 0$, find the other roots. *(5 marks)*

---

**Q18.** (a) State the remainder theorem. *(2 marks)*

(b) Find the remainder when $x^4 - 3x^3 + 2x - 1$ is divided by $x - 2$. *(4 marks)*

(c) Given that $x - 1$ is a factor of $x^3 + ax^2 + bx - 6$, and the remainder is 4 when divided by $x - 2$, find $a$ and $b$. *(6 marks)*

---

**Q19.** (a) Find $\lim_{x \to 0} \frac{\sin 3x}{x}$. *(3 marks)*

(b) Find $\lim_{x \to \infty} \frac{3x^2 + 2x}{x^2 - 1}$. *(3 marks)*

(c) Find $\lim_{x \to 0} \frac{e^x - 1}{x}$. *(3 marks)*

---

**Q20.** (a) Find the sum to infinity of the geometric series $1 + \frac{1}{2} + \frac{1}{4} + \cdots$. *(3 marks)*

(b) Find the sum of the first $n$ terms of the arithmetic series $3 + 7 + 11 + \cdots$. *(4 marks)*

(c) The sum of the first $n$ terms of a series is $n^2 + 3n$. Find the $n$th term. *(4 marks)*
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
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5

## Structural Question Bank — Mechanics and statistics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MECHANICS AND STATISTICS

**Q1.** (a) State Newton''s second law of motion. *(2 marks)*

(b) A force of 10 N acts on a body of mass 2 kg. Calculate the acceleration. *(3 marks)*

(c) A body of mass 5 kg is pulled along a rough horizontal surface by a force of 20 N. If the frictional force is 8 N, calculate the acceleration. *(5 marks)*

---

**Q2.** (a) Define the terms "momentum" and "impulse". *(4 marks)*

(b) A ball of mass 0.2 kg moving at 5 m/s strikes a wall and rebounds at 4 m/s. Calculate the impulse. *(4 marks)*

(c) State the principle of conservation of momentum. *(2 marks)*

---

**Q3.** (a) A projectile is fired at 50 m/s at an angle of $30^\circ$ to the horizontal. Calculate the time of flight. *(4 marks)*

(b) Calculate the maximum height reached. *(4 marks)*

(c) Calculate the horizontal range. *(4 marks)*

---

**Q4.** (a) A particle moves in a straight line with acceleration $a = 2t$ m/s². Given that its velocity is 3 m/s when $t = 0$, find its velocity at time $t$. *(4 marks)*

(b) Find its displacement at time $t$ given that it starts from the origin. *(4 marks)*

(c) Find the displacement when $t = 3$ s. *(3 marks)*

---

**Q5.** (a) State the principle of moments. *(2 marks)*

(b) A uniform rod AB of length 4 m and weight 40 N is pivoted at its centre. A weight of 20 N is placed at A. Calculate the force needed at B to balance the rod. *(5 marks)*

(c) A uniform ladder of weight 200 N rests against a smooth vertical wall. Find the reactions at the wall and the ground. *(6 marks)*

---

**Q6.** (a) Define the terms "centre of mass" and "centre of gravity". *(4 marks)*

(b) Find the centre of mass of a uniform triangular lamina. *(4 marks)*

(c) A uniform rod of length 6 m and weight 60 N has a 30 N weight attached at one end. Find the position of the centre of mass. *(5 marks)*

---

**Q7.** (a) Define the term "work done". *(2 marks)*

(b) A force of 30 N acts at an angle of $60^\circ$ to the direction of motion. Calculate the work done in moving the body 10 m. *(4 marks)*

(c) A body of mass 4 kg is raised through 5 m. Calculate the work done against gravity. (Take $g = 10$ m/s²) *(4 marks)*

---

**Q8.** (a) State the work-energy theorem. *(2 marks)*

(b) A body of mass 2 kg moving at 4 m/s is brought to rest by a constant force. Calculate the work done. *(4 marks)*

(c) A car of mass 1000 kg accelerates from 10 m/s to 20 m/s. Calculate the work done. *(5 marks)*

---

**Q9.** (a) Define the terms "kinetic energy" and "potential energy". *(4 marks)*

(b) A body of mass 3 kg is projected vertically upwards with a speed of 20 m/s. Calculate its maximum height. (Take $g = 10$ m/s²) *(5 marks)*

(c) Calculate the kinetic energy of the body when it has risen 10 m. *(5 marks)*

---

**Q10.** (a) Define the term "power". *(2 marks)*

(b) A motor lifts a load of 500 kg through 20 m in 25 s. Calculate the power output. (Take $g = 10$ m/s²) *(5 marks)*

(c) A car of mass 1200 kg moves at a constant speed of 30 m/s against a resistance of 400 N. Calculate the power developed. *(5 marks)*

---

**Q11.** (a) Define the terms "discrete" and "continuous" random variables. *(4 marks)*

(b) A discrete random variable $X$ has the probability distribution $P(X = x) = kx$ for $x = 1, 2, 3, 4$. Find $k$. *(4 marks)*

(c) Find $E(X)$ and $Var(X)$ for this distribution. *(5 marks)*

---

**Q12.** (a) State the conditions for a binomial distribution. *(3 marks)*

(b) A fair coin is tossed 10 times. Find the probability of getting exactly 6 heads. *(4 marks)*

(c) Find the mean and variance of this binomial distribution. *(3 marks)*

---

**Q13.** (a) State the probability density function of a normal distribution. *(2 marks)*

(b) Given that $X \sim N(50, 16)$, find $P(46 < X < 54)$. *(5 marks)*

(c) Find the value of $x$ such that $P(X < x) = 0.95$. *(5 marks)*

---

**Q14.** (a) Define the term "Poisson distribution". *(2 marks)*

(b) The number of accidents per day at a junction follows a Poisson distribution with mean 2. Find the probability of exactly 3 accidents in a day. *(4 marks)*

(c) Find the probability of at least 1 accident in a day. *(4 marks)*

---

**Q15.** (a) Define the terms "population" and "sample". *(4 marks)*

(b) State three methods of sampling. *(3 marks)*

(c) Explain the difference between a parameter and a statistic. *(4 marks)*

---

**Q16.** (a) Define the term "confidence interval". *(2 marks)*

(b) A sample of 100 students has a mean score of 60 with a standard deviation of 8. Construct a 95% confidence interval for the population mean. *(6 marks)*

(c) State the effect of increasing the sample size on the confidence interval. *(3 marks)*

---

**Q17.** (a) State the null and alternative hypotheses for a two-tailed test of a population mean. *(4 marks)*

(b) A sample of 50 items has a mean of 102 and standard deviation 10. Test at the 5% level whether the population mean differs from 100. *(6 marks)*

---

**Q18.** (a) Define the term "correlation". *(2 marks)*

(b) Calculate the Pearson correlation coefficient for the data: $x = 1, 2, 3, 4, 5$; $y = 2, 4, 5, 4, 5$. *(6 marks)*

(c) Interpret your result. *(3 marks)*

---

**Q19.** (a) Define the term "regression". *(2 marks)*

(b) Find the equation of the least squares regression line of $y$ on $x$ for the data: $x = 1, 2, 3, 4, 5$; $y = 2, 4, 5, 4, 5$. *(6 marks)*

(c) Estimate $y$ when $x = 6$. *(3 marks)*

---

**Q20.** (a) Define the term "probability". *(2 marks)*

(b) Two dice are thrown. Find the probability that the sum is 7. *(4 marks)*

(c) A bag contains 3 red and 5 blue balls. Two balls are drawn without replacement. Find the probability that both are red. *(5 marks)*
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
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6

## Structural Question Bank — Pure mathematics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PURE MATHEMATICS

**Q1.** (a) Express $z = 3 + 4i$ in modulus-argument form. *(4 marks)*

(b) Find the modulus and argument of $z^2$. *(4 marks)*

(c) Solve the equation $z^2 + 2z + 5 = 0$, giving your answers in the form $a + bi$. *(4 marks)*

---

**Q2.** (a) Given $z_1 = 2 + 3i$ and $z_2 = 1 - i$, find $z_1 z_2$ and $\frac{z_1}{z_2}$. *(6 marks)*

(b) Find the square roots of $-8 + 6i$. *(6 marks)*

---

**Q3.** (a) Express $z = 2(\cos 60^\circ + i\sin 60^\circ)$ in the form $a + bi$. *(3 marks)*

(b) Use De Moivre''s theorem to find $(1 + i)^8$. *(5 marks)*

(c) Solve $z^3 = 8$, giving all three roots. *(5 marks)*

---

**Q4.** (a) State the conditions for two matrices to be multiplied. *(2 marks)*

(b) Given $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ and $B = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$, find $AB$ and $BA$. *(6 marks)*

(c) Show that $AB \neq BA$. *(2 marks)*

---

**Q5.** (a) Find the determinant and inverse of $A = \begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$. *(5 marks)*

(b) Use the inverse matrix method to solve the simultaneous equations $2x + 3y = 7$ and $x + 4y = 6$. *(5 marks)*

---

**Q6.** (a) Find the eigenvalues and eigenvectors of $A = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$. *(6 marks)*

(b) State the trace and determinant of $A$. *(2 marks)*

(c) Verify that the sum of the eigenvalues equals the trace. *(2 marks)*

---

**Q7.** (a) Given $\mathbf{a} = 2\mathbf{i} + 3\mathbf{j} - \mathbf{k}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j} + 4\mathbf{k}$, find $\mathbf{a} \cdot \mathbf{b}$. *(3 marks)*

(b) Find the angle between $\mathbf{a}$ and $\mathbf{b}$. *(4 marks)*

(c) Find $\mathbf{a} \times \mathbf{b}$. *(4 marks)*

---

**Q8.** (a) Find the equation of the plane passing through the points $(1, 2, 3)$, $(2, 0, 1)$, and $(0, 1, 2)$. *(6 marks)*

(b) Find the distance from the point $(1, 1, 1)$ to this plane. *(4 marks)*

---

**Q9.** (a) Prove by induction that $1^2 + 2^2 + 3^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Prove by induction that $3^n > n^2$ for all positive integers $n$. *(5 marks)*

---

**Q10.** (a) Prove by contradiction that $\sqrt{2}$ is irrational. *(5 marks)*

(b) Prove that the sum of two odd numbers is even. *(3 marks)*

(c) Prove that $n^3 - n$ is divisible by 6 for all positive integers $n$. *(5 marks)*

---

**Q11.** (a) Find the sum of the series $1 + 2 + 3 + \cdots + n$. *(3 marks)*

(b) Find the sum of the series $1^2 + 3^2 + 5^2 + \cdots + (2n-1)^2$. *(5 marks)*

(c) Determine whether the series $\sum_{n=1}^{\infty} \frac{1}{n(n+1)}$ converges, and find its sum. *(5 marks)*

---

**Q12.** (a) State the binomial theorem. *(2 marks)*

(b) Expand $(1 + x)^{10}$ up to the term in $x^3$. *(4 marks)*

(c) Find the coefficient of $x^5$ in the expansion of $(2 - 3x)^8$. *(5 marks)*

---

**Q13.** (a) Find the first three terms in the binomial expansion of $\frac{1}{\sqrt{1 + x}}$ for $|x| < 1$. *(5 marks)*

(b) Use your expansion to approximate $\frac{1}{\sqrt{1.1}}$. *(3 marks)*

(c) State the range of validity of the expansion. *(2 marks)*

---

**Q14.** (a) Find the general solution of the differential equation $\frac{dy}{dx} = \frac{y}{x}$. *(4 marks)*

(b) Solve the differential equation $\frac{dy}{dx} + 2y = e^{-x}$ given that $y = 1$ when $x = 0$. *(6 marks)*

---

**Q15.** (a) Solve the differential equation $\frac{d^2y}{dx^2} - 3\frac{dy}{dx} + 2y = 0$. *(5 marks)*

(b) Given that $y = 1$ and $\frac{dy}{dx} = 0$ when $x = 0$, find the particular solution. *(4 marks)*

---

**Q16.** (a) Express $f(x) = \frac{3x + 1}{(x-1)(x+2)}$ in partial fractions. *(5 marks)*

(b) Express $\frac{2x^2 + 3x + 1}{(x+1)(x^2 + 1)}$ in partial fractions. *(6 marks)*

---

**Q17.** (a) Find the roots of the equation $x^3 - 6x^2 + 11x - 6 = 0$. *(5 marks)*

(b) Given that $1 - i$ is a root of $x^3 - 3x^2 + 4x - 2 = 0$, find the other roots. *(5 marks)*

---

**Q18.** (a) State the remainder theorem. *(2 marks)*

(b) Find the remainder when $x^4 - 3x^3 + 2x - 1$ is divided by $x - 2$. *(4 marks)*

(c) Given that $x - 1$ is a factor of $x^3 + ax^2 + bx - 6$, and the remainder is 4 when divided by $x - 2$, find $a$ and $b$. *(6 marks)*

---

**Q19.** (a) Find $\lim_{x \to 0} \frac{\sin 3x}{x}$. *(3 marks)*

(b) Find $\lim_{x \to \infty} \frac{3x^2 + 2x}{x^2 - 1}$. *(3 marks)*

(c) Find $\lim_{x \to 0} \frac{e^x - 1}{x}$. *(3 marks)*

---

**Q20.** (a) Find the sum to infinity of the geometric series $1 + \frac{1}{2} + \frac{1}{4} + \cdots$. *(3 marks)*

(b) Find the sum of the first $n$ terms of the arithmetic series $3 + 7 + 11 + \cdots$. *(4 marks)*

(c) The sum of the first $n$ terms of a series is $n^2 + 3n$. Find the $n$th term. *(4 marks)*
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
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7

## Structural Question Bank — Mechanics and statistics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MECHANICS AND STATISTICS

**Q1.** (a) State Newton''s second law of motion. *(2 marks)*

(b) A force of 10 N acts on a body of mass 2 kg. Calculate the acceleration. *(3 marks)*

(c) A body of mass 5 kg is pulled along a rough horizontal surface by a force of 20 N. If the frictional force is 8 N, calculate the acceleration. *(5 marks)*

---

**Q2.** (a) Define the terms "momentum" and "impulse". *(4 marks)*

(b) A ball of mass 0.2 kg moving at 5 m/s strikes a wall and rebounds at 4 m/s. Calculate the impulse. *(4 marks)*

(c) State the principle of conservation of momentum. *(2 marks)*

---

**Q3.** (a) A projectile is fired at 50 m/s at an angle of $30^\circ$ to the horizontal. Calculate the time of flight. *(4 marks)*

(b) Calculate the maximum height reached. *(4 marks)*

(c) Calculate the horizontal range. *(4 marks)*

---

**Q4.** (a) A particle moves in a straight line with acceleration $a = 2t$ m/s². Given that its velocity is 3 m/s when $t = 0$, find its velocity at time $t$. *(4 marks)*

(b) Find its displacement at time $t$ given that it starts from the origin. *(4 marks)*

(c) Find the displacement when $t = 3$ s. *(3 marks)*

---

**Q5.** (a) State the principle of moments. *(2 marks)*

(b) A uniform rod AB of length 4 m and weight 40 N is pivoted at its centre. A weight of 20 N is placed at A. Calculate the force needed at B to balance the rod. *(5 marks)*

(c) A uniform ladder of weight 200 N rests against a smooth vertical wall. Find the reactions at the wall and the ground. *(6 marks)*

---

**Q6.** (a) Define the terms "centre of mass" and "centre of gravity". *(4 marks)*

(b) Find the centre of mass of a uniform triangular lamina. *(4 marks)*

(c) A uniform rod of length 6 m and weight 60 N has a 30 N weight attached at one end. Find the position of the centre of mass. *(5 marks)*

---

**Q7.** (a) Define the term "work done". *(2 marks)*

(b) A force of 30 N acts at an angle of $60^\circ$ to the direction of motion. Calculate the work done in moving the body 10 m. *(4 marks)*

(c) A body of mass 4 kg is raised through 5 m. Calculate the work done against gravity. (Take $g = 10$ m/s²) *(4 marks)*

---

**Q8.** (a) State the work-energy theorem. *(2 marks)*

(b) A body of mass 2 kg moving at 4 m/s is brought to rest by a constant force. Calculate the work done. *(4 marks)*

(c) A car of mass 1000 kg accelerates from 10 m/s to 20 m/s. Calculate the work done. *(5 marks)*

---

**Q9.** (a) Define the terms "kinetic energy" and "potential energy". *(4 marks)*

(b) A body of mass 3 kg is projected vertically upwards with a speed of 20 m/s. Calculate its maximum height. (Take $g = 10$ m/s²) *(5 marks)*

(c) Calculate the kinetic energy of the body when it has risen 10 m. *(5 marks)*

---

**Q10.** (a) Define the term "power". *(2 marks)*

(b) A motor lifts a load of 500 kg through 20 m in 25 s. Calculate the power output. (Take $g = 10$ m/s²) *(5 marks)*

(c) A car of mass 1200 kg moves at a constant speed of 30 m/s against a resistance of 400 N. Calculate the power developed. *(5 marks)*

---

**Q11.** (a) Define the terms "discrete" and "continuous" random variables. *(4 marks)*

(b) A discrete random variable $X$ has the probability distribution $P(X = x) = kx$ for $x = 1, 2, 3, 4$. Find $k$. *(4 marks)*

(c) Find $E(X)$ and $Var(X)$ for this distribution. *(5 marks)*

---

**Q12.** (a) State the conditions for a binomial distribution. *(3 marks)*

(b) A fair coin is tossed 10 times. Find the probability of getting exactly 6 heads. *(4 marks)*

(c) Find the mean and variance of this binomial distribution. *(3 marks)*

---

**Q13.** (a) State the probability density function of a normal distribution. *(2 marks)*

(b) Given that $X \sim N(50, 16)$, find $P(46 < X < 54)$. *(5 marks)*

(c) Find the value of $x$ such that $P(X < x) = 0.95$. *(5 marks)*

---

**Q14.** (a) Define the term "Poisson distribution". *(2 marks)*

(b) The number of accidents per day at a junction follows a Poisson distribution with mean 2. Find the probability of exactly 3 accidents in a day. *(4 marks)*

(c) Find the probability of at least 1 accident in a day. *(4 marks)*

---

**Q15.** (a) Define the terms "population" and "sample". *(4 marks)*

(b) State three methods of sampling. *(3 marks)*

(c) Explain the difference between a parameter and a statistic. *(4 marks)*

---

**Q16.** (a) Define the term "confidence interval". *(2 marks)*

(b) A sample of 100 students has a mean score of 60 with a standard deviation of 8. Construct a 95% confidence interval for the population mean. *(6 marks)*

(c) State the effect of increasing the sample size on the confidence interval. *(3 marks)*

---

**Q17.** (a) State the null and alternative hypotheses for a two-tailed test of a population mean. *(4 marks)*

(b) A sample of 50 items has a mean of 102 and standard deviation 10. Test at the 5% level whether the population mean differs from 100. *(6 marks)*

---

**Q18.** (a) Define the term "correlation". *(2 marks)*

(b) Calculate the Pearson correlation coefficient for the data: $x = 1, 2, 3, 4, 5$; $y = 2, 4, 5, 4, 5$. *(6 marks)*

(c) Interpret your result. *(3 marks)*

---

**Q19.** (a) Define the term "regression". *(2 marks)*

(b) Find the equation of the least squares regression line of $y$ on $x$ for the data: $x = 1, 2, 3, 4, 5$; $y = 2, 4, 5, 4, 5$. *(6 marks)*

(c) Estimate $y$ when $x = 6$. *(3 marks)*

---

**Q20.** (a) Define the term "probability". *(2 marks)*

(b) Two dice are thrown. Find the probability that the sum is 7. *(4 marks)*

(c) A bag contains 3 red and 5 blue balls. Two balls are drawn without replacement. Find the probability that both are red. *(5 marks)*
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
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8

## Structural Question Bank — Pure mathematics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PURE MATHEMATICS

**Q1.** (a) Express $z = 3 + 4i$ in modulus-argument form. *(4 marks)*

(b) Find the modulus and argument of $z^2$. *(4 marks)*

(c) Solve the equation $z^2 + 2z + 5 = 0$, giving your answers in the form $a + bi$. *(4 marks)*

---

**Q2.** (a) Given $z_1 = 2 + 3i$ and $z_2 = 1 - i$, find $z_1 z_2$ and $\frac{z_1}{z_2}$. *(6 marks)*

(b) Find the square roots of $-8 + 6i$. *(6 marks)*

---

**Q3.** (a) Express $z = 2(\cos 60^\circ + i\sin 60^\circ)$ in the form $a + bi$. *(3 marks)*

(b) Use De Moivre''s theorem to find $(1 + i)^8$. *(5 marks)*

(c) Solve $z^3 = 8$, giving all three roots. *(5 marks)*

---

**Q4.** (a) State the conditions for two matrices to be multiplied. *(2 marks)*

(b) Given $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ and $B = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$, find $AB$ and $BA$. *(6 marks)*

(c) Show that $AB \neq BA$. *(2 marks)*

---

**Q5.** (a) Find the determinant and inverse of $A = \begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$. *(5 marks)*

(b) Use the inverse matrix method to solve the simultaneous equations $2x + 3y = 7$ and $x + 4y = 6$. *(5 marks)*

---

**Q6.** (a) Find the eigenvalues and eigenvectors of $A = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$. *(6 marks)*

(b) State the trace and determinant of $A$. *(2 marks)*

(c) Verify that the sum of the eigenvalues equals the trace. *(2 marks)*

---

**Q7.** (a) Given $\mathbf{a} = 2\mathbf{i} + 3\mathbf{j} - \mathbf{k}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j} + 4\mathbf{k}$, find $\mathbf{a} \cdot \mathbf{b}$. *(3 marks)*

(b) Find the angle between $\mathbf{a}$ and $\mathbf{b}$. *(4 marks)*

(c) Find $\mathbf{a} \times \mathbf{b}$. *(4 marks)*

---

**Q8.** (a) Find the equation of the plane passing through the points $(1, 2, 3)$, $(2, 0, 1)$, and $(0, 1, 2)$. *(6 marks)*

(b) Find the distance from the point $(1, 1, 1)$ to this plane. *(4 marks)*

---

**Q9.** (a) Prove by induction that $1^2 + 2^2 + 3^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Prove by induction that $3^n > n^2$ for all positive integers $n$. *(5 marks)*

---

**Q10.** (a) Prove by contradiction that $\sqrt{2}$ is irrational. *(5 marks)*

(b) Prove that the sum of two odd numbers is even. *(3 marks)*

(c) Prove that $n^3 - n$ is divisible by 6 for all positive integers $n$. *(5 marks)*

---

**Q11.** (a) Find the sum of the series $1 + 2 + 3 + \cdots + n$. *(3 marks)*

(b) Find the sum of the series $1^2 + 3^2 + 5^2 + \cdots + (2n-1)^2$. *(5 marks)*

(c) Determine whether the series $\sum_{n=1}^{\infty} \frac{1}{n(n+1)}$ converges, and find its sum. *(5 marks)*

---

**Q12.** (a) State the binomial theorem. *(2 marks)*

(b) Expand $(1 + x)^{10}$ up to the term in $x^3$. *(4 marks)*

(c) Find the coefficient of $x^5$ in the expansion of $(2 - 3x)^8$. *(5 marks)*

---

**Q13.** (a) Find the first three terms in the binomial expansion of $\frac{1}{\sqrt{1 + x}}$ for $|x| < 1$. *(5 marks)*

(b) Use your expansion to approximate $\frac{1}{\sqrt{1.1}}$. *(3 marks)*

(c) State the range of validity of the expansion. *(2 marks)*

---

**Q14.** (a) Find the general solution of the differential equation $\frac{dy}{dx} = \frac{y}{x}$. *(4 marks)*

(b) Solve the differential equation $\frac{dy}{dx} + 2y = e^{-x}$ given that $y = 1$ when $x = 0$. *(6 marks)*

---

**Q15.** (a) Solve the differential equation $\frac{d^2y}{dx^2} - 3\frac{dy}{dx} + 2y = 0$. *(5 marks)*

(b) Given that $y = 1$ and $\frac{dy}{dx} = 0$ when $x = 0$, find the particular solution. *(4 marks)*

---

**Q16.** (a) Express $f(x) = \frac{3x + 1}{(x-1)(x+2)}$ in partial fractions. *(5 marks)*

(b) Express $\frac{2x^2 + 3x + 1}{(x+1)(x^2 + 1)}$ in partial fractions. *(6 marks)*

---

**Q17.** (a) Find the roots of the equation $x^3 - 6x^2 + 11x - 6 = 0$. *(5 marks)*

(b) Given that $1 - i$ is a root of $x^3 - 3x^2 + 4x - 2 = 0$, find the other roots. *(5 marks)*

---

**Q18.** (a) State the remainder theorem. *(2 marks)*

(b) Find the remainder when $x^4 - 3x^3 + 2x - 1$ is divided by $x - 2$. *(4 marks)*

(c) Given that $x - 1$ is a factor of $x^3 + ax^2 + bx - 6$, and the remainder is 4 when divided by $x - 2$, find $a$ and $b$. *(6 marks)*

---

**Q19.** (a) Find $\lim_{x \to 0} \frac{\sin 3x}{x}$. *(3 marks)*

(b) Find $\lim_{x \to \infty} \frac{3x^2 + 2x}{x^2 - 1}$. *(3 marks)*

(c) Find $\lim_{x \to 0} \frac{e^x - 1}{x}$. *(3 marks)*

---

**Q20.** (a) Find the sum to infinity of the geometric series $1 + \frac{1}{2} + \frac{1}{4} + \cdots$. *(3 marks)*

(b) Find the sum of the first $n$ terms of the arithmetic series $3 + 7 + 11 + \cdots$. *(4 marks)*

(c) The sum of the first $n$ terms of a series is $n^2 + 3n$. Find the $n$th term. *(4 marks)*
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
  where subject = 'Geography'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The breaking down of rocks in place is called:

A. weathering  
B. erosion  
C. deposition  
D. transportation  

---

**Q2.** The movement of weathered material by rivers is called:

A. erosion  
B. weathering  
C. evaporation  
D. deposition  

---

**Q3.** The laying down of eroded material is called:

A. deposition  
B. weathering  
C. erosion  
D. transportation  

---

**Q4.** The type of rock formed from cooled magma is:

A. igneous  
B. metamorphic  
C. organic  
D. sedimentary  

---

**Q5.** The type of rock formed from compressed layers of sediment is:

A. sedimentary  
B. volcanic  
C. igneous  
D. metamorphic  

---

**Q6.** The type of rock changed by heat and pressure is:

A. metamorphic  
B. organic  
C. sedimentary  
D. igneous  

---

**Q7.** An example of an igneous rock is:

A. limestone  
B. granite  
C. sandstone  
D. marble  

---

**Q8.** An example of a sedimentary rock is:

A. granite  
B. limestone  
C. marble  
D. basalt  

---

**Q9.** An example of a metamorphic rock is:

A. granite  
B. sandstone  
C. marble  
D. basalt  

---

**Q10.** The process by which water changes from liquid to vapour is:

A. condensation  
B. precipitation  
C. infiltration  
D. evaporation  

---

**Q11.** The process by which water vapour changes to liquid is:

A. evaporation  
B. transpiration  
C. condensation  
D. precipitation  

---

**Q12.** Rain, snow, and hail are all forms of:

A. condensation  
B. runoff  
C. evaporation  
D. precipitation  

---

**Q13.** The average weather conditions of a place over a long period is its:

A. temperature  
B. climate  
C. weather  
D. season  

---

**Q14.** The conditions of the atmosphere at a particular time and place is the:

A. season  
B. weather  
C. relief  
D. climate  

---

**Q15.** The upper course of a river is characterised by:

A. wide floodplain  
B. slow flow and deposition  
C. fast flow and erosion  
D. meanders  

---

**Q16.** The lower course of a river is characterised by:

A. steep valleys  
B. fast flow and waterfalls  
C. rapids  
D. deposition and a wide floodplain  

---

**Q17.** A waterfall is formed mainly by:

A. weathering  
B. evaporation  
C. differential erosion  
D. deposition  

---

**Q18.** A delta is formed at the:

A. middle course  
B. waterfall  
C. source of a river  
D. mouth of a river  

---

**Q19.** The wearing away of the coast by waves is called:

A. flooding  
B. coastal erosion  
C. coastal deposition  
D. weathering  

---

**Q20.** A ridge of sand deposited by waves is called a:

A. cave  
B. beach  
C. spit  
D. cliff  

---

**Q21.** The top layer of the soil profile is the:

A. parent material  
B. subsoil  
C. humus layer  
D. bedrock  

---

**Q22.** The removal of topsoil by wind and water is called:

A. leaching  
B. soil formation  
C. weathering  
D. soil erosion  

---

**Q23.** The dense evergreen forest found near the equator is the:

A. temperate forest  
B. desert  
C. tropical rainforest  
D. savanna  

---

**Q24.** A sudden shaking of the ground caused by movements in the earth''s crust is an:

A. tsunami  
B. tornado  
C. volcano  
D. earthquake  

---

**Q25.** A mountain formed by the eruption of magma is a:

A. volcano  
B. fold mountain  
C. block mountain  
D. plateau  

---

**Q26.** A violent tropical storm is called a:

A. hurricane  
B. blizzard  
C. frost  
D. drought  

---

**Q27.** The clearing of forests is called:

A. deforestation  
B. reforestation  
C. afforestation  
D. conservation  

---

**Q28.** The spread of desert conditions into semi-arid areas is called:

A. desertification  
B. urbanisation  
C. migration  
D. deforestation  

---

**Q29.** The long-term change in average weather patterns is called:

A. climate change  
B. relief change  
C. weather change  
D. seasonal change  

---

**Q30.** A community of living organisms and their environment is an:

A. ecosystem  
B. habitat  
C. biome  
D. ecotone  

---

**Q31.** The number of people living in an area is its:

A. settlement  
B. population  
C. community  
D. society  

---

**Q32.** The number of people per unit area is called:

A. population distribution  
B. population density  
C. birth rate  
D. population growth  

---

**Q33.** The number of live births per 1000 people per year is the:

A. death rate  
B. growth rate  
C. birth rate  
D. fertility rate  

---

**Q34.** The movement of people from one place to another is called:

A. urbanisation  
B. settlement  
C. trade  
D. migration  

---

**Q35.** The movement of people from rural areas to towns is called:

A. urban-rural migration  
B. seasonal migration  
C. rural-urban migration  
D. international migration  

---

**Q36.** A permanent human community is called a:

A. migration  
B. region  
C. population  
D. settlement  

---

**Q37.** The growth of towns and cities is called:

A. industrialisation  
B. urbanisation  
C. migration  
D. ruralisation  

---

**Q38.** Farming for the farmer''s own family is called:

A. plantation farming  
B. subsistence farming  
C. mixed farming  
D. commercial farming  

---

**Q39.** Farming for sale in the market is called:

A. shifting cultivation  
B. subsistence farming  
C. commercial farming  
D. pastoral farming  

---

**Q40.** A large farm growing a single cash crop is a:

A. ranch  
B. smallholding  
C. orchard  
D. plantation  

---

**Q41.** The growing of crops and rearing of animals together is called:

A. monoculture  
B. shifting cultivation  
C. mixed farming  
D. crop rotation  

---

**Q42.** The extraction of raw materials is a:

A. tertiary industry  
B. quaternary industry  
C. secondary industry  
D. primary industry  

---

**Q43.** The manufacturing of goods is a:

A. quaternary industry  
B. secondary industry  
C. primary industry  
D. tertiary industry  

---

**Q44.** The provision of services is a:

A. quaternary industry  
B. tertiary industry  
C. secondary industry  
D. primary industry  

---

**Q45.** The movement of goods and people is called:

A. communication  
B. trade  
C. transport  
D. migration  

---

**Q46.** The buying and selling of goods is called:

A. agriculture  
B. transport  
C. industry  
D. trade  

---

**Q47.** Trade between countries is called:

A. barter trade  
B. local trade  
C. international trade  
D. internal trade  

---

**Q48.** The capital city of Cameroon is:

A. Bamenda  
B. Buea  
C. Douala  
D. Yaoundé  

---

**Q49.** The largest city and main port of Cameroon is:

A. Douala  
B. Yaoundé  
C. Buea  
D. Garoua  

---

**Q50.** The number of regions in Cameroon is:

A. 10  
B. 8  
C. 6  
D. 12  

---

**Q51.** The line joining points of equal height on a map is a:

A. contour line  
B. latitude  
C. grid line  
D. longitude  

---

**Q52.** The shape of the land surface is called:

A. relief  
B. climate  
C. drainage  
D. vegetation  

---

**Q53.** The direction of one place from another measured in degrees is a:

A. bearing  
B. gradient  
C. contour  
D. scale  

---

**Q54.** The ratio between distance on a map and distance on the ground is the:

A. scale  
B. legend  
C. relief  
D. bearing  

---

**Q55.** The highest mountain in Cameroon is:

A. Mount Fako  
B. Mount Cameroon  
C. Mount Oku  
D. Mount Bamboutos  

---

**Q56.** The main cash crop grown in the highlands of Cameroon is:

A. rice  
B. coffee  
C. banana  
D. cotton  

---

**Q57.** The main cash crop grown in northern Cameroon is:

A. coffee  
B. cocoa  
C. cotton  
D. tea  

---

**Q58.** The main cash crop grown in the south of Cameroon is:

A. cotton  
B. millet  
C. groundnut  
D. cocoa  

---

**Q59.** The industry that serves tourists is called:

A. manufacturing  
B. fishing  
C. tourism  
D. mining  

---

**Q60.** Development that meets present needs without harming future generations is called:

A. economic growth  
B. urbanisation  
C. industrialisation  
D. sustainable development  

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
  where subject = 'Geography'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The type of rock formed from cooled magma is:

A. igneous  
B. sedimentary  
C. metamorphic  
D. organic  

---

**Q2.** The type of rock formed from compressed layers of sediment is:

A. sedimentary  
B. igneous  
C. volcanic  
D. metamorphic  

---

**Q3.** The type of rock changed by heat and pressure is:

A. metamorphic  
B. sedimentary  
C. igneous  
D. organic  

---

**Q4.** An example of an igneous rock is:

A. granite  
B. sandstone  
C. marble  
D. limestone  

---

**Q5.** An example of a sedimentary rock is:

A. limestone  
B. marble  
C. granite  
D. basalt  

---

**Q6.** An example of a metamorphic rock is:

A. marble  
B. basalt  
C. sandstone  
D. granite  

---

**Q7.** The process by which water changes from liquid to vapour is:

A. condensation  
B. evaporation  
C. precipitation  
D. infiltration  

---

**Q8.** The process by which water vapour changes to liquid is:

A. evaporation  
B. condensation  
C. transpiration  
D. precipitation  

---

**Q9.** Rain, snow, and hail are all forms of:

A. condensation  
B. evaporation  
C. precipitation  
D. runoff  

---

**Q10.** The average weather conditions of a place over a long period is its:

A. weather  
B. temperature  
C. season  
D. climate  

---

**Q11.** The conditions of the atmosphere at a particular time and place is the:

A. climate  
B. relief  
C. weather  
D. season  

---

**Q12.** The upper course of a river is characterised by:

A. slow flow and deposition  
B. meanders  
C. wide floodplain  
D. fast flow and erosion  

---

**Q13.** The lower course of a river is characterised by:

A. steep valleys  
B. deposition and a wide floodplain  
C. fast flow and waterfalls  
D. rapids  

---

**Q14.** A waterfall is formed mainly by:

A. weathering  
B. differential erosion  
C. evaporation  
D. deposition  

---

**Q15.** A delta is formed at the:

A. middle course  
B. source of a river  
C. mouth of a river  
D. waterfall  

---

**Q16.** The wearing away of the coast by waves is called:

A. weathering  
B. coastal deposition  
C. flooding  
D. coastal erosion  

---

**Q17.** A ridge of sand deposited by waves is called a:

A. spit  
B. cave  
C. beach  
D. cliff  

---

**Q18.** The top layer of the soil profile is the:

A. bedrock  
B. parent material  
C. subsoil  
D. humus layer  

---

**Q19.** The removal of topsoil by wind and water is called:

A. leaching  
B. soil erosion  
C. soil formation  
D. weathering  

---

**Q20.** The dense evergreen forest found near the equator is the:

A. temperate forest  
B. tropical rainforest  
C. desert  
D. savanna  

---

**Q21.** A sudden shaking of the ground caused by movements in the earth''s crust is an:

A. tsunami  
B. volcano  
C. earthquake  
D. tornado  

---

**Q22.** A mountain formed by the eruption of magma is a:

A. plateau  
B. fold mountain  
C. block mountain  
D. volcano  

---

**Q23.** A violent tropical storm is called a:

A. frost  
B. drought  
C. hurricane  
D. blizzard  

---

**Q24.** The clearing of forests is called:

A. conservation  
B. reforestation  
C. afforestation  
D. deforestation  

---

**Q25.** The spread of desert conditions into semi-arid areas is called:

A. desertification  
B. deforestation  
C. urbanisation  
D. migration  

---

**Q26.** The long-term change in average weather patterns is called:

A. climate change  
B. weather change  
C. relief change  
D. seasonal change  

---

**Q27.** A community of living organisms and their environment is an:

A. ecosystem  
B. biome  
C. ecotone  
D. habitat  

---

**Q28.** The breaking down of rocks in place is called:

A. weathering  
B. deposition  
C. transportation  
D. erosion  

---

**Q29.** The movement of weathered material by rivers is called:

A. erosion  
B. evaporation  
C. weathering  
D. deposition  

---

**Q30.** The laying down of eroded material is called:

A. deposition  
B. transportation  
C. weathering  
D. erosion  

---

**Q31.** The movement of people from one place to another is called:

A. urbanisation  
B. migration  
C. settlement  
D. trade  

---

**Q32.** The movement of people from rural areas to towns is called:

A. urban-rural migration  
B. rural-urban migration  
C. seasonal migration  
D. international migration  

---

**Q33.** A permanent human community is called a:

A. migration  
B. population  
C. settlement  
D. region  

---

**Q34.** The growth of towns and cities is called:

A. migration  
B. industrialisation  
C. ruralisation  
D. urbanisation  

---

**Q35.** Farming for the farmer''s own family is called:

A. commercial farming  
B. mixed farming  
C. subsistence farming  
D. plantation farming  

---

**Q36.** Farming for sale in the market is called:

A. subsistence farming  
B. pastoral farming  
C. shifting cultivation  
D. commercial farming  

---

**Q37.** A large farm growing a single cash crop is a:

A. ranch  
B. plantation  
C. smallholding  
D. orchard  

---

**Q38.** The growing of crops and rearing of animals together is called:

A. monoculture  
B. mixed farming  
C. shifting cultivation  
D. crop rotation  

---

**Q39.** The extraction of raw materials is a:

A. tertiary industry  
B. secondary industry  
C. primary industry  
D. quaternary industry  

---

**Q40.** The manufacturing of goods is a:

A. tertiary industry  
B. primary industry  
C. quaternary industry  
D. secondary industry  

---

**Q41.** The provision of services is a:

A. secondary industry  
B. quaternary industry  
C. tertiary industry  
D. primary industry  

---

**Q42.** The movement of goods and people is called:

A. migration  
B. communication  
C. trade  
D. transport  

---

**Q43.** The buying and selling of goods is called:

A. agriculture  
B. trade  
C. transport  
D. industry  

---

**Q44.** Trade between countries is called:

A. barter trade  
B. international trade  
C. local trade  
D. internal trade  

---

**Q45.** The capital city of Cameroon is:

A. Bamenda  
B. Douala  
C. Yaoundé  
D. Buea  

---

**Q46.** The largest city and main port of Cameroon is:

A. Garoua  
B. Yaoundé  
C. Buea  
D. Douala  

---

**Q47.** The number of regions in Cameroon is:

A. 6  
B. 12  
C. 10  
D. 8  

---

**Q48.** The line joining points of equal height on a map is a:

A. longitude  
B. latitude  
C. grid line  
D. contour line  

---

**Q49.** The shape of the land surface is called:

A. relief  
B. vegetation  
C. climate  
D. drainage  

---

**Q50.** The direction of one place from another measured in degrees is a:

A. bearing  
B. contour  
C. gradient  
D. scale  

---

**Q51.** The ratio between distance on a map and distance on the ground is the:

A. scale  
B. relief  
C. bearing  
D. legend  

---

**Q52.** The highest mountain in Cameroon is:

A. Mount Cameroon  
B. Mount Oku  
C. Mount Bamboutos  
D. Mount Fako  

---

**Q53.** The main cash crop grown in the highlands of Cameroon is:

A. coffee  
B. banana  
C. rice  
D. cotton  

---

**Q54.** The main cash crop grown in northern Cameroon is:

A. cotton  
B. tea  
C. cocoa  
D. coffee  

---

**Q55.** The main cash crop grown in the south of Cameroon is:

A. cotton  
B. cocoa  
C. millet  
D. groundnut  

---

**Q56.** The industry that serves tourists is called:

A. manufacturing  
B. tourism  
C. fishing  
D. mining  

---

**Q57.** Development that meets present needs without harming future generations is called:

A. economic growth  
B. industrialisation  
C. sustainable development  
D. urbanisation  

---

**Q58.** The number of people living in an area is its:

A. settlement  
B. community  
C. society  
D. population  

---

**Q59.** The number of people per unit area is called:

A. population distribution  
B. birth rate  
C. population density  
D. population growth  

---

**Q60.** The number of live births per 1000 people per year is the:

A. death rate  
B. fertility rate  
C. growth rate  
D. birth rate  

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
  where subject = 'Geography'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** An example of an igneous rock is:

A. granite  
B. limestone  
C. sandstone  
D. marble  

---

**Q2.** An example of a sedimentary rock is:

A. limestone  
B. granite  
C. marble  
D. basalt  

---

**Q3.** An example of a metamorphic rock is:

A. marble  
B. sandstone  
C. granite  
D. basalt  

---

**Q4.** The process by which water changes from liquid to vapour is:

A. evaporation  
B. precipitation  
C. infiltration  
D. condensation  

---

**Q5.** The process by which water vapour changes to liquid is:

A. condensation  
B. transpiration  
C. evaporation  
D. precipitation  

---

**Q6.** Rain, snow, and hail are all forms of:

A. precipitation  
B. runoff  
C. evaporation  
D. condensation  

---

**Q7.** The average weather conditions of a place over a long period is its:

A. weather  
B. climate  
C. temperature  
D. season  

---

**Q8.** The conditions of the atmosphere at a particular time and place is the:

A. climate  
B. weather  
C. relief  
D. season  

---

**Q9.** The upper course of a river is characterised by:

A. slow flow and deposition  
B. wide floodplain  
C. fast flow and erosion  
D. meanders  

---

**Q10.** The lower course of a river is characterised by:

A. fast flow and waterfalls  
B. steep valleys  
C. rapids  
D. deposition and a wide floodplain  

---

**Q11.** A waterfall is formed mainly by:

A. deposition  
B. evaporation  
C. differential erosion  
D. weathering  

---

**Q12.** A delta is formed at the:

A. source of a river  
B. waterfall  
C. middle course  
D. mouth of a river  

---

**Q13.** The wearing away of the coast by waves is called:

A. weathering  
B. coastal erosion  
C. coastal deposition  
D. flooding  

---

**Q14.** A ridge of sand deposited by waves is called a:

A. spit  
B. beach  
C. cave  
D. cliff  

---

**Q15.** The top layer of the soil profile is the:

A. bedrock  
B. subsoil  
C. humus layer  
D. parent material  

---

**Q16.** The removal of topsoil by wind and water is called:

A. weathering  
B. soil formation  
C. leaching  
D. soil erosion  

---

**Q17.** The dense evergreen forest found near the equator is the:

A. desert  
B. temperate forest  
C. tropical rainforest  
D. savanna  

---

**Q18.** A sudden shaking of the ground caused by movements in the earth''s crust is an:

A. tornado  
B. tsunami  
C. volcano  
D. earthquake  

---

**Q19.** A mountain formed by the eruption of magma is a:

A. plateau  
B. volcano  
C. fold mountain  
D. block mountain  

---

**Q20.** A violent tropical storm is called a:

A. frost  
B. hurricane  
C. drought  
D. blizzard  

---

**Q21.** The clearing of forests is called:

A. conservation  
B. afforestation  
C. deforestation  
D. reforestation  

---

**Q22.** The spread of desert conditions into semi-arid areas is called:

A. migration  
B. deforestation  
C. urbanisation  
D. desertification  

---

**Q23.** The long-term change in average weather patterns is called:

A. relief change  
B. seasonal change  
C. climate change  
D. weather change  

---

**Q24.** A community of living organisms and their environment is an:

A. habitat  
B. biome  
C. ecotone  
D. ecosystem  

---

**Q25.** The breaking down of rocks in place is called:

A. weathering  
B. erosion  
C. deposition  
D. transportation  

---

**Q26.** The movement of weathered material by rivers is called:

A. erosion  
B. weathering  
C. evaporation  
D. deposition  

---

**Q27.** The laying down of eroded material is called:

A. deposition  
B. weathering  
C. erosion  
D. transportation  

---

**Q28.** The type of rock formed from cooled magma is:

A. igneous  
B. metamorphic  
C. organic  
D. sedimentary  

---

**Q29.** The type of rock formed from compressed layers of sediment is:

A. sedimentary  
B. volcanic  
C. igneous  
D. metamorphic  

---

**Q30.** The type of rock changed by heat and pressure is:

A. metamorphic  
B. organic  
C. sedimentary  
D. igneous  

---

**Q31.** The growth of towns and cities is called:

A. migration  
B. urbanisation  
C. industrialisation  
D. ruralisation  

---

**Q32.** Farming for the farmer''s own family is called:

A. commercial farming  
B. subsistence farming  
C. mixed farming  
D. plantation farming  

---

**Q33.** Farming for sale in the market is called:

A. subsistence farming  
B. shifting cultivation  
C. commercial farming  
D. pastoral farming  

---

**Q34.** A large farm growing a single cash crop is a:

A. smallholding  
B. ranch  
C. orchard  
D. plantation  

---

**Q35.** The growing of crops and rearing of animals together is called:

A. crop rotation  
B. shifting cultivation  
C. mixed farming  
D. monoculture  

---

**Q36.** The extraction of raw materials is a:

A. secondary industry  
B. quaternary industry  
C. tertiary industry  
D. primary industry  

---

**Q37.** The manufacturing of goods is a:

A. tertiary industry  
B. secondary industry  
C. primary industry  
D. quaternary industry  

---

**Q38.** The provision of services is a:

A. secondary industry  
B. tertiary industry  
C. quaternary industry  
D. primary industry  

---

**Q39.** The movement of goods and people is called:

A. migration  
B. trade  
C. transport  
D. communication  

---

**Q40.** The buying and selling of goods is called:

A. industry  
B. transport  
C. agriculture  
D. trade  

---

**Q41.** Trade between countries is called:

A. local trade  
B. barter trade  
C. international trade  
D. internal trade  

---

**Q42.** The capital city of Cameroon is:

A. Buea  
B. Bamenda  
C. Douala  
D. Yaoundé  

---

**Q43.** The largest city and main port of Cameroon is:

A. Garoua  
B. Douala  
C. Yaoundé  
D. Buea  

---

**Q44.** The number of regions in Cameroon is:

A. 6  
B. 10  
C. 12  
D. 8  

---

**Q45.** The line joining points of equal height on a map is a:

A. longitude  
B. grid line  
C. contour line  
D. latitude  

---

**Q46.** The shape of the land surface is called:

A. drainage  
B. vegetation  
C. climate  
D. relief  

---

**Q47.** The direction of one place from another measured in degrees is a:

A. gradient  
B. scale  
C. bearing  
D. contour  

---

**Q48.** The ratio between distance on a map and distance on the ground is the:

A. legend  
B. relief  
C. bearing  
D. scale  

---

**Q49.** The highest mountain in Cameroon is:

A. Mount Cameroon  
B. Mount Fako  
C. Mount Oku  
D. Mount Bamboutos  

---

**Q50.** The main cash crop grown in the highlands of Cameroon is:

A. coffee  
B. rice  
C. banana  
D. cotton  

---

**Q51.** The main cash crop grown in northern Cameroon is:

A. cotton  
B. cocoa  
C. coffee  
D. tea  

---

**Q52.** The main cash crop grown in the south of Cameroon is:

A. cocoa  
B. millet  
C. groundnut  
D. cotton  

---

**Q53.** The industry that serves tourists is called:

A. tourism  
B. fishing  
C. manufacturing  
D. mining  

---

**Q54.** Development that meets present needs without harming future generations is called:

A. sustainable development  
B. urbanisation  
C. industrialisation  
D. economic growth  

---

**Q55.** The number of people living in an area is its:

A. settlement  
B. population  
C. community  
D. society  

---

**Q56.** The number of people per unit area is called:

A. population distribution  
B. population density  
C. birth rate  
D. population growth  

---

**Q57.** The number of live births per 1000 people per year is the:

A. death rate  
B. growth rate  
C. birth rate  
D. fertility rate  

---

**Q58.** The movement of people from one place to another is called:

A. urbanisation  
B. settlement  
C. trade  
D. migration  

---

**Q59.** The movement of people from rural areas to towns is called:

A. urban-rural migration  
B. seasonal migration  
C. rural-urban migration  
D. international migration  

---

**Q60.** A permanent human community is called a:

A. migration  
B. region  
C. population  
D. settlement  

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
  where subject = 'Geography'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Geography',
  'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MAP WORK

**Q1.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

![Contour map extract](/paper-diagrams/geography-contours.svg)

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q2.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q3.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q4.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q5.** Map work: A structured Cameroon GCE case is set on map work and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 2: GEOMORPHOLOGY

**Q6.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q7.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q8.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q9.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q10.** Geomorphology: A structured Cameroon GCE case is set on geomorphology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 3: CLIMATOLOGY

**Q11.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q12.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q13.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q14.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q15.** Climatology: A structured Cameroon GCE case is set on climatology and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 4: POPULATION

**Q16.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q17.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q18.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q19.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q20.** Population: A structured Cameroon GCE case is set on population and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 5: SETTLEMENT

**Q21.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q22.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q23.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q24.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q25.** Settlement: A structured Cameroon GCE case is set on settlement and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 6: AGRICULTURE

**Q26.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q27.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q28.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q29.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q30.** Agriculture: A structured Cameroon GCE case is set on agriculture and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 7: INDUSTRY

**Q31.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q32.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q33.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q34.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q35.** Industry: A structured Cameroon GCE case is set on industry and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

## SECTION 8: REGIONAL GEOGRAPHY OF CAMEROON

**Q36.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q37.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(8 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q38.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(10 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q39.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(12 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

---

**Q40.** Regional geography of Cameroon: A structured Cameroon GCE case is set on regional geography of cameroon and requires practical analysis.

(a) Explain the key concept tested by the question. *(4 marks)*

(b) Apply the concept to solve the case with clear steps and correct technical vocabulary. *(6 marks)*

(c) Give two practical recommendations or conclusions based on your answer. *(4 marks)*

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