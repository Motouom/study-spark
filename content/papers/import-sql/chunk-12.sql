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
  where subject = 'French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 4

## Structural Question Bank — Grammaire et conjugaison

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: GRAMMAIRE ET CONJUGAISON

**Q1.** Mettez les verbes au temps qui convient:

(a) Quand je (arriver) ____, ils (déjà partir) ____. *(4 marks)*

(b) Si j''avais su, je (venir) ____ plus tôt. *(3 marks)*

(c) Demain, nous (aller) ____ au marché. *(2 marks)*

---

**Q2.** Accordez correctement les participes passés:

(a) Les fleurs que j''ai (acheter) ____ sont belles. *(3 marks)*

(b) Elles se sont (laver) ____ les mains. *(3 marks)*

(c) La lettre qu''il a (écrire) ____ était longue. *(3 marks)*

---

**Q3.** Transformez au discours indirect:

(a) Il dit: "Je viendrai demain." *(4 marks)*

(b) Elle demande: "Où est la gare?" *(4 marks)*

(c) Le professeur dit: "Faites vos devoirs." *(4 marks)*

---

**Q4.** Remplacez les mots soulignés par un pronom:

(a) Je donne le livre à Marie. *(3 marks)*

(b) Il parle de ses vacances. *(3 marks)*

(c) Nous avons vu les enfants. *(3 marks)*

---

**Q5.** Mettez au pluriel:

(a) Le cheval blanc. *(2 marks)*

(b) Un travail difficile. *(2 marks)

(c) Le journal du matin. *(2 marks)*

(d) Un prix spécial. *(2 marks)*

---

**Q6.** Conjuguez au passé composé:

(a) Elle (partir) ____ tôt. *(3 marks)*

(b) Nous (finir) ____ le travail. *(3 marks)*

(c) Ils (se lever) ____ à six heures. *(3 marks)*

---

**Q7.** Complétez avec l''article qui convient (le, la, les, un, une, des, du, de la):

(a) ____ eau est importante pour la santé. *(2 marks)*

(b) J''achète ____ pain et ____ beurre. *(4 marks)*

(c) ____ enfants jouent dans la cour. *(2 marks)*

---

**Q8.** Mettez les phrases au négatif:

(a) Il a mangé quelque chose. *(3 marks)*

(b) Nous avons vu quelqu''un. *(3 marks)*

(c) Elle vient souvent. *(3 marks)*

---

**Q9.** Transformez au futur simple:

(a) Je (être) ____ content. *(2 marks)*

(b) Nous (avoir) ____ le temps. *(2 marks)*

(c) Ils (faire) ____ un effort. *(2 marks)*

(d) Tu (aller) ____ à l''école. *(2 marks)*

---

**Q10.** Complétez avec le pronom relatif qui convient (qui, que, dont, où):

(a) La ville ____ je suis né est belle. *(2 marks)*

(b) Le livre ____ tu parles est intéressant. *(2 marks)*

(c) La femme ____ chante est ma mère. *(2 marks)*

(d) Le film ____ nous avons vu était long. *(2 marks)*

---

**Q11.** Mettez au féminin:

(a) Un acteur célèbre. *(2 marks)*

(b) Le directeur est gentil. *(2 marks)*

(c) Un sportif courageux. *(2 marks)*

(d) Le voisin est patient. *(2 marks)*

---

**Q12.** Conjuguez à l''imparfait:

(a) Quand j''étais petit, je (jouer) ____ au football. *(3 marks)*

(b) Il (pleuvoir) ____ souvent. *(3 marks)*

(c) Nous (habiter) ____ à Douala. *(3 marks)*

---

**Q13.** Complétez avec la préposition qui convient (à, de, en, dans, sur, pour):

(a) Il va ____ France. *(2 marks)*

(b) Elle habite ____ Douala. *(2 marks)*

(c) Nous partons ____ l''école. *(2 marks)*

(d) Le livre est ____ la table. *(2 marks)*

---

**Q14.** Transformez au plus-que-parfait:

(a) Il (finir) ____ son travail avant de partir. *(3 marks)*

(b) Nous (déjà voir) ____ ce film. *(3 marks)*

(c) Elle (manger) ____ avant d''arriver. *(3 marks)*

---

**Q15.** Complétez avec le bon déterminant (ce, cette, ces, mon, ma, mes):

(a) ____ livre est intéressant. *(2 marks)*

(b) ____ maison est grande. *(2 marks)*

(c) J''aime ____ fleurs. *(2 marks)*

(d) ____ père travaille à l''hôpital. *(2 marks)*

---

**Q16.** Mettez au comparatif ou superlatif:

(a) Paul est ____ (grand) que Pierre. *(3 marks)*

(b) C''est ____ (bon) élève de la classe. *(3 marks)*

(c) Elle parle ____ (lentement) que moi. *(3 marks)*

---

**Q17.** Transformez au conditionnel présent:

(a) Je (aimer) ____ voyager. *(3 marks)*

(b) Nous (pouvoir) ____ vous aider. *(3 marks)*

(c) Elle (venir) ____ si elle avait le temps. *(3 marks)*

---

**Q18.** Complétez avec le subjonctif:

(a) Il faut que tu (venir) ____. *(3 marks)*

(b) Je veux qu''il (faire) ____ son travail. *(3 marks)*

(c) Bien qu''il (être) ____ fatigué, il continue. *(3 marks)*

---

**Q19.** Corrigez les erreurs dans les phrases suivantes:

(a) "Je suis allé au marché hier." *(2 marks)*

(b) "Elle a mangé des pommes." *(2 marks)*

(c) "Nous avons vu un film intéressant." *(2 marks)*

(d) "Ils sont arrivés à temps." *(2 marks)*

---

**Q20.** Complétez avec le temps qui convient (présent, passé composé, imparfait):

(a) Hier, je (rencontrer) ____ un ami. *(3 marks)*

(b) Quand j''étais jeune, je (jouer) ____ au tennis. *(3 marks)*

(c) Maintenant, nous (étudier) ____ le français. *(3 marks)*
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
  where subject = 'French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 5

## Structural Question Bank — Comprehension et expression ecrite

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPREHENSION ET EXPRESSION ECRITE

**Q1.** Lisez le texte et répondez aux questions:

*"Le Cameroun est souvent appelé ''l''Afrique en miniature'' à cause de sa diversité. On y trouve des plages, des montagnes, des forêts et des savanes. Cette diversité se reflète aussi dans sa culture, avec plus de 250 groupes ethniques."*

(a) Pourquoi appelle-t-on le Cameroun "l''Afrique en miniature"? *(3 marks)*

(b) Citez deux types de paysages qu''on trouve au Cameroun. *(3 marks)*

(c) Combien de groupes ethniques compte le Cameroun? *(2 marks)*

---

**Q2.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:

"Ma ville natale"

Décrivez les lieux, les gens et les activités. *(10 marks)*

---

**Q3.** Lisez le texte et répondez aux questions:

*"La pluie tombait depuis trois jours. Les rues de la ville étaient transformées en rivières. Les enfants, ravis, jouaient dans les flaques d''eau, tandis que les adultes cherchaient un abri. Soudain, le soleil perça les nuages et tout le monde sortit pour admirer l''arc-en-ciel."*

(a) Depuis combien de temps pleuvait-il? *(2 marks)*

(b) Que faisaient les enfants? *(3 marks)*

(c) Qu''est-ce qui est apparu à la fin? *(2 marks)*

(d) Quel temps fait-il dans ce texte? *(3 marks)*

---

**Q4.** Écrivez une lettre à votre ami(e) pour l''inviter à votre anniversaire. (80 à 100 mots)

Incluez la date, le lieu, l''heure et ce que vous prévoyez. *(10 marks)*

---

**Q5.** Lisez le texte et répondez aux questions:

*"Le marché de Mokolo est l''un des plus grands marchés de Yaoundé. Chaque jour, des milliers de personnes y viennent pour acheter des vêtements, des fruits, des légumes et des articles ménagers. Les vendeurs crient pour attirer les clients, et l''air est rempli d''odeurs variées."*

(a) Où se trouve le marché de Mokolo? *(2 marks)*

