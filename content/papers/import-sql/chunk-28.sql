begin;

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

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Pure Mathematics with Mechanics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Pure Mathematics with Mechanics',
  'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level PURE MATHEMATICS WITH MECHANICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Pure Mathematics with Mechanics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Algebra: Sample question 1 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Calculus: Sample question 2 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Trigonometry: Sample question 3 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Coordinate Geometry: Sample question 4 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Vectors: Sample question 5 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Mechanics: Sample question 6 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Statistics: Sample question 7 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Problem Solving: Sample question 8 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Algebra: Sample question 9 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Calculus: Sample question 10 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Trigonometry: Sample question 11 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Coordinate Geometry: Sample question 12 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Vectors: Sample question 13 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Mechanics: Sample question 14 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Statistics: Sample question 15 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Problem Solving: Sample question 16 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Algebra: Sample question 17 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Calculus: Sample question 18 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Trigonometry: Sample question 19 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Coordinate Geometry: Sample question 20 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Vectors: Sample question 21 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Mechanics: Sample question 22 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Statistics: Sample question 23 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Problem Solving: Sample question 24 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Algebra: Sample question 25 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Calculus: Sample question 26 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Trigonometry: Sample question 27 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Coordinate Geometry: Sample question 28 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Vectors: Sample question 29 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Mechanics: Sample question 30 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Statistics: Sample question 31 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Problem Solving: Sample question 32 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Algebra: Sample question 33 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Calculus: Sample question 34 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Trigonometry: Sample question 35 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Coordinate Geometry: Sample question 36 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Vectors: Sample question 37 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Mechanics: Sample question 38 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Statistics: Sample question 39 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Problem Solving: Sample question 40 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Algebra: Sample question 41 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Calculus: Sample question 42 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Trigonometry: Sample question 43 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Coordinate Geometry: Sample question 44 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Vectors: Sample question 45 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Mechanics: Sample question 46 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Statistics: Sample question 47 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Problem Solving: Sample question 48 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Algebra: Sample question 49 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Calculus: Sample question 50 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Trigonometry: Sample question 51 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Coordinate Geometry: Sample question 52 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Vectors: Sample question 53 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Mechanics: Sample question 54 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Statistics: Sample question 55 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Problem Solving: Sample question 56 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Algebra: Sample question 57 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Calculus: Sample question 58 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Trigonometry: Sample question 59 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Coordinate Geometry: Sample question 60 for Pure Mathematics with Mechanics Advanced Level Paper 1.

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
  where subject = 'Pure Mathematics with Mechanics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Pure Mathematics with Mechanics',
  'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level PURE MATHEMATICS WITH MECHANICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Pure Mathematics with Mechanics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Algebra: Sample question 1 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Calculus: Sample question 2 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Trigonometry: Sample question 3 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Coordinate Geometry: Sample question 4 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Vectors: Sample question 5 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Mechanics: Sample question 6 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Statistics: Sample question 7 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Problem Solving: Sample question 8 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Algebra: Sample question 9 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Calculus: Sample question 10 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Trigonometry: Sample question 11 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Coordinate Geometry: Sample question 12 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Vectors: Sample question 13 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Mechanics: Sample question 14 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Statistics: Sample question 15 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Problem Solving: Sample question 16 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Algebra: Sample question 17 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Calculus: Sample question 18 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Trigonometry: Sample question 19 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Coordinate Geometry: Sample question 20 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Vectors: Sample question 21 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Mechanics: Sample question 22 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Statistics: Sample question 23 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Problem Solving: Sample question 24 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Algebra: Sample question 25 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Calculus: Sample question 26 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Trigonometry: Sample question 27 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Coordinate Geometry: Sample question 28 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Vectors: Sample question 29 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Mechanics: Sample question 30 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Statistics: Sample question 31 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Problem Solving: Sample question 32 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Algebra: Sample question 33 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Calculus: Sample question 34 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Trigonometry: Sample question 35 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Coordinate Geometry: Sample question 36 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Vectors: Sample question 37 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Mechanics: Sample question 38 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Statistics: Sample question 39 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Problem Solving: Sample question 40 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Algebra: Sample question 41 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Calculus: Sample question 42 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Trigonometry: Sample question 43 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Coordinate Geometry: Sample question 44 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Vectors: Sample question 45 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Mechanics: Sample question 46 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Statistics: Sample question 47 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Problem Solving: Sample question 48 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Algebra: Sample question 49 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Calculus: Sample question 50 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Trigonometry: Sample question 51 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Coordinate Geometry: Sample question 52 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Vectors: Sample question 53 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Mechanics: Sample question 54 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Statistics: Sample question 55 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Problem Solving: Sample question 56 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Algebra: Sample question 57 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Calculus: Sample question 58 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Trigonometry: Sample question 59 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Coordinate Geometry: Sample question 60 for Pure Mathematics with Mechanics Advanced Level Paper 1.

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
  where subject = 'Pure Mathematics with Mechanics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Pure Mathematics with Mechanics',
  'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE Advanced Level PURE MATHEMATICS WITH MECHANICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Pure Mathematics with Mechanics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Algebra: Sample question 1 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q2.** Calculus: Sample question 2 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q3.** Trigonometry: Sample question 3 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q4.** Coordinate Geometry: Sample question 4 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q5.** Vectors: Sample question 5 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q6.** Mechanics: Sample question 6 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q7.** Statistics: Sample question 7 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q8.** Problem Solving: Sample question 8 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q9.** Algebra: Sample question 9 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q10.** Calculus: Sample question 10 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q11.** Trigonometry: Sample question 11 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q12.** Coordinate Geometry: Sample question 12 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q13.** Vectors: Sample question 13 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q14.** Mechanics: Sample question 14 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q15.** Statistics: Sample question 15 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q16.** Problem Solving: Sample question 16 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q17.** Algebra: Sample question 17 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q18.** Calculus: Sample question 18 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q19.** Trigonometry: Sample question 19 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q20.** Coordinate Geometry: Sample question 20 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q21.** Vectors: Sample question 21 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q22.** Mechanics: Sample question 22 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q23.** Statistics: Sample question 23 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q24.** Problem Solving: Sample question 24 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q25.** Algebra: Sample question 25 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q26.** Calculus: Sample question 26 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q27.** Trigonometry: Sample question 27 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q28.** Coordinate Geometry: Sample question 28 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q29.** Vectors: Sample question 29 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q30.** Mechanics: Sample question 30 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q31.** Statistics: Sample question 31 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q32.** Problem Solving: Sample question 32 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q33.** Algebra: Sample question 33 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q34.** Calculus: Sample question 34 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q35.** Trigonometry: Sample question 35 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q36.** Coordinate Geometry: Sample question 36 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q37.** Vectors: Sample question 37 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q38.** Mechanics: Sample question 38 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q39.** Statistics: Sample question 39 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q40.** Problem Solving: Sample question 40 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q41.** Algebra: Sample question 41 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q42.** Calculus: Sample question 42 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q43.** Trigonometry: Sample question 43 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q44.** Coordinate Geometry: Sample question 44 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q45.** Vectors: Sample question 45 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q46.** Mechanics: Sample question 46 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q47.** Statistics: Sample question 47 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q48.** Problem Solving: Sample question 48 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q49.** Algebra: Sample question 49 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q50.** Calculus: Sample question 50 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q51.** Trigonometry: Sample question 51 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q52.** Coordinate Geometry: Sample question 52 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q53.** Vectors: Sample question 53 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q54.** Mechanics: Sample question 54 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q55.** Statistics: Sample question 55 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q56.** Problem Solving: Sample question 56 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q57.** Algebra: Sample question 57 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q58.** Calculus: Sample question 58 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q59.** Trigonometry: Sample question 59 for Pure Mathematics with Mechanics Advanced Level Paper 1.

