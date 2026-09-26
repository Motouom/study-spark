begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'ICT'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P1 SET 1

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

**Q1.** A word processor is used to:

A. create and edit text documents  
B. make calculations  
C. browse the internet  
D. play games  

---

**Q2.** The feature that checks spelling in a word processor is called:

A. spell checker  
B. thesaurus  
C. grammar checker  
D. autocorrect  

---

**Q3.** The shortcut key for copying text is:

A. Ctrl + C  
B. Ctrl + X  
C. Ctrl + V  
D. Ctrl + P  

---

**Q4.** The shortcut key for pasting text is:

A. Ctrl + V  
B. Ctrl + X  
C. Ctrl + P  
D. Ctrl + C  

---

**Q5.** The shortcut key for printing a document is:

A. Ctrl + P  
B. Ctrl + S  
C. Ctrl + C  
D. Ctrl + V  

---

**Q6.** A spreadsheet is used to:

A. organise and calculate data  
B. send emails  
C. edit photos  
D. write letters  

---

**Q7.** In a spreadsheet, the intersection of a row and a column is called a:

A. range  
B. cell  
C. worksheet  
D. chart  

---

**Q8.** The function that adds a range of cells is:

A. AVERAGE  
B. SUM  
C. MIN  
D. MAX  

---

**Q9.** The function that finds the largest value in a range is:

A. MIN  
B. SUM  
C. MAX  
D. AVERAGE  

---

**Q10.** A formula in a spreadsheet always begins with:

A. +  
B. -  
C. #  
D. =  

---

**Q11.** A presentation program is used to:

A. write essays  
B. browse the web  
C. create slideshows  
D. calculate budgets  

---

**Q12.** The effect used when moving from one slide to the next is called a:

A. animation  
B. template  
C. hyperlink  
D. transition  

---

**Q13.** The movement of objects within a slide is called:

A. hyperlink  
B. animation  
C. transition  
D. layout  

---

**Q14.** The internet is:

A. a type of software  
B. a global network of computers  
C. a web browser  
D. a single computer  

---

**Q15.** The software used to access websites is a:

A. server  
B. search engine  
C. browser  
D. firewall  

---

**Q16.** A website address is called a:

A. DNS  
B. IP  
C. HTML  
D. URL  

---

**Q17.** The service used to send and receive messages electronically is:

A. word processor  
B. presentation  
C. email  
D. spreadsheet  

---

**Q18.** The part of an email address after the @ symbol is the:

A. password  
B. attachment  
C. username  
D. domain name  

---

**Q19.** An unwanted email sent in bulk is called:

A. draft  
B. spam  
C. attachment  
D. newsletter  

---

**Q20.** A file sent along with an email is called an:

A. header  
B. attachment  
C. signature  
D. hyperlink  

---

**Q21.** The responsible use of technology is called:

A. phishing  
B. cyberbullying  
C. digital citizenship  
D. hacking  

---

**Q22.** The trace of your online activity is called your:

A. username  
B. IP address  
C. password  
D. digital footprint  

---

**Q23.** Bullying carried out online is called:

A. hacking  
B. phishing  
C. cyberbullying  
D. spamming  

---

**Q24.** The rules of polite behaviour online are called:

A. protocol  
B. licence  
C. copyright  
D. netiquette  

---

**Q25.** Storing data on remote servers accessed via the internet is called:

A. cloud computing  
B. networking  
C. programming  
D. printing  

---

**Q26.** Sending a file from your computer to the internet is called:

A. uploading  
B. downloading  
C. scanning  
D. printing  

---

**Q27.** Receiving a file from the internet to your computer is called:

A. downloading  
B. printing  
C. uploading  
D. scanning  

---

**Q28.** A malicious program that spreads between computers is a:

A. virus  
B. spreadsheet  
C. database  
D. browser  

---

**Q29.** Software that protects a computer from viruses is called:

A. antivirus  
B. word processor  
C. firewall  
D. browser  

---

**Q30.** A security system that monitors incoming and outgoing network traffic is a:

A. firewall  
B. database  
C. spreadsheet  
D. antivirus  

---

**Q31.** Raw facts and figures are called:

A. information  
B. data  
C. knowledge  
D. wisdom  

---

**Q32.** Data that has been processed and given meaning is called:

A. raw data  
B. information  
C. storage  
D. input  

---

**Q33.** A collection of related data organised for easy access is a:

A. spreadsheet  
B. presentation  
C. database  
D. document  

---

**Q34.** In a database table, a row is called a:

A. field  
B. query  
C. report  
D. record  

---

**Q35.** In a database table, a column is called a:

A. record  
B. query  
C. field  
D. table  

---

**Q36.** The field that uniquely identifies each record is the:

A. foreign key  
B. query  
C. index  
D. primary key  

---

**Q37.** Software used to manage a database is called a:

A. browser  
B. DBMS  
C. OS  
D. compiler  

---