(b) Qu''est-ce qu''on peut acheter au marché? *(3 marks)*

(c) Comment les vendeurs attirent-ils les clients? *(3 marks)*

---

**Q6.** Rédigez un dialogue de 80 à 100 mots entre deux amis qui discutent de leurs projets pour les vacances. *(10 marks)*

---

**Q7.** Lisez le texte et répondez aux questions:

*"L''éducation est la clé du développement. Un pays qui investit dans l''éducation de ses enfants investit dans son avenir. Les écoles forment non seulement des travailleurs qualifiés, mais aussi des citoyens responsables capables de prendre de bonnes décisions."*

(a) Pourquoi l''éducation est-elle importante selon le texte? *(3 marks)*

(b) Que forment les écoles? *(3 marks)*

(c) Donnez un titre au texte. *(2 marks)*

---

**Q8.** Traduisez en français:

(a) "I am going to the market." *(3 marks)*

(b) "She has three brothers." *(3 marks)*

(c) "We visited our grandparents last week." *(4 marks)*

---

**Q9.** Lisez le texte et répondez aux questions:

*"La santé est notre bien le plus précieux. Pour rester en bonne santé, il faut manger équilibré, faire du sport et dormir suffisamment. Il faut aussi éviter le tabac et l''alcool. Les médecins conseillent de boire beaucoup d''eau et de consulter régulièrement."*

(a) Citez trois habitudes pour rester en bonne santé. *(3 marks)*

(b) Que faut-il éviter? *(2 marks)*

(c) Que conseillent les médecins? *(3 marks)*

---

**Q10.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:

"Ce que je ferai après mes examens"

Parlez de vos projets et de vos rêves. *(10 marks)*

---

**Q11.** Lisez le texte et répondez aux questions:

*"Le football est le sport le plus populaire au Cameroun. Les Lions Indomptables, l''équipe nationale, ont gagné plusieurs coupes d''Afrique. Dans les rues, les enfants jouent au football avec des ballons improvisés, rêvant de devenir des stars comme Samuel Eto''o."*

(a) Quel est le sport le plus populaire au Cameroun? *(2 marks)*

(b) Comment s''appelle l''équipe nationale? *(2 marks)*

(c) Avec quoi les enfants jouent-ils? *(3 marks)*

(d) De quoi rêvent les enfants? *(3 marks)*

---

**Q12.** Écrivez un texte de 80 à 100 mots décrivant votre journée typique.

Commencez par: "Ma journée commence à..." *(10 marks)*

---

**Q13.** Lisez le texte et répondez aux questions:

*"La technologie a changé notre façon de communiquer. Avec un téléphone portable, on peut appeler, envoyer des messages et même voir ses proches à l''écran. Mais certains pensent que la technologie nous éloigne les uns des autres."*

(a) Qu''est-ce qu''on peut faire avec un téléphone portable? *(3 marks)*

(b) Quel est l''inconvénient de la technologie selon certains? *(3 marks)*

(c) Êtes-vous d''accord? Justifiez votre réponse. *(3 marks)*

---

**Q14.** Traduisez en anglais:

(a) "Je vais au marché avec ma mère." *(3 marks)*

(b) "Nous avons mangé du poisson hier soir." *(3 marks)*

(c) "Elle est plus grande que son frère." *(4 marks)*

---

**Q15.** Lisez le texte et répondez aux questions:

*"Le respect de l''environnement commence à la maison. Il faut trier les déchets, économiser l''eau et l''électricité, et éviter de jeter les ordures dans la nature. Chaque petit geste compte pour protéger notre planète."*

(a) Citez trois gestes pour protéger l''environnement. *(3 marks)*

(b) Où commence le respect de l''environnement? *(2 marks)*

(c) Que signifie "Chaque petit geste compte"? *(3 marks)*

---

**Q16.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:

"Pourquoi j''apprends le français"

Donnez au moins trois raisons. *(10 marks)*

---

**Q17.** Lisez le texte et répondez aux questions:

*"La famille est très importante dans la culture camerounaise. Les enfants respectent leurs parents et leurs aînés. Les grandes occasions comme les mariages et les funérailles rassemblent toute la famille, parfois des centaines de personnes."*

(a) Pourquoi la famille est-elle importante? *(2 marks)*

(b) Comment les enfants traitent-ils leurs aînés? *(3 marks)*

(c) Quelles occasions rassemblent la famille? *(3 marks)*

---

**Q18.** Écrivez un texte de 80 à 100 mots racontant ce que vous avez fait le week-end dernier.

Utilisez le passé composé. *(10 marks)*

---

**Q19.** Lisez le texte et répondez aux questions:

*"Le commerce équitable garantit que les producteurs reçoivent un prix juste pour leur travail. Au Cameroun, le cacao et le café sont les principales cultures d''exportation. En achetant des produits équitables, les consommateurs aident les agriculteurs à améliorer leurs conditions de vie."*

(a) Qu''est-ce que le commerce équitable garantit? *(3 marks)*

(b) Quelles sont les principales cultures d''exportation du Cameroun? *(3 marks)*

(c) Comment les consommateurs peuvent-ils aider les agriculteurs? *(3 marks)*

---

**Q20.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:

"Mon plat préféré"

Décrivez le plat, ses ingrédients et pourquoi vous l''aimez. *(10 marks)*
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
  where subject = 'French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 6

## Structural Question Bank — Grammaire et conjugaison

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: GRAMMAIRE ET CONJUGAISON

**Q1.** Mettez les verbes au temps qui convient:

(a) Quand je (arriver) ____, ils (déjà partir) ____. *(4 marks)*

(b) Si j''avais su, je (venir) ____ plus tôt. *(3 marks)*

(c) Demain, nous (aller) ____ au marché. *(2 marks)*

---

**Q2.** Accordez correctement les participes passés:

(a) Les fleurs que j''ai (acheter) ____ sont belles. *(3 marks)*

(b) Elles se sont (laver) ____ les mains. *(3 marks)*

(c) La lettre qu''il a (écrire) ____ était longue. *(3 marks)*

---

**Q3.** Transformez au discours indirect:

(a) Il dit: "Je viendrai demain." *(4 marks)*

(b) Elle demande: "Où est la gare?" *(4 marks)*

(c) Le professeur dit: "Faites vos devoirs." *(4 marks)*

---

**Q4.** Remplacez les mots soulignés par un pronom:

(a) Je donne le livre à Marie. *(3 marks)*

(b) Il parle de ses vacances. *(3 marks)*

(c) Nous avons vu les enfants. *(3 marks)*

---

**Q5.** Mettez au pluriel:

(a) Le cheval blanc. *(2 marks)*

(b) Un travail difficile. *(2 marks)

(c) Le journal du matin. *(2 marks)*

(d) Un prix spécial. *(2 marks)*

---

**Q6.** Conjuguez au passé composé:

(a) Elle (partir) ____ tôt. *(3 marks)*

(b) Nous (finir) ____ le travail. *(3 marks)*

(c) Ils (se lever) ____ à six heures. *(3 marks)*

---

**Q7.** Complétez avec l''article qui convient (le, la, les, un, une, des, du, de la):

(a) ____ eau est importante pour la santé. *(2 marks)*

(b) J''achète ____ pain et ____ beurre. *(4 marks)*

(c) ____ enfants jouent dans la cour. *(2 marks)*

---

**Q8.** Mettez les phrases au négatif:

(a) Il a mangé quelque chose. *(3 marks)*

(b) Nous avons vu quelqu''un. *(3 marks)*

(c) Elle vient souvent. *(3 marks)*

---

**Q9.** Transformez au futur simple:

(a) Je (être) ____ content. *(2 marks)*

(b) Nous (avoir) ____ le temps. *(2 marks)*

(c) Ils (faire) ____ un effort. *(2 marks)*

(d) Tu (aller) ____ à l''école. *(2 marks)*

---

**Q10.** Complétez avec le pronom relatif qui convient (qui, que, dont, où):

(a) La ville ____ je suis né est belle. *(2 marks)*

(b) Le livre ____ tu parles est intéressant. *(2 marks)*

(c) La femme ____ chante est ma mère. *(2 marks)*

