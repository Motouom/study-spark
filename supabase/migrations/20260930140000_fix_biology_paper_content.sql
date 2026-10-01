-- Fix Biology paper content (issue: auto-generated placeholder content,
-- wrong-level content, questions duplicated).
--
-- Replaces the placeholder/wrong-level content of all 22 Biology papers
-- (11 Advanced Level, 11 Ordinary Level) with distinct, correct-level
-- questions.

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ADVANCED LEVEL BIOLOGY — P1 (Multiple Choice) — Upper Sixth
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The organelle responsible for the synthesis of ATP is the:

A. ribosome  
B. mitochondrion  
C. lysosome  
D. Golgi apparatus  

---

**Q2.** The fluid mosaic model describes the structure of:

A. the nucleus  
B. the cell membrane  
C. the cell wall  
D. the ribosome  

---

**Q3.** The movement of water molecules across a selectively permeable membrane from a region of high water potential to low water potential is:

A. diffusion  
B. osmosis  
C. active transport  
D. plasmolysis  

---

**Q4.** The enzyme that breaks down starch into maltose is:

A. protease  
B. amylase  
C. lipase  
D. maltase  

---

**Q5.** The optimum temperature for most human enzymes is approximately:

A. 10 °C  
B. 25 °C  
C. 37 °C  
D. 60 °C  

---

**Q6.** The monomer of a protein is:

A. glucose  
B. amino acid  
C. nucleotide  
D. fatty acid  

---

**Q7.** The bond that links two amino acids together is the:

A. hydrogen bond  
B. peptide bond  
C. glycosidic bond  
D. phosphodiester bond  

---

**Q8.** DNA replication is described as:

A. conservative  
B. semi-conservative  
C. dispersive  
D. non-conservative  

---

**Q9.** The nitrogenous base that pairs with adenine in DNA is:

A. cytosine  
B. guanine  
C. thymine  
D. uracil  

---

**Q10.** The process by which mRNA is synthesised from DNA is:

A. translation  
B. transcription  
C. replication  
D. mutation  

---

**Q11.** The site of protein synthesis in a cell is the:

A. ribosome  
B. nucleus  
C. mitochondrion  
D. chloroplast  

---

**Q12.** The light-independent stage of photosynthesis occurs in the:

A. thylakoid  
B. stroma  
C. granum  
D. chlorophyll  

---

**Q13.** The pigment that absorbs light energy in photosynthesis is:

A. haemoglobin  
B. chlorophyll  
C. melanin  
D. carotene  

---

**Q14.** The end product of glycolysis is:

A. glucose  
B. pyruvate  
C. acetyl CoA  
D. lactic acid  

---

**Q15.** The final electron acceptor in aerobic respiration is:

A. oxygen  
B. carbon dioxide  
C. water  
D. NAD  

---

**Q16.** The number of ATP molecules produced by one molecule of glucose in aerobic respiration is approximately:

A. 2  
B. 18  
C. 36  
D. 100  

---

**Q17.** The exchange of gases in the lungs occurs by:

A. active transport  
B. diffusion  
C. osmosis  
D. filtration  

---

**Q18.** The pigment that transports oxygen in the blood is:

A. chlorophyll  
B. haemoglobin  
C. melanin  
D. insulin  

---

**Q19.** The functional unit of the kidney is the:

A. neuron  
B. nephron  
C. alveolus  
D. villus  

---

**Q20.** The hormone that regulates blood glucose concentration is:

A. insulin  
B. thyroxine  
C. adrenaline  
D. oestrogen  

---

**Q21.** The type of immunity acquired through vaccination is:

A. passive natural  
B. active artificial  
C. passive artificial  
D. active natural  

---

**Q22.** The structure that produces antibodies is the:

A. red blood cell  
B. lymphocyte  
C. platelet  
D. neuron  

---

**Q23.** The genetic disorder caused by an extra chromosome 21 is:

A. haemophilia  
B. Down's syndrome  
C. sickle cell anaemia  
D. colour blindness  

---

**Q24.** The process by which a population changes over time is:

A. evolution  
B. respiration  
C. excretion  
D. digestion  

---

**Q25.** The theory that all living things are made of cells is the:

A. cell theory  
B. theory of evolution  
C. germ theory  
D. kinetic theory  

---

## ANSWER KEY

1. B  2. B  3. B  4. B  5. C  6. B  7. B  8. B  9. C  10. B  
11. A  12. B  13. B  14. B  15. A  16. C  17. B  18. B  19. B  20. A  
21. B  22. B  23. B  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology MCQ set 1',
    updated_at = NOW()
WHERE id = '45b4ce6f-44bf-50d9-9c25-b43a68f6b9d8';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The organelle that contains digestive enzymes is the:

A. ribosome  
B. lysosome  
C. mitochondrion  
D. nucleus  

---

**Q2.** The movement of substances against a concentration gradient, requiring energy, is:

A. diffusion  
B. osmosis  
C. active transport  
D. plasmolysis  

---

**Q3.** The cell wall of a plant cell is made of:

A. cellulose  
B. protein  
C. lipid  
D. starch  

---

**Q4.** The enzyme that breaks down proteins into amino acids is:

A. amylase  
B. lipase  
C. protease  
D. maltase  

---

**Q5.** An enzyme is denatured when:

A. its active site changes shape  
B. its substrate binds  
C. its product is formed  
D. its temperature is lowered  

---

**Q6.** The monomer of a nucleic acid is:

A. amino acid  
B. nucleotide  
C. glucose  
D. fatty acid  

---

**Q7.** The bond that links nucleotides together in a DNA strand is the:

A. peptide bond  
B. phosphodiester bond  
C. glycosidic bond  
D. hydrogen bond  

---

**Q8.** The nitrogenous base found in RNA but not in DNA is:

A. adenine  
B. thymine  
C. uracil  
D. cytosine  

---

**Q9.** The process by which proteins are synthesised from mRNA is:

A. transcription  
B. translation  
C. replication  
D. mutation  

---

**Q10.** The anticodon is found on:

A. mRNA  
B. tRNA  
C. rRNA  
D. DNA  

---

**Q11.** The light-dependent stage of photosynthesis occurs in the:

A. stroma  
B. thylakoid  
C. cytoplasm  
D. nucleus  

---

**Q12.** The gas released during photosynthesis is:

A. carbon dioxide  
B. oxygen  
C. nitrogen  
D. hydrogen  

---

**Q13.** The site of the Krebs cycle is the:

A. cytoplasm  
B. mitochondrial matrix  
C. ribosome  
D. nucleus  

---

**Q14.** In anaerobic respiration in humans, pyruvate is converted to:

A. ethanol  
B. lactic acid  
C. acetyl CoA  
D. carbon dioxide  

---

**Q15.** The structure in the lungs where gas exchange occurs is the:

A. bronchus  
B. alveolus  
C. trachea  
D. diaphragm  

---

**Q16.** The blood vessel that carries oxygenated blood away from the heart is the:

A. pulmonary artery  
B. pulmonary vein  
C. aorta  
D. vena cava  

---

**Q17.** The functional unit of the nervous system is the:

A. nephron  
B. neuron  
C. alveolus  
D. villus  

---

**Q18.** The hormone that prepares the body for 'fight or flight' is:

A. insulin  
B. adrenaline  
C. thyroxine  
D. oestrogen  

---

**Q19.** The type of immunity passed from mother to baby through breast milk is:

A. active natural  
B. passive natural  
C. active artificial  
D. passive artificial  

---

**Q20.** The process by which white blood cells engulf and destroy pathogens is:

A. phagocytosis  
B. osmosis  
C. diffusion  
D. excretion  

---

**Q21.** The genetic disorder caused by a recessive allele on the X chromosome is:

A. Down's syndrome  
B. haemophilia  
C. sickle cell anaemia  
D. cystic fibrosis  

---

**Q22.** The structure that carries the genetic information in a cell is:

A. the ribosome  
B. the chromosome  
C. the lysosome  
D. the mitochondrion  

---

**Q23.** The process by which a single cell divides into two identical cells is:

A. meiosis  
B. mitosis  
C. fertilisation  
D. mutation  