A. Option A  
B. Option B  
C. Option C  
D. Option D  

---

**Q60.** Coordinate Geometry: Sample question 60 for Pure Mathematics with Mechanics Advanced Level Paper 1.

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
  where subject = 'Pure Mathematics with Mechanics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Pure Mathematics with Mechanics',
  'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Pure Mathematics with Mechanics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ALGEBRA - Polynomials, Inequalities and Partial Fractions

**Q1.** The polynomial $P(x) = 2x^4 - 3x^3 + ax^2 + bx - 6$ has $(2x - 1)$ and $(x + 2)$ as factors.

(a) Find the values of $a$ and $b$. *(4 marks)*

(b) Factorise $P(x)$ completely over $\mathbb{R}$. *(3 marks)*

(c) Hence, solve the inequality $P(x) \geq 0$, expressing your answer in interval notation. *(3 marks)*

---

**Q2.** Given that $f(x) = \dfrac{3x^3 - x^2 - 13x + 7}{(x-2)(x^2 - x - 1)}$:

(a) Express $f(x)$ in partial fractions. *(6 marks)*

(b) Hence evaluate $\displaystyle\int_0^{1} f(x)\, dx$, leaving your answer in the form $a\ln 2 + b\ln 5 + c\ln 3$. *(4 marks)*

---

**Q3.** (a) Show that the equation $x^4 - 6x^2 + 2x + 3 = 0$ has a root between $x = 2$ and $x = 3$. *(2 marks)*

(b) Using the substitution $x = u + \dfrac{1}{u}$, or otherwise, solve $x^4 - 6x^2 + 2x + 3 = 0$ giving all real roots correct to 3 significant figures. *(6 marks)*

(c) Without further calculation, state the nature and number of complex roots. *(2 marks)*

---

**Q4.** Solve simultaneously the system:

$$\log_2(x + y) = 3, \quad \log_4(x - y) = 2, \quad x, y \in \mathbb{R}$$

