begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Chemistry'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 7

## Structural Question Bank — Stoichiometry and reactions

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Chemistry

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: STOICHIOMETRY AND REACTIONS

**Q1.** (a) Define the term "mole". *(2 marks)*

(b) Calculate the number of moles in 8 g of oxygen gas ($O_2$). (Relative atomic mass: O = 16) *(4 marks)*

(c) Calculate the mass of 0.5 moles of carbon dioxide ($CO_2$). (Relative atomic masses: C = 12, O = 16) *(4 marks)*

---

**Q2.** (a) State Avogadro''s constant. *(2 marks)*

(b) Calculate the number of molecules in 0.25 moles of water. *(3 marks)*

(c) Calculate the number of atoms in 0.5 moles of oxygen gas ($O_2$). *(4 marks)*

---

**Q3.** (a) Balance the following equation:

$Mg + O_2 \rightarrow MgO$ *(3 marks)*

(b) Calculate the mass of magnesium oxide formed when 4.8 g of magnesium burns completely in oxygen. (Relative atomic masses: Mg = 24, O = 16) *(6 marks)*

---

**Q4.** (a) What is a limiting reactant? *(3 marks)*

(b) 2 g of hydrogen reacts with 16 g of oxygen to form water. Determine the limiting reactant and the mass of water formed. (Relative atomic masses: H = 1, O = 16) *(6 marks)*

---

**Q5.** (a) Define the term "acid". *(2 marks)*

(b) State three properties of acids. *(3 marks)*

(c) Write the word equation for the reaction between hydrochloric acid and sodium hydroxide. *(3 marks)*

---

**Q6.** (a) Define the term "base". *(2 marks)*

(b) Distinguish between a base and an alkali. *(3 marks)*

(c) Describe the reaction between an acid and a metal carbonate, naming the products. *(4 marks)*

---

**Q7.** (a) What is a salt? *(2 marks)*

(b) Describe how you would prepare a sample of copper(II) sulfate from copper(II) oxide and sulfuric acid. *(6 marks)*

(c) Name the method used to obtain the salt crystals from the solution. *(2 marks)*

---

**Q8.** (a) Define the term "pH". *(2 marks)*

(b) State the pH range of acids, bases, and neutral solutions. *(3 marks)*

(c) Describe how you would use universal indicator to determine the pH of a solution. *(4 marks)*

---

**Q9.** (a) What is a redox reaction? *(3 marks)*

(b) In the reaction $Zn + CuSO_4 \rightarrow ZnSO_4 + Cu$, identify the substance oxidised and the substance reduced. *(4 marks)*

(c) Explain your answer using the gain or loss of electrons. *(4 marks)*

---

**Q10.** (a) Define the term "oxidation" in terms of electrons. *(2 marks)*

(b) Define the term "reduction" in terms of electrons. *(2 marks)*

(c) In the reaction $2Mg + O_2 \rightarrow 2MgO$, state which substance is oxidised and which is reduced. *(4 marks)*

---

**Q11.** (a) What is the rate of a chemical reaction? *(2 marks)*

(b) State three factors that affect the rate of a chemical reaction. *(3 marks)*

(c) Explain how increasing temperature increases the rate of reaction. *(4 marks)*

---

**Q12.** (a) Describe an experiment to investigate the effect of concentration on the rate of reaction between hydrochloric acid and sodium thiosulfate. *(6 marks)*

(b) State the results you would expect. *(3 marks)*

(c) Explain the results in terms of collision theory. *(4 marks)*

---

**Q13.** (a) What is a catalyst? *(2 marks)*

(b) State two uses of catalysts in industry. *(2 marks)*

(c) Explain how a catalyst increases the rate of a reaction. *(4 marks)*

---

**Q14.** (a) Define the term "equilibrium". *(3 marks)*

(b) State Le Chatelier''s principle. *(3 marks)*

(c) Explain the effect of increasing pressure on the equilibrium $N_2 + 3H_2 \rightleftharpoons 2NH_3$. *(4 marks)*

---

**Q15.** (a) What is a reversible reaction? *(2 marks)*

(b) Give one example of a reversible reaction. *(2 marks)*

(c) Explain what is meant by a "closed system" in equilibrium. *(4 marks)*

---

**Q16.** (a) Define the term "concentration". *(2 marks)*

(b) Calculate the concentration in mol/dm³ of a solution containing 0.5 moles of sodium chloride in 250 cm³ of solution. *(4 marks)*

(c) Calculate the number of moles in 100 cm³ of a 0.2 mol/dm³ solution. *(4 marks)*

---

**Q17.** (a) What is a titration? *(2 marks)*

(b) Describe how you would carry out a titration to find the concentration of a hydrochloric acid solution. *(6 marks)*

(c) State the indicator used and the colour change at the end point. *(3 marks)*

---

**Q18.** (a) Define the term "empirical formula". *(2 marks)*

(b) A compound contains 40% carbon, 6.7% hydrogen, and 53.3% oxygen. Find its empirical formula. (Relative atomic masses: C = 12, H = 1, O = 16) *(6 marks)*

(c) If the relative molecular mass of the compound is 60, find its molecular formula. *(4 marks)*

---

**Q19.** (a) Define the term "molar volume". *(2 marks)*

(b) Calculate the volume occupied by 0.5 moles of carbon dioxide at room temperature and pressure. (Molar volume = 24 dm³/mol) *(4 marks)*

(c) Calculate the number of moles in 48 dm³ of oxygen gas at room temperature and pressure. *(4 marks)*

---

**Q20.** (a) What is the difference between an exothermic and an endothermic reaction? *(4 marks)*

(b) Give one example of each. *(2 marks)*

(c) Describe an experiment to show that the reaction between hydrochloric acid and sodium hydroxide is exothermic. *(5 marks)*
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
  where subject = 'Chemistry'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 8

## Structural Question Bank — Atomic structure and bonding

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Chemistry

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ATOMIC STRUCTURE AND BONDING

**Q1.** (a) Define the terms atomic number and mass number. *(4 marks)*

(b) An atom of chlorine has atomic number 17 and mass number 35. State the number of protons, neutrons, and electrons. *(3 marks)*

(c) Write the electronic configuration of chlorine and state its group and period. *(4 marks)*

---

**Q2.** (a) What is an isotope? *(2 marks)*

(b) Chlorine has two isotopes, $^{35}Cl$ and $^{37}Cl$. Explain why they have the same chemical properties. *(4 marks)*

(c) Calculate the relative atomic mass of chlorine given that it is 75% $^{35}Cl$ and 25% $^{37}Cl$. *(4 marks)*

---

**Q3.** (a) Define the term "ionic bond". *(2 marks)*

(b) Describe, with the aid of a diagram, how sodium and chlorine form an ionic bond. *(6 marks)*

(c) State two properties of ionic compounds. *(2 marks)*

---

**Q4.** (a) Define the term "covalent bond". *(2 marks)*

(b) Draw a dot-and-cross diagram to show the bonding in a water molecule. *(4 marks)*

(c) State two properties of covalent compounds. *(2 marks)*

---

**Q5.** (a) What is a metallic bond? *(3 marks)*

(b) Explain why metals are good conductors of electricity. *(4 marks)*

(c) Explain why metals are malleable and ductile. *(4 marks)*

---

**Q6.** (a) Describe the structure of graphite. *(4 marks)*

(b) Explain why graphite conducts electricity. *(3 marks)*

(c) Explain why graphite is used as a lubricant. *(3 marks)*

---

**Q7.** (a) Describe the structure of diamond. *(4 marks)*

(b) Explain why diamond is very hard. *(3 marks)*

(c) Explain why diamond does not conduct electricity. *(3 marks)*

---

**Q8.** (a) What is the periodic table? *(2 marks)*

(b) State the trend in metallic character across a period. *(3 marks)*

(c) Explain why elements in the same group have similar chemical properties. *(4 marks)*

---

**Q9.** (a) Describe the trend in atomic radius down a group. *(3 marks)*

(b) Explain this trend. *(4 marks)*

(c) State how the reactivity of alkali metals changes down Group I. *(3 marks)*

---

**Q10.** (a) What is an ion? *(2 marks)*

(b) Write the formula of the ions formed by sodium, magnesium, chlorine, and oxygen. *(4 marks)*

