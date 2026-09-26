begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Agricultural Science'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level AGRICULTURAL SCIENCE P2 SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Agricultural Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOIL MANAGEMENT

**Q1.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: CROP HUSBANDRY

**Q2.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ANIMAL PRODUCTION

**Q3.** Animal Production: A detailed examination question covering animal production concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FARM MACHINERY

**Q4.** Farm Machinery: A detailed examination question covering farm machinery concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: AGRICULTURAL ECONOMICS

**Q5.** Agricultural Economics: A detailed examination question covering agricultural economics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: FARM PLANNING

**Q6.** Farm Planning: A detailed examination question covering farm planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: MARKETING

**Q7.** Marketing: A detailed examination question covering marketing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PROJECT WORK

**Q8.** Project Work: A detailed examination question covering project work concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: SOIL MANAGEMENT

**Q9.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: CROP HUSBANDRY

**Q10.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Agricultural Science'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level AGRICULTURAL SCIENCE P2 SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Agricultural Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOIL MANAGEMENT

**Q1.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: CROP HUSBANDRY

**Q2.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ANIMAL PRODUCTION

**Q3.** Animal Production: A detailed examination question covering animal production concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FARM MACHINERY

**Q4.** Farm Machinery: A detailed examination question covering farm machinery concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: AGRICULTURAL ECONOMICS

**Q5.** Agricultural Economics: A detailed examination question covering agricultural economics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: FARM PLANNING

**Q6.** Farm Planning: A detailed examination question covering farm planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: MARKETING

**Q7.** Marketing: A detailed examination question covering marketing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PROJECT WORK

**Q8.** Project Work: A detailed examination question covering project work concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: SOIL MANAGEMENT

**Q9.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: CROP HUSBANDRY

**Q10.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Agricultural Science'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Agricultural Science',
  'CAMEROON GCE ORDINARY LEVEL AGRICULTURAL SCIENCE P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Ordinary Level AGRICULTURAL SCIENCE P2 SET 8

## Structural Question Bank - Set 8

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Agricultural Science

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: SOIL MANAGEMENT

**Q1.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 2: CROP HUSBANDRY

**Q2.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: ANIMAL PRODUCTION

**Q3.** Animal Production: A detailed examination question covering animal production concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 4: FARM MACHINERY

**Q4.** Farm Machinery: A detailed examination question covering farm machinery concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: AGRICULTURAL ECONOMICS

**Q5.** Agricultural Economics: A detailed examination question covering agricultural economics concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 6: FARM PLANNING

**Q6.** Farm Planning: A detailed examination question covering farm planning concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: MARKETING

**Q7.** Marketing: A detailed examination question covering marketing concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 8: PROJECT WORK

**Q8.** Project Work: A detailed examination question covering project work concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 9: SOIL MANAGEMENT

**Q9.** Soil Management: A detailed examination question covering soil management concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(6 marks)*

---

## SECTION 10: CROP HUSBANDRY

**Q10.** Crop Husbandry: A detailed examination question covering crop husbandry concepts and applications.

(a) Identify the key concept, principle, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

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
  where subject = 'Biology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The control centre of the cell is the:

A. nucleus  
B. cytoplasm  
C. cell wall  
D. vacuole  

---

**Q2.** The site of respiration in the cell is the:

A. mitochondrion  
B. ribosome  
C. chloroplast  
D. nucleus  

---

**Q3.** The site of protein synthesis is the:

A. ribosome  
B. nucleus  
C. mitochondrion  
D. cell wall  

---

**Q4.** Which structure is found in plant cells but not animal cells?

A. cell wall  
B. mitochondrion  
C. ribosome  
D. nucleus  

---

**Q5.** The movement of water molecules from a dilute to a concentrated solution through a partially permeable membrane is called:

A. osmosis  
B. transpiration  
C. diffusion  
D. active transport  

---

**Q6.** The movement of molecules from a region of high concentration to low concentration is called:

A. diffusion  
B. translocation  
C. active transport  
D. osmosis  

---

**Q7.** Active transport requires:

A. no energy  
B. energy  
C. light  
D. chlorophyll  

---

**Q8.** The cell wall of a plant is made of:

A. protein  
B. cellulose  
C. starch  
D. lipid  

---

**Q9.** The green pigment found in chloroplasts is:

A. haemoglobin  
B. carotene  
C. chlorophyll  
D. melanin  

---

**Q10.** A red blood cell placed in distilled water will:

A. shrink  
B. remain unchanged  
C. divide  
D. burst  

---

**Q11.** A plant cell placed in a concentrated salt solution will:

A. burst  
B. remain unchanged  
C. become plasmolysed  
D. swell  

---

**Q12.** Enzymes are made of:

A. carbohydrate  
B. mineral salts  
C. lipid  
D. protein  

---

**Q13.** Enzymes work best at an optimum temperature of about:

A. 0°C  
B. 37°C  
C. 100°C  
D. 60°C  

---

**Q14.** When an enzyme is boiled, it becomes:

A. larger  
B. denatured  
C. green  
D. more active  

---

**Q15.** The process by which a cell takes in large particles is called:

A. diffusion  
B. osmosis  
C. phagocytosis  
D. transpiration  

---

**Q16.** The jelly-like substance that fills the cell is the:

A. cell wall  
B. nucleus  
C. membrane  
D. cytoplasm  

---

**Q17.** The cell membrane is described as:

A. impermeable  
B. rigid  
C. partially permeable  
D. fully permeable  

---

**Q18.** The cell wall is described as:

A. impermeable  
B. selectively permeable  
C. partially permeable  
D. fully permeable  

---

**Q19.** The organelle that carries out photosynthesis is the:

A. nucleus  
B. chloroplast  
C. mitochondrion  
D. ribosome  

---

**Q20.** A group of similar cells working together forms a:

A. organism  
B. tissue  
C. system  
D. organ  

---

**Q21.** The process by which plants make food is called:

A. transpiration  
B. respiration  
C. photosynthesis  
D. digestion  

---

**Q22.** The gas used in photosynthesis is:

A. hydrogen  
B. oxygen  
C. nitrogen  
D. carbon dioxide  

---

**Q23.** The gas released during photosynthesis is:

A. ammonia  
B. nitrogen  
C. oxygen  
D. carbon dioxide  

---

**Q24.** The green pigment needed for photosynthesis is:

A. melanin  
B. carotene  
C. haemoglobin  
D. chlorophyll  

---

**Q25.** The enzyme that digests starch is:

A. amylase  
B. protease  
C. lipase  
D. maltase  

---

**Q26.** The enzyme that digests proteins is:

A. protease  
B. amylase  
C. catalase  
D. lipase  

---

**Q27.** The enzyme that digests fats is:

A. lipase  
B. protease  
C. amylase  
D. maltase  

---

**Q28.** Bile is produced by the:

A. liver  
B. stomach  
C. gall bladder  
D. pancreas  

---

**Q29.** Bile is stored in the:

A. gall bladder  
B. small intestine  
C. liver  
D. pancreas  

---

**Q30.** The part of the gut where most absorption occurs is the:

A. small intestine  
B. mouth  
C. large intestine  
D. stomach  

---

**Q31.** The finger-like projections in the small intestine are called:

A. alveoli  
B. villi  
C. nephrons  
D. bronchi  

---

**Q32.** The site of gaseous exchange in the lungs is the:

A. bronchi  
B. alveoli  
C. diaphragm  
D. trachea  

---

**Q33.** Aerobic respiration uses:

A. carbon dioxide  
B. nitrogen  
C. oxygen  
D. chlorophyll  

---

**Q34.** The product of anaerobic respiration in muscles is:

A. ethanol  
B. carbon dioxide  
C. glucose  
D. lactic acid  

---

**Q35.** The main excretory organ of the body is the:

A. liver  
B. stomach  
C. kidney  
D. heart  

---

**Q36.** The functional unit of the kidney is the:

A. alveolus  
B. villus  
C. neuron  
D. nephron  

---

**Q37.** The process of maintaining a constant internal environment is called:

A. respiration  
B. homeostasis  
C. excretion  
D. digestion  

---

**Q38.** The loss of water vapour from plant leaves is called:

A. osmosis  
B. transpiration  
C. diffusion  
D. translocation  

---

**Q39.** The tissue that transports water in plants is the:

A. epidermis  
B. phloem  
C. xylem  
D. cortex  

---

**Q40.** The tissue that transports food in plants is the:

A. epidermis  
B. xylem  
C. cortex  
D. phloem  

---

**Q41.** The male reproductive organ of a flower is the:

A. petal  
B. sepal  
C. stamen  
D. carpel  

---

**Q42.** The female reproductive organ of a flower is the:

A. petal  
B. sepal  
C. stamen  
D. carpel  

---

**Q43.** The transfer of pollen from anther to stigma is called:

A. transpiration  
B. pollination  
C. fertilisation  
D. germination  

---

**Q44.** The fusion of male and female gametes is called:

A. dispersal  
B. fertilisation  
C. germination  
D. pollination  

---

**Q45.** The male gamete in humans is the:

A. zygote  
B. egg  
C. sperm  
D. ovum  

---

**Q46.** The female gamete in humans is the:

A. embryo  
B. sperm  
C. zygote  
D. ovum  

---

**Q47.** The organ that connects the foetus to the mother is the:

A. umbilical cord  
B. ovary  
C. placenta  
D. uterus  

---

**Q48.** The process of cell division that produces gametes is called:

A. diffusion  
B. osmosis  
C. mitosis  
D. meiosis  

---

**Q49.** The process of cell division that produces body cells is called:

A. mitosis  
B. meiosis  
C. osmosis  
D. diffusion  

---

**Q50.** The basic unit of heredity is the:

A. gene  
B. chromosome  
C. tissue  
D. cell  

---

**Q51.** The genetic make-up of an organism is its:

A. genotype  
B. chromosome  
C. phenotype  
D. gene  

---

**Q52.** The physical appearance of an organism is its:

A. phenotype  
B. gene  
C. allele  
D. genotype  

---

**Q53.** In a monohybrid cross TT × tt, the F1 generation is:

A. all Tt  
B. half TT, half tt  
C. all TT  
D. all tt  

---

**Q54.** The phenotypic ratio of the F2 generation in a monohybrid cross is:

A. 3:1  
B. 9:3:3:1  
C. 1:2:1  
D. 1:1  

---

**Q55.** A community of organisms and their environment forms an:

A. population  
B. ecosystem  
C. organism  
D. tissue  

---

**Q56.** A group of organisms of the same species in an area is a:

A. community  
B. population  
C. habitat  
D. ecosystem  

---

**Q57.** The sequence of organisms through which energy flows is a:

A. food web  
B. ecosystem  
C. food chain  
D. population  

---

**Q58.** Organisms that make their own food are called:

A. consumers  
B. decomposers  
C. predators  
D. producers  

---

**Q59.** Organisms that break down dead matter are called:

A. producers  
B. predators  
C. decomposers  
D. consumers  

---

**Q60.** The process by which organisms best adapted to their environment survive is called:

A. artificial selection  
B. germination  
C. pollination  
D. natural selection  

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
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Which structure is found in plant cells but not animal cells?

A. cell wall  
B. nucleus  
C. mitochondrion  
D. ribosome  

---

**Q2.** The movement of water molecules from a dilute to a concentrated solution through a partially permeable membrane is called:

A. osmosis  
B. diffusion  
C. transpiration  
D. active transport  

---

**Q3.** The movement of molecules from a region of high concentration to low concentration is called:

A. diffusion  
B. active transport  
C. osmosis  
D. translocation  

---

**Q4.** Active transport requires:

A. energy  
B. light  
C. chlorophyll  
D. no energy  

---

**Q5.** The cell wall of a plant is made of:

A. cellulose  
B. starch  
C. protein  
D. lipid  

---

**Q6.** The green pigment found in chloroplasts is:

A. chlorophyll  
B. melanin  
C. carotene  
D. haemoglobin  

---

**Q7.** A red blood cell placed in distilled water will:

A. shrink  
B. burst  
C. remain unchanged  
D. divide  

---

**Q8.** A plant cell placed in a concentrated salt solution will:

A. burst  
B. become plasmolysed  
C. remain unchanged  
D. swell  

---

**Q9.** Enzymes are made of:

A. carbohydrate  
B. lipid  
C. protein  
D. mineral salts  

---

**Q10.** Enzymes work best at an optimum temperature of about:

A. 100°C  
B. 0°C  
C. 60°C  
D. 37°C  

---

**Q11.** When an enzyme is boiled, it becomes:

A. more active  
B. green  
C. denatured  
D. larger  

---

**Q12.** The process by which a cell takes in large particles is called:

A. osmosis  
B. transpiration  
C. diffusion  
D. phagocytosis  

