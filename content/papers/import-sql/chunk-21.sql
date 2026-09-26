begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'History'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** History

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The slave trade was abolished in the British Empire in:

A. 1807  
B. 1884  
C. 1914  
D. 1945  

---

**Q2.** The conference that divided Africa among European powers was the:

A. Berlin Conference  
B. Paris Conference  
C. London Conference  
D. Geneva Conference  

---

**Q3.** The Berlin Conference took place in:

A. 1884-1885  
B. 1939-1945  
C. 1914-1918  
D. 1960-1961  

---

**Q4.** The European power that first colonised Cameroon was:

A. Germany  
B. France  
C. Belgium  
D. Britain  

---

**Q5.** Germany lost Cameroon after the:

A. First World War  
B. Scramble for Africa  
C. Second World War  
D. Berlin Conference  

---

**Q6.** After the First World War, Cameroon was divided between:

A. Britain and France  
B. Germany and Italy  
C. France and Belgium  
D. Britain and Germany  

---

**Q7.** The system of government used by the British in Cameroon was:

A. direct rule  
B. indirect rule  
C. assimilation  
D. apartheid  

---

**Q8.** The system of government used by the French in Cameroon was:

A. indirect rule  
B. assimilation  
C. federation  
D. apartheid  

---

**Q9.** The desire of a people to govern themselves is called:

A. colonialism  
B. imperialism  
C. nationalism  
D. federalism  

---

**Q10.** The political party that led the struggle for independence in French Cameroon was the:

A. KNDP  
B. CPNC  
C. CNO  
D. UPC  

---

**Q11.** French Cameroon gained independence in:

A. 1961  
B. 1972  
C. 1960  
D. 1945  

---

**Q12.** The vote held in British Southern Cameroons in 1961 was called the:

A. referendum  
B. census  
C. election  
D. plebiscite  

---

**Q13.** The reunification of Cameroon took place in:

A. 1972  
B. 1961  
C. 1960  
D. 1982  

---

**Q14.** The conference that discussed the reunification of Cameroon was held at:

A. Douala  
B. Foumban  
C. Buea  
D. Yaoundé  

---

**Q15.** Cameroon became a federation in:

A. 1972  
B. 1960  
C. 1961  
D. 1984  

---

**Q16.** The federal system in Cameroon was replaced by a unitary system in:

A. 1982  
B. 1961  
C. 1990  
D. 1972  

---

**Q17.** The first president of Cameroon was:

A. John Ngu Foncha  
B. Ruben Um Nyobé  
C. Ahmadou Ahidjo  
D. Paul Biya  

---

**Q18.** The current president of Cameroon is:

A. John Ngu Foncha  
B. Emmanuel Nganou  
C. Ahmadou Ahidjo  
D. Paul Biya  

---

**Q19.** Multiparty politics was reintroduced in Cameroon in:

A. 1982  
B. 1990  
C. 1972  
D. 1961  

---

**Q20.** The organisation formed in 1963 to unite African states was the:

A. ECOWAS  
B. OAU  
C. UN  
D. AU  

---

**Q21.** The OAU was replaced by the African Union in:

A. 2010  
B. 1990  
C. 2002  
D. 1963  

---

**Q22.** The system of racial segregation in South Africa was called:

A. colonialism  
B. assimilation  
C. indirect rule  
D. apartheid  

---

**Q23.** The leader who fought against apartheid in South Africa was:

A. Julius Nyerere  
B. Jomo Kenyatta  
C. Nelson Mandela  
D. Kwame Nkrumah  

---

**Q24.** The first president of independent Ghana was:

A. Julius Nyerere  
B. Jomo Kenyatta  
C. Nelson Mandela  
D. Kwame Nkrumah  

---

**Q25.** The study of past events is called:

A. history  
B. geography  
C. economics  
D. sociology  

---

**Q26.** Written records of the past are called:

A. documents  
B. artefacts  
C. legends  
D. monuments  

---

**Q27.** Objects made by people in the past are called:

A. artefacts  
B. archives  
C. documents  
D. manuscripts  

---

**Q28.** The traditional ruler of the Bamenda people is the:

A. Fon  
B. Lamido  
C. Chief  
D. Sultan  

---

**Q29.** The traditional ruler of the Bamoun people is the:

A. Sultan  
B. Emir  
C. Fon  
D. Lamido  

---

**Q30.** The forced removal of Africans to the Americas was called the:

A. slave trade  
B. mandate  
C. partition  
D. scramble  

---

**Q31.** The international organisation formed after the First World War was the:

A. United Nations  
B. League of Nations  
C. African Union  
D. European Union  

---

**Q32.** The Second World War began in:

A. 1914  
B. 1939  
C. 1929  
D. 1945  

---

**Q33.** The Second World War ended in:

A. 1939  
B. 1918  
C. 1945  
D. 1950  

---

**Q34.** The leader of Nazi Germany was:

A. Benito Mussolini  
B. Joseph Stalin  
C. Winston Churchill  
D. Adolf Hitler  

---

**Q35.** The leader of Fascist Italy was:

A. Adolf Hitler  
B. Francisco Franco  
C. Benito Mussolini  
D. Joseph Stalin  

---

**Q36.** The systematic murder of six million Jews by the Nazis was called the:

A. Genocide  
B. Inquisition  
C. Pogrom  
D. Holocaust  

---

**Q37.** The state of tension between the USA and the USSR after 1945 was called the:

A. Proxy War  
B. Cold War  
C. World War  
D. Trade War  

---

**Q38.** The wall that divided Berlin was built in:

A. 1989  
B. 1961  
C. 1950  
D. 1945  

---

**Q39.** The Berlin Wall fell in:

A. 1945  
B. 1961  
C. 1989  
D. 1991  

---

**Q40.** The international organisation formed in 1945 to maintain peace was the:

A. African Union  
B. League of Nations  
C. European Union  
D. United Nations  

---

**Q41.** The organ of the UN responsible for maintaining peace is the:

A. Secretariat  
B. ICJ  
C. Security Council  
D. General Assembly  

---

**Q42.** The crisis of 1962 that brought the world close to nuclear war was the:

A. Suez Crisis  
B. Korean Crisis  
C. Berlin Crisis  
D. Cuban Missile Crisis  

---

**Q43.** The war fought between North and South Korea from 1950 to 1953 was a:

A. trade war  
B. proxy war  
C. world war  
D. civil war  

---

**Q44.** The process of granting independence to colonies is called:

A. globalisation  
B. decolonisation  
C. imperialism  
D. colonisation  

---

**Q45.** The economic union of European states is called the:

A. Commonwealth  
B. African Union  
C. European Union  
D. United Nations  

---

**Q46.** The organisation that regulates international trade is the:

A. AU  
B. IMF  
C. UN  
D. WTO  

---

**Q47.** The organisation that provides financial assistance to countries is the:

A. AU  
B. UN  
C. IMF  
D. WTO  

---

**Q48.** The increasing interconnection of the world''s economies is called:

A. protectionism  
B. nationalism  
C. colonisation  
D. globalisation  

---

**Q49.** The use of violence for political aims is called:

A. terrorism  
B. nationalism  
C. imperialism  
D. diplomacy  

---

**Q50.** The association of former British colonies is called the:

A. Commonwealth  
B. European Union  
C. United Nations  
D. African Union  

---

**Q51.** The declaration that protects the rights of all people was the:

A. Universal Declaration of Human Rights  
B. Berlin Act  
C. Treaty of Versailles  
D. Atlantic Charter  

---

**Q52.** The Universal Declaration of Human Rights was adopted in:

A. 1948  
B. 1939  
C. 1960  
D. 1918  

---

**Q53.** The leader of the Soviet Union during the Cuban Missile Crisis was:

A. Nikita Khrushchev  
B. Mikhail Gorbachev  
C. Joseph Stalin  
D. Vladimir Lenin  

---

**Q54.** The leader of the United States during the Cuban Missile Crisis was:

A. John F. Kennedy  
B. Richard Nixon  
C. Harry Truman  
D. Franklin Roosevelt  

---

**Q55.** The First World War began in:

A. 1918  
B. 1914  
C. 1939  
D. 1900  

---

**Q56.** The First World War ended in:

A. 1914  
B. 1918  
C. 1920  
D. 1945  

---

**Q57.** The assassination that triggered the First World War was that of:

A. Adolf Hitler  
B. Napoleon  
C. Archduke Franz Ferdinand  
D. Kaiser Wilhelm  

---