Hence find all pairs $(x, y)$ that also satisfy $\dfrac{x^2 - y^2}{x + y} = 2y - 1$. *(10 marks)*

---

**Q5.** Given that $\alpha, \beta, \gamma$ are the roots of $x^3 - px + q = 0$, where $p, q \neq 0$:

(a) Find $\alpha^2+\beta^2+\gamma^2$, $\alpha^3+\beta^3+\gamma^3$, and $\alpha^4+\beta^4+\gamma^4$ in terms of $p$ and $q$. *(6 marks)*

(b) Find the cubic equation whose roots are $\alpha^2, \beta^2, \gamma^2$. *(4 marks)*

---

## SECTION 2: FUNCTIONS, SERIES AND TRIGONOMETRY

**Q6.** (a) Find the first four terms in the expansion of $(1 - 3x)^{-2}$ in ascending powers of $x$, stating the range of validity. *(4 marks)*

(b) Use your expansion to estimate $\dfrac{1}{0.97^2}$ correct to 5 decimal places. *(3 marks)*

(c) Find the coefficient of $x^8$ in $(1 + x + x^2)^9$. *(5 marks)*

---

**Q7.** The functions $f$ and $g$ are defined by $f(x)=e^{2x}-5$ and $g(x)=\dfrac{x+1}{x-3}$, $x \neq 3$.

(a) Find $f^{-1}(x)$ and state its domain. *(4 marks)*

(b) Solve $f(g(x)) = g(f(x))$ where both sides are defined. *(6 marks)*

(c) Find the fixed points of $g \circ g$. *(4 marks)*

---

**Q8.** The function $h(x)=x^2-6x+11$ is restricted to a domain on which it is one-to-one.

(a) State a suitable maximal domain and find $h^{-1}(x)$. *(4 marks)*

(b) Sketch $y=h(x)$ and $y=h^{-1}(x)$ on the same axes. *(3 marks)*

(c) Solve $h(x)=h^{-1}(x)$ for all possible values on the chosen domain. *(5 marks)*

---

**Q9.** (a) Prove that $\cot\theta - \tan\theta \equiv 2\cot 2\theta$. *(4 marks)*

(b) Solve $2\sin^2 x + 5\cos x - 4 = 0$ for $0^\circ \leq x \leq 360^\circ$. *(4 marks)*

(c) Find the general solution of $\cos 3x + \cos x = \cos 2x$. *(5 marks)*

---

**Q10.** In triangle $ABC$, $a=7$, $b=8$, and $c=9$.

![Triangle ABC](/paper-diagrams/math-triangle.svg)

(a) Find all angles of the triangle correct to the nearest $0.1^\circ$. *(4 marks)*

(b) Find the area of the triangle using Heron''s formula. *(3 marks)*

(c) Hence find the radius of the incircle and the circumcircle. *(5 marks)*

---

## SECTION 3: LOGARITHMS, COMPLEX NUMBERS AND DIFFERENTIATION

**Q11.** (a) Prove that $\cosh^2 x - \sinh^2 x = 1$. *(3 marks)*

(b) Solve $\cosh x + 3\sinh x = 5$, giving exact answers in logarithmic form. *(6 marks)*

(c) Evaluate $\displaystyle\int_0^{1/2}\tanh^{-1}x\,dx$. *(5 marks)*

---

**Q12.** (a) Solve $\log_3(x+5)+\log_9(x+5)=\log_3(x+5)\log_9(x+5)+1$ for $x>-5$. *(5 marks)*

(b) Show that $\dfrac{\ln 2}{\ln 3}\cdot\dfrac{\ln 3}{\ln 5}\cdot\dfrac{\ln 5}{\ln 8}=\dfrac13$. *(3 marks)*

(c) Find the exact solution of $2^x=3^{x-1}5^{2-x}$. *(5 marks)*

---

**Q13.** The complex number $z$ satisfies $|z-3i|=|z+3|$ and $\arg(z-1)=\dfrac{\pi}{4}$.

(a) Describe each locus geometrically and sketch them on an Argand diagram. *(4 marks)*

(b) Find the complex number satisfying both conditions. *(4 marks)*

(c) Find all cube roots of $-8i$ in exact polar form. *(5 marks)*

---

**Q14.** (a) Differentiate from first principles $f(x)=\dfrac{1}{\sqrt{2x+1}}$. *(4 marks)*

(b) Given $y=x^{\sin x}$, $x>0$, find $\dfrac{dy}{dx}$. *(5 marks)*

(c) The equation $e^{xy}=x+y$ defines $y$ implicitly. Find $\dfrac{dy}{dx}$ at $(1,0)$. *(4 marks)*

---

**Q15.** A curve is defined parametrically by $x=\dfrac{3t}{1+t^3}$ and $y=\dfrac{3t^2}{1+t^3}$, $t \neq -1$.

(a) Show that $x^3+y^3=3xy$. *(3 marks)*

(b) Find the equation of the tangent at $t=1$. *(4 marks)*