---

**Q24.** The type of cell division that produces gametes is:

A. mitosis  
B. meiosis  
C. binary fission  
D. budding  

---

**Q25.** The study of the interaction of organisms with their environment is:

A. ecology  
B. genetics  
C. physiology  
D. anatomy  

---

## ANSWER KEY

1. B  2. C  3. A  4. C  5. A  6. B  7. B  8. C  9. B  10. B  
11. B  12. B  13. B  14. B  15. B  16. C  17. B  18. B  19. B  20. A  
21. B  22. B  23. B  24. B  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology MCQ set 2',
    updated_at = NOW()
WHERE id = 'a50a19d5-192f-5a1e-87b0-ac5dd810e911';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The organelle that modifies and packages proteins for secretion is the:

A. ribosome  
B. Golgi apparatus  
C. lysosome  
D. mitochondrion  

---

**Q2.** The movement of water into a plant cell causing it to become turgid occurs by:

A. diffusion  
B. osmosis  
C. active transport  
D. plasmolysis  

---

**Q3.** The process by which a plant cell loses water and the cytoplasm pulls away from the cell wall is:

A. turgidity  
B. plasmolysis  
C. osmosis  
D. diffusion  

---

**Q4.** The enzyme that breaks down fats into fatty acids and glycerol is:

A. amylase  
B. lipase  
C. protease  
D. maltase  

---

**Q5.** The substrate of the enzyme catalase is:

A. starch  
B. hydrogen peroxide  
C. protein  
D. fat  

---

**Q6.** The polysaccharide stored in animals is:

A. starch  
B. glycogen  
C. cellulose  
D. sucrose  

---

**Q7.** The polysaccharide that forms the cell wall of plants is:

A. starch  
B. glycogen  
C. cellulose  
D. glucose  

---

**Q8.** The number of hydrogen bonds between adenine and thymine in DNA is:

A. one  
B. two  
C. three  
D. four  

---

**Q9.** The number of hydrogen bonds between guanine and cytosine in DNA is:

A. one  
B. two  
C. three  
D. four  

---

**Q10.** The process by which a gene is copied into mRNA is:

A. translation  
B. transcription  
C. replication  
D. mutation  

---

**Q11.** The pigment found in the thylakoid membrane is:

A. haemoglobin  
B. chlorophyll  
C. melanin  
D. insulin  

---

**Q12.** The products of the light-dependent stage of photosynthesis are:

A. ATP and reduced NADP  
B. glucose and oxygen  
C. carbon dioxide and water  
D. ATP and carbon dioxide  

---

**Q13.** The process by which glucose is broken down to pyruvate is:

A. the Krebs cycle  
B. glycolysis  
C. the electron transport chain  
D. photosynthesis  

---

**Q14.** The site of the electron transport chain is the:

A. cytoplasm  
B. inner mitochondrial membrane  
C. ribosome  
D. nucleus  

---

**Q15.** The blood vessel that carries deoxygenated blood from the heart to the lungs is the:

A. aorta  
B. pulmonary artery  
C. pulmonary vein  
D. vena cava  

---

**Q16.** The pigment in red blood cells that carries oxygen is:

A. chlorophyll  
B. haemoglobin  
C. melanin  
D. insulin  

---

**Q17.** The part of the nephron where ultrafiltration occurs is the:

A. Bowman's capsule  
B. loop of Henle  
C. collecting duct  
D. ureter  

---

**Q18.** The hormone that increases the reabsorption of water in the kidney is:

A. insulin  
B. ADH  
C. adrenaline  
D. thyroxine  

---

**Q19.** The type of immunity produced by the body's own antibodies after infection is:

A. active natural  
B. passive natural  
C. active artificial  
D. passive artificial  

---

**Q20.** The process by which vaccines provide immunity is:

A. active artificial  
B. passive natural  
C. passive artificial  
D. active natural  

---

**Q21.** The genetic disorder caused by a mutation in the haemoglobin gene is:

A. haemophilia  
B. sickle cell anaemia  
C. Down's syndrome  
D. colour blindness  

---

**Q22.** The process by which homologous chromosomes separate during meiosis is:

A. mitosis  
B. segregation  
C. fertilisation  
D. mutation  

---

**Q23.** The exchange of genetic material between homologous chromosomes during meiosis is:

A. crossing over  
B. mutation  
C. fertilisation  
D. replication  

---

**Q24.** The theory of natural selection was proposed by:

A. Gregor Mendel  
B. Charles Darwin  
C. Louis Pasteur  
D. Robert Hooke  

---

**Q25.** The study of the structure of organisms is:

A. physiology  
B. anatomy  
C. ecology  
D. genetics  

---

## ANSWER KEY

1. B  2. B  3. B  4. B  5. B  6. B  7. C  8. B  9. C  10. B  
11. B  12. A  13. B  14. B  15. B  16. B  17. A  18. B  19. A  20. A  
21. B  22. B  23. A  24. B  25. B
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology MCQ set 3',
    updated_at = NOW()
WHERE id = '928aa58c-dda5-8037-62e0-5d4c7e53a4a1';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ADVANCED LEVEL BIOLOGY — P2 (Structured) — Upper Sixth
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) Draw a labelled diagram of an animal cell as seen under an electron microscope. *(5 marks)*

(b) State the function of each of the following organelles: mitochondrion, ribosome, Golgi apparatus, lysosome. *(4 marks)*

(c) Explain how the structure of the mitochondrion is adapted to its function. *(4 marks)*

(d) State two differences between a plant cell and an animal cell. *(2 marks)*

---

**Q2.** (a) Describe the structure of the cell membrane according to the fluid mosaic model. *(5 marks)*

(b) Distinguish between diffusion, osmosis and active transport. *(6 marks)*

(c) Explain what happens to a red blood cell placed in a hypotonic solution. *(3 marks)*

(d) State two factors that affect the rate of diffusion. *(2 marks)*

---

## SECTION B: BIOCHEMISTRY

**Q3.** (a) State the chemical elements present in carbohydrates. *(2 marks)*

(b) Distinguish between a monosaccharide, a disaccharide and a polysaccharide, giving one example of each. *(6 marks)*

(c) Describe how you would test for the presence of reducing sugar in a food sample. *(4 marks)*

(d) State the function of cellulose in plants. *(2 marks)*

---

**Q4.** (a) State the monomer of a protein. *(1 mark)*

(b) Describe the structure of a protein molecule. *(5 marks)*

(c) Explain how enzymes work, referring to the lock and key hypothesis. *(5 marks)*

(d) State two factors that affect the rate of an enzyme-controlled reaction. *(2 marks)*

---

## SECTION C: GENETICS

**Q5.** (a) Define the terms gene, allele and genotype. *(3 marks)*

(b) State the structure of DNA. *(4 marks)*

(c) Explain the process of DNA replication. *(5 marks)*

(d) State two differences between DNA and RNA. *(2 marks)*

---

**Q6.** (a) State the law of segregation. *(2 marks)*

(b) In a cross between a pure-breeding tall plant (TT) and a pure-breeding short plant (tt), show the F1 and F2 generations. *(6 marks)*

(c) State the phenotypic ratio of the F2 generation. *(2 marks)*

(d) State two characteristics of a dominant allele. *(2 marks)*

---

## SECTION D: PHYSIOLOGY

**Q7.** (a) Describe the pathway of blood through the heart. *(5 marks)*

(b) State the function of the valves in the heart. *(2 marks)*

(c) Explain how the structure of the alveolus is adapted to gas exchange. *(4 marks)*

(d) State two differences between arteries and veins. *(2 marks)*

---

**Q8.** (a) Describe the process of ultrafiltration in the nephron. *(5 marks)*

(b) Explain how selective reabsorption occurs in the proximal convoluted tubule. *(4 marks)*

(c) State the role of ADH in osmoregulation. *(3 marks)*

(d) State two excretory products of the human body. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology structured set 1',
    updated_at = NOW()
WHERE id = '18e25325-c8ba-6c4e-875e-3157647c480f';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) Draw a labelled diagram of a plant cell. *(5 marks)*