---

**Q13.** The jelly-like substance that fills the cell is the:

A. cell wall  
B. cytoplasm  
C. nucleus  
D. membrane  

---

**Q14.** The cell membrane is described as:

A. impermeable  
B. partially permeable  
C. rigid  
D. fully permeable  

---

**Q15.** The cell wall is described as:

A. impermeable  
B. partially permeable  
C. fully permeable  
D. selectively permeable  

---

**Q16.** The organelle that carries out photosynthesis is the:

A. ribosome  
B. mitochondrion  
C. nucleus  
D. chloroplast  

---

**Q17.** A group of similar cells working together forms a:

A. system  
B. organism  
C. tissue  
D. organ  

---

**Q18.** The control centre of the cell is the:

A. cell wall  
B. vacuole  
C. cytoplasm  
D. nucleus  

---

**Q19.** The site of respiration in the cell is the:

A. chloroplast  
B. mitochondrion  
C. ribosome  
D. nucleus  

---

**Q20.** The site of protein synthesis is the:

A. cell wall  
B. ribosome  
C. nucleus  
D. mitochondrion  

---

**Q21.** The green pigment needed for photosynthesis is:

A. melanin  
B. haemoglobin  
C. chlorophyll  
D. carotene  

---

**Q22.** The enzyme that digests starch is:

A. maltase  
B. protease  
C. lipase  
D. amylase  

---

**Q23.** The enzyme that digests proteins is:

A. catalase  
B. lipase  
C. protease  
D. amylase  

---

**Q24.** The enzyme that digests fats is:

A. maltase  
B. protease  
C. amylase  
D. lipase  

---

**Q25.** Bile is produced by the:

A. liver  
B. pancreas  
C. stomach  
D. gall bladder  

---

**Q26.** Bile is stored in the:

A. gall bladder  
B. liver  
C. small intestine  
D. pancreas  

---

**Q27.** The part of the gut where most absorption occurs is the:

A. small intestine  
B. large intestine  
C. stomach  
D. mouth  

---

**Q28.** The finger-like projections in the small intestine are called:

A. villi  
B. nephrons  
C. bronchi  
D. alveoli  

---

**Q29.** The site of gaseous exchange in the lungs is the:

A. alveoli  
B. diaphragm  
C. bronchi  
D. trachea  

---

**Q30.** Aerobic respiration uses:

A. oxygen  
B. chlorophyll  
C. nitrogen  
D. carbon dioxide  

---

**Q31.** The product of anaerobic respiration in muscles is:

A. ethanol  
B. lactic acid  
C. carbon dioxide  
D. glucose  

---

**Q32.** The main excretory organ of the body is the:

A. liver  
B. kidney  
C. stomach  
D. heart  

---

**Q33.** The functional unit of the kidney is the:

A. alveolus  
B. neuron  
C. nephron  
D. villus  

---

**Q34.** The process of maintaining a constant internal environment is called:

A. excretion  
B. respiration  
C. digestion  
D. homeostasis  

---

**Q35.** The loss of water vapour from plant leaves is called:

A. translocation  
B. diffusion  
C. transpiration  
D. osmosis  

---

**Q36.** The tissue that transports water in plants is the:

A. phloem  
B. cortex  
C. epidermis  
D. xylem  

---

**Q37.** The tissue that transports food in plants is the:

A. epidermis  
B. phloem  
C. xylem  
D. cortex  

---

**Q38.** The process by which plants make food is called:

A. digestion  
B. photosynthesis  
C. transpiration  
D. respiration  

---

**Q39.** The gas used in photosynthesis is:

A. nitrogen  
B. oxygen  
C. carbon dioxide  
D. hydrogen  

---

**Q40.** The gas released during photosynthesis is:

A. nitrogen  
B. carbon dioxide  
C. ammonia  
D. oxygen  

---

**Q41.** The fusion of male and female gametes is called:

A. germination  
B. dispersal  
C. fertilisation  
D. pollination  

---

**Q42.** The male gamete in humans is the:

A. ovum  
B. zygote  
C. egg  
D. sperm  

---

**Q43.** The female gamete in humans is the:

A. embryo  
B. ovum  
C. sperm  
D. zygote  

---

**Q44.** The organ that connects the foetus to the mother is the:

A. umbilical cord  
B. placenta  
C. ovary  
D. uterus  

---

