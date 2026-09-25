begin;

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
  where title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 1'
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
  'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** English Language

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Read: ''The market was the beating heart of the community.'' The phrase ''beating heart'' suggests the market was:

A. the centre of community life  
B. a noisy place  
C. a place of conflict  
D. a modern building  

---

**Q2.** In summary writing, the first step is to:

A. read the passage carefully to understand the main ideas  
B. copy the first sentence of each paragraph  
C. write your own opinions about the topic  
D. count the words in the passage  

---

**Q3.** A summary should be written:

A. in your own words  
B. in note form only  
C. using long quotations from the passage  
D. as a list of examples  

---

**Q4.** The main idea of a passage is best described as:

A. the central point the writer is making  
B. the most difficult word in the passage  
C. the writer''s personal opinion only  
D. the first sentence of the passage  

---

**Q5.** Read: ''The words evaporated.'' This means the speaker:

A. forgot what he wanted to say  
B. was interrupted by the crowd  
C. spoke very quietly  
D. wrote his speech down  

---

**Q6.** When asked to ''state the main idea in one sentence'', you should:

A. summarise the whole passage briefly  
B. list all the details  
C. repeat the title  
D. quote the longest sentence  

---

**Q7.** An inference is:

A. a fact stated directly in the text  
B. a conclusion drawn from evidence in the text  
C. a quotation from the text  
D. a question about the text  

---

**Q8.** Read: ''The river had always been generous.'' The word ''generous'' here suggests the river:

A. was very wide  
B. provided many benefits  
C. was polluted  
D. flowed very fast  

---

**Q9.** In a summary, you should NOT include:

A. the main points  
B. the key facts  
C. your personal opinions  
D. the essential ideas  

---

**Q10.** The word ''biodiverse'' in ''Cameroon''s forests are among the most biodiverse'' means:

A. very large in size  
B. completely untouched  
C. difficult to reach  
D. containing many different species  

---

**Q11.** Read: ''The audience wants you to succeed.'' This advice helped the speaker to:

A. leave the stage  
B. change his topic  
C. feel calmer and begin speaking  
D. memorise his speech  

---

**Q12.** When summarising, the word limit means you must:

A. write exactly the same number of words as the passage  
B. ignore the word limit  
C. write as many words as possible  
D. keep your summary within the stated number of words  

---

**Q13.** Read: ''Tourism in Cameroon is a sleeping giant.'' This means tourism:

A. is declining rapidly  
B. has great potential that is not yet realised  
C. is completely absent  
D. is too expensive for visitors  

---

**Q14.** The purpose of a comprehension passage is usually to:

A. teach grammar rules  
B. test understanding of the text  
C. list vocabulary words  
D. provide entertainment only  

---

**Q15.** Read: ''The villagers did not celebrate; they had heard such promises before.'' This suggests the villagers:

A. had never heard promises before  
B. were happy with the announcement  
C. did not trust the government''s promises  
D. were celebrating quietly  

---

**Q16.** A good summary should be:

A. the same length as the original passage  
B. longer than the original passage  
C. a copy of the original passage  
D. shorter than the original passage  

---

**Q17.** Read: ''For her, sweeping was not a chore but a meditation.'' This means the old woman:

A. swept very quickly  
B. hired someone to sweep  
C. found peace in sweeping  
D. disliked sweeping  

---

**Q18.** When a question asks you to ''explain in your own words'', you should:

A. write a longer version of the passage  
B. give your own opinion  
C. quote the passage directly  
D. rephrase the idea without copying  

---

**Q19.** Read: ''Success is not a destination but a journey.'' The writer means success is:

A. measured by certificates  
B. a continuous process  
C. a final goal  
D. impossible to achieve  

---

**Q20.** The best title for a passage about plastic waste clogging drainage channels would be:

A. A Day at the Market  
B. The Problem of Plastic Waste in Our Cities  
C. The History of Plastic  
D. How to Build Drainage Channels  

---