(c) Explain why sodium forms a positive ion. *(3 marks)*

---

**Q11.** (a) Define the term "electronegativity". *(3 marks)*

(b) Explain how electronegativity affects the type of bond formed between two atoms. *(4 marks)*

(c) State the trend in electronegativity across a period. *(3 marks)*

---

**Q12.** (a) What is a molecule? *(2 marks)*

(b) Draw the structure of a carbon dioxide molecule. *(3 marks)*

(c) Explain why carbon dioxide is a gas at room temperature. *(4 marks)*

---

**Q13.** (a) State the three states of matter. *(2 marks)*

(b) Describe the arrangement of particles in each state. *(6 marks)*

(c) Explain what happens to the particles when a solid melts. *(4 marks)*

---

**Q14.** (a) What is meant by the term "giant structure"? *(3 marks)*

(b) Give two examples of substances with giant structures. *(2 marks)*

(c) Explain why giant structures have high melting points. *(4 marks)*

---

**Q15.** (a) Define the term "valency". *(2 marks)*

(b) State the valency of hydrogen, oxygen, nitrogen, and carbon. *(4 marks)*

(c) Use valency to write the formula of water, carbon dioxide, and ammonia. *(4 marks)*

---

**Q16.** (a) What is the difference between an atom and an ion? *(3 marks)*

(b) Explain how a cation and an anion are formed. *(4 marks)*

(c) Give the symbol and charge of a calcium ion and a fluoride ion. *(3 marks)*

---

**Q17.** (a) Describe the structure of a simple covalent molecule. *(3 marks)*

(b) Explain why simple covalent molecules have low melting points. *(4 marks)*

(c) Give two examples of simple covalent molecules. *(2 marks)*

---

**Q18.** (a) What is the difference between a physical change and a chemical change? *(4 marks)*

(b) Give one example of each. *(2 marks)*

(c) State two observations that indicate a chemical change has occurred. *(4 marks)*

---

**Q19.** (a) Define the term "relative atomic mass". *(3 marks)*

(b) Explain why the relative atomic mass of an element may not be a whole number. *(4 marks)*

(c) State the relative atomic mass of carbon, oxygen, and hydrogen. *(3 marks)*

---

**Q20.** (a) What is the difference between an element, a compound, and a mixture? *(4 marks)*

(b) Give one example of each. *(3 marks)*

(c) Describe how you would separate a mixture of sand and salt. *(4 marks)*
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
  where subject = 'Chemistry'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Chemistry

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The number of protons in an atom is called the:

A. atomic number  
B. mass number  
C. valency  
D. isotope number  

---

**Q2.** The total number of protons and neutrons is the:

A. mass number  
B. atomic number  
C. atomic mass  
D. valency  

---

**Q3.** An atom of carbon has 6 protons and 6 neutrons. Its mass number is:

A. 12  
B. 18  
C. 6  
D. 24  

---

**Q4.** The electronic configuration of sodium (atomic number 11) is:

A. 2, 8, 1  
B. 2, 8, 3  
C. 2, 9  
D. 2, 8, 2  

---

**Q5.** Atoms of the same element with different numbers of neutrons are called:

A. isotopes  
B. compounds  
C. ions  
D. molecules  

---

**Q6.** An ionic bond is formed by:

A. transfer of electrons  
B. transfer of neutrons  
C. sharing of protons  
D. sharing of electrons  

---

**Q7.** A covalent bond is formed by:

A. transfer of electrons  
B. sharing of electrons  
C. transfer of protons  
D. sharing of neutrons  

---

**Q8.** The bond in sodium chloride is:

A. covalent  
B. ionic  
C. hydrogen  
D. metallic  

---

**Q9.** The bond in water is:

A. ionic  
B. metallic  
C. covalent  
D. hydrogen  

---

**Q10.** The bond in iron is:

A. ionic  
B. covalent  
C. hydrogen  
D. metallic  

---

**Q11.** Ionic compounds conduct electricity when:

A. solid  
B. frozen  
C. molten or dissolved  
D. gaseous  

---

**Q12.** The formula of a sodium ion is:

A. Na⁻  
B. Na  
C. Na²⁺  
D. Na⁺  

---

**Q13.** The formula of a chloride ion is:

A. Cl²⁻  
B. Cl⁻  
C. Cl⁺  
D. Cl  

---

**Q14.** The valency of oxygen is:

A. 3  
B. 2  
C. 4  
D. 1  

---

**Q15.** The valency of nitrogen is:

A. 2  
B. 1  
C. 3  
D. 4  

---

**Q16.** The formula of water is:

A. H₂O₂  
B. HO₂  
C. HO  
D. H₂O  

---

**Q17.** The formula of carbon dioxide is:

A. C₂O  
B. CO₃  
C. CO₂  
D. CO  

---

**Q18.** The formula of ammonia is:

A. N₂H  
B. NH₂  
C. NH₄  
D. NH₃  

---

**Q19.** Graphite conducts electricity because it has:

A. neutrons  
B. free electrons  
C. ions  
D. protons  

---

**Q20.** Diamond is very hard because:

A. it contains water  
B. each carbon atom is bonded to four others  
C. it is a metal  
D. it has free electrons  

---

**Q21.** The particles in a solid are:

A. closely packed and moving freely  
B. far apart and moving freely  
C. closely packed and vibrating  
D. far apart and stationary  

---

**Q22.** The particles in a gas are:

A. far apart and stationary  
B. closely packed and vibrating  
C. closely packed and moving freely  
D. far apart and moving freely  

---

**Q23.** Elements in the same group have the same number of:

A. shells  
B. neutrons  
C. outer electrons  
D. protons  

---

**Q24.** The most reactive metal in Group I is:

A. potassium  
B. sodium  
C. lithium  
D. caesium  

---

**Q25.** The most reactive halogen is:

A. fluorine  
B. chlorine  
C. bromine  
D. iodine  

---

**Q26.** A mixture of sand and salt can be separated by:

A. dissolving in water and filtering  
B. distillation only  
C. evaporation only  
D. chromatography only  

---

**Q27.** The relative atomic mass of carbon is:

A. 12  
B. 24  
C. 6  
D. 1  

---

**Q28.** The relative atomic mass of oxygen is:

A. 16  
B. 32  
C. 1  
D. 8  

---

**Q29.** A substance made of two or more elements chemically combined is a:

A. compound  
B. solution  
C. mixture  
D. element  

---

**Q30.** The number of electrons in a neutral atom equals the number of:

A. protons  
B. shells  
C. protons plus neutrons  
D. neutrons  

---

**Q31.** One mole of a substance contains:

A. 6.02 × 10²² particles  
B. 6.02 × 10²³ particles  
C. 1.0 × 10²³ particles  
D. 6.02 × 10²⁴ particles  

---

**Q32.** The number of moles in 8 g of oxygen gas (O₂, Ar = 16) is:

A. 0.5  
B. 0.25  
C. 2  
D. 1  

---

**Q33.** The mass of 0.5 moles of CO₂ (Mr = 44) is:

A. 44 g  
B. 11 g  
C. 22 g  
D. 88 g  

---

**Q34.** The molar volume of a gas at room temperature and pressure is:

A. 22.4 dm³  
B. 6.02 dm³  
C. 100 dm³  
D. 24 dm³  

---

**Q35.** The volume of 0.5 moles of CO₂ at r.t.p. is:

A. 24 dm³  
B. 48 dm³  
C. 12 dm³  
D. 6 dm³  

---

**Q36.** An acid turns blue litmus:

A. blue  
B. colourless  
C. green  
D. red  

---

**Q37.** A base turns red litmus:

A. green  
B. blue  
C. red  
D. colourless  

---

**Q38.** The pH of a neutral solution is:

A. 14  
B. 7  
C. 1  
D. 0  

---

**Q39.** The pH of a strong acid is:

A. 14  
B. 7  
C. 1  
D. 10  

---

**Q40.** The pH of a strong alkali is:

A. 7  
B. 1  
C. 5  
D. 14  

---

**Q41.** The reaction between an acid and a base is called:

A. reduction  
B. combustion  
C. neutralisation  
D. oxidation  

---

**Q42.** The products of the reaction between an acid and an alkali are:

A. salt and carbon dioxide  
B. water and oxygen  
C. salt and hydrogen  
D. salt and water  