**Q45.** The process of cell division that produces gametes is called:

A. diffusion  
B. mitosis  
C. meiosis  
D. osmosis  

---

**Q46.** The process of cell division that produces body cells is called:

A. diffusion  
B. meiosis  
C. osmosis  
D. mitosis  

---

**Q47.** The basic unit of heredity is the:

A. tissue  
B. cell  
C. gene  
D. chromosome  

---

**Q48.** The genetic make-up of an organism is its:

A. gene  
B. chromosome  
C. phenotype  
D. genotype  

---

**Q49.** The physical appearance of an organism is its:

A. phenotype  
B. genotype  
C. gene  
D. allele  

---

**Q50.** In a monohybrid cross TT × tt, the F1 generation is:

A. all Tt  
B. all TT  
C. half TT, half tt  
D. all tt  

---

**Q51.** The phenotypic ratio of the F2 generation in a monohybrid cross is:

A. 3:1  
B. 1:2:1  
C. 1:1  
D. 9:3:3:1  

---

**Q52.** A community of organisms and their environment forms an:

A. ecosystem  
B. organism  
C. tissue  
D. population  

---

**Q53.** A group of organisms of the same species in an area is a:

A. population  
B. habitat  
C. community  
D. ecosystem  

---

**Q54.** The sequence of organisms through which energy flows is a:

A. food chain  
B. population  
C. ecosystem  
D. food web  

---

**Q55.** Organisms that make their own food are called:

A. consumers  
B. producers  
C. decomposers  
D. predators  

---

**Q56.** Organisms that break down dead matter are called:

A. producers  
B. decomposers  
C. predators  
D. consumers  

---

**Q57.** The process by which organisms best adapted to their environment survive is called:

A. artificial selection  
B. pollination  
C. natural selection  
D. germination  

---

**Q58.** The male reproductive organ of a flower is the:

A. carpel  
B. petal  
C. sepal  
D. stamen  

---

**Q59.** The female reproductive organ of a flower is the:

A. stamen  
B. sepal  
C. carpel  
D. petal  

---

**Q60.** The transfer of pollen from anther to stigma is called:

A. fertilisation  
B. transpiration  
C. germination  
D. pollination  

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
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** general, science
**Subject:** Biology

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Active transport requires:

A. energy  
B. no energy  
C. light  
D. chlorophyll  

---

**Q2.** The cell wall of a plant is made of:

A. cellulose  
B. protein  
C. starch  
D. lipid  

---

**Q3.** The green pigment found in chloroplasts is:

A. chlorophyll  
B. carotene  
C. haemoglobin  
D. melanin  

---

**Q4.** A red blood cell placed in distilled water will:

A. burst  
B. remain unchanged  
C. divide  
D. shrink  

---

**Q5.** A plant cell placed in a concentrated salt solution will:

A. become plasmolysed  
B. remain unchanged  
C. burst  
D. swell  

---

**Q6.** Enzymes are made of:

A. protein  
B. mineral salts  
C. lipid  
D. carbohydrate  

---

**Q7.** Enzymes work best at an optimum temperature of about:

A. 100°C  
B. 37°C  
C. 0°C  
D. 60°C  

---

**Q8.** When an enzyme is boiled, it becomes:

A. more active  
B. denatured  
C. green  
D. larger  

---

**Q9.** The process by which a cell takes in large particles is called:

A. osmosis  
B. diffusion  
C. phagocytosis  
D. transpiration  

---

**Q10.** The jelly-like substance that fills the cell is the:

A. nucleus  
B. cell wall  
C. membrane  
D. cytoplasm  

---

**Q11.** The cell membrane is described as:

A. fully permeable  
B. rigid  
C. partially permeable  
D. impermeable  

---

**Q12.** The cell wall is described as:

A. partially permeable  
B. selectively permeable  
C. impermeable  
D. fully permeable  

---

**Q13.** The organelle that carries out photosynthesis is the:

A. ribosome  
B. chloroplast  
C. mitochondrion  
D. nucleus  

---

**Q14.** A group of similar cells working together forms a:

A. system  
B. tissue  
C. organism  
D. organ  

---

**Q15.** The control centre of the cell is the:

A. cell wall  
B. cytoplasm  
C. nucleus  
D. vacuole  

---

**Q16.** The site of respiration in the cell is the:

A. nucleus  
B. ribosome  
C. chloroplast  
D. mitochondrion  