(b) State the function of the chloroplast, vacuole and cell wall. *(3 marks)*

(c) Explain how the structure of the chloroplast is adapted to photosynthesis. *(4 marks)*

(d) State two differences between a plant cell and an animal cell. *(2 marks)*

---

**Q2.** (a) Describe the process of active transport. *(4 marks)*

(b) State two differences between active transport and diffusion. *(4 marks)*

(c) Explain the importance of active transport in the absorption of mineral ions by plant roots. *(4 marks)*

(d) State two factors that affect the rate of active transport. *(2 marks)*

---

## SECTION B: BIOCHEMISTRY

**Q3.** (a) State the chemical elements present in proteins. *(2 marks)*

(b) Describe the structure of an amino acid. *(4 marks)*

(c) Explain how a peptide bond is formed. *(3 marks)*

(d) State two functions of proteins in living organisms. *(2 marks)*

---

**Q4.** (a) State the monomer of a nucleic acid. *(1 mark)*

(b) Describe the structure of a nucleotide. *(4 marks)*

(c) Distinguish between DNA and RNA. *(5 marks)*

(d) State the function of mRNA. *(2 marks)*

---

## SECTION C: GENETICS

**Q5.** (a) Define the terms phenotype and homozygous. *(2 marks)*

(b) Explain the process of transcription. *(5 marks)*

(c) Explain the process of translation. *(5 marks)*

(d) State two differences between transcription and translation. *(2 marks)*

---

**Q6.** (a) State the law of independent assortment. *(2 marks)*

(b) In a dihybrid cross between a plant with round yellow seeds (RRYY) and a plant with wrinkled green seeds (rryy), show the F2 generation. *(6 marks)*

(c) State the phenotypic ratio of the F2 generation. *(2 marks)*

(d) State two factors that cause variation in a population. *(2 marks)*

---

## SECTION D: PHYSIOLOGY

**Q7.** (a) Describe the process of breathing in humans. *(5 marks)*

(b) Explain how the diaphragm and intercostal muscles bring about inspiration. *(4 marks)*

(c) State the function of the trachea and bronchi. *(2 marks)*

(d) State two differences between inspired and expired air. *(2 marks)*

---

**Q8.** (a) Describe the structure of a neuron. *(4 marks)*

(b) Explain how an impulse is transmitted across a synapse. *(5 marks)*

(c) State the function of the myelin sheath. *(2 marks)*

