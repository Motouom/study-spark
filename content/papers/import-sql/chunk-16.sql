begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'ICT'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'ICT',
  'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, commercial, technical
**Subject:** ICT

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** In a spreadsheet, the intersection of a row and a column is called a:

A. cell  
B. range  
C. worksheet  
D. chart  

---

**Q2.** The function that adds a range of cells is:

A. SUM  
B. AVERAGE  
C. MIN  
D. MAX  

---

**Q3.** The function that finds the largest value in a range is:

A. MAX  
B. SUM  
C. MIN  
D. AVERAGE  

---

**Q4.** A formula in a spreadsheet always begins with:

A. =  
B. -  
C. #  
D. +  

---

**Q5.** A presentation program is used to:

A. create slideshows  
B. browse the web  
C. write essays  
D. calculate budgets  

---

**Q6.** The effect used when moving from one slide to the next is called a:

A. transition  
B. template  
C. hyperlink  
D. animation  

---

**Q7.** The movement of objects within a slide is called:

A. transition  
B. animation  
C. hyperlink  
D. layout  

---

**Q8.** The internet is:

A. a single computer  
B. a global network of computers  
C. a web browser  
D. a type of software  

---

**Q9.** The software used to access websites is a:

A. search engine  
B. server  
C. browser  
D. firewall  

---

**Q10.** A website address is called a:

A. IP  
B. DNS  
C. HTML  
D. URL  

---

**Q11.** The service used to send and receive messages electronically is:

A. spreadsheet  
B. presentation  
C. email  
D. word processor  

---

**Q12.** The part of an email address after the @ symbol is the:

A. username  
B. attachment  
C. password  
D. domain name  

---

**Q13.** An unwanted email sent in bulk is called:

A. newsletter  
B. spam  
C. attachment  
D. draft  

---

**Q14.** A file sent along with an email is called an:

A. signature  
B. attachment  
C. header  
D. hyperlink  

---

**Q15.** The responsible use of technology is called:

A. hacking  
B. cyberbullying  
C. digital citizenship  
D. phishing  

---

**Q16.** The trace of your online activity is called your:

A. password  
B. IP address  
C. username  
D. digital footprint  

---

**Q17.** Bullying carried out online is called:

A. phishing  
B. hacking  
C. cyberbullying  
D. spamming  

---

**Q18.** The rules of polite behaviour online are called:

A. licence  
B. protocol  
C. copyright  
D. netiquette  

---

**Q19.** Storing data on remote servers accessed via the internet is called:

A. printing  
B. cloud computing  
C. networking  
D. programming  

---

**Q20.** Sending a file from your computer to the internet is called:

A. scanning  
B. uploading  
C. printing  
D. downloading  

---

**Q21.** Receiving a file from the internet to your computer is called:

A. scanning  
B. uploading  
C. downloading  
D. printing  

---

**Q22.** A malicious program that spreads between computers is a:

A. database  
B. browser  
C. spreadsheet  
D. virus  

---

**Q23.** Software that protects a computer from viruses is called:

A. word processor  
B. browser  
C. antivirus  
D. firewall  

---

**Q24.** A security system that monitors incoming and outgoing network traffic is a:

A. database  
B. spreadsheet  
C. antivirus  
D. firewall  

---

**Q25.** A word processor is used to:

A. create and edit text documents  
B. make calculations  
C. browse the internet  
D. play games  

---

**Q26.** The feature that checks spelling in a word processor is called:

A. spell checker  
B. thesaurus  
C. grammar checker  
D. autocorrect  

---

**Q27.** The shortcut key for copying text is:

A. Ctrl + C  
B. Ctrl + X  
C. Ctrl + V  
D. Ctrl + P  

---

**Q28.** The shortcut key for pasting text is:

A. Ctrl + V  
B. Ctrl + X  
C. Ctrl + P  
D. Ctrl + C  

---

**Q29.** The shortcut key for printing a document is:

A. Ctrl + P  
B. Ctrl + S  
C. Ctrl + C  
D. Ctrl + V  

---

**Q30.** A spreadsheet is used to:

A. organise and calculate data  
B. send emails  
C. edit photos  
D. write letters  

---

**Q31.** Software used to manage a database is called a:

A. OS  
B. DBMS  
C. browser  
D. compiler  

---