**Q38.** The language used to query a relational database is:

A. CSS  
B. SQL  
C. Java  
D. HTML  

---

**Q39.** A network that covers a small area such as a school is a:

A. MAN  
B. WAN  
C. LAN  
D. PAN  

---

**Q40.** A network that covers a large geographical area is a:

A. MAN  
B. LAN  
C. PAN  
D. WAN  

---

**Q41.** In a client-server model, the computer that provides services is the:

A. router  
B. switch  
C. server  
D. client  

---

**Q42.** The unique address of a device on a network is its:

A. domain name  
B. password  
C. URL  
D. IP address  

---

**Q43.** The system that translates domain names into IP addresses is:

A. SQL  
B. DNS  
C. HTML  
D. CSS  

---

**Q44.** The language used to create web pages is:

A. Python  
B. HTML  
C. Java  
D. SQL  

---

**Q45.** The language used to style web pages is:

A. Java  
B. HTML  
C. CSS  
D. SQL  

---

**Q46.** A website that allows users to interact and change content is:

A. cached  
B. static  
C. offline  
D. dynamic  

---

**Q47.** Buying and selling goods online is called:

A. e-mail  
B. e-banking  
C. e-commerce  
D. e-learning  

---

**Q48.** Learning using electronic devices and the internet is called:

A. e-mail  
B. e-banking  
C. e-commerce  
D. e-learning  

---

**Q49.** The practice of protecting systems and data from cyber threats is called:

A. cybersecurity  
B. networking  
C. programming  
D. printing  

---

**Q50.** A fraudulent attempt to obtain sensitive information by pretending to be a trusted source is:

A. phishing  
B. spamming  
C. cracking  
D. hacking  

---

**Q51.** Malicious software such as viruses and worms is called:

A. malware  
B. freeware  
C. shareware  
D. firmware  

---

**Q52.** The process of converting data into a coded form to prevent unauthorised access is:

A. encryption  
B. compression  
C. deletion  
D. decryption  

---

**Q53.** A copy of data kept for recovery purposes is called a:

A. backup  
B. cache  
C. virus  
D. firewall  

---

**Q54.** The physical parts of a computer are called:

A. hardware  
B. shareware  
C. firmware  
D. software  

---

**Q55.** The programs that run on a computer are called:

A. hardware  
B. software  
C. peripherals  
D. components  

---

**Q56.** The part of the computer that processes instructions is the:

A. monitor  
B. CPU  
C. printer  
D. keyboard  

---

**Q57.** A keyboard is an example of an:

A. output device  
B. storage device  
C. input device  
D. processing device  

---

**Q58.** A monitor is an example of an:

A. input device  
B. storage device  
C. processing device  
D. output device  

---

**Q59.** The process of arranging records in a particular order is called:

A. filtering  
B. indexing  
C. sorting  
D. querying  

---

**Q60.** The process of displaying only records that meet a condition is called:

A. sorting  
B. backing up  
C. indexing  
D. filtering  

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
  where subject = 'ICT'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P1 SET 2

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

**Q1.** The shortcut key for pasting text is:

A. Ctrl + V  
B. Ctrl + C  
C. Ctrl + X  
D. Ctrl + P  

---

**Q2.** The shortcut key for printing a document is:

A. Ctrl + P  
B. Ctrl + C  
C. Ctrl + S  
D. Ctrl + V  

---

**Q3.** A spreadsheet is used to:

A. organise and calculate data  
B. edit photos  
C. write letters  
D. send emails  

---

**Q4.** In a spreadsheet, the intersection of a row and a column is called a:

A. cell  
B. worksheet  
C. chart  
D. range  

---

**Q5.** The function that adds a range of cells is:

A. SUM  
B. MIN  
C. AVERAGE  
D. MAX  

---

**Q6.** The function that finds the largest value in a range is:

A. MAX  
B. AVERAGE  
C. SUM  
D. MIN  

---

**Q7.** A formula in a spreadsheet always begins with:

A. +  
B. =  
C. -  
D. #  

---

**Q8.** A presentation program is used to:

A. write essays  
B. create slideshows  
C. browse the web  
D. calculate budgets  

---

**Q9.** The effect used when moving from one slide to the next is called a:

A. animation  
B. hyperlink  
C. transition  
D. template  

---

**Q10.** The movement of objects within a slide is called:

A. transition  
B. hyperlink  
C. layout  
D. animation  

---

**Q11.** The internet is:

A. a single computer  
B. a web browser  
C. a global network of computers  
D. a type of software  

---

**Q12.** The software used to access websites is a:

A. search engine  
B. firewall  
C. server  
D. browser  

---

**Q13.** A website address is called a:

A. DNS  
B. URL  
C. IP  
D. HTML  

---

**Q14.** The service used to send and receive messages electronically is:

A. word processor  
B. email  
C. presentation  
D. spreadsheet  

---

**Q15.** The part of an email address after the @ symbol is the:

A. password  
B. username  
C. domain name  
D. attachment  

---

**Q16.** An unwanted email sent in bulk is called:

A. newsletter  
B. attachment  
C. draft  
D. spam  

---

**Q17.** A file sent along with an email is called an:

A. signature  
B. header  
C. attachment  
D. hyperlink  

---

**Q18.** The responsible use of technology is called:

A. hacking  
B. phishing  
C. cyberbullying  
D. digital citizenship  

---

**Q19.** The trace of your online activity is called your:

A. username  
B. digital footprint  
C. IP address  
D. password  

---

**Q20.** Bullying carried out online is called:

A. hacking  
B. cyberbullying  
C. phishing  
D. spamming  

---

**Q21.** The rules of polite behaviour online are called:

A. protocol  
B. copyright  
C. netiquette  
D. licence  

---

**Q22.** Storing data on remote servers accessed via the internet is called:

A. printing  
B. networking  
C. programming  
D. cloud computing  

---

**Q23.** Sending a file from your computer to the internet is called:

A. scanning  
B. printing  
C. uploading  
D. downloading  

---

**Q24.** Receiving a file from the internet to your computer is called:

A. scanning  
B. printing  
C. uploading  
D. downloading  

---

**Q25.** A malicious program that spreads between computers is a:

A. virus  
B. browser  
C. spreadsheet  
D. database  

---

**Q26.** Software that protects a computer from viruses is called:

A. antivirus  
B. firewall  
C. word processor  
D. browser  

---

**Q27.** A security system that monitors incoming and outgoing network traffic is a:

A. firewall  
B. spreadsheet  
C. antivirus  
D. database  

---

**Q28.** A word processor is used to:

A. create and edit text documents  
B. browse the internet  
C. play games  
D. make calculations  

---

**Q29.** The feature that checks spelling in a word processor is called:

A. spell checker  
B. grammar checker  
C. thesaurus  
D. autocorrect  

---

**Q30.** The shortcut key for copying text is:

A. Ctrl + C  
B. Ctrl + P  
C. Ctrl + X  
D. Ctrl + V  

---

**Q31.** In a database table, a row is called a:

A. field  
B. record  
C. query  
D. report  

---

**Q32.** In a database table, a column is called a:

A. record  
B. field  
C. query  
D. table  

---

**Q33.** The field that uniquely identifies each record is the:

A. foreign key  
B. index  
C. primary key  
D. query  

---

**Q34.** Software used to manage a database is called a:

A. OS  
B. browser  
C. compiler  
D. DBMS  

---

**Q35.** The language used to query a relational database is:

A. HTML  
B. Java  
C. SQL  
D. CSS  

---

**Q36.** A network that covers a small area such as a school is a:

A. WAN  
B. PAN  
C. MAN  
D. LAN  

---

**Q37.** A network that covers a large geographical area is a:

A. MAN  
B. WAN  
C. LAN  
D. PAN  

---

**Q38.** In a client-server model, the computer that provides services is the:

A. router  
B. server  
C. switch  
D. client  

---

**Q39.** The unique address of a device on a network is its:

A. domain name  
B. URL  
C. IP address  
D. password  

---

**Q40.** The system that translates domain names into IP addresses is:

A. CSS  
B. HTML  
C. SQL  
D. DNS  

---

**Q41.** The language used to create web pages is:

A. Java  
B. Python  
C. HTML  
D. SQL  

---

**Q42.** The language used to style web pages is:

A. SQL  
B. Java  
C. HTML  
D. CSS  

---

**Q43.** A website that allows users to interact and change content is:

A. cached  
B. dynamic  
C. static  
D. offline  

---

**Q44.** Buying and selling goods online is called:

A. e-mail  
B. e-commerce  
C. e-banking  
D. e-learning  

---

**Q45.** Learning using electronic devices and the internet is called:

A. e-mail  
B. e-commerce  
C. e-learning  
D. e-banking  

---

**Q46.** The practice of protecting systems and data from cyber threats is called:

A. printing  
B. networking  
C. programming  
D. cybersecurity  

---

**Q47.** A fraudulent attempt to obtain sensitive information by pretending to be a trusted source is:

A. cracking  
B. hacking  
C. phishing  
D. spamming  

---

**Q48.** Malicious software such as viruses and worms is called:

A. firmware  
B. freeware  
C. shareware  
D. malware  

---

**Q49.** The process of converting data into a coded form to prevent unauthorised access is:

A. encryption  
B. decryption  
C. compression  
D. deletion  

---

**Q50.** A copy of data kept for recovery purposes is called a:

A. backup  
B. virus  
C. cache  
D. firewall  

---

**Q51.** The physical parts of a computer are called:

A. hardware  
B. firmware  
C. software  
D. shareware  

---

**Q52.** The programs that run on a computer are called:

A. software  
B. peripherals  
C. components  
D. hardware  

---

