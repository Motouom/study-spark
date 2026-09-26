begin;

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
  where title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 5'
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
  'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 5

## Structural Question Bank — Nutrition, respiration, and excretion

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

## SECTION 1: NUTRITION, RESPIRATION, AND EXCRETION

**Q1.** (a) State the word equation for photosynthesis. *(2 marks)*

(b) Name three factors that affect the rate of photosynthesis. *(3 marks)*

(c) Describe an experiment to show that light is necessary for photosynthesis. *(6 marks)*

---

**Q2.** (a) What is the role of chlorophyll in photosynthesis? *(3 marks)*

(b) Explain why a destarched plant is used in photosynthesis experiments. *(3 marks)*

(c) Describe how you would test a leaf for starch. *(5 marks)*

---

**Q3.** (a) Name the products of photosynthesis. *(2 marks)*

(b) State the uses of glucose in plants. *(4 marks)*

(c) Explain why photosynthesis is important to animals. *(4 marks)*

---

**Q4.** (a) Describe the process of digestion in the mouth. *(4 marks)*

(b) State the role of the stomach in digestion. *(4 marks)*

(c) Explain how the small intestine is adapted for absorption. *(5 marks)*

---

**Q5.** (a) Name the enzymes that digest carbohydrates, proteins, and fats. *(3 marks)*

(b) State the products of digestion of each. *(3 marks)*

(c) Explain the role of bile in digestion. *(4 marks)*

---

**Q6.** (a) What is a balanced diet? *(2 marks)*

(b) Name the seven components of a balanced diet and state one function of each. *(7 marks)*

(c) Explain why a pregnant woman needs more iron in her diet. *(3 marks)*

---

**Q7.** (a) Describe the structure of the human respiratory system. *(5 marks)*

(b) Explain how gaseous exchange occurs in the alveoli. *(5 marks)*

(c) State two ways in which the alveoli are adapted for gaseous exchange. *(3 marks)*

---

**Q8.** (a) State the word equation for aerobic respiration. *(2 marks)*

(b) Distinguish between aerobic and anaerobic respiration. *(4 marks)*

(c) Explain why anaerobic respiration produces less energy than aerobic respiration. *(4 marks)*

---

**Q9.** (a) What is anaerobic respiration in muscles? *(2 marks)*

(b) Name the product of anaerobic respiration in muscles and explain why it causes fatigue. *(4 marks)*

(c) Explain what is meant by "oxygen debt". *(4 marks)*

---

**Q10.** (a) Name the excretory organs of the human body. *(3 marks)*

(b) State the main excretory product of each organ. *(3 marks)*

(c) Explain the role of the kidney in excretion and osmoregulation. *(6 marks)*

---

**Q11.** (a) Describe the structure of a nephron. *(5 marks)*

(b) Explain how ultrafiltration occurs in the glomerulus. *(4 marks)*

(c) State what happens to glucose in the kidney tubule. *(3 marks)*

---

**Q12.** (a) What is homeostasis? *(2 marks)*

(b) Give two examples of homeostasis in the human body. *(2 marks)*

(c) Explain how the body regulates its temperature when it is too hot. *(6 marks)*

---

**Q13.** (a) Define the term "transpiration". *(2 marks)*

(b) State three factors that affect the rate of transpiration. *(3 marks)*

(c) Describe an experiment to demonstrate transpiration. *(5 marks)*

---

**Q14.** (a) Explain how water and mineral salts are transported in plants. *(5 marks)*

(b) State the role of the xylem and phloem. *(4 marks)*

(c) Explain how the products of photosynthesis are transported in plants. *(4 marks)*

---

**Q15.** (a) What is the function of the liver in the body? *(4 marks)*

(b) Name two substances the liver produces or processes. *(2 marks)*

(c) Explain how the liver regulates blood glucose level. *(5 marks)*

---

**Q16.** (a) State the function of the large intestine. *(2 marks)*

(b) Explain how water is reabsorbed in the large intestine. *(3 marks)*

(c) Describe what happens when too much water is absorbed. *(3 marks)*

---

**Q17.** (a) Distinguish between breathing and respiration. *(4 marks)*

(b) Explain why breathing rate increases during exercise. *(4 marks)*

(c) State the effect of exercise on the rate of respiration. *(3 marks)*

---

**Q18.** (a) Name the parts of the human digestive system in order. *(4 marks)*

(b) State the function of the pancreas. *(3 marks)*

(c) Explain how the villi increase the rate of absorption. *(4 marks)*