**Q58.** The alliance of Germany, Austria-Hungary, and Italy was called the:

A. Triple Entente  
B. Axis  
C. Allies  
D. Triple Alliance  

---

**Q59.** The alliance of Britain, France, and Russia was called the:

A. Triple Alliance  
B. Central Powers  
C. Triple Entente  
D. Axis  

---

**Q60.** The treaty that ended the First World War was the:

A. Treaty of Paris  
B. Treaty of Rome  
C. Treaty of Berlin  
D. Treaty of Versailles  

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
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CAMEROON HISTORY

**Q1.** Cameroon history: Source 1 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Cameroon history: Source 2 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Cameroon history: Source 3 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Cameroon history: Source 4 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Cameroon history: Source 5 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: WEST AFRICA

**Q6.** West Africa: Source 6 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** West Africa: Source 7 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** West Africa: Source 8 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** West Africa: Source 9 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** West Africa: Source 10 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: EUROPEAN IMPERIALISM

**Q11.** European imperialism: Source 11 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** European imperialism: Source 12 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** European imperialism: Source 13 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** European imperialism: Source 14 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** European imperialism: Source 15 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: WORLD WARS

**Q16.** World wars: Source 16 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** World wars: Source 17 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** World wars: Source 18 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** World wars: Source 19 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** World wars: Source 20 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: DECOLONISATION

**Q21.** Decolonisation: Source 21 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Decolonisation: Source 22 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Decolonisation: Source 23 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Decolonisation: Source 24 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Decolonisation: Source 25 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: COLD WAR

**Q26.** Cold War: Source 26 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Cold War: Source 27 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Cold War: Source 28 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Cold War: Source 29 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Cold War: Source 30 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: NATIONALISM

**Q31.** Nationalism: Source 31 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Nationalism: Source 32 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Nationalism: Source 33 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Nationalism: Source 34 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Nationalism: Source 35 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: INTERNATIONAL ORGANISATIONS

**Q36.** International organisations: Source 36 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** International organisations: Source 37 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** International organisations: Source 38 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** International organisations: Source 39 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** International organisations: Source 40 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

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
  where subject = 'History'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CAMEROON HISTORY

**Q1.** Cameroon history: Source 1 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Cameroon history: Source 2 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Cameroon history: Source 3 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Cameroon history: Source 4 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Cameroon history: Source 5 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: WEST AFRICA

**Q6.** West Africa: Source 6 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** West Africa: Source 7 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** West Africa: Source 8 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** West Africa: Source 9 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** West Africa: Source 10 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: EUROPEAN IMPERIALISM

**Q11.** European imperialism: Source 11 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** European imperialism: Source 12 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** European imperialism: Source 13 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** European imperialism: Source 14 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** European imperialism: Source 15 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: WORLD WARS

**Q16.** World wars: Source 16 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** World wars: Source 17 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** World wars: Source 18 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** World wars: Source 19 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** World wars: Source 20 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: DECOLONISATION

**Q21.** Decolonisation: Source 21 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Decolonisation: Source 22 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Decolonisation: Source 23 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Decolonisation: Source 24 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Decolonisation: Source 25 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: COLD WAR

**Q26.** Cold War: Source 26 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Cold War: Source 27 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Cold War: Source 28 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Cold War: Source 29 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Cold War: Source 30 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: NATIONALISM

**Q31.** Nationalism: Source 31 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Nationalism: Source 32 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Nationalism: Source 33 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Nationalism: Source 34 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Nationalism: Source 35 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: INTERNATIONAL ORGANISATIONS

**Q36.** International organisations: Source 36 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** International organisations: Source 37 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** International organisations: Source 38 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** International organisations: Source 39 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** International organisations: Source 40 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

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
  where subject = 'History'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts
**Subject:** History

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CAMEROON HISTORY

**Q1.** Cameroon history: Source 1 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** Cameroon history: Source 2 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** Cameroon history: Source 3 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** Cameroon history: Source 4 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** Cameroon history: Source 5 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cameroon history with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: WEST AFRICA

**Q6.** West Africa: Source 6 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** West Africa: Source 7 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** West Africa: Source 8 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** West Africa: Source 9 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** West Africa: Source 10 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine west africa with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: EUROPEAN IMPERIALISM