(d) Le film ____ nous avons vu était long. *(2 marks)*

---

**Q11.** Mettez au féminin:

(a) Un acteur célèbre. *(2 marks)*

(b) Le directeur est gentil. *(2 marks)*

(c) Un sportif courageux. *(2 marks)*

(d) Le voisin est patient. *(2 marks)*

---

**Q12.** Conjuguez à l''imparfait:

(a) Quand j''étais petit, je (jouer) ____ au football. *(3 marks)*

(b) Il (pleuvoir) ____ souvent. *(3 marks)*

(c) Nous (habiter) ____ à Douala. *(3 marks)*

---

**Q13.** Complétez avec la préposition qui convient (à, de, en, dans, sur, pour):

(a) Il va ____ France. *(2 marks)*

(b) Elle habite ____ Douala. *(2 marks)*

(c) Nous partons ____ l''école. *(2 marks)*

(d) Le livre est ____ la table. *(2 marks)*

---

**Q14.** Transformez au plus-que-parfait:

(a) Il (finir) ____ son travail avant de partir. *(3 marks)*

(b) Nous (déjà voir) ____ ce film. *(3 marks)*

(c) Elle (manger) ____ avant d''arriver. *(3 marks)*

---

**Q15.** Complétez avec le bon déterminant (ce, cette, ces, mon, ma, mes):

(a) ____ livre est intéressant. *(2 marks)*

(b) ____ maison est grande. *(2 marks)*

(c) J''aime ____ fleurs. *(2 marks)*

(d) ____ père travaille à l''hôpital. *(2 marks)*

---

**Q16.** Mettez au comparatif ou superlatif:

(a) Paul est ____ (grand) que Pierre. *(3 marks)*

(b) C''est ____ (bon) élève de la classe. *(3 marks)*

(c) Elle parle ____ (lentement) que moi. *(3 marks)*

---

**Q17.** Transformez au conditionnel présent:

(a) Je (aimer) ____ voyager. *(3 marks)*

(b) Nous (pouvoir) ____ vous aider. *(3 marks)*

(c) Elle (venir) ____ si elle avait le temps. *(3 marks)*

---

**Q18.** Complétez avec le subjonctif:

(a) Il faut que tu (venir) ____. *(3 marks)*

(b) Je veux qu''il (faire) ____ son travail. *(3 marks)*

(c) Bien qu''il (être) ____ fatigué, il continue. *(3 marks)*

---

**Q19.** Corrigez les erreurs dans les phrases suivantes:

(a) "Je suis allé au marché hier." *(2 marks)*

(b) "Elle a mangé des pommes." *(2 marks)*

(c) "Nous avons vu un film intéressant." *(2 marks)*

(d) "Ils sont arrivés à temps." *(2 marks)*

---

**Q20.** Complétez avec le temps qui convient (présent, passé composé, imparfait):

(a) Hier, je (rencontrer) ____ un ami. *(3 marks)*

(b) Quand j''étais jeune, je (jouer) ____ au tennis. *(3 marks)*

(c) Maintenant, nous (étudier) ____ le français. *(3 marks)*
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
  where subject = 'French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 7

## Structural Question Bank — Comprehension et expression ecrite

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPREHENSION ET EXPRESSION ECRITE

**Q1.** Lisez le texte et répondez aux questions:

*"Le Cameroun est souvent appelé ''l''Afrique en miniature'' à cause de sa diversité. On y trouve des plages, des montagnes, des forêts et des savanes. Cette diversité se reflète aussi dans sa culture, avec plus de 250 groupes ethniques."*

(a) Pourquoi appelle-t-on le Cameroun "l''Afrique en miniature"? *(3 marks)*

(b) Citez deux types de paysages qu''on trouve au Cameroun. *(3 marks)*

(c) Combien de groupes ethniques compte le Cameroun? *(2 marks)*

---

**Q2.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:

"Ma ville natale"

Décrivez les lieux, les gens et les activités. *(10 marks)*

---

**Q3.** Lisez le texte et répondez aux questions:

*"La pluie tombait depuis trois jours. Les rues de la ville étaient transformées en rivières. Les enfants, ravis, jouaient dans les flaques d''eau, tandis que les adultes cherchaient un abri. Soudain, le soleil perça les nuages et tout le monde sortit pour admirer l''arc-en-ciel."*

(a) Depuis combien de temps pleuvait-il? *(2 marks)*

(b) Que faisaient les enfants? *(3 marks)*

(c) Qu''est-ce qui est apparu à la fin? *(2 marks)*

(d) Quel temps fait-il dans ce texte? *(3 marks)*

---

**Q4.** Écrivez une lettre à votre ami(e) pour l''inviter à votre anniversaire. (80 à 100 mots)

Incluez la date, le lieu, l''heure et ce que vous prévoyez. *(10 marks)*

---

**Q5.** Lisez le texte et répondez aux questions:

*"Le marché de Mokolo est l''un des plus grands marchés de Yaoundé. Chaque jour, des milliers de personnes y viennent pour acheter des vêtements, des fruits, des légumes et des articles ménagers. Les vendeurs crient pour attirer les clients, et l''air est rempli d''odeurs variées."*

(a) Où se trouve le marché de Mokolo? *(2 marks)*

(b) Qu''est-ce qu''on peut acheter au marché? *(3 marks)*

(c) Comment les vendeurs attirent-ils les clients? *(3 marks)*

---

**Q6.** Rédigez un dialogue de 80 à 100 mots entre deux amis qui discutent de leurs projets pour les vacances. *(10 marks)*

---

**Q7.** Lisez le texte et répondez aux questions:

*"L''éducation est la clé du développement. Un pays qui investit dans l''éducation de ses enfants investit dans son avenir. Les écoles forment non seulement des travailleurs qualifiés, mais aussi des citoyens responsables capables de prendre de bonnes décisions."*

(a) Pourquoi l''éducation est-elle importante selon le texte? *(3 marks)*

(b) Que forment les écoles? *(3 marks)*

(c) Donnez un titre au texte. *(2 marks)*

---

**Q8.** Traduisez en français:

(a) "I am going to the market." *(3 marks)*

(b) "She has three brothers." *(3 marks)*

(c) "We visited our grandparents last week." *(4 marks)*

---

**Q9.** Lisez le texte et répondez aux questions:

*"La santé est notre bien le plus précieux. Pour rester en bonne santé, il faut manger équilibré, faire du sport et dormir suffisamment. Il faut aussi éviter le tabac et l''alcool. Les médecins conseillent de boire beaucoup d''eau et de consulter régulièrement."*

(a) Citez trois habitudes pour rester en bonne santé. *(3 marks)*

(b) Que faut-il éviter? *(2 marks)*

(c) Que conseillent les médecins? *(3 marks)*

---

**Q10.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:

"Ce que je ferai après mes examens"

Parlez de vos projets et de vos rêves. *(10 marks)*

---

**Q11.** Lisez le texte et répondez aux questions:

*"Le football est le sport le plus populaire au Cameroun. Les Lions Indomptables, l''équipe nationale, ont gagné plusieurs coupes d''Afrique. Dans les rues, les enfants jouent au football avec des ballons improvisés, rêvant de devenir des stars comme Samuel Eto''o."*

(a) Quel est le sport le plus populaire au Cameroun? *(2 marks)*

(b) Comment s''appelle l''équipe nationale? *(2 marks)*

(c) Avec quoi les enfants jouent-ils? *(3 marks)*

(d) De quoi rêvent les enfants? *(3 marks)*

---

**Q12.** Écrivez un texte de 80 à 100 mots décrivant votre journée typique.

Commencez par: "Ma journée commence à..." *(10 marks)*

---

**Q13.** Lisez le texte et répondez aux questions:

*"La technologie a changé notre façon de communiquer. Avec un téléphone portable, on peut appeler, envoyer des messages et même voir ses proches à l''écran. Mais certains pensent que la technologie nous éloigne les uns des autres."*

(a) Qu''est-ce qu''on peut faire avec un téléphone portable? *(3 marks)*

(b) Quel est l''inconvénient de la technologie selon certains? *(3 marks)*