---

**Q19.** (a) What is the role of the skin in excretion? *(3 marks)*

(b) Name the substances lost through the skin. *(3 marks)*

(c) Explain how sweating helps to cool the body. *(4 marks)*

---

**Q20.** (a) State the importance of photosynthesis to the ecosystem. *(4 marks)*

(b) Explain why plants are described as producers. *(3 marks)*

(c) Describe the carbon cycle, naming the processes involved. *(5 marks)*
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
  where title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 6'
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
  'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 6

## Structural Question Bank — Reproduction, genetics, and ecology

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

## SECTION 1: REPRODUCTION, GENETICS, AND ECOLOGY

**Q1.** (a) Draw a labelled diagram of a flower. *(5 marks)*

(b) State the function of each labelled part. *(5 marks)*

(c) Distinguish between pollination and fertilisation. *(4 marks)*

---

**Q2.** (a) What is pollination? *(2 marks)*

(b) State three features of insect-pollinated flowers. *(3 marks)*

(c) Describe the process of fertilisation in a flowering plant. *(5 marks)*

---

**Q3.** (a) Describe the process of germination in a bean seed. *(5 marks)*

(b) State the conditions necessary for germination. *(3 marks)*

(c) Explain the role of the cotyledons during germination. *(3 marks)*

---

**Q4.** (a) Name the male and female reproductive organs of a flowering plant. *(2 marks)*

(b) Explain how seeds are dispersed by wind and by animals. *(4 marks)*

(c) State two advantages of seed dispersal. *(4 marks)*

---

**Q5.** (a) Describe the structure of the human male reproductive system. *(5 marks)*

(b) State the function of each part. *(5 marks)*

(c) Explain the role of hormones in the male reproductive system. *(4 marks)*

---

**Q6.** (a) Describe the structure of the human female reproductive system. *(5 marks)*

(b) State the function of each part. *(5 marks)*

(c) Explain what happens during the menstrual cycle. *(5 marks)*

---

**Q7.** (a) What is fertilisation in humans? *(2 marks)*

(b) Describe the development of the embryo in the uterus. *(5 marks)*

(c) Explain the role of the placenta. *(4 marks)*

---

**Q8.** (a) Define the terms gene, allele, and genotype. *(3 marks)*

(b) Explain the difference between genotype and phenotype. *(4 marks)*

(c) State the difference between homozygous and heterozygous. *(3 marks)*

---

**Q9.** (a) In a monohybrid cross between a tall plant (TT) and a short plant (tt), show the genotypes and phenotypes of the F1 and F2 generations. *(6 marks)*

(b) State the phenotypic ratio of the F2 generation. *(2 marks)*

(c) Explain what is meant by a dominant allele. *(3 marks)*

---

**Q10.** (a) What is a sex-linked characteristic? *(3 marks)*

(b) Explain how colour blindness is inherited. *(5 marks)*

(c) State why sex-linked disorders are more common in males. *(4 marks)*

---

**Q11.** (a) Define the term "variation". *(2 marks)*

(b) Distinguish between continuous and discontinuous variation, giving an example of each. *(4 marks)*

(c) Explain the role of variation in natural selection. *(5 marks)*

---

**Q12.** (a) What is natural selection? *(3 marks)*

(b) Explain how antibiotic resistance in bacteria illustrates natural selection. *(5 marks)*

(c) State the role of mutation in evolution. *(4 marks)*

---

**Q13.** (a) Define the term "ecosystem". *(2 marks)*

(b) Name the components of an ecosystem. *(4 marks)*

(c) Explain how energy flows through an ecosystem. *(5 marks)*

---

**Q14.** (a) What is a food chain? *(2 marks)*

(b) Construct a food chain with four organisms found in a Cameroon ecosystem. *(3 marks)*

(c) Explain why the number of organisms decreases along a food chain. *(5 marks)*

---

**Q15.** (a) Define the term "food web". *(2 marks)*

(b) Explain why food webs are more stable than food chains. *(4 marks)*

(c) Describe the effect of removing a top predator from a food web. *(4 marks)*

---

**Q16.** (a) Describe the carbon cycle. *(5 marks)*

(b) Name the processes by which carbon is returned to the atmosphere. *(3 marks)*

(c) Explain the effect of deforestation on the carbon cycle. *(4 marks)*

---

**Q17.** (a) Describe the nitrogen cycle. *(5 marks)*

(b) Name the bacteria involved in the nitrogen cycle. *(3 marks)*