**Q32.** The language used to query a relational database is:

A. HTML  
B. SQL  
C. Java  
D. CSS  

---

**Q33.** A network that covers a small area such as a school is a:

A. WAN  
B. MAN  
C. LAN  
D. PAN  

---

**Q34.** A network that covers a large geographical area is a:

A. LAN  
B. MAN  
C. PAN  
D. WAN  

---

**Q35.** In a client-server model, the computer that provides services is the:

A. client  
B. switch  
C. server  
D. router  

---

**Q36.** The unique address of a device on a network is its:

A. URL  
B. password  
C. domain name  
D. IP address  

---

**Q37.** The system that translates domain names into IP addresses is:

A. CSS  
B. DNS  
C. HTML  
D. SQL  

---

**Q38.** The language used to create web pages is:

A. Java  
B. HTML  
C. Python  
D. SQL  

---

**Q39.** The language used to style web pages is:

A. SQL  
B. HTML  
C. CSS  
D. Java  

---

**Q40.** A website that allows users to interact and change content is:

A. offline  
B. static  
C. cached  
D. dynamic  

---

**Q41.** Buying and selling goods online is called:

A. e-banking  
B. e-mail  
C. e-commerce  
D. e-learning  

---

**Q42.** Learning using electronic devices and the internet is called:

A. e-banking  
B. e-mail  
C. e-commerce  
D. e-learning  

---

**Q43.** The practice of protecting systems and data from cyber threats is called:

A. printing  
B. cybersecurity  
C. networking  
D. programming  

---

**Q44.** A fraudulent attempt to obtain sensitive information by pretending to be a trusted source is:

A. cracking  
B. phishing  
C. hacking  
D. spamming  

---

**Q45.** Malicious software such as viruses and worms is called:

A. firmware  
B. shareware  
C. malware  
D. freeware  

---

**Q46.** The process of converting data into a coded form to prevent unauthorised access is:

A. deletion  
B. decryption  
C. compression  
D. encryption  

---

**Q47.** A copy of data kept for recovery purposes is called a:

A. cache  
B. firewall  
C. backup  
D. virus  

---

**Q48.** The physical parts of a computer are called:

A. shareware  
B. firmware  
C. software  
D. hardware  

---

**Q49.** The programs that run on a computer are called:

A. software  
B. hardware  
C. peripherals  
D. components  

---

**Q50.** The part of the computer that processes instructions is the:

A. CPU  
B. monitor  
C. printer  
D. keyboard  

---

**Q51.** A keyboard is an example of an:

A. input device  
B. storage device  
C. output device  
D. processing device  

---

**Q52.** A monitor is an example of an:

A. output device  
B. storage device  
C. processing device  
D. input device  

---

**Q53.** The process of arranging records in a particular order is called:

A. sorting  
B. indexing  
C. filtering  
D. querying  

---

**Q54.** The process of displaying only records that meet a condition is called:

A. filtering  
B. backing up  
C. indexing  
D. sorting  

---

**Q55.** Raw facts and figures are called:

A. information  
B. data  
C. knowledge  
D. wisdom  

---

**Q56.** Data that has been processed and given meaning is called:

A. raw data  
B. information  
C. storage  
D. input  

---

**Q57.** A collection of related data organised for easy access is a:

A. spreadsheet  
B. presentation  
C. database  
D. document  

---

**Q58.** In a database table, a row is called a:

A. field  
B. query  
C. report  
D. record  

---

**Q59.** In a database table, a column is called a:

A. record  
B. query  
C. field  
D. table  

---

**Q60.** The field that uniquely identifies each record is the:

A. foreign key  
B. query  
C. index  
D. primary key  

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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4'
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
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4

## Structural Question Bank — Physical geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PHYSICAL GEOGRAPHY

**Q1.** (a) Define the term "weathering". *(2 marks)*

(b) Distinguish between physical and chemical weathering. *(4 marks)*

(c) Describe two processes of physical weathering and two of chemical weathering. *(6 marks)*

---

**Q2.** (a) What is a rock? *(2 marks)*

(b) Describe the three main types of rocks and how each is formed. *(6 marks)*

(c) Give one example of each type of rock. *(3 marks)*

---

**Q3.** (a) Define the terms "igneous", "sedimentary", and "metamorphic" rocks. *(3 marks)*