(c) Êtes-vous d''accord? Justifiez votre réponse. *(3 marks)*

---

**Q14.** Traduisez en anglais:

(a) "Je vais au marché avec ma mère." *(3 marks)*

(b) "Nous avons mangé du poisson hier soir." *(3 marks)*

(c) "Elle est plus grande que son frère." *(4 marks)*

---

**Q15.** Lisez le texte et répondez aux questions:

*"Le respect de l''environnement commence à la maison. Il faut trier les déchets, économiser l''eau et l''électricité, et éviter de jeter les ordures dans la nature. Chaque petit geste compte pour protéger notre planète."*

(a) Citez trois gestes pour protéger l''environnement. *(3 marks)*

(b) Où commence le respect de l''environnement? *(2 marks)*

(c) Que signifie "Chaque petit geste compte"? *(3 marks)*

---

**Q16.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:

"Pourquoi j''apprends le français"

Donnez au moins trois raisons. *(10 marks)*

---

**Q17.** Lisez le texte et répondez aux questions:

*"La famille est très importante dans la culture camerounaise. Les enfants respectent leurs parents et leurs aînés. Les grandes occasions comme les mariages et les funérailles rassemblent toute la famille, parfois des centaines de personnes."*

(a) Pourquoi la famille est-elle importante? *(2 marks)*

(b) Comment les enfants traitent-ils leurs aînés? *(3 marks)*

(c) Quelles occasions rassemblent la famille? *(3 marks)*

---

**Q18.** Écrivez un texte de 80 à 100 mots racontant ce que vous avez fait le week-end dernier.

Utilisez le passé composé. *(10 marks)*

---

**Q19.** Lisez le texte et répondez aux questions:

*"Le commerce équitable garantit que les producteurs reçoivent un prix juste pour leur travail. Au Cameroun, le cacao et le café sont les principales cultures d''exportation. En achetant des produits équitables, les consommateurs aident les agriculteurs à améliorer leurs conditions de vie."*

(a) Qu''est-ce que le commerce équitable garantit? *(3 marks)*

(b) Quelles sont les principales cultures d''exportation du Cameroun? *(3 marks)*

(c) Comment les consommateurs peuvent-ils aider les agriculteurs? *(3 marks)*

---

**Q20.** Rédigez un paragraphe de 80 à 100 mots sur le sujet:

"Mon plat préféré"

Décrivez le plat, ses ingrédients et pourquoi vous l''aimez. *(10 marks)*
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
  where subject = 'French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 8

## Structural Question Bank — Grammaire et conjugaison

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: GRAMMAIRE ET CONJUGAISON

**Q1.** Mettez les verbes au temps qui convient:

(a) Quand je (arriver) ____, ils (déjà partir) ____. *(4 marks)*

(b) Si j''avais su, je (venir) ____ plus tôt. *(3 marks)*

(c) Demain, nous (aller) ____ au marché. *(2 marks)*

---

**Q2.** Accordez correctement les participes passés:

(a) Les fleurs que j''ai (acheter) ____ sont belles. *(3 marks)*

(b) Elles se sont (laver) ____ les mains. *(3 marks)*

(c) La lettre qu''il a (écrire) ____ était longue. *(3 marks)*

---

**Q3.** Transformez au discours indirect:

(a) Il dit: "Je viendrai demain." *(4 marks)*

(b) Elle demande: "Où est la gare?" *(4 marks)*

(c) Le professeur dit: "Faites vos devoirs." *(4 marks)*

---

**Q4.** Remplacez les mots soulignés par un pronom:

(a) Je donne le livre à Marie. *(3 marks)*

(b) Il parle de ses vacances. *(3 marks)*

(c) Nous avons vu les enfants. *(3 marks)*

---

**Q5.** Mettez au pluriel:

(a) Le cheval blanc. *(2 marks)*

(b) Un travail difficile. *(2 marks)

(c) Le journal du matin. *(2 marks)*

(d) Un prix spécial. *(2 marks)*

---

**Q6.** Conjuguez au passé composé:

(a) Elle (partir) ____ tôt. *(3 marks)*

(b) Nous (finir) ____ le travail. *(3 marks)*

(c) Ils (se lever) ____ à six heures. *(3 marks)*

---

**Q7.** Complétez avec l''article qui convient (le, la, les, un, une, des, du, de la):

(a) ____ eau est importante pour la santé. *(2 marks)*

(b) J''achète ____ pain et ____ beurre. *(4 marks)*

(c) ____ enfants jouent dans la cour. *(2 marks)*

---

**Q8.** Mettez les phrases au négatif:

(a) Il a mangé quelque chose. *(3 marks)*

(b) Nous avons vu quelqu''un. *(3 marks)*

(c) Elle vient souvent. *(3 marks)*

---

**Q9.** Transformez au futur simple:

(a) Je (être) ____ content. *(2 marks)*

(b) Nous (avoir) ____ le temps. *(2 marks)*

(c) Ils (faire) ____ un effort. *(2 marks)*

(d) Tu (aller) ____ à l''école. *(2 marks)*

---

**Q10.** Complétez avec le pronom relatif qui convient (qui, que, dont, où):

(a) La ville ____ je suis né est belle. *(2 marks)*

(b) Le livre ____ tu parles est intéressant. *(2 marks)*

(c) La femme ____ chante est ma mère. *(2 marks)*

(d) Le film ____ nous avons vu était long. *(2 marks)*

---

**Q11.** Mettez au féminin:

(a) Un acteur célèbre. *(2 marks)*

(b) Le directeur est gentil. *(2 marks)*

(c) Un sportif courageux. *(2 marks)*

(d) Le voisin est patient. *(2 marks)*

---

**Q12.** Conjuguez à l''imparfait:

(a) Quand j''étais petit, je (jouer) ____ au football. *(3 marks)*

(b) Il (pleuvoir) ____ souvent. *(3 marks)*

(c) Nous (habiter) ____ à Douala. *(3 marks)*

---

**Q13.** Complétez avec la préposition qui convient (à, de, en, dans, sur, pour):

(a) Il va ____ France. *(2 marks)*

(b) Elle habite ____ Douala. *(2 marks)*

(c) Nous partons ____ l''école. *(2 marks)*

(d) Le livre est ____ la table. *(2 marks)*

---

**Q14.** Transformez au plus-que-parfait:

(a) Il (finir) ____ son travail avant de partir. *(3 marks)*

(b) Nous (déjà voir) ____ ce film. *(3 marks)*

(c) Elle (manger) ____ avant d''arriver. *(3 marks)*

---

**Q15.** Complétez avec le bon déterminant (ce, cette, ces, mon, ma, mes):

(a) ____ livre est intéressant. *(2 marks)*

(b) ____ maison est grande. *(2 marks)*

(c) J''aime ____ fleurs. *(2 marks)*

(d) ____ père travaille à l''hôpital. *(2 marks)*

---

**Q16.** Mettez au comparatif ou superlatif:

(a) Paul est ____ (grand) que Pierre. *(3 marks)*

(b) C''est ____ (bon) élève de la classe. *(3 marks)*

(c) Elle parle ____ (lentement) que moi. *(3 marks)*

---

**Q17.** Transformez au conditionnel présent:

(a) Je (aimer) ____ voyager. *(3 marks)*

(b) Nous (pouvoir) ____ vous aider. *(3 marks)*

(c) Elle (venir) ____ si elle avait le temps. *(3 marks)*

---

**Q18.** Complétez avec le subjonctif:

(a) Il faut que tu (venir) ____. *(3 marks)*

(b) Je veux qu''il (faire) ____ son travail. *(3 marks)*

(c) Bien qu''il (être) ____ fatigué, il continue. *(3 marks)*

---

**Q19.** Corrigez les erreurs dans les phrases suivantes:

(a) "Je suis allé au marché hier." *(2 marks)*

(b) "Elle a mangé des pommes." *(2 marks)*

(c) "Nous avons vu un film intéressant." *(2 marks)*

(d) "Ils sont arrivés à temps." *(2 marks)*

---

**Q20.** Complétez avec le temps qui convient (présent, passé composé, imparfait):

(a) Hier, je (rencontrer) ____ un ami. *(3 marks)*