(c) Explain why nitrogen is important to living organisms. *(3 marks)*

---

**Q18.** (a) What is a population? *(2 marks)*

(b) State three factors that affect population size. *(3 marks)*

(c) Explain how a predator-prey relationship affects population sizes. *(5 marks)*

---

**Q19.** (a) Define the term "conservation". *(2 marks)*

(b) State three reasons why conservation is important. *(3 marks)*

(c) Describe two methods of conserving wildlife in Cameroon. *(5 marks)*

---

**Q20.** (a) What is pollution? *(2 marks)*

(b) Name three types of pollution and their causes. *(6 marks)*

(c) Explain the effect of water pollution on aquatic life. *(4 marks)*
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
  where title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 7

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
  where title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 8

## Structural Question Bank — Nutrition, respiration, and excretion

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

## SECTION 1: NUTRITION, RESPIRATION, AND EXCRETION

**Q1.** (a) State the word equation for photosynthesis. *(2 marks)*

(b) Name three factors that affect the rate of photosynthesis. *(3 marks)*

(c) Describe an experiment to show that light is necessary for photosynthesis. *(6 marks)*

---

**Q2.** (a) What is the role of chlorophyll in photosynthesis? *(3 marks)*

(b) Explain why a destarched plant is used in photosynthesis experiments. *(3 marks)*

(c) Describe how you would test a leaf for starch. *(5 marks)*

---

**Q3.** (a) Name the products of photosynthesis. *(2 marks)*

(b) State the uses of glucose in plants. *(4 marks)*

(c) Explain why photosynthesis is important to animals. *(4 marks)*

---

**Q4.** (a) Describe the process of digestion in the mouth. *(4 marks)*

(b) State the role of the stomach in digestion. *(4 marks)*

(c) Explain how the small intestine is adapted for absorption. *(5 marks)*

---

**Q5.** (a) Name the enzymes that digest carbohydrates, proteins, and fats. *(3 marks)*

(b) State the products of digestion of each. *(3 marks)*

(c) Explain the role of bile in digestion. *(4 marks)*

---

**Q6.** (a) What is a balanced diet? *(2 marks)*

(b) Name the seven components of a balanced diet and state one function of each. *(7 marks)*

(c) Explain why a pregnant woman needs more iron in her diet. *(3 marks)*

---

**Q7.** (a) Describe the structure of the human respiratory system. *(5 marks)*

(b) Explain how gaseous exchange occurs in the alveoli. *(5 marks)*

(c) State two ways in which the alveoli are adapted for gaseous exchange. *(3 marks)*

---

**Q8.** (a) State the word equation for aerobic respiration. *(2 marks)*

(b) Distinguish between aerobic and anaerobic respiration. *(4 marks)*

(c) Explain why anaerobic respiration produces less energy than aerobic respiration. *(4 marks)*

---

**Q9.** (a) What is anaerobic respiration in muscles? *(2 marks)*

(b) Name the product of anaerobic respiration in muscles and explain why it causes fatigue. *(4 marks)*

(c) Explain what is meant by "oxygen debt". *(4 marks)*

---

**Q10.** (a) Name the excretory organs of the human body. *(3 marks)*

(b) State the main excretory product of each organ. *(3 marks)*

(c) Explain the role of the kidney in excretion and osmoregulation. *(6 marks)*

---

**Q11.** (a) Describe the structure of a nephron. *(5 marks)*

(b) Explain how ultrafiltration occurs in the glomerulus. *(4 marks)*

(c) State what happens to glucose in the kidney tubule. *(3 marks)*

---

**Q12.** (a) What is homeostasis? *(2 marks)*

(b) Give two examples of homeostasis in the human body. *(2 marks)*

(c) Explain how the body regulates its temperature when it is too hot. *(6 marks)*

---

**Q13.** (a) Define the term "transpiration". *(2 marks)*

(b) State three factors that affect the rate of transpiration. *(3 marks)*

(c) Describe an experiment to demonstrate transpiration. *(5 marks)*

---

**Q14.** (a) Explain how water and mineral salts are transported in plants. *(5 marks)*

(b) State the role of the xylem and phloem. *(4 marks)*

(c) Explain how the products of photosynthesis are transported in plants. *(4 marks)*

---

**Q15.** (a) What is the function of the liver in the body? *(4 marks)*

(b) Name two substances the liver produces or processes. *(2 marks)*

(c) Explain how the liver regulates blood glucose level. *(5 marks)*

---

**Q16.** (a) State the function of the large intestine. *(2 marks)*

