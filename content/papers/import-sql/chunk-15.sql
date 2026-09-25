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
  where title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1'
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
  'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The SI unit of force is the:

A. newton  
B. joule  
C. watt  
D. pascal  

---

**Q2.** The SI unit of work is the:

A. joule  
B. newton  
C. pascal  
D. watt  

---

**Q3.** The SI unit of power is the:

A. watt  
B. newton  
C. joule  
D. pascal  

---

**Q4.** The SI unit of pressure is the:

A. pascal  
B. joule  
C. watt  
D. newton  

---

**Q5.** The rate of change of velocity is called:

A. acceleration  
B. momentum  
C. speed  
D. displacement  

---

**Q6.** The distance travelled per unit time is called:

A. speed  
B. displacement  
C. acceleration  
D. velocity  

---

**Q7.** A car accelerates uniformly from rest to 20 m/s in 5 s. Its acceleration is:

A. 5 m/s²  
B. 4 m/s²  
C. 100 m/s²  
D. 0.25 m/s²  

---

**Q8.** The product of mass and velocity is called:

A. force  
B. momentum  
C. power  
D. work  

---

**Q9.** The force that opposes motion is called:

A. gravity  
B. tension  
C. friction  
D. upthrust  

---

**Q10.** The energy of a moving object is called:

A. potential energy  
B. heat energy  
C. sound energy  
D. kinetic energy  

---

**Q11.** The energy stored in a raised object is called:

A. kinetic energy  
B. light energy  
C. potential energy  
D. heat energy  

---

**Q12.** The kinetic energy of a 2 kg object moving at 3 m/s is:

A. 6 J  
B. 12 J  
C. 18 J  
D. 9 J  

---

**Q13.** The work done when a force of 10 N moves an object 5 m is:

A. 15 J  
B. 50 J  
C. 2 J  
D. 0.5 J  

---

**Q14.** The power of a machine that does 300 J of work in 10 s is:

A. 3 W  
B. 30 W  
C. 0.03 W  
D. 3000 W  

---

**Q15.** The pressure exerted by a force of 50 N on an area of 2 m² is:

A. 52 Pa  
B. 100 Pa  
C. 25 Pa  
D. 0.04 Pa  

---

**Q16.** The principle of moments states that for equilibrium:

A. work done = energy  
B. sum of forces = 0  
C. power = work × time  
D. sum of clockwise moments = sum of anticlockwise moments  

---

**Q17.** The density of a substance is defined as:

A. mass per unit area  
B. volume per unit mass  
C. mass per unit volume  
D. weight per unit volume  

---

**Q18.** A block of mass 270 g and volume 100 cm³ has a density of:

A. 27 g/cm³  
B. 27000 g/cm³  
C. 0.37 g/cm³  
D. 2.7 g/cm³  

---

**Q19.** The upthrust on a body in a fluid is equal to:

A. volume of the body  
B. weight of fluid displaced  
C. weight of the body  
D. mass of the body  

---

**Q20.** A machine with a mechanical advantage of 4 and velocity ratio of 5 has an efficiency of:

A. 9%  
B. 80%  
C. 125%  
D. 20%  

---

**Q21.** The velocity ratio of a lever with effort arm 2 m and load arm 0.5 m is:

A. 1.5  
B. 0.25  
C. 4  
D. 2.5  

---

**Q22.** A body moving with constant velocity has:

A. constant acceleration  
B. increasing acceleration  
C. decreasing acceleration  
D. zero acceleration  

---

**Q23.** The SI unit of momentum is:

A. J  
B. N m  
C. kg m/s  
D. kg m/s²  

---

**Q24.** The gravitational potential energy of a 2 kg mass raised 5 m (g = 10 m/s²) is:

A. 20 J  
B. 50 J  
C. 10 J  
D. 100 J  

---

**Q25.** The speed of a ball dropped from 20 m just before hitting the ground (g = 10 m/s²) is:

A. 20 m/s  
B. 10 m/s  
C. 40 m/s  
D. 200 m/s  

---

**Q26.** The centre of gravity of a uniform rod is at its:

A. midpoint  
B. end  
C. centre of mass of the rod  
D. one-quarter point  