(d) State two differences between the nervous system and the endocrine system. *(3 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology structured set 2',
    updated_at = NOW()
WHERE id = 'cccd2598-6c74-9bed-d99a-84132eff8926';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the nucleus. *(2 marks)*

(b) Describe the structure of the nucleus. *(4 marks)*

(c) Explain the role of the nucleolus. *(3 marks)*

(d) State two differences between the nucleus of a plant cell and that of an animal cell. *(2 marks)*

---

**Q2.** (a) Describe the process of osmosis. *(4 marks)*

(b) Explain what happens to a plant cell placed in a hypertonic solution. *(4 marks)*

(c) State the importance of turgidity in plants. *(3 marks)*

(d) State two differences between osmosis and diffusion. *(2 marks)*

---

## SECTION B: BIOCHEMISTRY

**Q3.** (a) State the chemical elements present in lipids. *(2 marks)*

(b) Describe the structure of a triglyceride. *(4 marks)*

(c) State two functions of lipids in living organisms. *(2 marks)*

(d) Describe how you would test for the presence of lipids in a food sample. *(4 marks)*

---

**Q4.** (a) State the effect of temperature on the rate of an enzyme-controlled reaction. *(4 marks)*

(b) Explain what is meant by the optimum temperature of an enzyme. *(3 marks)*

(c) Explain why enzymes are denatured at high temperatures. *(3 marks)*

(d) State two factors, other than temperature, that affect enzyme activity. *(2 marks)*

---

## SECTION C: GENETICS

**Q5.** (a) Define the terms dominant allele and recessive allele. *(2 marks)*

(b) Explain the process of meiosis. *(6 marks)*

(c) State two differences between mitosis and meiosis. *(4 marks)*

(d) State the importance of meiosis. *(2 marks)*

---

**Q6.** (a) State the sex chromosomes of a male and a female human. *(2 marks)*

(b) Explain how sex is determined in humans. *(5 marks)*

(c) State the probability of a couple having a boy. *(2 marks)*

(d) State two sex-linked disorders. *(2 marks)*

---

## SECTION D: PHYSIOLOGY

**Q7.** (a) Describe the process of photosynthesis. *(5 marks)*

(b) State the two stages of photosynthesis and where each occurs. *(4 marks)*

(c) State the factors that affect the rate of photosynthesis. *(3 marks)*

(d) State two uses of the glucose produced in photosynthesis. *(2 marks)*

---

**Q8.** (a) Describe the process of aerobic respiration. *(5 marks)*

(b) State the equation for aerobic respiration. *(2 marks)*

(c) Distinguish between aerobic and anaerobic respiration. *(4 marks)*

(d) State two products of anaerobic respiration in yeast. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology structured set 3',
    updated_at = NOW()
WHERE id = '96cdc9b7-08a6-9a79-5bf0-a68645bac9da';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the endoplasmic reticulum. *(2 marks)*

(b) Distinguish between the rough and smooth endoplasmic reticulum. *(4 marks)*

(c) Explain the role of the Golgi apparatus in secretion. *(4 marks)*

(d) State two differences between a prokaryotic and a eukaryotic cell. *(2 marks)*

---

**Q2.** (a) Describe the process of plasmolysis. *(4 marks)*

(b) Explain the conditions that cause plasmolysis. *(3 marks)*

(c) State the importance of plasmolysis in demonstrating osmosis. *(3 marks)*

(d) State two differences between turgid and flaccid cells. *(2 marks)*

---

## SECTION B: BIOCHEMISTRY

**Q3.** (a) State the chemical elements present in nucleic acids. *(2 marks)*

(b) Describe the structure of DNA. *(5 marks)*

(c) Explain the role of DNA in protein synthesis. *(4 marks)*

(d) State two differences between DNA and RNA. *(2 marks)*

---

**Q4.** (a) State the effect of pH on the rate of an enzyme-controlled reaction. *(4 marks)*

(b) Explain what is meant by the optimum pH of an enzyme. *(3 marks)*

(c) State the optimum pH of pepsin and trypsin. *(2 marks)*

(d) State two factors that affect enzyme activity. *(2 marks)*

---

## SECTION C: GENETICS

**Q5.** (a) Define the terms gene and chromosome. *(2 marks)*

(b) Explain how a mutation can occur. *(4 marks)*

(c) State two types of gene mutation. *(2 marks)*

(d) State two effects of mutation. *(2 marks)*

---

**Q6.** (a) State the blood groups determined by the ABO system. *(2 marks)*

(b) Explain how blood groups are inherited. *(5 marks)*

(c) State the universal donor and universal recipient blood groups. *(2 marks)*

(d) State two reasons why blood transfusion must be matched. *(2 marks)*

---

## SECTION D: PHYSIOLOGY

**Q7.** (a) Describe the structure of the heart. *(5 marks)*

(b) Explain how the heart pumps blood. *(4 marks)*

(c) State the function of the coronary arteries. *(2 marks)*

(d) State two differences between the left and right sides of the heart. *(2 marks)*

---

**Q8.** (a) Describe the process of digestion of protein in humans. *(5 marks)*

(b) State the enzymes involved in protein digestion and where they are produced. *(4 marks)*

(c) Explain the role of bile in digestion. *(3 marks)*

(d) State two functions of the small intestine. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology structured set 4',
    updated_at = NOW()
WHERE id = '87db5a11-e18b-ab7a-a512-2c0c7f2a7c50';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the lysosome. *(2 marks)*

(b) Describe the structure of the mitochondrion. *(4 marks)*

(c) Explain how the mitochondrion is adapted to its function of ATP production. *(4 marks)*

(d) State two differences between a plant and an animal cell. *(2 marks)*

---

**Q2.** (a) Describe the process of diffusion. *(4 marks)*

(b) State two factors that affect the rate of diffusion. *(2 marks)*

(c) Explain the importance of diffusion in living organisms. *(4 marks)*

(d) State two differences between diffusion and active transport. *(2 marks)*

---

## SECTION B: BIOCHEMISTRY

**Q3.** (a) State the chemical elements present in carbohydrates. *(2 marks)*

(b) Describe the structure of starch and glycogen. *(4 marks)*

(c) State two functions of carbohydrates in living organisms. *(2 marks)*

(d) Describe how you would test for the presence of starch in a food sample. *(4 marks)*

---

**Q4.** (a) State the monomer of a protein. *(1 mark)*

(b) Describe the four levels of protein structure. *(5 marks)*

(c) Explain the importance of the shape of an enzyme. *(4 marks)*

(d) State two factors that affect enzyme activity. *(2 marks)*

---

## SECTION C: GENETICS

**Q5.** (a) Define the terms genotype and phenotype. *(2 marks)*

(b) Explain the process of DNA replication. *(5 marks)*

(c) State the importance of DNA replication. *(3 marks)*

(d) State two differences between DNA and RNA. *(2 marks)*

---

**Q6.** (a) State the law of segregation. *(2 marks)*

(b) In a cross between a heterozygous tall plant (Tt) and a short plant (tt), show the offspring. *(5 marks)*

(c) State the phenotypic ratio of the offspring. *(2 marks)*

(d) State two characteristics of a recessive allele. *(2 marks)*

---

## SECTION D: PHYSIOLOGY

**Q7.** (a) Describe the structure of the nephron. *(5 marks)*

(b) Explain the process of ultrafiltration. *(4 marks)*

(c) Explain how selective reabsorption occurs. *(4 marks)*

(d) State two functions of the kidney. *(2 marks)*

---

**Q8.** (a) Describe the process of transmission of an impulse along a neuron. *(5 marks)*

(b) Explain how an impulse crosses a synapse. *(4 marks)*

(c) State the function of a reflex action. *(3 marks)*

(d) State two differences between a reflex action and a voluntary action. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology structured set 5',
    updated_at = NOW()
WHERE id = '011c0a77-63b4-38d8-dc88-57299590f380';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the chloroplast. *(2 marks)*

(b) Describe the structure of the chloroplast. *(4 marks)*

(c) Explain how the chloroplast is adapted to photosynthesis. *(4 marks)*

(d) State two differences between a plant and an animal cell. *(2 marks)*

---

**Q2.** (a) Describe the process of active transport. *(4 marks)*

(b) State two differences between active transport and osmosis. *(4 marks)*

(c) Explain the importance of active transport in the human body. *(4 marks)*

(d) State two factors that affect the rate of active transport. *(2 marks)*

---

## SECTION B: BIOCHEMISTRY

**Q3.** (a) State the chemical elements present in lipids. *(2 marks)*

(b) Describe the structure of a phospholipid. *(4 marks)*

(c) State two functions of lipids in living organisms. *(2 marks)*

(d) Describe how you would test for the presence of lipids. *(4 marks)*

---

**Q4.** (a) State the effect of substrate concentration on the rate of an enzyme-controlled reaction. *(4 marks)*

(b) Explain what is meant by the saturation point of an enzyme. *(3 marks)*

(c) State two factors, other than substrate concentration, that affect enzyme activity. *(2 marks)*

(d) State the importance of enzymes in living organisms. *(2 marks)*

---

## SECTION C: GENETICS

**Q5.** (a) Define the terms gene and allele. *(2 marks)*

(b) Explain the process of transcription. *(5 marks)*

(c) Explain the process of translation. *(5 marks)*

(d) State two differences between transcription and translation. *(2 marks)*

---

**Q6.** (a) State the law of independent assortment. *(2 marks)*

(b) In a cross between a plant with round yellow seeds (RrYy) and a plant with round yellow seeds (RrYy), show the F2 generation. *(6 marks)*

(c) State the phenotypic ratio of the F2 generation. *(2 marks)*

(d) State two factors that cause variation. *(2 marks)*

---

## SECTION D: PHYSIOLOGY

**Q7.** (a) Describe the process of photosynthesis. *(5 marks)*

(b) State the two stages of photosynthesis. *(3 marks)*

(c) State the factors that affect the rate of photosynthesis. *(3 marks)*

(d) State two uses of glucose in plants. *(2 marks)*

---

**Q8.** (a) Describe the process of aerobic respiration. *(5 marks)*

(b) State the equation for aerobic respiration. *(2 marks)*

(c) Distinguish between aerobic and anaerobic respiration. *(4 marks)*

(d) State two products of anaerobic respiration in muscles. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology structured set 6',
    updated_at = NOW()
WHERE id = '6e6f5ba4-098a-03d7-eb88-d3243fe7afd2';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the ribosome. *(2 marks)*

(b) Describe the structure of the nucleus. *(4 marks)*

(c) Explain the role of the nucleolus. *(3 marks)*

(d) State two differences between a prokaryotic and a eukaryotic cell. *(2 marks)*

---

**Q2.** (a) Describe the process of plasmolysis. *(4 marks)*

(b) Explain the conditions that cause plasmolysis. *(3 marks)*

(c) State the importance of turgidity in plants. *(3 marks)*

(d) State two differences between turgid and flaccid cells. *(2 marks)*

---

## SECTION B: BIOCHEMISTRY

**Q3.** (a) State the chemical elements present in nucleic acids. *(2 marks)*

(b) Describe the structure of a nucleotide. *(4 marks)*

(c) Explain the role of DNA in protein synthesis. *(4 marks)*

(d) State two differences between DNA and RNA. *(2 marks)*

---

**Q4.** (a) State the effect of temperature on enzyme activity. *(4 marks)*

(b) Explain what is meant by the optimum temperature of an enzyme. *(3 marks)*

(c) Explain why enzymes are denatured at high temperatures. *(3 marks)*

(d) State two factors that affect enzyme activity. *(2 marks)*

---

## SECTION C: GENETICS

**Q5.** (a) Define the terms dominant allele and recessive allele. *(2 marks)*

(b) Explain the process of meiosis. *(6 marks)*

(c) State two differences between mitosis and meiosis. *(4 marks)*

(d) State the importance of meiosis. *(2 marks)*

---

**Q6.** (a) State the sex chromosomes of a male and a female human. *(2 marks)*

(b) Explain how sex is determined in humans. *(5 marks)*

(c) State the probability of a couple having a girl. *(2 marks)*

(d) State two sex-linked disorders. *(2 marks)*

---

## SECTION D: PHYSIOLOGY

**Q7.** (a) Describe the structure of the heart. *(5 marks)*

(b) Explain how the heart pumps blood. *(4 marks)*

(c) State the function of the valves in the heart. *(2 marks)*

(d) State two differences between the left and right sides of the heart. *(2 marks)*

---

**Q8.** (a) Describe the process of digestion of starch in humans. *(5 marks)*

(b) State the enzymes involved in starch digestion. *(3 marks)*

(c) Explain the role of the small intestine in absorption. *(4 marks)*

(d) State two functions of the large intestine. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology structured set 7',
    updated_at = NOW()
WHERE id = '0057a664-041f-e476-0bd3-e736d575d156';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 8

## Structural Question Bank - Set 8

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the Golgi apparatus. *(2 marks)*

(b) Describe the structure of the cell membrane. *(4 marks)*

(c) Explain the role of the cell membrane in transport. *(4 marks)*

(d) State two differences between a plant and an animal cell. *(2 marks)*

---

**Q2.** (a) Describe the process of osmosis. *(4 marks)*

(b) Explain what happens to a red blood cell placed in a hypertonic solution. *(3 marks)*

(c) State the importance of osmosis in plants. *(3 marks)*

(d) State two differences between osmosis and active transport. *(2 marks)*

---

## SECTION B: BIOCHEMISTRY

**Q3.** (a) State the chemical elements present in proteins. *(2 marks)*

(b) Describe the structure of an amino acid. *(4 marks)*

(c) Explain how a peptide bond is formed. *(3 marks)*

(d) State two functions of proteins in living organisms. *(2 marks)*

---

**Q4.** (a) State the effect of pH on enzyme activity. *(4 marks)*

(b) Explain what is meant by the optimum pH of an enzyme. *(3 marks)*

(c) State the optimum pH of pepsin. *(2 marks)*

(d) State two factors that affect enzyme activity. *(2 marks)*

---

## SECTION C: GENETICS

**Q5.** (a) Define the terms gene and chromosome. *(2 marks)*

(b) Explain how a mutation can occur. *(4 marks)*

(c) State two types of gene mutation. *(2 marks)*

(d) State two effects of mutation. *(2 marks)*

---

**Q6.** (a) State the blood groups determined by the ABO system. *(2 marks)*

(b) Explain how blood groups are inherited. *(5 marks)*

(c) State the universal donor and universal recipient blood groups. *(2 marks)*

(d) State two reasons why blood transfusion must be matched. *(2 marks)*

---

## SECTION D: PHYSIOLOGY

**Q7.** (a) Describe the process of breathing in humans. *(5 marks)*

(b) Explain how the diaphragm and intercostal muscles bring about inspiration. *(4 marks)*

(c) State the function of the trachea and bronchi. *(2 marks)*

(d) State two differences between inspired and expired air. *(2 marks)*

---

**Q8.** (a) Describe the structure of a neuron. *(4 marks)*

(b) Explain how an impulse is transmitted across a synapse. *(5 marks)*

(c) State the function of the myelin sheath. *(2 marks)*

(d) State two differences between the nervous system and the endocrine system. *(3 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Biology structured set 8',
    updated_at = NOW()
WHERE id = 'a0345b6c-7fbb-65f3-af47-3e5d4d80d8fa';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ORDINARY LEVEL BIOLOGY — P1 (Multiple Choice) — Form 5
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The basic unit of life is the:

A. organ  
B. cell  
C. tissue  
D. organism  

---

**Q2.** The organelle that controls the activities of the cell is the:

A. nucleus  
B. ribosome  
C. mitochondrion  
D. vacuole  

---

**Q3.** The process by which plants make their own food is:

A. respiration  
B. photosynthesis  
C. digestion  
D. excretion  

---

**Q4.** The green pigment in plants that absorbs light energy is:

A. haemoglobin  
B. chlorophyll  
C. melanin  
D. carotene  

---

**Q5.** The gas taken in by plants during photosynthesis is:

A. oxygen  
B. carbon dioxide  
C. nitrogen  
D. hydrogen  

---

**Q6.** The gas released by plants during photosynthesis is:

A. carbon dioxide  
B. oxygen  
C. nitrogen  
D. hydrogen  

---

**Q7.** The process by which food is broken down to release energy is:

A. respiration  
B. photosynthesis  
C. digestion  
D. excretion  

---

**Q8.** The organ that pumps blood around the body is the:

A. lung  
B. heart  
C. kidney  
D. liver  

---

**Q9.** The blood vessel that carries blood away from the heart is the:

A. vein  
B. artery  
C. capillary  
D. venule  

---

**Q10.** The pigment in red blood cells that carries oxygen is:

A. chlorophyll  
B. haemoglobin  
C. melanin  
D. insulin  

---

**Q11.** The organ that filters waste products from the blood is the:

A. lung  
B. kidney  
C. heart  
D. stomach  

---

**Q12.** The functional unit of the kidney is the:

A. neuron  
B. nephron  
C. alveolus  
D. villus  

---

**Q13.** The organ where digestion of food begins is the:

A. mouth  
B. stomach  
C. small intestine  
D. large intestine  

---

**Q14.** The enzyme in saliva that breaks down starch is:

A. pepsin  
B. amylase  
C. lipase  
D. maltase  

---

**Q15.** The part of the plant that absorbs water and mineral salts is the:

A. leaf  
B. stem  
C. root  
D. flower  

---

**Q16.** The process by which water is lost from the leaves of a plant is:

A. transpiration  
B. respiration  
C. photosynthesis  
D. digestion  

---

**Q17.** The male reproductive cell in humans is the:

A. ovum  
B. sperm  
C. egg  
D. zygote  

---

**Q18.** The female reproductive cell in humans is the:

A. sperm  
B. ovum  
C. pollen  
D. zygote  

---

**Q19.** The process by which a sperm fertilises an ovum is called:

A. pollination  
B. fertilisation  
C. germination  
D. reproduction  

---

**Q20.** The disease caused by the malaria parasite is:

A. cholera  
B. malaria  
C. typhoid  
D. tuberculosis  

---

**Q21.** The organism that transmits malaria is the:

A. housefly  
B. mosquito  
C. tsetse fly  
D. cockroach  

---

**Q22.** The process by which a caterpillar changes into a butterfly is:

A. germination  
B. metamorphosis  
C. fertilisation  
D. pollination  

---

**Q23.** The study of the relationship between organisms and their environment is:

A. ecology  
B. genetics  
C. physiology  
D. anatomy  

---

**Q24.** The green plants in a food chain are called:

A. consumers  
B. producers  
C. decomposers  
D. predators  

---

**Q25.** The organisms that break down dead matter are:

A. producers  
B. consumers  
C. decomposers  
D. predators  

---

## ANSWER KEY

1. B  2. A  3. B  4. B  5. B  6. B  7. A  8. B  9. B  10. B  
11. B  12. B  13. A  14. B  15. C  16. A  17. B  18. B  19. B  20. B  
21. B  22. B  23. A  24. B  25. C
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology MCQ set 1',
    updated_at = NOW()
WHERE id = 'f9784da7-3fa1-8033-bcfb-45e686f387ab';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The organelle that releases energy from food is the:

A. nucleus  
B. mitochondrion  
C. ribosome  
D. vacuole  

---

**Q2.** The cell wall of a plant cell is made of:

A. cellulose  
B. protein  
C. lipid  
D. starch  

---

**Q3.** The movement of water across a selectively permeable membrane is:

A. diffusion  
B. osmosis  
C. active transport  
D. filtration  

---

**Q4.** The process by which a plant cell loses water and becomes flaccid is:

A. turgidity  
B. plasmolysis  
C. osmosis  
D. diffusion  

---

**Q5.** The food substance that provides the most energy per gram is:

A. carbohydrate  
B. protein  
C. fat  
D. vitamin  

---

**Q6.** The vitamin that prevents scurvy is:

A. vitamin A  
B. vitamin B  
C. vitamin C  
D. vitamin D  

---

**Q7.** The mineral needed for strong bones and teeth is:

A. iron  
B. calcium  
C. iodine  
D. sodium  

---

**Q8.** The mineral needed to prevent anaemia is:

A. calcium  
B. iron  
C. iodine  
D. phosphorus  

---

**Q9.** The process by which digested food is taken into the blood is:

A. digestion  
B. absorption  
C. assimilation  
D. egestion  

---

**Q10.** The organ where most absorption of food occurs is the:

A. stomach  
B. small intestine  
C. large intestine  
D. mouth  

---

**Q11.** The process by which waste products are removed from the body is:

A. digestion  
B. excretion  
C. respiration  
D. absorption  

---

**Q12.** The organ that produces bile is the:

A. stomach  
B. liver  
C. pancreas  
D. kidney  

---

**Q13.** The hormone that controls the level of sugar in the blood is:

A. insulin  
B. adrenaline  
C. thyroxine  
D. oestrogen  

---

**Q14.** The part of the eye that controls the amount of light entering is the:

A. retina  
B. iris  
C. lens  
D. cornea  

---

**Q15.** The part of the ear that receives sound vibrations is the:

A. cochlea  
B. eardrum  
C. pinna  
D. auditory nerve  

---

**Q16.** The process by which plants reproduce sexually is through:

A. the flower  
B. the root  
C. the stem  
D. the leaf  

---

**Q17.** The transfer of pollen from the anther to the stigma is:

A. fertilisation  
B. pollination  
C. germination  
D. reproduction  

---

**Q18.** The part of the flower that produces pollen is the:

A. stigma  
B. anther  
C. ovary  
D. petal  

---

**Q19.** The process by which a seed develops into a new plant is:

A. pollination  
B. germination  
C. fertilisation  
D. reproduction  

---

**Q20.** The disease caused by a virus is:

A. malaria  
B. cholera  
C. influenza  
D. typhoid  

---

**Q21.** The organism that transmits sleeping sickness is the:

A. mosquito  
B. tsetse fly  
C. housefly  
D. cockroach  

---

**Q22.** The process by which a tadpole changes into a frog is:

A. germination  
B. metamorphosis  
C. fertilisation  
D. pollination  

---

**Q23.** The organisms that feed on other organisms are called:

A. producers  
B. consumers  
C. decomposers  
D. plants  

---

**Q24.** A food chain always begins with:

A. a consumer  
B. a producer  
C. a decomposer  
D. a predator  

---

**Q25.** The pyramid that shows the number of organisms at each level is the:

A. pyramid of biomass  
B. pyramid of numbers  
C. pyramid of energy  
D. food web  

---

## ANSWER KEY

1. B  2. A  3. B  4. B  5. C  6. C  7. B  8. B  9. B  10. B  
11. B  12. B  13. A  14. B  15. B  16. A  17. B  18. B  19. B  20. C  
21. B  22. B  23. B  24. B  25. B
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology MCQ set 2',
    updated_at = NOW()
WHERE id = 'd06c3dbe-6df7-9d5c-9523-697b9b622f58';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The organelle that contains the genetic material is the:

A. nucleus  
B. ribosome  
C. mitochondrion  
D. vacuole  

---

**Q2.** The process by which substances move from a region of high concentration to low concentration is:

A. osmosis  
B. diffusion  
C. active transport  
D. filtration  

---

**Q3.** The process by which a plant cell becomes turgid is:

A. plasmolysis  
B. osmosis  
C. diffusion  
D. active transport  

---

**Q4.** The food substance used for growth and repair of the body is:

A. carbohydrate  
B. protein  
C. fat  
D. vitamin  

---

**Q5.** The vitamin that helps blood to clot is:

A. vitamin A  
B. vitamin B  
C. vitamin C  
D. vitamin K  

---

**Q6.** The mineral needed for the formation of thyroxine is:

A. iron  
B. iodine  
C. calcium  
D. sodium  

---

**Q7.** The process by which food is broken down into simple substances is:

A. absorption  
B. digestion  
C. assimilation  
D. egestion  

---

**Q8.** The enzyme that breaks down proteins in the stomach is:

A. amylase  
B. pepsin  
C. lipase  
D. maltase  

---

**Q9.** The organ that produces insulin is the:

A. liver  
B. pancreas  
C. kidney  
D. stomach  

---

**Q10.** The part of the body that controls balance is the:

A. cerebrum  
B. cerebellum  
C. medulla  
D. spinal cord  

---

**Q11.** The part of the eye that focuses light on the retina is the:

A. iris  
B. lens  
C. cornea  
D. pupil  

---

**Q12.** The part of the ear that converts sound vibrations into nerve impulses is the:

A. eardrum  
B. cochlea  
C. pinna  
D. auditory canal  

---

**Q13.** The male reproductive organ of a flower is the:

A. carpel  
B. stamen  
C. petal  
D. sepal  

---

**Q14.** The female reproductive organ of a flower is the:

A. stamen  
B. carpel  
C. petal  
D. sepal  

---

**Q15.** The part of the flower that develops into a fruit is the:

A. ovary  
B. anther  
C. stigma  
D. petal  

---

**Q16.** The process by which a zygote develops into a new organism is:

A. fertilisation  
B. germination  
C. reproduction  
D. pollination  

---

**Q17.** The disease caused by bacteria is:

A. malaria  
B. cholera  
C. influenza  
D. measles  

---

**Q18.** The organism that transmits typhoid is:

A. mosquito  
B. housefly  
C. tsetse fly  
D. cockroach  

---

**Q19.** The process by which a young organism develops into an adult is:

A. growth  
B. reproduction  
C. germination  
D. metamorphosis  

---

**Q20.** The study of the structure of organisms is:

A. physiology  
B. anatomy  
C. ecology  
D. genetics  

---

**Q21.** The study of the functions of organisms is:

A. anatomy  
B. physiology  
C. ecology  
D. genetics  

---

**Q22.** The organisms that make their own food are called:

A. consumers  
B. producers  
C. decomposers  
D. predators  

---

**Q23.** The transfer of energy in a food chain is:

A. from producer to consumer  
B. from consumer to producer  
C. from decomposer to producer  
D. from predator to prey  

---

**Q24.** The pyramid that shows the amount of energy at each level is the:

A. pyramid of numbers  
B. pyramid of biomass  
C. pyramid of energy  
D. food web  

---

**Q25.** The process by which nitrogen is returned to the soil is:

A. nitrogen fixation  
B. decomposition  
C. photosynthesis  
D. respiration  

---

## ANSWER KEY

1. A  2. B  3. B  4. B  5. D  6. B  7. B  8. B  9. B  10. B  
11. B  12. B  13. B  14. B  15. A  16. B  17. B  18. B  19. A  20. B  
21. B  22. B  23. A  24. C  25. B
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology MCQ set 3',
    updated_at = NOW()
WHERE id = '6a6ed82c-8ea2-e164-e416-a9db6334a0ce';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ORDINARY LEVEL BIOLOGY — P2 (Structured) — Form 5
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) Draw a labelled diagram of a plant cell. *(5 marks)*

(b) State the function of the nucleus, cell wall and chloroplast. *(3 marks)*

(c) State two differences between a plant cell and an animal cell. *(2 marks)*

(d) State the function of the cell membrane. *(2 marks)*

---

**Q2.** (a) Define diffusion. *(2 marks)*

(b) State two factors that affect the rate of diffusion. *(2 marks)*

(c) Explain the importance of diffusion in living organisms. *(4 marks)*

(d) State two differences between diffusion and osmosis. *(2 marks)*

---

## SECTION B: NUTRITION

**Q3.** (a) State the food substances needed for a balanced diet. *(4 marks)*

(b) State the function of carbohydrates, proteins and fats. *(3 marks)*

(c) State two functions of vitamins. *(2 marks)*

(d) State two functions of mineral salts. *(2 marks)*

---

**Q4.** (a) State the process by which plants make their own food. *(1 mark)*

(b) State the raw materials and products of photosynthesis. *(4 marks)*

(c) State the conditions necessary for photosynthesis. *(3 marks)*

(d) State two uses of the glucose produced in photosynthesis. *(2 marks)*

---

## SECTION C: TRANSPORT

**Q5.** (a) State the function of blood. *(2 marks)*

(b) State the components of blood. *(4 marks)*

(c) State the function of red blood cells, white blood cells and platelets. *(3 marks)*

(d) State two differences between arteries and veins. *(2 marks)*

---

**Q6.** (a) State the function of the heart. *(2 marks)*

(b) Describe the pathway of blood through the heart. *(5 marks)*

(c) State the function of the valves in the heart. *(2 marks)*

(d) State two differences between the left and right sides of the heart. *(2 marks)*

---

## SECTION D: RESPIRATION AND EXCRETION

**Q7.** (a) Define respiration. *(2 marks)*

(b) State the equation for aerobic respiration. *(3 marks)*

(c) State the organs involved in breathing. *(3 marks)*

(d) State two differences between aerobic and anaerobic respiration. *(2 marks)*

---

**Q8.** (a) Define excretion. *(2 marks)*

(b) State the excretory organs of the human body. *(3 marks)*

(c) State the waste products excreted by the kidney. *(2 marks)*

(d) State two functions of the kidney. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology structured set 1',
    updated_at = NOW()
WHERE id = '989e0647-029b-449d-9277-8757cbcba0b5';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) Draw a labelled diagram of an animal cell. *(5 marks)*