**Q21.** Choose the correct sentence:

A. Neither of the boys have been present.  
B. Neither of the boys were present.  
C. Neither of the boys was present.  
D. Neither of the boys are present.  

---

**Q22.** Choose the correct sentence:

A. The committee were deciding to postpone the event.  
B. The committee have decided to postpone the event.  
C. The committee are deciding to postpone the event.  
D. The committee has decided to postpone the event.  

---

**Q23.** Choose the correct sentence:

A. Each of the students were submitting the assignment.  
B. Each of the students are submitting the assignment.  
C. Each of the students has submitted the assignment.  
D. Each of the students have submitted the assignment.  

---

**Q24.** Choose the correct sentence:

A. The number of accidents have been increasing.  
B. The number of accidents were increasing.  
C. The number of accidents are increasing.  
D. The number of accidents is increasing.  

---

**Q25.** Choose the correct sentence:

A. She is good at mathematics.  
B. She is good in mathematics.  
C. She is good on mathematics.  
D. She is good for mathematics.  

---

**Q26.** Choose the correct sentence:

A. He was accused of theft.  
B. He was accused for theft.  
C. He was accused on theft.  
D. He was accused with theft.  

---

**Q27.** Choose the correct sentence:

A. The committee consists of ten members.  
B. The committee consists with ten members.  
C. The committee consists in ten members.  
D. The committee consists on ten members.  

---

**Q28.** Choose the correct sentence:

A. She is interested in learning French.  
B. She is interested for learning French.  
C. She is interested at learning French.  
D. She is interested on learning French.  

---

**Q29.** Choose the correct word: The principal gave the students some useful ____.

A. advice  
B. advising  
C. advise  
D. advices  

---

**Q30.** Choose the correct word: The new policy will ____ all workers.

A. affect  
B. effects  
C. affects  
D. effect  

---

**Q31.** Choose the correct word: Please ____ this letter to the post office.

A. bring  
B. take  
C. carry  
D. fetch  

---

**Q32.** Choose the correct word: The company''s ____ concern is customer satisfaction.

A. principle  
B. principal  
C. principles  
D. principally  

---

**Q33.** Choose the correct sentence:

A. The news are good.  
B. The news were good.  
C. The news is good.  
D. The news have been good.  

---

**Q34.** Choose the correct sentence:

A. I look forward to hear from you.  
B. I look forward to heard from you.  
C. I look forward to hears from you.  
D. I look forward to hearing from you.  

---

**Q35.** Choose the correct sentence:

A. He is the tallest of the two brothers.  
B. He is most tallest of the two brothers.  
C. He is the taller of the two brothers.  
D. He is more taller of the two brothers.  

---

**Q36.** Choose the correct sentence:

A. She is more taller than her sister.  
B. She is tallest than her sister.  
C. She is most taller than her sister.  
D. She is taller than her sister.  

---

**Q37.** Choose the correct word: The dog wagged ____ tail.

A. its''  
B. its  
C. it''s  
D. itses  

---

**Q38.** Choose the correct word: ____ going to the market.

A. There  
B. They''re  
C. Theirs  
D. Their  

---

**Q39.** Choose the correct word: ____ book is this?

A. Whom  
B. Who''s  
C. Whose  
D. Who  

---

**Q40.** Choose the correct sentence:

A. The teacher, along with her students, were going on the trip.  
B. The teacher, along with her students, are going on the trip.  
C. The teacher, along with her students, have been going on the trip.  
D. The teacher, along with her students, is going on the trip.  

---

**Q41.** An essay that tells a story is called:

A. an expository essay  
B. a descriptive essay  
C. a narrative essay  
D. an argumentative essay  

---

**Q42.** An essay that presents reasons for and against a position is called:

A. a descriptive essay  
B. a letter  
C. a narrative essay  
D. an argumentative essay  

---

**Q43.** An essay that explains or informs is called:

A. a poem  
B. an expository essay  
C. a narrative essay  
D. a story  