---

**Q17.** The site of protein synthesis is the:

A. nucleus  
B. cell wall  
C. ribosome  
D. mitochondrion  

---

**Q18.** Which structure is found in plant cells but not animal cells?

A. mitochondrion  
B. ribosome  
C. nucleus  
D. cell wall  

---

**Q19.** The movement of water molecules from a dilute to a concentrated solution through a partially permeable membrane is called:

A. transpiration  
B. osmosis  
C. diffusion  
D. active transport  

---

**Q20.** The movement of molecules from a region of high concentration to low concentration is called:

A. translocation  
B. diffusion  
C. active transport  
D. osmosis  

---

**Q21.** The enzyme that digests fats is:

A. maltase  
B. amylase  
C. lipase  
D. protease  

---

**Q22.** Bile is produced by the:

A. gall bladder  
B. pancreas  
C. stomach  
D. liver  

---

**Q23.** Bile is stored in the:

A. small intestine  
B. pancreas  
C. gall bladder  
D. liver  

---

**Q24.** The part of the gut where most absorption occurs is the:

A. mouth  
B. large intestine  
C. stomach  
D. small intestine  

---

**Q25.** The finger-like projections in the small intestine are called:

A. villi  
B. alveoli  
C. nephrons  
D. bronchi  

---

**Q26.** The site of gaseous exchange in the lungs is the:

A. alveoli  
B. bronchi  
C. diaphragm  
D. trachea  

---

**Q27.** Aerobic respiration uses:

A. oxygen  
B. nitrogen  
C. carbon dioxide  
D. chlorophyll  

---

**Q28.** The product of anaerobic respiration in muscles is:

A. lactic acid  
B. carbon dioxide  
C. glucose  
D. ethanol  

---

**Q29.** The main excretory organ of the body is the:

A. kidney  
B. stomach  
C. liver  
D. heart  

---

**Q30.** The functional unit of the kidney is the:

A. nephron  
B. villus  
C. neuron  
D. alveolus  

---

**Q31.** The process of maintaining a constant internal environment is called:

A. excretion  
B. homeostasis  
C. respiration  
D. digestion  

---

**Q32.** The loss of water vapour from plant leaves is called:

A. translocation  
B. transpiration  
C. diffusion  
D. osmosis  

---

**Q33.** The tissue that transports water in plants is the:

A. phloem  
B. epidermis  
C. xylem  
D. cortex  

---

**Q34.** The tissue that transports food in plants is the:

A. xylem  
B. epidermis  
C. cortex  
D. phloem  

---

**Q35.** The process by which plants make food is called:

A. respiration  
B. transpiration  
C. photosynthesis  
D. digestion  

---

**Q36.** The gas used in photosynthesis is:

A. oxygen  
B. hydrogen  
C. nitrogen  
D. carbon dioxide  

---

**Q37.** The gas released during photosynthesis is:

A. nitrogen  
B. oxygen  
C. carbon dioxide  
D. ammonia  

---

**Q38.** The green pigment needed for photosynthesis is:

A. carotene  
B. chlorophyll  
C. melanin  
D. haemoglobin  

---

**Q39.** The enzyme that digests starch is:

A. lipase  
B. protease  
C. amylase  
D. maltase  

---

**Q40.** The enzyme that digests proteins is:

A. lipase  
B. amylase  
C. catalase  
D. protease  

---

**Q41.** The organ that connects the foetus to the mother is the:

A. ovary  
B. umbilical cord  
C. placenta  
D. uterus  

---

**Q42.** The process of cell division that produces gametes is called:

A. osmosis  
B. diffusion  
C. mitosis  
D. meiosis  

---

**Q43.** The process of cell division that produces body cells is called:

A. diffusion  
B. mitosis  
C. meiosis  
D. osmosis  

---

**Q44.** The basic unit of heredity is the:

A. tissue  
B. gene  
C. cell  
D. chromosome  

---

**Q45.** The genetic make-up of an organism is its:

A. gene  
B. phenotype  
C. genotype  
D. chromosome  

---

**Q46.** The physical appearance of an organism is its:

A. allele  
B. genotype  
C. gene  
D. phenotype  

---

**Q47.** In a monohybrid cross TT × tt, the F1 generation is:

A. half TT, half tt  
B. all tt  
C. all Tt  
D. all TT  