**Q11.** European imperialism: Source 11 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** European imperialism: Source 12 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** European imperialism: Source 13 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** European imperialism: Source 14 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** European imperialism: Source 15 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine european imperialism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: WORLD WARS

**Q16.** World wars: Source 16 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** World wars: Source 17 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** World wars: Source 18 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** World wars: Source 19 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** World wars: Source 20 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine world wars with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: DECOLONISATION

**Q21.** Decolonisation: Source 21 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Decolonisation: Source 22 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Decolonisation: Source 23 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Decolonisation: Source 24 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Decolonisation: Source 25 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine decolonisation with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: COLD WAR

**Q26.** Cold War: Source 26 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Cold War: Source 27 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Cold War: Source 28 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Cold War: Source 29 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Cold War: Source 30 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine cold war with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: NATIONALISM

**Q31.** Nationalism: Source 31 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** Nationalism: Source 32 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** Nationalism: Source 33 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** Nationalism: Source 34 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** Nationalism: Source 35 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine nationalism with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: INTERNATIONAL ORGANISATIONS

**Q36.** International organisations: Source 36 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** International organisations: Source 37 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** International organisations: Source 38 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** International organisations: Source 39 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** International organisations: Source 40 describes political change, resistance, reform, or nationalism in Cameroon, Africa, or the wider world. Use it to examine international organisations with evidence.

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
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5

## Structural Question Bank — World history

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

## SECTION 1: WORLD HISTORY

**Q1.** (a) What was the First World War? *(2 marks)*

(b) State three causes of the First World War. *(3 marks)*

(c) Explain how the assassination of Archduke Franz Ferdinand led to the war. *(4 marks)*

---

**Q2.** (a) Define the term "alliance". *(2 marks)*

(b) Describe the alliance system in Europe before 1914. *(4 marks)*

(c) Explain how the alliance system contributed to the outbreak of the First World War. *(4 marks)*

---

**Q3.** (a) What was the Treaty of Versailles? *(2 marks)*

(b) State three terms of the Treaty of Versailles. *(3 marks)*

(c) Explain the effects of the Treaty of Versailles on Germany. *(5 marks)*

---

**Q4.** (a) Define the term "League of Nations". *(2 marks)*

(b) State three aims of the League of Nations. *(3 marks)*

(c) Explain why the League of Nations failed to prevent the Second World War. *(5 marks)*

---

**Q5.** (a) What was the Second World War? *(2 marks)*

(b) State three causes of the Second World War. *(3 marks)*

(c) Explain the role of Adolf Hitler in causing the Second World War. *(5 marks)*

---

**Q6.** (a) Define the term "totalitarianism". *(2 marks)*

(b) Describe the rise of fascism in Italy and Nazism in Germany. *(5 marks)*

(c) Explain the effects of totalitarian rule on the people of Germany. *(4 marks)*

---

**Q7.** (a) What was the Holocaust? *(2 marks)*

(b) Describe the persecution of Jews under Nazi rule. *(4 marks)*

(c) Explain the consequences of the Holocaust. *(4 marks)*

---

**Q8.** (a) Define the term "Cold War". *(2 marks)*

(b) State three causes of the Cold War. *(3 marks)*

(c) Explain how the Cold War divided the world into two blocs. *(5 marks)*

---

**Q9.** (a) What was the Berlin Wall? *(2 marks)*

(b) Describe the events leading to the construction of the Berlin Wall in 1961. *(4 marks)*

(c) Explain the significance of the fall of the Berlin Wall in 1989. *(4 marks)*

---

**Q10.** (a) Define the term "nuclear arms race". *(2 marks)*

(b) Describe the development of nuclear weapons during the Cold War. *(4 marks)*

(c) Explain the importance of arms control agreements such as SALT. *(4 marks)*

---

**Q11.** (a) What was the United Nations? *(2 marks)*

(b) State three organs of the United Nations. *(3 marks)*

(c) Explain the role of the UN Security Council in maintaining peace. *(5 marks)*

---

**Q12.** (a) Define the term "decolonisation". *(2 marks)*

(b) State three factors that led to decolonisation after 1945. *(3 marks)*

(c) Explain the role of the UN in the decolonisation of Africa. *(4 marks)*

---

**Q13.** (a) What is globalisation? *(2 marks)*

(b) State three features of globalisation. *(3 marks)*