---

**Q44.** An essay that uses sensory details to paint a picture is called:

A. a summary  
B. a descriptive essay  
C. an expository essay  
D. an argumentative essay  

---

**Q45.** The first paragraph of an essay is called the:

A. title  
B. conclusion  
C. introduction  
D. body  

---

**Q46.** The final paragraph of an essay is called the:

A. heading  
B. introduction  
C. body  
D. conclusion  

---

**Q47.** A formal letter should begin with:

A. a joke  
B. a greeting like ''Hi''  
C. the sender''s address and the date  
D. the recipient''s name only  

---

**Q48.** The main paragraphs of an essay form the:

A. title  
B. conclusion  
C. introduction  
D. body  

---

**Q49.** A letter of application should include:

A. your qualifications and experience  
B. only your name  
C. a list of your friends  
D. your favourite hobbies  

---

**Q50.** When writing an argumentative essay, you should:

A. support your argument with reasons and examples  
B. avoid giving any reasons  
C. write without paragraphs  
D. only state the opposing view  

---

**Q51.** A narrative essay should have:

A. a clear sequence of events  
B. no setting  
C. no characters  
D. only statistics  

---

**Q52.** The purpose of an introduction is to:

A. present the topic and capture the reader''s interest  
B. list all the details  
C. repeat the title  
D. give the conclusion  

---

**Q53.** A descriptive essay about a market should include:

A. sights, sounds, and smells  
B. mathematical calculations  
C. only prices  
D. a list of items  

---

**Q54.** A formal letter to the editor should:

A. express a clear opinion on an issue  
B. be very short  
C. have no address  
D. be written in slang  

---

**Q55.** The best way to organise an expository essay is:

A. random ideas  
B. logical paragraphs with clear points  
C. a single long paragraph  
D. a list without explanation  

---

**Q56.** A story that illustrates a proverb should:

A. state the proverb only  
B. show the lesson through events  
C. be about animals only  
D. avoid any lesson  

---

**Q57.** When writing an essay, you should:

A. start writing without a plan  
B. copy from a friend  
C. plan your ideas before writing  
D. write only one paragraph  

---

**Q58.** The word count of an essay refers to:

A. the number of paragraphs  
B. the number of pages  
C. the number of sentences  
D. the number of words in the essay  

---

**Q59.** A letter of complaint should:

A. only greet the recipient  
B. be written in verse  
C. clearly state the problem and request action  
D. avoid mentioning the problem  

---

**Q60.** To make an essay interesting, a writer should:

A. repeat the same word  
B. avoid examples  
C. use only short sentences  
D. use vivid and varied language  

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
  where subject = 'English Language'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 2'
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
  'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** English Language

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The main idea of a passage is best described as:

A. the central point the writer is making  
B. the first sentence of the passage  
C. the most difficult word in the passage  
D. the writer''s personal opinion only  

---

**Q2.** Read: ''The words evaporated.'' This means the speaker:

A. forgot what he wanted to say  
B. spoke very quietly  
C. was interrupted by the crowd  
D. wrote his speech down  

---

**Q3.** When asked to ''state the main idea in one sentence'', you should:

A. summarise the whole passage briefly  
B. repeat the title  
C. quote the longest sentence  
D. list all the details  

---

**Q4.** An inference is:

A. a conclusion drawn from evidence in the text  
B. a quotation from the text  
C. a question about the text  
D. a fact stated directly in the text  

---

**Q5.** Read: ''The river had always been generous.'' The word ''generous'' here suggests the river:

A. provided many benefits  
B. was polluted  
C. was very wide  
D. flowed very fast  

---

**Q6.** In a summary, you should NOT include:

A. your personal opinions  
B. the essential ideas  
C. the key facts  
D. the main points  

---

**Q7.** The word ''biodiverse'' in ''Cameroon''s forests are among the most biodiverse'' means:

A. very large in size  
B. containing many different species  
C. completely untouched  
D. difficult to reach  

