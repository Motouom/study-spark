begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Chemistry'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Chemistry

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ATOMIC STRUCTURE

**Q1.** Atomic structure: A laboratory setup for atomic structure records readings 4, 7, 10, and 11 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Atomic structure: A laboratory setup for atomic structure records readings 5, 8, 11, and 13 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

![Titration apparatus](/paper-diagrams/chemistry-titration.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Atomic structure: A laboratory setup for atomic structure records readings 6, 9, 12, and 15 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Atomic structure: A laboratory setup for atomic structure records readings 7, 10, 13, and 17 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Atomic structure: A laboratory setup for atomic structure records readings 8, 11, 14, and 19 in suitable SI units. Use the data to determine the physical quantity, graph relationship, and reliability of the result.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: BONDING

**Q6.** Bonding: Experiment 6 studies bonding by changing concentration 0.9 mol dm-3, temperature 26 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Bonding: Experiment 7 studies bonding by changing concentration 1 mol dm-3, temperature 27 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Bonding: Experiment 8 studies bonding by changing concentration 1.1 mol dm-3, temperature 28 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Bonding: Experiment 9 studies bonding by changing concentration 1.2 mol dm-3, temperature 29 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Bonding: Experiment 10 studies bonding by changing concentration 1.3 mol dm-3, temperature 30 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ENERGETICS

**Q11.** Energetics: Experiment 11 studies energetics by changing concentration 1.4 mol dm-3, temperature 31 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Energetics: Experiment 12 studies energetics by changing concentration 1.5 mol dm-3, temperature 32 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Energetics: Experiment 13 studies energetics by changing concentration 1.6 mol dm-3, temperature 33 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Energetics: Experiment 14 studies energetics by changing concentration 1.7 mol dm-3, temperature 34 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Energetics: Experiment 15 studies energetics by changing concentration 1.8 mol dm-3, temperature 35 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: KINETICS

**Q16.** Kinetics: Experiment 16 studies kinetics by changing concentration 1.9 mol dm-3, temperature 36 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Kinetics: Experiment 17 studies kinetics by changing concentration 2 mol dm-3, temperature 37 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Kinetics: Experiment 18 studies kinetics by changing concentration 2.1 mol dm-3, temperature 38 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Kinetics: Experiment 19 studies kinetics by changing concentration 2.2 mol dm-3, temperature 39 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Kinetics: Experiment 20 studies kinetics by changing concentration 2.3 mol dm-3, temperature 40 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: EQUILIBRIUM

**Q21.** Equilibrium: Experiment 21 studies equilibrium by changing concentration 2.4 mol dm-3, temperature 41 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Equilibrium: Experiment 22 studies equilibrium by changing concentration 2.5 mol dm-3, temperature 42 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Equilibrium: Experiment 23 studies equilibrium by changing concentration 2.6 mol dm-3, temperature 43 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Equilibrium: Experiment 24 studies equilibrium by changing concentration 2.7 mol dm-3, temperature 44 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Equilibrium: Experiment 25 studies equilibrium by changing concentration 2.8 mol dm-3, temperature 45 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: ORGANIC CHEMISTRY

**Q26.** Organic chemistry: Experiment 26 studies organic chemistry by changing concentration 2.9 mol dm-3, temperature 46 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Organic chemistry: Experiment 27 studies organic chemistry by changing concentration 3 mol dm-3, temperature 47 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Organic chemistry: Experiment 28 studies organic chemistry by changing concentration 3.1 mol dm-3, temperature 48 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Organic chemistry: Experiment 29 studies organic chemistry by changing concentration 3.2 mol dm-3, temperature 49 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Organic chemistry: Experiment 30 studies organic chemistry by changing concentration 3.3 mol dm-3, temperature 50 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: ELECTROCHEMISTRY

**Q31.** Electrochemistry: Experiment 31 studies electrochemistry by changing concentration 3.4 mol dm-3, temperature 51 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Electrochemistry: Experiment 32 studies electrochemistry by changing concentration 3.5 mol dm-3, temperature 52 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Electrochemistry: Experiment 33 studies electrochemistry by changing concentration 3.6 mol dm-3, temperature 53 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Electrochemistry: Experiment 34 studies electrochemistry by changing concentration 3.7 mol dm-3, temperature 54 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Electrochemistry: Experiment 35 studies electrochemistry by changing concentration 3.8 mol dm-3, temperature 55 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: QUALITATIVE ANALYSIS

**Q36.** Qualitative analysis: Experiment 36 studies qualitative analysis by changing concentration 3.9 mol dm-3, temperature 56 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Qualitative analysis: Experiment 37 studies qualitative analysis by changing concentration 4 mol dm-3, temperature 57 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Qualitative analysis: Experiment 38 studies qualitative analysis by changing concentration 4.1 mol dm-3, temperature 58 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Qualitative analysis: Experiment 39 studies qualitative analysis by changing concentration 4.2 mol dm-3, temperature 59 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Qualitative analysis: Experiment 40 studies qualitative analysis by changing concentration 4.3 mol dm-3, temperature 60 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

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
  where subject = 'Chemistry'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 4'
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
  'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 4

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
  where title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 5'
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
  'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 5

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
  where title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 6'
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
  'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 6

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level CITIZENSHIP EDUCATION P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Rights & Duties: Sample question 1 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Government: Sample question 2 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Constitution: Sample question 3 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Democracy: Sample question 4 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Human Rights: Sample question 5 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Civic Participation: Sample question 6 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** National Identity: Sample question 7 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Global Citizenship: Sample question 8 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Rights & Duties: Sample question 9 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Government: Sample question 10 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Constitution: Sample question 11 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Democracy: Sample question 12 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Human Rights: Sample question 13 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Civic Participation: Sample question 14 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** National Identity: Sample question 15 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Global Citizenship: Sample question 16 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Rights & Duties: Sample question 17 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Government: Sample question 18 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Constitution: Sample question 19 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Democracy: Sample question 20 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Human Rights: Sample question 21 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Civic Participation: Sample question 22 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** National Identity: Sample question 23 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Global Citizenship: Sample question 24 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Rights & Duties: Sample question 25 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Government: Sample question 26 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Constitution: Sample question 27 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Democracy: Sample question 28 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Human Rights: Sample question 29 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Civic Participation: Sample question 30 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** National Identity: Sample question 31 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Global Citizenship: Sample question 32 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Rights & Duties: Sample question 33 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Government: Sample question 34 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Constitution: Sample question 35 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Democracy: Sample question 36 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Human Rights: Sample question 37 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Civic Participation: Sample question 38 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** National Identity: Sample question 39 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Global Citizenship: Sample question 40 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Rights & Duties: Sample question 41 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Government: Sample question 42 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Constitution: Sample question 43 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Democracy: Sample question 44 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Human Rights: Sample question 45 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Civic Participation: Sample question 46 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** National Identity: Sample question 47 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Global Citizenship: Sample question 48 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Rights & Duties: Sample question 49 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Government: Sample question 50 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Constitution: Sample question 51 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Democracy: Sample question 52 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Human Rights: Sample question 53 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Civic Participation: Sample question 54 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** National Identity: Sample question 55 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Global Citizenship: Sample question 56 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Rights & Duties: Sample question 57 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Government: Sample question 58 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Constitution: Sample question 59 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Democracy: Sample question 60 for Citizenship Education Ordinary Level Paper 1.

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level CITIZENSHIP EDUCATION P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Rights & Duties: Sample question 1 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Government: Sample question 2 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Constitution: Sample question 3 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Democracy: Sample question 4 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Human Rights: Sample question 5 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Civic Participation: Sample question 6 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** National Identity: Sample question 7 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Global Citizenship: Sample question 8 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Rights & Duties: Sample question 9 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Government: Sample question 10 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Constitution: Sample question 11 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Democracy: Sample question 12 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Human Rights: Sample question 13 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Civic Participation: Sample question 14 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** National Identity: Sample question 15 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Global Citizenship: Sample question 16 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Rights & Duties: Sample question 17 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Government: Sample question 18 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Constitution: Sample question 19 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Democracy: Sample question 20 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Human Rights: Sample question 21 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Civic Participation: Sample question 22 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** National Identity: Sample question 23 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Global Citizenship: Sample question 24 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Rights & Duties: Sample question 25 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Government: Sample question 26 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Constitution: Sample question 27 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Democracy: Sample question 28 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Human Rights: Sample question 29 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Civic Participation: Sample question 30 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** National Identity: Sample question 31 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Global Citizenship: Sample question 32 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Rights & Duties: Sample question 33 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Government: Sample question 34 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Constitution: Sample question 35 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Democracy: Sample question 36 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Human Rights: Sample question 37 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Civic Participation: Sample question 38 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** National Identity: Sample question 39 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Global Citizenship: Sample question 40 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Rights & Duties: Sample question 41 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Government: Sample question 42 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Constitution: Sample question 43 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Democracy: Sample question 44 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Human Rights: Sample question 45 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Civic Participation: Sample question 46 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** National Identity: Sample question 47 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Global Citizenship: Sample question 48 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Rights & Duties: Sample question 49 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Government: Sample question 50 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Constitution: Sample question 51 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Democracy: Sample question 52 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Human Rights: Sample question 53 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Civic Participation: Sample question 54 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** National Identity: Sample question 55 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Global Citizenship: Sample question 56 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Rights & Duties: Sample question 57 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Government: Sample question 58 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Constitution: Sample question 59 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Democracy: Sample question 60 for Citizenship Education Ordinary Level Paper 1.

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level CITIZENSHIP EDUCATION P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Rights & Duties: Sample question 1 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Government: Sample question 2 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Constitution: Sample question 3 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Democracy: Sample question 4 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Human Rights: Sample question 5 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Civic Participation: Sample question 6 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** National Identity: Sample question 7 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Global Citizenship: Sample question 8 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Rights & Duties: Sample question 9 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Government: Sample question 10 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Constitution: Sample question 11 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Democracy: Sample question 12 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Human Rights: Sample question 13 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Civic Participation: Sample question 14 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** National Identity: Sample question 15 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Global Citizenship: Sample question 16 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Rights & Duties: Sample question 17 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Government: Sample question 18 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Constitution: Sample question 19 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Democracy: Sample question 20 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Human Rights: Sample question 21 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Civic Participation: Sample question 22 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** National Identity: Sample question 23 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Global Citizenship: Sample question 24 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Rights & Duties: Sample question 25 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Government: Sample question 26 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Constitution: Sample question 27 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Democracy: Sample question 28 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Human Rights: Sample question 29 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Civic Participation: Sample question 30 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** National Identity: Sample question 31 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Global Citizenship: Sample question 32 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Rights & Duties: Sample question 33 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Government: Sample question 34 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Constitution: Sample question 35 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Democracy: Sample question 36 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Human Rights: Sample question 37 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Civic Participation: Sample question 38 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** National Identity: Sample question 39 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Global Citizenship: Sample question 40 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Rights & Duties: Sample question 41 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Government: Sample question 42 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Constitution: Sample question 43 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Democracy: Sample question 44 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Human Rights: Sample question 45 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Civic Participation: Sample question 46 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** National Identity: Sample question 47 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Global Citizenship: Sample question 48 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Rights & Duties: Sample question 49 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Government: Sample question 50 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Constitution: Sample question 51 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Democracy: Sample question 52 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Human Rights: Sample question 53 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Civic Participation: Sample question 54 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** National Identity: Sample question 55 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Global Citizenship: Sample question 56 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Rights & Duties: Sample question 57 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Government: Sample question 58 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Constitution: Sample question 59 for Citizenship Education Ordinary Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Democracy: Sample question 60 for Citizenship Education Ordinary Level Paper 1.

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
  where subject = 'Citizenship Education'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Citizenship Education',
  'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, arts
**Subject:** Citizenship Education

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: STATE AND NATION

**Q1.** State and nation: Community case 1 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q2.** State and nation: Community case 2 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q3.** State and nation: Community case 3 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q4.** State and nation: Community case 4 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q5.** State and nation: Community case 5 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply state and nation to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 2: RIGHTS AND DUTIES

**Q6.** Rights and duties: Community case 6 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q7.** Rights and duties: Community case 7 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q8.** Rights and duties: Community case 8 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q9.** Rights and duties: Community case 9 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q10.** Rights and duties: Community case 10 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply rights and duties to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 3: DEMOCRACY

**Q11.** Democracy: Community case 11 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q12.** Democracy: Community case 12 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q13.** Democracy: Community case 13 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q14.** Democracy: Community case 14 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q15.** Democracy: Community case 15 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply democracy to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 4: ELECTIONS

**Q16.** Elections: Community case 16 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q17.** Elections: Community case 17 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q18.** Elections: Community case 18 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q19.** Elections: Community case 19 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q20.** Elections: Community case 20 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply elections to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 5: CONSTITUTION

**Q21.** Constitution: Community case 21 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q22.** Constitution: Community case 22 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q23.** Constitution: Community case 23 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q24.** Constitution: Community case 24 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q25.** Constitution: Community case 25 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply constitution to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 6: PEACE AND CONFLICT

**Q26.** Peace and conflict: Community case 26 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q27.** Peace and conflict: Community case 27 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q28.** Peace and conflict: Community case 28 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q29.** Peace and conflict: Community case 29 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q30.** Peace and conflict: Community case 30 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply peace and conflict to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 7: NATIONAL INTEGRATION

**Q31.** National integration: Community case 31 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q32.** National integration: Community case 32 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q33.** National integration: Community case 33 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q34.** National integration: Community case 34 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q35.** National integration: Community case 35 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply national integration to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

## SECTION 8: CIVIC RESPONSIBILITY

**Q36.** Civic responsibility: Community case 36 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(6 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q37.** Civic responsibility: Community case 37 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(8 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q38.** Civic responsibility: Community case 38 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(10 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q39.** Civic responsibility: Community case 39 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

(a) Identify the central issue, concept, theme, argument, or language feature being tested. *(4 marks)*

(b) Write a developed response with clear paragraphs, accurate syllabus knowledge, and relevant Cameroon or textual examples. *(12 marks)*

(c) Evaluate the strength, limitation, moral lesson, historical significance, or wider implication of your answer. *(6 marks)*

---

**Q40.** Civic responsibility: Community case 40 involves rights, duties, elections, public property, conflict, and peaceful participation. Apply civic responsibility to resolve the case.

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

commit;