begin;

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
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1

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

**Q1.** The modulus of $3 + 4i$ is:

A. 5  
B. 7  
C. 1  
D. 25  

---

**Q2.** The argument of $1 + i$ is:

A. 45°  
B. 90°  
C. 30°  
D. 135°  

---

**Q3.** The complex conjugate of $2 - 3i$ is:

A. 2 + 3i  
B. -2 + 3i  
C. 2 - 3i  
D. -2 - 3i  

---

**Q4.** The product $(1 + i)(1 - i)$ equals:

A. 2  
B. 1  
C. -2  
D. 0  

---

**Q5.** The roots of $z^2 + 4 = 0$ are:

A. ±2i  
B. ±4  
C. ±2  
D. ±4i  

---

**Q6.** The value of $i^2$ is:

A. -1  
B. -i  
C. i  
D. 1  

---

**Q7.** The value of $i^4$ is:

A. -1  
B. 1  
C. i  
D. -i  

---

**Q8.** The determinant of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 11  
B. 5  
C. 6  
D. 10  

---

**Q9.** The inverse of $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$ is:

A. $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$  
B. $\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$  
C. $\begin{pmatrix} 1/2 & 0 \\ 0 & 1/4 \end{pmatrix}$  
D. $\begin{pmatrix} 0 & 2 \\ 4 & 0 \end{pmatrix}$  

---

**Q10.** The trace of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 5  
B. 11  
C. 10  
D. 6  

---

**Q11.** The eigenvalues of $\begin{pmatrix} 2 & 0 \\ 0 & 3 \end{pmatrix}$ are:

A. 5 and 6  
B. 0 and 1  
C. 2 and 3  
D. 1 and 2  

---

**Q12.** The dot product of $\mathbf{i} + 2\mathbf{j}$ and $2\mathbf{i} + 3\mathbf{j}$ is:

A. 7  
B. 5  
C. 6  
D. 8  

---

**Q13.** The vectors $\mathbf{a} = 2\mathbf{i} + \mathbf{j}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j}$ are:

A. equal  
B. perpendicular  
C. parallel  
D. opposite  

---

**Q14.** The sum $1 + 2 + 3 + \cdots + n$ equals:

A. $n^2$  
B. $\frac{n(n+1)}{2}$  
C. $\frac{n(n+1)(2n+1)}{6}$  
D. $\frac{n(n-1)}{2}$  

---

**Q15.** The sum $1^2 + 2^2 + \cdots + n^2$ equals:

A. $n^3$  
B. $\frac{n(n+1)}{2}$  
C. $\frac{n(n+1)(2n+1)}{6}$  
D. $\frac{n^2(n+1)}{2}$  

---

**Q16.** The sum to infinity of $1 + \frac{1}{2} + \frac{1}{4} + \cdots$ is:

A. 3  
B. 1  
C. $\frac{3}{2}$  
D. 2  

---

**Q17.** The coefficient of $x^2$ in $(1 + x)^4$ is:

A. 12  
B. 8  
C. 6  
D. 4  

---

**Q18.** The remainder when $x^3 - 2x + 1$ is divided by $x - 1$ is:

A. 2  
B. -1  
C. 1  
D. 0  

---

**Q19.** Given that $x - 1$ is a factor of $x^3 - 1$, the other factor is:

A. $x^2 - 1$  
B. $x^2 + x + 1$  
C. $x^2 - x + 1$  
D. $x^2 + 1$  

---

**Q20.** The value of $\lim_{x \to 0} \frac{\sin x}{x}$ is:

A. undefined  
B. 1  
C. ∞  
D. 0  

---

**Q21.** The value of $\lim_{x \to \infty} \frac{1}{x}$ is:

A. undefined  
B. 1  
C. 0  
D. ∞  

---

**Q22.** The general solution of $\frac{dy}{dx} = \frac{y}{x}$ is:

A. $y = e^{kx}$  
B. $y = k/x$  
C. $y = kx^2$  
D. $y = kx$  

---

**Q23.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 5 and 6  
B. -2 and -3  
C. 2 and 3  
D. 1 and 6  

---

**Q24.** The sum of the roots of $x^2 - 5x + 6 = 0$ is:

A. -6  
B. -5  
C. 6  
D. 5  

---

**Q25.** The product of the roots of $x^2 - 5x + 6 = 0$ is:

A. 6  
B. 5  
C. -6  
D. -5  

---

**Q26.** The partial fractions of $\frac{1}{(x-1)(x+1)}$ are:

A. $\frac{1/2}{x-1} - \frac{1/2}{x+1}$  
B. $\frac{1}{x-1} + \frac{1}{x+1}$  
C. $\frac{1}{x-1} - \frac{1}{x+1}$  
D. $\frac{1/2}{x-1} + \frac{1/2}{x+1}$  

---

**Q27.** The value of $(1 + i)^2$ is:

A. 2i  
B. -2i  
C. 2  
D. -2  

---

**Q28.** The value of $(1 + i)^4$ is:

A. -4  
B. 4i  
C. -4i  
D. 4  

---

**Q29.** The modulus of $\frac{1}{i}$ is:

A. 1  
B. -1  
C. 0  
D. i  

---

**Q30.** The argument of $-1$ is:

A. 180°  
B. 270°  
C. 90°  
D. 0°  

---

**Q31.** The SI unit of force is the:

A. joule  
B. newton  
C. watt  
D. pascal  

---

**Q32.** The SI unit of momentum is:

A. kg m/s²  
B. kg m/s  
C. J  
D. N m  

---

**Q33.** The SI unit of impulse is:

A. N m  
B. J  
C. N s  
D. W  

---

**Q34.** The acceleration of a body of mass 2 kg under a force of 10 N is:

A. 2 m/s²  
B. 20 m/s²  
C. 0.2 m/s²  
D. 5 m/s²  

---

**Q35.** The momentum of a 3 kg body moving at 4 m/s is:

A. 7 kg m/s  
B. 48 kg m/s  
C. 12 kg m/s  
D. 1 kg m/s  

---

**Q36.** The kinetic energy of a 2 kg body moving at 3 m/s is:

A. 6 J  
B. 12 J  
C. 18 J  
D. 9 J  

---

**Q37.** The work done by a force of 10 N moving a body 5 m is:

A. 15 J  
B. 50 J  
C. 2 J  
D. 0.5 J  

---

**Q38.** The power of a machine doing 300 J of work in 10 s is:

A. 3 W  
B. 30 W  
C. 0.03 W  
D. 3000 W  

---

**Q39.** The maximum height reached by a body projected at 20 m/s (g = 10 m/s²) is:

A. 40 m  
B. 10 m  
C. 20 m  
D. 2 m  

---

**Q40.** The time of flight of a projectile fired at 50 m/s at 30° to the horizontal (g = 10 m/s²) is:

A. 2.5 s  
B. 10 s  
C. 50 s  
D. 5 s  

---

**Q41.** The horizontal range of a projectile fired at 50 m/s at 30° (g = 10 m/s²) is:

A. 250 m  
B. 433 m  
C. 216.5 m  
D. 125 m  

---

**Q42.** A uniform rod is balanced at its centre. The principle of moments states:

A. work = force × distance  
B. power = work ÷ time  
C. sum of forces = 0  
D. sum of clockwise moments = sum of anticlockwise moments  

---

**Q43.** The centre of mass of a uniform rod is at its:

A. centre of gravity of the rod  
B. midpoint  
C. end  
D. one-quarter point  

---

**Q44.** The probability of getting exactly 6 heads in 10 tosses of a fair coin is:

A. $6/10$  
B. $\binom{10}{6}(1/2)^{10}$  
C. $\binom{10}{6}(1/2)^6$  
D. $(1/2)^6$  

---

**Q45.** The mean of a binomial distribution with n = 10 and p = 0.5 is:

A. 0.5  
B. 2.5  
C. 5  
D. 10  

---

**Q46.** The variance of a binomial distribution with n = 10 and p = 0.5 is:

A. 0.5  
B. 5  
C. 10  
D. 2.5  

---

**Q47.** The mean of a Poisson distribution with parameter λ is:

A. 1/λ  
B. √λ  
C. λ  
D. λ²  

---

**Q48.** The variance of a Poisson distribution with parameter λ is:

A. 1/λ  
B. √λ  
C. λ²  
D. λ  

---

**Q49.** For a standard normal distribution, the mean is:

A. 0  
B. 1  
C. 50  
D. 100  

---

**Q50.** For a standard normal distribution, the variance is:

A. 1  
B. 0  
C. 100  
D. 50  

---

**Q51.** The z-score of a value 60 from a normal distribution with mean 50 and standard deviation 5 is:

A. 2  
B. 0.5  
C. 10  
D. 1.2  

---

**Q52.** The 95% confidence interval for a mean uses the z-value:

A. 1.96  
B. 2.58  
C. 0.95  
D. 1.64  

---

**Q53.** The 99% confidence interval for a mean uses the z-value:

A. 2.58  
B. 0.99  
C. 1.96  
D. 1.64  

---

**Q54.** A sample of 100 items has mean 60 and standard deviation 8. The standard error of the mean is:

A. 0.8  
B. 80  
C. 0.08  
D. 8  

---

**Q55.** The Pearson correlation coefficient ranges from:

A. 0 to 1  
B. -1 to 1  
C. -∞ to ∞  
D. 0 to 100  

---

**Q56.** A correlation coefficient of 0 indicates:

A. perfect positive correlation  
B. no linear correlation  
C. strong correlation  
D. perfect negative correlation  

---

**Q57.** The probability of getting a sum of 7 when two dice are thrown is:

A. 1/36  
B. 7/36  
C. 6/36  
D. 1/6  

---

**Q58.** The probability of drawing a red ball from a bag of 3 red and 5 blue balls is:

A. 5/8  
B. 3/5  
C. 1/8  
D. 3/8  

---

**Q59.** Two events are independent if:

A. P(A∩B) = P(A) + P(B)  
B. P(A) = P(B)  
C. P(A∩B) = P(A)P(B)  
D. P(A∪B) = P(A)P(B)  

---

**Q60.** The probability of an impossible event is:

A. 1  
B. undefined  
C. 0.5  
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
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2

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

**Q1.** The product $(1 + i)(1 - i)$ equals:

A. 2  
B. 0  
C. 1  
D. -2  

---

**Q2.** The roots of $z^2 + 4 = 0$ are:

A. ±2i  
B. ±2  
C. ±4  
D. ±4i  

---

**Q3.** The value of $i^2$ is:

A. -1  
B. i  
C. 1  
D. -i  

---

**Q4.** The value of $i^4$ is:

A. 1  
B. i  
C. -i  
D. -1  

---

**Q5.** The determinant of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 5  
B. 6  
C. 11  
D. 10  

---

**Q6.** The inverse of $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$ is:

A. $\begin{pmatrix} 1/2 & 0 \\ 0 & 1/4 \end{pmatrix}$  
B. $\begin{pmatrix} 0 & 2 \\ 4 & 0 \end{pmatrix}$  
C. $\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$  
D. $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$  

---

**Q7.** The trace of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 5  
B. 6  
C. 11  
D. 10  

---

**Q8.** The eigenvalues of $\begin{pmatrix} 2 & 0 \\ 0 & 3 \end{pmatrix}$ are:

A. 5 and 6  
B. 2 and 3  
C. 0 and 1  
D. 1 and 2  

---

**Q9.** The dot product of $\mathbf{i} + 2\mathbf{j}$ and $2\mathbf{i} + 3\mathbf{j}$ is:

A. 7  
B. 6  
C. 8  
D. 5  

---

**Q10.** The vectors $\mathbf{a} = 2\mathbf{i} + \mathbf{j}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j}$ are:

A. parallel  
B. equal  
C. opposite  
D. perpendicular  

---

**Q11.** The sum $1 + 2 + 3 + \cdots + n$ equals:

A. $\frac{n(n-1)}{2}$  
B. $\frac{n(n+1)(2n+1)}{6}$  
C. $\frac{n(n+1)}{2}$  
D. $n^2$  

---

**Q12.** The sum $1^2 + 2^2 + \cdots + n^2$ equals:

A. $\frac{n(n+1)}{2}$  
B. $\frac{n^2(n+1)}{2}$  
C. $n^3$  
D. $\frac{n(n+1)(2n+1)}{6}$  