---

**Q27.** A body floats when its weight is:

A. equal to the upthrust  
B. less than the upthrust  
C. greater than the upthrust  
D. zero  

---

**Q28.** The relative density of a substance with density 800 kg/m³ (water = 1000 kg/m³) is:

A. 0.8  
B. 80  
C. 1.25  
D. 8  

---

**Q29.** The change in momentum of a 0.5 kg ball going from 4 m/s to 3 m/s in the opposite direction is:

A. 3.5 kg m/s  
B. 1 kg m/s  
C. 0.5 kg m/s  
D. 7 kg m/s  

---

**Q30.** A car travelling at 20 m/s has a kinetic energy of 200 kJ. Its mass is:

A. 1000 kg  
B. 10000 kg  
C. 500 kg  
D. 2000 kg  

---

**Q31.** The SI unit of frequency is the:

A. watt  
B. hertz  
C. joule  
D. newton  

---

**Q32.** The distance between two successive crests of a wave is the:

A. amplitude  
B. wavelength  
C. period  
D. frequency  

---

**Q33.** The maximum displacement of a wave from its rest position is the:

A. wavelength  
B. frequency  
C. amplitude  
D. speed  

---

**Q34.** Sound waves are:

A. transverse  
B. electromagnetic  
C. stationary  
D. longitudinal  

---

**Q35.** Light waves are:

A. longitudinal  
B. sound  
C. transverse  
D. mechanical  

---

**Q36.** The speed of a wave with frequency 50 Hz and wavelength 4 m is:

A. 12.5 m/s  
B. 46 m/s  
C. 54 m/s  
D. 200 m/s  

---

**Q37.** The angle of reflection is equal to the angle of:

A. deviation  
B. incidence  
C. refraction  
D. critical angle  

---

**Q38.** The image formed by a plane mirror is:

A. virtual and upright  
B. virtual and laterally inverted  
C. real and upright  
D. real and inverted  

---

**Q39.** The bending of light as it passes from one medium to another is called:

A. diffraction  
B. reflection  
C. refraction  
D. dispersion  

---

**Q40.** The refractive index of a medium is the ratio of:

A. angle of incidence to angle of refraction  
B. speed in the medium to speed in vacuum  
C. wavelength to frequency  
D. speed of light in vacuum to speed in the medium  

---

**Q41.** Total internal reflection occurs when light travels from:

A. air to glass at any angle  
B. a denser to a rarer medium at any angle  
C. a denser to a rarer medium at an angle greater than the critical angle  
D. a rarer to a denser medium  

---

**Q42.** The critical angle for glass is about:

A. 30°  
B. 60°  
C. 90°  
D. 42°  

---

**Q43.** The lens that converges light rays is a:

A. prism  
B. convex lens  
C. concave lens  
D. plane mirror  

---

**Q44.** The lens formula is:

A. f = uv  
B. 1/f = 1/v + 1/u  
C. 1/f = v + u  
D. f = v + u  

---

**Q45.** The SI unit of electric current is the:

A. watt  
B. volt  
C. ampere  
D. ohm  

---

**Q46.** The SI unit of potential difference is the:

A. watt  
B. ampere  
C. ohm  
D. volt  

---

**Q47.** The SI unit of resistance is the:

A. watt  
B. ampere  
C. ohm  
D. volt  

---

**Q48.** Ohm''s law states that:

A. I = VR  
B. V = R/I  
C. V = I/R  
D. V = IR  

---

**Q49.** The charge that passes when 2 A flows for 10 s is:

A. 20 C  
B. 5 C  
C. 0.2 C  
D. 12 C  

---

**Q50.** Two resistors of 6 Ω and 3 Ω in series have a total resistance of:

A. 9 Ω  
B. 2 Ω  
C. 0.5 Ω  
D. 18 Ω  

---

**Q51.** Two resistors of 6 Ω and 3 Ω in parallel have a total resistance of:

A. 2 Ω  
B. 18 Ω  
C. 9 Ω  
D. 0.5 Ω  

---

**Q52.** The power of a device operating at 240 V drawing 5 A is:

A. 1200 W  
B. 245 W  
C. 235 W  
D. 48 W  

---

**Q53.** The energy used by a 1200 W heater in 2 hours is:

A. 2.4 kWh  
B. 0.5 kWh  
C. 2400 kWh  
D. 600 kWh  

---

**Q54.** The specific heat capacity of water is:

A. 4200 J/kg°C  
B. 4.2 J/kg°C  
C. 42000 J/kg°C  
D. 420 J/kg°C  

---

**Q55.** The heat needed to raise 2 kg of water from 20°C to 80°C is:

A. 504 J  
B. 504000 J  
C. 5040 J  
D. 168000 J  

---

**Q56.** The specific latent heat of fusion of ice is:

A. 3.34 J/kg  
B. 3.34 × 10⁵ J/kg  
C. 3.34 × 10³ J/kg  
D. 334 J/kg  

---

**Q57.** A magnet has two poles called:

A. east and west  
B. positive and negative  
C. north and south  
D. top and bottom  

---

**Q58.** The strength of an electromagnet increases when:

A. the current decreases  
B. the core is removed  
C. the wire is thinner  
D. the number of turns increases  

---

**Q59.** The pitch of a sound depends on its:

A. amplitude  
B. wavelength  
C. frequency  
D. speed  

---

**Q60.** The loudness of a sound depends on its:

A. frequency  
B. wavelength  
C. speed  
D. amplitude  

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
  where title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2'
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
  'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The SI unit of pressure is the:

A. pascal  
B. newton  
C. joule  
D. watt  

---

**Q2.** The rate of change of velocity is called:

A. acceleration  
B. speed  
C. momentum  
D. displacement  

---

**Q3.** The distance travelled per unit time is called:

A. speed  
B. acceleration  
C. velocity  
D. displacement  

---

**Q4.** A car accelerates uniformly from rest to 20 m/s in 5 s. Its acceleration is:

A. 4 m/s²  
B. 100 m/s²  
C. 0.25 m/s²  
D. 5 m/s²  

---

**Q5.** The product of mass and velocity is called:

A. momentum  
B. power  
C. force  
D. work  

---

**Q6.** The force that opposes motion is called:

A. friction  
B. upthrust  
C. tension  
D. gravity  

---

**Q7.** The energy of a moving object is called:

A. potential energy  
B. kinetic energy  
C. heat energy  
D. sound energy  

---

**Q8.** The energy stored in a raised object is called:

A. kinetic energy  
B. potential energy  
C. light energy  
D. heat energy  

---

**Q9.** The kinetic energy of a 2 kg object moving at 3 m/s is:

A. 6 J  
B. 18 J  
C. 9 J  
D. 12 J  

---

**Q10.** The work done when a force of 10 N moves an object 5 m is:

A. 2 J  
B. 15 J  
C. 0.5 J  
D. 50 J  

---

**Q11.** The power of a machine that does 300 J of work in 10 s is:

A. 3000 W  
B. 0.03 W  
C. 30 W  
D. 3 W  

---

**Q12.** The pressure exerted by a force of 50 N on an area of 2 m² is:

A. 100 Pa  
B. 0.04 Pa  
C. 52 Pa  
D. 25 Pa  

---

**Q13.** The principle of moments states that for equilibrium:

A. work done = energy  
B. sum of clockwise moments = sum of anticlockwise moments  
C. sum of forces = 0  
D. power = work × time  

---

**Q14.** The density of a substance is defined as:

A. mass per unit area  
B. mass per unit volume  
C. volume per unit mass  
D. weight per unit volume  

---

**Q15.** A block of mass 270 g and volume 100 cm³ has a density of:

A. 27 g/cm³  
B. 0.37 g/cm³  
C. 2.7 g/cm³  
D. 27000 g/cm³  

---

**Q16.** The upthrust on a body in a fluid is equal to:

A. mass of the body  
B. weight of the body  
C. volume of the body  
D. weight of fluid displaced  

---

**Q17.** A machine with a mechanical advantage of 4 and velocity ratio of 5 has an efficiency of:

A. 125%  
B. 9%  
C. 80%  
D. 20%  

---