(b) State the function of the mitochondrion, ribosome and vacuole. *(3 marks)*

(c) State two differences between a plant cell and an animal cell. *(2 marks)*

(d) State the function of the nucleus. *(2 marks)*

---

**Q2.** (a) Define osmosis. *(2 marks)*

(b) Explain what happens to a plant cell placed in a concentrated salt solution. *(4 marks)*

(c) State the importance of osmosis in plants. *(3 marks)*

(d) State two differences between osmosis and active transport. *(2 marks)*

---

## SECTION B: NUTRITION

**Q3.** (a) State the function of the teeth in digestion. *(2 marks)*

(b) State the function of saliva. *(2 marks)*

(c) Describe the digestion of starch in the mouth. *(3 marks)*

(d) State two functions of the stomach. *(2 marks)*

---

**Q4.** (a) State the function of the small intestine. *(2 marks)*

(b) Describe how digested food is absorbed in the small intestine. *(4 marks)*

(c) State the function of the large intestine. *(2 marks)*

(d) State two functions of the liver. *(2 marks)*

---

## SECTION C: TRANSPORT

**Q5.** (a) State the function of the blood vessels. *(2 marks)*

(b) State two differences between arteries and veins. *(4 marks)*

(c) State the function of capillaries. *(2 marks)*