(b) Explain how water is reabsorbed in the large intestine. *(3 marks)*

(c) Describe what happens when too much water is absorbed. *(3 marks)*

---

**Q17.** (a) Distinguish between breathing and respiration. *(4 marks)*

(b) Explain why breathing rate increases during exercise. *(4 marks)*

(c) State the effect of exercise on the rate of respiration. *(3 marks)*

---

**Q18.** (a) Name the parts of the human digestive system in order. *(4 marks)*

(b) State the function of the pancreas. *(3 marks)*

(c) Explain how the villi increase the rate of absorption. *(4 marks)*

---

**Q19.** (a) What is the role of the skin in excretion? *(3 marks)*

(b) Name the substances lost through the skin. *(3 marks)*

(c) Explain how sweating helps to cool the body. *(4 marks)*

---

**Q20.** (a) State the importance of photosynthesis to the ecosystem. *(4 marks)*

(b) Explain why plants are described as producers. *(3 marks)*

(c) Describe the carbon cycle, naming the processes involved. *(5 marks)*
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
  where subject = 'Business Studies'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level BUSINESS STUDIES P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Business Environment: Sample question 1 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Strategic Management: Sample question 2 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Marketing: Sample question 3 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Finance: Sample question 4 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Human Resources: Sample question 5 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Operations: Sample question 6 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Business Ethics: Sample question 7 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Global Business: Sample question 8 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Business Environment: Sample question 9 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Strategic Management: Sample question 10 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Marketing: Sample question 11 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Finance: Sample question 12 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Human Resources: Sample question 13 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Operations: Sample question 14 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Business Ethics: Sample question 15 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Global Business: Sample question 16 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Business Environment: Sample question 17 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Strategic Management: Sample question 18 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Marketing: Sample question 19 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Finance: Sample question 20 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Human Resources: Sample question 21 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Operations: Sample question 22 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Business Ethics: Sample question 23 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Global Business: Sample question 24 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Business Environment: Sample question 25 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Strategic Management: Sample question 26 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Marketing: Sample question 27 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Finance: Sample question 28 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Human Resources: Sample question 29 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Operations: Sample question 30 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Business Ethics: Sample question 31 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Global Business: Sample question 32 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Business Environment: Sample question 33 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Strategic Management: Sample question 34 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Marketing: Sample question 35 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Finance: Sample question 36 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Human Resources: Sample question 37 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Operations: Sample question 38 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Business Ethics: Sample question 39 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Global Business: Sample question 40 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Business Environment: Sample question 41 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Strategic Management: Sample question 42 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Marketing: Sample question 43 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Finance: Sample question 44 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Human Resources: Sample question 45 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Operations: Sample question 46 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Business Ethics: Sample question 47 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Global Business: Sample question 48 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Business Environment: Sample question 49 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Strategic Management: Sample question 50 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Marketing: Sample question 51 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Finance: Sample question 52 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Human Resources: Sample question 53 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Operations: Sample question 54 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Business Ethics: Sample question 55 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Global Business: Sample question 56 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Business Environment: Sample question 57 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Strategic Management: Sample question 58 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Marketing: Sample question 59 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Finance: Sample question 60 for Business Studies Advanced Level Paper 1.

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
  where subject = 'Business Studies'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level BUSINESS STUDIES P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Business Environment: Sample question 1 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Strategic Management: Sample question 2 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Marketing: Sample question 3 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Finance: Sample question 4 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Human Resources: Sample question 5 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Operations: Sample question 6 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Business Ethics: Sample question 7 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Global Business: Sample question 8 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Business Environment: Sample question 9 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Strategic Management: Sample question 10 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Marketing: Sample question 11 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Finance: Sample question 12 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Human Resources: Sample question 13 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Operations: Sample question 14 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Business Ethics: Sample question 15 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Global Business: Sample question 16 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Business Environment: Sample question 17 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Strategic Management: Sample question 18 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Marketing: Sample question 19 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Finance: Sample question 20 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Human Resources: Sample question 21 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Operations: Sample question 22 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Business Ethics: Sample question 23 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Global Business: Sample question 24 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Business Environment: Sample question 25 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Strategic Management: Sample question 26 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Marketing: Sample question 27 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Finance: Sample question 28 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Human Resources: Sample question 29 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Operations: Sample question 30 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Business Ethics: Sample question 31 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Global Business: Sample question 32 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Business Environment: Sample question 33 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Strategic Management: Sample question 34 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Marketing: Sample question 35 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Finance: Sample question 36 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Human Resources: Sample question 37 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Operations: Sample question 38 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Business Ethics: Sample question 39 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Global Business: Sample question 40 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Business Environment: Sample question 41 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Strategic Management: Sample question 42 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Marketing: Sample question 43 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Finance: Sample question 44 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Human Resources: Sample question 45 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Operations: Sample question 46 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Business Ethics: Sample question 47 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Global Business: Sample question 48 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Business Environment: Sample question 49 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Strategic Management: Sample question 50 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Marketing: Sample question 51 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Finance: Sample question 52 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Human Resources: Sample question 53 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Operations: Sample question 54 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Business Ethics: Sample question 55 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Global Business: Sample question 56 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Business Environment: Sample question 57 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Strategic Management: Sample question 58 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Marketing: Sample question 59 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Finance: Sample question 60 for Business Studies Advanced Level Paper 1.

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
  where subject = 'Business Studies'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level BUSINESS STUDIES P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Business Environment: Sample question 1 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Strategic Management: Sample question 2 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Marketing: Sample question 3 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Finance: Sample question 4 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Human Resources: Sample question 5 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Operations: Sample question 6 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Business Ethics: Sample question 7 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Global Business: Sample question 8 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Business Environment: Sample question 9 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Strategic Management: Sample question 10 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Marketing: Sample question 11 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Finance: Sample question 12 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Human Resources: Sample question 13 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Operations: Sample question 14 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Business Ethics: Sample question 15 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Global Business: Sample question 16 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Business Environment: Sample question 17 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Strategic Management: Sample question 18 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Marketing: Sample question 19 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Finance: Sample question 20 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Human Resources: Sample question 21 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Operations: Sample question 22 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Business Ethics: Sample question 23 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Global Business: Sample question 24 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Business Environment: Sample question 25 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Strategic Management: Sample question 26 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Marketing: Sample question 27 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Finance: Sample question 28 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Human Resources: Sample question 29 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Operations: Sample question 30 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Business Ethics: Sample question 31 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Global Business: Sample question 32 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Business Environment: Sample question 33 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Strategic Management: Sample question 34 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Marketing: Sample question 35 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Finance: Sample question 36 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Human Resources: Sample question 37 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Operations: Sample question 38 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Business Ethics: Sample question 39 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Global Business: Sample question 40 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Business Environment: Sample question 41 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Strategic Management: Sample question 42 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Marketing: Sample question 43 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Finance: Sample question 44 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Human Resources: Sample question 45 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Operations: Sample question 46 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Business Ethics: Sample question 47 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Global Business: Sample question 48 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Business Environment: Sample question 49 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Strategic Management: Sample question 50 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Marketing: Sample question 51 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Finance: Sample question 52 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Human Resources: Sample question 53 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Operations: Sample question 54 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Business Ethics: Sample question 55 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Global Business: Sample question 56 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Business Environment: Sample question 57 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Strategic Management: Sample question 58 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Marketing: Sample question 59 for Business Studies Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Finance: Sample question 60 for Business Studies Advanced Level Paper 1.

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
  where subject = 'Business Studies'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ENTERPRISE