**Q18.** The velocity ratio of a lever with effort arm 2 m and load arm 0.5 m is:

A. 2.5  
B. 1.5  
C. 0.25  
D. 4  

---

**Q19.** A body moving with constant velocity has:

A. constant acceleration  
B. zero acceleration  
C. increasing acceleration  
D. decreasing acceleration  

---

**Q20.** The SI unit of momentum is:

A. J  
B. kg m/s  
C. N m  
D. kg m/s²  

---

**Q21.** The gravitational potential energy of a 2 kg mass raised 5 m (g = 10 m/s²) is:

A. 20 J  
B. 10 J  
C. 100 J  
D. 50 J  

---

**Q22.** The speed of a ball dropped from 20 m just before hitting the ground (g = 10 m/s²) is:

A. 200 m/s  
B. 10 m/s  
C. 40 m/s  
D. 20 m/s  

---

**Q23.** The centre of gravity of a uniform rod is at its:

A. centre of mass of the rod  
B. one-quarter point  
C. midpoint  
D. end  

---

**Q24.** A body floats when its weight is:

A. zero  
B. less than the upthrust  
C. greater than the upthrust  
D. equal to the upthrust  

---

**Q25.** The relative density of a substance with density 800 kg/m³ (water = 1000 kg/m³) is:

A. 0.8  
B. 8  
C. 80  
D. 1.25  

---

**Q26.** The change in momentum of a 0.5 kg ball going from 4 m/s to 3 m/s in the opposite direction is:

A. 3.5 kg m/s  
B. 0.5 kg m/s  
C. 1 kg m/s  
D. 7 kg m/s  

---

**Q27.** A car travelling at 20 m/s has a kinetic energy of 200 kJ. Its mass is:

A. 1000 kg  
B. 500 kg  
C. 2000 kg  
D. 10000 kg  

---

**Q28.** The SI unit of force is the:

A. newton  
B. watt  
C. pascal  
D. joule  

---

**Q29.** The SI unit of work is the:

A. joule  
B. pascal  
C. newton  
D. watt  

---

**Q30.** The SI unit of power is the:

A. watt  
B. pascal  
C. newton  
D. joule  

---

**Q31.** Sound waves are:

A. transverse  
B. longitudinal  
C. electromagnetic  
D. stationary  

---

**Q32.** Light waves are:

A. longitudinal  
B. transverse  
C. sound  
D. mechanical  

---

**Q33.** The speed of a wave with frequency 50 Hz and wavelength 4 m is:

A. 12.5 m/s  
B. 54 m/s  
C. 200 m/s  
D. 46 m/s  

---

**Q34.** The angle of reflection is equal to the angle of:

A. refraction  
B. deviation  
C. critical angle  
D. incidence  

---

**Q35.** The image formed by a plane mirror is:

A. real and inverted  
B. real and upright  
C. virtual and laterally inverted  
D. virtual and upright  

---

**Q36.** The bending of light as it passes from one medium to another is called:

A. reflection  
B. dispersion  
C. diffraction  
D. refraction  

---

**Q37.** The refractive index of a medium is the ratio of:

A. angle of incidence to angle of refraction  
B. speed of light in vacuum to speed in the medium  
C. speed in the medium to speed in vacuum  
D. wavelength to frequency  

---

**Q38.** Total internal reflection occurs when light travels from:

A. air to glass at any angle  
B. a denser to a rarer medium at an angle greater than the critical angle  
C. a denser to a rarer medium at any angle  
D. a rarer to a denser medium  

---

**Q39.** The critical angle for glass is about:

A. 30°  
B. 90°  
C. 42°  
D. 60°  

---

**Q40.** The lens that converges light rays is a:

A. plane mirror  
B. concave lens  
C. prism  
D. convex lens  

---

**Q41.** The lens formula is:

A. 1/f = v + u  
B. f = uv  
C. 1/f = 1/v + 1/u  
D. f = v + u  

---

**Q42.** The SI unit of electric current is the:

A. ohm  
B. watt  
C. volt  
D. ampere  

---

**Q43.** The SI unit of potential difference is the:

A. watt  
B. volt  
C. ampere  
D. ohm  

