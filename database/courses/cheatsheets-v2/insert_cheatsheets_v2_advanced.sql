begin;

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-mechanics-algebra-and-functions', 'Pure Mathematics with Mechanics', 'Algebra & Functions Cheatsheet', 'Detailed revision cheatsheet: Algebra and functions.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-mechanics-coordinate-geometry', 'Pure Mathematics with Mechanics', 'Coordinate Geometry Cheatsheet', 'Detailed revision cheatsheet: Coordinate geometry.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-mechanics-differentiation', 'Pure Mathematics with Mechanics', 'Differentiation Cheatsheet', 'Detailed revision cheatsheet: Differentiation.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-mechanics-integration', 'Pure Mathematics with Mechanics', 'Integration Cheatsheet', 'Detailed revision cheatsheet: Integration.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-mechanics-kinematics', 'Pure Mathematics with Mechanics', 'Kinematics Cheatsheet', 'Detailed revision cheatsheet: Kinematics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-mechanics-forces-and-newton-s-laws', 'Pure Mathematics with Mechanics', 'Forces & Newton''s Laws Cheatsheet', 'Detailed revision cheatsheet: Forces and Newton''s laws.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-stats-statistical-measures', 'Pure Mathematics with Statistics', 'Statistical Measures Cheatsheet', 'Detailed revision cheatsheet: Statistical measures.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-stats-probability', 'Pure Mathematics with Statistics', 'Probability Cheatsheet', 'Detailed revision cheatsheet: Probability.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-stats-the-binomial-distribution', 'Pure Mathematics with Statistics', 'The Binomial Distribution Cheatsheet', 'Detailed revision cheatsheet: The binomial distribution.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-pure-math-stats-correlation-and-regression', 'Pure Mathematics with Statistics', 'Correlation & Regression Cheatsheet', 'Detailed revision cheatsheet: Correlation and regression.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-further-math-complex-numbers', 'Further Mathematics', 'Complex Numbers Cheatsheet', 'Detailed revision cheatsheet: Complex numbers.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-further-math-matrices-and-transformations', 'Further Mathematics', 'Matrices & Transformations Cheatsheet', 'Detailed revision cheatsheet: Matrices and transformations.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-further-math-polar-coordinates', 'Further Mathematics', 'Polar Coordinates Cheatsheet', 'Detailed revision cheatsheet: Polar coordinates.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-further-math-differential-equations', 'Further Mathematics', 'Differential Equations Cheatsheet', 'Detailed revision cheatsheet: Differential equations.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-physics-mechanics', 'Physics', 'Mechanics Cheatsheet', 'Detailed revision cheatsheet: Mechanics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-physics-waves-and-optics', 'Physics', 'Waves & Optics Cheatsheet', 'Detailed revision cheatsheet: Waves and optics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-physics-electricity-and-magnetism', 'Physics', 'Electricity & Magnetism Cheatsheet', 'Detailed revision cheatsheet: Electricity and magnetism.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-physics-modern-physics', 'Physics', 'Modern Physics Cheatsheet', 'Detailed revision cheatsheet: Modern physics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-chemistry-atomic-structure-and-periodicity', 'Chemistry', 'Atomic Structure & Periodicity Cheatsheet', 'Detailed revision cheatsheet: Atomic structure and periodicity.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-chemistry-chemical-bonding', 'Chemistry', 'Chemical Bonding Cheatsheet', 'Detailed revision cheatsheet: Chemical bonding.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-chemistry-energetics-and-kinetics', 'Chemistry', 'Energetics & Kinetics Cheatsheet', 'Detailed revision cheatsheet: Energetics and kinetics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-chemistry-organic-chemistry', 'Chemistry', 'Organic Chemistry Cheatsheet', 'Detailed revision cheatsheet: Organic chemistry.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-biology-cell-biology', 'Biology', 'Cell Biology Cheatsheet', 'Detailed revision cheatsheet: Cell biology.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-biology-genetics', 'Biology', 'Genetics Cheatsheet', 'Detailed revision cheatsheet: Genetics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-biology-physiology', 'Biology', 'Physiology Cheatsheet', 'Detailed revision cheatsheet: Physiology.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-biology-ecology', 'Biology', 'Ecology Cheatsheet', 'Detailed revision cheatsheet: Ecology.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-geology-minerals-and-rocks', 'Geology', 'Minerals & Rocks Cheatsheet', 'Detailed revision cheatsheet: Minerals and rocks.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-geology-plate-tectonics', 'Geology', 'Plate Tectonics Cheatsheet', 'Detailed revision cheatsheet: Plate tectonics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-geology-fossils-and-geological-time', 'Geology', 'Fossils & Geological Time Cheatsheet', 'Detailed revision cheatsheet: Fossils and geological time.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-computer-science-data-structures', 'Computer Science', 'Data Structures Cheatsheet', 'Detailed revision cheatsheet: Data structures.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-computer-science-algorithms', 'Computer Science', 'Algorithms Cheatsheet', 'Detailed revision cheatsheet: Algorithms.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-computer-science-object-oriented-programming', 'Computer Science', 'Object-Oriented Programming Cheatsheet', 'Detailed revision cheatsheet: Object-oriented programming.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-food-science-nutrients-and-their-functions', 'Food Science and Nutrition', 'Nutrients & Their Functions Cheatsheet', 'Detailed revision cheatsheet: Nutrients and their functions.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-food-science-food-processing-and-preservation', 'Food Science and Nutrition', 'Food Processing & Preservation Cheatsheet', 'Detailed revision cheatsheet: Food processing and preservation.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-food-science-meal-planning-and-diet', 'Food Science and Nutrition', 'Meal Planning & Diet Cheatsheet', 'Detailed revision cheatsheet: Meal planning and diet.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-agricultural-science-soil-science', 'Agricultural Science', 'Soil Science Cheatsheet', 'Detailed revision cheatsheet: Soil science.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-agricultural-science-crop-production', 'Agricultural Science', 'Crop Production Cheatsheet', 'Detailed revision cheatsheet: Crop production.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-agricultural-science-animal-production', 'Agricultural Science', 'Animal Production Cheatsheet', 'Detailed revision cheatsheet: Animal production.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-english-literature-critical-analysis-of-poetry', 'English Literature', 'Critical Analysis of Poetry Cheatsheet', 'Detailed revision cheatsheet: Critical analysis of poetry.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-english-literature-critical-analysis-of-prose', 'English Literature', 'Critical Analysis of Prose Cheatsheet', 'Detailed revision cheatsheet: Critical analysis of prose.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-english-literature-critical-analysis-of-drama', 'English Literature', 'Critical Analysis of Drama Cheatsheet', 'Detailed revision cheatsheet: Critical analysis of drama.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-philosophy-epistemology', 'Philosophy', 'Epistemology Cheatsheet', 'Detailed revision cheatsheet: Epistemology.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-philosophy-ethics', 'Philosophy', 'Ethics Cheatsheet', 'Detailed revision cheatsheet: Ethics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-philosophy-metaphysics', 'Philosophy', 'Metaphysics Cheatsheet', 'Detailed revision cheatsheet: Metaphysics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-philosophy-logic-and-reasoning', 'Philosophy', 'Logic & Reasoning Cheatsheet', 'Detailed revision cheatsheet: Logic and reasoning.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-economics-microeconomics', 'Economics', 'Microeconomics Cheatsheet', 'Detailed revision cheatsheet: Microeconomics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-economics-macroeconomics', 'Economics', 'Macroeconomics Cheatsheet', 'Detailed revision cheatsheet: Macroeconomics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-economics-international-economics', 'Economics', 'International Economics Cheatsheet', 'Detailed revision cheatsheet: International economics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-geography-geomorphology', 'Geography', 'Geomorphology Cheatsheet', 'Detailed revision cheatsheet: Geomorphology.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-geography-climatology', 'Geography', 'Climatology Cheatsheet', 'Detailed revision cheatsheet: Climatology.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-geography-population-and-development', 'Geography', 'Population & Development Cheatsheet', 'Detailed revision cheatsheet: Population and development.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-history-african-history', 'History', 'African History Cheatsheet', 'Detailed revision cheatsheet: African history.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-history-world-history', 'History', 'World History Cheatsheet', 'Detailed revision cheatsheet: World history.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-advanced-history-historical-methodology', 'History', 'Historical Methodology Cheatsheet', 'Detailed revision cheatsheet: Historical methodology.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('0e810844-5c24-a675-1e73-7357d4a220c9'::uuid, 'cheat-advanced-pure-math-mechanics-algebra-and-functions', 'Pure Mathematics with Mechanics', 'Algebra & Functions Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Algebra & Functions Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Algebra is the backbone of the Pure Mathematics paper. Quadratics, inequalities, surds, indices and the modulus function appear every year, both directly and inside calculus and coordinate geometry questions. Fluency here unlocks the rest of the syllabus.

## Core concepts

### Quadratics
- Solve by factorising, completing the square, or the formula:
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$
- **Completing the square:** \(x^2 + bx + c = (x + \frac{b}{2})^2 - \frac{b^2}{4} + c\).
- **Discriminant** \(b^2 - 4ac\):
  - \(> 0\): two distinct real roots.
  - \(= 0\): one repeated root (a tangent).
  - \(< 0\): no real roots.
- The discriminant also tells you whether a line meets a curve (2 points), touches it (1 point), or misses it (0 points).

### Inequalities
- Solve like equations but **flip the sign when multiplying/dividing by a negative**.
- **Quadratic inequalities:** solve the equation, then sketch the parabola to read the region.
  - \(x^2 - 5x + 6 < 0\) → roots 2 and 3 → \(2 < x < 3\).
- **Modulus inequalities:** \(|x| < a\) means \(-a < x < a\); \(|x| > a\) means \(x < -a\) or \(x > a\).

### Surds
- \(\sqrt{ab} = \sqrt{a}\sqrt{b}\), \(\sqrt{\frac{a}{b}} = \frac{\sqrt{a}}{\sqrt{b}}\).
- **Rationalising:** multiply top and bottom by the conjugate.
$$\frac{1}{\sqrt{3} + 1} \times \frac{\sqrt{3} - 1}{\sqrt{3} - 1} = \frac{\sqrt{3} - 1}{2}$$

### Indices
- \(a^m a^n = a^{m+n}\), \((a^m)^n = a^{mn}\), \(a^{-n} = \frac{1}{a^n}\), \(a^{1/n} = \sqrt[n]{a}\).

### The modulus function
- \(|x|\) is the distance from 0 — always non-negative.
- \(|x| = x\) for \(x \ge 0\), \(|x| = -x\) for \(x < 0\).
- To solve \(|2x - 1| = 5\): solve \(2x - 1 = 5\) AND \(2x - 1 = -5\) → \(x = 3\) or \(x = -2\).

### Functions
- **Domain:** the allowed inputs. **Range:** the possible outputs.
- **One-to-one:** each output has one input (needed for an inverse).
- **Composite functions:** \(fg(x) = f(g(x))\) — apply \(g\) first, then \(f\).
- **Inverse function:** \(f^{-1}\) undoes \(f\); the graphs are reflections in \(y = x\).

## Common mistakes & exam traps

- Forgetting to flip the inequality sign when dividing by a negative.
- Losing a root when solving \(x^2 = 4\) — the answer is \(x = \pm 2\).
- Writing \(\sqrt{a + b} = \sqrt{a} + \sqrt{b}\) — never true.
- Confusing the order in composite functions: \(fg(x)\) means \(g\) first.
- Forgetting that \(|x| = a\) has TWO solutions.

## Exam technique

1. Check the discriminant before attempting a quadratic — it tells you what to expect.
2. For inequalities, always sketch the graph to confirm the region.
3. State the domain and range when defining a function.
4. Verify inverse functions by checking \(f(f^{-1}(x)) = x\).

## Memory hooks

- **Discriminant:** "Positive two, zero one, negative none."
- **Modulus:** "Distance from zero — always positive."

## Quick practice

1. Solve \(x^2 - 5x + 6 < 0\). **[2 < x < 3]**
2. Rationalise \(\frac{1}{\sqrt{3} + 1}\). **[(√3 − 1)/2]**
3. Solve \(|2x - 1| = 5\). **[x = 3 or x = −2]**
4. If \(f(x) = x^2\) and \(g(x) = x + 1\), find \(fg(2)\). **[9]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('2c63922e-d0bd-dce7-2455-53cb3148146e'::uuid, 'cheat-advanced-pure-math-mechanics-coordinate-geometry', 'Pure Mathematics with Mechanics', 'Coordinate Geometry Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Coordinate Geometry Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Coordinate geometry links algebra to graphs. Straight lines, circles and their intersections are tested every year. The circle questions — finding centres, radii, tangents and intersections — are a reliable source of marks if you know the standard forms.

## Core concepts

### The straight line
- **Gradient:** \(m = \frac{y_2 - y_1}{x_2 - x_1}\).
- **Equation forms:**
  - \(y = mx + c\)
  - \(y - y_1 = m(x - x_1)\)
  - \(ax + by + c = 0\)
- **Parallel:** equal gradients. **Perpendicular:** \(m_1 m_2 = -1\).
- **Midpoint:** \(\left(\frac{x_1+x_2}{2}, \frac{y_1+y_2}{2}\right)\).
- **Distance:** \(\sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}\).

### The circle
- Centre \((a,b)\), radius \(r\): \((x-a)^2 + (y-b)^2 = r^2\).
- General form: \(x^2 + y^2 + 2gx + 2fy + c = 0\).
  - Centre: \((-g, -f)\). Radius: \(\sqrt{g^2 + f^2 - c}\).
- A tangent is **perpendicular to the radius** at the point of contact.

**Worked example:** tangent to \(x^2 + y^2 = 25\) at \((3,4)\).
Radius gradient \(= \frac{4}{3}\), so tangent gradient \(= -\frac{3}{4}\).
\(y - 4 = -\frac{3}{4}(x - 3)\) → \(3x + 4y = 25\).

### Intersections
- **Line and circle:** substitute the line into the circle; the discriminant tells you 2, 1 (tangent) or 0 intersections.
- **Two circles:** subtract the equations to get the common chord (a straight line), then solve.

### The perpendicular bisector
- The locus of points equidistant from two points — used to find circle centres.

## Common mistakes & exam traps

- Using the radius gradient instead of the negative reciprocal for a tangent.
- Reading the centre from the general form with the wrong signs.
- Forgetting to complete the square to find the centre and radius.
- Confusing parallel (\(m_1 = m_2\)) with perpendicular (\(m_1 m_2 = -1\)).

## Exam technique

1. Sketch the situation before calculating.
2. For circles, complete the square if the equation is in general form.
3. For tangents, always find the radius gradient first, then flip and negate.
4. Check your answer by substituting the given point.

## Memory hooks

- **Perpendicular:** "Flip and negate."
- **Circle general form:** "Centre (−g, −f), radius √(g² + f² − c)."

## Quick practice

1. Find the centre and radius of \(x^2 + y^2 - 6x + 4y - 12 = 0\). **[Centre (3, −2), radius 5]**
2. Find the tangent to \(x^2 + y^2 = 25\) at (3, 4). **[3x + 4y = 25]**
3. Are \(y = 2x + 1\) and \(y = -\frac{1}{2}x + 3\) parallel or perpendicular? **[Perpendicular]**
4. Find the distance between (1, 2) and (4, 6). **[5]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('3d09deeb-c497-f633-fdf9-3d4b0076f310'::uuid, 'cheat-advanced-pure-math-mechanics-differentiation', 'Pure Mathematics with Mechanics', 'Differentiation Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Differentiation Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Differentiation is the most heavily tested topic in Pure Mathematics. It appears as direct differentiation, tangents and normals, stationary points, and applied problems. Master the rules and the applications and you secure a large share of the paper.

## Core concepts

### Standard derivatives
| Function | Derivative |
|---|---|
| \(x^n\) | \(nx^{n-1}\) |
| \(\sin x\) | \(\cos x\) |
| \(\cos x\) | \(-\sin x\) |
| \(\tan x\) | \(\sec^2 x\) |
| \(e^x\) | \(e^x\) |
| \(\ln x\) | \(\frac{1}{x}\) |
| \(\sin(ax+b)\) | \(a\cos(ax+b)\) |

### The rules
- **Chain rule:** \(\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}\).
- **Product rule:** \((uv)'' = u''v + uv''\).
- **Quotient rule:** \(\left(\frac{u}{v}\right)'' = \frac{u''v - uv''}{v^2}\).

### Tangents and normals
- Tangent gradient at \(x = a\): \(f''(a)\).
- Normal gradient: \(-\frac{1}{f''(a)}\).

### Stationary points
- Solve \(f''(x) = 0\).
- Classify with \(f''''(x)\):
  - \(f'''' > 0\): minimum.
  - \(f'''' < 0\): maximum.
  - \(f'''' = 0\): point of inflection (check sign change of \(f''\)).

### Increasing and decreasing
- \(f''(x) > 0\): increasing. \(f''(x) < 0\): decreasing.

### Rates of change
- \(\frac{dy}{dt} = \frac{dy}{dx} \cdot \frac{dx}{dt}\).
- **Connected rates:** set up the chain, substitute known values.

## Common mistakes & exam traps

- Forgetting the chain rule on \((2x+1)^5\).
- Using the product rule when expanding first is simpler.
- Confusing maximum and minimum — always check \(f''''\).
- For normals, forgetting the negative reciprocal.
- Dropping the \(\frac{du}{dx}\) factor in the chain rule.

## Exam technique

1. Write \(\frac{dy}{dx} = ...\) before differentiating — method marks.
2. For stationary points, find the y-coordinate too.
3. For optimisation problems: define the variable, form the expression, differentiate, set to zero, verify nature.
4. Check units in rates-of-change problems.

## Memory hooks

- **Power rule:** "Bring down, reduce by one."
- **Normal:** "Flip and negate."

## Quick practice

1. Differentiate \(y = (3x + 1)^4\). **[12(3x+1)³]**
2. Find the stationary points of \(y = x^3 - 3x\). **[Max at (−1, 2), min at (1, −2)]**
3. Differentiate \(y = x^2 e^x\). **[eˣ(x² + 2x)]**
4. Find the normal to \(y = x^2\) at \(x = 1\). **[Gradient −1/2]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('be31b3f5-5b64-9c48-457e-83303cbbad1a'::uuid, 'cheat-advanced-pure-math-mechanics-integration', 'Pure Mathematics with Mechanics', 'Integration Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Integration Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Integration is the inverse of differentiation and a guaranteed topic. Definite integrals, areas under curves, and volumes of revolution are the standard questions. The area question appears nearly every year.

## Core concepts

### Standard integrals
| Function | Integral |
|---|---|
| \(x^n\) | \(\frac{x^{n+1}}{n+1} + c\), \(n \ne -1\) |
| \(\frac{1}{x}\) | \(\ln|x| + c\) |
| \(\sin x\) | \(-\cos x + c\) |
| \(\cos x\) | \(\sin x + c\) |
| \(e^x\) | \(e^x + c\) |
| \(\sec^2 x\) | \(\tan x + c\) |

### Definite integrals
$$\int_a^b f(x)\,dx = [F(x)]_a^b = F(b) - F(a)$$

### Area under a curve
- Area between curve and x-axis: \(\int_a^b y\,dx\).
- **Check for sign changes** — split the interval where the curve crosses the axis, otherwise areas cancel.
- Area between two curves: \(\int (\text{upper} - \text{lower})\,dx\) over the intersection points.

### Integration by substitution
- Choose \(u = g(x)\), replace \(dx\), and change the limits.
**Example:** \(\int 2x(x^2 + 1)^3\,dx\). Let \(u = x^2 + 1\), \(du = 2x\,dx\):
\(\int u^3\,du = \frac{u^4}{4} + c = \frac{(x^2+1)^4}{4} + c\).

### Integration by parts
$$\int u\,dv = uv - \int v\,du$$
Choose \(u\) as the function that simplifies when differentiated (often \(x\) or \(\ln x\)).

### Volumes of revolution
- About the x-axis: \(V = \pi \int_a^b y^2\,dx\).
- About the y-axis: \(V = \pi \int_c^d x^2\,dy\).

## Common mistakes & exam traps

- Forgetting the \(+c\) on indefinite integrals.
- Not splitting the interval when the curve crosses the axis.
- Forgetting to change the limits in a substitution.
- Choosing the wrong \(u\) in integration by parts.
- Subtracting the wrong way round (upper minus lower).

## Exam technique

1. **Check by differentiating** your answer.
2. Sketch the curve for area problems.
3. For volumes, square the function before integrating.
4. Write limits clearly before evaluating.

## Memory hooks

- **Integration:** "Add one, divide by the new power."
- **Parts:** "u dv = uv minus v du."

## Quick practice

1. Evaluate \(\int_0^1 (x - x^2)\,dx\). **[1/6]**
2. Integrate \(\int 2x(x^2 + 1)^3\,dx\). **[(x²+1)⁴/4 + c]**
3. Find the volume of revolution of \(y = x\) from 0 to 2 about the x-axis. **[8π/3]**
4. Integrate \(\int x e^x\,dx\) by parts. **[eˣ(x − 1) + c]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('30c91270-c044-769b-382c-2927f400cf33'::uuid, 'cheat-advanced-pure-math-mechanics-kinematics', 'Pure Mathematics with Mechanics', 'Kinematics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Kinematics Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Kinematics is the mechanics half of the paper — motion without considering forces. The SUVAT equations and the calculus links between displacement, velocity and acceleration are tested every year. This is a high-scoring topic if you choose the right equation.

## Core concepts

### SUVAT equations (constant acceleration)
- \(s\) = displacement, \(u\) = initial velocity, \(v\) = final velocity, \(a\) = acceleration, \(t\) = time.
1. \(v = u + at\)
2. \(s = \frac{u+v}{2}t\)
3. \(s = ut + \frac{1}{2}at^2\)
4. \(v^2 = u^2 + 2as\)

Choose the equation that contains the three knowns and the unknown you need.

### Calculus links
- \(v = \frac{ds}{dt}\), \(a = \frac{dv}{dt}\).
- \(s = \int v\,dt\), \(v = \int a\,dt\).
- A body is **at rest** when \(v = 0\).
- **Maximum displacement** occurs when \(v = 0\) (and \(a < 0\)).

### Motion graphs
- **Displacement-time:** gradient = velocity.
- **Velocity-time:** gradient = acceleration; area under the graph = displacement.
- **Acceleration-time:** area = change in velocity.

### Vertical motion under gravity
- \(a = g \approx 9.8\,m/s^2\) downward.
- For a projectile thrown up: \(v = 0\) at the highest point.
- Total time up = total time down (symmetry).

## Common mistakes & exam traps

- Using a SUVAT equation when acceleration is NOT constant.
- Mixing up \(u\) and \(v\).
- Forgetting the sign of \(g\) (downward is negative if up is positive).
- Confusing distance (scalar) with displacement (vector).
- Forgetting to integrate with initial conditions to find the constant.

## Exam technique

1. List what you know: \(s, u, v, a, t\) — write the values and the unknown.
2. Pick the equation with exactly those quantities.
3. For calculus questions, integrate/differentiate and use initial conditions.
4. Check the direction signs.

## Memory hooks

- **SUVAT:** "v = u + at, s = (u+v)t/2, s = ut + ½at², v² = u² + 2as."
- **At rest:** "v = 0."

## Quick practice

1. A car accelerates from rest at 2 m/s² for 5 s. Find its final velocity. **[10 m/s]**
2. A ball is thrown up at 20 m/s. How high does it rise? **[≈20.4 m]**
3. If \(s = t^3 - 6t^2\), when is the body at rest? **[t = 0 and t = 4]**
4. What does the area under a velocity-time graph give? **[Displacement]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('4cd8a27b-45dc-7d6d-307e-701bd8842ce3'::uuid, 'cheat-advanced-pure-math-mechanics-forces-and-newton-s-laws', 'Pure Mathematics with Mechanics', 'Forces & Newton''s Laws Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Forces & Newton''s Laws Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Newton''s laws connect forces to motion — the heart of mechanics. You must be able to draw force diagrams, resolve forces, and apply \(F = ma\) to particles, connected bodies and inclined planes. This is a guaranteed topic.

## Core concepts

### Newton''s three laws
1. **First law:** a body stays at rest or moves uniformly unless acted on by a resultant force.
2. **Second law:** \(F = ma\) — resultant force = mass × acceleration.
3. **Third law:** every action has an equal and opposite reaction.

### Types of force
- **Weight:** \(W = mg\) (always downward).
- **Normal reaction:** \(R\) or \(N\) — perpendicular to the surface.
- **Tension:** \(T\) — along a string/rope, pulling.
- **Friction:** \(F_r\) — opposes motion, parallel to the surface.
- **Thrust/push:** along a rod, pushing.

### Resolving forces
- A force \(P\) at angle \(\theta\) to the horizontal:
  - Horizontal component: \(P\cos\theta\).
  - Vertical component: \(P\sin\theta\).
- On an inclined plane at angle \(\alpha\):
  - Weight component down the plane: \(mg\sin\alpha\).
  - Weight component perpendicular: \(mg\cos\alpha\).

### Friction
- **Limiting friction:** \(F_{max} = \mu R\) where \(\mu\) is the coefficient of friction.
- Friction acts to oppose motion.
- If \(\mu R\) is not reached, friction balances the applied force.

### Connected particles
- Two particles joined by a string over a pulley.
- The tension is the same throughout a light string.
- Apply \(F = ma\) to each particle, then solve the simultaneous equations.

### Equilibrium
- A body is in equilibrium when the resultant force is zero.
- Resolve in two perpendicular directions and set each sum to zero.

## Common mistakes & exam traps

- Forgetting the weight \(mg\) in force diagrams.
- Resolving the wrong component on an inclined plane.
- Using \(F = ma\) with the wrong mass for connected bodies.
- Forgetting that friction opposes motion.
- Not drawing a clear force diagram.

## Exam technique

1. **Always draw a force diagram** — it earns method marks.
2. Resolve perpendicular to the plane to find \(R\), then parallel to the plane for \(F = ma\).
3. For connected bodies, write one equation per body and solve together.
4. Check the direction of friction.

## Memory hooks

- **F = ma:** "Resultant force equals mass times acceleration."
- **Inclined plane:** "mg sin down the slope, mg cos into the slope."

## Quick practice

1. State Newton''s second law. **[F = ma]**
2. A 5 kg mass has weight... **[49 N]**
3. On a plane at 30°, what is the weight component down the plane? **[mg sin 30° = 24.5 N]**
4. If \(\mu = 0.4\) and \(R = 50\) N, what is the limiting friction? **[20 N]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a0593944-f6d9-b62c-ea5d-3fd7b77bbe36'::uuid, 'cheat-advanced-pure-math-stats-statistical-measures', 'Pure Mathematics with Statistics', 'Statistical Measures Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Statistical Measures Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Statistical measures summarise data. Mean, median, mode, variance and standard deviation are tested every year, usually from a frequency table. The calculations are mechanical — the marks go to those who set up the table correctly.

## Core concepts

### Measures of central tendency
- **Mean:** \(\bar{x} = \frac{\Sigma fx}{\Sigma f}\) for grouped data.
- **Median:** the middle value. For grouped data, use interpolation.
- **Mode:** the most frequent value. For grouped data, the modal class.

### Measures of spread
- **Range:** max − min.
- **Interquartile range (IQR):** \(Q_3 - Q_1\) — the middle 50% of data.
- **Variance:** \(\sigma^2 = \frac{\Sigma fx^2}{\Sigma f} - \bar{x}^2\).
- **Standard deviation:** \(\sigma = \sqrt{\text{variance}}\).

### Worked example (frequency table)
| x | f | fx | fx² |
|---|---|---|---|
| 2 | 3 | 6 | 12 |
| 4 | 5 | 20 | 80 |
| 6 | 2 | 12 | 72 |
| Total | 10 | 38 | 164 |

Mean \(= 38/10 = 3.8\).
Variance \(= 164/10 - 3.8^2 = 16.4 - 14.44 = 1.96\).
Standard deviation \(= \sqrt{1.96} = 1.4\).

### Choosing the right measure
- **Mean:** uses all data — but affected by outliers.
- **Median:** not affected by outliers — good for skewed data.
- **Mode:** useful for categorical data.

### Percentiles and quartiles
- \(Q_1\): 25th percentile. \(Q_2\): median. \(Q_3\): 75th percentile.
- For grouped data, use interpolation within the class interval.

## Common mistakes & exam traps

- Forgetting the \(fx\) and \(fx^2\) columns.
- Using \(\Sigma f\) as the denominator incorrectly.
- Forgetting to subtract \(\bar{x}^2\) in the variance formula.
- Confusing variance and standard deviation.
- Using the wrong class boundaries for interpolation.

## Exam technique

1. Always draw the table with \(f\), \(fx\), \(fx^2\) columns and totals.
2. Show the formula before substituting.
3. Give standard deviation to a sensible accuracy (2–3 s.f.).
4. For interpolation, write the formula: \(Q = L + \frac{n/4 - CF}{f} \times w\).

## Memory hooks

- **Variance:** "Mean of squares minus square of mean."
- **SD:** "Square root of the variance."

## Quick practice

1. Find the mean of the table above. **[3.8]**
2. What is the standard deviation? **[1.4]**
3. Which measure is not affected by outliers? **[Median]**
4. What is the IQR? **[Q3 − Q1]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('b566d17a-7865-b749-6a64-394bb260d3d7'::uuid, 'cheat-advanced-pure-math-stats-probability', 'Pure Mathematics with Statistics', 'Probability Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Probability Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Probability is a core topic in the Statistics paper. You must handle sample spaces, the addition and multiplication rules, conditional probability, and tree diagrams. Questions use everyday situations — dice, cards, students — so the setup matters as much as the arithmetic.

## Core concepts

### The basics
- \(P(A) = \frac{\text{favourable outcomes}}{\text{total outcomes}}\).
- \(0 \le P(A) \le 1\).
- \(P(A'') = 1 - P(A)\).

### Addition rule
- **Mutually exclusive:** \(P(A \cup B) = P(A) + P(B)\).
- **General:** \(P(A \cup B) = P(A) + P(B) - P(A \cap B)\).

### Multiplication rule
- **Independent events:** \(P(A \cap B) = P(A) \times P(B)\).
- **General (conditional):** \(P(A \cap B) = P(A) \times P(B|A)\).

### Conditional probability
$$P(B|A) = \frac{P(A \cap B)}{P(A)}$$
"Probability of B given A" — the sample space is reduced to A.

### Tree diagrams
- Each branch shows a probability; multiply along branches, add across outcomes.
- **Without replacement:** the denominator decreases after each draw.

### Worked example
A bag has 4 red and 6 blue marbles. Two drawn without replacement.
\(P(\text{both red}) = \frac{4}{10} \times \frac{3}{9} = \frac{12}{90} = \frac{2}{15}\).

### "At least one"
- \(P(\text{at least one}) = 1 - P(\text{none})\).

## Common mistakes & exam traps

- Adding probabilities of events that are NOT mutually exclusive.
- Multiplying when events are not independent.
- Forgetting to reduce the denominator "without replacement".
- Confusing \(P(A|B)\) with \(P(B|A)\).
- Forgetting the subtraction in the general addition rule.

## Exam technique

1. Write the probability as a fraction before simplifying.
2. For "at least one", use \(1 - P(\text{none})\).
3. Draw the tree diagram even if not asked.
4. Check that all branch probabilities from a point sum to 1.

## Memory hooks

- **Or = add, And = multiply** (for the right cases).
- **At least one:** "One minus none."

## Quick practice

1. Two dice are rolled. Find \(P(\text{sum} = 7)\). **[6/36 = 1/6]**
2. \(P(A) = 0.4\), \(P(B) = 0.5\), independent. Find \(P(A \cap B)\). **[0.2]**
3. From the marble bag, find \(P(\text{both red})\) without replacement. **[2/15]**
4. \(P(A) = 0.3\). Find \(P(\text{at least one})\) in two trials. **[1 − 0.7² = 0.51]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a1c20970-1969-58e6-2ee0-55317c25f739'::uuid, 'cheat-advanced-pure-math-stats-the-binomial-distribution', 'Pure Mathematics with Statistics', 'The Binomial Distribution Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# The Binomial Distribution Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

The binomial distribution models the number of successes in a fixed number of independent trials. It is a guaranteed topic in the Statistics paper. You must know when to use it, how to apply the formula, and how to use the binomial tables.

## Core concepts

### When to use the binomial
A situation is binomial if:
1. A fixed number of trials \(n\).
2. Each trial has two outcomes (success/failure).
3. The probability of success \(p\) is constant.
4. The trials are independent.

### The formula
$$P(X = r) = \binom{n}{r} p^r (1-p)^{n-r}$$
where \(\binom{n}{r} = \frac{n!}{r!(n-r)!}\).

### Mean and variance
- **Mean:** \(E(X) = np\).
- **Variance:** \(\text{Var}(X) = np(1-p)\).
- **Standard deviation:** \(\sqrt{np(1-p)}\).

### Worked example
A coin is tossed 5 times. Find \(P(\text{exactly 3 heads})\).
\(n = 5\), \(p = 0.5\), \(r = 3\):
$$P(X = 3) = \binom{5}{3}(0.5)^3(0.5)^2 = 10 \times 0.125 \times 0.25 = 0.3125$$

### Cumulative probabilities
- \(P(X \le r)\): read directly from binomial tables.
- \(P(X \ge r) = 1 - P(X \le r-1)\).
- \(P(a \le X \le b) = P(X \le b) - P(X \le a-1)\).

## Common mistakes & exam traps

- Using the binomial when trials are NOT independent or \(p\) changes.
- Forgetting the \(\binom{n}{r}\) coefficient.
- Confusing \(p\) and \((1-p)\).
- Reading \(P(X \ge r)\) directly from tables (tables give \(\le\)).
- Using \(np\) for the variance (forgetting the \((1-p)\)).

## Exam technique

1. Check the four conditions before using the binomial.
2. Write \(X \sim B(n, p)\) — it communicates your setup.
3. For \(\ge\), use \(1 - P(X \le r-1)\).
4. State the mean and variance when asked.

## Memory hooks

- **Binomial:** "Fixed n, two outcomes, constant p, independent."
- **Mean/variance:** "np and np(1−p)."

## Quick practice

1. A coin is tossed 5 times. Find \(P(\text{exactly 3 heads})\). **[0.3125]**
2. For \(X \sim B(10, 0.2)\), find the mean. **[2]**
3. Find the variance for \(X \sim B(10, 0.2)\). **[1.6]**
4. How do you find \(P(X \ge 3)\) from tables? **[1 − P(X ≤ 2)]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6cf3b1d3-a663-cd54-5d05-437e571cb9eb'::uuid, 'cheat-advanced-pure-math-stats-correlation-and-regression', 'Pure Mathematics with Statistics', 'Correlation & Regression Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Correlation & Regression Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Correlation and regression measure the relationship between two variables. You must be able to calculate the product-moment correlation coefficient, interpret scatter diagrams, and use the least-squares regression line to make predictions.

## Core concepts

### Scatter diagrams
- **Positive correlation:** as x rises, y rises.
- **Negative correlation:** as x rises, y falls.
- **No correlation:** no pattern.
- The stronger the clustering around a line, the stronger the correlation.

### The product-moment correlation coefficient \(r\)
$$r = \frac{\Sigma(x - \bar{x})(y - \bar{y})}{\sqrt{\Sigma(x - \bar{x})^2 \Sigma(y - \bar{y})^2}}$$
- \(r\) lies between −1 and +1.
- \(r = 1\): perfect positive. \(r = -1\): perfect negative. \(r = 0\): no linear correlation.
- \(r\) measures **linear** correlation only.

### The regression line
- The line of best fit: \(y = a + bx\).
- **Gradient:** \(b = \frac{\Sigma(x - \bar{x})(y - \bar{y})}{\Sigma(x - \bar{x})^2}\).
- **Intercept:** \(a = \bar{y} - b\bar{x}\).
- The line always passes through \((\bar{x}, \bar{y})\).

### Using the regression line
- Substitute an x value to **predict** y.
- Only predict within the range of the data (interpolation); extrapolation is unreliable.

## Common mistakes & exam traps

- Thinking correlation implies causation.
- Using \(r\) for non-linear relationships.
- Forgetting that the regression line passes through the mean point.
- Predicting far outside the data range.
- Mixing up which variable is x (the predictor) and which is y.

## Exam technique

1. Draw the scatter diagram first — it guides your answer.
2. Show the formula and the working for \(r\).
3. Interpret \(r\) in words (strength and direction).
4. For predictions, state that you are interpolating or extrapolating.

## Memory hooks

- **r:** "Between −1 and 1; near 1 strong, near 0 weak."
- **Regression:** "Always through the mean point."

## Quick practice

1. What does \(r = -0.9\) mean? **[Strong negative linear correlation]**
2. Does correlation imply causation? **[No]**
3. What point does the regression line always pass through? **[(x̄, ȳ)]**
4. Why is extrapolation unreliable? **[The relationship may change outside the data range]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('59844a31-8c92-ccb2-fa67-5633cfe59736'::uuid, 'cheat-advanced-further-math-complex-numbers', 'Further Mathematics', 'Complex Numbers Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Complex Numbers Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Complex numbers extend the number system to include \(i = \sqrt{-1}\). They are a core topic in Further Mathematics — tested as arithmetic, the Argand diagram, modulus-argument form, and De Moivre''s theorem. They also connect to roots of equations and trigonometry.

## Core concepts

### The imaginary unit
- \(i^2 = -1\), so \(\sqrt{-1} = i\).
- \(i^3 = -i\), \(i^4 = 1\) — the powers cycle with period 4.

### Standard form
- \(z = a + bi\) where \(a\) is the real part and \(b\) the imaginary part.
- **Addition/subtraction:** combine real and imaginary parts.
- **Multiplication:** expand like binomials, using \(i^2 = -1\).
  \((2 + 3i)(1 - i) = 2 - 2i + 3i - 3i^2 = 5 + i\).
- **Division:** multiply top and bottom by the **conjugate** \(a - bi\).

### The conjugate
- \(\bar{z} = a - bi\).
- \(z\bar{z} = a^2 + b^2\) (a real number).
- \(\overline{z_1 + z_2} = \bar{z_1} + \bar{z_2}\).

### The Argand diagram
- Plot \(a + bi\) as the point \((a, b)\).
- **Modulus:** \(|z| = \sqrt{a^2 + b^2}\) — distance from the origin.
- **Argument:** \(\arg z = \tan^{-1}(\frac{b}{a})\) — the angle from the positive real axis.

### Modulus-argument form
$$z = r(\cos\theta + i\sin\theta)$$
where \(r = |z|\) and \(\theta = \arg z\).

### De Moivre''s theorem
$$(\cos\theta + i\sin\theta)^n = \cos(n\theta) + i\sin(n\theta)$$
Used to find powers and roots of complex numbers.

### Roots of equations
- A polynomial of degree \(n\) has \(n\) roots (some complex).
- Complex roots come in **conjugate pairs**.

## Common mistakes & exam traps

- Forgetting that \(i^2 = -1\) when multiplying.
- Dividing without multiplying by the conjugate.
- Forgetting the conjugate pair rule for real polynomials.
- Using degrees instead of radians in the argument.
- Confusing the real and imaginary parts.

## Exam technique

1. Write complex numbers in standard form \(a + bi\).
2. For division, always multiply by the conjugate.
3. Draw the Argand diagram to check your modulus and argument.
4. Use De Moivre''s theorem for powers and roots.

## Memory hooks

- **i powers:** "i, −1, −i, 1 — cycle of four."
- **Division:** "Multiply by the conjugate."

## Quick practice

1. Simplify \((2 + 3i)(1 - i)\). **[5 + i]**
2. Find \(|3 + 4i|\). **[5]**
3. Find the conjugate of \(2 - 5i\). **[2 + 5i]**
4. Simplify \(i^{27}\). **[−i]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('fcd0ca05-1626-a009-3aaf-79998360a104'::uuid, 'cheat-advanced-further-math-matrices-and-transformations', 'Further Mathematics', 'Matrices & Transformations Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Matrices & Transformations Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Matrices are a major topic in Further Mathematics — arithmetic, determinants, inverses, solving simultaneous equations, and representing transformations. The link between matrices and geometry is a favourite exam question.

## Core concepts

### Matrix arithmetic
- **Addition/subtraction:** same order only, element by element.
- **Scalar multiplication:** multiply every element.
- **Multiplication:** rows of first × columns of second. \(AB \ne BA\) in general.

### Determinant of a 2×2
For \(A = \begin{pmatrix}a & b\\c & d\end{pmatrix}\), \(\det(A) = ad - bc\).
- \(\det = 0\): **singular** — no inverse.

### Inverse of a 2×2
$$A^{-1} = \frac{1}{ad-bc}\begin{pmatrix}d & -b\\-c & a\end{pmatrix}$$

### Determinant of a 3×3
Expand along a row or column using minors and cofactors, alternating signs:
$$\det = a(ei - fh) - b(di - fg) + c(dh - eg)$$

### Solving simultaneous equations
- Write as \(A\mathbf{x} = \mathbf{b}\).
- \(\mathbf{x} = A^{-1}\mathbf{b}\).
- If \(\det A = 0\): no unique solution (inconsistent or infinite solutions).

### Transformations
| Transformation | Matrix |
|---|---|
| Reflection in x-axis | \(\begin{pmatrix}1&0\\0&-1\end{pmatrix}\) |
| Reflection in y-axis | \(\begin{pmatrix}-1&0\\0&1\end{pmatrix}\) |
| Rotation 90° anticlockwise | \(\begin{pmatrix}0&-1\\1&0\end{pmatrix}\) |
| Rotation 180° | \(\begin{pmatrix}-1&0\\0&-1\end{pmatrix}\) |
| Enlargement scale k | \(\begin{pmatrix}k&0\\0&k\end{pmatrix}\) |
| Shear | \(\begin{pmatrix}1&k\\0&1\end{pmatrix}\) |

- A transformation matrix \(M\) maps \((x, y)\) to \(M\binom{x}{y}\).
- **Combined transformations:** apply in order — the first transformation is on the right.

### Invariant points and lines
- Points where \(M\mathbf{x} = \mathbf{x}\).
- Solve \((M - I)\mathbf{x} = \mathbf{0}\).

## Common mistakes & exam traps

- Multiplying matrices in the wrong order.
- Forgetting the sign pattern in the inverse.
- Confusing the order of combined transformations.
- Dividing by a zero determinant.
- Forgetting that \(AB \ne BA\).

## Exam technique

1. Check the orders before multiplying.
2. For inverses, check \(AA^{-1} = I\).
3. For transformations, apply the matrix to a test point.
4. For combined transformations, remember: rightmost acts first.

## Memory hooks

- **Inverse:** "Swap diagonal, negate other, divide by determinant."
- **Combined:** "Rightmost first."

## Quick practice

1. Find the inverse of \(\begin{pmatrix}2&3\\1&4\end{pmatrix}\). **[1/5 \begin{pmatrix}4&−3\\−1&2\end{pmatrix}]**
2. Which matrix reflects in the y-axis? **[\begin{pmatrix}−1&0\\0&1\end{pmatrix}]**
3. Solve \(2x + 3y = 7\), \(x + 4y = 6\) using matrices. **[x = 2, y = 1]**
4. Is \(\begin{pmatrix}2&4\\1&2\end{pmatrix}\) singular? **[Yes]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a7e44191-fc57-bbfb-82ce-b8471842833e'::uuid, 'cheat-advanced-further-math-polar-coordinates', 'Further Mathematics', 'Polar Coordinates Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Polar Coordinates Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Polar coordinates describe points by distance from the origin and angle from the positive x-axis. They are a distinctive Further Mathematics topic, tested through conversion, sketching curves, and finding areas.

## Core concepts

### The polar system
- A point is \((r, \theta)\): \(r\) = distance from the pole (origin), \(\theta\) = angle from the initial line (positive x-axis).
- \(\theta\) is usually measured in **radians**.

### Converting between polar and Cartesian
- \(x = r\cos\theta\), \(y = r\sin\theta\).
- \(r^2 = x^2 + y^2\), \(\tan\theta = \frac{y}{x}\).

**Example:** convert \((2, \frac{\pi}{3})\) to Cartesian:
\(x = 2\cos\frac{\pi}{3} = 1\), \(y = 2\sin\frac{\pi}{3} = \sqrt{3}\) → \((1, \sqrt{3})\).

### Standard polar curves
- \(r = a\): a circle, centre origin, radius \(a\).
- \(\theta = \alpha\): a half-line from the origin at angle \(\alpha\).
- \(r = a\cos\theta\): a circle through the origin, centre \((a/2, 0)\).
- \(r = a(1 + \cos\theta)\): a cardioid.
- \(r = a\cos(n\theta)\): a rose curve with \(n\) petals (or \(2n\) if \(n\) even).

### Area in polar coordinates
$$A = \frac{1}{2}\int_{\alpha}^{\beta} r^2\,d\theta$$
- Find the limits by solving where the curve meets the pole (\(r = 0\)) or the required rays.

### Symmetry
- \(r(\theta) = r(-\theta)\): symmetric about the initial line.
- \(r(\theta) = r(\pi - \theta)\): symmetric about the y-axis.

## Common mistakes & exam traps

- Using degrees when the formula needs radians.
- Forgetting to square \(r\) in the area formula.
- Getting the limits wrong — solve \(r = 0\) carefully.
- Confusing the conversion formulas.
- Forgetting the \(\frac{1}{2}\) in the area formula.

## Exam technique

1. Sketch the curve before finding areas.
2. Convert a few key points to check your sketch.
3. For areas, find the limits by setting \(r = 0\).
4. Use symmetry to halve the work.

## Memory hooks

- **Conversion:** "x = r cos, y = r sin, r² = x² + y²."
- **Area:** "Half the integral of r² dθ."

## Quick practice

1. Convert \((2, \frac{\pi}{3})\) to Cartesian. **[(1, √3)]**
2. What is the curve \(r = 3\)? **[A circle, radius 3]**
3. Find the area enclosed by \(r = a\) from 0 to \(2\pi\). **[πa²]**
4. What is a cardioid? **[r = a(1 + cos θ)]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('b429aa62-a248-ffe2-83fd-fa1887675258'::uuid, 'cheat-advanced-further-math-differential-equations', 'Further Mathematics', 'Differential Equations Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Differential Equations Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Differential equations model change — populations, cooling, motion, growth. They are a core Further Mathematics topic. You must solve first-order equations by separation of variables and integrating factors, and second-order linear equations with constant coefficients.

## Core concepts

### Separation of variables
For \(\frac{dy}{dx} = f(x)g(y)\):
1. Rearrange: \(\frac{1}{g(y)}\,dy = f(x)\,dx\).
2. Integrate both sides.
3. Use the initial condition to find the constant.

**Example:** \(\frac{dy}{dx} = xy\), \(y(0) = 1\).
\(\int \frac{1}{y}\,dy = \int x\,dx\) → \(\ln y = \frac{x^2}{2} + c\).
\(y = Ae^{x^2/2}\), and \(y(0) = 1\) gives \(A = 1\), so \(y = e^{x^2/2}\).

### First-order linear: integrating factor
For \(\frac{dy}{dx} + P(x)y = Q(x)\):
- Integrating factor: \(I = e^{\int P\,dx}\).
- Multiply through, then \(\frac{d}{dx}(Iy) = IQ\).
- Integrate both sides.

### Second-order linear with constant coefficients
\(a\frac{d^2y}{dx^2} + b\frac{dy}{dx} + cy = 0\):
- Auxiliary equation: \(am^2 + bm + c = 0\).
- **Distinct real roots** \(m_1, m_2\): \(y = Ae^{m_1x} + Be^{m_2x}\).
- **Repeated root** \(m\): \(y = (A + Bx)e^{mx}\).
- **Complex roots** \(\alpha \pm \beta i\): \(y = e^{\alpha x}(A\cos\beta x + B\sin\beta x)\).

### Particular integral (for non-zero RHS)
- Try a form matching the RHS: constant, polynomial, exponential, or \(A\cos x + B\sin x\).
- Substitute into the equation to find the coefficients.

### Applications
- **Newton''s law of cooling:** \(\frac{dT}{dt} = -k(T - T_s)\).
- **Population growth:** \(\frac{dP}{dt} = kP\).
- **Simple harmonic motion:** \(\frac{d^2x}{dt^2} = -\omega^2 x\).

## Common mistakes & exam traps

- Forgetting the constant of integration.
- Not using the initial condition.
- Getting the auxiliary equation wrong.
- Forgetting the \(x\) factor for a repeated root.
- Choosing the wrong form for the particular integral.

## Exam technique

1. Identify the type of equation first.
2. Show the separation or the integrating factor explicitly.
3. For second-order, write the auxiliary equation and its roots.
4. Always apply the initial/boundary conditions at the end.

## Memory hooks

- **Separable:** "Get y''s with dy, x''s with dx, integrate."
- **Auxiliary:** "Distinct real, repeated, complex — three cases."

## Quick practice

1. Solve \(\frac{dy}{dx} = xy\) with \(y(0) = 1\). **[y = e^{x²/2}]**
2. Solve \(y'''' - 3y'' + 2y = 0\). **[y = Aeˣ + Be²ˣ]**
3. What is the integrating factor for \(y'' + 2y = 1\)? **[e^{2x}]**
4. Write the general solution for roots \(m = 2, 2\). **[y = (A + Bx)e^{2x}]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6791127d-2e5e-6b0a-b1fd-f457b4de63b6'::uuid, 'cheat-advanced-physics-mechanics', 'Physics', 'Mechanics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Mechanics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Mechanics is the largest and most reliable section of the Advanced Physics paper. Kinematics, Newton''s laws, momentum, energy and circular motion are tested every year. Master the definitions and the equations, and you secure a large share of the marks.

## Core concepts

### Kinematics
- \(v = u + at\), \(s = ut + \frac{1}{2}at^2\), \(v^2 = u^2 + 2as\).
- \(v = \frac{ds}{dt}\), \(a = \frac{dv}{dt}\).
- **Projectiles:** horizontal motion at constant velocity; vertical motion under gravity.

### Newton''s laws
1. A body stays at rest or uniform motion unless acted on by a resultant force.
2. \(F = ma\).
3. Action and reaction are equal and opposite.

### Momentum
- \(p = mv\).
- **Conservation of momentum:** total momentum before = total momentum after (no external force).
- **Impulse:** \(Ft = \Delta p\) — the area under a force-time graph.
- **Elastic collision:** kinetic energy conserved. **Inelastic:** not conserved.

### Work, energy and power
- \(W = Fs\cos\theta\).
- **Kinetic energy:** \(E_k = \frac{1}{2}mv^2\).
- **Gravitational potential energy:** \(E_p = mgh\).
- **Power:** \(P = \frac{W}{t} = Fv\).
- **Conservation of energy:** total energy is conserved.

### Circular motion
- \(v = \omega r\).
- **Centripetal acceleration:** \(a = \frac{v^2}{r} = \omega^2 r\).
- **Centripetal force:** \(F = \frac{mv^2}{r} = m\omega^2 r\).
- The centripetal force acts **towards the centre**.

### Simple harmonic motion
- \(a = -\omega^2 x\).
- \(x = A\cos(\omega t)\), \(v_{max} = \omega A\).
- \(T = 2\pi\sqrt{\frac{m}{k}}\) (mass-spring), \(T = 2\pi\sqrt{\frac{l}{g}}\) (pendulum).

## Common mistakes & exam traps

- Using SUVAT when acceleration is not constant.
- Forgetting that momentum is a vector (direction matters).
- Confusing elastic and inelastic collisions.
- Using the wrong energy formula.
- Forgetting the direction of the centripetal force.

## Exam technique

1. Draw a diagram and label forces.
2. State the principle (conservation of momentum/energy) before applying it.
3. Check units — convert to SI first.
4. For circular motion, identify what provides the centripetal force.

## Memory hooks

- **Energy:** "KE half mv², PE mgh, work Fs."
- **SHM:** "Acceleration proportional to −displacement."

## Quick practice

1. A 2 kg mass moves at 3 m/s. Find its kinetic energy. **[9 J]**
2. A force of 10 N acts for 2 s on a 2 kg body at rest. Find the final velocity. **[10 m/s]**
3. What is the centripetal force on a 1 kg mass at 2 m/s on a 1 m radius? **[4 N]**
4. State the law of conservation of momentum. **[Total momentum is conserved with no external force]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('228f2ded-12d4-b5c4-2c93-421e771ac7ee'::uuid, 'cheat-advanced-physics-waves-and-optics', 'Physics', 'Waves & Optics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Waves & Optics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Waves and optics cover wave properties, sound, light, refraction, interference and diffraction. The wave equations and the laws of refraction are tested every year. Interference and diffraction are favourite "explain" questions.

## Core concepts

### Wave basics
- \(v = f\lambda\) (speed = frequency × wavelength).
- \(T = \frac{1}{f}\).
- **Transverse waves:** vibrations perpendicular to travel (light, water).
- **Longitudinal waves:** vibrations parallel to travel (sound).
- **Amplitude:** maximum displacement. **Frequency:** waves per second.

### The wave equation
$$y = A\sin(\omega t - kx)$$
where \(\omega = 2\pi f\) and \(k = \frac{2\pi}{\lambda}\).

### Reflection and refraction
- **Law of reflection:** angle of incidence = angle of reflection.
- **Snell''s law:** \(n_1\sin\theta_1 = n_2\sin\theta_2\).
- **Refractive index:** \(n = \frac{c}{v} = \frac{\sin i}{\sin r}\).
- **Total internal reflection:** occurs when light goes from denser to rarer medium at an angle greater than the **critical angle** \(\sin c = \frac{1}{n}\).
- Used in optical fibres.

### Lenses
- **Thin lens equation:** \(\frac{1}{f} = \frac{1}{u} + \frac{1}{v}\).
- **Magnification:** \(m = \frac{v}{u}\).
- **Convex lens:** converges; forms real or virtual images.
- **Concave lens:** diverges; always forms virtual images.

### Interference
- **Young''s double slit:** \(\lambda = \frac{ax}{D}\) (fringe spacing).
- Constructive interference: path difference \(= n\lambda\).
- Destructive interference: path difference \(= (n + \frac{1}{2})\lambda\).
- **Coherent sources:** same frequency and constant phase difference.

### Diffraction
- Spreading of waves past obstacles or through gaps.
- Single slit: central maximum is twice as wide as the others.
- Diffraction grating: \(d\sin\theta = n\lambda\).

## Common mistakes & exam traps

- Confusing transverse and longitudinal waves.
- Forgetting that \(v = f\lambda\) needs consistent units.
- Mixing up the sign conventions in the lens equation.
- Using degrees instead of radians in wave equations.
- Forgetting the conditions for total internal reflection.

## Exam technique

1. Write the wave equation and identify the unknowns.
2. For refraction, draw the ray and label the angles.
3. For interference, state the condition (constructive/destructive) before calculating.
4. Check the critical angle condition for TIR.

## Memory hooks

- **v = fλ:** "Speed is frequency times wavelength."
- **TIR:** "Denser to rarer, beyond the critical angle."

## Quick practice

1. A wave has frequency 50 Hz and wavelength 2 m. Find its speed. **[100 m/s]**
2. State Snell''s law. **[n₁ sin θ₁ = n₂ sin θ₂]**
3. What is the critical angle for glass of n = 1.5? **[≈41.8°]**
4. For constructive interference, the path difference is... **[nλ]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('7b06881c-2de3-4296-3b93-f94faed22657'::uuid, 'cheat-advanced-physics-electricity-and-magnetism', 'Physics', 'Electricity & Magnetism Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Electricity & Magnetism Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Electricity and magnetism are a major section of the Advanced Physics paper. Ohm''s law, circuits, Kirchhoff''s laws, electromagnetic induction and alternating current are all tested. Circuit problems reward systematic working.

## Core concepts

### Basic quantities
- **Current:** \(I = \frac{Q}{t}\) (amperes).
- **Voltage (p.d.):** energy per unit charge (volts).
- **Resistance:** \(R = \frac{V}{I}\) (ohms).
- **Resistivity:** \(R = \frac{\rho l}{A}\).

### Series and parallel circuits
- **Series:** \(R_T = R_1 + R_2 + ...\). Current is the same; voltage divides.
- **Parallel:** \(\frac{1}{R_T} = \frac{1}{R_1} + \frac{1}{R_2} + ...\). Voltage is the same; current divides.

### Kirchhoff''s laws
1. **Current law:** the sum of currents entering a junction equals the sum leaving.
2. **Voltage law:** the sum of emfs around a closed loop equals the sum of potential drops.

### Power and energy
- \(P = VI = I^2R = \frac{V^2}{R}\).
- \(E = Pt = VIt\).

### Electromagnetism
- A current-carrying wire in a magnetic field experiences a force:
  \(F = BIl\sin\theta\).
- **Fleming''s left-hand rule:** thumb = force, first finger = field, second finger = current.

### Electromagnetic induction
- **Faraday''s law:** induced emf \(\propto\) rate of change of flux linkage.
- **Lenz''s law:** the induced current opposes the change producing it.
- \(\mathcal{E} = -N\frac{d\Phi}{dt}\).

### Alternating current
- \(V_{rms} = \frac{V_0}{\sqrt{2}}\), \(I_{rms} = \frac{I_0}{\sqrt{2}}\).
- \(P_{av} = V_{rms}I_{rms}\).
- **Transformers:** \(\frac{V_s}{V_p} = \frac{N_s}{N_p}\). Ideal: \(V_p I_p = V_s I_s\).

## Common mistakes & exam traps

- Adding parallel resistances like series ones.
- Forgetting to convert units (mA to A, kΩ to Ω).
- Confusing emf and terminal voltage.
- Using peak values instead of rms for AC power.
- Forgetting Lenz''s law direction.

## Exam technique

1. Redraw the circuit and label currents and voltages.
2. Simplify series/parallel combinations step by step.
3. Apply Kirchhoff''s laws systematically to loops.
4. For AC, use rms values in power calculations.

## Memory hooks

- **Series vs parallel:** "Series adds, parallel reciprocals."
- **Fleming:** "Thumb force, first finger field, second finger current."

## Quick practice

1. Find the total resistance of 4 Ω and 6 Ω in parallel. **[2.4 Ω]**
2. A 12 V, 3 A appliance uses what power? **[36 W]**
3. State Faraday''s law. **[Induced emf ∝ rate of change of flux linkage]**
4. If \(V_0 = 311\) V, find \(V_{rms}\). **[≈220 V]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('3c59d85b-bf1a-a67c-5e38-c325d2f989ea'::uuid, 'cheat-advanced-physics-modern-physics', 'Physics', 'Modern Physics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Modern Physics Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Modern physics covers the photoelectric effect, atomic structure, radioactivity and nuclear energy. These topics test your understanding of quantum ideas and nuclear processes. The photoelectric effect and radioactive decay are the most common questions.

## Core concepts

### The photoelectric effect
- Light (photons) can eject electrons from a metal surface.
- \(E = hf\), where \(h = 6.63 \times 10^{-34}\) J·s.
- **Work function:** \(\phi = hf_0\) — the minimum energy to eject an electron.
- **Einstein''s equation:** \(hf = \phi + KE_{max}\).
- Increasing light **intensity** increases the number of electrons, not their energy.
- Increasing **frequency** increases the electrons'' energy.

### Atomic structure
- \(E = hf\) for photon energy.
- Electrons occupy discrete energy levels.
- **Excitation:** an electron moves to a higher level.
- **Ionisation:** an electron is removed completely.
- Emission spectra: photons emitted when electrons drop levels.

### Radioactivity
- **Alpha (α):** helium nucleus, \(\frac{4}{2}He\), stopped by paper, highly ionising.
- **Beta (β):** fast electron, stopped by a few mm of aluminium.
- **Gamma (γ):** electromagnetic wave, stopped by thick lead, weakly ionising.

### Radioactive decay
- \(N = N_0 e^{-\lambda t}\).
- **Half-life:** \(T_{1/2} = \frac{\ln 2}{\lambda}\).
- **Activity:** \(A = \lambda N\) (becquerels).

### Nuclear energy
- **Fission:** a heavy nucleus splits (uranium-235) — releases energy.
- **Fusion:** light nuclei join (hydrogen → helium) — releases more energy per kg.
- \(E = mc^2\) — mass converted to energy.

## Common mistakes & exam traps

- Confusing intensity (number of photons) with frequency (energy per photon).
- Forgetting the work function in the photoelectric equation.
- Mixing up the penetrating powers of α, β, γ.
- Using the wrong half-life formula.
- Forgetting that \(E = mc^2\) relates mass and energy.

## Exam technique

1. Write the photoelectric equation and identify each term.
2. For decay, identify \(N_0\), \(\lambda\) and \(t\) first.
3. Compare α, β, γ by ionising power and penetration.
4. Use \(E = mc^2\) with mass in kg.

## Memory hooks

- **Photoelectric:** "hf = φ + KE."
- **Penetration:** "Paper stops α, aluminium stops β, lead stops γ."

## Quick practice

1. State Einstein''s photoelectric equation. **[hf = φ + KE_max]**
2. What does increasing light intensity do? **[Increases the number of electrons]**
3. What is the half-life formula? **[T½ = ln 2 / λ]**
4. Which radiation is stopped by paper? **[Alpha]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('804bec3b-7f45-e631-12e5-6ebf7eb04fc5'::uuid, 'cheat-advanced-chemistry-atomic-structure-and-periodicity', 'Chemistry', 'Atomic Structure & Periodicity Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Atomic Structure & Periodicity Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Atomic structure explains everything else in chemistry — bonding, periodicity, and reactions. You must know the subatomic particles, electron configuration, and how the periodic table is organised. This is the foundation of the whole paper.

## Core concepts

### Subatomic particles
| Particle | Charge | Mass |
|---|---|---|
| Proton | +1 | 1 |
| Neutron | 0 | 1 |
| Electron | −1 | ≈ 1/1840 |

- **Atomic number (Z):** number of protons.
- **Mass number (A):** protons + neutrons.
- **Isotopes:** same protons, different neutrons — same chemical properties, different mass.

### Electron configuration
- Electrons fill orbitals in order of energy: 1s, 2s, 2p, 3s, 3p, 4s, 3d...
- **Aufbau principle:** fill lowest energy first.
- **Hund''s rule:** fill orbitals singly before pairing.
- **Pauli exclusion:** max 2 electrons per orbital, opposite spins.
- Example: \(\text{Na}\) (11 e⁻): \(1s^2 2s^2 2p^6 3s^1\).

### The periodic table
- **Groups:** columns — elements with the same outer electron configuration.
- **Periods:** rows — the number of the period = highest energy level.
- **Group 1 (alkali metals):** 1 outer electron, very reactive.
- **Group 2 (alkaline earth):** 2 outer electrons.
- **Group 7 (halogens):** 7 outer electrons, reactive non-metals.
- **Group 0 (noble gases):** full outer shell, unreactive.

### Trends across a period
- **Atomic radius:** decreases across (more protons pull electrons in).
- **Ionisation energy:** increases across (harder to remove an electron).
- **Electronegativity:** increases across (stronger attraction for bonding electrons).
- **Down a group:** radius increases, ionisation energy decreases, electronegativity decreases.

### Ionisation energy
- The energy to remove one mole of electrons from one mole of gaseous atoms.
- Successive ionisation energies increase; a big jump shows a new shell.

## Common mistakes & exam traps

- Confusing atomic number and mass number.
- Writing electron configurations in the wrong order (4s before 3d).
- Forgetting that isotopes have the same chemical properties.
- Getting the direction of trends wrong.

## Exam technique

1. Learn the order of orbital filling.
2. For trends, explain WHY (nuclear charge, shielding, distance).
3. Use the periodic table to predict configurations.
4. For ionisation energy, link big jumps to shell changes.

## Memory hooks

- **Filling order:** "1s 2s 2p 3s 3p 4s 3d."
- **Across a period:** "Radius down, ionisation up, electronegativity up."

## Quick practice

1. Write the electron configuration of sodium. **[1s² 2s² 2p⁶ 3s¹]**
2. What are isotopes? **[Same protons, different neutrons]**
3. Does atomic radius increase or decrease across a period? **[Decrease]**
4. Which group is unreactive? **[Group 0]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('3909fdc1-0f07-532a-2243-e3c30798bfd2'::uuid, 'cheat-advanced-chemistry-chemical-bonding', 'Chemistry', 'Chemical Bonding Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Chemical Bonding Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Bonding explains why substances have the properties they do. Ionic, covalent and metallic bonding, plus intermolecular forces, are tested every year. You must be able to describe bonding and link it to properties like melting point and conductivity.

## Core concepts

### Ionic bonding
- Transfer of electrons between a metal and a non-metal.
- Oppositely charged ions attract (electrostatic attraction).
- Example: NaCl — Na loses 1 e⁻, Cl gains 1 e⁻.
- **Properties:** high melting points, conduct when molten or dissolved, brittle, hard.

### Covalent bonding
- Sharing of electron pairs between non-metals.
- **Single bond:** one shared pair. **Double:** two pairs. **Triple:** three pairs.
- **Dative (coordinate) bond:** both electrons come from one atom.
- **Properties:** low melting points, poor conductors, often gases or liquids.

### Metallic bonding
- A lattice of positive ions in a "sea" of delocalised electrons.
- **Properties:** high melting points, conduct electricity and heat, malleable and ductile.

### Shapes of molecules
- **VSEPR theory:** electron pairs repel to maximise distance.
- 2 bonding pairs → linear (180°).
- 3 bonding pairs → trigonal planar (120°).
- 4 bonding pairs → tetrahedral (109.5°).
- 4 pairs, 1 lone → pyramidal. 4 pairs, 2 lone → bent.

### Electronegativity and polarity
- **Electronegativity:** the ability of an atom to attract bonding electrons.
- Unequal sharing → polar bonds (H–Cl).
- Symmetrical molecules can be non-polar overall (CO₂).

### Intermolecular forces
- **Van der Waals forces:** weak, between all molecules — increase with size.
- **Hydrogen bonding:** strong, between H and N/O/F — explains water''s high boiling point.

## Common mistakes & exam traps

- Confusing ionic (transfer) and covalent (share).
- Forgetting that ionic compounds only conduct when molten or dissolved.
- Getting the shape wrong by forgetting lone pairs.
- Confusing intramolecular bonds with intermolecular forces.

## Exam technique

1. Identify the type of elements (metal/non-metal) to choose the bonding.
2. Link bonding to properties explicitly.
3. For shapes, count bonding and lone pairs.
4. Explain hydrogen bonding with a diagram.

## Memory hooks

- **Bonding:** "Ionic transfers, covalent shares, metallic swims."
- **Shapes:** "2 linear, 3 trigonal, 4 tetrahedral."

## Quick practice

1. What type of bonding is in NaCl? **[Ionic]**
2. Why do ionic compounds conduct when molten? **[Ions are free to move]**
3. What shape is CH₄? **[Tetrahedral]**
4. Which intermolecular force explains water''s high boiling point? **[Hydrogen bonding]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('17815fc3-d63f-ae48-7c12-b45d38c7e937'::uuid, 'cheat-advanced-chemistry-energetics-and-kinetics', 'Chemistry', 'Energetics & Kinetics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Energetics & Kinetics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Energetics (enthalpy changes) and kinetics (rates of reaction) are core physical chemistry topics. You must calculate enthalpy changes using Hess''s law and bond energies, and explain how factors affect reaction rates using collision theory.

## Core concepts

### Enthalpy changes
- \(\Delta H\): heat change at constant pressure.
- **Exothermic:** \(\Delta H < 0\) — heat released (combustion, neutralisation).
- **Endothermic:** \(\Delta H > 0\) — heat absorbed (thermal decomposition).

### Standard enthalpy changes
- **Formation:** forming 1 mole of a compound from its elements.
- **Combustion:** burning 1 mole in oxygen.
- **Neutralisation:** acid + base → 1 mole of water.

### Hess''s law
- The enthalpy change of a reaction is independent of the route taken.
- Use enthalpy cycles to find unknown \(\Delta H\).

### Bond energies
$$\Delta H = \Sigma(\text{bonds broken}) - \Sigma(\text{bonds formed})$$
- Breaking bonds absorbs energy; forming bonds releases energy.

### Rates of reaction
- **Collision theory:** reactions happen when particles collide with enough energy and the right orientation.
- **Activation energy:** the minimum energy for a reaction.

### Factors affecting rate
- **Concentration/pressure:** more particles → more collisions → faster.
- **Temperature:** more energy → more successful collisions → faster.
- **Surface area:** more exposed particles → faster.
- **Catalyst:** lowers activation energy → faster (not used up).

### Catalysts
- Provide an alternative pathway with lower activation energy.
- Homogeneous: same phase as reactants. Heterogeneous: different phase.

## Common mistakes & exam traps

- Getting the sign of \(\Delta H\) wrong.
- Forgetting to multiply bond energies by the number of bonds.
- Confusing exothermic and endothermic.
- Thinking a catalyst is consumed.
- Forgetting the orientation requirement in collision theory.

## Exam technique

1. Draw the enthalpy cycle for Hess''s law questions.
2. For bond energies, list bonds broken and formed separately.
3. Explain rate changes with collision theory (energy AND frequency of collisions).
4. State the activation energy effect of catalysts.

## Memory hooks

- **Bond energy:** "Broken minus formed."
- **Exothermic:** "ΔH negative, heat out."

## Quick practice

1. Is combustion exothermic or endothermic? **[Exothermic]**
2. State Hess''s law. **[ΔH is independent of the route]**
3. How does a catalyst speed up a reaction? **[Lowers activation energy]**
4. Why does higher temperature speed up reactions? **[More successful collisions]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('b645ca90-58d1-c92d-ec1b-146f851bf2fe'::uuid, 'cheat-advanced-chemistry-organic-chemistry', 'Chemistry', 'Organic Chemistry Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Organic Chemistry Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Organic chemistry is a large section of the Advanced Chemistry paper. You must know the functional groups, homologous series, isomerism, and the reactions of alkanes, alkenes, alcohols and carboxylic acids. Naming and reaction conditions are frequently tested.

## Core concepts

### Homologous series
| Series | Functional group | Example |
|---|---|---|
| Alkanes | C–C single bonds | methane CH₄ |
| Alkenes | C=C double bond | ethene C₂H₄ |
| Alcohols | –OH | ethanol C₂H₅OH |
| Carboxylic acids | –COOH | ethanoic acid |
| Haloalkanes | –X (Cl, Br) | chloroethane |
| Aldehydes | –CHO | ethanal |
| Ketones | C=O (in chain) | propanone |

### Naming
- Find the longest carbon chain → root (meth, eth, prop, but...).
- Number the chain to give the substituents the lowest numbers.
- Use prefixes (chloro-, methyl-) and suffixes (-ol, -oic acid, -ene).

### Isomerism
- **Structural:** different arrangement of atoms — chain, position, functional group.
- **Geometric (cis/trans):** restricted rotation around C=C.
- **Optical:** mirror images (chiral centres).

### Reactions of alkanes
- Combustion: \(CH_4 + 2O_2 \to CO_2 + 2H_2O\).
- Substitution with halogens (UV light): \(CH_4 + Cl_2 \to CH_3Cl + HCl\).

### Reactions of alkenes
- **Addition reactions** (the C=C opens):
  - Hydrogenation: + H₂ (Ni catalyst).
  - Halogenation: + Br₂ (decolourises bromine water — test for unsaturation).
  - Hydration: + H₂O (steam, H₃PO₄) → alcohol.
  - Addition of HX → haloalkane.
- **Polymerisation:** ethene → poly(ethene).

### Reactions of alcohols
- Combustion.
- Oxidation (K₂Cr₂O₇/H⁺): primary → aldehyde → carboxylic acid; secondary → ketone.
- Dehydration (conc. H₂SO₄): alcohol → alkene.

### Carboxylic acids
- Weak acids: react with bases, metals, carbonates.
- **Esterification:** acid + alcohol → ester + water (conc. H₂SO₄ catalyst).

## Common mistakes & exam traps

- Naming the chain in the wrong direction.
- Forgetting the conditions (UV light, catalyst, heat).
- Confusing addition (alkenes) and substitution (alkanes).
- Not knowing the bromine water test.
- Forgetting the functional group in the name.

## Exam technique

1. Learn the functional groups and their suffixes.
2. For reactions, state the reagent AND the conditions.
3. Name compounds systematically (longest chain, lowest numbers).
4. Use displayed structures to check your answers.

## Memory hooks

- **Alkanes substitute, alkenes add.**
- **Bromine water:** "Decolourises = C=C present."

## Quick practice

1. What is the functional group of an alcohol? **[−OH]**
2. How do you test for a C=C double bond? **[Bromine water decolourises]**
3. Name CH₃CH₂OH. **[Ethanol]**
4. What type of reaction is CH₄ + Cl₂ → CH₃Cl + HCl? **[Substitution]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('79b31143-8585-7aee-6c16-b445c24ecf72'::uuid, 'cheat-advanced-biology-cell-biology', 'Biology', 'Cell Biology Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Cell Biology Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Cell biology is the foundation of the Advanced Biology paper. Cell structure, organelles, transport across membranes, and cell division are tested every year. You must be able to describe structures and link them to their functions.

## Core concepts

### Prokaryotic vs eukaryotic
- **Prokaryotic:** no nucleus, no membrane-bound organelles, small ribosomes — bacteria.
- **Eukaryotic:** nucleus present, membrane-bound organelles — plants, animals, fungi.

### Organelles and functions
| Organelle | Function |
|---|---|
| Nucleus | Contains DNA, controls the cell |
| Mitochondria | Aerobic respiration — ATP production |
| Ribosomes | Protein synthesis |
| Rough ER | Protein transport (with ribosomes) |
| Golgi apparatus | Modifies and packages proteins |
| Lysosomes | Digestion, breakdown of waste |
| Chloroplasts | Photosynthesis (plants) |
| Cell wall | Support (plants, fungi, bacteria) |
| Vacuole | Storage, support (plants) |

### Cell membranes
- **Fluid mosaic model:** phospholipid bilayer with proteins.
- **Selectively permeable.**
- **Transport:**
  - **Diffusion:** passive, down the concentration gradient.
  - **Osmosis:** diffusion of water through a partially permeable membrane.
  - **Facilitated diffusion:** via carrier/channel proteins, passive.
  - **Active transport:** against the gradient, needs ATP and carrier proteins.

### Cell division
- **Mitosis:** 2 identical daughter cells — growth and repair.
- **Meiosis:** 4 genetically different cells, halved chromosomes — gametes.
- **Stages of mitosis:** prophase, metaphase, anaphase, telophase.

### Enzymes
- Biological catalysts — proteins.
- **Lock and key / induced fit:** substrate fits the active site.
- Affected by temperature and pH — denaturation changes the active site.
- **Optimum temperature:** ~37 °C in humans.

## Common mistakes & exam traps

- Confusing diffusion (passive) with active transport (needs ATP).
- Confusing mitosis and meiosis.
- Forgetting that osmosis is a special case of diffusion.
- Not linking structure to function.
- Confusing prokaryotic and eukaryotic features.

## Exam technique

1. For organelles, always state structure AND function.
2. For transport, state the direction and whether energy is needed.
3. Compare mitosis and meiosis in a table.
4. For enzymes, mention the active site and denaturation.

## Memory hooks

- **Mitosis:** "Same cells, growth and repair."
- **Meiosis:** "Four different, gametes, halved."

## Quick practice

1. Which organelle carries out respiration? **[Mitochondria]**
2. What is osmosis? **[Diffusion of water through a partially permeable membrane]**
3. How many daughter cells does meiosis produce? **[4]**
4. What happens to an enzyme above its optimum temperature? **[It denatures]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('77ea60e1-f619-0ad0-2b26-3a27f6ce99ee'::uuid, 'cheat-advanced-biology-genetics', 'Biology', 'Genetics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Genetics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Genetics covers DNA, genes, inheritance and variation. You must understand the structure of DNA, protein synthesis, and how to work genetic crosses. The monohybrid cross is the most reliable calculation on the paper.

## Core concepts

### DNA structure
- **Double helix** of two strands.
- Made of nucleotides: phosphate + sugar (deoxyribose) + base.
- **Base pairing:** A–T, C–G (complementary).
- **Gene:** a section of DNA coding for a protein.
- **Chromosome:** DNA wound around proteins.

### Protein synthesis
1. **Transcription:** DNA → mRNA (in the nucleus).
2. **Translation:** mRNA → protein (at ribosomes).
- **Codon:** 3 bases coding for one amino acid.

### Key terms
- **Allele:** a version of a gene.
- **Genotype:** the genetic makeup (e.g. Tt).
- **Phenotype:** the observable trait (e.g. tall).
- **Dominant:** expressed if present (T). **Recessive:** only expressed when homozygous (tt).
- **Homozygous:** two identical alleles (TT or tt). **Heterozygous:** two different (Tt).

### Monohybrid cross
Cross two heterozygotes (Tt × Tt):
| | T | t |
|---|---|---|
| T | TT | Tt |
| t | Tt | tt |

- Phenotype ratio: **3 : 1** (dominant : recessive).
- Genotype ratio: **1 : 2 : 1** (TT : Tt : tt).

### Sex determination
- Humans: XX = female, XY = male.
- The father''s sperm determines the sex.

### Variation
- **Genetic:** from mutations and meiosis (crossing over, independent assortment).
- **Environmental:** from conditions (diet, climate).
- **Mutation:** a change in DNA — can be harmful, beneficial or neutral.

## Common mistakes & exam traps

- Forgetting the base pairing rules (A–T, C–G).
- Confusing genotype and phenotype.
- Getting the 3:1 ratio wrong.
- Forgetting to state the phenotype ratio separately from the genotype ratio.
- Confusing transcription and translation.

## Exam technique

1. Draw the Punnett square and label the gametes.
2. State the genotype ratio AND the phenotype ratio.
3. For "explain" questions, use the terms allele, dominant, recessive.
4. Link DNA structure to protein synthesis.

## Memory hooks

- **Base pairing:** "A with T, C with G."
- **Cross Tt × Tt:** "3:1 phenotype, 1:2:1 genotype."

## Quick practice

1. What pairs with adenine in DNA? **[Thymine]**
2. Cross Tt × Tt. State the phenotype ratio. **[3:1]**
3. What is a genotype? **[The genetic makeup]**
4. Where does transcription happen? **[In the nucleus]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('87e91bf7-7ade-857b-7356-897399004419'::uuid, 'cheat-advanced-biology-physiology', 'Biology', 'Physiology Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Physiology Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Physiology covers how the body''s systems work — circulation, respiration, digestion, excretion and coordination. You must understand the structures and processes of each system and how they are controlled. This is a large, high-yield section.

## Core concepts

### The circulatory system
- **Heart:** four chambers — right/left atria and ventricles.
- **Double circulation:** pulmonary (heart → lungs) and systemic (heart → body).
- **Blood vessels:** arteries (away, high pressure), veins (to heart, valves), capillaries (exchange).
- **Blood:** plasma, red cells (oxygen), white cells (immunity), platelets (clotting).

### Respiration
- **Aerobic:** \(C_6H_{12}O_6 + 6O_2 \to 6CO_2 + 6H_2O + \text{energy}\).
- **Anaerobic:** no oxygen — in muscles produces lactic acid; in yeast produces ethanol + CO₂.
- **Gas exchange:** in the alveoli — thin walls, large surface area, good blood supply.
- **Breathing:** diaphragm and intercostal muscles.

### Digestion
- **Enzymes:**
  - Amylase: starch → maltose (saliva, pancreas).
  - Protease: protein → amino acids (stomach, pancreas).
  - Lipase: fats → fatty acids + glycerol (pancreas).
- **Absorption:** in the small intestine (villi increase surface area).
- **Water absorption:** in the large intestine.

### Excretion
- **Kidneys:** filter blood, reabsorb useful substances, produce urine.
- **Nephron:** the functional unit.
- **Liver:** deamination of amino acids → urea.

### Coordination
- **Nervous system:** stimulus → receptor → coordinator → effector → response.
- **Reflex arc:** fast, automatic, spinal cord.
- **Endocrine system:** hormones — insulin (lowers blood glucose), adrenaline (fight or flight).
- **Homeostasis:** maintaining a constant internal environment.

## Common mistakes & exam traps

- Confusing arteries and veins.
- Forgetting the products of anaerobic respiration.
- Mixing up the digestive enzymes and their substrates.
- Not knowing the reflex arc order.
- Confusing nervous and hormonal control.

## Exam technique

1. Learn the equations for aerobic and anaerobic respiration.
2. For each system, know structure → function → control.
3. Use the correct order for the reflex arc.
4. Link homeostasis to specific examples (blood glucose, temperature).

## Memory hooks

- **Reflex arc:** "Stimulus, receptor, coordinator, effector, response."
- **Enzymes:** "Amylase starch, protease protein, lipase fat."

## Quick practice

1. Write the equation for aerobic respiration. **[C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + energy]**
2. What does amylase digest? **[Starch]**
3. Where does most absorption occur? **[Small intestine]**
4. What does insulin do? **[Lowers blood glucose]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('8dd9055c-56f7-e5de-ab73-b5f9b69044e4'::uuid, 'cheat-advanced-biology-ecology', 'Biology', 'Ecology Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Ecology Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Ecology covers ecosystems, energy flow, nutrient cycles and human impact on the environment. You must understand food chains, pyramids, the carbon and nitrogen cycles, and issues like pollution and conservation. Cameroon examples (rainforest, savanna) score extra marks.

## Core concepts

### Ecosystems
- **Ecosystem:** all the organisms and their environment in an area.
- **Population:** all members of one species in an area.
- **Community:** all the populations in an area.
- **Habitat:** where an organism lives.
- **Niche:** an organism''s role and position.

### Feeding relationships
- **Producer:** makes food by photosynthesis (plants).
- **Consumer:** eats other organisms (herbivore, carnivore, omnivore).
- **Decomposer:** breaks down dead matter (bacteria, fungi).
- **Food chain:** producer → primary consumer → secondary consumer → tertiary consumer.
- **Food web:** interconnected food chains.

### Pyramids
- **Pyramid of numbers:** number of organisms at each level.
- **Pyramid of biomass:** mass at each level.
- **Pyramid of energy:** energy at each level — always a pyramid (energy is lost).
- Only about **10%** of energy passes to the next level (rest lost as heat, waste).

### The carbon cycle
- Photosynthesis removes CO₂; respiration and combustion return it.
- Fossil fuels store carbon; burning releases it.

### The nitrogen cycle
- **Nitrogen fixation:** bacteria convert N₂ to nitrates.
- **Decomposition:** decomposers release ammonia.
- **Nitrification:** bacteria convert ammonia to nitrates.
- **Denitrification:** bacteria convert nitrates back to N₂.

### Human impact
- **Pollution:** air (CO₂, SO₂), water (sewage, fertilisers → eutrophication), land.
- **Deforestation:** habitat loss, soil erosion, climate change.
- **Conservation:** protecting habitats, sustainable use, reforestation.

## Common mistakes & exam traps

- Confusing producer, consumer and decomposer.
- Getting the direction of energy flow wrong.
- Forgetting that energy is lost at each level.
- Confusing the processes in the nitrogen cycle.
- Not knowing the causes of eutrophication.

## Exam technique

1. Draw the food chain/web with arrows pointing in the direction of energy flow.
2. For cycles, name the process AND the organism involved.
3. For human impact, give causes, effects and solutions.
4. Use Cameroon examples (rainforest, savanna).

## Memory hooks

- **Energy flow:** "Arrows point to the eater."
- **Nitrogen:** "Fix, decompose, nitrify, denitrify."

## Quick practice

1. What is a producer? **[An organism that makes food by photosynthesis]**
2. What percentage of energy passes to the next level? **[About 10%]**
3. Name two processes in the nitrogen cycle. **[Nitrogen fixation, nitrification]**
4. What causes eutrophication? **[Fertilisers/sewage in water]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e06772e2-163e-cfdb-193f-a40d0536311c'::uuid, 'cheat-advanced-geology-minerals-and-rocks', 'Geology', 'Minerals & Rocks Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Minerals & Rocks Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Minerals and rocks are the foundation of geology. You must identify common minerals, classify rocks into the three types, and explain the rock cycle. Identification tests and rock formation processes are frequently tested.

## Core concepts

### What is a mineral?
- A naturally occurring, inorganic solid with a definite chemical composition and crystal structure.
- **Properties:** hardness (Mohs scale), cleavage, lustre, colour, streak, density.

### Common minerals
- **Quartz:** SiO₂, hardness 7, glassy.
- **Feldspar:** most common group in the crust.
- **Calcite:** CaCO₃, reacts with dilute acid (fizzes).
- **Mica:** sheets, cleaves into thin flakes.
- **Hematite:** iron ore, reddish streak.
- **Halite:** rock salt, cubic crystals.

### The three rock types
1. **Igneous:** formed from cooled magma/lava.
   - **Intrusive:** slow cooling, large crystals — granite, gabbro.
   - **Extrusive:** fast cooling, small crystals — basalt, rhyolite.
2. **Sedimentary:** formed from deposited and compacted sediments.
   - Clastic: sandstone, shale, conglomerate.
   - Chemical/organic: limestone, chalk, coal.
   - Features: bedding, fossils, ripple marks.
3. **Metamorphic:** changed by heat and pressure.
   - Limestone → marble. Shale → slate. Granite → gneiss.
   - Features: foliation, banding.

### The rock cycle
- Igneous → weathering → sediment → compaction → sedimentary → heat/pressure → metamorphic → melting → magma → igneous.
- Any rock can be weathered to sediment or melted.

## Common mistakes & exam traps

- Confusing intrusive and extrusive igneous rocks.
- Confusing the parent rock with its metamorphic product.
- Forgetting that fossils are only in sedimentary rocks.
- Not knowing the acid test for calcite.

## Exam technique

1. Classify rocks by origin first (cooling, deposition, change).
2. Link crystal size to cooling rate.
3. For metamorphic rocks, state the parent rock.
4. Use identification tests (acid, hardness) when describing minerals.

## Memory hooks

- **Igneous:** "Intrusive slow big, extrusive fast small."
- **Metamorphic pairs:** "Limestone marble, shale slate, granite gneiss."

## Quick practice

1. Which mineral fizzes with dilute acid? **[Calcite]**
2. Is granite intrusive or extrusive? **[Intrusive]**
3. What does shale become under metamorphism? **[Slate]**
4. In which rock type are fossils found? **[Sedimentary]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('2c03d38b-a476-a412-f594-390f7f384ccc'::uuid, 'cheat-advanced-geology-plate-tectonics', 'Geology', 'Plate Tectonics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Plate Tectonics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Plate tectonics explains earthquakes, volcanoes, mountain building and the distribution of continents. It is a core topic in geology. You must understand the types of plate boundaries and the features associated with each.

## Core concepts

### The theory
- The lithosphere is broken into plates that move on the asthenosphere.
- **Evidence:** continental fit, fossils across oceans, matching rock sequences, magnetic striping, earthquake distribution.

### Types of plate boundaries
1. **Divergent (constructive):** plates move apart.
   - Mid-ocean ridges, new crust, shallow earthquakes, volcanoes.
   - Example: the Mid-Atlantic Ridge.
2. **Convergent (destructive):** plates collide.
   - **Oceanic–continental:** subduction, deep trenches, volcanic mountain chains (Andes).
   - **Oceanic–oceanic:** island arcs (Japan).
   - **Continental–continental:** collision, mountain building (Himalayas).
3. **Transform (conservative):** plates slide past.
   - Earthquakes, no volcanoes (San Andreas Fault).

### Earthquakes
- Caused by sudden release of stress along faults.
- **Focus:** the point of rupture underground.
- **Epicentre:** the point on the surface above the focus.
- Measured by the **Richter scale** (magnitude) and Mercalli scale (intensity).

### Volcanoes
- Form at divergent and convergent boundaries and hot spots.
- **Composite (strato) volcanoes:** explosive, steep — from subduction.
- **Shield volcanoes:** gentle, runny lava — from hot spots/divergence.
- **Hot spots:** stationary mantle plumes (Hawaii, and possibly Mount Cameroon).

### Cameroon geology
- **Mount Cameroon:** an active volcano on the Cameroon Volcanic Line.
- The line runs from the Atlantic to the Adamawa Plateau.

## Common mistakes & exam traps

- Confusing divergent and convergent boundaries.
- Forgetting which features form at each boundary.
- Confusing focus and epicentre.
- Not knowing the difference between composite and shield volcanoes.

## Exam technique

1. Draw the boundary and label the features.
2. Match features to boundary types systematically.
3. For earthquakes, define focus and epicentre.
4. Use Cameroon examples (Mount Cameroon).

## Memory hooks

- **Divergent:** "Plates apart, ridges and new crust."
- **Convergent:** "Plates together, mountains, trenches, volcanoes."

## Quick practice

1. What forms at a divergent boundary? **[Mid-ocean ridges, new crust]**
2. What is the difference between focus and epicentre? **[Focus is underground; epicentre is on the surface]**
3. Which boundary produces the Himalayas? **[Continental–continental convergence]**
4. What type of volcano is Mount Cameroon? **[An active volcano on the Cameroon Volcanic Line]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('adaea243-a717-6fbf-0794-94f52eb48b6b'::uuid, 'cheat-advanced-geology-fossils-and-geological-time', 'Geology', 'Fossils & Geological Time Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fossils & Geological Time Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Fossils and geological time let geologists date rocks and reconstruct Earth''s history. You must understand how fossils form, the principles of relative dating, and the geological time scale. Index fossils and the principles of superposition are favourite questions.

## Core concepts

### How fossils form
- **Permineralisation:** minerals fill the pores of buried remains.
- **Moulds and casts:** an impression, then a filled copy.
- **Carbonisation:** organic matter leaves a carbon film.
- **Preservation in amber, ice or tar:** complete preservation.
- **Trace fossils:** footprints, burrows, coprolites.

### Conditions for fossilisation
- Rapid burial, hard parts (shells, bones), low oxygen, stable conditions.

### Principles of relative dating
1. **Superposition:** in undisturbed layers, the oldest is at the bottom.
2. **Original horizontality:** sediments are laid down flat.
3. **Cross-cutting relationships:** a fault or intrusion is younger than the rocks it cuts.
4. **Faunal succession:** fossils succeed each other in a known order.

### Index fossils
- Fossils of organisms that lived for a short time and were widespread.
- Used to correlate rock layers across regions.
- Examples: ammonites, trilobites.

### The geological time scale
- **Eons → Eras → Periods → Epochs.**
- **Phanerozoic eon** (visible life) divided into:
  - **Palaeozoic:** trilobites, first fish, first land plants, first reptiles.
  - **Mesozoic:** dinosaurs, ammonites, first mammals and birds; ends with the K-Pg extinction.
  - **Cenozoic:** mammals dominate, humans appear.

### Absolute dating
- **Radiometric dating:** uses radioactive decay (e.g. carbon-14 for recent, uranium-lead for old).
- Half-life: the time for half the parent atoms to decay.

## Common mistakes & exam traps

- Confusing relative and absolute dating.
- Forgetting the principle of superposition.
- Not knowing which era the dinosaurs belong to.
- Confusing index fossils with ordinary fossils.

## Exam technique

1. State the principle before applying it.
2. For dating, distinguish relative (order) from absolute (numbers).
3. Learn the eras and their key life forms.
4. Explain why index fossils are useful.

## Memory hooks

- **Superposition:** "Oldest at the bottom."
- **Eras:** "Palaeozoic fish, Mesozoic dinosaurs, Cenozoic mammals."

## Quick practice

1. State the principle of superposition. **[In undisturbed layers, the oldest is at the bottom]**
2. What is an index fossil? **[A short-lived, widespread fossil used to date rocks]**
3. In which era did dinosaurs live? **[Mesozoic]**
4. What is radiometric dating? **[Dating using radioactive decay]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('4f91040d-d8ac-3c55-7056-e849db8f9179'::uuid, 'cheat-advanced-computer-science-data-structures', 'Computer Science', 'Data Structures Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Data Structures Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Data structures organise data so programs can store and retrieve it efficiently. Arrays, stacks, queues, linked lists and trees are tested every year. You must know the operations, the advantages, and when to use each structure.

## Core concepts

### Arrays
- A fixed-size collection of elements of the same type, accessed by index.
- **Advantages:** fast access by index, simple.
- **Disadvantages:** fixed size, slow insertion/deletion in the middle.

### Stacks
- **LIFO** (Last In, First Out).
- Operations: **push** (add), **pop** (remove), **peek** (view top).
- Uses: undo operations, function calls, expression evaluation, browser back button.

### Queues
- **FIFO** (First In, First Out).
- Operations: **enqueue** (add to back), **dequeue** (remove from front).
- Uses: print queues, task scheduling, waiting lines.

### Linked lists
- Nodes connected by pointers; each node holds data and a reference to the next.
- **Advantages:** dynamic size, easy insertion/deletion.
- **Disadvantages:** slower access (must traverse), extra memory for pointers.

### Binary trees
- Each node has at most two children.
- **Binary search tree (BST):** left child < parent < right child.
- **Traversals:**
  - **Preorder:** root, left, right.
  - **Inorder:** left, root, right (gives sorted order in a BST).
  - **Postorder:** left, right, root.
- BST search is \(O(\log n)\) if balanced.

### Hash tables
- Store data using a hash function → index.
- Fast lookup \(O(1)\) on average.
- **Collisions:** when two keys hash to the same index — resolved by chaining or open addressing.

## Common mistakes & exam traps

- Confusing stack (LIFO) and queue (FIFO).
- Getting the traversal orders wrong.
- Forgetting the BST ordering rule.
- Confusing array access (fast) with linked list access (slow).

## Exam technique

1. State the order (LIFO/FIFO) before describing operations.
2. Give a real-world use for each structure.
3. For traversals, trace the tree carefully.
4. Compare structures by access speed and insertion/deletion.

## Memory hooks

- **Stack vs queue:** "Stack LIFO, queue FIFO."
- **BST:** "Left small, right big."

## Quick practice

1. What does LIFO mean? **[Last In, First Out]**
2. Name two uses of a stack. **[Undo, function calls]**
3. What is the inorder traversal of a BST? **[Left, root, right — sorted order]**
4. Give one advantage of a linked list. **[Dynamic size]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('c61e293b-b92c-4007-fe38-ba1d8fa07b29'::uuid, 'cheat-advanced-computer-science-algorithms', 'Computer Science', 'Algorithms Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Algorithms Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Algorithms are step-by-step methods for solving problems. Searching and sorting algorithms are tested every year, along with complexity analysis. You must know how each algorithm works, its complexity, and when to use it.

## Core concepts

### Linear search
- Check each element in turn.
- \(O(n)\) — works on unsorted data.

### Binary search
- Repeatedly halve a **sorted** list.
- \(O(\log n)\) — much faster, but requires sorted data.

### Bubble sort
- Repeatedly swap adjacent out-of-order elements.
- \(O(n^2)\) — simple but slow.

### Insertion sort
- Build the sorted list one element at a time.
- \(O(n^2)\) — good for small or nearly sorted lists.

### Merge sort
- Divide the list in half, sort each half, merge.
- \(O(n \log n)\) — fast and stable, but needs extra memory.

### Quick sort
- Pick a pivot, partition around it, recurse.
- \(O(n \log n)\) average, \(O(n^2)\) worst case.

### Big O notation
- Describes how time/memory grows with input size \(n\).
- \(O(1)\): constant. \(O(\log n)\): logarithmic. \(O(n)\): linear. \(O(n \log n)\). \(O(n^2)\): quadratic.

### Dijkstra''s algorithm
- Finds the shortest path in a weighted graph.
- Greedy: always expand the closest unvisited node.

## Common mistakes & exam traps

- Using binary search on unsorted data.
- Confusing the complexities of the sorts.
- Forgetting that merge sort needs extra memory.
- Not knowing the difference between best and worst case.

## Exam technique

1. State the complexity and the data requirement (e.g. sorted).
2. Trace the algorithm step by step for small inputs.
3. Compare algorithms by complexity and use case.
4. For Big O, focus on the dominant term.

## Memory hooks

- **Binary search:** "Halve a sorted list."
- **Complexities:** "Bubble O(n²), merge O(n log n), binary O(log n)."

## Quick practice

1. What is the complexity of binary search? **[O(log n)]**
2. Which sort has O(n log n) average? **[Merge sort or quick sort]**
3. Why can''t you binary search an unsorted list? **[It relies on halving a sorted list]**
4. What does Dijkstra''s algorithm find? **[The shortest path in a weighted graph]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('cd71ed4c-3eba-9e86-d8ce-183871ba58b5'::uuid, 'cheat-advanced-computer-science-object-oriented-programming', 'Computer Science', 'Object-Oriented Programming Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Object-Oriented Programming Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Object-oriented programming (OOP) is a major topic in Advanced Computer Science. You must understand classes, objects, encapsulation, inheritance and polymorphism, and be able to write and trace simple OOP code.

## Core concepts

### Classes and objects
- **Class:** a blueprint or template.
- **Object:** an instance of a class.
- **Attributes:** data stored in an object.
- **Methods:** functions that operate on an object.

### The four pillars of OOP
1. **Encapsulation:** bundling data and methods; hiding internal details (private attributes, public methods).
2. **Inheritance:** a class inherits attributes and methods from a parent class.
3. **Polymorphism:** the same method name behaves differently in different classes (overriding).
4. **Abstraction:** hiding complexity, showing only essential features.

### Constructors
- A special method that runs when an object is created.
- Initialises the attributes.

### Access modifiers
- **Public:** accessible anywhere.
- **Private:** accessible only within the class.
- **Protected:** accessible within the class and subclasses.

### Example (pseudocode)

    CLASS Animal
        PRIVATE name
        METHOD __init__(name)
            self.name = name
        METHOD speak()
            OUTPUT "Some sound"

    CLASS Dog EXTENDS Animal
        METHOD speak()
            OUTPUT "Woof"

### Relationships
- **Inheritance ("is-a"):** a Dog is an Animal.
- **Composition ("has-a"):** a Car has an Engine.

## Common mistakes & exam traps

- Confusing class and object.
- Forgetting that inheritance is "is-a" and composition is "has-a".
- Not knowing the difference between overriding and overloading.
- Confusing public and private access.

## Exam technique

1. Define class, object, attribute and method precisely.
2. Explain each pillar with an example.
3. For code questions, trace the constructor and method calls.
4. Use "is-a" and "has-a" to describe relationships.

## Memory hooks

- **Pillars:** "Encapsulation, Inheritance, Polymorphism, Abstraction."
- **Class vs object:** "Blueprint vs building."

## Quick practice

1. What is the difference between a class and an object? **[Class is a blueprint; object is an instance]**
2. What is inheritance? **[A class inherits from a parent class]**
3. What does encapsulation mean? **[Hiding internal details]**
4. Is "a Car has an Engine" inheritance or composition? **[Composition]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('9bae2167-9c04-5d45-68b8-c3d07dd66830'::uuid, 'cheat-advanced-food-science-nutrients-and-their-functions', 'Food Science and Nutrition', 'Nutrients & Their Functions Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Nutrients & Their Functions Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Nutrients are the foundation of Food Science and Nutrition. You must know the macronutrients and micronutrients, their functions, sources and deficiency diseases. This knowledge underpins every other topic — meal planning, digestion and food processing.

## Core concepts

### Macronutrients
| Nutrient | Function | Sources | Deficiency |
|---|---|---|---|
| Carbohydrates | Main energy source | Rice, cassava, yams, bread | Weakness, weight loss |
| Proteins | Growth and repair | Meat, fish, beans, eggs | Kwashiorkor, stunting |
| Fats | Energy store, insulation | Oil, butter, nuts | Poor growth, low energy |

### Micronutrients
| Nutrient | Function | Sources | Deficiency |
|---|---|---|---|
| Vitamin A | Vision, immunity | Carrots, palm oil, liver | Night blindness |
| Vitamin C | Wound healing, immunity | Citrus, tomatoes | Scurvy |
| Vitamin D | Calcium absorption, bones | Sunlight, fish oil | Rickets |
| Iron | Haemoglobin, oxygen transport | Meat, spinach, beans | Anaemia |
| Calcium | Bones and teeth | Milk, sardines | Rickets, weak bones |
| Iodine | Thyroid function | Iodised salt, seafood | Goitre |

### Water and fibre
- **Water:** transport, temperature control, digestion.
- **Fibre:** prevents constipation, aids digestion — whole grains, vegetables, fruits.

### Energy balance
- Energy in (food) vs energy out (activity).
- **BMR:** the energy needed at rest.
- Excess energy → stored as fat → obesity.

### Digestion of nutrients
- Carbohydrates → glucose (amylase).
- Proteins → amino acids (protease).
- Fats → fatty acids + glycerol (lipase, bile).

## Common mistakes & exam traps

- Confusing the functions of vitamins.
- Not knowing the deficiency diseases.
- Confusing macronutrients and micronutrients.
- Forgetting that fat-soluble vitamins (A, D, E, K) are stored in the body.

## Exam technique

1. For each nutrient: function, sources, deficiency — all three.
2. Use Cameroon food examples (cassava, palm oil, beans).
3. Link nutrients to their digestion products.
4. For "explain" questions, give the reason behind the function.

## Memory hooks

- **Vitamins:** "A for eyes, C for scurvy, D for bones."
- **Macros:** "Carbs energy, protein repair, fat store."

## Quick practice

1. What is the function of protein? **[Growth and repair]**
2. Which vitamin prevents night blindness? **[Vitamin A]**
3. What causes anaemia? **[Iron deficiency]**
4. Name two sources of calcium. **[Milk, sardines]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('2af6d2d0-4980-a722-33a3-b824f92182f9'::uuid, 'cheat-advanced-food-science-food-processing-and-preservation', 'Food Science and Nutrition', 'Food Processing & Preservation Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Food Processing & Preservation Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Food processing and preservation keep food safe and extend its shelf life. You must understand the principles of preservation, the methods used, and the reasons why food spoils. This is a core topic with direct practical applications.

## Core concepts

### Why food spoils
- **Microorganisms:** bacteria, moulds, yeasts.
- **Enzymes:** natural reactions continue in food.
- **Conditions for growth:** warmth, moisture, oxygen, food, time.
- Spoilage causes food poisoning and waste.

### Principles of preservation
Remove one or more of the conditions microorganisms need:
1. **Heat** — kills microorganisms (pasteurisation, sterilisation).
2. **Cold** — slows growth (refrigeration, freezing).
3. **Drying** — removes moisture.
4. **Chemicals** — salt, sugar, vinegar, preservatives.
5. **Oxygen removal** — vacuum packing, canning.
6. **Irradiation** — kills microorganisms with radiation.

### Preservation methods
- **Pasteurisation:** heating to ~72 °C for 15 s (milk) — kills pathogens, keeps taste.
- **Sterilisation:** higher heat — kills everything (canned food).
- **Refrigeration:** 0–5 °C — slows bacteria.
- **Freezing:** −18 °C — stops growth.
- **Drying:** removes water — dried fish, fruits.
- **Salting:** draws out water — smoked/salted fish.
- **Sugaring:** jam, preserves.
- **Pickling:** vinegar/acidity.
- **Canning:** heat + sealed container.
- **Smoking:** drying + chemicals + flavour.

### Food additives
- **Preservatives:** extend shelf life.
- **Colourings and flavourings:** improve appearance and taste.
- **Emulsifiers:** keep mixtures stable.
- **Antioxidants:** prevent rancidity.

## Common mistakes & exam traps

- Confusing pasteurisation and sterilisation.
- Forgetting that freezing stops (not kills) bacteria.
- Not linking the method to the principle.
- Confusing preservation with processing.

## Exam technique

1. State the principle (kill, slow, remove, seal) for each method.
2. Give a food example for each method.
3. Explain why food spoils before describing preservation.
4. Distinguish pasteurisation (kills pathogens) from sterilisation (kills everything).

## Memory hooks

- **Spoilage conditions:** "Warmth, moisture, oxygen, food, time."
- **Methods:** "Heat, cold, dry, salt, sugar, seal."

## Quick practice

1. Name three conditions microorganisms need to grow. **[Warmth, moisture, oxygen]**
2. What is the difference between pasteurisation and sterilisation? **[Pasteurisation kills pathogens; sterilisation kills everything]**
3. How does salting preserve food? **[It draws out moisture]**
4. Give two food additives and their purposes. **[Preservatives, colourings]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a2c4c958-d498-599f-4b9f-35ee910b0ed3'::uuid, 'cheat-advanced-food-science-meal-planning-and-diet', 'Food Science and Nutrition', 'Meal Planning & Diet Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Meal Planning & Diet Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Meal planning applies nutrition knowledge to real life. You must understand balanced diets, the factors affecting food choice, and how to plan meals for different groups. Questions often ask you to plan a day''s meals or evaluate a diet.

## Core concepts

### A balanced diet
- Contains all nutrients in the right proportions: carbohydrates, proteins, fats, vitamins, minerals, water, fibre.
- Provides enough energy for the individual.

### Factors affecting food choice
- **Age:** children need more protein; elderly need fewer calories.
- **Activity level:** manual workers need more energy.
- **Health:** diabetics limit sugar; anaemia needs iron.
- **Religion and culture:** dietary rules (halal, fasting).
- **Income:** cost of food.
- **Availability:** local produce and seasons.
- **Personal preference:** taste, habit.

### Meal planning principles
- Include foods from all food groups.
- Balance energy intake with activity.
- Vary the meals to avoid boredom.
- Consider the budget and available equipment.
- Plan for the family''s needs (age, health, activity).

### Special dietary needs
- **Pregnancy:** extra protein, iron, folic acid, calcium.
- **Infants:** breast milk, then weaning foods.
- **Athletes:** extra carbohydrates and fluids.
- **Diabetics:** controlled sugar, regular meals.
- **Vegetarians:** plant proteins combined (beans + rice).

### Food groups (Cameroon context)
- **Staples:** cassava, yams, plantains, rice, maize.
- **Proteins:** fish, meat, beans, groundnuts.
- **Vegetables and fruits:** for vitamins and minerals.
- **Fats and oils:** palm oil, groundnut oil.
- **Water and drinks.**

## Common mistakes & exam traps

- Planning a meal without all food groups.
- Forgetting the factors affecting food choice.
- Confusing the needs of different groups.
- Not linking the diet to the person''s situation.

## Exam technique

1. Define a balanced diet before planning meals.
2. For meal plans, cover all food groups and justify choices.
3. Match the diet to the person (age, health, activity).
4. Use Cameroon foods in your plans.

## Memory hooks

- **Food choice factors:** "Age, activity, health, religion, income, availability, taste."
- **Balanced diet:** "All nutrients, right proportions."

## Quick practice

1. What is a balanced diet? **[All nutrients in the right proportions]**
2. Give three factors affecting food choice. **[Age, income, health]**
3. What extra nutrients does a pregnant woman need? **[Protein, iron, folic acid, calcium]**
4. Why do athletes need extra carbohydrates? **[For energy]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1ede2b32-afe2-2805-0af5-da3f73a438db'::uuid, 'cheat-advanced-agricultural-science-soil-science', 'Agricultural Science', 'Soil Science Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Soil Science Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Soil is the foundation of agriculture. You must understand soil formation, composition, properties, and how to manage soil fertility. Soil questions are guaranteed on the paper and connect to crop production and conservation.

## Core concepts

### Soil formation
- Weathering of parent rock + organic matter + time + climate + organisms + relief.
- **Soil profile:** horizons — O (organic), A (topsoil), B (subsoil), C (parent material).

### Soil composition
- **Mineral particles:** sand, silt, clay.
- **Organic matter (humus):** decomposed plant and animal material.
- **Water and air:** in the pore spaces.
- **Living organisms:** bacteria, fungi, earthworms.

### Soil texture
- **Sand:** large particles, drains fast, low fertility, easy to work.
- **Clay:** small particles, holds water, fertile but heavy and poorly drained.
- **Loam:** balanced mixture — best for most crops.

### Soil properties
- **Water holding capacity:** clay highest, sand lowest.
- **Drainage:** sand best, clay worst.
- **Aeration:** sand best.
- **pH:** most crops prefer slightly acidic to neutral (6–7).

### Soil fertility and management
- **Fertilisers:** organic (manure, compost) and inorganic (NPK).
- **Crop rotation:** alternating crops to maintain nutrients and break pest cycles.
- **Green manuring:** growing and ploughing in legumes.
- **Mulching:** covering soil to retain moisture and reduce erosion.
- **Liming:** adding lime to reduce acidity.

### Soil erosion and conservation
- **Causes:** water, wind, overgrazing, deforestation, poor tillage.
- **Control:** terracing, contour ploughing, cover crops, windbreaks, reforestation.

## Common mistakes & exam traps

- Confusing sand and clay properties.
- Forgetting the soil profile horizons.
- Not linking erosion control to its cause.
- Confusing organic and inorganic fertilisers.

## Exam technique

1. Compare soil types by particle size, drainage and fertility.
2. For erosion, give causes AND control measures.
3. Link soil management to fertility.
4. Use Cameroon examples (volcanic soils of the West, lateritic soils).

## Memory hooks

- **Texture:** "Sand drains, clay holds, loam balances."
- **Horizons:** "O, A, B, C — top to bottom."

## Quick practice

1. Which soil type holds the most water? **[Clay]**
2. What is loam? **[A balanced mixture of sand, silt and clay]**
3. Give two methods of erosion control. **[Terracing, contour ploughing]**
4. What is crop rotation? **[Alternating crops to maintain fertility]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('bd7afc67-bbac-e294-f4e2-d7389cdf2fe8'::uuid, 'cheat-advanced-agricultural-science-crop-production', 'Agricultural Science', 'Crop Production Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Crop Production Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Crop production covers the cultivation of food and cash crops. You must understand the factors affecting crop growth, the stages of production, and the major crops of Cameroon. Questions range from "describe the cultivation of X" to "explain the factors affecting yield".

## Core concepts

### Factors affecting crop growth
- **Climate:** rainfall, temperature, sunlight.
- **Soil:** fertility, texture, pH, drainage.
- **Water:** irrigation and drainage.
- **Pests and diseases:** control measures.
- **Management:** planting, weeding, fertilising, harvesting.

### Stages of crop production
1. **Land preparation:** clearing, ploughing, harrowing.
2. **Planting:** correct spacing, depth, time, seed quality.
3. **Crop maintenance:** weeding, fertilising, watering, pest control.
4. **Harvesting:** at the right maturity.
5. **Post-harvest:** drying, storage, marketing.

### Major food crops of Cameroon
- **Roots and tubers:** cassava, yams, cocoyams, sweet potatoes.
- **Cereals:** maize, rice, sorghum, millet.
- **Legumes:** beans, groundnuts, soya.
- **Plantains and bananas.**

### Major cash crops
- **Cocoa:** the main export crop — grown in the Centre, South, South-West.
- **Coffee:** robusta and arabica — West and North-West.
- **Cotton:** North and Far North.
- **Palm oil:** coastal regions.
- **Rubber, bananas, tea.**

### Pests and diseases
- **Pests:** insects (stem borers, aphids), rodents, birds.
- **Diseases:** fungal (blight, rust), viral, bacterial.
- **Control:** cultural (rotation, resistant varieties), chemical (pesticides), biological (natural enemies).

### Post-harvest losses
- Caused by pests, moulds, poor storage.
- Reduced by proper drying, good storage, and processing.

## Common mistakes & exam traps

- Confusing food and cash crops.
- Forgetting the stages of production in order.
- Not knowing the regions where crops are grown.
- Giving pest control without mentioning cultural methods.

## Exam technique

1. For "describe the cultivation", follow the stages in order.
2. For cash crops, state the region and the use.
3. Give cultural AND chemical control methods.
4. Use Cameroon examples throughout.

## Memory hooks

- **Stages:** "Prepare, plant, maintain, harvest, store."
- **Cash crops:** "Cocoa, coffee, cotton, palm oil."

## Quick practice

1. Name two food crops of Cameroon. **[Cassava, maize]**
2. Where is cocoa mainly grown? **[Centre, South, South-West]**
3. Give two stages of crop production. **[Planting, harvesting]**
4. Name two methods of pest control. **[Crop rotation, pesticides]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('493b2edc-87e6-7ac2-3c5d-b586ee03a987'::uuid, 'cheat-advanced-agricultural-science-animal-production', 'Agricultural Science', 'Animal Production Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Animal Production Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Animal production covers the rearing of livestock for food and income. You must understand the types of farm animals, their management, nutrition and health. Questions often ask about the management of a specific animal or the causes and control of diseases.

## Core concepts

### Types of farm animals
- **Ruminants:** cattle, sheep, goats — multi-chambered stomachs, digest cellulose.
- **Non-ruminants:** pigs, poultry — single stomachs.
- **Monogastric:** pigs, poultry, rabbits.

### Animal nutrition
- **Ruminants:** graze on grass, hay, silage.
- **Poultry:** grains, formulated feed.
- **Feed components:** carbohydrates (energy), proteins (growth), vitamins, minerals, water.
- **Concentrates:** high-energy feeds. **Roughage:** high-fibre feeds.

### Animal management
- **Housing:** clean, ventilated, protected from predators and weather.
- **Feeding:** balanced ration, clean water, regular schedule.
- **Breeding:** selecting good stock, controlled mating.
- **Health care:** vaccination, deworming, hygiene.
- **Record keeping:** production, health, finances.

### Common diseases
- **Newcastle disease:** poultry — viral, highly contagious.
- **Rinderpest:** cattle — viral (now eradicated).
- **Foot and mouth disease:** cattle — viral, blisters.
- **Trypanosomiasis:** cattle — transmitted by tsetse fly.
- **Coccidiosis:** poultry — parasitic.
- **Control:** vaccination, quarantine, hygiene, good nutrition, culling.

### Products of farm animals
- Meat, milk, eggs, hides and skins, manure, wool.

### Importance of livestock
- Food (protein), income, manure for crops, draught power, employment.

## Common mistakes & exam traps

- Confusing ruminants and non-ruminants.
- Not knowing the diseases of specific animals.
- Forgetting the control measures.
- Confusing concentrates and roughage.

## Exam technique

1. Classify animals as ruminant/non-ruminant first.
2. For diseases, state the animal, the cause and the control.
3. For management, cover housing, feeding, breeding and health.
4. Link livestock to crop production (manure, draught).

## Memory hooks

- **Ruminants:** "Cattle, sheep, goats — chew the cud."
- **Disease control:** "Vaccinate, quarantine, hygiene, cull."

## Quick practice

1. What is a ruminant? **[An animal with a multi-chambered stomach]**
2. Which disease affects poultry? **[Newcastle disease]**
3. Give two products of farm animals. **[Meat, milk]**
4. What is roughage? **[High-fibre feed]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('23ade1ad-b8c1-9548-1ee8-3c396eab0d39'::uuid, 'cheat-advanced-english-literature-critical-analysis-of-poetry', 'English Literature', 'Critical Analysis of Poetry Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Critical Analysis of Poetry Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

At Advanced Level, poetry analysis demands close reading and critical commentary. You must analyse language, structure, form and context, and construct a coherent argument. The marks go to candidates who quote precisely and explain the effect of the writer''s choices.

## Core concepts

### The analytical framework
For every poem, consider:
1. **Meaning:** what the poem says (subject, theme, message).
2. **Language:** how words create effect (imagery, diction, sound).
3. **Structure:** how the poem is organised (stanzas, rhyme, rhythm, line breaks).
4. **Form:** the type of poem (sonnet, ballad, free verse, dramatic monologue).
5. **Context:** the poet''s life, the period, and the audience.

### Language devices
- **Imagery:** sensory pictures — visual, auditory, tactile.
- **Metaphor and simile:** comparison.
- **Personification:** giving human qualities.
- **Symbolism:** objects standing for ideas.
- **Diction:** word choice — formal/informal, concrete/abstract.
- **Sound:** alliteration, assonance, onomatopoeia, sibilance.

### Structure and form
- **Rhyme scheme:** the pattern of end rhymes.
- **Rhythm/metre:** the beat — iambic pentameter is the most common.
- **Enjambment:** lines running on — creates flow and speed.
- **Caesura:** a pause in a line — creates emphasis.
- **Stanza form:** couplets, quatrains, sonnet structure (octave/sestet).
- **Volta:** the turn in a sonnet.

### Writing the critical essay
1. **Introduction:** state the poem, the poet, and your argument (thesis).
2. **Body paragraphs:** one point per paragraph — quote, analyse, link to theme.
3. **Conclusion:** summarise your argument and the poem''s overall effect.
- Use the formula: **Point, Evidence, Analysis, Effect.**

## Common mistakes & exam traps

- Describing content without analysing technique.
- Quoting without explaining the effect.
- Ignoring structure and form.
- Writing a biography of the poet instead of analysing the poem.
- Not answering the specific question.

## Exam technique

1. Read the poem twice before writing.
2. Annotate: underline key words, note devices and structure.
3. Plan your argument before writing.
4. Use the P.E.A.E. formula in every paragraph.

## Memory hooks

- **Framework:** "Meaning, language, structure, form, context."
- **P.E.A.E.:** "Point, Evidence, Analysis, Effect."

## Quick practice

1. What is the volta in a sonnet? **[The turn in the argument]**
2. What does enjambment create? **[Flow and speed]**
3. Name three sound devices. **[Alliteration, assonance, onomatopoeia]**
4. What is diction? **[Word choice]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('f3f4ca79-491f-bb87-dbe3-c6affca7e699'::uuid, 'cheat-advanced-english-literature-critical-analysis-of-prose', 'English Literature', 'Critical Analysis of Prose Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Critical Analysis of Prose Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Prose analysis at Advanced Level requires you to examine novels and short stories critically — narrative technique, characterisation, setting, theme and style. You must support every point with evidence and comment on the writer''s methods.

## Core concepts

### Narrative technique
- **Point of view:** first person, third person limited, omniscient, unreliable narrator.
- **Narrative structure:** chronological, non-linear, framed narratives.
- **Foreshadowing and flashback.**
- **Irony:** dramatic, situational, verbal.

### Characterisation
- **Direct:** the narrator tells us about the character.
- **Indirect:** revealed through actions, speech, thoughts and others'' reactions.
- **Character development:** how and why a character changes.
- **Foils:** characters who contrast with and highlight the protagonist.

### Setting
- Place, time, social context.
- Setting can create mood, symbolise ideas, and drive the plot.

### Theme
- The central ideas explored through the whole text.
- Show how the writer develops themes through events, characters, symbols and language.

### Style
- **Diction and syntax:** sentence length, vocabulary.
- **Imagery and symbolism.**
- **Tone:** the narrator''s attitude.

### Writing the critical essay
- Thesis-driven introduction.
- Body paragraphs using **P.E.A.E.** (Point, Evidence, Analysis, Effect).
- Link every point to the question and the theme.

## Common mistakes & exam traps

- Retelling the plot instead of analysing.
- Making assertions without textual evidence.
- Ignoring the writer''s methods.
- Not knowing the text well enough to quote accurately.
- Writing a memorised essay that does not answer the question.

## Exam technique

1. Choose the most relevant moments, not the whole plot.
2. Quote briefly and analyse the quote.
3. Comment on narrative technique, not just story.
4. Keep the question in view throughout.

## Memory hooks

- **Technique:** "Point of view, characterisation, setting, theme, style."
- **P.E.A.E.:** "Point, Evidence, Analysis, Effect."

## Quick practice

1. What is an unreliable narrator? **[A narrator whose account cannot be trusted]**
2. What is a foil? **[A contrasting character]**
3. Give two ways character is revealed indirectly. **[Actions, speech]**
4. What is situational irony? **[A gap between what is expected and what happens]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('0ba9961a-b93b-d7d1-742f-85fb613eebac'::uuid, 'cheat-advanced-english-literature-critical-analysis-of-drama', 'English Literature', 'Critical Analysis of Drama Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Critical Analysis of Drama Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Drama at Advanced Level must be analysed as a performance text. You must consider dialogue, stage directions, dramatic structure, tension and audience effect. Examiners reward answers that treat the play as something to be performed, not just read.

## Core concepts

### The play as performance
- Consider what the audience sees and hears.
- **Stage directions:** setting, movement, tone, props — they reveal character and mood.
- **Dialogue:** reveals character, advances plot, creates subtext.

### Dramatic structure
- **Exposition → rising action → climax → falling action → resolution.**
- **Acts and scenes:** scene changes signal shifts in time, place or mood.
- **The climax:** the moment of greatest tension.

### Tension and conflict
- **Conflict:** character vs character, character vs self, character vs society.
- **Dramatic irony:** the audience knows what characters do not.
- **Suspense:** delaying information to build tension.

### Character in drama
- Characters are revealed through what they say, do, and what others say about them.
- **Subtext:** the real meaning beneath the words.
- Track how characters change across the play.

### Audience effect
- Comedy, tragedy, catharsis, shock.
- Ask: how does this moment make the audience feel, and why?

### Writing the critical essay
- Thesis + P.E.A.E. paragraphs.
- Always reference the stage and the audience.

## Common mistakes & exam traps

- Analysing the play as a novel.
- Ignoring stage directions.
- Forgetting the audience.
- Not knowing the difference between playwright and character.
- Quoting dialogue without explaining its effect.

## Exam technique

1. Visualise each scene on stage.
2. Use stage directions as evidence.
3. Comment on tension and its build-up.
4. Link character and conflict to theme.

## Memory hooks

- **Drama lens:** "Dialogue, stage directions, tension, audience."
- **Structure:** "Exposition, rising, climax, falling, resolution."

## Quick practice

1. Why must stage directions be analysed? **[They reveal character and mood]**
2. What is dramatic irony? **[The audience knows what characters do not]**
3. What is subtext? **[The real meaning beneath the words]**
4. Name the three types of conflict. **[Character vs character, self, society]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('b7db3af3-540f-c3e5-9a0b-c26ee021eaac'::uuid, 'cheat-advanced-philosophy-epistemology', 'Philosophy', 'Epistemology Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Epistemology Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Epistemology is the study of knowledge — what it is, how we get it, and whether we can trust it. It is a core branch of philosophy and a guaranteed topic. You must know the definitions of knowledge, the sources of knowledge, and the main theories.

## Core concepts

### What is knowledge?
- **Knowledge:** justified true belief (the traditional definition).
  1. **Belief:** you must believe it.
  2. **Truth:** it must be true.
  3. **Justification:** you must have good reasons.
- **Gettier problems:** cases where justified true belief still seems not to be knowledge.

### Types of knowledge
- **A priori:** known without experience — "all bachelors are unmarried" (reason alone).
- **A posteriori:** known through experience — "water boils at 100 °C".
- **Empirical:** based on the senses.
- **Rational:** based on reason.

### Sources of knowledge
- **Perception:** the senses — but they can deceive (illusions, dreams).
- **Reason:** logic and mathematics.
- **Memory:** reliable but fallible.
- **Testimony:** what others tell us.
- **Introspection:** knowledge of our own minds.

### Rationalism vs empiricism
- **Rationalism:** reason is the primary source of knowledge (Descartes, Plato).
- **Empiricism:** experience is the primary source (Locke, Hume).
- **Descartes'' method of doubt:** doubt everything possible; "I think, therefore I am" (cogito) is indubitable.
- **Locke''s tabula rasa:** the mind is a blank slate at birth.

### Scepticism
- The view that knowledge is impossible or limited.
- **Global scepticism:** we cannot know anything.
- **Local scepticism:** we cannot know in a specific area (e.g. other minds).
- Responses: Descartes'' cogito, empiricist appeals to experience.

## Common mistakes & exam traps

- Confusing belief with knowledge.
- Forgetting the three conditions (justified true belief).
- Confusing a priori and a posteriori.
- Not knowing the difference between rationalism and empiricism.

## Exam technique

1. Define knowledge precisely before discussing it.
2. For each theory, state it, explain it, and give an objection.
3. Use the philosophers'' names and their key claims.
4. Structure: definition → theories → evaluation.

## Memory hooks

- **Knowledge:** "Justified, true, belief."
- **A priori vs a posteriori:** "Reason before experience, experience after."

## Quick practice

1. What are the three conditions of knowledge? **[Justified, true, belief]**
2. Is "2 + 2 = 4" a priori or a posteriori? **[A priori]**
3. Who said "I think, therefore I am"? **[Descartes]**
4. What is the tabula rasa? **[The mind as a blank slate]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('85312167-6bbd-e66b-807e-a1797248a6de'::uuid, 'cheat-advanced-philosophy-ethics', 'Philosophy', 'Ethics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Ethics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Ethics (moral philosophy) asks what makes actions right or wrong. You must know the major ethical theories — utilitarianism, deontology, virtue ethics — and be able to apply them to moral dilemmas. This is a core and heavily tested topic.

## Core concepts

### Normative ethics
- The study of what we ought to do.
- Three main theories:

### Utilitarianism
- **The greatest happiness principle:** an action is right if it produces the greatest happiness for the greatest number.
- **Bentham:** quantitative — the hedonic calculus (intensity, duration, certainty).
- **Mill:** qualitative — higher pleasures (of the mind) outweigh lower ones.
- **Act utilitarianism:** judge each action.
- **Rule utilitarianism:** follow rules that maximise happiness.
- **Criticisms:** can justify harming minorities; happiness is hard to measure.

### Deontology (Kant)
- Actions are right or wrong in themselves, regardless of consequences.
- **The categorical imperative:**
  1. Act only on maxims you could will as universal law.
  2. Treat humanity always as an end, never merely as a means.
- **Duty:** act from duty, not from inclination.
- **Criticisms:** too rigid; conflicts between duties.

### Virtue ethics (Aristotle)
- Focuses on the **character** of the agent, not the action.
- **Eudaimonia:** flourishing — the goal of life.
- **Virtues:** character traits (courage, honesty) — the mean between extremes.
- **The golden mean:** virtue lies between deficiency and excess.
- **Criticisms:** vague about what to do in a dilemma.

### Applied ethics
- Apply the theories to issues: abortion, euthanasia, animal rights, war, business ethics.

## Common mistakes & exam traps

- Confusing act and rule utilitarianism.
- Forgetting the two formulations of the categorical imperative.
- Confusing the golden mean with moderation in all things.
- Not applying the theory to the case.

## Exam technique

1. State the theory, its founder, and its core principle.
2. Apply it to the dilemma step by step.
3. Give a criticism of each theory.
4. Compare theories in the conclusion.

## Memory hooks

- **Utilitarianism:** "Greatest happiness for the greatest number."
- **Categorical imperative:** "Universal law; treat people as ends."
- **Virtue ethics:** "Character and the golden mean."

## Quick practice

1. Who founded utilitarianism? **[Bentham (and Mill)]**
2. State the categorical imperative. **[Act only on universalisable maxims; treat people as ends]**
3. What is eudaimonia? **[Flourishing]**
4. What is the golden mean? **[Virtue between deficiency and excess]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a860bc79-93b6-0f42-0b3d-5e8fda888369'::uuid, 'cheat-advanced-philosophy-metaphysics', 'Philosophy', 'Metaphysics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Metaphysics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Metaphysics deals with the nature of reality — what exists, free will, the mind-body problem, and the existence of God. It is a core branch of philosophy. You must know the main positions and the arguments for and against them.

## Core concepts

### What is metaphysics?
- The study of reality beyond the physical — being, existence, time, causality.

### The mind-body problem
- **Dualism (Descartes):** mind and body are two distinct substances.
  - Problem: how do they interact?
- **Physicalism/materialism:** the mind is the brain; mental states are physical states.
- **Behaviourism:** mental states are just behaviours.
- **Functionalism:** mental states are functional roles.

### Free will and determinism
- **Determinism:** every event has a cause — the future is fixed.
- **Libertarianism (free will):** humans have genuine free choice.
- **Compatibilism:** free will and determinism can coexist (free will = acting on your own desires without external constraint).
- **Hard determinism:** determinism is true, so free will is an illusion.

### The existence of God
- **Ontological argument:** God''s existence follows from his definition (Anselm, Descartes).
- **Cosmological argument:** everything has a cause, so there must be a first cause (Aquinas).
- **Teleological argument:** the universe shows design, so there is a designer (Paley''s watch).
- **Problem of evil:** if God is all-good and all-powerful, why is there evil?
  - Responses: free will defence, soul-making theodicy.

### Time and identity
- **Personal identity:** what makes a person the same over time? (memory, body, soul).
- **The self:** bundle theory (Hume) vs substance view.

## Common mistakes & exam traps

- Confusing the mind-body positions.
- Confusing determinism with fatalism.
- Not knowing the three arguments for God''s existence.
- Forgetting the problem of evil.

## Exam technique

1. Define the position before arguing for or against it.
2. For each argument, state it, explain it, give an objection.
3. Use the philosophers'' names.
4. Structure: positions → arguments → evaluation.

## Memory hooks

- **Mind-body:** "Dualism two, physicalism one."
- **Free will:** "Determinism fixed, libertarianism free, compatibilism both."

## Quick practice

1. What is dualism? **[Mind and body are two distinct substances]**
2. What is hard determinism? **[Determinism is true, so free will is an illusion]**
3. Name the three arguments for God''s existence. **[Ontological, cosmological, teleological]**
4. What is the problem of evil? **[Why does evil exist if God is all-good and all-powerful]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('c2b5fe4b-f77a-f6f5-11ef-2a99d2efb65f'::uuid, 'cheat-advanced-philosophy-logic-and-reasoning', 'Philosophy', 'Logic & Reasoning Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Logic & Reasoning Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Logic is the study of valid reasoning. You must be able to identify arguments, evaluate validity and soundness, recognise fallacies, and construct valid arguments. This topic underpins all philosophical writing.

## Core concepts

### Arguments
- **Premises:** statements that provide support.
- **Conclusion:** the statement supported.
- Indicator words: "therefore", "so", "hence" (conclusions); "because", "since" (premises).

### Deductive vs inductive
- **Deductive:** if the premises are true, the conclusion must be true (validity).
- **Inductive:** the premises make the conclusion probable (strength).

### Validity and soundness
- **Valid:** the conclusion follows from the premises (form is correct).
- **Sound:** valid AND all premises are true.
- A valid argument can have false premises.

### Common valid forms
- **Modus ponens:** If p then q; p; therefore q.
- **Modus tollens:** If p then q; not q; therefore not p.
- **Hypothetical syllogism:** If p then q; if q then r; therefore if p then r.
- **Disjunctive syllogism:** p or q; not p; therefore q.

### Common fallacies
- **Affirming the consequent:** If p then q; q; therefore p. (Invalid)
- **Denying the antecedent:** If p then q; not p; therefore not q. (Invalid)
- **Ad hominem:** attacking the person.
- **Straw man:** misrepresenting the argument.
- **Appeal to authority/emotion.**
- **Hasty generalisation.**
- **False dilemma.**
- **Circular reasoning.**

### Symbolic logic
- \(p \land q\) (and), \(p \lor q\) (or), \(\neg p\) (not), \(p \to q\) (if...then), \(p \leftrightarrow q\) (iff).
- Truth tables determine validity.

## Common mistakes & exam traps

- Confusing validity with truth.
- Confusing modus ponens with affirming the consequent.
- Naming a fallacy without explaining the flaw.
- Forgetting that a sound argument must be valid AND have true premises.

## Exam technique

1. Find the conclusion first.
2. Test validity: could the premises be true and the conclusion false?
3. Name the form or fallacy and explain why.
4. Use truth tables for complex arguments.

## Memory hooks

- **Modus ponens:** "If p then q, p, so q."
- **Modus tollens:** "If p then q, not q, so not p."

## Quick practice

1. What makes an argument sound? **[Valid and all premises true]**
2. Is "If p then q; q; therefore p" valid? **[No — affirming the consequent]**
3. What is a straw man? **[Misrepresenting an argument to attack it]**
4. What is a deductive argument? **[One where true premises guarantee the conclusion]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('edaabf5b-cf70-a8e0-4dcb-b22cdba900e7'::uuid, 'cheat-advanced-economics-microeconomics', 'Economics', 'Microeconomics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Microeconomics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Microeconomics at Advanced Level covers market forces, elasticity, costs, market structures and market failure. You must be able to use diagrams, explain concepts precisely, and evaluate policies. Diagrams earn marks — learn to draw them cleanly.

## Core concepts

### Demand and supply
- **Demand:** willingness and ability to pay.
- **Supply:** willingness and ability to sell.
- **Equilibrium:** where demand = supply.
- **Shifts vs movements:** price changes move along; other factors shift.

### Elasticity
- **Price elasticity of demand (PED):** \(\frac{\%\Delta Q_d}{\%\Delta P}\).
  - \(|PED| > 1\): elastic. \(|PED| < 1\): inelastic.
  - Determinants: substitutes, necessity, proportion of income, time.
- **Income elasticity (YED):** normal goods positive, inferior goods negative.
- **Cross elasticity (XED):** substitutes positive, complements negative.
- **Price elasticity of supply (PES):** depends on time and spare capacity.

### Costs and revenue
- \(TC = FC + VC\), \(AC = TC/Q\), \(MC = \Delta TC/\Delta Q\).
- **Revenue:** \(TR = P \times Q\), \(MR = \Delta TR/\Delta Q\).
- **Profit:** \(\pi = TR - TC\). Normal profit is the minimum to stay in business.

### Market structures
| Structure | Firms | Product | Entry |
|---|---|---|---|
| Perfect competition | Many | Identical | Free |
| Monopolistic competition | Many | Differentiated | Free |
| Oligopoly | Few | Differentiated | Barriers |
| Monopoly | One | Unique | Blocked |

- **Perfect competition:** price taker, \(P = MR = MC\) at equilibrium.
- **Monopoly:** price maker, restricts output, higher price; can exploit consumers.
- **Oligopoly:** interdependence, price rigidity (kinked demand curve), collusion.

### Market failure
- **Externalities:** costs/benefits to third parties (pollution).
- **Public goods:** non-excludable, non-rivalrous — underprovided by the market.
- **Merit goods:** under-consumed (education). **Demerit goods:** over-consumed (cigarettes).
- **Information failure:** consumers lack knowledge.
- **Government responses:** taxes, subsidies, regulation, provision, tradable permits.

## Common mistakes & exam traps

- Confusing shifts and movements along curves.
- Getting the elasticity formulas wrong.
- Confusing the market structures.
- Forgetting to evaluate policies (advantages AND disadvantages).

## Exam technique

1. Draw and label diagrams for every market question.
2. Define elasticity before calculating.
3. For market failure, identify the type and the policy response.
4. Evaluate: state the policy, its effect, and its limitations.

## Memory hooks

- **PED:** "Percentage change in quantity over percentage change in price."
- **Structures:** "Perfect many, monopoly one, oligopoly few."

## Quick practice

1. What does PED > 1 mean? **[Elastic demand]**
2. Give two determinants of PED. **[Substitutes, necessity]**
3. What is a public good? **[Non-excludable and non-rivalrous]**
4. How does a tax correct a negative externality? **[It raises the private cost toward the social cost]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('5f4aeda3-9b69-a087-cdb7-81a6a0747e95'::uuid, 'cheat-advanced-economics-macroeconomics', 'Economics', 'Macroeconomics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Macroeconomics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Macroeconomics covers the whole economy — national income, inflation, unemployment, growth and government policy. You must understand the key indicators, the circular flow, and the effects of fiscal and monetary policy. Cameroon and CEMAC examples score extra marks.

## Core concepts

### National income
- **GDP:** the total value of goods and services produced in a country in a year.
- Measured by: output, income, or expenditure (all equal in theory).
- **Real GDP:** adjusted for inflation. **Nominal GDP:** not adjusted.
- **GDP per capita:** GDP ÷ population — a rough measure of living standards.

### The circular flow
- Households → firms (factors of production) and firms → households (goods).
- **Injections:** investment, government spending, exports.
- **Withdrawals:** savings, taxes, imports.
- Equilibrium: injections = withdrawals.

### Inflation
- A sustained rise in the general price level.
- **Causes:** demand-pull (too much demand), cost-push (rising costs), excess money supply.
- **Effects:** erodes savings, uncertainty, hurts fixed-income earners.
- Measured by the **CPI** (Consumer Price Index).

### Unemployment
- People willing and able to work but without jobs.
- **Types:** frictional, structural, cyclical, seasonal.
- **Effects:** lost output, poverty, social problems.

### Economic growth
- An increase in real GDP.
- **Causes:** more resources, better technology, investment, education.
- **Benefits:** higher incomes, more jobs, more tax revenue.
- **Costs:** inflation, environmental damage, inequality.

### Fiscal policy
- Government spending and taxation.
- **Expansionary:** more spending / lower taxes — boosts demand.
- **Contractionary:** less spending / higher taxes — cools the economy.
- **Budget:** deficit (spending > revenue), surplus, balanced.

### Monetary policy
- Central bank control of interest rates and money supply.
- **Higher rates:** reduces borrowing and spending — controls inflation.
- **Lower rates:** stimulates borrowing and spending.
- In Cameroon: the **BEAC** sets policy for the CEMAC zone.

## Common mistakes & exam traps

- Confusing real and nominal GDP.
- Confusing injections and withdrawals.
- Not knowing the types of unemployment.
- Confusing fiscal (government) and monetary (central bank) policy.

## Exam technique

1. Define the indicator before discussing it.
2. For policies, state the tool, the effect, and the limitation.
3. Use Cameroon/CEMAC examples (BEAC, FCFA).
4. Evaluate: benefits AND costs.

## Memory hooks

- **Injections:** "Investment, government, exports."
- **Withdrawals:** "Savings, taxes, imports."
- **Fiscal vs monetary:** "Fiscal is government, monetary is the central bank."

## Quick practice

1. What is GDP? **[Total value of goods and services produced in a year]**
2. Name two causes of inflation. **[Demand-pull, cost-push]**
3. Give two types of unemployment. **[Structural, cyclical]**
4. What does the BEAC do? **[Sets monetary policy for the CEMAC zone]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('53d1d31e-e49f-96b9-a37a-68b471b620a1'::uuid, 'cheat-advanced-economics-international-economics', 'Economics', 'International Economics Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# International Economics Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

International economics covers trade, exchange rates, the balance of payments and globalisation. Cameroon''s economy depends heavily on exports (oil, cocoa) and imports, so these topics are directly relevant. Exchange rate questions are common.

## Core concepts

### International trade
- **Comparative advantage:** specialise in what you produce at the lowest opportunity cost.
- **Benefits:** wider markets, lower prices, access to resources, technology transfer.
- **Costs:** dependence, price volatility, harm to infant industries.

### The balance of payments
- Records all transactions between a country and the rest of the world.
- **Current account:** trade in goods and services, income, transfers.
- **Capital/financial account:** investment flows.
- **Deficit:** spending abroad exceeds earnings from abroad.

### Exchange rates
- The price of one currency in terms of another.
- **Appreciation:** the currency buys more foreign currency.
- **Depreciation:** it buys less.
- **Effects of depreciation:** exports cheaper (boost), imports dearer (inflation).
- **Fixed vs floating:** fixed (pegged, e.g. the FCFA to the euro) vs floating (market-determined).

### Trade policies
- **Protectionism:** tariffs, quotas, subsidies, embargoes.
- **Arguments for:** protect infant industries, jobs, national security.
- **Arguments against:** higher prices, retaliation, inefficiency.

### Globalisation
- The growing integration of economies.
- **Benefits:** growth, jobs, cheaper goods, technology.
- **Costs:** inequality, job losses, cultural erosion, environmental damage.

### Regional integration
- **CEMAC:** Central African Economic and Monetary Community — shared currency (FCFA).
- **ECOWAS:** West African economic community.
- **AfCFTA:** African Continental Free Trade Area.

## Common mistakes & exam traps

- Confusing appreciation and depreciation.
- Confusing the current and capital accounts.
- Forgetting the effects of a depreciation on exports and imports.
- Not knowing the FCFA is pegged to the euro.

## Exam technique

1. Define the term before discussing it.
2. For exchange rates, trace the effects on exports, imports and inflation.
3. Give arguments for AND against protectionism.
4. Use Cameroon examples (oil, cocoa, FCFA).

## Memory hooks

- **Depreciation:** "Exports cheaper, imports dearer."
- **FCFA:** "Pegged to the euro."

## Quick practice

1. What is comparative advantage? **[Specialising at the lowest opportunity cost]**
2. What is the current account? **[Trade in goods, services, income and transfers]**
3. What happens to exports when the currency depreciates? **[They become cheaper]**
4. Give one argument for protectionism. **[Protecting infant industries]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('4f2e35a6-c6f6-5e74-2bb8-46e89f03125b'::uuid, 'cheat-advanced-geography-geomorphology', 'Geography', 'Geomorphology Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Geomorphology Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Geomorphology is the study of landforms and the processes that shape them. Rivers, coasts, weathering and mass movement are tested every year. You must be able to describe landforms and explain their formation step by step.

## Core concepts

### Weathering
- Breakdown of rocks **in place**.
- **Physical:** freeze-thaw, exfoliation (thermal), salt crystallisation.
- **Chemical:** solution, hydrolysis, oxidation, carbonation.
- **Biological:** roots, burrowing organisms.

### Mass movement
- Downslope movement of material under gravity.
- **Slow:** soil creep, solifluction.
- **Fast:** landslides, mudflows, rockfalls.
- Triggered by: steep slopes, water saturation, earthquakes, removal of vegetation.

### River processes and landforms
- **Erosion:** hydraulic action, abrasion, attrition, solution.
- **Transportation:** traction, saltation, suspension, solution.
- **Deposition:** when velocity falls.
- **Upper course:** V-shaped valleys, waterfalls, gorges, interlocking spurs.
- **Middle course:** meanders, floodplains, oxbow lakes.
- **Lower course:** levees, deltas, estuaries.

### Coastal processes and landforms
- **Erosional:** cliffs, wave-cut platforms, caves, arches, stacks, stumps.
- **Depositional:** beaches, spits, bars, tombolos, sand dunes.
- **Longshore drift:** waves approach at an angle, moving sediment along the coast.

### Karst landscapes
- Formed by carbonation on limestone.
- Features: sinkholes, caverns, underground rivers, stalactites and stalagmites.

## Common mistakes & exam traps

- Confusing weathering (in place) with erosion (transport).
- Confusing the river erosion processes.
- Describing a landform without explaining its formation.
- Confusing erosional and depositional coastal features.

## Exam technique

1. For "describe and explain", describe the feature then explain the process in order.
2. Name the processes in sequence.
3. Draw annotated diagrams — they earn marks.
4. Use examples (Sanaga River, Cameroon coast).

## Memory hooks

- **River erosion:** "H.A.A.S. — Hydraulic, Abrasion, Attrition, Solution."
- **Coasts:** "Caves, arches, stacks, stumps — erosion in order."

## Quick practice

1. What is the difference between weathering and erosion? **[Weathering breaks in place; erosion transports]**
2. Name two river erosion processes. **[Hydraulic action, abrasion]**
3. How does an oxbow lake form? **[A meander neck is cut through]**
4. What is longshore drift? **[Sediment moved along the coast by waves]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6919c9e2-2c80-f4ee-4a47-4d16f93e3128'::uuid, 'cheat-advanced-geography-climatology', 'Geography', 'Climatology Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Climatology Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Climatology covers weather systems, climate zones and climate change. You must understand the factors controlling climate, the global circulation, and the evidence and effects of climate change. This is a high-yield topic with strong Cameroon relevance.

## Core concepts

### The atmosphere
- **Composition:** nitrogen (~78%), oxygen (~21%), trace gases.
- **Insolation:** incoming solar radiation — the energy source.
- **Greenhouse effect:** gases (CO₂, water vapour, methane) trap heat.

### Factors controlling climate
- **Latitude:** the main control — lower latitudes receive more insolation.
- **Altitude:** temperature falls ~6.5 °C per 1,000 m.
- **Distance from the sea:** maritime climates are milder.
- **Ocean currents:** warm currents warm coasts; cold currents cool them.
- **Prevailing winds and pressure belts.**

### Global circulation
- **Hadley cells:** rising air at the equator → rain; sinking air at ~30° → deserts.
- **Trade winds:** blow from the subtropical highs toward the equator.
- **ITCZ:** the intertropical convergence zone — where trade winds meet; brings rain.
- **Monsoons:** seasonal reversal of winds — wet and dry seasons.

### Climate zones
- **Equatorial:** hot, wet all year.
- **Tropical (savanna):** wet and dry seasons.
- **Desert:** hot, very dry.
- **Mediterranean:** hot dry summers, mild wet winters.
- **Temperate:** four seasons.

### Weather systems
- **Depressions:** low-pressure systems with fronts — rain and wind.
- **Anticyclones:** high pressure — settled, dry weather.
- **Tropical cyclones:** intense low-pressure storms — form over warm oceans.

### Climate change
- **Evidence:** rising temperatures, melting ice, rising sea levels, changing rainfall.
- **Causes:** burning fossil fuels, deforestation, agriculture.
- **Effects on Cameroon:** changing rainfall, droughts in the north, coastal erosion.
- **Responses:** mitigation (reduce emissions) and adaptation (adjust to change).

## Common mistakes & exam traps

- Confusing weather and climate.
- Forgetting the altitude lapse rate.
- Not knowing the role of the ITCZ in Cameroon''s seasons.
- Confusing mitigation and adaptation.

## Exam technique

1. Define weather and climate before comparing.
2. For climate zones, give temperature AND rainfall.
3. Explain the ITCZ''s role in Cameroon''s wet/dry seasons.
4. For climate change, give evidence, causes, effects and responses.

## Memory hooks

- **Altitude:** "6.5 °C per 1,000 m."
- **ITCZ:** "Where trade winds meet — brings the rain."

## Quick practice

1. What is the lapse rate? **[~6.5 °C per 1,000 m]**
2. What does the ITCZ bring? **[Rain]**
3. Give two greenhouse gases. **[CO₂, methane]**
4. What is the difference between mitigation and adaptation? **[Mitigation reduces emissions; adaptation adjusts to change]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ba517a9b-2e87-9bc5-7961-ab4fd4862b0d'::uuid, 'cheat-advanced-geography-population-and-development', 'Geography', 'Population & Development Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Population & Development Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Population and development link human geography to economic issues. You must understand population structures, the demographic transition, migration, and the indicators of development. Cameroon examples are frequently required.

## Core concepts

### Population structure
- **Age-sex pyramid:** shows the population by age and gender.
  - Wide base = young population (high birth rate).
  - Narrow base = ageing population (low birth rate).
- **Dependency ratio:** the young and old ÷ the working-age population.

### The demographic transition model
| Stage | Birth rate | Death rate | Population |
|---|---|---|---|
| 1 (pre-industrial) | High | High | Stable |
| 2 (developing) | High | Falling | Rapid growth |
| 3 (industrialising) | Falling | Falling | Growth slows |
| 4 (developed) | Low | Low | Stable |
| 5 (post-industrial) | Very low | Low | Declining |

- Cameroon is around **stage 2–3**.

### Migration
- **Internal:** rural-urban migration — the main pattern in Cameroon.
- **International:** emigration and immigration.
- **Push factors:** poverty, unemployment, conflict, drought.
- **Pull factors:** jobs, education, healthcare, security.
- **Effects:** urbanisation, brain drain, remittances.

### Development indicators
- **Economic:** GDP per capita, employment structure.
- **Social:** literacy, life expectancy, infant mortality, access to clean water.
- **Composite:** the Human Development Index (HDI) — income, education, health.
- **Limitations of GDP:** ignores inequality, informal economy, quality of life.

### Development theories
- **Rostow''s stages of growth:** traditional → preconditions → take-off → drive to maturity → high mass consumption.
- **Dependency theory:** poor countries are held back by their dependence on rich countries.

## Common mistakes & exam traps

- Confusing the stages of the demographic transition.
- Confusing push and pull factors.
- Using GDP alone to measure development.
- Not knowing the HDI components.

## Exam technique

1. Read the pyramid carefully before describing it.
2. For migration, separate push and pull factors.
3. Use multiple indicators to measure development.
4. Use Cameroon examples (rural-urban migration, HDI).

## Memory hooks

- **DTM:** "Stage 2 grows fast, stage 4 stable."
- **HDI:** "Income, education, health."

## Quick practice

1. What does a wide-based pyramid indicate? **[A young population]**
2. Which stage of the DTM has rapid population growth? **[Stage 2]**
3. Give two push factors for migration. **[Poverty, conflict]**
4. What are the three components of the HDI? **[Income, education, health]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ebbd45ca-778b-4399-ce27-5efb6d028176'::uuid, 'cheat-advanced-history-african-history', 'History', 'African History Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# African History Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

African history at Advanced Level covers pre-colonial states, the slave trade, colonialism, nationalism and independence. You must analyse causes and effects, not just narrate events. Cameroon and West African examples are central.

## Core concepts

### Pre-colonial African states
- **Ghana, Mali, Songhai:** the great West African empires — trade, Islam, learning.
- **Kanem-Bornu** and the **Hausa states** around Lake Chad.
- **Ashanti** and **Dahomey** in West Africa.
- **Zulu Kingdom** under Shaka in southern Africa.
- **Organisation:** centralised monarchies vs decentralised societies.

### The trans-Atlantic slave trade
- **Causes:** demand for labour in the Americas, European profit.
- **Effects on Africa:** population loss, warfare, disruption, but also new states that profited.
- **Abolition:** Britain abolished the trade in 1807 and slavery in 1833.

### Colonialism
- **The scramble for Africa** and the **Berlin Conference (1884–85)**.
- **Methods:** direct rule (French), indirect rule (British), assimilation, association.
- **Effects:** exploitation, artificial borders, new infrastructure, education, cash crops.

### Nationalism and independence
- **Causes:** educated elites, WWII, pan-Africanism, exploitation.
- **Key leaders:** Nkrumah (Ghana 1957), Kenyatta (Kenya), Nyerere (Tanzania), Senghor (Senegal).
- **Pan-Africanism:** the OAU founded in 1963.

### Cameroon''s path
- German Kamerun (1884) → British/French mandate after WWI → French independence (1960) → Southern Cameroons joins (1961) → unitary state (1972).
- **Ruben Um Nyobé** and the UPC.

## Common mistakes & exam traps

- Narrating events without analysis.
- Confusing the empires and their rulers.
- Forgetting the effects of the slave trade.
- Not knowing the dates of independence.

## Exam technique

1. Structure answers: causes → events → effects.
2. Analyse (explain why) as well as describe.
3. Use specific names, dates and places.
4. Link African history to world events (WWI, WWII, Cold War).

## Memory hooks

- **Empires:** "Ghana, Mali, Songhai — gold, trade, Islam."
- **Cameroon:** "1884 German, 1960 French independence, 1961 reunification."

## Quick practice

1. When was the Berlin Conference? **[1884–85]**
2. Give two effects of the slave trade on Africa. **[Population loss, warfare]**
3. Who led Ghana to independence? **[Kwame Nkrumah]**
4. When did French Cameroon become independent? **[1960]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e701747d-a2a3-35fa-2c4e-00b01c03e821'::uuid, 'cheat-advanced-history-world-history', 'History', 'World History Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# World History Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

World history at Advanced Level covers the World Wars, the Cold War, decolonisation and globalisation. You must analyse causes, consequences and significance. The links between world events and Africa are frequently tested.

## Core concepts

### World War I (1914–1918)
- **Causes:** militarism, alliances, imperialism, nationalism (MAIN).
- Trigger: the assassination of Archduke Franz Ferdinand.
- **Consequences:** millions dead, collapse of empires, Treaty of Versailles, League of Nations.

### The interwar period
- **The Treaty of Versailles:** blamed Germany, heavy reparations — resentment.
- **The Great Depression (1929):** economic collapse → political extremism.
- **Rise of fascism:** Hitler in Germany, Mussolini in Italy.

### World War II (1939–1945)
- **Causes:** Versailles, expansionism, appeasement.
- **Consequences:** the Holocaust, the atomic bomb, the UN (1945), the Cold War, and the weakening of colonial powers → African nationalism.

### The Cold War (1947–1991)
- **USA vs USSR:** capitalism vs communism.
- **Key events:** the Berlin Blockade, the Korean War, the Cuban Missile Crisis, the Vietnam War, the fall of the Berlin Wall (1989).
- **Effects on Africa:** proxy wars, superpower support for regimes, non-alignment.

### Decolonisation
- After WWII, European empires collapsed.
- Ghana (1957) first in sub-Saharan Africa; most of Africa independent by the 1960s.
- **Causes:** nationalism, weakened powers, international pressure, the UN.

### Globalisation
- Growing economic and cultural integration.
- **Benefits:** trade, technology, growth.
- **Costs:** inequality, cultural erosion, environmental damage.

## Common mistakes & exam traps

- Confusing the causes of the two World Wars.
- Confusing the League of Nations and the UN.
- Not knowing the Cold War dates.
- Forgetting the effects of the wars on Africa.

## Exam technique

1. Learn the dates: 1914–18, 1939–45, 1947–91.
2. For each event: causes, key facts, consequences.
3. Link world events to Africa.
4. Analyse significance, not just narrate.

## Memory hooks

- **WWI causes:** "MAIN — Militarism, Alliances, Imperialism, Nationalism."
- **Cold War:** "USA vs USSR, 1947–91."

## Quick practice

1. What triggered WWI? **[The assassination of Franz Ferdinand]**
2. When was the UN founded? **[1945]**
3. Give two effects of WWII on Africa. **[Weakened colonial powers, rise of nationalism]**
4. When did the Cold War end? **[1991]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('7c02bc51-a002-ff36-ce10-ae65256a7b28'::uuid, 'cheat-advanced-history-historical-methodology', 'History', 'Historical Methodology Cheatsheet', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Historical Methodology Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Historical methodology is how historians study the past — sources, evidence, interpretation and bias. You must be able to evaluate sources, distinguish fact from opinion, and understand why interpretations differ. Source-based questions test these skills directly.

## Core concepts

### Primary and secondary sources
- **Primary sources:** created at the time — letters, diaries, official documents, photographs, artefacts.
- **Secondary sources:** created later — textbooks, biographies, documentaries.
- Both can be useful; both can be biased.

### Evaluating sources
- **Provenance:** who created it, when, where, and why.
- **Reliability:** is the source trustworthy?
- **Utility:** how useful is it for answering the question?
- **Bias:** does the author have a motive to distort?
- **Corroboration:** do other sources agree?

### Fact, opinion and interpretation
- **Fact:** a verifiable statement.
- **Opinion:** a personal view.
- **Interpretation:** a historian''s argument about the past — can differ.

### Why interpretations differ
- Different evidence used.
- Different perspectives (nationality, class, gender).
- Different methods and questions.
- New evidence discovered.
- The historian''s own context and values.

### The historian''s method
1. Ask a question.
2. Gather sources (primary and secondary).
3. Evaluate reliability and bias.
4. Cross-check (corroborate).
5. Construct an interpretation with evidence.

## Common mistakes & exam traps

- Confusing primary and secondary sources.
- Calling a source "biased" without explaining why.
- Forgetting to consider provenance.
- Treating one source as the whole truth.
- Not using the source in the answer.

## Exam technique

1. For source questions: provenance, reliability, utility, bias.
2. Quote or refer to the source specifically.
3. Corroborate with other knowledge.
4. Distinguish fact from interpretation.

## Memory hooks

- **Source check:** "Provenance, reliability, utility, bias."
- **Primary vs secondary:** "Primary at the time, secondary after."

## Quick practice

1. What is a primary source? **[Created at the time]**
2. Give two things to check when evaluating a source. **[Provenance, bias]**
3. What is corroboration? **[Checking whether other sources agree]**
4. Why do interpretations of the past differ? **[Different evidence, perspectives, and contexts]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

commit;