(c) Explain two effects of globalisation on developing countries. *(5 marks)*

---

**Q14.** (a) Define the term "international organisation". *(2 marks)*

(b) Describe the aims of the World Trade Organization. *(4 marks)*

(c) Explain the importance of the International Monetary Fund. *(4 marks)*

---

**Q15.** (a) What was the Cuban Missile Crisis? *(2 marks)*

(b) Describe the events of the Cuban Missile Crisis of 1962. *(5 marks)*

(c) Explain the consequences of the crisis for the Cold War. *(4 marks)*

---

**Q16.** (a) Define the term "proxy war". *(2 marks)*

(b) Describe the Korean War as a proxy war of the Cold War. *(4 marks)*

(c) Explain the effects of the Vietnam War on the United States. *(4 marks)*

---

**Q17.** (a) What was the European Union? *(2 marks)*

(b) Describe the stages of European integration from the EEC to the EU. *(5 marks)*

(c) Explain the benefits of the European Union to its members. *(4 marks)*

---

**Q18.** (a) Define the term "terrorism". *(2 marks)*

(b) State three causes of terrorism. *(3 marks)*

(c) Explain the effects of international terrorism on global security. *(5 marks)*

---

**Q19.** (a) What is the Commonwealth? *(2 marks)*

(b) State three objectives of the Commonwealth. *(3 marks)*

(c) Explain the importance of the Commonwealth to Cameroon. *(4 marks)*

---

**Q20.** (a) Define the term "human rights". *(2 marks)*

(b) State three examples of human rights. *(3 marks)*

(c) Explain the role of the Universal Declaration of Human Rights in protecting people. *(5 marks)*
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
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6

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
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7

## Structural Question Bank — World history

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

## SECTION 1: WORLD HISTORY

**Q1.** (a) What was the First World War? *(2 marks)*

(b) State three causes of the First World War. *(3 marks)*

(c) Explain how the assassination of Archduke Franz Ferdinand led to the war. *(4 marks)*

---

**Q2.** (a) Define the term "alliance". *(2 marks)*

(b) Describe the alliance system in Europe before 1914. *(4 marks)*

(c) Explain how the alliance system contributed to the outbreak of the First World War. *(4 marks)*

---

**Q3.** (a) What was the Treaty of Versailles? *(2 marks)*

(b) State three terms of the Treaty of Versailles. *(3 marks)*

(c) Explain the effects of the Treaty of Versailles on Germany. *(5 marks)*

---

**Q4.** (a) Define the term "League of Nations". *(2 marks)*

(b) State three aims of the League of Nations. *(3 marks)*

(c) Explain why the League of Nations failed to prevent the Second World War. *(5 marks)*

---

**Q5.** (a) What was the Second World War? *(2 marks)*

(b) State three causes of the Second World War. *(3 marks)*

(c) Explain the role of Adolf Hitler in causing the Second World War. *(5 marks)*

---

**Q6.** (a) Define the term "totalitarianism". *(2 marks)*

(b) Describe the rise of fascism in Italy and Nazism in Germany. *(5 marks)*

(c) Explain the effects of totalitarian rule on the people of Germany. *(4 marks)*

---

**Q7.** (a) What was the Holocaust? *(2 marks)*

(b) Describe the persecution of Jews under Nazi rule. *(4 marks)*

(c) Explain the consequences of the Holocaust. *(4 marks)*

---

**Q8.** (a) Define the term "Cold War". *(2 marks)*

(b) State three causes of the Cold War. *(3 marks)*

(c) Explain how the Cold War divided the world into two blocs. *(5 marks)*

---

**Q9.** (a) What was the Berlin Wall? *(2 marks)*

(b) Describe the events leading to the construction of the Berlin Wall in 1961. *(4 marks)*

(c) Explain the significance of the fall of the Berlin Wall in 1989. *(4 marks)*

---

**Q10.** (a) Define the term "nuclear arms race". *(2 marks)*

(b) Describe the development of nuclear weapons during the Cold War. *(4 marks)*

(c) Explain the importance of arms control agreements such as SALT. *(4 marks)*

---

**Q11.** (a) What was the United Nations? *(2 marks)*

(b) State three organs of the United Nations. *(3 marks)*

(c) Explain the role of the UN Security Council in maintaining peace. *(5 marks)*