(b) Explain how limestone is formed. *(4 marks)*

(c) State two uses of limestone. *(2 marks)*

---

**Q4.** (a) What is the water cycle? *(2 marks)*

(b) Describe the processes of evaporation, condensation, and precipitation. *(6 marks)*

(c) Explain the importance of the water cycle. *(4 marks)*

---

**Q5.** (a) Define the term "climate". *(2 marks)*

(b) Distinguish between climate and weather. *(4 marks)*

(c) State three factors that affect the climate of a place. *(3 marks)*

---

**Q6.** (a) What is a river? *(2 marks)*

(b) Describe the three stages of a river. *(6 marks)*

(c) Explain how a waterfall is formed. *(4 marks)*

---

**Q7.** (a) Define the terms "erosion", "transportation", and "deposition". *(3 marks)*

(b) Describe three ways a river transports its load. *(6 marks)*

(c) Explain how a delta is formed. *(4 marks)*

---

**Q8.** (a) What is a drainage basin? *(2 marks)*

(b) Describe the features of a drainage basin. *(4 marks)*

(c) Explain the difference between a tributary and a distributary. *(4 marks)*

---

**Q9.** (a) Define the term "coast". *(2 marks)*

(b) Describe two landforms created by coastal erosion. *(4 marks)*

(c) Explain how a beach is formed. *(4 marks)*

---

**Q10.** (a) What is a wave? *(2 marks)*

(b) Distinguish between constructive and destructive waves. *(4 marks)*

(c) Explain how a spit is formed. *(4 marks)*

---

**Q11.** (a) Define the term "soil". *(2 marks)*

(b) Describe the layers of a soil profile. *(4 marks)*

(c) State three factors that affect soil formation. *(3 marks)*

---

**Q12.** (a) What is soil erosion? *(2 marks)*

(b) State three causes of soil erosion. *(3 marks)*

(c) Describe two methods of preventing soil erosion. *(4 marks)*

---

**Q13.** (a) Define the term "vegetation". *(2 marks)*

(b) Describe the characteristics of tropical rainforest vegetation. *(4 marks)*

(c) Explain how climate affects vegetation. *(4 marks)*

---

**Q14.** (a) What is a natural hazard? *(2 marks)*

(b) State three examples of natural hazards. *(3 marks)*

(c) Describe the effects of one natural hazard on people and the environment. *(5 marks)*

---

**Q15.** (a) Define the terms "earthquake" and "volcano". *(4 marks)

(b) Explain how an earthquake occurs. *(4 marks)*

(c) State two effects of earthquakes. *(2 marks)*

---

**Q16.** (a) What is a tropical storm? *(2 marks)*

(b) Describe the conditions needed for a tropical storm to form. *(4 marks)*

(c) Explain the effects of a tropical storm on coastal areas. *(4 marks)*

---

**Q17.** (a) Define the term "ecosystem". *(2 marks)*

(b) Describe the components of an ecosystem. *(4 marks)*

(c) Explain how a change in one component affects the whole ecosystem. *(4 marks)*

---

**Q18.** (a) What is deforestation? *(2 marks)*

(b) State three causes of deforestation. *(3 marks)*

(c) Explain the effects of deforestation on the environment. *(5 marks)*

---

**Q19.** (a) Define the term "desertification". *(2 marks)*

(b) State three causes of desertification. *(3 marks)*

(c) Describe two ways of reducing desertification. *(4 marks)*

---

**Q20.** (a) What is climate change? *(2 marks)*

(b) State three causes of climate change. *(3 marks)*