---

**Q44.** The SI unit of resistance is the:

A. watt  
B. ohm  
C. ampere  
D. volt  

---

**Q45.** Ohm''s law states that:

A. I = VR  
B. V = I/R  
C. V = IR  
D. V = R/I  

---

**Q46.** The charge that passes when 2 A flows for 10 s is:

A. 12 C  
B. 5 C  
C. 0.2 C  
D. 20 C  

---

**Q47.** Two resistors of 6 Ω and 3 Ω in series have a total resistance of:

A. 0.5 Ω  
B. 18 Ω  
C. 9 Ω  
D. 2 Ω  

---

**Q48.** Two resistors of 6 Ω and 3 Ω in parallel have a total resistance of:

A. 0.5 Ω  
B. 18 Ω  
C. 9 Ω  
D. 2 Ω  

---

**Q49.** The power of a device operating at 240 V drawing 5 A is:

A. 1200 W  
B. 48 W  
C. 245 W  
D. 235 W  

---

**Q50.** The energy used by a 1200 W heater in 2 hours is:

A. 2.4 kWh  
B. 2400 kWh  
C. 0.5 kWh  
D. 600 kWh  

---

**Q51.** The specific heat capacity of water is:

A. 4200 J/kg°C  
B. 42000 J/kg°C  
C. 420 J/kg°C  
D. 4.2 J/kg°C  

---

**Q52.** The heat needed to raise 2 kg of water from 20°C to 80°C is:

A. 504000 J  
B. 5040 J  
C. 168000 J  
D. 504 J  

---

**Q53.** The specific latent heat of fusion of ice is:

A. 3.34 × 10⁵ J/kg  
B. 3.34 × 10³ J/kg  
C. 3.34 J/kg  
D. 334 J/kg  

---

**Q54.** A magnet has two poles called:

A. north and south  
B. top and bottom  
C. positive and negative  
D. east and west  

---

**Q55.** The strength of an electromagnet increases when:

A. the current decreases  
B. the number of turns increases  
C. the core is removed  
D. the wire is thinner  

---

**Q56.** The pitch of a sound depends on its:

A. amplitude  
B. frequency  
C. wavelength  
D. speed  

---

**Q57.** The loudness of a sound depends on its:

A. frequency  
B. speed  
C. amplitude  
D. wavelength  

---

**Q58.** The SI unit of frequency is the:

A. watt  
B. joule  
C. newton  
D. hertz  

---

**Q59.** The distance between two successive crests of a wave is the:

A. amplitude  
B. period  
C. wavelength  
D. frequency  

---

**Q60.** The maximum displacement of a wave from its rest position is the:

A. wavelength  
B. speed  
C. frequency  
D. amplitude  

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
  where title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3'
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
  'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** A car accelerates uniformly from rest to 20 m/s in 5 s. Its acceleration is:

A. 4 m/s²  
B. 5 m/s²  
C. 100 m/s²  
D. 0.25 m/s²  

---

**Q2.** The product of mass and velocity is called:

A. momentum  
B. force  
C. power  
D. work  

---

**Q3.** The force that opposes motion is called:

A. friction  
B. tension  
C. gravity  
D. upthrust  

---

**Q4.** The energy of a moving object is called:

A. kinetic energy  
B. heat energy  
C. sound energy  
D. potential energy  

---

**Q5.** The energy stored in a raised object is called:

A. potential energy  
B. light energy  
C. kinetic energy  
D. heat energy  

---

**Q6.** The kinetic energy of a 2 kg object moving at 3 m/s is:

A. 9 J  
B. 12 J  
C. 18 J  
D. 6 J  

---

**Q7.** The work done when a force of 10 N moves an object 5 m is:

A. 2 J  
B. 50 J  
C. 15 J  
D. 0.5 J  

---

**Q8.** The power of a machine that does 300 J of work in 10 s is:

A. 3000 W  
B. 30 W  
C. 0.03 W  
D. 3 W  

---

**Q9.** The pressure exerted by a force of 50 N on an area of 2 m² is:

A. 100 Pa  
B. 52 Pa  
C. 25 Pa  
D. 0.04 Pa  