**Q53.** The part of the computer that processes instructions is the:

A. CPU  
B. printer  
C. monitor  
D. keyboard  

---

**Q54.** A keyboard is an example of an:

A. input device  
B. processing device  
C. storage device  
D. output device  

---

**Q55.** A monitor is an example of an:

A. input device  
B. output device  
C. storage device  
D. processing device  

---

**Q56.** The process of arranging records in a particular order is called:

A. filtering  
B. sorting  
C. indexing  
D. querying  

---

**Q57.** The process of displaying only records that meet a condition is called:

A. sorting  
B. indexing  
C. filtering  
D. backing up  

---

**Q58.** Raw facts and figures are called:

A. information  
B. knowledge  
C. wisdom  
D. data  

---

**Q59.** Data that has been processed and given meaning is called:

A. raw data  
B. storage  
C. information  
D. input  

---

**Q60.** A collection of related data organised for easy access is a:

A. spreadsheet  
B. document  
C. presentation  
D. database  

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
  where subject = 'ICT'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
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
  where subject = 'ICT'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical, science
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPUTER SYSTEMS

**Q1.** Computer systems: A school system with 31 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Computer systems: A school system with 32 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

![Computer network topology](/paper-diagrams/computer-network.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Computer systems: A school system with 33 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Computer systems: A school system with 34 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Computer systems: A school system with 35 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: WORD PROCESSING

**Q6.** Word processing: A school system with 36 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Word processing: A school system with 37 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Word processing: A school system with 38 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Word processing: A school system with 39 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Word processing: A school system with 40 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: SPREADSHEETS

**Q11.** Spreadsheets: A school system with 41 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Spreadsheets: A school system with 42 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Spreadsheets: A school system with 43 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Spreadsheets: A school system with 44 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Spreadsheets: A school system with 45 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: DATABASES

**Q16.** Databases: A school system with 46 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Databases: A school system with 47 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Databases: A school system with 48 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Databases: A school system with 49 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Databases: A school system with 50 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: INTERNET

**Q21.** Internet: A school system with 51 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Internet: A school system with 52 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Internet: A school system with 53 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Internet: A school system with 54 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Internet: A school system with 55 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PRESENTATION SOFTWARE

**Q26.** Presentation software: A school system with 56 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Presentation software: A school system with 57 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Presentation software: A school system with 58 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Presentation software: A school system with 59 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Presentation software: A school system with 60 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: DIGITAL SAFETY

**Q31.** Digital safety: A school system with 61 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Digital safety: A school system with 62 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Digital safety: A school system with 63 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Digital safety: A school system with 64 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Digital safety: A school system with 65 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: ICT IN SOCIETY

**Q36.** ICT in society: A school system with 66 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** ICT in society: A school system with 67 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** ICT in society: A school system with 68 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** ICT in society: A school system with 69 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** ICT in society: A school system with 70 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

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
  where subject = 'ICT'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical, science
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPUTER SYSTEMS

**Q1.** Computer systems: A school system with 31 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Computer systems: A school system with 32 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Computer systems: A school system with 33 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

![Computer network topology](/paper-diagrams/computer-network.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Computer systems: A school system with 34 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Computer systems: A school system with 35 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: WORD PROCESSING

**Q6.** Word processing: A school system with 36 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Word processing: A school system with 37 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Word processing: A school system with 38 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Word processing: A school system with 39 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Word processing: A school system with 40 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: SPREADSHEETS

**Q11.** Spreadsheets: A school system with 41 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Spreadsheets: A school system with 42 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Spreadsheets: A school system with 43 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Spreadsheets: A school system with 44 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Spreadsheets: A school system with 45 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: DATABASES

**Q16.** Databases: A school system with 46 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Databases: A school system with 47 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Databases: A school system with 48 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Databases: A school system with 49 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Databases: A school system with 50 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: INTERNET

**Q21.** Internet: A school system with 51 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Internet: A school system with 52 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Internet: A school system with 53 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Internet: A school system with 54 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Internet: A school system with 55 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PRESENTATION SOFTWARE

**Q26.** Presentation software: A school system with 56 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Presentation software: A school system with 57 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Presentation software: A school system with 58 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Presentation software: A school system with 59 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Presentation software: A school system with 60 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: DIGITAL SAFETY

**Q31.** Digital safety: A school system with 61 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Digital safety: A school system with 62 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Digital safety: A school system with 63 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Digital safety: A school system with 64 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Digital safety: A school system with 65 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: ICT IN SOCIETY

**Q36.** ICT in society: A school system with 66 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** ICT in society: A school system with 67 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** ICT in society: A school system with 68 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** ICT in society: A school system with 69 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** ICT in society: A school system with 70 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

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
  where subject = 'ICT'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical, science
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: COMPUTER SYSTEMS

**Q1.** Computer systems: A school system with 31 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Computer systems: A school system with 32 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

![Computer network topology](/paper-diagrams/computer-network.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Computer systems: A school system with 33 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Computer systems: A school system with 34 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Computer systems: A school system with 35 learner records must process computer systems securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: WORD PROCESSING

**Q6.** Word processing: A school system with 36 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Word processing: A school system with 37 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Word processing: A school system with 38 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Word processing: A school system with 39 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Word processing: A school system with 40 learner records must process word processing securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: SPREADSHEETS

**Q11.** Spreadsheets: A school system with 41 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Spreadsheets: A school system with 42 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Spreadsheets: A school system with 43 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Spreadsheets: A school system with 44 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Spreadsheets: A school system with 45 learner records must process spreadsheets securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: DATABASES

**Q16.** Databases: A school system with 46 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Databases: A school system with 47 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Databases: A school system with 48 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Databases: A school system with 49 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Databases: A school system with 50 learner records must process databases securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: INTERNET

**Q21.** Internet: A school system with 51 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Internet: A school system with 52 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Internet: A school system with 53 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Internet: A school system with 54 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Internet: A school system with 55 learner records must process internet securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: PRESENTATION SOFTWARE

**Q26.** Presentation software: A school system with 56 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Presentation software: A school system with 57 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Presentation software: A school system with 58 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Presentation software: A school system with 59 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Presentation software: A school system with 60 learner records must process presentation software securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: DIGITAL SAFETY

**Q31.** Digital safety: A school system with 61 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Digital safety: A school system with 62 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Digital safety: A school system with 63 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Digital safety: A school system with 64 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Digital safety: A school system with 65 learner records must process digital safety securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: ICT IN SOCIETY

**Q36.** ICT in society: A school system with 66 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** ICT in society: A school system with 67 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** ICT in society: A school system with 68 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** ICT in society: A school system with 69 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** ICT in society: A school system with 70 learner records must process ict in society securely. Design or analyse the algorithm, data representation, database, network, or safety control required.

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
  where subject = 'ICT'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 4'
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
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 4

## Structural Question Bank — Productivity tools and digital communication

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, commercial, technical
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PRODUCTIVITY TOOLS AND DIGITAL COMMUNICATION

**Q1.** (a) What is a word processor? *(2 marks)*

(b) State four features of a word processor. *(4 marks)*

(c) Explain the difference between saving a document and printing a document. *(4 marks)*

---

**Q2.** (a) Define the terms "cut", "copy", and "paste" as used in word processing. *(3 marks)*

(b) Describe how you would change the font and size of text in a word processor. *(4 marks)*

(c) State two advantages of using a word processor over a typewriter. *(4 marks)*

---

**Q3.** (a) What is a spreadsheet? *(2 marks)*

(b) Define the terms cell, row, column, and range. *(4 marks)*

(c) Explain the difference between a formula and a function in a spreadsheet. *(4 marks)*

---

**Q4.** (a) State the function of the following spreadsheet functions: SUM, AVERAGE, MAX, MIN. *(4 marks)*

(b) Write the formula to add the values in cells A1 to A10. *(3 marks)*

(c) Explain what happens when a formula is copied to another cell. *(4 marks)*

---

**Q5.** (a) What is a presentation? *(2 marks)*

(b) State four features of a presentation program. *(4 marks)*

(c) Explain the importance of using bullet points in a presentation. *(4 marks)*

---

**Q6.** (a) Define the terms slide, transition, and animation. *(3 marks)*

(b) Describe how you would add a transition to a slide. *(4 marks)*

(c) State two guidelines for making an effective presentation. *(4 marks)*

---

**Q7.** (a) What is the internet? *(2 marks)*

(b) State three services provided by the internet. *(3 marks)*

(c) Explain the difference between the internet and the World Wide Web. *(4 marks)*

---

**Q8.** (a) Define the terms URL, browser, and search engine. *(3 marks)*

(b) Describe how you would search for information on the internet. *(4 marks)*

(c) State two ways of evaluating the reliability of a website. *(4 marks)*

---

**Q9.** (a) What is email? *(2 marks)*

(b) State the parts of an email address. *(3 marks)*

(c) Explain the difference between "To", "Cc", and "Bcc" fields in an email. *(4 marks)*

---

**Q10.** (a) Define the terms attachment and spam. *(2 marks)*

(b) Describe how you would attach a file to an email. *(4 marks)*

(c) State two precautions to take when opening email attachments. *(4 marks)*

---

**Q11.** (a) What is a social media platform? *(2 marks)*

(b) State three benefits of social media. *(3 marks)*

(c) Explain two risks of using social media. *(4 marks)*

---

**Q12.** (a) Define the term "digital citizenship". *(2 marks)*

(b) State three responsibilities of a digital citizen. *(3 marks)*

(c) Explain what is meant by "digital footprint". *(4 marks)*

---

**Q13.** (a) What is cyberbullying? *(2 marks)*

(b) State three ways to protect yourself from cyberbullying. *(3 marks)*

(c) Explain what you should do if you are a victim of cyberbullying. *(4 marks)*

---

**Q14.** (a) Define the terms "netiquette" and "copyright". *(4 marks)*

(b) State two examples of good netiquette. *(2 marks)*

(c) Explain why it is important to respect copyright when using online content. *(4 marks)*

---

**Q15.** (a) What is cloud computing? *(2 marks)*

(b) State three advantages of cloud storage. *(3 marks)*

(c) Explain one risk of storing data in the cloud. *(4 marks)*

---

**Q16.** (a) Define the terms "upload" and "download". *(2 marks)*

(b) Describe how you would share a document using a cloud service. *(4 marks)*

(c) State two benefits of collaborating on documents online. *(4 marks)*

---

**Q17.** (a) What is a database? *(2 marks)*

(b) Define the terms table, record, and field. *(3 marks)*

(c) Explain the difference between a primary key and a foreign key. *(4 marks)*

---

**Q18.** (a) State the function of a query in a database. *(2 marks)*

(b) Describe how you would sort records in a database. *(4 marks)*

(c) Explain the difference between a filter and a query. *(4 marks)*

---

**Q19.** (a) What is a computer virus? *(2 marks)*

(b) State three ways a computer can be infected by a virus. *(3 marks)*

(c) Describe two ways of protecting a computer from viruses. *(4 marks)*

---

**Q20.** (a) Define the terms "firewall" and "antivirus software". *(4 marks)*

(b) Explain the difference between a firewall and antivirus software. *(4 marks)*

(c) State two other security measures for protecting data. *(4 marks)*
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
  where subject = 'ICT'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 5'
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
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 5

## Structural Question Bank — Data, web, and information systems

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, commercial, technical
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DATA, WEB, AND INFORMATION SYSTEMS

**Q1.** (a) What is data? *(2 marks)*

(b) Distinguish between data and information. *(4 marks)*

(c) Give two examples of raw data and the information that can be derived from them. *(4 marks)*

---

**Q2.** (a) Define the term "information system". *(2 marks)*

(b) State the components of an information system. *(4 marks)*

(c) Explain the role of a database in an information system. *(4 marks)*

---

**Q3.** (a) What is a database management system (DBMS)? *(2 marks)*

(b) State three functions of a DBMS. *(3 marks)*

(c) Give two examples of DBMS software. *(2 marks)*

---

**Q4.** (a) Define the terms "entity" and "attribute" in a database. *(4 marks)*

(b) Give an example of an entity with three attributes. *(3 marks)*

(c) Explain what is meant by a "one-to-many" relationship. *(4 marks)*

---

**Q5.** (a) What is a relational database? *(2 marks)*

(b) State two advantages of a relational database over a flat-file database. *(4 marks)*

(c) Explain the purpose of a primary key. *(4 marks)*

---

**Q6.** (a) Define the term "SQL". *(2 marks)*

(b) Write an SQL statement to select all records from a table called "Students". *(3 marks)*

(c) Write an SQL statement to insert a new record into the "Students" table. *(4 marks)*

---

**Q7.** (a) What is a network? *(2 marks)*

(b) Distinguish between a LAN and a WAN. *(4 marks)*

(c) State two advantages of networking computers. *(4 marks)*

---

**Q8.** (a) Define the terms "client" and "server". *(2 marks)*

(b) Explain the client-server model. *(4 marks)*

(c) State two examples of client-server applications. *(4 marks)*

---

**Q9.** (a) What is the internet? *(2 marks)*

(b) Explain how data is transmitted over the internet using packets. *(5 marks)*

(c) Define the term "IP address". *(3 marks)*

---

**Q10.** (a) Define the terms "domain name" and "DNS". *(4 marks)

(b) Explain the purpose of the Domain Name System. *(4 marks)*

(c) Give an example of a domain name and identify its parts. *(4 marks)*

---

**Q11.** (a) What is a website? *(2 marks)*

(b) State three components of a website. *(3 marks)*

(c) Explain the difference between a static and a dynamic website. *(4 marks)*

---

**Q12.** (a) Define the terms "HTML" and "CSS". *(4 marks)*

(b) State the purpose of each. *(4 marks)*

(c) Write a simple HTML tag to create a heading. *(3 marks)*

---

**Q13.** (a) What is a web browser? *(2 marks)*

(b) State three features of a web browser. *(3 marks)*

(c) Explain the function of a "bookmark" in a browser. *(4 marks)*

---

**Q14.** (a) Define the terms "e-commerce" and "e-learning". *(4 marks)*

(b) State two advantages of e-commerce. *(2 marks)*

(c) Explain one disadvantage of e-commerce. *(4 marks)*

---

**Q15.** (a) What is cybersecurity? *(2 marks)*

(b) State three types of cyber threats. *(3 marks)*

(c) Explain the importance of strong passwords. *(4 marks)*

---

**Q16.** (a) Define the terms "phishing" and "malware". *(4 marks)*

(b) Describe how phishing attacks work. *(4 marks)*

(c) State two ways to avoid phishing attacks. *(4 marks)*

---

**Q17.** (a) What is encryption? *(2 marks)*

(b) Explain how encryption protects data. *(4 marks)*

(c) State two uses of encryption in everyday life. *(4 marks)*

---

**Q18.** (a) Define the term "backup". *(2 marks)*

(b) State three reasons why regular backups are important. *(3 marks)*

(c) Describe two backup strategies. *(4 marks)*

---

**Q19.** (a) What is a computer system? *(2 marks)*

(b) State the hardware components of a computer system. *(4 marks)*

(c) Explain the difference between hardware and software. *(4 marks)*

---

**Q20.** (a) Define the terms "input device" and "output device". *(4 marks)*

(b) Give two examples of each. *(4 marks)*

(c) Explain the function of the CPU. *(4 marks)*
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
  where subject = 'ICT'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 6'
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
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 6

## Structural Question Bank — Productivity tools and digital communication

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, commercial, technical
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PRODUCTIVITY TOOLS AND DIGITAL COMMUNICATION

**Q1.** (a) What is a word processor? *(2 marks)*

(b) State four features of a word processor. *(4 marks)*

(c) Explain the difference between saving a document and printing a document. *(4 marks)*

---

**Q2.** (a) Define the terms "cut", "copy", and "paste" as used in word processing. *(3 marks)*

(b) Describe how you would change the font and size of text in a word processor. *(4 marks)*

(c) State two advantages of using a word processor over a typewriter. *(4 marks)*

---

**Q3.** (a) What is a spreadsheet? *(2 marks)*

(b) Define the terms cell, row, column, and range. *(4 marks)*

(c) Explain the difference between a formula and a function in a spreadsheet. *(4 marks)*

---

**Q4.** (a) State the function of the following spreadsheet functions: SUM, AVERAGE, MAX, MIN. *(4 marks)*

(b) Write the formula to add the values in cells A1 to A10. *(3 marks)*

(c) Explain what happens when a formula is copied to another cell. *(4 marks)*

---

**Q5.** (a) What is a presentation? *(2 marks)*

(b) State four features of a presentation program. *(4 marks)*

(c) Explain the importance of using bullet points in a presentation. *(4 marks)*

---

**Q6.** (a) Define the terms slide, transition, and animation. *(3 marks)*

(b) Describe how you would add a transition to a slide. *(4 marks)*

(c) State two guidelines for making an effective presentation. *(4 marks)*

---

**Q7.** (a) What is the internet? *(2 marks)*

(b) State three services provided by the internet. *(3 marks)*

(c) Explain the difference between the internet and the World Wide Web. *(4 marks)*

---

**Q8.** (a) Define the terms URL, browser, and search engine. *(3 marks)*

(b) Describe how you would search for information on the internet. *(4 marks)*

(c) State two ways of evaluating the reliability of a website. *(4 marks)*

---

**Q9.** (a) What is email? *(2 marks)*

(b) State the parts of an email address. *(3 marks)*

(c) Explain the difference between "To", "Cc", and "Bcc" fields in an email. *(4 marks)*

---

**Q10.** (a) Define the terms attachment and spam. *(2 marks)*

(b) Describe how you would attach a file to an email. *(4 marks)*

(c) State two precautions to take when opening email attachments. *(4 marks)*

---

**Q11.** (a) What is a social media platform? *(2 marks)*

(b) State three benefits of social media. *(3 marks)*

(c) Explain two risks of using social media. *(4 marks)*

---

**Q12.** (a) Define the term "digital citizenship". *(2 marks)*

(b) State three responsibilities of a digital citizen. *(3 marks)*

(c) Explain what is meant by "digital footprint". *(4 marks)*

---

**Q13.** (a) What is cyberbullying? *(2 marks)*

(b) State three ways to protect yourself from cyberbullying. *(3 marks)*

(c) Explain what you should do if you are a victim of cyberbullying. *(4 marks)*

---

**Q14.** (a) Define the terms "netiquette" and "copyright". *(4 marks)*

(b) State two examples of good netiquette. *(2 marks)*

(c) Explain why it is important to respect copyright when using online content. *(4 marks)*

---

**Q15.** (a) What is cloud computing? *(2 marks)*

(b) State three advantages of cloud storage. *(3 marks)*

(c) Explain one risk of storing data in the cloud. *(4 marks)*

---

**Q16.** (a) Define the terms "upload" and "download". *(2 marks)*

(b) Describe how you would share a document using a cloud service. *(4 marks)*

(c) State two benefits of collaborating on documents online. *(4 marks)*

---

**Q17.** (a) What is a database? *(2 marks)*

(b) Define the terms table, record, and field. *(3 marks)*

(c) Explain the difference between a primary key and a foreign key. *(4 marks)*

---

**Q18.** (a) State the function of a query in a database. *(2 marks)*

(b) Describe how you would sort records in a database. *(4 marks)*

(c) Explain the difference between a filter and a query. *(4 marks)*

---

**Q19.** (a) What is a computer virus? *(2 marks)*

(b) State three ways a computer can be infected by a virus. *(3 marks)*

(c) Describe two ways of protecting a computer from viruses. *(4 marks)*

---

**Q20.** (a) Define the terms "firewall" and "antivirus software". *(4 marks)*

(b) Explain the difference between a firewall and antivirus software. *(4 marks)*

(c) State two other security measures for protecting data. *(4 marks)*
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
  where subject = 'ICT'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 7

## Structural Question Bank — Data, web, and information systems

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, commercial, technical
**Subject:** ICT

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: DATA, WEB, AND INFORMATION SYSTEMS

**Q1.** (a) What is data? *(2 marks)*

(b) Distinguish between data and information. *(4 marks)*

(c) Give two examples of raw data and the information that can be derived from them. *(4 marks)*

---

**Q2.** (a) Define the term "information system". *(2 marks)*

(b) State the components of an information system. *(4 marks)*

(c) Explain the role of a database in an information system. *(4 marks)*

---

**Q3.** (a) What is a database management system (DBMS)? *(2 marks)*

(b) State three functions of a DBMS. *(3 marks)*

(c) Give two examples of DBMS software. *(2 marks)*

---

**Q4.** (a) Define the terms "entity" and "attribute" in a database. *(4 marks)*

(b) Give an example of an entity with three attributes. *(3 marks)*

(c) Explain what is meant by a "one-to-many" relationship. *(4 marks)*

---

**Q5.** (a) What is a relational database? *(2 marks)*

(b) State two advantages of a relational database over a flat-file database. *(4 marks)*

(c) Explain the purpose of a primary key. *(4 marks)*

---

**Q6.** (a) Define the term "SQL". *(2 marks)*

(b) Write an SQL statement to select all records from a table called "Students". *(3 marks)*

(c) Write an SQL statement to insert a new record into the "Students" table. *(4 marks)*

---

**Q7.** (a) What is a network? *(2 marks)*

(b) Distinguish between a LAN and a WAN. *(4 marks)*

(c) State two advantages of networking computers. *(4 marks)*

---

**Q8.** (a) Define the terms "client" and "server". *(2 marks)*

(b) Explain the client-server model. *(4 marks)*

(c) State two examples of client-server applications. *(4 marks)*

---

**Q9.** (a) What is the internet? *(2 marks)*

(b) Explain how data is transmitted over the internet using packets. *(5 marks)*

(c) Define the term "IP address". *(3 marks)*

---

**Q10.** (a) Define the terms "domain name" and "DNS". *(4 marks)

(b) Explain the purpose of the Domain Name System. *(4 marks)*

(c) Give an example of a domain name and identify its parts. *(4 marks)*

---

**Q11.** (a) What is a website? *(2 marks)*

(b) State three components of a website. *(3 marks)*

(c) Explain the difference between a static and a dynamic website. *(4 marks)*

---

**Q12.** (a) Define the terms "HTML" and "CSS". *(4 marks)*

(b) State the purpose of each. *(4 marks)*

(c) Write a simple HTML tag to create a heading. *(3 marks)*

---

**Q13.** (a) What is a web browser? *(2 marks)*

(b) State three features of a web browser. *(3 marks)*

(c) Explain the function of a "bookmark" in a browser. *(4 marks)*

---

**Q14.** (a) Define the terms "e-commerce" and "e-learning". *(4 marks)*

(b) State two advantages of e-commerce. *(2 marks)*

(c) Explain one disadvantage of e-commerce. *(4 marks)*

---

**Q15.** (a) What is cybersecurity? *(2 marks)*

(b) State three types of cyber threats. *(3 marks)*

(c) Explain the importance of strong passwords. *(4 marks)*

---

**Q16.** (a) Define the terms "phishing" and "malware". *(4 marks)*

(b) Describe how phishing attacks work. *(4 marks)*

(c) State two ways to avoid phishing attacks. *(4 marks)*

---

**Q17.** (a) What is encryption? *(2 marks)*

(b) Explain how encryption protects data. *(4 marks)*

(c) State two uses of encryption in everyday life. *(4 marks)*

---

**Q18.** (a) Define the term "backup". *(2 marks)*

(b) State three reasons why regular backups are important. *(3 marks)*

(c) Describe two backup strategies. *(4 marks)*

---

**Q19.** (a) What is a computer system? *(2 marks)*

(b) State the hardware components of a computer system. *(4 marks)*

(c) Explain the difference between hardware and software. *(4 marks)*

---

**Q20.** (a) Define the terms "input device" and "output device". *(4 marks)*

(b) Give two examples of each. *(4 marks)*

(c) Explain the function of the CPU. *(4 marks)*
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