---

**Q43.** The products of the reaction between an acid and a metal are:

A. water and hydrogen  
B. salt and hydrogen  
C. salt and water  
D. salt and carbon dioxide  

---

**Q44.** The products of the reaction between an acid and a carbonate are:

A. water and oxygen  
B. salt, water, and carbon dioxide  
C. salt and water  
D. salt and hydrogen  

---

**Q45.** In the reaction Zn + CuSO₄ → ZnSO₄ + Cu, the substance oxidised is:

A. oxygen  
B. copper  
C. zinc  
D. sulfate  

---

**Q46.** Oxidation is the:

A. loss of neutrons  
B. gain of electrons  
C. gain of protons  
D. loss of electrons  

---

**Q47.** Reduction is the:

A. loss of neutrons  
B. gain of protons  
C. gain of electrons  
D. loss of electrons  

---

**Q48.** A substance that speeds up a reaction without being used up is a:

A. indicator  
B. product  
C. reactant  
D. catalyst  

---

**Q49.** Increasing the temperature of a reaction:

A. increases the rate  
B. decreases the rate  
C. has no effect  
D. stops the reaction  

---

**Q50.** Increasing the surface area of a solid reactant:

A. increases the rate  
B. decreases the rate  
C. stops the reaction  
D. has no effect  

---

**Q51.** The concentration of a solution containing 0.5 moles in 250 cm³ is:

A. 2 mol/dm³  
B. 1 mol/dm³  
C. 0.5 mol/dm³  
D. 0.25 mol/dm³  

---

**Q52.** The number of moles in 100 cm³ of a 0.2 mol/dm³ solution is:

A. 0.02  
B. 2  
C. 20  
D. 0.2  

---

**Q53.** A reaction that releases heat energy is:

A. exothermic  
B. neutral  
C. endothermic  
D. reversible  

---

**Q54.** A reaction that absorbs heat energy is:

A. endothermic  
B. neutral  
C. reversible  
D. exothermic  

---

**Q55.** The indicator used in a titration between a strong acid and a strong alkali is:

A. universal indicator only  
B. methyl orange or phenolphthalein  
C. litmus only  
D. starch  

---

**Q56.** The empirical formula of a compound with 40% C, 6.7% H, and 53.3% O is:

A. CHO  
B. CH₂O  
C. CH₄O  
D. C₂H₄O₂  

---

**Q57.** In the reaction 2Mg + O₂ → 2MgO, the substance reduced is:

A. magnesium  
B. magnesium oxide  
C. oxygen  
D. none  

---

**Q58.** Le Chatelier''s principle states that a system at equilibrium responds to a change by:

A. increasing the change  
B. ignoring the change  
C. stopping the reaction  
D. counteracting the change  

---

**Q59.** Increasing the pressure on N₂ + 3H₂ ⇌ 2NH₃ favours:

A. the backward reaction  
B. no change  
C. the forward reaction  
D. neither direction  

---

**Q60.** The number of moles in 48 dm³ of oxygen gas at r.t.p. is:

A. 1  
B. 4  
C. 0.5  
D. 2  

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
  where subject = 'Chemistry'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Chemistry

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The electronic configuration of sodium (atomic number 11) is:

A. 2, 8, 1  
B. 2, 8, 2  
C. 2, 8, 3  
D. 2, 9  

---

**Q2.** Atoms of the same element with different numbers of neutrons are called:

A. isotopes  
B. ions  
C. compounds  
D. molecules  

---

**Q3.** An ionic bond is formed by:

A. transfer of electrons  
B. sharing of protons  
C. sharing of electrons  
D. transfer of neutrons  

---

**Q4.** A covalent bond is formed by:

A. sharing of electrons  
B. transfer of protons  
C. sharing of neutrons  
D. transfer of electrons  

---

**Q5.** The bond in sodium chloride is:

A. ionic  
B. hydrogen  
C. covalent  
D. metallic  

---

**Q6.** The bond in water is:

A. covalent  
B. hydrogen  
C. metallic  
D. ionic  

---

**Q7.** The bond in iron is:

A. ionic  
B. metallic  
C. covalent  
D. hydrogen  

---

**Q8.** Ionic compounds conduct electricity when:

A. solid  
B. molten or dissolved  
C. frozen  
D. gaseous  

---

**Q9.** The formula of a sodium ion is:

A. Na⁻  
B. Na²⁺  
C. Na⁺  
D. Na  

---

**Q10.** The formula of a chloride ion is:

A. Cl⁺  
B. Cl²⁻  
C. Cl  
D. Cl⁻  

---

**Q11.** The valency of oxygen is:

A. 1  
B. 4  
C. 2  
D. 3  

---

**Q12.** The valency of nitrogen is:

A. 1  
B. 4  
C. 2  
D. 3  

---

**Q13.** The formula of water is:

A. H₂O₂  
B. H₂O  
C. HO₂  
D. HO  

---

**Q14.** The formula of carbon dioxide is:

A. C₂O  
B. CO₂  
C. CO₃  
D. CO  

---

**Q15.** The formula of ammonia is:

A. N₂H  
B. NH₄  
C. NH₃  
D. NH₂  

---

**Q16.** Graphite conducts electricity because it has:

A. protons  
B. ions  
C. neutrons  
D. free electrons  

---

**Q17.** Diamond is very hard because:

A. it is a metal  
B. it contains water  
C. each carbon atom is bonded to four others  
D. it has free electrons  

---

**Q18.** The particles in a solid are:

A. far apart and stationary  
B. closely packed and moving freely  
C. far apart and moving freely  
D. closely packed and vibrating  

---

**Q19.** The particles in a gas are:

A. far apart and stationary  
B. far apart and moving freely  
C. closely packed and vibrating  
D. closely packed and moving freely  

---

**Q20.** Elements in the same group have the same number of:

A. shells  
B. outer electrons  
C. neutrons  
D. protons  

---

**Q21.** The most reactive metal in Group I is:

A. potassium  
B. lithium  
C. caesium  
D. sodium  

---

**Q22.** The most reactive halogen is:

A. iodine  
B. chlorine  
C. bromine  
D. fluorine  

---

**Q23.** A mixture of sand and salt can be separated by:

A. evaporation only  
B. chromatography only  
C. dissolving in water and filtering  
D. distillation only  

---

**Q24.** The relative atomic mass of carbon is:

A. 1  
B. 24  
C. 6  
D. 12  

---

**Q25.** The relative atomic mass of oxygen is:

A. 16  
B. 8  
C. 32  
D. 1  

---

**Q26.** A substance made of two or more elements chemically combined is a:

A. compound  
B. mixture  
C. solution  
D. element  

---

**Q27.** The number of electrons in a neutral atom equals the number of:

A. protons  
B. protons plus neutrons  
C. neutrons  
D. shells  

---

**Q28.** The number of protons in an atom is called the:

A. atomic number  
B. valency  
C. isotope number  
D. mass number  

---

**Q29.** The total number of protons and neutrons is the:

A. mass number  
B. atomic mass  
C. atomic number  
D. valency  

---

**Q30.** An atom of carbon has 6 protons and 6 neutrons. Its mass number is:

A. 12  
B. 24  
C. 18  
D. 6  

---

**Q31.** The molar volume of a gas at room temperature and pressure is:

A. 22.4 dm³  
B. 24 dm³  
C. 6.02 dm³  
D. 100 dm³  

---

**Q32.** The volume of 0.5 moles of CO₂ at r.t.p. is:

A. 24 dm³  
B. 12 dm³  
C. 48 dm³  
D. 6 dm³  

---

**Q33.** An acid turns blue litmus:

A. blue  
B. green  
C. red  
D. colourless  

---

**Q34.** A base turns red litmus:

A. red  
B. green  
C. colourless  
D. blue  

---

**Q35.** The pH of a neutral solution is:

A. 0  
B. 1  
C. 7  
D. 14  

---

**Q36.** The pH of a strong acid is:

A. 7  
B. 10  
C. 14  
D. 1  

---

**Q37.** The pH of a strong alkali is:

A. 7  
B. 14  
C. 1  
D. 5  

---

**Q38.** The reaction between an acid and a base is called:

A. reduction  
B. neutralisation  
C. combustion  
D. oxidation  

---

**Q39.** The products of the reaction between an acid and an alkali are:

A. salt and carbon dioxide  
B. salt and hydrogen  
C. salt and water  
D. water and oxygen  

---

**Q40.** The products of the reaction between an acid and a metal are:

A. salt and carbon dioxide  
B. salt and water  
C. water and hydrogen  
D. salt and hydrogen  

---

**Q41.** The products of the reaction between an acid and a carbonate are:

A. salt and water  
B. water and oxygen  
C. salt, water, and carbon dioxide  
D. salt and hydrogen  

---

**Q42.** In the reaction Zn + CuSO₄ → ZnSO₄ + Cu, the substance oxidised is:

A. sulfate  
B. oxygen  
C. copper  
D. zinc  

---

**Q43.** Oxidation is the:

A. loss of neutrons  
B. loss of electrons  
C. gain of electrons  
D. gain of protons  

---

**Q44.** Reduction is the:

A. loss of neutrons  
B. gain of electrons  
C. gain of protons  
D. loss of electrons  

---

**Q45.** A substance that speeds up a reaction without being used up is a:

A. indicator  
B. reactant  
C. catalyst  
D. product  

---

**Q46.** Increasing the temperature of a reaction:

A. stops the reaction  
B. decreases the rate  
C. has no effect  
D. increases the rate  

---

**Q47.** Increasing the surface area of a solid reactant:

A. stops the reaction  
B. has no effect  
C. increases the rate  
D. decreases the rate  

---

**Q48.** The concentration of a solution containing 0.5 moles in 250 cm³ is:

A. 0.25 mol/dm³  
B. 1 mol/dm³  
C. 0.5 mol/dm³  
D. 2 mol/dm³  

---

**Q49.** The number of moles in 100 cm³ of a 0.2 mol/dm³ solution is:

A. 0.02  
B. 0.2  
C. 2  
D. 20  

---

**Q50.** A reaction that releases heat energy is:

A. exothermic  
B. endothermic  
C. neutral  
D. reversible  

---

**Q51.** A reaction that absorbs heat energy is:

A. endothermic  
B. reversible  
C. exothermic  
D. neutral  

---

**Q52.** The indicator used in a titration between a strong acid and a strong alkali is:

A. methyl orange or phenolphthalein  
B. litmus only  
C. starch  
D. universal indicator only  

---

**Q53.** The empirical formula of a compound with 40% C, 6.7% H, and 53.3% O is:

A. CH₂O  
B. CH₄O  
C. CHO  
D. C₂H₄O₂  

---

**Q54.** In the reaction 2Mg + O₂ → 2MgO, the substance reduced is:

A. oxygen  
B. none  
C. magnesium oxide  
D. magnesium  

---

**Q55.** Le Chatelier''s principle states that a system at equilibrium responds to a change by:

A. increasing the change  
B. counteracting the change  
C. ignoring the change  
D. stopping the reaction  

---

**Q56.** Increasing the pressure on N₂ + 3H₂ ⇌ 2NH₃ favours:

A. the backward reaction  
B. the forward reaction  
C. no change  
D. neither direction  

---

**Q57.** The number of moles in 48 dm³ of oxygen gas at r.t.p. is:

A. 1  
B. 0.5  
C. 2  
D. 4  

---

**Q58.** One mole of a substance contains:

A. 6.02 × 10²² particles  
B. 1.0 × 10²³ particles  
C. 6.02 × 10²⁴ particles  
D. 6.02 × 10²³ particles  

---

**Q59.** The number of moles in 8 g of oxygen gas (O₂, Ar = 16) is:

A. 0.5  
B. 2  
C. 0.25  
D. 1  

---

**Q60.** The mass of 0.5 moles of CO₂ (Mr = 44) is:

A. 44 g  
B. 88 g  
C. 11 g  
D. 22 g  

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
  where subject = 'Chemistry'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Chemistry',
  'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Chemistry

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** A covalent bond is formed by:

A. sharing of electrons  
B. transfer of electrons  
C. transfer of protons  
D. sharing of neutrons  

---

**Q2.** The bond in sodium chloride is:

A. ionic  
B. covalent  
C. hydrogen  
D. metallic  

---

**Q3.** The bond in water is:

A. covalent  
B. metallic  
C. ionic  
D. hydrogen  

---

**Q4.** The bond in iron is:

A. metallic  
B. covalent  
C. hydrogen  
D. ionic  

---

**Q5.** Ionic compounds conduct electricity when:

A. molten or dissolved  
B. frozen  
C. solid  
D. gaseous  

---

**Q6.** The formula of a sodium ion is:

A. Na⁺  
B. Na  
C. Na²⁺  
D. Na⁻  

---

**Q7.** The formula of a chloride ion is:

A. Cl⁺  
B. Cl⁻  
C. Cl²⁻  
D. Cl  

---

**Q8.** The valency of oxygen is:

A. 1  
B. 2  
C. 4  
D. 3  

---

**Q9.** The valency of nitrogen is:

A. 1  
B. 2  
C. 3  
D. 4  

---

**Q10.** The formula of water is:

A. HO₂  
B. H₂O₂  
C. HO  
D. H₂O  

---

**Q11.** The formula of carbon dioxide is:

A. CO  
B. CO₃  
C. CO₂  
D. C₂O  

---

**Q12.** The formula of ammonia is:

A. NH₄  
B. NH₂  
C. N₂H  
D. NH₃  

---

**Q13.** Graphite conducts electricity because it has:

A. protons  
B. free electrons  
C. ions  
D. neutrons  

---

**Q14.** Diamond is very hard because:

A. it is a metal  
B. each carbon atom is bonded to four others  
C. it contains water  
D. it has free electrons  

---

**Q15.** The particles in a solid are:

A. far apart and stationary  
B. far apart and moving freely  
C. closely packed and vibrating  
D. closely packed and moving freely  

---

**Q16.** The particles in a gas are:

A. closely packed and moving freely  
B. closely packed and vibrating  
C. far apart and stationary  
D. far apart and moving freely  

---

**Q17.** Elements in the same group have the same number of:

A. neutrons  
B. shells  
C. outer electrons  
D. protons  

---

**Q18.** The most reactive metal in Group I is:

A. sodium  
B. potassium  
C. lithium  
D. caesium  

---

**Q19.** The most reactive halogen is:

A. iodine  
B. fluorine  
C. chlorine  
D. bromine  

---

**Q20.** A mixture of sand and salt can be separated by:

A. evaporation only  
B. dissolving in water and filtering  
C. chromatography only  
D. distillation only  

---

**Q21.** The relative atomic mass of carbon is:

A. 1  
B. 6  
C. 12  
D. 24  

---

**Q22.** The relative atomic mass of oxygen is:

A. 1  
B. 8  
C. 32  
D. 16  

---

**Q23.** A substance made of two or more elements chemically combined is a:

A. solution  
B. element  
C. compound  
D. mixture  

---

**Q24.** The number of electrons in a neutral atom equals the number of:

A. shells  
B. protons plus neutrons  
C. neutrons  
D. protons  

---

**Q25.** The number of protons in an atom is called the:

A. atomic number  
B. mass number  
C. valency  
D. isotope number  

---

**Q26.** The total number of protons and neutrons is the:

A. mass number  
B. atomic number  
C. atomic mass  
D. valency  

---

**Q27.** An atom of carbon has 6 protons and 6 neutrons. Its mass number is:

A. 12  
B. 18  
C. 6  
D. 24  

---

**Q28.** The electronic configuration of sodium (atomic number 11) is:

A. 2, 8, 1  
B. 2, 8, 3  
C. 2, 9  
D. 2, 8, 2  

---

**Q29.** Atoms of the same element with different numbers of neutrons are called:

A. isotopes  
B. compounds  
C. ions  
D. molecules  

---

**Q30.** An ionic bond is formed by:

A. transfer of electrons  
B. transfer of neutrons  
C. sharing of protons  
D. sharing of electrons  

---

**Q31.** A base turns red litmus:

A. red  
B. blue  
C. green  
D. colourless  

---

**Q32.** The pH of a neutral solution is:

A. 0  
B. 7  
C. 1  
D. 14  

---

**Q33.** The pH of a strong acid is:

A. 7  
B. 14  
C. 1  
D. 10  

---

**Q34.** The pH of a strong alkali is:

A. 1  
B. 7  
C. 5  
D. 14  

---

**Q35.** The reaction between an acid and a base is called:

A. oxidation  
B. combustion  
C. neutralisation  
D. reduction  

---

**Q36.** The products of the reaction between an acid and an alkali are:

A. salt and hydrogen  
B. water and oxygen  
C. salt and carbon dioxide  
D. salt and water  

---

**Q37.** The products of the reaction between an acid and a metal are:

A. salt and carbon dioxide  
B. salt and hydrogen  
C. salt and water  
D. water and hydrogen  

---

**Q38.** The products of the reaction between an acid and a carbonate are:

A. salt and water  
B. salt, water, and carbon dioxide  
C. water and oxygen  
D. salt and hydrogen  

---

**Q39.** In the reaction Zn + CuSO₄ → ZnSO₄ + Cu, the substance oxidised is:

A. sulfate  
B. copper  
C. zinc  
D. oxygen  

---

**Q40.** Oxidation is the:

A. gain of protons  
B. gain of electrons  
C. loss of neutrons  
D. loss of electrons  

---

**Q41.** Reduction is the:

A. gain of protons  
B. loss of neutrons  
C. gain of electrons  
D. loss of electrons  

---

**Q42.** A substance that speeds up a reaction without being used up is a:

A. product  
B. indicator  
C. reactant  
D. catalyst  

---

**Q43.** Increasing the temperature of a reaction:

A. stops the reaction  
B. increases the rate  
C. decreases the rate  
D. has no effect  

---

**Q44.** Increasing the surface area of a solid reactant:

A. stops the reaction  
B. increases the rate  
C. has no effect  
D. decreases the rate  

---

**Q45.** The concentration of a solution containing 0.5 moles in 250 cm³ is:

A. 0.25 mol/dm³  
B. 0.5 mol/dm³  
C. 2 mol/dm³  
D. 1 mol/dm³  

---

**Q46.** The number of moles in 100 cm³ of a 0.2 mol/dm³ solution is:

A. 20  
B. 0.2  
C. 2  
D. 0.02  

---

**Q47.** A reaction that releases heat energy is:

A. neutral  
B. reversible  
C. exothermic  
D. endothermic  

---

**Q48.** A reaction that absorbs heat energy is:

A. neutral  
B. reversible  
C. exothermic  
D. endothermic  

---

**Q49.** The indicator used in a titration between a strong acid and a strong alkali is:

A. methyl orange or phenolphthalein  
B. universal indicator only  
C. litmus only  
D. starch  

---

**Q50.** The empirical formula of a compound with 40% C, 6.7% H, and 53.3% O is:

A. CH₂O  
B. CHO  
C. CH₄O  
D. C₂H₄O₂  

---

**Q51.** In the reaction 2Mg + O₂ → 2MgO, the substance reduced is:

A. oxygen  
B. magnesium oxide  
C. magnesium  
D. none  

---

**Q52.** Le Chatelier''s principle states that a system at equilibrium responds to a change by:

A. counteracting the change  
B. ignoring the change  
C. stopping the reaction  
D. increasing the change  

---

**Q53.** Increasing the pressure on N₂ + 3H₂ ⇌ 2NH₃ favours:

A. the forward reaction  
B. no change  
C. the backward reaction  
D. neither direction  

---

**Q54.** The number of moles in 48 dm³ of oxygen gas at r.t.p. is:

A. 2  
B. 4  
C. 0.5  
D. 1  

---

**Q55.** One mole of a substance contains:

A. 6.02 × 10²² particles  
B. 6.02 × 10²³ particles  
C. 1.0 × 10²³ particles  
D. 6.02 × 10²⁴ particles  

---

**Q56.** The number of moles in 8 g of oxygen gas (O₂, Ar = 16) is:

A. 0.5  
B. 0.25  
C. 2  
D. 1  

---

**Q57.** The mass of 0.5 moles of CO₂ (Mr = 44) is:

A. 44 g  
B. 11 g  
C. 22 g  
D. 88 g  

---

**Q58.** The molar volume of a gas at room temperature and pressure is:

A. 22.4 dm³  
B. 6.02 dm³  
C. 100 dm³  
D. 24 dm³  

---

**Q59.** The volume of 0.5 moles of CO₂ at r.t.p. is:

A. 24 dm³  
B. 48 dm³  
C. 12 dm³  
D. 6 dm³  

---

**Q60.** An acid turns blue litmus:

A. blue  
B. colourless  
C. green  
D. red  

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
  where subject = 'Physics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 4

## Structural Question Bank — Mechanics

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MECHANICS

**Q1.** (a) Define the terms distance and displacement. *(3 marks)*

(b) A car travels 60 km north then 80 km east. Calculate the total distance travelled and the magnitude of the displacement. *(5 marks)*

(c) State the difference between speed and velocity. *(3 marks)*

---

**Q2.** (a) Define acceleration. *(2 marks)*

(b) A car accelerates uniformly from rest to 20 m/s in 8 s. Calculate its acceleration. *(3 marks)*

(c) Using the equations of motion, calculate the distance travelled by the car in part (b). *(4 marks)*

---

**Q3.** (a) State Newton''s three laws of motion. *(6 marks)*

(b) A force of 12 N acts on a mass of 3 kg. Calculate the acceleration produced. *(3 marks)*

(c) Explain why a passenger lurches forward when a bus stops suddenly. *(3 marks)*

---

**Q4.** (a) Define the term "momentum". *(2 marks)*

(b) A ball of mass 0.5 kg moving at 4 m/s hits a wall and rebounds at 3 m/s. Calculate the change in momentum. *(4 marks)*

(c) State the principle of conservation of momentum. *(3 marks)*

---

**Q5.** (a) Define the term "work". *(2 marks)*

(b) A force of 50 N moves an object 4 m in the direction of the force. Calculate the work done. *(3 marks)*

(c) A crane lifts a 200 kg load through 10 m. Calculate the work done. (Take g = 10 m/s²) *(4 marks)*

---

**Q6.** (a) Define the term "power". *(2 marks)*

(b) A machine does 600 J of work in 20 s. Calculate its power. *(3 marks)*

(c) A motor lifts a 500 kg load through 12 m in 30 s. Calculate the power output. (Take g = 10 m/s²) *(5 marks)*

---

**Q7.** (a) Define the terms kinetic energy and potential energy. *(4 marks)*

(b) A car of mass 1000 kg moves at 20 m/s. Calculate its kinetic energy. *(3 marks)*

(c) A ball of mass 2 kg is raised 5 m. Calculate its gravitational potential energy. (Take g = 10 m/s²) *(3 marks)*

---

**Q8.** (a) State the principle of conservation of energy. *(3 marks)*

(b) A ball of mass 0.2 kg is dropped from a height of 20 m. Calculate its speed just before hitting the ground. (Take g = 10 m/s²) *(5 marks)*

(c) Explain what happens to the energy when the ball hits the ground and bounces. *(4 marks)*

---

**Q9.** (a) Define the term "pressure". *(2 marks)*

(b) A force of 100 N acts on an area of 0.5 m². Calculate the pressure. *(3 marks)*

(c) Explain why a sharp knife cuts better than a blunt knife. *(3 marks)*

---

**Q10.** (a) State the principle of moments. *(3 marks)*

(b) A uniform metre rule is balanced at its centre. A 2 N weight is placed at the 20 cm mark. Calculate the force needed at the 80 cm mark to balance it. *(5 marks)*

(c) State two conditions for a body to be in equilibrium. *(3 marks)*

---

**Q11.** (a) Define the term "centre of gravity". *(2 marks)*

(b) Explain why a tall narrow object is more likely to topple than a short wide one. *(4 marks)*

(c) Describe how you would find the centre of gravity of an irregular lamina. *(4 marks)*

---

**Q12.** (a) What is a simple machine? *(2 marks)*

(b) Define the terms mechanical advantage, velocity ratio, and efficiency. *(6 marks)*

(c) A machine has a mechanical advantage of 4 and an efficiency of 80%. Calculate its velocity ratio. *(4 marks)*

---

**Q13.** (a) A lever has a load arm of 0.5 m and an effort arm of 2 m. Calculate the velocity ratio. *(3 marks)*

(b) If the load is 200 N and the effort is 60 N, calculate the mechanical advantage. *(3 marks)*