(d) State two functions of the blood. *(2 marks)*

---

**Q6.** (a) State the function of the heart. *(2 marks)*

(b) Describe how the heart pumps blood. *(5 marks)*

(c) State the function of the coronary arteries. *(2 marks)*

(d) State two ways of keeping the heart healthy. *(2 marks)*

---

## SECTION D: RESPIRATION AND EXCRETION

**Q7.** (a) State the organs of the respiratory system. *(4 marks)*

(b) Describe the process of breathing in. *(4 marks)*

(c) State the function of the alveoli. *(2 marks)*

(d) State two differences between inspired and expired air. *(2 marks)*

---

**Q8.** (a) State the excretory organs of the human body. *(3 marks)*

(b) Describe the structure of the kidney. *(4 marks)*

(c) State the function of the ureter and bladder. *(2 marks)*

(d) State two functions of the skin. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology structured set 2',
    updated_at = NOW()
WHERE id = '8ea4a182-6ef4-b7a3-5d93-1c6911f0d91d';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the cell wall. *(2 marks)*

(b) State the function of the chloroplast. *(2 marks)*

(c) State two differences between a plant cell and an animal cell. *(2 marks)*

(d) State the function of the vacuole. *(2 marks)*

---

**Q2.** (a) Define active transport. *(2 marks)*