---

**Q48.** The phenotypic ratio of the F2 generation in a monohybrid cross is:

A. 9:3:3:1  
B. 1:2:1  
C. 1:1  
D. 3:1  

---

**Q49.** A community of organisms and their environment forms an:

A. ecosystem  
B. population  
C. organism  
D. tissue  

---

**Q50.** A group of organisms of the same species in an area is a:

A. population  
B. community  
C. habitat  
D. ecosystem  

---

**Q51.** The sequence of organisms through which energy flows is a:

A. food chain  
B. ecosystem  
C. food web  
D. population  

---

**Q52.** Organisms that make their own food are called:

A. producers  
B. decomposers  
C. predators  
D. consumers  

---

**Q53.** Organisms that break down dead matter are called:

A. decomposers  
B. predators  
C. producers  
D. consumers  

---

**Q54.** The process by which organisms best adapted to their environment survive is called:

A. natural selection  
B. germination  
C. pollination  
D. artificial selection  

---

**Q55.** The male reproductive organ of a flower is the:

A. carpel  
B. stamen  
C. petal  
D. sepal  

---

**Q56.** The female reproductive organ of a flower is the:

A. stamen  
B. carpel  
C. sepal  
D. petal  

---

**Q57.** The transfer of pollen from anther to stigma is called:

A. fertilisation  
B. germination  
C. pollination  
D. transpiration  

---

**Q58.** The fusion of male and female gametes is called:

A. pollination  
B. germination  
C. dispersal  
D. fertilisation  

---

**Q59.** The male gamete in humans is the:

A. egg  
B. zygote  
C. sperm  
D. ovum  

---

**Q60.** The female gamete in humans is the:

A. sperm  
B. embryo  
C. zygote  
D. ovum  

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
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CELL BIOLOGY

**Q1.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