(c) Calculate the efficiency of the lever. *(4 marks)*

---

**Q14.** (a) Define the term "friction". *(2 marks)*

(b) State two advantages and two disadvantages of friction. *(4 marks)*

(c) Describe two ways of reducing friction. *(4 marks)*

---

**Q15.** (a) Define the term "density". *(2 marks)*

(b) A block of metal has a mass of 270 g and a volume of 100 cm³. Calculate its density in g/cm³ and in kg/m³. *(5 marks)*

(c) Explain why ice floats on water. *(3 marks)*

---

**Q16.** (a) State Archimedes'' principle. *(3 marks)*

(b) A stone weighs 5 N in air and 3 N in water. Calculate the upthrust. *(3 marks)*

(c) Calculate the volume of the stone. (Density of water = 1000 kg/m³, g = 10 m/s²) *(4 marks)*

---

**Q17.** (a) Define the term "relative density". *(2 marks)*

(b) A body has a density of 800 kg/m³. Calculate its relative density. *(3 marks)*

(c) Explain why a ship made of steel floats on water. *(4 marks)*

---

**Q18.** (a) State the law of floatation. *(3 marks)*

(b) A floating object displaces 0.5 m³ of water. Calculate the upthrust on it. (Density of water = 1000 kg/m³, g = 10 m/s²) *(4 marks)*

(c) Explain how a submarine controls its depth. *(4 marks)*

---

**Q19.** (a) Define the term "velocity ratio" of a pulley system. *(2 marks)*

(b) A pulley system with 4 ropes supports a load of 400 N with an effort of 120 N. Calculate the mechanical advantage and velocity ratio. *(5 marks)*

(c) Calculate the efficiency of the pulley system. *(3 marks)*

---

**Q20.** (a) A car accelerates from 10 m/s to 30 m/s in 5 s. Calculate its acceleration. *(3 marks)*

(b) Calculate the distance travelled during this time. *(3 marks)*

(c) Sketch a velocity-time graph for this motion and state what the gradient represents. *(5 marks)*
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
  where subject = 'Physics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 5

## Structural Question Bank — Waves, electricity, and magnetism

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: WAVES, ELECTRICITY, AND MAGNETISM

**Q1.** (a) Define the term "wave". *(2 marks)*

(b) Distinguish between transverse and longitudinal waves, giving one example of each. *(4 marks)*

(c) A wave has a frequency of 50 Hz and a wavelength of 4 m. Calculate its speed. *(4 marks)*

---

**Q2.** (a) Define the terms frequency, wavelength, and amplitude. *(3 marks)*

(b) A wave travels at 340 m/s with a frequency of 170 Hz. Calculate its wavelength. *(3 marks)*

(c) State the relationship between frequency, wavelength, and wave speed. *(2 marks)*

---

**Q3.** (a) State the laws of reflection. *(4 marks)*

(b) Describe an experiment to verify the laws of reflection. *(5 marks)*

(c) A ray of light strikes a plane mirror at an angle of 30° to the normal. Calculate the angle of reflection. *(3 marks)*

---

**Q4.** (a) Define the terms real image and virtual image. *(4 marks)*

(b) Describe the image formed by a plane mirror. *(4 marks)*

(c) Explain why the image in a plane mirror is laterally inverted. *(3 marks)*

---

**Q5.** (a) State the laws of refraction. *(4 marks)*

(b) Define the term "refractive index". *(2 marks)*

(c) Light travels from air into glass with a refractive index of 1.5. If the angle of incidence is 45°, calculate the angle of refraction. *(5 marks)*

---

**Q6.** (a) Define the term "critical angle". *(3 marks)*

(b) The critical angle for glass is 42°. Calculate the refractive index of the glass. *(4 marks)*

(c) Explain what happens when light strikes the glass-air boundary at an angle greater than the critical angle. *(4 marks)*

---

**Q7.** (a) What is total internal reflection? *(3 marks)*

(b) State two applications of total internal reflection. *(2 marks)*

(c) Explain how an optical fibre transmits light. *(4 marks)*

---

**Q8.** (a) Define the terms focal length and principal focus of a converging lens. *(4 marks)*

(b) A converging lens has a focal length of 10 cm. An object is placed 30 cm from the lens. Using the lens formula, calculate the image distance. *(5 marks)*

(c) State the nature of the image formed. *(3 marks)*

---

**Q9.** (a) Define the term "magnification". *(2 marks)*

(b) An object 2 cm tall is placed 20 cm from a converging lens of focal length 10 cm. Calculate the image distance and the height of the image. *(6 marks)*

(c) State whether the image is real or virtual. *(2 marks)*

---

**Q10.** (a) What is sound? *(2 marks)*

(b) State three properties of sound waves. *(3 marks)*

(c) Explain why sound cannot travel through a vacuum. *(3 marks)*

---

**Q11.** (a) Define the term "echo". *(2 marks)*

(b) A boy shouts near a cliff and hears the echo after 2 s. If the speed of sound is 340 m/s, calculate the distance of the cliff. *(4 marks)*

(c) State two uses of echoes. *(2 marks)*

---

**Q12.** (a) Define the terms pitch and loudness. *(4 marks)*

(b) State the factors that determine the pitch and loudness of a sound. *(4 marks)*

(c) Explain how the human ear detects sound. *(4 marks)*

---

**Q13.** (a) Define the terms heat, temperature, and specific heat capacity. *(4 marks)*

(b) Calculate the heat needed to raise the temperature of 2 kg of water from 20°C to 80°C. (Specific heat capacity of water = 4200 J/kg°C) *(4 marks)*

(c) State the principle of conservation of energy as applied to heat. *(3 marks)*

---

**Q14.** (a) Define the term "latent heat". *(2 marks)*

(b) Calculate the heat needed to melt 0.5 kg of ice at 0°C. (Specific latent heat of fusion of ice = 3.34 × 10⁵ J/kg) *(4 marks)*

(c) Explain why ice at 0°C is more effective at cooling than water at 0°C. *(4 marks)*

---

**Q15.** (a) Define the term "electric current". *(2 marks)*

(b) A current of 2 A flows through a wire for 5 minutes. Calculate the charge that passes. *(4 marks)*

(c) State the unit of charge. *(2 marks)*

---

**Q16.** (a) State Ohm''s law. *(3 marks)*

(b) A resistor of 12 Ω has a current of 0.5 A flowing through it. Calculate the potential difference across it. *(3 marks)*

(c) Calculate the resistance of a wire that carries 2 A when 24 V is applied. *(3 marks)*

---

**Q17.** (a) Define the terms resistance and resistivity. *(4 marks)*

(b) Two resistors of 6 Ω and 3 Ω are connected in series. Calculate the total resistance. *(3 marks)*

(c) The same resistors are now connected in parallel. Calculate the total resistance. *(4 marks)*

---

**Q18.** (a) State the formula for electrical power. *(2 marks)*

(b) An electric heater operates at 240 V and draws a current of 5 A. Calculate its power. *(3 marks)*

(c) Calculate the energy used by the heater in 2 hours, in joules and in kWh. *(5 marks)*

---

**Q19.** (a) State the properties of a magnet. *(3 marks)*

(b) Describe how you would magnetise a steel bar using the stroking method. *(4 marks)*

(c) Explain the difference between a magnet and a magnetic material. *(3 marks)*

---

**Q20.** (a) State the factors that affect the strength of an electromagnet. *(3 marks)*

(b) Describe how an electric bell works. *(5 marks)*

(c) State two uses of electromagnets. *(2 marks)*
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
  where subject = 'Physics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 6

## Structural Question Bank — Mechanics

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MECHANICS

**Q1.** (a) Define the terms distance and displacement. *(3 marks)*

(b) A car travels 60 km north then 80 km east. Calculate the total distance travelled and the magnitude of the displacement. *(5 marks)*

(c) State the difference between speed and velocity. *(3 marks)*

---

**Q2.** (a) Define acceleration. *(2 marks)*

(b) A car accelerates uniformly from rest to 20 m/s in 8 s. Calculate its acceleration. *(3 marks)*

(c) Using the equations of motion, calculate the distance travelled by the car in part (b). *(4 marks)*

---

**Q3.** (a) State Newton''s three laws of motion. *(6 marks)*