(c) Show that $x+y+1=0$ is an asymptote. *(4 marks)*

---

## SECTION 4: INTEGRATION AND MECHANICS

**Q16.** (a) Use the Mean Value Theorem to prove that for $0<a<b$, $\dfrac{b-a}{b}<\ln\dfrac{b}{a}<\dfrac{b-a}{a}$. *(5 marks)*

(b) Find the stationary points of $y=x^3-6x^2+9x+4$ and determine their nature. *(5 marks)*

---

**Q17.** (a) Evaluate $\displaystyle\int \dfrac{2x+5}{x^2+5x+6}\,dx$. *(4 marks)*

(b) Use integration by parts to evaluate $\displaystyle\int_0^1 x^2e^x\,dx$. *(5 marks)*

(c) Find the area enclosed by $y=x^2$ and $y=2x+3$. *(5 marks)*

---

**Q18.** (a) Find a reduction formula for $I_n=\displaystyle\int_0^{\pi/2}\sin^n x\,dx$. *(6 marks)*

(b) Hence evaluate $I_6$. *(3 marks)*

(c) Use the result to estimate $\displaystyle\int_0^{\pi/2}\sin^6x\cos^2x\,dx$. *(5 marks)*

---

**Q19.** A particle moves in a straight line with displacement $s=t^3-6t^2+9t+4$ metres after $t$ seconds.

(a) Find its velocity and acceleration at time $t$. *(3 marks)*

(b) Determine when the particle is at rest. *(3 marks)*

(c) Find the total distance travelled in the first 5 seconds. *(6 marks)*

---

**Q20.** A projectile is fired with speed $40\,\text{m s}^{-1}$ at an angle $30^\circ$ to the horizontal from level ground.

(a) Find the time of flight. *(3 marks)*

(b) Find the greatest height reached. *(3 marks)*

(c) Find the horizontal range, taking $g=10\,\text{m s}^{-2}$. *(4 marks)*

---

## SECTION 5: STATISTICS, NUMERICAL METHODS AND MATRICES

**Q21.** A body of mass $5\,\text{kg}$ rests on a rough plane inclined at $30^\circ$ to the horizontal. The coefficient of friction is $0.25$.

(a) Find the component of weight down the plane. *(2 marks)*

(b) Determine whether the body will slide. *(4 marks)*

(c) Find the least force parallel to the plane needed to move the body upwards. *(5 marks)*

---

**Q22.** Two particles of masses $3\,\text{kg}$ and $5\,\text{kg}$ are connected by a light inextensible string over a smooth pulley.

(a) Find the acceleration of the system. *(4 marks)*

(b) Find the tension in the string. *(4 marks)*

(c) State how your answer changes if the pulley is rough. *(2 marks)*

---

**Q23.** A random variable $X$ has probability distribution $P(X=x)=kx$ for $x=1,2,3,4$.

(a) Find $k$. *(2 marks)*

(b) Find $E(X)$ and $\operatorname{Var}(X)$. *(5 marks)*

(c) Find $P(X\geq 3\mid X>1)$. *(3 marks)*

---

**Q24.** The marks of 60 candidates are grouped as follows: $0-9:4$, $10-19:8$, $20-29:15$, $30-39:18$, $40-49:10$, $50-59:5$.

(a) Estimate the mean mark. *(4 marks)*

(b) Estimate the median. *(4 marks)*

(c) Draw a cumulative frequency curve and use it to estimate the interquartile range. *(5 marks)*

---

**Q25.** A sample of 100 bulbs has mean lifetime 1240 hours and standard deviation 80 hours.

(a) Construct a 95% confidence interval for the population mean. *(5 marks)*

(b) Test at the 5% level whether the mean lifetime differs from 1200 hours. *(6 marks)*

---

## SECTION 6: PROOF, COORDINATE GEOMETRY AND SEQUENCES

**Q26.** (a) Use Newton-Raphson iteration to find a root of $x^3-x-1=0$ starting with $x_0=1$. Give three iterations. *(6 marks)*

(b) Explain, using the graph of the function, why the iteration converges to the real root. *(3 marks)*

---

**Q27.** (a) Show that the matrix $A=\begin{pmatrix}2&1\\1&3\end{pmatrix}$ is invertible and find $A^{-1}$. *(4 marks)*

(b) Solve the system $2x+y=5$, $x+3y=7$ using the inverse matrix method. *(4 marks)*

(c) Interpret the transformation represented by $A$ geometrically. *(4 marks)*

---

**Q28.** (a) Prove by induction that $1^2+2^2+\cdots+n^2=\dfrac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Hence find $\sum_{r=1}^{20}(3r^2-2r+1)$. *(4 marks)*

---

**Q29.** The roots of $x^2-5x+6=0$ are $\alpha$ and $\beta$.

(a) Find a quadratic equation whose roots are $\alpha^2$ and $\beta^2$. *(4 marks)*