(c) Explain two effects of climate change on Cameroon. *(5 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5'
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
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5

## Structural Question Bank — Human and Cameroon geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: HUMAN AND CAMEROON GEOGRAPHY

**Q1.** (a) Define the term "population". *(2 marks)*

(b) State three factors that affect population distribution. *(3 marks)*

(c) Explain the difference between population density and population distribution. *(4 marks)*

---

**Q2.** (a) What is population growth? *(2 marks)*

(b) State three causes of rapid population growth. *(3 marks)*

(c) Explain two effects of rapid population growth on a country. *(5 marks)*

---

**Q3.** (a) Define the terms "birth rate" and "death rate". *(4 marks)*

(b) Explain how birth rate and death rate affect population change. *(4 marks)*

(c) State two ways of controlling population growth. *(2 marks)*

---

**Q4.** (a) What is migration? *(2 marks)*

(b) Distinguish between internal and international migration. *(4 marks)*

(c) State three causes of rural-urban migration. *(3 marks)*

---

**Q5.** (a) Define the term "settlement". *(2 marks)*

(b) Distinguish between rural and urban settlements. *(4 marks)*

(c) State three functions of urban settlements. *(3 marks)*

---

**Q6.** (a) What is urbanisation? *(2 marks)*

(b) State three causes of urbanisation. *(3 marks)*

(c) Explain two problems caused by rapid urbanisation. *(5 marks)*

---

**Q7.** (a) Define the term "agriculture". *(2 marks)*

(b) Distinguish between subsistence and commercial farming. *(4 marks)*

(c) State three factors that affect agriculture. *(3 marks)*

---

**Q8.** (a) What is plantation agriculture? *(2 marks)*

(b) Describe the characteristics of plantation agriculture. *(4 marks)*

(c) State two advantages and two disadvantages of plantation agriculture. *(4 marks)*

---

**Q9.** (a) Define the terms "crop rotation" and "mixed farming". *(4 marks)*

(b) Explain the importance of agriculture to the economy of Cameroon. *(4 marks)*

(c) State two problems facing agriculture in Cameroon. *(2 marks)*

---

**Q10.** (a) What is industry? *(2 marks)*

(b) Distinguish between primary, secondary, and tertiary industries. *(6 marks)*

(c) Give two examples of each type of industry. *(3 marks)*

---

**Q11.** (a) Define the term "manufacturing". *(2 marks)*

(b) State three factors that influence the location of an industry. *(3 marks)*

(c) Explain why industries are often located near ports. *(4 marks)*

---

**Q12.** (a) What is transport? *(2 marks)*

(b) State three modes of transport. *(3 marks)*

(c) Explain the importance of transport to economic development. *(4 marks)*

---

**Q13.** (a) Define the term "trade". *(2 marks)*

(b) Distinguish between internal and international trade. *(4 marks)*

(c) State three reasons why countries trade with each other. *(3 marks)*

---

**Q14.** (a) What is a map? *(2 marks)*

(b) State three features of a good map. *(3 marks)*

(c) Explain how to measure distance on a map using a scale. *(4 marks)*

---

**Q15.** (a) Define the terms "contour line" and "relief". *(4 marks)*

(b) Explain how contour lines show the shape of the land. *(4 marks)*

(c) Describe how you would identify a hill and a valley on a map. *(4 marks)*

---

**Q16.** (a) What is a compass bearing? *(2 marks)*

(b) State the eight points of the compass. *(4 marks)*

(c) Explain how to find the bearing of one place from another on a map. *(4 marks)*

---

**Q17.** (a) Name the ten regions of Cameroon. *(5 marks)*

(b) State the capital city of Cameroon. *(1 mark)*

(c) Describe the main economic activity of two regions of Cameroon. *(4 marks)*

---

**Q18.** (a) What is the relief of Cameroon? *(2 marks)*

(b) Describe the main physical features of Cameroon. *(4 marks)*

(c) Explain how the relief of Cameroon affects agriculture. *(4 marks)*

---

**Q19.** (a) Define the term "tourism". *(2 marks)*

(b) State three tourist attractions in Cameroon. *(3 marks)*

(c) Explain two benefits of tourism to Cameroon. *(4 marks)*

---

**Q20.** (a) What is sustainable development? *(2 marks)*

(b) State three ways Cameroon can achieve sustainable development. *(3 marks)*

(c) Explain the importance of conserving natural resources. *(4 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6'
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
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6

## Structural Question Bank — Physical geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PHYSICAL GEOGRAPHY

**Q1.** (a) Define the term "weathering". *(2 marks)*

(b) Distinguish between physical and chemical weathering. *(4 marks)*

(c) Describe two processes of physical weathering and two of chemical weathering. *(6 marks)*

---

**Q2.** (a) What is a rock? *(2 marks)*

(b) Describe the three main types of rocks and how each is formed. *(6 marks)*

(c) Give one example of each type of rock. *(3 marks)*

---

**Q3.** (a) Define the terms "igneous", "sedimentary", and "metamorphic" rocks. *(3 marks)*

(b) Explain how limestone is formed. *(4 marks)*

(c) State two uses of limestone. *(2 marks)*

---

**Q4.** (a) What is the water cycle? *(2 marks)*

(b) Describe the processes of evaporation, condensation, and precipitation. *(6 marks)*

(c) Explain the importance of the water cycle. *(4 marks)*

---

**Q5.** (a) Define the term "climate". *(2 marks)*

(b) Distinguish between climate and weather. *(4 marks)*

(c) State three factors that affect the climate of a place. *(3 marks)*

---

**Q6.** (a) What is a river? *(2 marks)*

(b) Describe the three stages of a river. *(6 marks)*

(c) Explain how a waterfall is formed. *(4 marks)*

---

**Q7.** (a) Define the terms "erosion", "transportation", and "deposition". *(3 marks)*

(b) Describe three ways a river transports its load. *(6 marks)*

(c) Explain how a delta is formed. *(4 marks)*

---

**Q8.** (a) What is a drainage basin? *(2 marks)*

(b) Describe the features of a drainage basin. *(4 marks)*

(c) Explain the difference between a tributary and a distributary. *(4 marks)*

---

**Q9.** (a) Define the term "coast". *(2 marks)*

(b) Describe two landforms created by coastal erosion. *(4 marks)*

(c) Explain how a beach is formed. *(4 marks)*

---

**Q10.** (a) What is a wave? *(2 marks)*

(b) Distinguish between constructive and destructive waves. *(4 marks)*

(c) Explain how a spit is formed. *(4 marks)*

---

**Q11.** (a) Define the term "soil". *(2 marks)*

(b) Describe the layers of a soil profile. *(4 marks)*

(c) State three factors that affect soil formation. *(3 marks)*

---

**Q12.** (a) What is soil erosion? *(2 marks)*

(b) State three causes of soil erosion. *(3 marks)*

(c) Describe two methods of preventing soil erosion. *(4 marks)*

---

**Q13.** (a) Define the term "vegetation". *(2 marks)*

(b) Describe the characteristics of tropical rainforest vegetation. *(4 marks)*

(c) Explain how climate affects vegetation. *(4 marks)*

---

**Q14.** (a) What is a natural hazard? *(2 marks)*

(b) State three examples of natural hazards. *(3 marks)*

(c) Describe the effects of one natural hazard on people and the environment. *(5 marks)*

---

**Q15.** (a) Define the terms "earthquake" and "volcano". *(4 marks)

(b) Explain how an earthquake occurs. *(4 marks)*

(c) State two effects of earthquakes. *(2 marks)*

---

**Q16.** (a) What is a tropical storm? *(2 marks)*

(b) Describe the conditions needed for a tropical storm to form. *(4 marks)*

(c) Explain the effects of a tropical storm on coastal areas. *(4 marks)*

---

**Q17.** (a) Define the term "ecosystem". *(2 marks)*

(b) Describe the components of an ecosystem. *(4 marks)*

(c) Explain how a change in one component affects the whole ecosystem. *(4 marks)*

---

**Q18.** (a) What is deforestation? *(2 marks)*

(b) State three causes of deforestation. *(3 marks)*

(c) Explain the effects of deforestation on the environment. *(5 marks)*

---

**Q19.** (a) Define the term "desertification". *(2 marks)*

(b) State three causes of desertification. *(3 marks)*

(c) Describe two ways of reducing desertification. *(4 marks)*

---

**Q20.** (a) What is climate change? *(2 marks)*

(b) State three causes of climate change. *(3 marks)*

(c) Explain two effects of climate change on Cameroon. *(5 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7

## Structural Question Bank — Human and Cameroon geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: HUMAN AND CAMEROON GEOGRAPHY

**Q1.** (a) Define the term "population". *(2 marks)*

(b) State three factors that affect population distribution. *(3 marks)*

(c) Explain the difference between population density and population distribution. *(4 marks)*

---

**Q2.** (a) What is population growth? *(2 marks)*

(b) State three causes of rapid population growth. *(3 marks)*

(c) Explain two effects of rapid population growth on a country. *(5 marks)*

---

**Q3.** (a) Define the terms "birth rate" and "death rate". *(4 marks)*

(b) Explain how birth rate and death rate affect population change. *(4 marks)*

(c) State two ways of controlling population growth. *(2 marks)*

---

**Q4.** (a) What is migration? *(2 marks)*

(b) Distinguish between internal and international migration. *(4 marks)*

(c) State three causes of rural-urban migration. *(3 marks)*

---

**Q5.** (a) Define the term "settlement". *(2 marks)*

(b) Distinguish between rural and urban settlements. *(4 marks)*

(c) State three functions of urban settlements. *(3 marks)*

---

**Q6.** (a) What is urbanisation? *(2 marks)*

(b) State three causes of urbanisation. *(3 marks)*

(c) Explain two problems caused by rapid urbanisation. *(5 marks)*

---

**Q7.** (a) Define the term "agriculture". *(2 marks)*

(b) Distinguish between subsistence and commercial farming. *(4 marks)*

(c) State three factors that affect agriculture. *(3 marks)*

---

**Q8.** (a) What is plantation agriculture? *(2 marks)*

(b) Describe the characteristics of plantation agriculture. *(4 marks)*

(c) State two advantages and two disadvantages of plantation agriculture. *(4 marks)*

---

**Q9.** (a) Define the terms "crop rotation" and "mixed farming". *(4 marks)*

(b) Explain the importance of agriculture to the economy of Cameroon. *(4 marks)*

(c) State two problems facing agriculture in Cameroon. *(2 marks)*

---

**Q10.** (a) What is industry? *(2 marks)*

(b) Distinguish between primary, secondary, and tertiary industries. *(6 marks)*

(c) Give two examples of each type of industry. *(3 marks)*

---

**Q11.** (a) Define the term "manufacturing". *(2 marks)*

(b) State three factors that influence the location of an industry. *(3 marks)*

(c) Explain why industries are often located near ports. *(4 marks)*

---

**Q12.** (a) What is transport? *(2 marks)*

(b) State three modes of transport. *(3 marks)*

(c) Explain the importance of transport to economic development. *(4 marks)*

---

**Q13.** (a) Define the term "trade". *(2 marks)*

(b) Distinguish between internal and international trade. *(4 marks)*

(c) State three reasons why countries trade with each other. *(3 marks)*

---

**Q14.** (a) What is a map? *(2 marks)*

(b) State three features of a good map. *(3 marks)*

(c) Explain how to measure distance on a map using a scale. *(4 marks)*

---

**Q15.** (a) Define the terms "contour line" and "relief". *(4 marks)*

(b) Explain how contour lines show the shape of the land. *(4 marks)*

(c) Describe how you would identify a hill and a valley on a map. *(4 marks)*

---

**Q16.** (a) What is a compass bearing? *(2 marks)*

(b) State the eight points of the compass. *(4 marks)*

(c) Explain how to find the bearing of one place from another on a map. *(4 marks)*

---

**Q17.** (a) Name the ten regions of Cameroon. *(5 marks)*

(b) State the capital city of Cameroon. *(1 mark)*

(c) Describe the main economic activity of two regions of Cameroon. *(4 marks)*

---

**Q18.** (a) What is the relief of Cameroon? *(2 marks)*

(b) Describe the main physical features of Cameroon. *(4 marks)*

(c) Explain how the relief of Cameroon affects agriculture. *(4 marks)*

---

**Q19.** (a) Define the term "tourism". *(2 marks)*

(b) State three tourist attractions in Cameroon. *(3 marks)*

(c) Explain two benefits of tourism to Cameroon. *(4 marks)*

---

**Q20.** (a) What is sustainable development? *(2 marks)*

(b) State three ways Cameroon can achieve sustainable development. *(3 marks)*

(c) Explain the importance of conserving natural resources. *(4 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8

## Structural Question Bank — Physical geography

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Geography

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PHYSICAL GEOGRAPHY

**Q1.** (a) Define the term "weathering". *(2 marks)*

(b) Distinguish between physical and chemical weathering. *(4 marks)*

(c) Describe two processes of physical weathering and two of chemical weathering. *(6 marks)*

---

**Q2.** (a) What is a rock? *(2 marks)*

(b) Describe the three main types of rocks and how each is formed. *(6 marks)*

(c) Give one example of each type of rock. *(3 marks)*

---

**Q3.** (a) Define the terms "igneous", "sedimentary", and "metamorphic" rocks. *(3 marks)*

(b) Explain how limestone is formed. *(4 marks)*

(c) State two uses of limestone. *(2 marks)*

---

**Q4.** (a) What is the water cycle? *(2 marks)*

(b) Describe the processes of evaporation, condensation, and precipitation. *(6 marks)*

(c) Explain the importance of the water cycle. *(4 marks)*

---

**Q5.** (a) Define the term "climate". *(2 marks)*

(b) Distinguish between climate and weather. *(4 marks)*

(c) State three factors that affect the climate of a place. *(3 marks)*

---

**Q6.** (a) What is a river? *(2 marks)*

(b) Describe the three stages of a river. *(6 marks)*

(c) Explain how a waterfall is formed. *(4 marks)*

---

**Q7.** (a) Define the terms "erosion", "transportation", and "deposition". *(3 marks)*

(b) Describe three ways a river transports its load. *(6 marks)*

(c) Explain how a delta is formed. *(4 marks)*

---

**Q8.** (a) What is a drainage basin? *(2 marks)*

(b) Describe the features of a drainage basin. *(4 marks)*

(c) Explain the difference between a tributary and a distributary. *(4 marks)*

---

**Q9.** (a) Define the term "coast". *(2 marks)*

(b) Describe two landforms created by coastal erosion. *(4 marks)*

(c) Explain how a beach is formed. *(4 marks)*

---

**Q10.** (a) What is a wave? *(2 marks)*

(b) Distinguish between constructive and destructive waves. *(4 marks)*

(c) Explain how a spit is formed. *(4 marks)*

---

**Q11.** (a) Define the term "soil". *(2 marks)*

(b) Describe the layers of a soil profile. *(4 marks)*

(c) State three factors that affect soil formation. *(3 marks)*

---

**Q12.** (a) What is soil erosion? *(2 marks)*

(b) State three causes of soil erosion. *(3 marks)*

(c) Describe two methods of preventing soil erosion. *(4 marks)*

---

**Q13.** (a) Define the term "vegetation". *(2 marks)*

(b) Describe the characteristics of tropical rainforest vegetation. *(4 marks)*

(c) Explain how climate affects vegetation. *(4 marks)*

---

**Q14.** (a) What is a natural hazard? *(2 marks)*

(b) State three examples of natural hazards. *(3 marks)*

(c) Describe the effects of one natural hazard on people and the environment. *(5 marks)*

---

**Q15.** (a) Define the terms "earthquake" and "volcano". *(4 marks)

(b) Explain how an earthquake occurs. *(4 marks)*

(c) State two effects of earthquakes. *(2 marks)*

---

**Q16.** (a) What is a tropical storm? *(2 marks)*

(b) Describe the conditions needed for a tropical storm to form. *(4 marks)*

(c) Explain the effects of a tropical storm on coastal areas. *(4 marks)*

---

**Q17.** (a) Define the term "ecosystem". *(2 marks)*

(b) Describe the components of an ecosystem. *(4 marks)*

(c) Explain how a change in one component affects the whole ecosystem. *(4 marks)*

---

**Q18.** (a) What is deforestation? *(2 marks)*

(b) State three causes of deforestation. *(3 marks)*

(c) Explain the effects of deforestation on the environment. *(5 marks)*

---

**Q19.** (a) Define the term "desertification". *(2 marks)*

(b) State three causes of desertification. *(3 marks)*

(c) Describe two ways of reducing desertification. *(4 marks)*

---

**Q20.** (a) What is climate change? *(2 marks)*

(b) State three causes of climate change. *(3 marks)*

(c) Explain two effects of climate change on Cameroon. *(5 marks)*
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 1'
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
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 2'
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
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 3'
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
  'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  where subject = 'History'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'History',
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 4

## Structural Question Bank — Cameroon and African history

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CAMEROON AND AFRICAN HISTORY

**Q1.** (a) What is history? *(2 marks)*

(b) State three sources of history. *(3 marks)*

(c) Explain the importance of studying history. *(4 marks)*

---

**Q2.** (a) Define the term "pre-colonial". *(2 marks)*

(b) Describe the political organisation of the Bamoun kingdom before colonisation. *(5 marks)*

(c) Explain the role of the Fon in the traditional Bamenda society. *(4 marks)*

---

**Q3.** (a) What was the slave trade? *(2 marks)*

(b) Describe the effects of the transatlantic slave trade on Africa. *(5 marks)*

(c) Explain why the slave trade was abolished. *(4 marks)*

---

**Q4.** (a) Define the term "colonisation". *(2 marks)*

(b) Explain why European powers colonised Africa. *(4 marks)*

(c) Describe how Germany colonised Cameroon. *(5 marks)*

---

**Q5.** (a) What was the Berlin Conference? *(2 marks)*

(b) State the decisions taken at the Berlin Conference of 1884-1885. *(4 marks)*

(c) Explain the effects of the Berlin Conference on Africa. *(4 marks)*

---

**Q6.** (a) Define the term "mandate". *(2 marks)*

(b) Explain how Cameroon was divided between Britain and France after the First World War. *(5 marks)*

(c) Describe the system of indirect rule used by the British in Cameroon. *(4 marks)*

---

**Q7.** (a) What is nationalism? *(2 marks)*

(b) State three factors that led to the rise of nationalism in Cameroon. *(3 marks)*

(c) Explain the role of the UPC in the struggle for independence in Cameroon. *(5 marks)*

---

**Q8.** (a) When did Cameroon gain independence? *(2 marks)*

(b) Describe the process by which French Cameroon gained independence. *(4 marks)*

(c) Explain the role of Ahmadou Ahidjo in the independence of Cameroon. *(4 marks)*

---

**Q9.** (a) What was the plebiscite of 1961? *(2 marks)*

(b) Describe the results of the 1961 plebiscite in British Southern Cameroons. *(4 marks)*

(c) Explain the consequences of the plebiscite for the reunification of Cameroon. *(4 marks)*

---

**Q10.** (a) Define the term "reunification". *(2 marks)

(b) Describe the events leading to the reunification of Cameroon in 1961. *(5 marks)*

(c) Explain the importance of the Foumban Conference of 1961. *(4 marks)*

---

**Q11.** (a) What is a federation? *(2 marks)*

(b) Describe the federal system of government in Cameroon from 1961 to 1972. *(5 marks)*

(c) Explain why the federal system was replaced by a unitary system. *(4 marks)*

---

**Q12.** (a) Define the term "unitary state". *(2 marks)*

(b) Describe the political changes in Cameroon after 1972. *(4 marks)*

(c) Explain the role of Paul Biya in the political history of Cameroon. *(4 marks)*

---

**Q13.** (a) What is multiparty democracy? *(2 marks)*

(b) Describe the reintroduction of multiparty politics in Cameroon in 1990. *(4 marks)*

(c) Explain the importance of the 1996 constitution in Cameroon. *(4 marks)*

---

**Q14.** (a) Define the term "pan-Africanism". *(2 marks)*

(b) State three aims of pan-Africanism. *(3 marks)*

(c) Explain the role of the Organisation of African Unity in African history. *(5 marks)*

---

**Q15.** (a) What was the Scramble for Africa? *(2 marks)*

(b) Describe the causes of the Scramble for Africa. *(4 marks)*

(c) Explain the effects of the Scramble for Africa on the continent. *(4 marks)*

---

**Q16.** (a) Define the term "decolonisation". *(2 marks)*

(b) State three factors that led to the decolonisation of Africa. *(3 marks)*

(c) Explain the role of Kwame Nkrumah in the decolonisation of Ghana. *(5 marks)*

---

**Q17.** (a) What is apartheid? *(2 marks)*

(b) Describe the system of apartheid in South Africa. *(4 marks)*

(c) Explain the role of Nelson Mandela in ending apartheid. *(5 marks)*

---

**Q18.** (a) Define the term "civil war". *(2 marks)*

(b) Describe the causes of the Nigerian Civil War (1967-1970). *(4 marks)*

(c) Explain the effects of the civil war on Nigeria. *(4 marks)*

---

**Q19.** (a) What is the African Union? *(2 marks)*

(b) State three objectives of the African Union. *(3 marks)*

(c) Explain the difference between the OAU and the African Union. *(4 marks)*

---

**Q20.** (a) Define the term "economic integration". *(2 marks)*

(b) Describe the aims of the Economic Community of Central African States (ECCAS). *(4 marks)*

(c) Explain the importance of regional economic integration for Cameroon. *(4 marks)*
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