---

**Q13.** The sum to infinity of $1 + \frac{1}{2} + \frac{1}{4} + \cdots$ is:

A. 3  
B. 2  
C. 1  
D. $\frac{3}{2}$  

---

**Q14.** The coefficient of $x^2$ in $(1 + x)^4$ is:

A. 12  
B. 6  
C. 8  
D. 4  

---

**Q15.** The remainder when $x^3 - 2x + 1$ is divided by $x - 1$ is:

A. 2  
B. 1  
C. 0  
D. -1  

---

**Q16.** Given that $x - 1$ is a factor of $x^3 - 1$, the other factor is:

A. $x^2 + 1$  
B. $x^2 - x + 1$  
C. $x^2 - 1$  
D. $x^2 + x + 1$  

---

**Q17.** The value of $\lim_{x \to 0} \frac{\sin x}{x}$ is:

A. ∞  
B. undefined  
C. 1  
D. 0  

---

**Q18.** The value of $\lim_{x \to \infty} \frac{1}{x}$ is:

A. ∞  
B. undefined  
C. 1  
D. 0  

---

**Q19.** The general solution of $\frac{dy}{dx} = \frac{y}{x}$ is:

A. $y = e^{kx}$  
B. $y = kx$  
C. $y = k/x$  
D. $y = kx^2$  

---

**Q20.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 5 and 6  
B. 2 and 3  
C. -2 and -3  
D. 1 and 6  

---

**Q21.** The sum of the roots of $x^2 - 5x + 6 = 0$ is:

A. -6  
B. 6  
C. 5  
D. -5  

---

**Q22.** The product of the roots of $x^2 - 5x + 6 = 0$ is:

A. -5  
B. 5  
C. -6  
D. 6  

---

**Q23.** The partial fractions of $\frac{1}{(x-1)(x+1)}$ are:

A. $\frac{1}{x-1} - \frac{1}{x+1}$  
B. $\frac{1/2}{x-1} + \frac{1/2}{x+1}$  
C. $\frac{1/2}{x-1} - \frac{1/2}{x+1}$  
D. $\frac{1}{x-1} + \frac{1}{x+1}$  

---

**Q24.** The value of $(1 + i)^2$ is:

A. -2  
B. -2i  
C. 2  
D. 2i  

---

**Q25.** The value of $(1 + i)^4$ is:

A. -4  
B. 4  
C. 4i  
D. -4i  

---

**Q26.** The modulus of $\frac{1}{i}$ is:

A. 1  
B. 0  
C. -1  
D. i  

---

**Q27.** The argument of $-1$ is:

A. 180°  
B. 90°  
C. 0°  
D. 270°  

---

**Q28.** The modulus of $3 + 4i$ is:

A. 5  
B. 1  
C. 25  
D. 7  

---

**Q29.** The argument of $1 + i$ is:

A. 45°  
B. 30°  
C. 90°  
D. 135°  

---

**Q30.** The complex conjugate of $2 - 3i$ is:

A. 2 + 3i  
B. -2 - 3i  
C. -2 + 3i  
D. 2 - 3i  

---

**Q31.** The acceleration of a body of mass 2 kg under a force of 10 N is:

A. 2 m/s²  
B. 5 m/s²  
C. 20 m/s²  
D. 0.2 m/s²  

---

**Q32.** The momentum of a 3 kg body moving at 4 m/s is:

A. 7 kg m/s  
B. 12 kg m/s  
C. 48 kg m/s  
D. 1 kg m/s  

---

**Q33.** The kinetic energy of a 2 kg body moving at 3 m/s is:

A. 6 J  
B. 18 J  
C. 9 J  
D. 12 J  

---

**Q34.** The work done by a force of 10 N moving a body 5 m is:

A. 2 J  
B. 15 J  
C. 0.5 J  
D. 50 J  

---

**Q35.** The power of a machine doing 300 J of work in 10 s is:

A. 3000 W  
B. 0.03 W  
C. 30 W  
D. 3 W  

---

**Q36.** The maximum height reached by a body projected at 20 m/s (g = 10 m/s²) is:

A. 10 m  
B. 2 m  
C. 40 m  
D. 20 m  