(b) Find a quadratic equation whose roots are $\dfrac{1}{\alpha}$ and $\dfrac{1}{\beta}$. *(4 marks)*

(c) Hence evaluate $\alpha^4+\beta^4$. *(3 marks)*

---

**Q30.** (a) Solve $|2x-3|+|x+1|=8$. *(5 marks)*

(b) Solve $\dfrac{x^2-4x+3}{x^2-x-6}\leq 0$. *(5 marks)*

(c) Represent both solution sets on separate number lines. *(2 marks)*

---

## SECTION 7: DIFFERENTIAL EQUATIONS, MODELS AND NUMERICAL INTEGRATION

**Q31.** (a) Find the equation of the circle passing through $(1,2)$, $(3,4)$, and $(5,0)$. *(6 marks)*

(b) Find the tangent to the circle at $(1,2)$. *(4 marks)*

---

**Q32.** A line $y=mx+c$ is tangent to the parabola $y=x^2-4x+1$.

(a) Find the condition relating $m$ and $c$. *(5 marks)*

(b) Find the two tangents from the point $(0,-3)$ to the parabola. *(6 marks)*

---

**Q33.** (a) Solve $\sin x + \sqrt3\cos x = 1$ for $0\leq x\leq 2\pi$. *(5 marks)*

(b) Prove that $\dfrac{1-\cos 2x}{\sin 2x}=\tan x$ where both sides are defined. *(3 marks)*

(c) Find all $x$ such that $\tan 2x=\sqrt3$ in the interval $0^\circ\leq x\leq 180^\circ$. *(4 marks)*

---

**Q34.** The arithmetic progression has first term $a$ and common difference $d$. The 5th term is 17 and the sum of the first 10 terms is 200.

(a) Find $a$ and $d$. *(5 marks)*

(b) Find the least value of $n$ for which the sum of the first $n$ terms exceeds 500. *(5 marks)*

---

**Q35.** A geometric progression has first term 81 and common ratio $\dfrac{2}{3}$.

(a) Find the 8th term. *(3 marks)*

(b) Find the sum to infinity. *(3 marks)*

(c) Find the number of terms required for the partial sum to exceed 230. *(5 marks)*

---

## SECTION 8: VECTORS AND THREE-DIMENSIONAL GEOMETRY

**Q36.** (a) Solve the differential equation $\dfrac{dy}{dx}=3x^2(1+y)$ given that $y=0$ when $x=0$. *(6 marks)*

(b) Find the value of $y$ when $x=1$. *(2 marks)*

(c) Sketch the solution curve. *(3 marks)*

---

**Q37.** A population model is given by $P(t)=\dfrac{5000}{1+4e^{-0.3t}}$.

(a) Find the initial population. *(2 marks)*

(b) Find the time when the population first reaches 3000. *(4 marks)*

(c) State the limiting population as $t\to\infty$. *(2 marks)*

---

**Q38.** (a) Use Simpson''s rule with four strips to estimate $\displaystyle\int_0^2 \dfrac{1}{1+x^2}\,dx$. *(6 marks)*

(b) Compare your estimate with $\tan^{-1}2$ and comment on the accuracy. *(4 marks)*

---

**Q39.** The vectors $\mathbf{a}=2\mathbf{i}-\mathbf{j}+3\mathbf{k}$ and $\mathbf{b}=\mathbf{i}+4\mathbf{j}-2\mathbf{k}$ are given.

(a) Find $\mathbf{a}\cdot\mathbf{b}$ and the angle between them. *(5 marks)*

(b) Find $\mathbf{a}\times\mathbf{b}$. *(4 marks)*

(c) Find the area of the parallelogram formed by $\mathbf{a}$ and $\mathbf{b}$. *(3 marks)*

---

**Q40.** The plane $2x-y+3z=6$ meets the coordinate axes at $A$, $B$, and $C$.

(a) Find the coordinates of $A$, $B$, and $C$. *(3 marks)*

(b) Find the area of triangle $ABC$. *(5 marks)*

(c) Find the shortest distance from the origin to the plane. *(4 marks)*

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
  where subject = 'Pure Mathematics with Mechanics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Pure Mathematics with Mechanics',
  'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Pure Mathematics with Mechanics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: ALGEBRA - Polynomials, Inequalities and Partial Fractions

**Q1.** The polynomial $P(x) = 2x^4 - 3x^3 + ax^2 + bx - 6$ has $(2x - 1)$ and $(x + 2)$ as factors.

(a) Find the values of $a$ and $b$. *(4 marks)*

(b) Factorise $P(x)$ completely over $\mathbb{R}$. *(3 marks)*

(c) Hence, solve the inequality $P(x) \geq 0$, expressing your answer in interval notation. *(3 marks)*

---

**Q2.** Given that $f(x) = \dfrac{3x^3 - x^2 - 13x + 7}{(x-2)(x^2 - x - 1)}$:

(a) Express $f(x)$ in partial fractions. *(6 marks)*