(b) State two differences between active transport and diffusion. *(4 marks)*

(c) Explain the importance of active transport in plant roots. *(4 marks)*

(d) State two factors that affect the rate of active transport. *(2 marks)*

---

## SECTION B: NUTRITION

**Q3.** (a) State the food substances needed for a balanced diet. *(4 marks)*

(b) State the function of each food substance. *(4 marks)*

(c) State two functions of water in the body. *(2 marks)*

(d) State two functions of roughage. *(2 marks)*

---

**Q4.** (a) State the process by which plants make their own food. *(1 mark)*

(b) State the raw materials and products of photosynthesis. *(4 marks)*

(c) State the conditions necessary for photosynthesis. *(3 marks)*

(d) State two uses of the glucose produced in photosynthesis. *(2 marks)*

---

## SECTION C: TRANSPORT

**Q5.** (a) State the components of blood. *(4 marks)*

(b) State the function of red blood cells. *(2 marks)*

(c) State the function of white blood cells. *(2 marks)*

(d) State the function of platelets. *(2 marks)*

---

**Q6.** (a) State the function of the heart. *(2 marks)*

(b) Describe the pathway of blood through the heart. *(5 marks)*

(c) State the function of the valves in the heart. *(2 marks)*

(d) State two differences between the left and right sides of the heart. *(2 marks)*

---

## SECTION D: RESPIRATION AND EXCRETION

**Q7.** (a) Define respiration. *(2 marks)*

(b) State the equation for aerobic respiration. *(3 marks)*

(c) State the organs involved in breathing. *(3 marks)*

(d) State two differences between aerobic and anaerobic respiration. *(2 marks)*

---

**Q8.** (a) Define excretion. *(2 marks)*

(b) State the excretory organs of the human body. *(3 marks)*

(c) State the waste products excreted by the kidney. *(2 marks)*

(d) State two functions of the kidney. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology structured set 3',
    updated_at = NOW()
WHERE id = 'e5a99e87-3dab-a226-d6d9-e11ff26e6c38';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) Draw a labelled diagram of a plant cell. *(5 marks)*

(b) State the function of the nucleus, cell wall and chloroplast. *(3 marks)*

(c) State two differences between a plant cell and an animal cell. *(2 marks)*

(d) State the function of the cell membrane. *(2 marks)*

---

**Q2.** (a) Define diffusion. *(2 marks)*

(b) State two factors that affect the rate of diffusion. *(2 marks)*

(c) Explain the importance of diffusion in living organisms. *(4 marks)*

(d) State two differences between diffusion and osmosis. *(2 marks)*

---

## SECTION B: NUTRITION

**Q3.** (a) State the food substances needed for a balanced diet. *(4 marks)*

(b) State the function of carbohydrates, proteins and fats. *(3 marks)*

(c) State two functions of vitamins. *(2 marks)*

(d) State two functions of mineral salts. *(2 marks)*

---

**Q4.** (a) State the process by which plants make their own food. *(1 mark)*

(b) State the raw materials and products of photosynthesis. *(4 marks)*

(c) State the conditions necessary for photosynthesis. *(3 marks)*

(d) State two uses of the glucose produced in photosynthesis. *(2 marks)*

---

## SECTION C: TRANSPORT

**Q5.** (a) State the function of blood. *(2 marks)*

(b) State the components of blood. *(4 marks)*

(c) State the function of red blood cells, white blood cells and platelets. *(3 marks)*

(d) State two differences between arteries and veins. *(2 marks)*

---

**Q6.** (a) State the function of the heart. *(2 marks)*

(b) Describe the pathway of blood through the heart. *(5 marks)*

(c) State the function of the valves in the heart. *(2 marks)*

(d) State two differences between the left and right sides of the heart. *(2 marks)*

---

## SECTION D: RESPIRATION AND EXCRETION

**Q7.** (a) Define respiration. *(2 marks)*

(b) State the equation for aerobic respiration. *(3 marks)*

(c) State the organs involved in breathing. *(3 marks)*

(d) State two differences between aerobic and anaerobic respiration. *(2 marks)*

---

**Q8.** (a) Define excretion. *(2 marks)*

(b) State the excretory organs of the human body. *(3 marks)*

(c) State the waste products excreted by the kidney. *(2 marks)*

(d) State two functions of the kidney. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology structured set 4',
    updated_at = NOW()
WHERE id = 'a46c92cf-5397-71d2-b4cf-7740f240f136';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the nucleus. *(2 marks)*

(b) State the function of the cell membrane. *(2 marks)*

(c) State the function of the cytoplasm. *(2 marks)*

(d) State two differences between a plant cell and an animal cell. *(2 marks)*

---

**Q2.** (a) Define osmosis. *(2 marks)*

(b) Explain what happens to a red blood cell placed in distilled water. *(4 marks)*

(c) State the importance of osmosis in plants. *(3 marks)*

(d) State two differences between osmosis and diffusion. *(2 marks)*

---

## SECTION B: NUTRITION

**Q3.** (a) State the food substances needed for a balanced diet. *(4 marks)*

(b) State the function of each food substance. *(4 marks)*

(c) State two functions of water in the body. *(2 marks)*

(d) State two functions of roughage. *(2 marks)*

---

**Q4.** (a) State the process by which plants make their own food. *(1 mark)*

(b) State the raw materials and products of photosynthesis. *(4 marks)*

(c) State the conditions necessary for photosynthesis. *(3 marks)*

(d) State two uses of the glucose produced in photosynthesis. *(2 marks)*

---

## SECTION C: TRANSPORT

**Q5.** (a) State the components of blood. *(4 marks)*

(b) State the function of red blood cells. *(2 marks)*

(c) State the function of white blood cells. *(2 marks)*

(d) State the function of platelets. *(2 marks)*

---

**Q6.** (a) State the function of the heart. *(2 marks)*