---

**Q37.** The time of flight of a projectile fired at 50 m/s at 30° to the horizontal (g = 10 m/s²) is:

A. 2.5 s  
B. 5 s  
C. 10 s  
D. 50 s  

---

**Q38.** The horizontal range of a projectile fired at 50 m/s at 30° (g = 10 m/s²) is:

A. 250 m  
B. 216.5 m  
C. 433 m  
D. 125 m  

---

**Q39.** A uniform rod is balanced at its centre. The principle of moments states:

A. work = force × distance  
B. sum of forces = 0  
C. sum of clockwise moments = sum of anticlockwise moments  
D. power = work ÷ time  

---

**Q40.** The centre of mass of a uniform rod is at its:

A. one-quarter point  
B. end  
C. centre of gravity of the rod  
D. midpoint  

---

**Q41.** The probability of getting exactly 6 heads in 10 tosses of a fair coin is:

A. $\binom{10}{6}(1/2)^6$  
B. $6/10$  
C. $\binom{10}{6}(1/2)^{10}$  
D. $(1/2)^6$  

---

**Q42.** The mean of a binomial distribution with n = 10 and p = 0.5 is:

A. 10  
B. 0.5  
C. 2.5  
D. 5  

---

**Q43.** The variance of a binomial distribution with n = 10 and p = 0.5 is:

A. 0.5  
B. 2.5  
C. 5  
D. 10  

---

**Q44.** The mean of a Poisson distribution with parameter λ is:

A. 1/λ  
B. λ  
C. √λ  
D. λ²  

---

**Q45.** The variance of a Poisson distribution with parameter λ is:

A. 1/λ  
B. λ²  
C. λ  
D. √λ  

---

**Q46.** For a standard normal distribution, the mean is:

A. 100  
B. 1  
C. 50  
D. 0  

---

**Q47.** For a standard normal distribution, the variance is:

A. 100  
B. 50  
C. 1  
D. 0  

---

**Q48.** The z-score of a value 60 from a normal distribution with mean 50 and standard deviation 5 is:

A. 1.2  
B. 0.5  
C. 10  
D. 2  

---

**Q49.** The 95% confidence interval for a mean uses the z-value:

A. 1.96  
B. 1.64  
C. 2.58  
D. 0.95  

---

**Q50.** The 99% confidence interval for a mean uses the z-value:

A. 2.58  
B. 1.96  
C. 0.99  
D. 1.64  

---

**Q51.** A sample of 100 items has mean 60 and standard deviation 8. The standard error of the mean is:

A. 0.8  
B. 0.08  
C. 8  
D. 80  

---

**Q52.** The Pearson correlation coefficient ranges from:

A. -1 to 1  
B. -∞ to ∞  
C. 0 to 100  
D. 0 to 1  

---

**Q53.** A correlation coefficient of 0 indicates:

A. no linear correlation  
B. strong correlation  
C. perfect positive correlation  
D. perfect negative correlation  

---

**Q54.** The probability of getting a sum of 7 when two dice are thrown is:

A. 6/36  
B. 1/6  
C. 7/36  
D. 1/36  

---

**Q55.** The probability of drawing a red ball from a bag of 3 red and 5 blue balls is:

A. 5/8  
B. 3/8  
C. 3/5  
D. 1/8  

---

**Q56.** Two events are independent if:

A. P(A∩B) = P(A) + P(B)  
B. P(A∩B) = P(A)P(B)  
C. P(A) = P(B)  
D. P(A∪B) = P(A)P(B)  

---

**Q57.** The probability of an impossible event is:

A. 1  
B. 0.5  
C. 0  
D. undefined  

---

**Q58.** The probability of a certain event is:

A. 0  
B. 0.5  
C. undefined  
D. 1  

---

**Q59.** The SI unit of force is the:

A. joule  
B. pascal  
C. newton  
D. watt  

---

**Q60.** The SI unit of momentum is:

A. kg m/s²  
B. J  
C. N m  
D. kg m/s  

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
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 1

## Structural Question Bank - Set 1

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

![Argand diagram](/paper-diagrams/math-argand.svg)

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
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 2

## Structural Question Bank - Set 2

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

commit;