(b) Hence evaluate $\displaystyle\int_0^{1} f(x)\, dx$, leaving your answer in the form $a\ln 2 + b\ln 5 + c\ln 3$. *(4 marks)*

---

**Q3.** (a) Show that the equation $x^4 - 6x^2 + 2x + 3 = 0$ has a root between $x = 2$ and $x = 3$. *(2 marks)*

(b) Using the substitution $x = u + \dfrac{1}{u}$, or otherwise, solve $x^4 - 6x^2 + 2x + 3 = 0$ giving all real roots correct to 3 significant figures. *(6 marks)*

(c) Without further calculation, state the nature and number of complex roots. *(2 marks)*

---

**Q4.** Solve simultaneously the system:

$$\log_2(x + y) = 3, \quad \log_4(x - y) = 2, \quad x, y \in \mathbb{R}$$

Hence find all pairs $(x, y)$ that also satisfy $\dfrac{x^2 - y^2}{x + y} = 2y - 1$. *(10 marks)*

---

**Q5.** Given that $\alpha, \beta, \gamma$ are the roots of $x^3 - px + q = 0$, where $p, q \neq 0$:

(a) Find $\alpha^2+\beta^2+\gamma^2$, $\alpha^3+\beta^3+\gamma^3$, and $\alpha^4+\beta^4+\gamma^4$ in terms of $p$ and $q$. *(6 marks)*

(b) Find the cubic equation whose roots are $\alpha^2, \beta^2, \gamma^2$. *(4 marks)*

---

## SECTION 2: FUNCTIONS, SERIES AND TRIGONOMETRY

**Q6.** (a) Find the first four terms in the expansion of $(1 - 3x)^{-2}$ in ascending powers of $x$, stating the range of validity. *(4 marks)*

(b) Use your expansion to estimate $\dfrac{1}{0.97^2}$ correct to 5 decimal places. *(3 marks)*

(c) Find the coefficient of $x^8$ in $(1 + x + x^2)^9$. *(5 marks)*

---

**Q7.** The functions $f$ and $g$ are defined by $f(x)=e^{2x}-5$ and $g(x)=\dfrac{x+1}{x-3}$, $x \neq 3$.

(a) Find $f^{-1}(x)$ and state its domain. *(4 marks)*

(b) Solve $f(g(x)) = g(f(x))$ where both sides are defined. *(6 marks)*

(c) Find the fixed points of $g \circ g$. *(4 marks)*

---

**Q8.** The function $h(x)=x^2-6x+11$ is restricted to a domain on which it is one-to-one.

![Graph sketch axes](/paper-diagrams/math-parabola.svg)

(a) State a suitable maximal domain and find $h^{-1}(x)$. *(4 marks)*

(b) Sketch $y=h(x)$ and $y=h^{-1}(x)$ on the same axes. *(3 marks)*

(c) Solve $h(x)=h^{-1}(x)$ for all possible values on the chosen domain. *(5 marks)*

---

**Q9.** (a) Prove that $\cot\theta - \tan\theta \equiv 2\cot 2\theta$. *(4 marks)*

(b) Solve $2\sin^2 x + 5\cos x - 4 = 0$ for $0^\circ \leq x \leq 360^\circ$. *(4 marks)*

(c) Find the general solution of $\cos 3x + \cos x = \cos 2x$. *(5 marks)*

---

**Q10.** In triangle $ABC$, $a=7$, $b=8$, and $c=9$.

(a) Find all angles of the triangle correct to the nearest $0.1^\circ$. *(4 marks)*

(b) Find the area of the triangle using Heron''s formula. *(3 marks)*

(c) Hence find the radius of the incircle and the circumcircle. *(5 marks)*

---

## SECTION 3: LOGARITHMS, COMPLEX NUMBERS AND DIFFERENTIATION

**Q11.** (a) Prove that $\cosh^2 x - \sinh^2 x = 1$. *(3 marks)*

(b) Solve $\cosh x + 3\sinh x = 5$, giving exact answers in logarithmic form. *(6 marks)*

(c) Evaluate $\displaystyle\int_0^{1/2}\tanh^{-1}x\,dx$. *(5 marks)*

---

**Q12.** (a) Solve $\log_3(x+5)+\log_9(x+5)=\log_3(x+5)\log_9(x+5)+1$ for $x>-5$. *(5 marks)*

(b) Show that $\dfrac{\ln 2}{\ln 3}\cdot\dfrac{\ln 3}{\ln 5}\cdot\dfrac{\ln 5}{\ln 8}=\dfrac13$. *(3 marks)*

(c) Find the exact solution of $2^x=3^{x-1}5^{2-x}$. *(5 marks)*

---

**Q13.** The complex number $z$ satisfies $|z-3i|=|z+3|$ and $\arg(z-1)=\dfrac{\pi}{4}$.

(a) Describe each locus geometrically and sketch them on an Argand diagram. *(4 marks)*

