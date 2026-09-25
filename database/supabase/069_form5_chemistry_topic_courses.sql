-- Chemistry (ordinary): one course per GCE curriculum topic.
-- Replaces the single "Complete O-Level Chemistry Course" with concise,
-- example-rich topic courses.

begin;

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('chem-atomic-structure', 'Chemistry', 'Atomic Structure and the Periodic Table', 'Subatomic particles, atomic number, mass number, isotopes, electron arrangement, and the periodic table.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('0d222262-ed76-4272-bab1-c6c2178ab3ed'::uuid, 'chem-atomic-structure', 'Chemistry', 'Atomic Structure and the Periodic Table', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Atomic Structure and the Periodic Table

Chemistry begins with the atom. The GCE paper tests the particles inside an atom, electron arrangement, and how the periodic table is organised. Learn the definitions precisely — examiners award marks for exact terms like "atomic number" and "mass number".

### What you must know

- **Subatomic particles:**
  - Proton: positive charge, relative mass 1, in the nucleus.
  - Neutron: no charge, relative mass 1, in the nucleus.
  - Electron: negative charge, almost no mass, orbiting the nucleus.
- **Atomic number (Z):** the number of protons. It identifies the element.
- **Mass number (A):** the number of protons + neutrons.
- **Isotopes:** atoms of the same element with the same number of protons but different numbers of neutrons (e.g., carbon-12 and carbon-14).
- **Electron arrangement:** electrons occupy shells (energy levels). The first shell holds 2, the second holds 8, the third holds 8 (for the first 20 elements). Example: sodium (11 electrons) = 2, 8, 1.
- **The periodic table:** elements are arranged in order of increasing atomic number. Rows are periods; columns are groups. Elements in the same group have the same number of outer electrons and similar chemical properties.
- **Groups to know:** Group 1 (alkali metals), Group 2 (alkaline earth metals), Group 7 (halogens), Group 0 (noble gases — unreactive, full outer shell).

### Worked example

**An atom of chlorine has 17 protons and 18 neutrons. State its atomic number, mass number, and electron arrangement.**

Step 1: Atomic number = number of protons = **17**.

Step 2: Mass number = protons + neutrons = 17 + 18 = **35**.

Step 3: Electron arrangement: 17 electrons → **2, 8, 7**.

### Worked example 2

**Why are the noble gases (Group 0) unreactive?**

Step 1: Look at their electron arrangement.

Step 2: They have a full outer shell of electrons (2 or 8).

Step 3: A full outer shell makes them stable and unreactive.

### Common mistakes to avoid

- Confusing atomic number with mass number.
- Writing the electron arrangement in the wrong order (it must fill inner shells first).
- Saying electrons have significant mass — they are almost massless.

### Practice questions

1. An atom has 6 protons and 6 neutrons. State its atomic number and mass number.
2. Write the electron arrangement of magnesium (12 electrons).
3. Which group contains the halogens?
4. What is an isotope?

### Answers

1. Atomic number = 6, mass number = 12.
2. 2, 8, 2.
3. Group 7.
4. Atoms of the same element with the same number of protons but different numbers of neutrons.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('chem-bonding', 'Chemistry', 'Bonding and Structure', 'Ionic, covalent, and metallic bonding; giant covalent structures (diamond, graphite); and key comparisons.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('ba34d47f-143a-467c-aea8-f0e71cf1c535'::uuid, 'chem-bonding', 'Chemistry', 'Bonding and Structure', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Bonding and Structure

Bonding explains why substances behave the way they do. The GCE paper tests the three main types of bonding — ionic, covalent, and metallic — and the properties that follow from each structure. Link the bonding to the properties in your answers.

### What you must know

- **Ionic bonding:** A metal transfers electrons to a non-metal, forming positive and negative ions held together by strong electrostatic forces. Example: sodium chloride, NaCl. Properties: high melting points, conduct electricity when molten or dissolved, often soluble in water.
- **Covalent bonding:** Non-metals share pairs of electrons. Examples: water (H₂O), carbon dioxide (CO₂), methane (CH₄). Properties: low melting points, do not conduct electricity, often insoluble in water.
- **Metallic bonding:** Positive ions in a "sea" of delocalised electrons. Properties: conduct electricity and heat, malleable and ductile, high melting points.
- **Giant structures:** Diamond and graphite are giant covalent structures of carbon. Diamond is very hard (each carbon bonds to four others); graphite is soft and conducts electricity (each carbon bonds to three, leaving free electrons, with layers that slide).
- **Ions:** Metals form positive ions (cations); non-metals form negative ions (anions). Sodium loses one electron → Na⁺; chlorine gains one → Cl⁻.

### Worked example

**Explain why sodium chloride conducts electricity when molten but not when solid.**

Step 1: Ionic compounds conduct when their ions are free to move.

Step 2: In the solid, ions are fixed in a lattice and cannot move.

Step 3: When molten, the lattice breaks down and the ions move freely, carrying charge.

### Worked example 2

**Why is graphite used in pencil leads?**

Step 1: Graphite has layers that can slide over each other.

Step 2: The weak forces between layers allow them to slide, leaving marks on paper.

Step 3: Graphite is soft and slippery because of its layered structure.

### Common mistakes to avoid

- Saying ionic compounds conduct when solid — they only conduct when molten or dissolved.
- Confusing the "sea of electrons" (metallic) with shared pairs (covalent).
- Forgetting that diamond and graphite are both forms of carbon.

### Practice questions

1. What type of bond forms between a metal and a non-metal?
2. Name the particles that carry charge in a molten ionic compound.
3. Why does diamond have a very high melting point?
4. Which type of bonding explains why copper conducts electricity?

### Answers

1. Ionic bonding.
2. Ions.
3. Each carbon atom is bonded to four others by strong covalent bonds in a giant structure, needing much energy to break.
4. Metallic bonding — delocalised electrons move freely through the structure.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('chem-stoichiometry', 'Chemistry', 'Stoichiometry — the Mole', 'The mole, molar mass, balancing equations, concentration, and gas volumes.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('860e8669-da3e-4718-9e42-efb02874dee9'::uuid, 'chem-stoichiometry', 'Chemistry', 'Stoichiometry — the Mole', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Stoichiometry — the Mole

Stoichiometry is the arithmetic of chemistry. The GCE paper tests mole calculations, balancing equations, and concentration. Show every step and always state units — method marks are awarded even when the final answer is wrong.

### What you must know

- **The mole:** One mole of any substance contains 6.02 × 10²³ particles (Avogadro''s constant).
- **Molar mass:** The mass of one mole of a substance in grams, equal to its relative formula mass (Mr). Example: Mr of H₂O = (2 × 1) + 16 = 18, so 1 mole of water = 18 g.
- **Key formula:** Moles = mass ÷ molar mass, written n = m/M.
- **Balancing equations:** The number of atoms of each element must be the same on both sides. Example: 2H₂ + O₂ → 2H₂O.
- **Concentration:** Concentration (mol/dm³) = moles ÷ volume (dm³). Also concentration (g/dm³) = mass ÷ volume.
- **Gas volumes:** One mole of any gas occupies 24 dm³ at room temperature and pressure.
- **Percentage composition:** % of element = (mass of element in formula ÷ Mr) × 100.

### Worked example

**How many moles are in 88 g of carbon dioxide, CO₂? (Ar: C = 12, O = 16.)**

Step 1: Mr of CO₂ = 12 + (2 × 16) = 44.

Step 2: Moles = mass ÷ molar mass = 88 ÷ 44.

Step 3: Moles = **2 mol**.

### Worked example 2

**Calculate the concentration of a solution containing 0.5 mol of sodium chloride dissolved in 250 cm³ of water.**

Step 1: Convert volume to dm³: 250 cm³ = 0.25 dm³.

Step 2: Concentration = moles ÷ volume = 0.5 ÷ 0.25.

Step 3: Concentration = **2 mol/dm³**.

### Common mistakes to avoid

- Forgetting to convert cm³ to dm³ (divide by 1,000).
- Using the wrong Mr — add up every atom in the formula.
- Writing an unbalanced equation before doing mole calculations.

### Practice questions

1. How many moles are in 36 g of water, H₂O? (Ar: H = 1, O = 16.)
2. What is the Mr of calcium carbonate, CaCO₃? (Ar: Ca = 40, C = 12, O = 16.)
3. Find the concentration of a solution with 2 mol of solute in 500 cm³ of solution.
4. What volume does 0.5 mol of gas occupy at room temperature and pressure?

### Answers

1. Mr of H₂O = 18; moles = 36 ÷ 18 = 2 mol.
2. Mr = 40 + 12 + (3 × 16) = 100.
3. 500 cm³ = 0.5 dm³; concentration = 2 ÷ 0.5 = 4 mol/dm³.
4. 0.5 × 24 = 12 dm³.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('chem-acids-bases-salts', 'Chemistry', 'Acids, Bases and Salts', 'Acids, bases, alkalis, neutralisation, salt preparation methods, and common ion tests.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('d315bf09-b027-4c5a-98ed-fece4d7379b0'::uuid, 'chem-acids-bases-salts', 'Chemistry', 'Acids, Bases and Salts', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Acids, Bases and Salts

Acids and bases appear every year in the GCE paper — in theory questions, titration calculations, and salt preparation. Learn the definitions, the reactions, and the test for each ion.

### What you must know

- **Acid:** A substance that produces hydrogen ions (H⁺) when dissolved in water. They turn blue litmus red and have a sour taste.
- **Base:** A substance that produces hydroxide ions (OH⁻) when dissolved in water. They turn red litmus blue and feel soapy.
- **Alkali:** A base that dissolves in water (e.g., sodium hydroxide, NaOH).
- **Neutralisation:** Acid + base → salt + water. Example: HCl + NaOH → NaCl + H₂O.
- **Salt preparation methods:**
  - Metal + acid → salt + hydrogen (e.g., Zn + 2HCl → ZnCl₂ + H₂)
  - Insoluble base + acid → salt + water (e.g., CuO + H₂SO₄ → CuSO₄ + H₂O)
  - Insoluble carbonate + acid → salt + water + carbon dioxide
  - Titration (for soluble salts of soluble acids and bases)
- **Solubility rules:** All nitrates are soluble; all sodium, potassium, and ammonium salts are soluble; chlorides are soluble except silver and lead; sulfates are soluble except barium, calcium, and lead; carbonates are insoluble except sodium, potassium, and ammonium.
- **Common tests:** CO₂ turns limewater milky; H⁺ (acid) + carbonate → brisk effervescence; NH₄⁺ + NaOH → ammonia gas (turns damp red litmus blue).

### Worked example

**How would you prepare pure dry crystals of copper(II) sulfate from copper oxide?**

Step 1: Copper oxide is an insoluble base, so warm it with dilute sulfuric acid until no more dissolves.

Step 2: Filter off excess copper oxide to get copper sulfate solution.

Step 3: Evaporate the solution gently to concentrate it, then leave to cool and crystallise; filter and dry the crystals.

### Worked example 2

**Write the equation for the reaction between hydrochloric acid and sodium hydroxide, and name the salt formed.**

Step 1: Acid + base → salt + water.

Step 2: HCl + NaOH → NaCl + H₂O.

Step 3: The salt formed is **sodium chloride**.

### Common mistakes to avoid

- Confusing bases with alkalis (all alkalis are bases, but not all bases dissolve in water).
- Forgetting that neutralisation produces salt + water (never hydrogen — that is metal + acid).
- Misapplying solubility rules (e.g., saying all carbonates are soluble).

### Practice questions

1. State the products of neutralisation.
2. Which method would you use to prepare sodium chloride from sodium hydroxide and hydrochloric acid?
3. What gas is produced when an acid reacts with a carbonate?
4. Is barium sulfate soluble or insoluble?

### Answers

1. Salt and water.
2. Titration (both acid and base are soluble), then evaporate to crystallise.
3. Carbon dioxide (CO₂).
4. Insoluble — barium sulfate is one of the exceptions.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('chem-electrolysis', 'Chemistry', 'Electrolysis', 'Electrolysis of molten ionic compounds and aqueous solutions; electrode products and half-equations.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('5af9add7-2bd7-47af-abc8-64feb0190fc8'::uuid, 'chem-electrolysis', 'Chemistry', 'Electrolysis', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Electrolysis

Electrolysis is the decomposition of an ionic compound using electricity. The GCE paper tests the products at the electrodes and the conditions needed. Always write half-equations for the electrode reactions.

### What you must know

- **Electrolysis requires:** a liquid that conducts electricity (electrolyte), and electrodes (usually inert platinum or carbon).
- **Cations** (positive ions) move to the **negative electrode** (cathode) and gain electrons (reduction).
- **Anions** (negative ions) move to the **positive electrode** (anode) and lose electrons (oxidation).
- **Products at the cathode:** metal (if less reactive than hydrogen) or hydrogen gas (if more reactive than hydrogen).
- **Products at the anode:** halogen gas (if halide ions present), oxygen gas (if hydroxide or oxide ions present), or the metal itself (if unreactive metal electrode).
- **Brine (concentrated NaCl):** Na⁺ + e⁻ → Na (cathode); Cl⁻ → ½Cl₂ + e⁻ (anode). But in practice, H₂ and Cl₂ are produced because Na reacts with water.
- **Half-equations:** Always balance atoms first, then charge with electrons. Example: 2Cl⁻ → Cl₂ + 2e⁻.

### Worked example

**Predict the products of the electrolysis of molten lead(II) bromide.**

Step 1: The ions are Pb²⁺ and Br⁻.

Step 2: At the cathode (negative), Pb²⁺ gains electrons: Pb²⁺ + 2e⁻ → Pb (lead metal).

Step 3: At the anode (positive), Br⁻ loses electrons: 2Br⁻ → Br₂ + 2e⁻ (bromine gas).

Step 4: Products: **lead at the cathode, bromine at the anode**.

### Worked example 2

**Predict the products of the electrolysis of concentrated aqueous sodium chloride.**

Step 1: The ions present are Na⁺, Cl⁻, H⁺, and OH⁻ (from water).

Step 2: At the cathode, H⁺ is reduced more easily than Na⁺: 2H⁺ + 2e⁻ → H₂(g).

Step 3: At the anode, Cl⁻ is oxidised more easily than OH⁻: 2Cl⁻ → Cl₂ + 2e⁻.

Step 4: Products: **hydrogen at the cathode, chlorine at the anode**.

### Common mistakes to avoid

- Saying sodium metal is produced in the electrolysis of brine — in practice, hydrogen is produced.
- Forgetting that electrolysis of aqueous solutions involves water ions (H⁺/OH⁻) in addition to the added ions.
- Writing unbalanced half-equations.

### Practice questions

1. What ions are produced when lead(II) bromide melts?
2. In the electrolysis of molten lead(II) bromide, what is formed at the cathode?
3. In the electrolysis of concentrated aqueous sodium chloride, what is formed at the anode?
4. Complete the half-equation: 2Cl⁻ → **_ + _**

### Answers

1. Pb²⁺ and Br⁻ ions.
2. Lead metal.
3. Chlorine gas.
4. 2Cl⁻ → Cl₂ + 2e⁻.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('chem-metals-nonmetals', 'Chemistry', 'Metals and Non-metals', 'The reactivity series, extraction of metals, reactions with oxygen/acids, and properties of non-metals.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('cee3d570-49a3-4131-86ef-902a20f0350a'::uuid, 'chem-metals-nonmetals', 'Chemistry', 'Metals and Non-metals', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Metals and Non-metals

Metals and their extraction, as well as the reactions of non-metals, are core topics in the GCE paper. You must know the reactivity series, extraction methods, and the test for gases like chlorine and hydrogen.

### What you must know

- **The reactivity series:** A list of metals arranged by how readily they react. More reactive metals are harder to extract. Common order: potassium, sodium, calcium, magnesium, aluminium, zinc, iron, copper, silver, gold.
- **Extraction of metals:**
  - **High in the series (potassium, sodium, calcium, magnesium, aluminium):** Extracted by electrolysis of their molten compounds (e.g., NaCl for sodium, Al₂O₃ for aluminium).
  - **Middle of the series (zinc, iron):** Extracted by reduction with carbon or carbon monoxide (e.g., ZnO + C → Zn + CO; Fe₂O₃ + 3CO → 2Fe + 3CO₂).
  - **Low in the series (copper, silver, gold):** Often found as native metals; copper can be extracted by heating in air (copper matte then conversion).
- **Reaction with oxygen:** Metals burn in oxygen to form metal oxides. Example: 4Mg + O₂ → 2MgO.
- **Reaction with acids:** Metals above hydrogen in the series react with dilute acids to produce a salt and hydrogen. Example: Mg + 2HCl → MgCl₂ + H₂.
- **Non-metals:** Do not react with acids to produce hydrogen. They form acidic oxides that dissolve in water to make acidic solutions.
- **Tests for gases:**
  - **Hydrogen:** "pop" test (squeaky sound when a lit splint is brought near).
  - **Chlorine:** Bleaches damp litmus paper; turns white precipitate with silver nitrate.
  - **Oxygen:** Relights a glowing splint.

### Worked example

**Explain how aluminium is extracted from bauxite.**

Step 1: Bauxite (mainly Al₂O₃) is purified to give pure alumina (Al₂O₃).

Step 2: Alumina is mixed with cryolite (Na₃AlF₃) to lower the melting point.

Step 3: The mixture is electrolysed in a carbon-lined cell. At the cathode: Al³⁺ + 3e⁻ → Al (liquid aluminium sinks to the bottom). At the anode: 2O²⁻ → O₂ + 4e⁻ (oxygen reacts with carbon anodes).

Step 4: The aluminium is tapped off as a liquid.

### Worked example 2

**Write the equation for the reaction between zinc and dilute sulfuric acid.**

Step 1: Zinc is above hydrogen in the reactivity series, so it reacts with dilute acid.

Step 2: Zinc sulfate and hydrogen are formed.

Step 3: Zn + H₂SO₄ → ZnSO₄ + H₂.

### Common mistakes to avoid

- Confusing the extraction method for aluminium (electrolysis) with that for iron (reduction with carbon).
- Saying all metals react with acids — only those above hydrogen do.
- Forgetting that non-metals form acidic oxides, not basic ones.

### Practice questions

1. Which method is used to extract aluminium from its ore?
2. What gas is produced when magnesium reacts with dilute hydrochloric acid?
3. Name a metal that does not react with dilute hydrochloric acid.
4. What test confirms the presence of hydrogen gas?

### Answers

1. Electrolysis of the molten ore (or purified oxide).
2. Hydrogen gas (H₂).
3. Copper, silver, or gold.
4. "Pop" test — a squeaky sound when a lit splint is brought near the gas.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('chem-organic', 'Chemistry', 'Organic Chemistry', 'Alkanes, alkenes, functional groups (alcohols, carboxylic acids), esters, and polymerisation.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('64f833f5-2d72-4e79-b92d-f90649941fb7'::uuid, 'chem-organic', 'Chemistry', 'Organic Chemistry', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Organic Chemistry

Organic Chemistry is the study of carbon compounds. The GCE paper tests hydrocarbons (alkanes and alkenes), functional groups (alcohols and carboxylic acids), and simple reactions such as combustion and substitution.

### What you must know

- **Alkanes:** Saturated hydrocarbons with single bonds only. General formula CₙH₂ₙ₊₂. Members: methane (CH₄), ethane (C₂H₆), propane (C₃H₈). They undergo substitution reactions with halogens (e.g., CH₄ + Cl₂ → CH₃Cl + HCl in UV light).
- **Alkenes:** Unsaturated hydrocarbons with a carbon–carbon double bond. General formula CₙH₂ₙ. Members: ethene (C₂H₄), propene (C₃H₆). They undergo addition reactions (e.g., with bromine water, the brown colour disappears).
- **Distinguishing alkanes from alkenes:** Bromine water test. Alkanes: no reaction (colour stays brown). Alkenes: decolourises bromine water.
- **Functional groups:**
  - **Alcohols:** Contain the –OH group. General formula CₙH₂ₙ₊₁OH. Example: ethanol (C₂H₅OH). They can be oxidised to carboxylic acids.
  - **Carboxylic acids:** Contain the –COOH group. General formula CₙH₂ₙ₊₁COOH. Example: ethanoic acid (CH₃COOH), the acid in vinegar. They react with alcohols to form esters.
- **Esters:** Sweet-smelling compounds formed from an alcohol and a carboxylic acid in the presence of an acid catalyst. Example: ethyl ethanoate (from ethanol + ethanoic acid). Used in flavourings and perfumes.
- **Polymers:** Large molecules made from small monomers. Addition polymers from alkenes (e.g., polythene from ethene, poly(propene) from propene).

### Worked example

**Describe the bromine water test to distinguish between ethane and ethene.**

Step 1: Add bromine water (brown colour) to a sample of the gas.

Step 2: If the brown colour disappears, the gas is ethene (an alkene — addition reaction).

Step 3: If the brown colour stays, the gas is ethane (an alkane — no reaction / substitution only).

### Worked example 2

**Write the equation for the complete combustion of ethene.**

Step 1: Hydrocarbons react with oxygen to produce carbon dioxide and water.

Step 2: C₂H₄ + 3O₂ → 2CO₂ + 2H₂O.

### Common mistakes to avoid

- Confusing alkanes and alkenes: remember the bromine water test (alkenes decolourise it).
- Forgetting that alkanes have single bonds only; alkenes have at least one double bond.
- Saying esters are formed from two acids — they are formed from an alcohol and a carboxylic acid.

### Practice questions

1. What is the general formula for alkanes?
2. Which homologous series has the general formula CₙH₂ₙ?
3. Name the functional group in carboxylic acids.
4. What two substances react to form an ester?

### Answers

1. CₙH₂ₙ₊₂.
2. Alkenes.
3. –COOH (carboxyl group).
4. An alcohol and a carboxylic acid.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

update public.course_documents
set status = 'archived', updated_at = now()
where topic_id = 'course-chem-ordinary' and status = 'published';

commit;

notify pgrst, 'reload schema';