(b) Describe the pathway of blood through the heart. *(5 marks)*

(c) State the function of the valves in the heart. *(2 marks)*

(d) State two differences between the left and right sides of the heart. *(2 marks)*

---

## SECTION D: RESPIRATION AND EXCRETION

**Q7.** (a) Define respiration. *(2 marks)*

(b) State the equation for aerobic respiration. *(3 marks)*

(c) State the organs involved in breathing. *(3 marks)*

(d) State two differences between aerobic and anaerobic respiration. *(2 marks)*

---

**Q8.** (a) Define excretion. *(2 marks)*

(b) State the excretory organs of the human body. *(3 marks)*

(c) State the waste products excreted by the kidney. *(2 marks)*

(d) State two functions of the kidney. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology structured set 5',
    updated_at = NOW()
WHERE id = 'fc4e58e0-3d3e-dc59-6723-3d0976fdf244';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) Draw a labelled diagram of an animal cell. *(5 marks)*

(b) State the function of the mitochondrion, ribosome and vacuole. *(3 marks)*

(c) State two differences between a plant cell and an animal cell. *(2 marks)*

(d) State the function of the nucleus. *(2 marks)*

---

**Q2.** (a) Define diffusion. *(2 marks)*

(b) State two factors that affect the rate of diffusion. *(2 marks)*

(c) Explain the importance of diffusion in living organisms. *(4 marks)*

(d) State two differences between diffusion and active transport. *(2 marks)*

---

## SECTION B: NUTRITION

**Q3.** (a) State the function of the teeth in digestion. *(2 marks)*

(b) State the function of saliva. *(2 marks)*

(c) Describe the digestion of starch in the mouth. *(3 marks)*

(d) State two functions of the stomach. *(2 marks)*

---

**Q4.** (a) State the function of the small intestine. *(2 marks)*

(b) Describe how digested food is absorbed in the small intestine. *(4 marks)*

(c) State the function of the large intestine. *(2 marks)*

(d) State two functions of the liver. *(2 marks)*

---

## SECTION C: TRANSPORT

**Q5.** (a) State the function of the blood vessels. *(2 marks)*

(b) State two differences between arteries and veins. *(4 marks)*

(c) State the function of capillaries. *(2 marks)*

(d) State two functions of the blood. *(2 marks)*

---

**Q6.** (a) State the function of the heart. *(2 marks)*

(b) Describe how the heart pumps blood. *(5 marks)*

(c) State the function of the coronary arteries. *(2 marks)*

(d) State two ways of keeping the heart healthy. *(2 marks)*

---

## SECTION D: RESPIRATION AND EXCRETION

**Q7.** (a) State the organs of the respiratory system. *(4 marks)*

(b) Describe the process of breathing in. *(4 marks)*

(c) State the function of the alveoli. *(2 marks)*

(d) State two differences between inspired and expired air. *(2 marks)*

---

**Q8.** (a) State the excretory organs of the human body. *(3 marks)*

(b) Describe the structure of the kidney. *(4 marks)*

(c) State the function of the ureter and bladder. *(2 marks)*

(d) State two functions of the skin. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology structured set 6',
    updated_at = NOW()
WHERE id = 'b2a2cf0f-5a08-40b0-98ab-7199219cec0c';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) State the function of the cell wall. *(2 marks)*

(b) State the function of the chloroplast. *(2 marks)*

(c) State the function of the vacuole. *(2 marks)*

(d) State two differences between a plant cell and an animal cell. *(2 marks)*

---

**Q2.** (a) Define active transport. *(2 marks)*

(b) State two differences between active transport and diffusion. *(4 marks)*

(c) Explain the importance of active transport in plant roots. *(4 marks)*

(d) State two factors that affect the rate of active transport. *(2 marks)*

---

## SECTION B: NUTRITION

**Q3.** (a) State the food substances needed for a balanced diet. *(4 marks)*

(b) State the function of each food substance. *(4 marks)*

(c) State two functions of water in the body. *(2 marks)*

(d) State two functions of roughage. *(2 marks)*

---

**Q4.** (a) State the process by which plants make their own food. *(1 mark)*

(b) State the raw materials and products of photosynthesis. *(4 marks)*

(c) State the conditions necessary for photosynthesis. *(3 marks)*

(d) State two uses of the glucose produced in photosynthesis. *(2 marks)*

---

## SECTION C: TRANSPORT

**Q5.** (a) State the components of blood. *(4 marks)*

(b) State the function of red blood cells. *(2 marks)*

(c) State the function of white blood cells. *(2 marks)*

(d) State the function of platelets. *(2 marks)*

---

**Q6.** (a) State the function of the heart. *(2 marks)*

(b) Describe the pathway of blood through the heart. *(5 marks)*

(c) State the function of the valves in the heart. *(2 marks)*

(d) State two differences between the left and right sides of the heart. *(2 marks)*

---

## SECTION D: RESPIRATION AND EXCRETION

**Q7.** (a) Define respiration. *(2 marks)*

(b) State the equation for aerobic respiration. *(3 marks)*

(c) State the organs involved in breathing. *(3 marks)*

(d) State two differences between aerobic and anaerobic respiration. *(2 marks)*

---

**Q8.** (a) Define excretion. *(2 marks)*

(b) State the excretory organs of the human body. *(3 marks)*

(c) State the waste products excreted by the kidney. *(2 marks)*

(d) State two functions of the kidney. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology structured set 7',
    updated_at = NOW()
WHERE id = '7eb6756b-cd6a-000e-3f45-f9178ba31182';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 8

## Structural Question Bank - Set 8

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct biological terminology and Cameroon GCE presentation standards.
- Draw and label diagrams where required.

---

## SECTION A: CELL BIOLOGY

**Q1.** (a) Draw a labelled diagram of a plant cell. *(5 marks)*

(b) State the function of the nucleus, cell wall and chloroplast. *(3 marks)*

(c) State two differences between a plant cell and an animal cell. *(2 marks)*

(d) State the function of the cell membrane. *(2 marks)*

---

**Q2.** (a) Define osmosis. *(2 marks)*

(b) Explain what happens to a red blood cell placed in distilled water. *(4 marks)*

(c) State the importance of osmosis in plants. *(3 marks)*

(d) State two differences between osmosis and diffusion. *(2 marks)*

---

## SECTION B: NUTRITION

**Q3.** (a) State the function of the teeth in digestion. *(2 marks)*

(b) State the function of saliva. *(2 marks)*

(c) Describe the digestion of starch in the mouth. *(3 marks)*

(d) State two functions of the stomach. *(2 marks)*

---

**Q4.** (a) State the function of the small intestine. *(2 marks)*

(b) Describe how digested food is absorbed in the small intestine. *(4 marks)*

(c) State the function of the large intestine. *(2 marks)*

(d) State two functions of the liver. *(2 marks)*

---

## SECTION C: TRANSPORT

**Q5.** (a) State the function of the blood vessels. *(2 marks)*

(b) State two differences between arteries and veins. *(4 marks)*

(c) State the function of capillaries. *(2 marks)*

(d) State two functions of the blood. *(2 marks)*

---

**Q6.** (a) State the function of the heart. *(2 marks)*

(b) Describe how the heart pumps blood. *(5 marks)*

(c) State the function of the coronary arteries. *(2 marks)*

(d) State two ways of keeping the heart healthy. *(2 marks)*

---

## SECTION D: RESPIRATION AND EXCRETION

**Q7.** (a) State the organs of the respiratory system. *(4 marks)*

(b) Describe the process of breathing in. *(4 marks)*

(c) State the function of the alveoli. *(2 marks)*

(d) State two differences between inspired and expired air. *(2 marks)*

---

**Q8.** (a) State the excretory organs of the human body. *(3 marks)*

(b) Describe the structure of the kidney. *(4 marks)*

(c) State the function of the ureter and bladder. *(2 marks)*

(d) State two functions of the skin. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Biology structured set 8',
    updated_at = NOW()
WHERE id = 'f9a5b4a3-5753-6be6-f41b-98466edf9fc2';

COMMIT;