(b) Find the complex number satisfying both conditions. *(4 marks)*

(c) Find all cube roots of $-8i$ in exact polar form. *(5 marks)*

---

**Q14.** (a) Differentiate from first principles $f(x)=\dfrac{1}{\sqrt{2x+1}}$. *(4 marks)*

(b) Given $y=x^{\sin x}$, $x>0$, find $\dfrac{dy}{dx}$. *(5 marks)*

(c) The equation $e^{xy}=x+y$ defines $y$ implicitly. Find $\dfrac{dy}{dx}$ at $(1,0)$. *(4 marks)*

---

**Q15.** A curve is defined parametrically by $x=\dfrac{3t}{1+t^3}$ and $y=\dfrac{3t^2}{1+t^3}$, $t \neq -1$.

(a) Show that $x^3+y^3=3xy$. *(3 marks)*

(b) Find the equation of the tangent at $t=1$. *(4 marks)*

(c) Show that $x+y+1=0$ is an asymptote. *(4 marks)*

---

## SECTION 4: INTEGRATION AND MECHANICS

**Q16.** (a) Use the Mean Value Theorem to prove that for $0<a<b$, $\dfrac{b-a}{b}<\ln\dfrac{b}{a}<\dfrac{b-a}{a}$. *(5 marks)*

(b) Find the stationary points of $y=x^3-6x^2+9x+4$ and determine their nature. *(5 marks)*

---

**Q17.** (a) Evaluate $\displaystyle\int \dfrac{2x+5}{x^2+5x+6}\,dx$. *(4 marks)*

(b) Use integration by parts to evaluate $\displaystyle\int_0^1 x^2e^x\,dx$. *(5 marks)*

(c) Find the area enclosed by $y=x^2$ and $y=2x+3$. *(5 marks)*

---

**Q18.** (a) Find a reduction formula for $I_n=\displaystyle\int_0^{\pi/2}\sin^n x\,dx$. *(6 marks)*

(b) Hence evaluate $I_6$. *(3 marks)*

(c) Use the result to estimate $\displaystyle\int_0^{\pi/2}\sin^6x\cos^2x\,dx$. *(5 marks)*

---

**Q19.** A particle moves in a straight line with displacement $s=t^3-6t^2+9t+4$ metres after $t$ seconds.

(a) Find its velocity and acceleration at time $t$. *(3 marks)*

(b) Determine when the particle is at rest. *(3 marks)*

(c) Find the total distance travelled in the first 5 seconds. *(6 marks)*

---

**Q20.** A projectile is fired with speed $40\,\text{m s}^{-1}$ at an angle $30^\circ$ to the horizontal from level ground.

(a) Find the time of flight. *(3 marks)*

(b) Find the greatest height reached. *(3 marks)*

(c) Find the horizontal range, taking $g=10\,\text{m s}^{-2}$. *(4 marks)*

---

## SECTION 5: STATISTICS, NUMERICAL METHODS AND MATRICES

**Q21.** A body of mass $5\,\text{kg}$ rests on a rough plane inclined at $30^\circ$ to the horizontal. The coefficient of friction is $0.25$.

(a) Find the component of weight down the plane. *(2 marks)*

(b) Determine whether the body will slide. *(4 marks)*

(c) Find the least force parallel to the plane needed to move the body upwards. *(5 marks)*

---

**Q22.** Two particles of masses $3\,\text{kg}$ and $5\,\text{kg}$ are connected by a light inextensible string over a smooth pulley.

(a) Find the acceleration of the system. *(4 marks)*

(b) Find the tension in the string. *(4 marks)*

(c) State how your answer changes if the pulley is rough. *(2 marks)*

---

**Q23.** A random variable $X$ has probability distribution $P(X=x)=kx$ for $x=1,2,3,4$.

(a) Find $k$. *(2 marks)*

(b) Find $E(X)$ and $\operatorname{Var}(X)$. *(5 marks)*

(c) Find $P(X\geq 3\mid X>1)$. *(3 marks)*

---

**Q24.** The marks of 60 candidates are grouped as follows: $0-9:4$, $10-19:8$, $20-29:15$, $30-39:18$, $40-49:10$, $50-59:5$.

(a) Estimate the mean mark. *(4 marks)*

(b) Estimate the median. *(4 marks)*

(c) Draw a cumulative frequency curve and use it to estimate the interquartile range. *(5 marks)*

---

**Q25.** A sample of 100 bulbs has mean lifetime 1240 hours and standard deviation 80 hours.

(a) Construct a 95% confidence interval for the population mean. *(5 marks)*

(b) Test at the 5% level whether the mean lifetime differs from 1200 hours. *(6 marks)*

---

## SECTION 6: PROOF, COORDINATE GEOMETRY AND SEQUENCES

**Q26.** (a) Use Newton-Raphson iteration to find a root of $x^3-x-1=0$ starting with $x_0=1$. Give three iterations. *(6 marks)*