---

**Q10.** The principle of moments states that for equilibrium:

A. sum of forces = 0  
B. work done = energy  
C. power = work × time  
D. sum of clockwise moments = sum of anticlockwise moments  

---

**Q11.** The density of a substance is defined as:

A. weight per unit volume  
B. volume per unit mass  
C. mass per unit volume  
D. mass per unit area  

---

**Q12.** A block of mass 270 g and volume 100 cm³ has a density of:

A. 0.37 g/cm³  
B. 27000 g/cm³  
C. 27 g/cm³  
D. 2.7 g/cm³  

---

**Q13.** The upthrust on a body in a fluid is equal to:

A. mass of the body  
B. weight of fluid displaced  
C. weight of the body  
D. volume of the body  

---

**Q14.** A machine with a mechanical advantage of 4 and velocity ratio of 5 has an efficiency of:

A. 125%  
B. 80%  
C. 9%  
D. 20%  

---

**Q15.** The velocity ratio of a lever with effort arm 2 m and load arm 0.5 m is:

A. 2.5  
B. 0.25  
C. 4  
D. 1.5  

---

**Q16.** A body moving with constant velocity has:

A. decreasing acceleration  
B. increasing acceleration  
C. constant acceleration  
D. zero acceleration  

---

**Q17.** The SI unit of momentum is:

A. N m  
B. J  
C. kg m/s  
D. kg m/s²  

---

**Q18.** The gravitational potential energy of a 2 kg mass raised 5 m (g = 10 m/s²) is:

A. 50 J  
B. 20 J  
C. 10 J  
D. 100 J  

---

**Q19.** The speed of a ball dropped from 20 m just before hitting the ground (g = 10 m/s²) is:

A. 200 m/s  
B. 20 m/s  
C. 10 m/s  
D. 40 m/s  

---

**Q20.** The centre of gravity of a uniform rod is at its:

A. centre of mass of the rod  
B. midpoint  
C. one-quarter point  
D. end  

---

**Q21.** A body floats when its weight is:

A. zero  
B. greater than the upthrust  
C. equal to the upthrust  
D. less than the upthrust  

---

**Q22.** The relative density of a substance with density 800 kg/m³ (water = 1000 kg/m³) is:

A. 1.25  
B. 8  
C. 80  
D. 0.8  

---

**Q23.** The change in momentum of a 0.5 kg ball going from 4 m/s to 3 m/s in the opposite direction is:

A. 1 kg m/s  
B. 7 kg m/s  
C. 3.5 kg m/s  
D. 0.5 kg m/s  

---

**Q24.** A car travelling at 20 m/s has a kinetic energy of 200 kJ. Its mass is:

A. 10000 kg  
B. 500 kg  
C. 2000 kg  
D. 1000 kg  

---

**Q25.** The SI unit of force is the:

A. newton  
B. joule  
C. watt  
D. pascal  

---

**Q26.** The SI unit of work is the:

A. joule  
B. newton  
C. pascal  
D. watt  

---

**Q27.** The SI unit of power is the:

A. watt  
B. newton  
C. joule  
D. pascal  

---

**Q28.** The SI unit of pressure is the:

A. pascal  
B. joule  
C. watt  
D. newton  

---

**Q29.** The rate of change of velocity is called:

A. acceleration  
B. momentum  
C. speed  
D. displacement  

---

**Q30.** The distance travelled per unit time is called:

A. speed  
B. displacement  
C. acceleration  
D. velocity  

---

**Q31.** The angle of reflection is equal to the angle of:

A. refraction  
B. incidence  
C. deviation  
D. critical angle  

---

**Q32.** The image formed by a plane mirror is:

A. real and inverted  
B. virtual and laterally inverted  
C. real and upright  
D. virtual and upright  

---

**Q33.** The bending of light as it passes from one medium to another is called:

A. reflection  
B. diffraction  
C. refraction  
D. dispersion  

---

**Q34.** The refractive index of a medium is the ratio of:

A. speed in the medium to speed in vacuum  
B. angle of incidence to angle of refraction  
C. wavelength to frequency  
D. speed of light in vacuum to speed in the medium  