(b) Quand j''étais jeune, je (jouer) ____ au tennis. *(3 marks)*

(c) Maintenant, nous (étudier) ____ le français. *(3 marks)*
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
  where subject = 'French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Complétez: Je ____ au marché.

A. vais  
B. va  
C. vont  
D. allons  

---

**Q2.** Complétez: Nous ____ français.

A. parlons  
B. parlez  
C. parle  
D. parlent  

---

**Q3.** Complétez: Elle ____ une lettre.

A. écrit  
B. écrivent  
C. écris  
D. écrivez  

---

**Q4.** Le passé composé de ''manger'' avec ''je'' est:

A. j''ai mangé  
B. je mangerai  
C. je mangeais  
D. je mange  

---

**Q5.** Complétez: Ils ____ à l''école.

A. vont  
B. allons  
C. va  
D. vais  

---

**Q6.** Le futur de ''être'' avec ''je'' est:

A. je serai  
B. je fus  
C. j''étais  
D. je suis  

---

**Q7.** Complétez: Tu ____ ton livre.

A. a  
B. as  
C. avez  
D. ont  

---

**Q8.** L''imparfait de ''avoir'' avec ''nous'' est:

A. nous avons  
B. nous avions  
C. nous eûmes  
D. nous aurons  

---

**Q9.** Complétez: Le livre ____ je parle est intéressant.

A. qui  
B. que  
C. dont  
D. où  

---

**Q10.** Complétez: La femme ____ chante est ma mère.

A. que  
B. dont  
C. où  
D. qui  

---

**Q11.** Le pluriel de ''le cheval'' est:

A. les chevals  
B. les chevauxs  
C. les chevaux  
D. les chevaus  

---

**Q12.** Complétez: ____ eau est bonne.

A. Le  
B. Les  
C. La  
D. L''  

---

**Q13.** Complétez: J''achète ____ pain.

A. des  
B. du  
C. de la  
D. le  

---

**Q14.** La négation de ''Il a mangé'' est:

A. Il ne mange pas  
B. Il n''a pas mangé  
C. Il n''a mangé pas  
D. Il a pas mangé  

---

**Q15.** Complétez: Elle est ____ grande que sa sœur.

A. aussi  
B. moins  
C. plus  
D. très  

---

**Q16.** Le féminin de ''acteur'' est:

A. acteurse  
B. acteure  
C. acteuse  
D. actrice  

---

**Q17.** Complétez: Il faut que tu ____.

A. viendras  
B. venais  
C. viennes  
D. viens  

---

**Q18.** Complétez: Je ____ voyager.

A. veux  
B. voulais  
C. voudrai  
D. voudrais  

---

**Q19.** Complétez: ____ maison est grande.

A. Cet  
B. Cette  
C. Ce  
D. Ces  

---

**Q20.** Complétez: ____ père travaille à l''hôpital.

A. Ton  
B. Mon  
C. Mes  
D. Ma  

---

**Q21.** Complétez: Nous ____ à Douala.

A. habite  
B. habitez  
C. habitons  
D. habitent  

---

**Q22.** Le passé composé de ''partir'' avec ''elle'' est:

A. elle a partie  
B. elle a parti  
C. elle est parti  
D. elle est partie  

---

**Q23.** Complétez: Il va ____ France.

A. aux  
B. au  
C. en  
D. à  

---

**Q24.** Complétez: Le livre est ____ la table.

A. de  
B. à  
C. dans  
D. sur  

---

**Q25.** Complétez: ____ enfants jouent dans la cour.

A. Les  
B. Le  
C. La  
D. Un  

---

**Q26.** Le pluriel de ''un travail'' est:

A. des travaux  
B. des travails  
C. des travail  
D. des travailes  

---

**Q27.** Complétez: Je ____ content.

A. suis  
B. est  
C. es  
D. sommes  

---

**Q28.** Complétez: Nous ____ le temps.

A. aurons  
B. avions  
C. eûmes  
D. avons  

---

**Q29.** Complétez: Elle ____ souvent.

A. vient  
B. viens  
C. viennent  
D. venez  

---

**Q30.** Complétez: Ils ____ leurs devoirs.

A. font  
B. faisons  
C. fais  
D. fait  

---

**Q31.** Le Cameroun est appelé:

A. le pays des lions  
B. l''Afrique en miniature  
C. la perle de l''Afrique  
D. le grenier de l''Afrique  

---

**Q32.** Combien de groupes ethniques compte le Cameroun?

A. environ 50  
B. plus de 250  
C. moins de 100  
D. plus de 1000  

---

**Q33.** Le marché de Mokolo se trouve à:

A. Douala  
B. Bafoussam  
C. Yaoundé  
D. Garoua  

---

**Q34.** L''équipe nationale de football du Cameroun s''appelle:

A. les Éléphants  
B. les Aigles  
C. les Panthères  
D. les Lions Indomptables  

---

**Q35.** Samuel Eto''o est un célèbre:

A. chanteur  
B. médecin  
C. footballeur  
D. écrivain  

---

**Q36.** Pour rester en bonne santé, il faut:

A. fumer  
B. ne pas dormir  
C. boire de l''alcool  
D. manger équilibré  

---

**Q37.** Le texte sur la pluie se termine par:

A. de la neige  
B. un arc-en-ciel  
C. une tempête  
D. un orage  

---

**Q38.** Dans le texte sur le marché, les vendeurs:

A. dorment  
B. crient pour attirer les clients  
C. lisent des livres  
D. chantent des chansons  

---

**Q39.** L''éducation est importante parce qu''elle:

A. est obligatoire  
B. coûte cher  
C. forme des travailleurs qualifiés  
D. est facile  

---

**Q40.** Les principales cultures d''exportation du Cameroun sont:

A. le coton et le tabac  
B. le riz et le blé  
C. les bananes et les oranges  
D. le cacao et le café  

---

**Q41.** Le commerce équitable garantit:

A. plus de publicité  
B. des prix plus élevés  
C. un prix juste pour les producteurs  
D. des produits gratuits  

---

**Q42.** Dans la culture camerounaise, les enfants:

A. quittent la maison  
B. ne parlent pas  
C. ignorent leurs parents  
D. respectent leurs aînés  

---

**Q43.** Pour protéger l''environnement, il faut:

A. couper les arbres  
B. trier les déchets  
C. jeter les ordures dans la nature  
D. gaspiller l''eau  

---

**Q44.** La technologie permet de:

A. apprendre sans effort  
B. voir ses proches à l''écran  
C. cuisiner plus vite  
D. voyager gratuitement  

---

**Q45.** Le texte sur la santé conseille de:

A. ne pas consulter le médecin  
B. fumer  
C. boire beaucoup d''eau  
D. manger trop  

---

**Q46.** Dans le texte sur la pluie, les enfants:

A. travaillaient  
B. pleuraient  
C. dormaient  
D. jouaient dans les flaques d''eau  

---

**Q47.** Le football est le sport le plus populaire:

A. au Brésil  
B. en Chine  
C. au Cameroun  
D. en France  

---

**Q48.** Les enfants jouent au football avec:

A. des bouteilles  
B. des pierres  
C. des ballons officiels  
D. des ballons improvisés  

---

**Q49.** Une lettre à un ami doit commencer par:

A. Cher/Cher ami  
B. Monsieur le Président  
C. À qui de droit  
D. Bonjour tout le monde  

---

**Q50.** Pour décrire sa journée typique, on utilise:

A. le présent  
B. le passé composé  
C. le subjonctif  
D. le futur  

---

**Q51.** Pour raconter ce qu''on a fait le week-end dernier, on utilise:

A. le passé composé  
B. le futur simple  
C. le présent  
D. l''impératif  

---

**Q52.** Un dialogue est un échange entre:

A. deux personnes  
B. un groupe de spectateurs  
C. un professeur et un tableau  
D. une seule personne  

---

**Q53.** Le texte sur la famille dit que les grandes occasions:

A. rassemblent toute la famille  
B. ne concernent que les enfants  
C. sont rares  
D. sont tristes  

---

**Q54.** Pour inviter un ami à son anniversaire, on écrit:

A. une lettre d''invitation  
B. un poème  
C. une lettre de démission  
D. une lettre de réclamation  

---

**Q55.** Le texte sur l''environnement dit que le respect commence:

A. à l''école  
B. à la maison  
C. au marché  
D. à la plage  

---

**Q56.** Dans le texte sur le marché, l''air est rempli:

A. de musique  
B. d''odeurs variées  
C. de silence  
D. de fumée  

---

**Q57.** Le texte sur l''éducation dit que l''éducation est:

A. un luxe  
B. une perte de temps  
C. la clé du développement  
D. réservée aux riches  

---

**Q58.** Pour rester en bonne santé, il faut éviter:

A. l''eau et les fruits  
B. le sport et le sommeil  
C. les légumes  
D. le tabac et l''alcool  

---

**Q59.** Le texte sur la technologie dit que certains pensent qu''elle:

A. nous rapproche toujours  
B. est trop chère  
C. nous éloigne les uns des autres  
D. est inutile  

---

**Q60.** Le texte sur le commerce équitable parle du:

A. pétrole et du gaz  
B. coton et du riz  
C. bois et du fer  
D. cacao et du café  

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
  where subject = 'French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Le passé composé de ''manger'' avec ''je'' est:

A. j''ai mangé  
B. je mange  
C. je mangerai  
D. je mangeais  

---

**Q2.** Complétez: Ils ____ à l''école.

A. vont  
B. va  
C. allons  
D. vais  

---

**Q3.** Le futur de ''être'' avec ''je'' est:

A. je serai  
B. j''étais  
C. je suis  
D. je fus  

---

**Q4.** Complétez: Tu ____ ton livre.

A. as  
B. avez  
C. ont  
D. a  

---

**Q5.** L''imparfait de ''avoir'' avec ''nous'' est:

A. nous avions  
B. nous eûmes  
C. nous avons  
D. nous aurons  

---

**Q6.** Complétez: Le livre ____ je parle est intéressant.

A. dont  
B. où  
C. que  
D. qui  

---

**Q7.** Complétez: La femme ____ chante est ma mère.

A. que  
B. qui  
C. dont  
D. où  

---

**Q8.** Le pluriel de ''le cheval'' est:

A. les chevals  
B. les chevaux  
C. les chevauxs  
D. les chevaus  

---

**Q9.** Complétez: ____ eau est bonne.

A. Le  
B. La  
C. L''  
D. Les  

---

**Q10.** Complétez: J''achète ____ pain.

A. de la  
B. des  
C. le  
D. du  

---

**Q11.** La négation de ''Il a mangé'' est:

A. Il a pas mangé  
B. Il n''a mangé pas  
C. Il n''a pas mangé  
D. Il ne mange pas  

---

**Q12.** Complétez: Elle est ____ grande que sa sœur.

A. moins  
B. très  
C. aussi  
D. plus  

---

**Q13.** Le féminin de ''acteur'' est:

A. acteurse  
B. actrice  
C. acteure  
D. acteuse  

---

**Q14.** Complétez: Il faut que tu ____.

A. viendras  
B. viennes  
C. venais  
D. viens  

---

**Q15.** Complétez: Je ____ voyager.

A. veux  
B. voudrai  
C. voudrais  
D. voulais  

---

**Q16.** Complétez: ____ maison est grande.

A. Ces  
B. Ce  
C. Cet  
D. Cette  

---

**Q17.** Complétez: ____ père travaille à l''hôpital.

A. Mes  
B. Ton  
C. Mon  
D. Ma  

---

**Q18.** Complétez: Nous ____ à Douala.

A. habitent  
B. habite  
C. habitez  
D. habitons  

---

**Q19.** Le passé composé de ''partir'' avec ''elle'' est:

A. elle a partie  
B. elle est partie  
C. elle a parti  
D. elle est parti  

---

**Q20.** Complétez: Il va ____ France.

A. aux  
B. en  
C. au  
D. à  

---

**Q21.** Complétez: Le livre est ____ la table.

A. de  
B. dans  
C. sur  
D. à  

---

**Q22.** Complétez: ____ enfants jouent dans la cour.

A. Un  
B. Le  
C. La  
D. Les  

---

**Q23.** Le pluriel de ''un travail'' est:

A. des travail  
B. des travailes  
C. des travaux  
D. des travails  

---

**Q24.** Complétez: Je ____ content.

A. sommes  
B. est  
C. es  
D. suis  

---

**Q25.** Complétez: Nous ____ le temps.

A. aurons  
B. avons  
C. avions  
D. eûmes  

---

**Q26.** Complétez: Elle ____ souvent.

A. vient  
B. viennent  
C. viens  
D. venez  

---

**Q27.** Complétez: Ils ____ leurs devoirs.

A. font  
B. fais  
C. fait  
D. faisons  

---

**Q28.** Complétez: Je ____ au marché.

A. vais  
B. vont  
C. allons  
D. va  

---

**Q29.** Complétez: Nous ____ français.

A. parlons  
B. parle  
C. parlez  
D. parlent  

---

**Q30.** Complétez: Elle ____ une lettre.

A. écrit  
B. écrivez  
C. écrivent  
D. écris  

---

**Q31.** L''équipe nationale de football du Cameroun s''appelle:

A. les Éléphants  
B. les Lions Indomptables  
C. les Aigles  
D. les Panthères  

---

**Q32.** Samuel Eto''o est un célèbre:

A. chanteur  
B. footballeur  
C. médecin  
D. écrivain  

---

**Q33.** Pour rester en bonne santé, il faut:

A. fumer  
B. boire de l''alcool  
C. manger équilibré  
D. ne pas dormir  

---

**Q34.** Le texte sur la pluie se termine par:

A. une tempête  
B. de la neige  
C. un orage  
D. un arc-en-ciel  

---

**Q35.** Dans le texte sur le marché, les vendeurs:

A. chantent des chansons  
B. lisent des livres  
C. crient pour attirer les clients  
D. dorment  

---

**Q36.** L''éducation est importante parce qu''elle:

A. coûte cher  
B. est facile  
C. est obligatoire  
D. forme des travailleurs qualifiés  

---

**Q37.** Les principales cultures d''exportation du Cameroun sont:

A. le coton et le tabac  
B. le cacao et le café  
C. le riz et le blé  
D. les bananes et les oranges  

---

**Q38.** Le commerce équitable garantit:

A. plus de publicité  
B. un prix juste pour les producteurs  
C. des prix plus élevés  
D. des produits gratuits  

---

**Q39.** Dans la culture camerounaise, les enfants:

A. quittent la maison  
B. ignorent leurs parents  
C. respectent leurs aînés  
D. ne parlent pas  

---

**Q40.** Pour protéger l''environnement, il faut:

A. gaspiller l''eau  
B. jeter les ordures dans la nature  
C. couper les arbres  
D. trier les déchets  

---

**Q41.** La technologie permet de:

A. cuisiner plus vite  
B. apprendre sans effort  
C. voir ses proches à l''écran  
D. voyager gratuitement  

---

**Q42.** Le texte sur la santé conseille de:

A. manger trop  
B. ne pas consulter le médecin  
C. fumer  
D. boire beaucoup d''eau  

---

**Q43.** Dans le texte sur la pluie, les enfants:

A. travaillaient  
B. jouaient dans les flaques d''eau  
C. pleuraient  
D. dormaient  

---

**Q44.** Le football est le sport le plus populaire:

A. au Brésil  
B. au Cameroun  
C. en Chine  
D. en France  

---

**Q45.** Les enfants jouent au football avec:

A. des bouteilles  
B. des ballons officiels  
C. des ballons improvisés  
D. des pierres  

---

**Q46.** Une lettre à un ami doit commencer par:

A. Bonjour tout le monde  
B. Monsieur le Président  
C. À qui de droit  
D. Cher/Cher ami  

---

**Q47.** Pour décrire sa journée typique, on utilise:

A. le subjonctif  
B. le futur  
C. le présent  
D. le passé composé  

---

**Q48.** Pour raconter ce qu''on a fait le week-end dernier, on utilise:

A. l''impératif  
B. le futur simple  
C. le présent  
D. le passé composé  

---