(b) A force of 12 N acts on a mass of 3 kg. Calculate the acceleration produced. *(3 marks)*

(c) Explain why a passenger lurches forward when a bus stops suddenly. *(3 marks)*

---

**Q4.** (a) Define the term "momentum". *(2 marks)*

(b) A ball of mass 0.5 kg moving at 4 m/s hits a wall and rebounds at 3 m/s. Calculate the change in momentum. *(4 marks)*

(c) State the principle of conservation of momentum. *(3 marks)*

---

**Q5.** (a) Define the term "work". *(2 marks)*

(b) A force of 50 N moves an object 4 m in the direction of the force. Calculate the work done. *(3 marks)*

(c) A crane lifts a 200 kg load through 10 m. Calculate the work done. (Take g = 10 m/s²) *(4 marks)*

---

**Q6.** (a) Define the term "power". *(2 marks)*

(b) A machine does 600 J of work in 20 s. Calculate its power. *(3 marks)*

(c) A motor lifts a 500 kg load through 12 m in 30 s. Calculate the power output. (Take g = 10 m/s²) *(5 marks)*

---

**Q7.** (a) Define the terms kinetic energy and potential energy. *(4 marks)*

(b) A car of mass 1000 kg moves at 20 m/s. Calculate its kinetic energy. *(3 marks)*

(c) A ball of mass 2 kg is raised 5 m. Calculate its gravitational potential energy. (Take g = 10 m/s²) *(3 marks)*

---

**Q8.** (a) State the principle of conservation of energy. *(3 marks)*

(b) A ball of mass 0.2 kg is dropped from a height of 20 m. Calculate its speed just before hitting the ground. (Take g = 10 m/s²) *(5 marks)*

(c) Explain what happens to the energy when the ball hits the ground and bounces. *(4 marks)*

---

**Q9.** (a) Define the term "pressure". *(2 marks)*

(b) A force of 100 N acts on an area of 0.5 m². Calculate the pressure. *(3 marks)*

(c) Explain why a sharp knife cuts better than a blunt knife. *(3 marks)*

---

**Q10.** (a) State the principle of moments. *(3 marks)*

(b) A uniform metre rule is balanced at its centre. A 2 N weight is placed at the 20 cm mark. Calculate the force needed at the 80 cm mark to balance it. *(5 marks)*

(c) State two conditions for a body to be in equilibrium. *(3 marks)*

---

**Q11.** (a) Define the term "centre of gravity". *(2 marks)*

(b) Explain why a tall narrow object is more likely to topple than a short wide one. *(4 marks)*

(c) Describe how you would find the centre of gravity of an irregular lamina. *(4 marks)*

---

**Q12.** (a) What is a simple machine? *(2 marks)*

(b) Define the terms mechanical advantage, velocity ratio, and efficiency. *(6 marks)*

(c) A machine has a mechanical advantage of 4 and an efficiency of 80%. Calculate its velocity ratio. *(4 marks)*

---

**Q13.** (a) A lever has a load arm of 0.5 m and an effort arm of 2 m. Calculate the velocity ratio. *(3 marks)*

(b) If the load is 200 N and the effort is 60 N, calculate the mechanical advantage. *(3 marks)*

(c) Calculate the efficiency of the lever. *(4 marks)*

---

**Q14.** (a) Define the term "friction". *(2 marks)*

(b) State two advantages and two disadvantages of friction. *(4 marks)*

(c) Describe two ways of reducing friction. *(4 marks)*

---

**Q15.** (a) Define the term "density". *(2 marks)*

(b) A block of metal has a mass of 270 g and a volume of 100 cm³. Calculate its density in g/cm³ and in kg/m³. *(5 marks)*

(c) Explain why ice floats on water. *(3 marks)*

---

**Q16.** (a) State Archimedes'' principle. *(3 marks)*

(b) A stone weighs 5 N in air and 3 N in water. Calculate the upthrust. *(3 marks)*

(c) Calculate the volume of the stone. (Density of water = 1000 kg/m³, g = 10 m/s²) *(4 marks)*

---

**Q17.** (a) Define the term "relative density". *(2 marks)*

(b) A body has a density of 800 kg/m³. Calculate its relative density. *(3 marks)*

(c) Explain why a ship made of steel floats on water. *(4 marks)*

---

**Q18.** (a) State the law of floatation. *(3 marks)*

(b) A floating object displaces 0.5 m³ of water. Calculate the upthrust on it. (Density of water = 1000 kg/m³, g = 10 m/s²) *(4 marks)*

(c) Explain how a submarine controls its depth. *(4 marks)*

---

**Q19.** (a) Define the term "velocity ratio" of a pulley system. *(2 marks)*

(b) A pulley system with 4 ropes supports a load of 400 N with an effort of 120 N. Calculate the mechanical advantage and velocity ratio. *(5 marks)*

(c) Calculate the efficiency of the pulley system. *(3 marks)*

---

**Q20.** (a) A car accelerates from 10 m/s to 30 m/s in 5 s. Calculate its acceleration. *(3 marks)*

(b) Calculate the distance travelled during this time. *(3 marks)*

(c) Sketch a velocity-time graph for this motion and state what the gradient represents. *(5 marks)*
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
  where subject = 'Physics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 7

## Structural Question Bank — Waves, electricity, and magnetism

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: WAVES, ELECTRICITY, AND MAGNETISM

**Q1.** (a) Define the term "wave". *(2 marks)*

(b) Distinguish between transverse and longitudinal waves, giving one example of each. *(4 marks)*

(c) A wave has a frequency of 50 Hz and a wavelength of 4 m. Calculate its speed. *(4 marks)*

---

**Q2.** (a) Define the terms frequency, wavelength, and amplitude. *(3 marks)*

(b) A wave travels at 340 m/s with a frequency of 170 Hz. Calculate its wavelength. *(3 marks)*

(c) State the relationship between frequency, wavelength, and wave speed. *(2 marks)*

---

**Q3.** (a) State the laws of reflection. *(4 marks)*

(b) Describe an experiment to verify the laws of reflection. *(5 marks)*

(c) A ray of light strikes a plane mirror at an angle of 30° to the normal. Calculate the angle of reflection. *(3 marks)*

---

**Q4.** (a) Define the terms real image and virtual image. *(4 marks)*

(b) Describe the image formed by a plane mirror. *(4 marks)*

(c) Explain why the image in a plane mirror is laterally inverted. *(3 marks)*

---

**Q5.** (a) State the laws of refraction. *(4 marks)*

(b) Define the term "refractive index". *(2 marks)*

(c) Light travels from air into glass with a refractive index of 1.5. If the angle of incidence is 45°, calculate the angle of refraction. *(5 marks)*

---

**Q6.** (a) Define the term "critical angle". *(3 marks)*

(b) The critical angle for glass is 42°. Calculate the refractive index of the glass. *(4 marks)*

(c) Explain what happens when light strikes the glass-air boundary at an angle greater than the critical angle. *(4 marks)*

---

**Q7.** (a) What is total internal reflection? *(3 marks)*

(b) State two applications of total internal reflection. *(2 marks)*

(c) Explain how an optical fibre transmits light. *(4 marks)*

---

**Q8.** (a) Define the terms focal length and principal focus of a converging lens. *(4 marks)*

(b) A converging lens has a focal length of 10 cm. An object is placed 30 cm from the lens. Using the lens formula, calculate the image distance. *(5 marks)*

(c) State the nature of the image formed. *(3 marks)*

---

**Q9.** (a) Define the term "magnification". *(2 marks)*

(b) An object 2 cm tall is placed 20 cm from a converging lens of focal length 10 cm. Calculate the image distance and the height of the image. *(6 marks)*

(c) State whether the image is real or virtual. *(2 marks)*

---

**Q10.** (a) What is sound? *(2 marks)*

(b) State three properties of sound waves. *(3 marks)*

(c) Explain why sound cannot travel through a vacuum. *(3 marks)*

---

**Q11.** (a) Define the term "echo". *(2 marks)*

(b) A boy shouts near a cliff and hears the echo after 2 s. If the speed of sound is 340 m/s, calculate the distance of the cliff. *(4 marks)*

(c) State two uses of echoes. *(2 marks)*

---

**Q12.** (a) Define the terms pitch and loudness. *(4 marks)*