![Plant cell diagram](/paper-diagrams/biology-cell.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: BIOCHEMISTRY

**Q6.** Biochemistry: Experiment 6 studies biochemistry by changing concentration 0.7 mol dm-3, temperature 26 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Biochemistry: Experiment 7 studies biochemistry by changing concentration 0.8 mol dm-3, temperature 27 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Biochemistry: Experiment 8 studies biochemistry by changing concentration 0.9 mol dm-3, temperature 28 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Biochemistry: Experiment 9 studies biochemistry by changing concentration 1 mol dm-3, temperature 29 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Biochemistry: Experiment 10 studies biochemistry by changing concentration 1.1 mol dm-3, temperature 30 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: GENETICS

**Q11.** Genetics: A biological investigation on genetics compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Genetics: A biological investigation on genetics compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Genetics: A biological investigation on genetics compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Genetics: A biological investigation on genetics compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Genetics: A biological investigation on genetics compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: ECOLOGY

**Q16.** Ecology: A biological investigation on ecology compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Ecology: A biological investigation on ecology compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Ecology: A biological investigation on ecology compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Ecology: A biological investigation on ecology compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Ecology: A biological investigation on ecology compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: PLANT PHYSIOLOGY

**Q21.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: ANIMAL PHYSIOLOGY

**Q26.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: EVOLUTION

**Q31.** Evolution: A biological investigation on evolution compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Evolution: A biological investigation on evolution compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Evolution: A biological investigation on evolution compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Evolution: A biological investigation on evolution compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Evolution: A biological investigation on evolution compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL BIOLOGY

**Q36.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Biology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CELL BIOLOGY

**Q1.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: BIOCHEMISTRY

**Q6.** Biochemistry: Experiment 6 studies biochemistry by changing concentration 0.8 mol dm-3, temperature 26 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

![Human heart diagram](/paper-diagrams/biology-heart.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Biochemistry: Experiment 7 studies biochemistry by changing concentration 0.9 mol dm-3, temperature 27 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Biochemistry: Experiment 8 studies biochemistry by changing concentration 1 mol dm-3, temperature 28 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Biochemistry: Experiment 9 studies biochemistry by changing concentration 1.1 mol dm-3, temperature 29 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Biochemistry: Experiment 10 studies biochemistry by changing concentration 1.2 mol dm-3, temperature 30 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: GENETICS

**Q11.** Genetics: A biological investigation on genetics compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Genetics: A biological investigation on genetics compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Genetics: A biological investigation on genetics compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Genetics: A biological investigation on genetics compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Genetics: A biological investigation on genetics compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: ECOLOGY

**Q16.** Ecology: A biological investigation on ecology compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Ecology: A biological investigation on ecology compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Ecology: A biological investigation on ecology compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Ecology: A biological investigation on ecology compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Ecology: A biological investigation on ecology compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: PLANT PHYSIOLOGY

**Q21.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: ANIMAL PHYSIOLOGY

**Q26.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: EVOLUTION

**Q31.** Evolution: A biological investigation on evolution compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Evolution: A biological investigation on evolution compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Evolution: A biological investigation on evolution compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Evolution: A biological investigation on evolution compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Evolution: A biological investigation on evolution compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL BIOLOGY

**Q36.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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
  where subject = 'Biology'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Biology

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: CELL BIOLOGY

**Q1.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 3 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

![Plant cell diagram](/paper-diagrams/biology-cell.svg)

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q2.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 4 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q3.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 5 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q4.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 6 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q5.** Cell biology: A biological investigation on cell biology compares sample A with sample B after 7 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 2: BIOCHEMISTRY

**Q6.** Biochemistry: Experiment 6 studies biochemistry by changing concentration 0.9 mol dm-3, temperature 26 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q7.** Biochemistry: Experiment 7 studies biochemistry by changing concentration 1 mol dm-3, temperature 27 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q8.** Biochemistry: Experiment 8 studies biochemistry by changing concentration 1.1 mol dm-3, temperature 28 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q9.** Biochemistry: Experiment 9 studies biochemistry by changing concentration 1.2 mol dm-3, temperature 29 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q10.** Biochemistry: Experiment 10 studies biochemistry by changing concentration 1.3 mol dm-3, temperature 30 degrees C, and catalyst conditions. Predict observations, calculate the required quantity, and justify the chemical change.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 3: GENETICS

**Q11.** Genetics: A biological investigation on genetics compares sample A with sample B after 13 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q12.** Genetics: A biological investigation on genetics compares sample A with sample B after 14 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q13.** Genetics: A biological investigation on genetics compares sample A with sample B after 15 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q14.** Genetics: A biological investigation on genetics compares sample A with sample B after 16 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q15.** Genetics: A biological investigation on genetics compares sample A with sample B after 17 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 4: ECOLOGY

**Q16.** Ecology: A biological investigation on ecology compares sample A with sample B after 18 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q17.** Ecology: A biological investigation on ecology compares sample A with sample B after 19 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q18.** Ecology: A biological investigation on ecology compares sample A with sample B after 20 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q19.** Ecology: A biological investigation on ecology compares sample A with sample B after 21 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q20.** Ecology: A biological investigation on ecology compares sample A with sample B after 22 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 5: PLANT PHYSIOLOGY

**Q21.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 23 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q22.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 24 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q23.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 25 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q24.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 26 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q25.** Plant physiology: A biological investigation on plant physiology compares sample A with sample B after 27 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 6: ANIMAL PHYSIOLOGY

**Q26.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 28 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q27.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 29 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q28.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 30 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q29.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 31 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q30.** Animal physiology: A biological investigation on animal physiology compares sample A with sample B after 32 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 7: EVOLUTION

**Q31.** Evolution: A biological investigation on evolution compares sample A with sample B after 33 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q32.** Evolution: A biological investigation on evolution compares sample A with sample B after 34 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q33.** Evolution: A biological investigation on evolution compares sample A with sample B after 35 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q34.** Evolution: A biological investigation on evolution compares sample A with sample B after 36 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q35.** Evolution: A biological investigation on evolution compares sample A with sample B after 37 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

## SECTION 8: PRACTICAL BIOLOGY

**Q36.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 38 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(6 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q37.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 39 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(8 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q38.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 40 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(10 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q39.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 41 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

(a) Identify the scientific principle, apparatus, variable, or process being tested. *(4 marks)*

(b) Analyse the situation using labelled diagrams, equations, observations, calculations, or experimental procedure where appropriate. *(12 marks)*

(c) State two precautions, limitations, sources of error, or real-life applications connected to the answer. *(4 marks)*

---

**Q40.** Practical biology: A biological investigation on practical biology compares sample A with sample B after 42 days in a school or farm environment. Interpret the observations and relate them to health, growth, inheritance, or ecology.

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