**Q49.** Un dialogue est un échange entre:

A. deux personnes  
B. une seule personne  
C. un groupe de spectateurs  
D. un professeur et un tableau  

---

**Q50.** Le texte sur la famille dit que les grandes occasions:

A. rassemblent toute la famille  
B. sont rares  
C. ne concernent que les enfants  
D. sont tristes  

---

**Q51.** Pour inviter un ami à son anniversaire, on écrit:

A. une lettre d''invitation  
B. une lettre de démission  
C. une lettre de réclamation  
D. un poème  

---

**Q52.** Le texte sur l''environnement dit que le respect commence:

A. à la maison  
B. au marché  
C. à la plage  
D. à l''école  

---

**Q53.** Dans le texte sur le marché, l''air est rempli:

A. d''odeurs variées  
B. de silence  
C. de musique  
D. de fumée  

---

**Q54.** Le texte sur l''éducation dit que l''éducation est:

A. la clé du développement  
B. réservée aux riches  
C. une perte de temps  
D. un luxe  

---

**Q55.** Pour rester en bonne santé, il faut éviter:

A. l''eau et les fruits  
B. le tabac et l''alcool  
C. le sport et le sommeil  
D. les légumes  

---

**Q56.** Le texte sur la technologie dit que certains pensent qu''elle:

A. nous rapproche toujours  
B. nous éloigne les uns des autres  
C. est trop chère  
D. est inutile  

---

**Q57.** Le texte sur le commerce équitable parle du:

A. pétrole et du gaz  
B. bois et du fer  
C. cacao et du café  
D. coton et du riz  

---

**Q58.** Le Cameroun est appelé:

A. le pays des lions  
B. la perle de l''Afrique  
C. le grenier de l''Afrique  
D. l''Afrique en miniature  

---

**Q59.** Combien de groupes ethniques compte le Cameroun?

A. environ 50  
B. moins de 100  
C. plus de 250  
D. plus de 1000  

---

**Q60.** Le marché de Mokolo se trouve à:

A. Douala  
B. Garoua  
C. Bafoussam  
D. Yaoundé  

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
  where subject = 'French'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'French',
  'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** French

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Complétez: Tu ____ ton livre.

A. as  
B. a  
C. avez  
D. ont  

---

**Q2.** L''imparfait de ''avoir'' avec ''nous'' est:

A. nous avions  
B. nous avons  
C. nous eûmes  
D. nous aurons  

---

**Q3.** Complétez: Le livre ____ je parle est intéressant.

A. dont  
B. que  
C. qui  
D. où  

---

**Q4.** Complétez: La femme ____ chante est ma mère.

A. qui  
B. dont  
C. où  
D. que  

---

**Q5.** Le pluriel de ''le cheval'' est:

A. les chevaux  
B. les chevauxs  
C. les chevals  
D. les chevaus  

---

**Q6.** Complétez: ____ eau est bonne.

A. L''  
B. Les  
C. La  
D. Le  

---

**Q7.** Complétez: J''achète ____ pain.

A. de la  
B. du  
C. des  
D. le  

---

**Q8.** La négation de ''Il a mangé'' est:

A. Il a pas mangé  
B. Il n''a pas mangé  
C. Il n''a mangé pas  
D. Il ne mange pas  

---

**Q9.** Complétez: Elle est ____ grande que sa sœur.

A. moins  
B. aussi  
C. plus  
D. très  

---

**Q10.** Le féminin de ''acteur'' est:

A. acteure  
B. acteurse  
C. acteuse  
D. actrice  

---

**Q11.** Complétez: Il faut que tu ____.

A. viens  
B. venais  
C. viennes  
D. viendras  

---

**Q12.** Complétez: Je ____ voyager.

A. voudrai  
B. voulais  
C. veux  
D. voudrais  

---

**Q13.** Complétez: ____ maison est grande.

A. Ces  
B. Cette  
C. Ce  
D. Cet  

---

**Q14.** Complétez: ____ père travaille à l''hôpital.

A. Mes  
B. Mon  
C. Ton  
D. Ma  

---

**Q15.** Complétez: Nous ____ à Douala.

A. habitent  
B. habitez  
C. habitons  
D. habite  

---

**Q16.** Le passé composé de ''partir'' avec ''elle'' est:

A. elle est parti  
B. elle a parti  
C. elle a partie  
D. elle est partie  

---

**Q17.** Complétez: Il va ____ France.

A. au  
B. aux  
C. en  
D. à  

---

**Q18.** Complétez: Le livre est ____ la table.

A. à  
B. de  
C. dans  
D. sur  

---

**Q19.** Complétez: ____ enfants jouent dans la cour.

A. Un  
B. Les  
C. Le  
D. La  

---

**Q20.** Le pluriel de ''un travail'' est:

A. des travail  
B. des travaux  
C. des travailes  
D. des travails  

---

**Q21.** Complétez: Je ____ content.

A. sommes  
B. es  
C. suis  
D. est  

---

**Q22.** Complétez: Nous ____ le temps.

A. eûmes  
B. avons  
C. avions  
D. aurons  

---

**Q23.** Complétez: Elle ____ souvent.

A. viens  
B. venez  
C. vient  
D. viennent  

---

**Q24.** Complétez: Ils ____ leurs devoirs.

A. faisons  
B. fais  
C. fait  
D. font  

---

**Q25.** Complétez: Je ____ au marché.

A. vais  
B. va  
C. vont  
D. allons  

---

**Q26.** Complétez: Nous ____ français.

A. parlons  
B. parlez  
C. parle  
D. parlent  

---

**Q27.** Complétez: Elle ____ une lettre.

A. écrit  
B. écrivent  
C. écris  
D. écrivez  

---

**Q28.** Le passé composé de ''manger'' avec ''je'' est:

A. j''ai mangé  
B. je mangerai  
C. je mangeais  
D. je mange  

---

**Q29.** Complétez: Ils ____ à l''école.

A. vont  
B. allons  
C. va  
D. vais  

---

**Q30.** Le futur de ''être'' avec ''je'' est:

A. je serai  
B. je fus  
C. j''étais  
D. je suis  

---

**Q31.** Le texte sur la pluie se termine par:

A. une tempête  
B. un arc-en-ciel  
C. de la neige  
D. un orage  

---

**Q32.** Dans le texte sur le marché, les vendeurs:

A. chantent des chansons  
B. crient pour attirer les clients  
C. lisent des livres  
D. dorment  

---

**Q33.** L''éducation est importante parce qu''elle:

A. coûte cher  
B. est obligatoire  
C. forme des travailleurs qualifiés  
D. est facile  

---

**Q34.** Les principales cultures d''exportation du Cameroun sont:

A. le riz et le blé  
B. le coton et le tabac  
C. les bananes et les oranges  
D. le cacao et le café  

---

**Q35.** Le commerce équitable garantit:

A. des produits gratuits  
B. des prix plus élevés  
C. un prix juste pour les producteurs  
D. plus de publicité  

---

**Q36.** Dans la culture camerounaise, les enfants:

A. ignorent leurs parents  
B. ne parlent pas  
C. quittent la maison  
D. respectent leurs aînés  

---

**Q37.** Pour protéger l''environnement, il faut:

A. gaspiller l''eau  
B. trier les déchets  
C. jeter les ordures dans la nature  
D. couper les arbres  

---

**Q38.** La technologie permet de:

A. cuisiner plus vite  
B. voir ses proches à l''écran  
C. apprendre sans effort  
D. voyager gratuitement  

---

**Q39.** Le texte sur la santé conseille de:

A. manger trop  
B. fumer  
C. boire beaucoup d''eau  
D. ne pas consulter le médecin  

---

**Q40.** Dans le texte sur la pluie, les enfants:

A. dormaient  
B. pleuraient  
C. travaillaient  
D. jouaient dans les flaques d''eau  

---

**Q41.** Le football est le sport le plus populaire:

A. en Chine  
B. au Brésil  
C. au Cameroun  
D. en France  

---

**Q42.** Les enfants jouent au football avec:

A. des pierres  
B. des bouteilles  
C. des ballons officiels  
D. des ballons improvisés  

---