**Q1.** Enterprise: Enterprise case 1 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Enterprise: Enterprise case 2 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Enterprise: Enterprise case 3 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

![Business market graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Enterprise: Enterprise case 4 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Enterprise: Enterprise case 5 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: BUSINESS OWNERSHIP

**Q6.** Business ownership: Enterprise case 6 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Business ownership: Enterprise case 7 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Business ownership: Enterprise case 8 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Business ownership: Enterprise case 9 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Business ownership: Enterprise case 10 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: MANAGEMENT

**Q11.** Management: Enterprise case 11 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Management: Enterprise case 12 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Management: Enterprise case 13 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Management: Enterprise case 14 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Management: Enterprise case 15 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: MARKETING

**Q16.** Marketing: Enterprise case 16 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Marketing: Enterprise case 17 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Marketing: Enterprise case 18 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Marketing: Enterprise case 19 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Marketing: Enterprise case 20 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: FINANCE

**Q21.** Finance: Enterprise case 21 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Finance: Enterprise case 22 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Finance: Enterprise case 23 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Finance: Enterprise case 24 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Finance: Enterprise case 25 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: HUMAN RESOURCES

**Q26.** Human resources: Enterprise case 26 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Human resources: Enterprise case 27 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Human resources: Enterprise case 28 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Human resources: Enterprise case 29 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Human resources: Enterprise case 30 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: PRODUCTION

**Q31.** Production: Enterprise case 31 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Production: Enterprise case 32 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Production: Enterprise case 33 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Production: Enterprise case 34 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Production: Enterprise case 35 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: BUSINESS ENVIRONMENT

**Q36.** Business environment: Enterprise case 36 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** Business environment: Enterprise case 37 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** Business environment: Enterprise case 38 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** Business environment: Enterprise case 39 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** Business environment: Enterprise case 40 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

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
  where subject = 'Business Studies'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ENTERPRISE

**Q1.** Enterprise: Enterprise case 1 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Enterprise: Enterprise case 2 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Enterprise: Enterprise case 3 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

![Business market graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Enterprise: Enterprise case 4 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Enterprise: Enterprise case 5 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: BUSINESS OWNERSHIP

**Q6.** Business ownership: Enterprise case 6 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Business ownership: Enterprise case 7 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Business ownership: Enterprise case 8 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Business ownership: Enterprise case 9 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Business ownership: Enterprise case 10 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: MANAGEMENT

**Q11.** Management: Enterprise case 11 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Management: Enterprise case 12 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Management: Enterprise case 13 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Management: Enterprise case 14 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Management: Enterprise case 15 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: MARKETING

**Q16.** Marketing: Enterprise case 16 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Marketing: Enterprise case 17 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Marketing: Enterprise case 18 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Marketing: Enterprise case 19 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Marketing: Enterprise case 20 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: FINANCE

**Q21.** Finance: Enterprise case 21 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Finance: Enterprise case 22 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Finance: Enterprise case 23 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Finance: Enterprise case 24 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Finance: Enterprise case 25 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: HUMAN RESOURCES

**Q26.** Human resources: Enterprise case 26 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Human resources: Enterprise case 27 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Human resources: Enterprise case 28 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Human resources: Enterprise case 29 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Human resources: Enterprise case 30 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: PRODUCTION

**Q31.** Production: Enterprise case 31 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Production: Enterprise case 32 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Production: Enterprise case 33 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Production: Enterprise case 34 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Production: Enterprise case 35 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: BUSINESS ENVIRONMENT

**Q36.** Business environment: Enterprise case 36 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** Business environment: Enterprise case 37 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** Business environment: Enterprise case 38 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** Business environment: Enterprise case 39 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** Business environment: Enterprise case 40 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

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
  where subject = 'Business Studies'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Business Studies',
  'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ENTERPRISE

**Q1.** Enterprise: Enterprise case 1 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Enterprise: Enterprise case 2 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Enterprise: Enterprise case 3 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

![Business market graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Enterprise: Enterprise case 4 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Enterprise: Enterprise case 5 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply enterprise to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: BUSINESS OWNERSHIP

**Q6.** Business ownership: Enterprise case 6 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Business ownership: Enterprise case 7 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Business ownership: Enterprise case 8 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Business ownership: Enterprise case 9 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Business ownership: Enterprise case 10 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business ownership to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: MANAGEMENT

**Q11.** Management: Enterprise case 11 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Management: Enterprise case 12 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Management: Enterprise case 13 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Management: Enterprise case 14 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Management: Enterprise case 15 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply management to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: MARKETING

**Q16.** Marketing: Enterprise case 16 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Marketing: Enterprise case 17 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Marketing: Enterprise case 18 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Marketing: Enterprise case 19 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Marketing: Enterprise case 20 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply marketing to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: FINANCE

**Q21.** Finance: Enterprise case 21 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Finance: Enterprise case 22 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Finance: Enterprise case 23 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Finance: Enterprise case 24 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Finance: Enterprise case 25 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply finance to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: HUMAN RESOURCES

**Q26.** Human resources: Enterprise case 26 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** Human resources: Enterprise case 27 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** Human resources: Enterprise case 28 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** Human resources: Enterprise case 29 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** Human resources: Enterprise case 30 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply human resources to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: PRODUCTION

**Q31.** Production: Enterprise case 31 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Production: Enterprise case 32 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Production: Enterprise case 33 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Production: Enterprise case 34 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Production: Enterprise case 35 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply production to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: BUSINESS ENVIRONMENT

**Q36.** Business environment: Enterprise case 36 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** Business environment: Enterprise case 37 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** Business environment: Enterprise case 38 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** Business environment: Enterprise case 39 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** Business environment: Enterprise case 40 must decide on ownership, finance, staffing, production, marketing, and ethics. Apply business environment to the decision.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

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