(b) Explain, using the graph of the function, why the iteration converges to the real root. *(3 marks)*

---

**Q27.** (a) Show that the matrix $A=\begin{pmatrix}2&1\\1&3\end{pmatrix}$ is invertible and find $A^{-1}$. *(4 marks)*

(b) Solve the system $2x+y=5$, $x+3y=7$ using the inverse matrix method. *(4 marks)*

(c) Interpret the transformation represented by $A$ geometrically. *(4 marks)*

---

**Q28.** (a) Prove by induction that $1^2+2^2+\cdots+n^2=\dfrac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Hence find $\sum_{r=1}^{20}(3r^2-2r+1)$. *(4 marks)*

---

**Q29.** The roots of $x^2-5x+6=0$ are $\alpha$ and $\beta$.

(a) Find a quadratic equation whose roots are $\alpha^2$ and $\beta^2$. *(4 marks)*

(b) Find a quadratic equation whose roots are $\dfrac{1}{\alpha}$ and $\dfrac{1}{\beta}$. *(4 marks)*

(c) Hence evaluate $\alpha^4+\beta^4$. *(3 marks)*

---

**Q30.** (a) Solve $|2x-3|+|x+1|=8$. *(5 marks)*

(b) Solve $\dfrac{x^2-4x+3}{x^2-x-6}\leq 0$. *(5 marks)*

(c) Represent both solution sets on separate number lines. *(2 marks)*

---

## SECTION 7: DIFFERENTIAL EQUATIONS, MODELS AND NUMERICAL INTEGRATION

**Q31.** (a) Find the equation of the circle passing through $(1,2)$, $(3,4)$, and $(5,0)$. *(6 marks)*

(b) Find the tangent to the circle at $(1,2)$. *(4 marks)*

---

**Q32.** A line $y=mx+c$ is tangent to the parabola $y=x^2-4x+1$.

(a) Find the condition relating $m$ and $c$. *(5 marks)*

(b) Find the two tangents from the point $(0,-3)$ to the parabola. *(6 marks)*

---

**Q33.** (a) Solve $\sin x + \sqrt3\cos x = 1$ for $0\leq x\leq 2\pi$. *(5 marks)*

(b) Prove that $\dfrac{1-\cos 2x}{\sin 2x}=\tan x$ where both sides are defined. *(3 marks)*

(c) Find all $x$ such that $\tan 2x=\sqrt3$ in the interval $0^\circ\leq x\leq 180^\circ$. *(4 marks)*

---

**Q34.** The arithmetic progression has first term $a$ and common difference $d$. The 5th term is 17 and the sum of the first 10 terms is 200.

(a) Find $a$ and $d$. *(5 marks)*

(b) Find the least value of $n$ for which the sum of the first $n$ terms exceeds 500. *(5 marks)*

---

**Q35.** A geometric progression has first term 81 and common ratio $\dfrac{2}{3}$.

(a) Find the 8th term. *(3 marks)*

(b) Find the sum to infinity. *(3 marks)*

(c) Find the number of terms required for the partial sum to exceed 230. *(5 marks)*

---

## SECTION 8: VECTORS AND THREE-DIMENSIONAL GEOMETRY

**Q36.** (a) Solve the differential equation $\dfrac{dy}{dx}=3x^2(1+y)$ given that $y=0$ when $x=0$. *(6 marks)*

(b) Find the value of $y$ when $x=1$. *(2 marks)*

(c) Sketch the solution curve. *(3 marks)*

---

**Q37.** A population model is given by $P(t)=\dfrac{5000}{1+4e^{-0.3t}}$.

(a) Find the initial population. *(2 marks)*

(b) Find the time when the population first reaches 3000. *(4 marks)*

(c) State the limiting population as $t\to\infty$. *(2 marks)*

---

**Q38.** (a) Use Simpson''s rule with four strips to estimate $\displaystyle\int_0^2 \dfrac{1}{1+x^2}\,dx$. *(6 marks)*

(b) Compare your estimate with $\tan^{-1}2$ and comment on the accuracy. *(4 marks)*

---

**Q39.** The vectors $\mathbf{a}=2\mathbf{i}-\mathbf{j}+3\mathbf{k}$ and $\mathbf{b}=\mathbf{i}+4\mathbf{j}-2\mathbf{k}$ are given.

(a) Find $\mathbf{a}\cdot\mathbf{b}$ and the angle between them. *(5 marks)*

(b) Find $\mathbf{a}\times\mathbf{b}$. *(4 marks)*

(c) Find the area of the parallelogram formed by $\mathbf{a}$ and $\mathbf{b}$. *(3 marks)*

---

**Q40.** The plane $2x-y+3z=6$ meets the coordinate axes at $A$, $B$, and $C$.

(a) Find the coordinates of $A$, $B$, and $C$. *(3 marks)*

(b) Find the area of triangle $ABC$. *(5 marks)*

(c) Find the shortest distance from the origin to the plane. *(4 marks)*

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