**Q43.** Une lettre à un ami doit commencer par:

A. Bonjour tout le monde  
B. Cher/Cher ami  
C. Monsieur le Président  
D. À qui de droit  

---

**Q44.** Pour décrire sa journée typique, on utilise:

A. le subjonctif  
B. le présent  
C. le futur  
D. le passé composé  

---

**Q45.** Pour raconter ce qu''on a fait le week-end dernier, on utilise:

A. l''impératif  
B. le présent  
C. le passé composé  
D. le futur simple  

---

**Q46.** Un dialogue est un échange entre:

A. un professeur et un tableau  
B. une seule personne  
C. un groupe de spectateurs  
D. deux personnes  

---

**Q47.** Le texte sur la famille dit que les grandes occasions:

A. ne concernent que les enfants  
B. sont tristes  
C. rassemblent toute la famille  
D. sont rares  

---

**Q48.** Pour inviter un ami à son anniversaire, on écrit:

A. un poème  
B. une lettre de démission  
C. une lettre de réclamation  
D. une lettre d''invitation  

---

**Q49.** Le texte sur l''environnement dit que le respect commence:

A. à la maison  
B. à l''école  
C. au marché  
D. à la plage  

---

**Q50.** Dans le texte sur le marché, l''air est rempli:

A. d''odeurs variées  
B. de musique  
C. de silence  
D. de fumée  

---

**Q51.** Le texte sur l''éducation dit que l''éducation est:

A. la clé du développement  
B. une perte de temps  
C. un luxe  
D. réservée aux riches  

---

**Q52.** Pour rester en bonne santé, il faut éviter:

A. le tabac et l''alcool  
B. le sport et le sommeil  
C. les légumes  
D. l''eau et les fruits  

---

**Q53.** Le texte sur la technologie dit que certains pensent qu''elle:

A. nous éloigne les uns des autres  
B. est trop chère  
C. nous rapproche toujours  
D. est inutile  

---

**Q54.** Le texte sur le commerce équitable parle du:

A. cacao et du café  
B. coton et du riz  
C. bois et du fer  
D. pétrole et du gaz  

---

**Q55.** Le Cameroun est appelé:

A. le pays des lions  
B. l''Afrique en miniature  
C. la perle de l''Afrique  
D. le grenier de l''Afrique  

---

**Q56.** Combien de groupes ethniques compte le Cameroun?

A. environ 50  
B. plus de 250  
C. moins de 100  
D. plus de 1000  

---

**Q57.** Le marché de Mokolo se trouve à:

A. Douala  
B. Bafoussam  
C. Yaoundé  
D. Garoua  

---

**Q58.** L''équipe nationale de football du Cameroun s''appelle:

A. les Éléphants  
B. les Aigles  
C. les Panthères  
D. les Lions Indomptables  

---

**Q59.** Samuel Eto''o est un célèbre:

A. chanteur  
B. médecin  
C. footballeur  
D. écrivain  

---

**Q60.** Pour rester en bonne santé, il faut:

A. fumer  
B. ne pas dormir  
C. boire de l''alcool  
D. manger équilibré  

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
  where subject = 'Biology'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Biology',
  'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 4

## Structural Question Bank — Cells and transport

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CELLS AND TRANSPORT

**Q1.** (a) Draw a labelled diagram of a plant cell as seen under a light microscope. *(5 marks)*

(b) State three differences between a plant cell and an animal cell. *(3 marks)*

(c) Explain how the structure of the cell membrane is related to its function. *(4 marks)*

---

**Q2.** An experiment was set up with a potato cylinder placed in distilled water and another in a concentrated salt solution.

(a) State what would happen to each cylinder. *(4 marks)*

(b) Explain your answers using the terms osmosis, turgor, and plasmolysis. *(6 marks)*

(c) Name the process involved and state its importance in plants. *(3 marks)*

---

**Q3.** (a) Define diffusion and give two examples in living organisms. *(4 marks)*

(b) State three factors that affect the rate of diffusion. *(3 marks)*

(c) Explain why diffusion is important in the human respiratory system. *(4 marks)*

---

**Q4.** (a) What is active transport? *(3 marks)*

(b) Give two differences between active transport and diffusion. *(4 marks)*

(c) Explain the role of active transport in the absorption of mineral salts by plant roots. *(5 marks)*

---

**Q5.** (a) State the functions of the following cell organelles: nucleus, mitochondria, ribosomes, chloroplast. *(4 marks)*

(b) A cell is found to contain many mitochondria. What does this suggest about its activity? Explain. *(4 marks)*

(c) Distinguish between a tissue and an organ, giving one example of each. *(4 marks)*

---

**Q6.** (a) Describe how you would prepare and observe an onion epidermal cell under a microscope. *(6 marks)*

(b) State the function of iodine solution in this preparation. *(2 marks)*

(c) Explain why the onion cell appears as a regular shape. *(3 marks)*

---

**Q7.** (a) What are enzymes? *(2 marks)*

(b) State three properties of enzymes. *(3 marks)*

(c) Describe an experiment to show the effect of temperature on the activity of an enzyme. *(6 marks)*

---

**Q8.** (a) Define the term "lock and key hypothesis" as applied to enzymes. *(4 marks)*

(b) Explain what happens when an enzyme is boiled. *(3 marks)*

(c) State two factors, other than temperature, that affect enzyme activity. *(2 marks)*

---

**Q9.** (a) Distinguish between osmosis and diffusion. *(4 marks)*

(b) A red blood cell is placed in distilled water. State and explain what happens. *(4 marks)*

(c) Explain why a plant cell placed in distilled water does not burst. *(4 marks)*

---

**Q10.** (a) Draw and label a diagram of an animal cell. *(5 marks)*

(b) State the function of each labelled part. *(5 marks)*

(c) Explain how the animal cell differs from a plant cell in terms of shape and why. *(3 marks)*

---

**Q11.** (a) What is meant by the term "concentration gradient"? *(2 marks)*

(b) Explain how a concentration gradient affects the rate of diffusion. *(4 marks)*

(c) Describe how oxygen moves from the alveoli into the blood. *(4 marks)*

---

**Q12.** (a) State the role of the cell wall in plants. *(3 marks)*

(b) Explain why the cell wall is described as "fully permeable". *(3 marks)*

(c) Compare the cell wall with the cell membrane in terms of permeability. *(4 marks)*

---

**Q13.** (a) What is a selectively permeable membrane? *(3 marks)*

(b) Give two examples of selectively permeable membranes in living organisms. *(2 marks)*

(c) Explain how selective permeability is important in the kidney. *(5 marks)*

---

**Q14.** (a) Define the term "turgidity". *(2 marks)*

(b) Explain how turgidity supports non-woody plants. *(4 marks)*

(c) Describe what happens to a plant when it wilts. *(4 marks)*

---

**Q15.** (a) State three functions of the nucleus. *(3 marks)*

(b) Explain why the nucleus is described as the "control centre" of the cell. *(4 marks)*

(c) Distinguish between a gene and a chromosome. *(3 marks)*

---

**Q16.** (a) What is the function of the mitochondria? *(2 marks)*

(b) Explain why muscle cells contain more mitochondria than skin cells. *(4 marks)*

(c) State the equation for aerobic respiration. *(3 marks)*

---

**Q17.** (a) Define the term "enzyme specificity". *(3 marks)*

(b) Explain why amylase cannot digest proteins. *(4 marks)*

(c) Give two examples of enzymes and the substrates they act on. *(4 marks)*

---

**Q18.** (a) Describe an experiment to demonstrate osmosis using a Visking tubing. *(6 marks)*

(b) State the results you would expect. *(3 marks)*

(c) Explain the results in terms of osmosis. *(4 marks)*

---

**Q19.** (a) What is the difference between a unicellular and a multicellular organism? *(3 marks)*

(b) Give one example of each. *(2 marks)*

(c) Explain how the cells of a multicellular organism become specialised. *(4 marks)*

---

**Q20.** (a) State three differences between diffusion and active transport. *(3 marks)*

(b) Explain why energy is required for active transport. *(3 marks)*

(c) Describe how the small intestine uses active transport to absorb glucose. *(5 marks)*
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