---

**Q12.** (a) Define the term "decolonisation". *(2 marks)*

(b) State three factors that led to decolonisation after 1945. *(3 marks)*

(c) Explain the role of the UN in the decolonisation of Africa. *(4 marks)*

---

**Q13.** (a) What is globalisation? *(2 marks)*

(b) State three features of globalisation. *(3 marks)*

(c) Explain two effects of globalisation on developing countries. *(5 marks)*

---

**Q14.** (a) Define the term "international organisation". *(2 marks)*

(b) Describe the aims of the World Trade Organization. *(4 marks)*

(c) Explain the importance of the International Monetary Fund. *(4 marks)*

---

**Q15.** (a) What was the Cuban Missile Crisis? *(2 marks)*

(b) Describe the events of the Cuban Missile Crisis of 1962. *(5 marks)*

(c) Explain the consequences of the crisis for the Cold War. *(4 marks)*

---

**Q16.** (a) Define the term "proxy war". *(2 marks)*

(b) Describe the Korean War as a proxy war of the Cold War. *(4 marks)*

(c) Explain the effects of the Vietnam War on the United States. *(4 marks)*

---

**Q17.** (a) What was the European Union? *(2 marks)*

(b) Describe the stages of European integration from the EEC to the EU. *(5 marks)*

(c) Explain the benefits of the European Union to its members. *(4 marks)*

---

**Q18.** (a) Define the term "terrorism". *(2 marks)*

(b) State three causes of terrorism. *(3 marks)*

(c) Explain the effects of international terrorism on global security. *(5 marks)*

---

**Q19.** (a) What is the Commonwealth? *(2 marks)*

(b) State three objectives of the Commonwealth. *(3 marks)*

(c) Explain the importance of the Commonwealth to Cameroon. *(4 marks)*

---

**Q20.** (a) Define the term "human rights". *(2 marks)*

(b) State three examples of human rights. *(3 marks)*

(c) Explain the role of the Universal Declaration of Human Rights in protecting people. *(5 marks)*
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
  where title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8

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

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Human Biology'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Human Biology',
  'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level HUMAN BIOLOGY P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Human Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Cell Structure: Sample question 1 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Body Systems: Sample question 2 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Nutrition: Sample question 3 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Respiration: Sample question 4 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Circulation: Sample question 5 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Excretion: Sample question 6 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Reproduction: Sample question 7 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Health & Disease: Sample question 8 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Cell Structure: Sample question 9 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Body Systems: Sample question 10 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Nutrition: Sample question 11 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Respiration: Sample question 12 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Circulation: Sample question 13 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Excretion: Sample question 14 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Reproduction: Sample question 15 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Health & Disease: Sample question 16 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Cell Structure: Sample question 17 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Body Systems: Sample question 18 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Nutrition: Sample question 19 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Respiration: Sample question 20 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Circulation: Sample question 21 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Excretion: Sample question 22 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Reproduction: Sample question 23 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Health & Disease: Sample question 24 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Cell Structure: Sample question 25 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Body Systems: Sample question 26 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Nutrition: Sample question 27 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Respiration: Sample question 28 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Circulation: Sample question 29 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Excretion: Sample question 30 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Reproduction: Sample question 31 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Health & Disease: Sample question 32 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Cell Structure: Sample question 33 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Body Systems: Sample question 34 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Nutrition: Sample question 35 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Respiration: Sample question 36 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Circulation: Sample question 37 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Excretion: Sample question 38 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Reproduction: Sample question 39 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Health & Disease: Sample question 40 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Cell Structure: Sample question 41 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Body Systems: Sample question 42 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Nutrition: Sample question 43 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Respiration: Sample question 44 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Circulation: Sample question 45 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Excretion: Sample question 46 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Reproduction: Sample question 47 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Health & Disease: Sample question 48 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Cell Structure: Sample question 49 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Body Systems: Sample question 50 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Nutrition: Sample question 51 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Respiration: Sample question 52 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Circulation: Sample question 53 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Excretion: Sample question 54 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Reproduction: Sample question 55 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Health & Disease: Sample question 56 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Cell Structure: Sample question 57 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Body Systems: Sample question 58 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Nutrition: Sample question 59 for Human Biology Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Respiration: Sample question 60 for Human Biology Ordinary Level Paper 1.

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

commit;