---

**Q8.** Read: ''The audience wants you to succeed.'' This advice helped the speaker to:

A. leave the stage  
B. feel calmer and begin speaking  
C. change his topic  
D. memorise his speech  

---

**Q9.** When summarising, the word limit means you must:

A. write exactly the same number of words as the passage  
B. write as many words as possible  
C. keep your summary within the stated number of words  
D. ignore the word limit  

---

**Q10.** Read: ''Tourism in Cameroon is a sleeping giant.'' This means tourism:

A. is completely absent  
B. is declining rapidly  
C. is too expensive for visitors  
D. has great potential that is not yet realised  

---

**Q11.** The purpose of a comprehension passage is usually to:

A. provide entertainment only  
B. list vocabulary words  
C. test understanding of the text  
D. teach grammar rules  

---

**Q12.** Read: ''The villagers did not celebrate; they had heard such promises before.'' This suggests the villagers:

A. were happy with the announcement  
B. were celebrating quietly  
C. had never heard promises before  
D. did not trust the government''s promises  

---

**Q13.** A good summary should be:

A. the same length as the original passage  
B. shorter than the original passage  
C. longer than the original passage  
D. a copy of the original passage  

---

**Q14.** Read: ''For her, sweeping was not a chore but a meditation.'' This means the old woman:

A. swept very quickly  
B. found peace in sweeping  
C. hired someone to sweep  
D. disliked sweeping  

---

**Q15.** When a question asks you to ''explain in your own words'', you should:

A. write a longer version of the passage  
B. quote the passage directly  
C. rephrase the idea without copying  
D. give your own opinion  

---

**Q16.** Read: ''Success is not a destination but a journey.'' The writer means success is:

A. impossible to achieve  
B. a final goal  
C. measured by certificates  
D. a continuous process  

---

**Q17.** The best title for a passage about plastic waste clogging drainage channels would be:

A. The History of Plastic  
B. A Day at the Market  
C. The Problem of Plastic Waste in Our Cities  
D. How to Build Drainage Channels  

---

**Q18.** Read: ''The market was the beating heart of the community.'' The phrase ''beating heart'' suggests the market was:

A. a place of conflict  
B. a modern building  
C. a noisy place  
D. the centre of community life  

---

**Q19.** In summary writing, the first step is to:

A. write your own opinions about the topic  
B. read the passage carefully to understand the main ideas  
C. copy the first sentence of each paragraph  
D. count the words in the passage  

---

**Q20.** A summary should be written:

A. as a list of examples  
B. in your own words  
C. in note form only  
D. using long quotations from the passage  

---

**Q21.** Choose the correct sentence:

A. The number of accidents have been increasing.  
B. The number of accidents are increasing.  
C. The number of accidents is increasing.  
D. The number of accidents were increasing.  

---

**Q22.** Choose the correct sentence:

A. She is good for mathematics.  
B. She is good in mathematics.  
C. She is good on mathematics.  
D. She is good at mathematics.  

---

**Q23.** Choose the correct sentence:

A. He was accused on theft.  
B. He was accused with theft.  
C. He was accused of theft.  
D. He was accused for theft.  

---

**Q24.** Choose the correct sentence:

A. The committee consists on ten members.  
B. The committee consists with ten members.  
C. The committee consists in ten members.  
D. The committee consists of ten members.  

---

**Q25.** Choose the correct sentence:

A. She is interested in learning French.  
B. She is interested on learning French.  
C. She is interested for learning French.  
D. She is interested at learning French.  

---

**Q26.** Choose the correct word: The principal gave the students some useful ____.

A. advice  
B. advise  
C. advising  
D. advices  

---

**Q27.** Choose the correct word: The new policy will ____ all workers.

A. affect  
B. affects  
C. effect  
D. effects  

---

**Q28.** Choose the correct word: Please ____ this letter to the post office.

A. take  
B. carry  
C. fetch  
D. bring  

---