---

**Q35.** Total internal reflection occurs when light travels from:

A. a rarer to a denser medium  
B. a denser to a rarer medium at any angle  
C. a denser to a rarer medium at an angle greater than the critical angle  
D. air to glass at any angle  

---

**Q36.** The critical angle for glass is about:

A. 90°  
B. 60°  
C. 30°  
D. 42°  

---

**Q37.** The lens that converges light rays is a:

A. plane mirror  
B. convex lens  
C. concave lens  
D. prism  

---

**Q38.** The lens formula is:

A. 1/f = v + u  
B. 1/f = 1/v + 1/u  
C. f = uv  
D. f = v + u  

---

**Q39.** The SI unit of electric current is the:

A. ohm  
B. volt  
C. ampere  
D. watt  

---

**Q40.** The SI unit of potential difference is the:

A. ohm  
B. ampere  
C. watt  
D. volt  

---

**Q41.** The SI unit of resistance is the:

A. ampere  
B. watt  
C. ohm  
D. volt  

---

**Q42.** Ohm''s law states that:

A. V = R/I  
B. I = VR  
C. V = I/R  
D. V = IR  

---

**Q43.** The charge that passes when 2 A flows for 10 s is:

A. 12 C  
B. 20 C  
C. 5 C  
D. 0.2 C  

---

**Q44.** Two resistors of 6 Ω and 3 Ω in series have a total resistance of:

A. 0.5 Ω  
B. 9 Ω  
C. 18 Ω  
D. 2 Ω  

---

**Q45.** Two resistors of 6 Ω and 3 Ω in parallel have a total resistance of:

A. 0.5 Ω  
B. 9 Ω  
C. 2 Ω  
D. 18 Ω  

---

**Q46.** The power of a device operating at 240 V drawing 5 A is:

A. 235 W  
B. 48 W  
C. 245 W  
D. 1200 W  

---

**Q47.** The energy used by a 1200 W heater in 2 hours is:

A. 0.5 kWh  
B. 600 kWh  
C. 2.4 kWh  
D. 2400 kWh  

---

**Q48.** The specific heat capacity of water is:

A. 4.2 J/kg°C  
B. 42000 J/kg°C  
C. 420 J/kg°C  
D. 4200 J/kg°C  

---

**Q49.** The heat needed to raise 2 kg of water from 20°C to 80°C is:

A. 504000 J  
B. 504 J  
C. 5040 J  
D. 168000 J  

---

**Q50.** The specific latent heat of fusion of ice is:

A. 3.34 × 10⁵ J/kg  
B. 3.34 J/kg  
C. 3.34 × 10³ J/kg  
D. 334 J/kg  

---

**Q51.** A magnet has two poles called:

A. north and south  
B. positive and negative  
C. east and west  
D. top and bottom  

---

**Q52.** The strength of an electromagnet increases when:

A. the number of turns increases  
B. the core is removed  
C. the wire is thinner  
D. the current decreases  

---

**Q53.** The pitch of a sound depends on its:

A. frequency  
B. wavelength  
C. amplitude  
D. speed  

---

**Q54.** The loudness of a sound depends on its:

A. amplitude  
B. wavelength  
C. speed  
D. frequency  

---

**Q55.** The SI unit of frequency is the:

A. watt  
B. hertz  
C. joule  
D. newton  

---

**Q56.** The distance between two successive crests of a wave is the:

A. amplitude  
B. wavelength  
C. period  
D. frequency  

---

**Q57.** The maximum displacement of a wave from its rest position is the:

A. wavelength  
B. frequency  
C. amplitude  
D. speed  

---

**Q58.** Sound waves are:

A. transverse  
B. electromagnetic  
C. stationary  
D. longitudinal  

---

**Q59.** Light waves are:

A. longitudinal  
B. sound  
C. transverse  
D. mechanical  

---

**Q60.** The speed of a wave with frequency 50 Hz and wavelength 4 m is:

A. 12.5 m/s  
B. 46 m/s  
C. 54 m/s  
D. 200 m/s  

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
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8

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
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 1'
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
  'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 2'
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
  'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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

commit;