(b) State the factors that determine the pitch and loudness of a sound. *(4 marks)*

(c) Explain how the human ear detects sound. *(4 marks)*

---

**Q13.** (a) Define the terms heat, temperature, and specific heat capacity. *(4 marks)*

(b) Calculate the heat needed to raise the temperature of 2 kg of water from 20°C to 80°C. (Specific heat capacity of water = 4200 J/kg°C) *(4 marks)*

(c) State the principle of conservation of energy as applied to heat. *(3 marks)*

---

**Q14.** (a) Define the term "latent heat". *(2 marks)*

(b) Calculate the heat needed to melt 0.5 kg of ice at 0°C. (Specific latent heat of fusion of ice = 3.34 × 10⁵ J/kg) *(4 marks)*

(c) Explain why ice at 0°C is more effective at cooling than water at 0°C. *(4 marks)*

---

**Q15.** (a) Define the term "electric current". *(2 marks)*

(b) A current of 2 A flows through a wire for 5 minutes. Calculate the charge that passes. *(4 marks)*

(c) State the unit of charge. *(2 marks)*

---

**Q16.** (a) State Ohm''s law. *(3 marks)*

(b) A resistor of 12 Ω has a current of 0.5 A flowing through it. Calculate the potential difference across it. *(3 marks)*

(c) Calculate the resistance of a wire that carries 2 A when 24 V is applied. *(3 marks)*

---

**Q17.** (a) Define the terms resistance and resistivity. *(4 marks)*

(b) Two resistors of 6 Ω and 3 Ω are connected in series. Calculate the total resistance. *(3 marks)*

(c) The same resistors are now connected in parallel. Calculate the total resistance. *(4 marks)*

---

**Q18.** (a) State the formula for electrical power. *(2 marks)*

(b) An electric heater operates at 240 V and draws a current of 5 A. Calculate its power. *(3 marks)*

(c) Calculate the energy used by the heater in 2 hours, in joules and in kWh. *(5 marks)*

---

**Q19.** (a) State the properties of a magnet. *(3 marks)*

(b) Describe how you would magnetise a steel bar using the stroking method. *(4 marks)*

(c) Explain the difference between a magnet and a magnetic material. *(3 marks)*

---

**Q20.** (a) State the factors that affect the strength of an electromagnet. *(3 marks)*

(b) Describe how an electric bell works. *(5 marks)*

(c) State two uses of electromagnets. *(2 marks)*
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
  where subject = 'Physics'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Physics',
  'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 8

## Structural Question Bank — Mechanics

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MECHANICS

**Q1.** (a) Define the terms distance and displacement. *(3 marks)*

(b) A car travels 60 km north then 80 km east. Calculate the total distance travelled and the magnitude of the displacement. *(5 marks)*

(c) State the difference between speed and velocity. *(3 marks)*

---

**Q2.** (a) Define acceleration. *(2 marks)*

(b) A car accelerates uniformly from rest to 20 m/s in 8 s. Calculate its acceleration. *(3 marks)*

(c) Using the equations of motion, calculate the distance travelled by the car in part (b). *(4 marks)*

---

**Q3.** (a) State Newton''s three laws of motion. *(6 marks)*

(b) A force of 12 N acts on a mass of 3 kg. Calculate the acceleration produced. *(3 marks)*

(c) Explain why a passenger lurches forward when a bus stops suddenly. *(3 marks)*

---

**Q4.** (a) Define the term "momentum". *(2 marks)*

(b) A ball of mass 0.5 kg moving at 4 m/s hits a wall and rebounds at 3 m/s. Calculate the change in momentum. *(4 marks)*

(c) State the principle of conservation of momentum. *(3 marks)*

---

**Q5.** (a) Define the term "work". *(2 marks)*

(b) A force of 50 N moves an object 4 m in the direction of the force. Calculate the work done. *(3 marks)*

(c) A crane lifts a 200 kg load through 10 m. Calculate the work done. (Take g = 10 m/s²) *(4 marks)*

---

**Q6.** (a) Define the term "power". *(2 marks)*

(b) A machine does 600 J of work in 20 s. Calculate its power. *(3 marks)*

(c) A motor lifts a 500 kg load through 12 m in 30 s. Calculate the power output. (Take g = 10 m/s²) *(5 marks)*

---

**Q7.** (a) Define the terms kinetic energy and potential energy. *(4 marks)*

(b) A car of mass 1000 kg moves at 20 m/s. Calculate its kinetic energy. *(3 marks)*

(c) A ball of mass 2 kg is raised 5 m. Calculate its gravitational potential energy. (Take g = 10 m/s²) *(3 marks)*

---

**Q8.** (a) State the principle of conservation of energy. *(3 marks)*

(b) A ball of mass 0.2 kg is dropped from a height of 20 m. Calculate its speed just before hitting the ground. (Take g = 10 m/s²) *(5 marks)*

(c) Explain what happens to the energy when the ball hits the ground and bounces. *(4 marks)*

---

**Q9.** (a) Define the term "pressure". *(2 marks)*

(b) A force of 100 N acts on an area of 0.5 m². Calculate the pressure. *(3 marks)*

(c) Explain why a sharp knife cuts better than a blunt knife. *(3 marks)*

---

**Q10.** (a) State the principle of moments. *(3 marks)*

(b) A uniform metre rule is balanced at its centre. A 2 N weight is placed at the 20 cm mark. Calculate the force needed at the 80 cm mark to balance it. *(5 marks)*

(c) State two conditions for a body to be in equilibrium. *(3 marks)*

---

**Q11.** (a) Define the term "centre of gravity". *(2 marks)*

(b) Explain why a tall narrow object is more likely to topple than a short wide one. *(4 marks)*

(c) Describe how you would find the centre of gravity of an irregular lamina. *(4 marks)*

---

**Q12.** (a) What is a simple machine? *(2 marks)*

(b) Define the terms mechanical advantage, velocity ratio, and efficiency. *(6 marks)*

(c) A machine has a mechanical advantage of 4 and an efficiency of 80%. Calculate its velocity ratio. *(4 marks)*

---

**Q13.** (a) A lever has a load arm of 0.5 m and an effort arm of 2 m. Calculate the velocity ratio. *(3 marks)*

(b) If the load is 200 N and the effort is 60 N, calculate the mechanical advantage. *(3 marks)*

(c) Calculate the efficiency of the lever. *(4 marks)*

---

**Q14.** (a) Define the term "friction". *(2 marks)*

(b) State two advantages and two disadvantages of friction. *(4 marks)*

(c) Describe two ways of reducing friction. *(4 marks)*

---

**Q15.** (a) Define the term "density". *(2 marks)*

(b) A block of metal has a mass of 270 g and a volume of 100 cm³. Calculate its density in g/cm³ and in kg/m³. *(5 marks)*

(c) Explain why ice floats on water. *(3 marks)*

---

**Q16.** (a) State Archimedes'' principle. *(3 marks)*

(b) A stone weighs 5 N in air and 3 N in water. Calculate the upthrust. *(3 marks)*

(c) Calculate the volume of the stone. (Density of water = 1000 kg/m³, g = 10 m/s²) *(4 marks)*

---

**Q17.** (a) Define the term "relative density". *(2 marks)*

(b) A body has a density of 800 kg/m³. Calculate its relative density. *(3 marks)*

(c) Explain why a ship made of steel floats on water. *(4 marks)*

---

**Q18.** (a) State the law of floatation. *(3 marks)*

(b) A floating object displaces 0.5 m³ of water. Calculate the upthrust on it. (Density of water = 1000 kg/m³, g = 10 m/s²) *(4 marks)*

(c) Explain how a submarine controls its depth. *(4 marks)*

---

**Q19.** (a) Define the term "velocity ratio" of a pulley system. *(2 marks)*

(b) A pulley system with 4 ropes supports a load of 400 N with an effort of 120 N. Calculate the mechanical advantage and velocity ratio. *(5 marks)*

(c) Calculate the efficiency of the pulley system. *(3 marks)*

---

**Q20.** (a) A car accelerates from 10 m/s to 30 m/s in 5 s. Calculate its acceleration. *(3 marks)*

(b) Calculate the distance travelled during this time. *(3 marks)*

(c) Sketch a velocity-time graph for this motion and state what the gradient represents. *(5 marks)*
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