**Q29.** Choose the correct word: The company''s ____ concern is customer satisfaction.

A. principal  
B. principles  
C. principle  
D. principally  

---

**Q30.** Choose the correct sentence:

A. The news is good.  
B. The news have been good.  
C. The news were good.  
D. The news are good.  

---

**Q31.** Choose the correct sentence:

A. I look forward to hear from you.  
B. I look forward to hearing from you.  
C. I look forward to heard from you.  
D. I look forward to hears from you.  

---

**Q32.** Choose the correct sentence:

A. He is the tallest of the two brothers.  
B. He is the taller of the two brothers.  
C. He is most tallest of the two brothers.  
D. He is more taller of the two brothers.  

---

**Q33.** Choose the correct sentence:

A. She is more taller than her sister.  
B. She is most taller than her sister.  
C. She is taller than her sister.  
D. She is tallest than her sister.  

---

**Q34.** Choose the correct word: The dog wagged ____ tail.

A. it''s  
B. its''  
C. itses  
D. its  

---

**Q35.** Choose the correct word: ____ going to the market.

A. Their  
B. Theirs  
C. They''re  
D. There  

---

**Q36.** Choose the correct word: ____ book is this?

A. Who''s  
B. Who  
C. Whom  
D. Whose  

---

**Q37.** Choose the correct sentence:

A. The teacher, along with her students, were going on the trip.  
B. The teacher, along with her students, is going on the trip.  
C. The teacher, along with her students, are going on the trip.  
D. The teacher, along with her students, have been going on the trip.  

---

**Q38.** Choose the correct sentence:

A. Neither of the boys are present.  
B. Neither of the boys was present.  
C. Neither of the boys have been present.  
D. Neither of the boys were present.  

---

**Q39.** Choose the correct sentence:

A. The committee are deciding to postpone the event.  
B. The committee have decided to postpone the event.  
C. The committee has decided to postpone the event.  
D. The committee were deciding to postpone the event.  

---

**Q40.** Choose the correct sentence:

A. Each of the students are submitting the assignment.  
B. Each of the students have submitted the assignment.  
C. Each of the students were submitting the assignment.  
D. Each of the students has submitted the assignment.  

---

**Q41.** An essay that uses sensory details to paint a picture is called:

A. an expository essay  
B. a summary  
C. a descriptive essay  
D. an argumentative essay  

---

**Q42.** The first paragraph of an essay is called the:

A. body  
B. title  
C. conclusion  
D. introduction  

---

**Q43.** The final paragraph of an essay is called the:

A. heading  
B. conclusion  
C. introduction  
D. body  

---

**Q44.** A formal letter should begin with:

A. a joke  
B. the sender''s address and the date  
C. a greeting like ''Hi''  
D. the recipient''s name only  

---

**Q45.** The main paragraphs of an essay form the:

A. title  
B. introduction  
C. body  
D. conclusion  

---

**Q46.** A letter of application should include:

A. your favourite hobbies  
B. only your name  
C. a list of your friends  
D. your qualifications and experience  

---

**Q47.** When writing an argumentative essay, you should:

A. write without paragraphs  
B. only state the opposing view  
C. support your argument with reasons and examples  
D. avoid giving any reasons  

---

**Q48.** A narrative essay should have:

A. only statistics  
B. no setting  
C. no characters  
D. a clear sequence of events  

---

**Q49.** The purpose of an introduction is to:

A. present the topic and capture the reader''s interest  
B. give the conclusion  
C. list all the details  
D. repeat the title  

---

**Q50.** A descriptive essay about a market should include:

A. sights, sounds, and smells  
B. only prices  
C. mathematical calculations  
D. a list of items  

---

**Q51.** A formal letter to the editor should:

A. express a clear opinion on an issue  
B. have no address  
C. be written in slang  
D. be very short  

---

**Q52.** The best way to organise an expository essay is:

A. logical paragraphs with clear points  
B. a single long paragraph  
C. a list without explanation  
D. random ideas  

---

**Q53.** A story that illustrates a proverb should:

A. show the lesson through events  
B. be about animals only  
C. state the proverb only  
D. avoid any lesson  

---

**Q54.** When writing an essay, you should:

A. plan your ideas before writing  
B. write only one paragraph  
C. copy from a friend  
D. start writing without a plan  

---

**Q55.** The word count of an essay refers to:

A. the number of paragraphs  
B. the number of words in the essay  
C. the number of pages  
D. the number of sentences  

---

**Q56.** A letter of complaint should:

A. only greet the recipient  
B. clearly state the problem and request action  
C. be written in verse  
D. avoid mentioning the problem  

---

**Q57.** To make an essay interesting, a writer should:

A. repeat the same word  
B. use only short sentences  
C. use vivid and varied language  
D. avoid examples  

---

**Q58.** An essay that tells a story is called:

A. an argumentative essay  
B. an expository essay  
C. a descriptive essay  
D. a narrative essay  

---

**Q59.** An essay that presents reasons for and against a position is called:

A. a narrative essay  
B. a letter  
C. an argumentative essay  
D. a descriptive essay  

---

**Q60.** An essay that explains or informs is called:

A. a narrative essay  
B. a poem  
C. a story  
D. an expository essay  

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
  where subject = 'English Language'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 3'
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
  'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science, arts, commercial, technical
**Subject:** English Language

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** An inference is:

A. a conclusion drawn from evidence in the text  
B. a fact stated directly in the text  
C. a quotation from the text  
D. a question about the text  

---

**Q2.** Read: ''The river had always been generous.'' The word ''generous'' here suggests the river:

A. provided many benefits  
B. was very wide  
C. was polluted  
D. flowed very fast  

---

**Q3.** In a summary, you should NOT include:

A. your personal opinions  
B. the key facts  
C. the main points  
D. the essential ideas  

---

**Q4.** The word ''biodiverse'' in ''Cameroon''s forests are among the most biodiverse'' means:

A. containing many different species  
B. completely untouched  
C. difficult to reach  
D. very large in size  

---

**Q5.** Read: ''The audience wants you to succeed.'' This advice helped the speaker to:

A. feel calmer and begin speaking  
B. change his topic  
C. leave the stage  
D. memorise his speech  

---

**Q6.** When summarising, the word limit means you must:

A. keep your summary within the stated number of words  
B. ignore the word limit  
C. write as many words as possible  
D. write exactly the same number of words as the passage  

---

**Q7.** Read: ''Tourism in Cameroon is a sleeping giant.'' This means tourism:

A. is completely absent  
B. has great potential that is not yet realised  
C. is declining rapidly  
D. is too expensive for visitors  

---

**Q8.** The purpose of a comprehension passage is usually to:

A. provide entertainment only  
B. test understanding of the text  
C. list vocabulary words  
D. teach grammar rules  

---

**Q9.** Read: ''The villagers did not celebrate; they had heard such promises before.'' This suggests the villagers:

A. were happy with the announcement  
B. had never heard promises before  
C. did not trust the government''s promises  
D. were celebrating quietly  

---

**Q10.** A good summary should be:

A. longer than the original passage  
B. the same length as the original passage  
C. a copy of the original passage  
D. shorter than the original passage  

---

**Q11.** Read: ''For her, sweeping was not a chore but a meditation.'' This means the old woman:

A. disliked sweeping  
B. hired someone to sweep  
C. found peace in sweeping  
D. swept very quickly  

---

**Q12.** When a question asks you to ''explain in your own words'', you should:

A. quote the passage directly  
B. give your own opinion  
C. write a longer version of the passage  
D. rephrase the idea without copying  

---

**Q13.** Read: ''Success is not a destination but a journey.'' The writer means success is:

A. impossible to achieve  
B. a continuous process  
C. a final goal  
D. measured by certificates  

---

**Q14.** The best title for a passage about plastic waste clogging drainage channels would be:

A. The History of Plastic  
B. The Problem of Plastic Waste in Our Cities  
C. A Day at the Market  
D. How to Build Drainage Channels  

---

**Q15.** Read: ''The market was the beating heart of the community.'' The phrase ''beating heart'' suggests the market was:

A. a place of conflict  
B. a noisy place  
C. the centre of community life  
D. a modern building  

---

**Q16.** In summary writing, the first step is to:

A. count the words in the passage  
B. copy the first sentence of each paragraph  
C. write your own opinions about the topic  
D. read the passage carefully to understand the main ideas  

---

**Q17.** A summary should be written:

A. in note form only  
B. as a list of examples  
C. in your own words  
D. using long quotations from the passage  

---

**Q18.** The main idea of a passage is best described as:

A. the most difficult word in the passage  
B. the writer''s personal opinion only  
C. the first sentence of the passage  
D. the central point the writer is making  

---

**Q19.** Read: ''The words evaporated.'' This means the speaker:

A. was interrupted by the crowd  
B. forgot what he wanted to say  
C. spoke very quietly  
D. wrote his speech down  

---

**Q20.** When asked to ''state the main idea in one sentence'', you should:

A. list all the details  
B. summarise the whole passage briefly  
C. repeat the title  
D. quote the longest sentence  

---

**Q21.** Choose the correct sentence:

A. The committee consists on ten members.  
B. The committee consists in ten members.  
C. The committee consists of ten members.  
D. The committee consists with ten members.  

---

**Q22.** Choose the correct sentence:

A. She is interested at learning French.  
B. She is interested on learning French.  
C. She is interested for learning French.  
D. She is interested in learning French.  

---

**Q23.** Choose the correct word: The principal gave the students some useful ____.

A. advising  
B. advices  
C. advice  
D. advise  

---

**Q24.** Choose the correct word: The new policy will ____ all workers.

A. effects  
B. affects  
C. effect  
D. affect  

---

**Q25.** Choose the correct word: Please ____ this letter to the post office.

A. take  
B. bring  
C. carry  
D. fetch  

---

**Q26.** Choose the correct word: The company''s ____ concern is customer satisfaction.

A. principal  
B. principle  
C. principles  
D. principally  

---

**Q27.** Choose the correct sentence:

A. The news is good.  
B. The news were good.  
C. The news are good.  
D. The news have been good.  

---

**Q28.** Choose the correct sentence:

A. I look forward to hearing from you.  
B. I look forward to heard from you.  
C. I look forward to hears from you.  
D. I look forward to hear from you.  

---

**Q29.** Choose the correct sentence:

A. He is the taller of the two brothers.  
B. He is most tallest of the two brothers.  
C. He is the tallest of the two brothers.  
D. He is more taller of the two brothers.  

---

**Q30.** Choose the correct sentence:

A. She is taller than her sister.  
B. She is tallest than her sister.  
C. She is most taller than her sister.  
D. She is more taller than her sister.  

---

**Q31.** Choose the correct word: The dog wagged ____ tail.

A. it''s  
B. its  
C. its''  
D. itses  

---

**Q32.** Choose the correct word: ____ going to the market.

A. Their  
B. They''re  
C. Theirs  
D. There  

---

**Q33.** Choose the correct word: ____ book is this?

A. Who''s  
B. Whom  
C. Whose  
D. Who  

---

**Q34.** Choose the correct sentence:

A. The teacher, along with her students, are going on the trip.  
B. The teacher, along with her students, were going on the trip.  
C. The teacher, along with her students, have been going on the trip.  
D. The teacher, along with her students, is going on the trip.  

---

**Q35.** Choose the correct sentence:

A. Neither of the boys were present.  
B. Neither of the boys have been present.  
C. Neither of the boys was present.  
D. Neither of the boys are present.  

---

**Q36.** Choose the correct sentence:

A. The committee have decided to postpone the event.  
B. The committee were deciding to postpone the event.  
C. The committee are deciding to postpone the event.  
D. The committee has decided to postpone the event.  

---

**Q37.** Choose the correct sentence:

A. Each of the students are submitting the assignment.  
B. Each of the students has submitted the assignment.  
C. Each of the students have submitted the assignment.  
D. Each of the students were submitting the assignment.  

---

**Q38.** Choose the correct sentence:

A. The number of accidents were increasing.  
B. The number of accidents is increasing.  
C. The number of accidents have been increasing.  
D. The number of accidents are increasing.  

---

**Q39.** Choose the correct sentence:

A. She is good on mathematics.  
B. She is good in mathematics.  
C. She is good at mathematics.  
D. She is good for mathematics.  

---

**Q40.** Choose the correct sentence:

A. He was accused with theft.  
B. He was accused for theft.  
C. He was accused on theft.  
D. He was accused of theft.  

---

**Q41.** A formal letter should begin with:

A. a greeting like ''Hi''  
B. a joke  
C. the sender''s address and the date  
D. the recipient''s name only  

---

**Q42.** The main paragraphs of an essay form the:

A. conclusion  
B. title  
C. introduction  
D. body  

---

**Q43.** A letter of application should include:

A. your favourite hobbies  
B. your qualifications and experience  
C. only your name  
D. a list of your friends  

---

**Q44.** When writing an argumentative essay, you should:

A. write without paragraphs  
B. support your argument with reasons and examples  
C. only state the opposing view  
D. avoid giving any reasons  

---

**Q45.** A narrative essay should have:

A. only statistics  
B. no characters  
C. a clear sequence of events  
D. no setting  

---

**Q46.** The purpose of an introduction is to:

A. repeat the title  
B. give the conclusion  
C. list all the details  
D. present the topic and capture the reader''s interest  

---

**Q47.** A descriptive essay about a market should include:

A. mathematical calculations  
B. a list of items  
C. sights, sounds, and smells  
D. only prices  

---

**Q48.** A formal letter to the editor should:

A. be very short  
B. have no address  
C. be written in slang  
D. express a clear opinion on an issue  

---

**Q49.** The best way to organise an expository essay is:

A. logical paragraphs with clear points  
B. random ideas  
C. a single long paragraph  
D. a list without explanation  

---

**Q50.** A story that illustrates a proverb should:

A. show the lesson through events  
B. state the proverb only  
C. be about animals only  
D. avoid any lesson  

---

**Q51.** When writing an essay, you should:

A. plan your ideas before writing  
B. copy from a friend  
C. start writing without a plan  
D. write only one paragraph  

---

**Q52.** The word count of an essay refers to:

A. the number of words in the essay  
B. the number of pages  
C. the number of sentences  
D. the number of paragraphs  

---

**Q53.** A letter of complaint should:

A. clearly state the problem and request action  
B. be written in verse  
C. only greet the recipient  
D. avoid mentioning the problem  

---

**Q54.** To make an essay interesting, a writer should:

A. use vivid and varied language  
B. avoid examples  
C. use only short sentences  
D. repeat the same word  

---

**Q55.** An essay that tells a story is called:

A. an argumentative essay  
B. a narrative essay  
C. an expository essay  
D. a descriptive essay  

---

**Q56.** An essay that presents reasons for and against a position is called:

A. a narrative essay  
B. an argumentative essay  
C. a letter  
D. a descriptive essay  

---

**Q57.** An essay that explains or informs is called:

A. a narrative essay  
B. a story  
C. an expository essay  
D. a poem  

---

**Q58.** An essay that uses sensory details to paint a picture is called:

A. an argumentative essay  
B. an expository essay  
C. a summary  
D. a descriptive essay  

---

**Q59.** The first paragraph of an essay is called the:

A. conclusion  
B. title  
C. introduction  
D. body  

---

**Q60.** The final paragraph of an essay is called the:

A. introduction  
B. heading  
C. body  
D. conclusion  

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

commit;