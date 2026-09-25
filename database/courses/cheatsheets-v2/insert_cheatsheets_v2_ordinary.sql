begin;

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-math-number-and-operations', 'Mathematics', 'Number & Operations Cheatsheet', 'Detailed revision cheatsheet: Number and operations.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-math-algebra-and-equations', 'Mathematics', 'Algebra & Equations Cheatsheet', 'Detailed revision cheatsheet: Algebra and equations.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-math-geometry-and-mensuration', 'Mathematics', 'Geometry & Mensuration Cheatsheet', 'Detailed revision cheatsheet: Geometry and mensuration.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-math-trigonometry', 'Mathematics', 'Trigonometry Cheatsheet', 'Detailed revision cheatsheet: Trigonometry.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-math-statistics-and-probability', 'Mathematics', 'Statistics & Probability Cheatsheet', 'Detailed revision cheatsheet: Statistics and probability.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-math-vectors-and-transformations', 'Mathematics', 'Vectors & Transformations Cheatsheet', 'Detailed revision cheatsheet: Vectors and transformations.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-math-set-theory', 'Mathematics', 'Set Theory Cheatsheet', 'Detailed revision cheatsheet: Set theory.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 20)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-math-matrices', 'Mathematics', 'Matrices Cheatsheet', 'Detailed revision cheatsheet: Matrices.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-amath-factor-and-remainder-theorem', 'Additional Mathematics', 'Factor & Remainder Theorem Cheatsheet', 'Detailed revision cheatsheet: Factor and remainder theorem.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-amath-differentiation', 'Additional Mathematics', 'Differentiation Cheatsheet', 'Detailed revision cheatsheet: Differentiation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-amath-integration', 'Additional Mathematics', 'Integration Cheatsheet', 'Detailed revision cheatsheet: Integration.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-amath-coordinate-geometry', 'Additional Mathematics', 'Coordinate Geometry Cheatsheet', 'Detailed revision cheatsheet: Coordinate geometry.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-amath-logarithms-and-exponentials', 'Additional Mathematics', 'Logarithms & Exponentials Cheatsheet', 'Detailed revision cheatsheet: Logarithms and exponentials.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-amath-series-and-sequences', 'Additional Mathematics', 'Series & Sequences Cheatsheet', 'Detailed revision cheatsheet: Series and sequences.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-phys-measurement', 'Physics', 'Measurement Cheatsheet', 'Detailed revision cheatsheet: Measurement.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-phys-mechanics', 'Physics', 'Mechanics Cheatsheet', 'Detailed revision cheatsheet: Mechanics.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-phys-thermal-physics', 'Physics', 'Thermal Physics Cheatsheet', 'Detailed revision cheatsheet: Thermal physics.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-phys-waves-and-light', 'Physics', 'Waves & Light Cheatsheet', 'Detailed revision cheatsheet: Waves and light.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-phys-electricity', 'Physics', 'Electricity Cheatsheet', 'Detailed revision cheatsheet: Electricity.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-phys-magnetism-and-induction', 'Physics', 'Magnetism & Induction Cheatsheet', 'Detailed revision cheatsheet: Magnetism and induction.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-phys-radioactivity', 'Physics', 'Radioactivity Cheatsheet', 'Detailed revision cheatsheet: Radioactivity.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-chem-atomic-structure', 'Chemistry', 'Atomic Structure Cheatsheet', 'Detailed revision cheatsheet: Atomic structure.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-chem-bonding', 'Chemistry', 'Bonding Cheatsheet', 'Detailed revision cheatsheet: Bonding.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-chem-the-mole', 'Chemistry', 'The Mole Cheatsheet', 'Detailed revision cheatsheet: The mole.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-chem-acids-bases-and-salts', 'Chemistry', 'Acids, Bases & Salts Cheatsheet', 'Detailed revision cheatsheet: Acids, bases and salts.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-chem-electrolysis', 'Chemistry', 'Electrolysis Cheatsheet', 'Detailed revision cheatsheet: Electrolysis.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-chem-metals', 'Chemistry', 'Metals Cheatsheet', 'Detailed revision cheatsheet: Metals.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-chem-organic-chemistry', 'Chemistry', 'Organic Chemistry Cheatsheet', 'Detailed revision cheatsheet: Organic chemistry.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-chem-rates-of-reaction', 'Chemistry', 'Rates of Reaction Cheatsheet', 'Detailed revision cheatsheet: Rates of reaction.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-bio-cell-biology', 'Biology', 'Cell Biology Cheatsheet', 'Detailed revision cheatsheet: Cell biology.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-bio-nutrition-and-digestion', 'Biology', 'Nutrition & Digestion Cheatsheet', 'Detailed revision cheatsheet: Nutrition and digestion.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-bio-transport-systems', 'Biology', 'Transport Cheatsheet', 'Detailed revision cheatsheet: Transport systems.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-bio-respiration', 'Biology', 'Respiration Cheatsheet', 'Detailed revision cheatsheet: Respiration.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-bio-coordination', 'Biology', 'Coordination Cheatsheet', 'Detailed revision cheatsheet: Coordination.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-bio-reproduction-and-genetics', 'Biology', 'Reproduction & Genetics Cheatsheet', 'Detailed revision cheatsheet: Reproduction and genetics.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-bio-ecology', 'Biology', 'Ecology Cheatsheet', 'Detailed revision cheatsheet: Ecology.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-hbio-body-systems', 'Human Biology', 'Body Systems Cheatsheet', 'Detailed revision cheatsheet: Body systems.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-hbio-blood-and-circulation', 'Human Biology', 'Blood & Circulation Cheatsheet', 'Detailed revision cheatsheet: Blood and circulation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-hbio-reproduction-and-health', 'Human Biology', 'Reproduction & Health Cheatsheet', 'Detailed revision cheatsheet: Reproduction and health.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-hbio-nutrition-and-disease', 'Human Biology', 'Nutrition & Disease Cheatsheet', 'Detailed revision cheatsheet: Nutrition and disease.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-agr-soils', 'Agricultural Science', 'Soils Cheatsheet', 'Detailed revision cheatsheet: Soils.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-agr-crop-production', 'Agricultural Science', 'Crop Production Cheatsheet', 'Detailed revision cheatsheet: Crop production.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-agr-animal-production', 'Agricultural Science', 'Animal Production Cheatsheet', 'Detailed revision cheatsheet: Animal production.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-agr-farm-management', 'Agricultural Science', 'Farm Management Cheatsheet', 'Detailed revision cheatsheet: Farm management.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-fnut-nutrients', 'Food and Nutrition', 'Nutrients Cheatsheet', 'Detailed revision cheatsheet: Nutrients.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-fnut-meal-planning', 'Food and Nutrition', 'Meal Planning Cheatsheet', 'Detailed revision cheatsheet: Meal planning.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-fnut-preservation-and-hygiene', 'Food and Nutrition', 'Preservation & Hygiene Cheatsheet', 'Detailed revision cheatsheet: Preservation and hygiene.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-english-comprehension-and-summary', 'English Language', 'Comprehension & Summary Cheatsheet', 'Detailed revision cheatsheet: Comprehension and summary.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-english-essay-writing', 'English Language', 'Essay Writing Cheatsheet', 'Detailed revision cheatsheet: Essay writing.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-english-grammar-and-usage', 'English Language', 'Grammar & Usage Cheatsheet', 'Detailed revision cheatsheet: Grammar and usage.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-english-vocabulary-and-idioms', 'English Language', 'Vocabulary & Idioms Cheatsheet', 'Detailed revision cheatsheet: Vocabulary and idioms.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-english-letter-writing', 'English Language', 'Letter Writing Cheatsheet', 'Detailed revision cheatsheet: Letter writing.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-english-literature-poetry-analysis', 'English Literature', 'Poetry Analysis Cheatsheet', 'Detailed revision cheatsheet: Poetry analysis.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-english-literature-prose-analysis', 'English Literature', 'Prose Analysis Cheatsheet', 'Detailed revision cheatsheet: Prose analysis.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-english-literature-drama-analysis', 'English Literature', 'Drama Analysis Cheatsheet', 'Detailed revision cheatsheet: Drama analysis.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-french-compr-hension-crite', 'French', 'Fiche : Compréhension écrite', 'Detailed revision cheatsheet: Compréhension écrite.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-french-expression-crite', 'French', 'Fiche : Expression écrite', 'Detailed revision cheatsheet: Expression écrite.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-french-grammaire', 'French', 'Fiche : Grammaire', 'Detailed revision cheatsheet: Grammaire.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-french-vocabulaire-et-conjugaison', 'French', 'Fiche : Vocabulaire et conjugaison', 'Detailed revision cheatsheet: Vocabulaire et conjugaison.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-french-civilisation', 'French', 'Fiche : Civilisation', 'Detailed revision cheatsheet: Civilisation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-sbe-french-compr-hension-et-expression', 'Special Bilingual Education French', 'Fiche : Compréhension et expression', 'Detailed revision cheatsheet: Compréhension et expression.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-religious-studies-christian-ethics-and-morality', 'Religious Studies', 'Christian Ethics & Morality Cheatsheet', 'Detailed revision cheatsheet: Christian ethics and morality.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-religious-studies-the-life-and-teachings-of-jesus', 'Religious Studies', 'The Life & Teachings of Jesus Cheatsheet', 'Detailed revision cheatsheet: The life and teachings of Jesus.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-religious-studies-the-old-testament', 'Religious Studies', 'The Old Testament Cheatsheet', 'Detailed revision cheatsheet: The Old Testament.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-religious-studies-the-church-and-christian-living', 'Religious Studies', 'The Church & Christian Living Cheatsheet', 'Detailed revision cheatsheet: The Church and Christian living.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-citizenship-rights-and-responsibilities-of-citizens', 'Citizenship Education', 'Rights & Responsibilities Cheatsheet', 'Detailed revision cheatsheet: Rights and responsibilities of citizens.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-citizenship-democracy-and-governance', 'Citizenship Education', 'Democracy & Governance Cheatsheet', 'Detailed revision cheatsheet: Democracy and governance.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-citizenship-national-symbols-and-civic-values', 'Citizenship Education', 'National Symbols & Civic Values Cheatsheet', 'Detailed revision cheatsheet: National symbols and civic values.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 25)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-citizenship-human-rights-and-social-justice', 'Citizenship Education', 'Human Rights & Social Justice Cheatsheet', 'Detailed revision cheatsheet: Human rights and social justice.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-logic-propositions-and-truth-values', 'Logic', 'Propositions & Truth Values Cheatsheet', 'Detailed revision cheatsheet: Propositions and truth values.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-logic-logical-connectives', 'Logic', 'Logical Connectives Cheatsheet', 'Detailed revision cheatsheet: Logical connectives.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-logic-syllogisms-and-arguments', 'Logic', 'Syllogisms & Arguments Cheatsheet', 'Detailed revision cheatsheet: Syllogisms and arguments.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-logic-fallacies-and-reasoning', 'Logic', 'Fallacies & Reasoning Cheatsheet', 'Detailed revision cheatsheet: Fallacies and reasoning.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-geography-map-reading-and-interpretation', 'Geography', 'Map Reading & Interpretation Cheatsheet', 'Detailed revision cheatsheet: Map reading and interpretation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-geography-physical-geography', 'Geography', 'Physical Geography Cheatsheet', 'Detailed revision cheatsheet: Physical geography.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-geography-climate-and-weather', 'Geography', 'Climate & Weather Cheatsheet', 'Detailed revision cheatsheet: Climate and weather.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-geography-population-and-settlement', 'Geography', 'Population & Settlement Cheatsheet', 'Detailed revision cheatsheet: Population and settlement.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-geography-economic-geography', 'Geography', 'Economic Geography Cheatsheet', 'Detailed revision cheatsheet: Economic geography.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-history-pre-colonial-africa', 'History', 'Pre-Colonial Africa Cheatsheet', 'Detailed revision cheatsheet: Pre-colonial Africa.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-history-colonialism-in-africa', 'History', 'Colonialism in Africa Cheatsheet', 'Detailed revision cheatsheet: Colonialism in Africa.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-history-independence-movements', 'History', 'Independence Movements Cheatsheet', 'Detailed revision cheatsheet: Independence movements.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-history-cameroon-history', 'History', 'Cameroon History Cheatsheet', 'Detailed revision cheatsheet: Cameroon history.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-history-world-history', 'History', 'World History Cheatsheet', 'Detailed revision cheatsheet: World history.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-economics-basic-economic-concepts', 'Economics', 'Basic Economic Concepts Cheatsheet', 'Detailed revision cheatsheet: Basic economic concepts.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-economics-demand-and-supply', 'Economics', 'Demand & Supply Cheatsheet', 'Detailed revision cheatsheet: Demand and supply.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-economics-production-and-costs', 'Economics', 'Production & Costs Cheatsheet', 'Detailed revision cheatsheet: Production and costs.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-economics-money-and-banking', 'Economics', 'Money & Banking Cheatsheet', 'Detailed revision cheatsheet: Money and banking.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-economics-international-trade', 'Economics', 'International Trade Cheatsheet', 'Detailed revision cheatsheet: International trade.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-commerce-trade-and-its-types', 'Commerce', 'Trade & Its Types Cheatsheet', 'Detailed revision cheatsheet: Trade and its types.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-commerce-aids-to-trade', 'Commerce', 'Aids to Trade Cheatsheet', 'Detailed revision cheatsheet: Aids to trade.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-commerce-business-documents', 'Commerce', 'Business Documents Cheatsheet', 'Detailed revision cheatsheet: Business documents.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-commerce-methods-of-payment', 'Commerce', 'Methods of Payment Cheatsheet', 'Detailed revision cheatsheet: Methods of payment.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-accounting-the-accounting-equation', 'Accounting', 'The Accounting Equation Cheatsheet', 'Detailed revision cheatsheet: The accounting equation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-accounting-double-entry-bookkeeping', 'Accounting', 'Double Entry Bookkeeping Cheatsheet', 'Detailed revision cheatsheet: Double entry bookkeeping.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-accounting-final-accounts', 'Accounting', 'Final Accounts Cheatsheet', 'Detailed revision cheatsheet: Final accounts.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-accounting-depreciation', 'Accounting', 'Depreciation Cheatsheet', 'Detailed revision cheatsheet: Depreciation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-business-studies-forms-of-business-organisation', 'Business Studies', 'Forms of Business Organisation Cheatsheet', 'Detailed revision cheatsheet: Forms of business organisation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-business-studies-marketing', 'Business Studies', 'Marketing Cheatsheet', 'Detailed revision cheatsheet: Marketing.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-business-studies-production-and-operations', 'Business Studies', 'Production & Operations Cheatsheet', 'Detailed revision cheatsheet: Production and operations.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-business-studies-business-finance', 'Business Studies', 'Business Finance Cheatsheet', 'Detailed revision cheatsheet: Business finance.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-computer-science-computer-hardware', 'Computer Science', 'Computer Hardware Cheatsheet', 'Detailed revision cheatsheet: Computer hardware.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-computer-science-software-and-operating-systems', 'Computer Science', 'Software & Operating Systems Cheatsheet', 'Detailed revision cheatsheet: Software and operating systems.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-computer-science-data-representation', 'Computer Science', 'Data Representation Cheatsheet', 'Detailed revision cheatsheet: Data representation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-computer-science-networks-and-the-internet', 'Computer Science', 'Networks & the Internet Cheatsheet', 'Detailed revision cheatsheet: Networks and the internet.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-computer-science-programming-fundamentals', 'Computer Science', 'Programming Fundamentals Cheatsheet', 'Detailed revision cheatsheet: Programming fundamentals.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 35)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-ict-ict-in-everyday-life', 'ICT', 'ICT in Everyday Life Cheatsheet', 'Detailed revision cheatsheet: ICT in everyday life.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-ict-word-processing-and-spreadsheets', 'ICT', 'Word Processing & Spreadsheets Cheatsheet', 'Detailed revision cheatsheet: Word processing and spreadsheets.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-ict-databases', 'ICT', 'Databases Cheatsheet', 'Detailed revision cheatsheet: Databases.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ordinary-ict-internet-safety-and-security', 'ICT', 'Internet Safety & Security Cheatsheet', 'Detailed revision cheatsheet: Internet safety and security.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('692e9639-caa1-64d0-4a18-3cc2bd0056fc'::uuid, 'cheat-ordinary-math-number-and-operations', 'Mathematics', 'Number & Operations Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Number & Operations Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Number work is the foundation of the whole GCE Mathematics paper. Almost every question — algebra, mensuration, statistics — quietly depends on you being able to compute accurately. A single arithmetic slip can cost you the marks even when your method is perfect, so examiners deliberately plant arithmetic traps.

## Core concepts

### BODMAS — the order of operations
Brackets → Orders (powers/roots) → Division and Multiplication (left to right) → Addition and Subtraction (left to right).

**Worked example:** \(-8 + 12 \div (-4) \times (-3)\)
1. Division first: \(12 \div (-4) = -3\)
2. Multiplication: \(-3 \times (-3) = 9\)
3. Addition: \(-8 + 9 = 1\)

### Directed numbers
- Same signs multiply/divide to a **positive**: \((-3) \times (-4) = 12\)
- Different signs multiply/divide to a **negative**: \((-3) \times 4 = -12\)
- When subtracting, add the opposite: \(5 - (-3) = 5 + 3 = 8\)

### Fractions
- **Add/subtract:** use a common denominator. \(\frac{1}{3} + \frac{1}{4} = \frac{4+3}{12} = \frac{7}{12}\)
- **Multiply:** cancel first, then multiply tops and bottoms.
- **Divide:** flip the second fraction and multiply. \(\frac{2}{3} \div \frac{4}{5} = \frac{2}{3} \times \frac{5}{4} = \frac{10}{12} = \frac{5}{6}\)

### Percentages
- Percentage change \(= \frac{\text{change}}{\text{original}} \times 100\)
- **Profit:** a trader buys a bag of rice at 25,000 FCFA and sells at 30,000 FCFA. Change = 5,000. \(\frac{5000}{25000} \times 100 = 20\%\)
- **Reverse percentage:** after a 10% discount the price is 18,000 FCFA. Original \(= \frac{18000}{0.9} = 20,000\) FCFA. (Divide by 0.9, NOT multiply by 1.1!)

### Ratio
Total ÷ total parts = value of one part.
**Example:** share 40,000 FCFA in the ratio 3 : 5. Total parts = 8. One part = 5,000. Shares = 15,000 and 25,000.

### Standard form
\(A \times 10^n\) where \(1 \le A < 10\).
- \(45,600 = 4.56 \times 10^4\)
- \(0.0000439 = 4.39 \times 10^{-5}\)

### Indices
| Rule | Example |
|---|---|
| \(a^m \times a^n = a^{m+n}\) | \(2^3 \times 2^4 = 2^7\) |
| \(a^m \div a^n = a^{m-n}\) | \(2^7 \div 2^3 = 2^4\) |
| \((a^m)^n = a^{mn}\) | \((2^3)^2 = 2^6\) |
| \(a^0 = 1\) | \(7^0 = 1\) |
| \(a^{-n} = \frac{1}{a^n}\) | \(2^{-3} = \frac{1}{8}\) |
| \(a^{1/n} = \sqrt[n]{a}\) | \(16^{1/4} = 2\) |

### Rounding
- **Decimal places (d.p.):** count digits after the point.
- **Significant figures (s.f.):** count digits from the first non-zero digit. \(0.00456\) to 2 s.f. = \(0.0046\).

## Common mistakes & exam traps

- \((-2)^2 = 4\) but \(-2^2 = -4\). The brackets change everything.
- \((x+4)^2 \ne x^2 + 16\). It is \(x^2 + 8x + 16\).
- \(0.5^{-1} = 2\) — a negative index flips the fraction.
- **Estimate first:** \(0.048 \times 391 \approx 0.05 \times 400 = 20\). If your exact answer is far from the estimate, you slipped.
- When a question says "give your answer correct to 3 significant figures", the marks include the rounding — write the rounded value, not the raw one.

## Exam technique

1. Write every step. Method marks are awarded even if the final answer is wrong.
2. For word problems, first identify what is being asked (find, share, compare, convert).
3. Check units — FCFA, kg, m, hours. Convert before calculating.
4. Always sanity-check: is the answer sensible? A person cannot weigh 5,000 kg.

## Memory hooks

- **BODMAS:** "Big Old Dogs Make Awkward Sounds" — or make your own.
- **Negative × negative:** "Two wrongs make a right."
- **Standard form:** the power tells you how many places the decimal point moved.

## Quick practice

1. Evaluate \(-8 + 12 \div (-4) \times (-3)\). **[1]**
2. Write \(0.0000439\) in standard form. **[4.39 × 10⁻⁵]**
3. Share 40,000 FCFA in the ratio 3 : 5. **[15,000 : 25,000]**
4. A radio costs 12,000 FCFA after a 20% discount. What was the original price? **[15,000 FCFA]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ae71878d-dad6-97b7-80d3-8c4ecf9aa979'::uuid, 'cheat-ordinary-math-algebra-and-equations', 'Mathematics', 'Algebra & Equations Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Algebra & Equations Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Algebra is the single most heavily tested area of GCE Ordinary Level Mathematics. It appears in Paper 1 (multiple choice) and Paper 2 (structured) every year, and it is the gateway to graphs, mensuration and statistics. Master the manipulation below and you unlock most of the paper.

## Core concepts

### Expansion
- \((a+b)^2 = a^2 + 2ab + b^2\)
- \((a-b)^2 = a^2 - 2ab + b^2\)
- \((a+b)(a-b) = a^2 - b^2\) (difference of two squares)

### Factorisation
1. Take out the **common factor** first: \(2x^2 - 8x = 2x(x-4)\).
2. For quadratics \(x^2 + bx + c\): find two numbers that **multiply to c** and **add to b**.
   - \(x^2 - 5x + 6\): numbers −2 and −3 → \((x-2)(x-3)\).
3. For \(ax^2 + bx + c\) where \(a \ne 1\): use the product-sum method or the quadratic formula.

### Solving linear equations
Collect \(x\) terms on one side, numbers on the other, then divide.
\(3x + 5 = 20 \rightarrow 3x = 15 \rightarrow x = 5\).

### Inequalities
Solve like equations, but **flip the sign when multiplying or dividing by a negative**.
\(-2x > 6 \rightarrow x < -3\).

### Simultaneous equations
- **Elimination:** make the coefficients of one variable equal, then add or subtract.
- **Substitution:** rearrange one equation and substitute into the other.
- Always check your answer in **both** original equations.

**Worked example:** \(3x + 2y = 21\) and \(x - y = 1\).
1. From the second: \(x = y + 1\).
2. Substitute: \(3(y+1) + 2y = 21 \rightarrow 5y + 3 = 21 \rightarrow y = 3.6\).
3. \(x = 4.6\). Check: \(3(4.6) + 2(3.6) = 13.8 + 7.2 = 21\) ✓

### Quadratic formula
For \(ax^2 + bx + c = 0\):
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$
The discriminant \(b^2 - 4ac\) tells you the nature of the roots:
- \(> 0\): two distinct real roots
- \(= 0\): one repeated root
- \(< 0\): no real roots

### Changing the subject
Isolate the target letter step by step, doing the same operation to both sides.
**Example:** make \(t\) the subject of \(s = ut + \frac{1}{2}at^2\):
\(\frac{1}{2}at^2 + ut - s = 0\) → use the quadratic formula:
$$t = \frac{-u \pm \sqrt{u^2 + 2as}}{a}$$

## Common mistakes & exam traps

- \(-2x > 6 \rightarrow x < -3\) — forgetting to flip the inequality sign.
- Checking the answer in only ONE equation — a wrong pair can satisfy one.
- \(2x^2 - 8x = 2x(x-4)\), not just \((x-4)\) — "factorise fully" means take out everything.
- Losing a negative sign when subtracting: \(3x - (2x - 4) = 3x - 2x + 4\).

## Exam technique

1. For "solve" questions, always substitute your answer back to check.
2. For word problems, define the unknown first: "Let x be the number of bags."
3. If a quadratic won''t factorise, use the formula — but write the formula down first for method marks.
4. GCE answers are usually whole numbers. If you get a fraction that looks ugly, recheck your working.

## Memory hooks

- **Difference of two squares:** "Same terms, opposite signs, square each, minus between."
- **Quadratic formula:** "Minus b, plus or minus, the square root of b squared minus 4ac, all over 2a."

## Quick practice

1. Solve \(3x + 2y = 21\), \(x - y = 1\). **[x = 4.6, y = 3.6]**
2. Factorise \(x^2 - 5x + 6\). **[(x − 2)(x − 3)]**
3. Solve \(2x^2 - 3x - 5 = 0\) using the formula. **[x = 2.5 or x = −1]**
4. Make \(r\) the subject of \(A = \pi r^2\). **[r = √(A/π)]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('42809c50-c914-e114-ebe8-ee057792ca61'::uuid, 'cheat-ordinary-math-geometry-and-mensuration', 'Mathematics', 'Geometry & Mensuration Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Geometry & Mensuration Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Geometry and mensuration questions are guaranteed on the GCE paper and are among the most "mark-able" — the method is clear and the working is easy to show. Circle theorems and area/volume formulas are favourites because they test whether you can quote a rule and apply it correctly.

## Core concepts

### Angle facts
- Straight line: 180°. Full turn: 360°. Vertically opposite angles are equal.
- Parallel lines: alternate angles (Z-shape) equal; corresponding angles (F-shape) equal; co-interior angles (C-shape) sum to 180°.
- Triangle: angles sum to 180°. Quadrilateral: 360°.
- Polygon: interior angle sum \(= (n-2) \times 180°\). Each exterior angle of a regular polygon \(= \frac{360°}{n}\).

### Circle theorems (quote by name!)
1. **Angle at centre** = 2 × angle at circumference (same arc).
2. **Angle in a semicircle** = 90°.
3. **Angles in the same segment** are equal.
4. **Cyclic quadrilateral:** opposite angles sum to 180°.
5. **Tangent ⊥ radius** at the point of contact.
6. **Alternate segment theorem:** angle between tangent and chord equals the angle in the alternate segment.

### Mensuration formulas
| Shape | Formula |
|---|---|
| Rectangle | \(A = l \times w\) |
| Triangle | \(A = \frac{1}{2}bh\) |
| Trapezium | \(A = \frac{1}{2}(a+b)h\) |
| Circle | \(A = \pi r^2\), \(C = 2\pi r\) |
| Cylinder | \(V = \pi r^2 h\), \(SA = 2\pi r^2 + 2\pi rh\) |
| Cone | \(V = \frac{1}{3}\pi r^2 h\) |
| Sphere | \(V = \frac{4}{3}\pi r^3\), \(SA = 4\pi r^2\) |
| Prism | \(V = \text{cross-section area} \times \text{length}\) |

### Unit conversions
- \(1\,m^2 = 10,000\,cm^2\) (×100 twice)
- \(1\,m^3 = 1,000,000\,cm^3\) (×100 three times)
- \(1\,litre = 1000\,cm^3\)

### Similarity and scale
- Lengths scale by factor \(k\), areas by \(k^2\), volumes by \(k^3\).
- If a map is 1 : 50,000, then 1 cm on the map = 50,000 cm = 500 m on the ground.

## Common mistakes & exam traps

- Using the wrong formula for a cylinder''s surface area (forgetting the two circles).
- Mixing up radius and diameter — always halve the diameter first.
- For \(\pi\), GCE often says "take \(\pi = \frac{22}{7}\)" — use the value they give.
- For similar shapes, squaring/cubing the wrong factor: areas use \(k^2\), volumes use \(k^3\).

## Exam technique

1. In circle theorem questions, **name the theorem** you are using — it earns the mark.
2. Draw the diagram again on your answer sheet and mark the given angles.
3. For compound shapes, split into simple shapes, find each area, then add or subtract.
4. State the formula before substituting — method marks.

## Memory hooks

- **Polygon angles:** "n minus 2, times 180."
- **Circle theorems:** "Centre is double, semicircle is right, same segment equal, cyclic adds to 180."

## Quick practice

1. A pentagon has angles \(x, x+10, x+20, x+30, x+40\). Find \(x\). **[96°]**
2. A cone has radius 7 cm and height 24 cm. Take \(\pi = \frac{22}{7}\). Find its volume. **[1232 cm³]**
3. A cylindrical tank has radius 1.2 m and height 2.5 m. How many litres does it hold? **[≈11,300 L]**
4. Two similar triangles have areas 9 cm² and 36 cm². What is the scale factor of their sides? **[2]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a72d61d8-71cb-8c24-bc12-3c09b17b5cdc'::uuid, 'cheat-ordinary-math-trigonometry', 'Mathematics', 'Trigonometry Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Trigonometry Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Trigonometry turns up every year in GCE Ordinary Level Mathematics — usually as a right-angled triangle problem (ladders, towers, angles of elevation/depression) and sometimes as a non-right-angled triangle using the sine and cosine rules. It is also the bridge to bearings and vectors.

## Core concepts

### Pythagoras'' theorem
For a right-angled triangle: \(a^2 + b^2 = c^2\) where \(c\) is the hypotenuse.
**Example:** sides 6 cm and 8 cm → \(c^2 = 36 + 64 = 100\) → \(c = 10\) cm.

### SOHCAHTOA
- \(\sin \theta = \frac{\text{opposite}}{\text{hypotenuse}}\)
- \(\cos \theta = \frac{\text{adjacent}}{\text{hypotenuse}}\)
- \(\tan \theta = \frac{\text{opposite}}{\text{adjacent}}\)

### Angles of elevation and depression
- **Elevation:** looking UP from the horizontal.
- **Depression:** looking DOWN from the horizontal.
- The angle is always measured from the **horizontal**, never the vertical.

**Worked example:** A ladder 6 m long leans against a wall at 70° to the ground. How high up the wall does it reach?
\(\text{height} = 6 \sin 70° = 6 \times 0.9397 = 5.64\) m.

### The sine rule (any triangle)
$$\frac{a}{\sin A} = \frac{b}{\sin B} = \frac{c}{\sin C}$$
Use when you know two angles and one side, or two sides and a non-included angle.

### The cosine rule (any triangle)
$$c^2 = a^2 + b^2 - 2ab\cos C$$
Use when you know two sides and the included angle, or all three sides.

### Area of a triangle
$$\text{Area} = \frac{1}{2}ab\sin C$$

**Worked example:** \(a = 8\), \(b = 5\), \(C = 60°\).
\(c^2 = 64 + 25 - 2(8)(5)\cos 60° = 89 - 40 = 49\) → \(c = 7\).

## Common mistakes & exam traps

- Calculator left in RADIAN mode — GCE uses **degrees**. Always check the DEG indicator.
- Measuring the depression angle from the vertical instead of the horizontal.
- Using SOHCAHTOA on a non-right-angled triangle — use sine/cosine rules instead.
- Forgetting to take the square root at the end of Pythagoras.

## Exam technique

1. Draw and label the triangle first. Mark the right angle.
2. Decide which rule applies: right angle → SOHCAHTOA; two angles + side → sine rule; two sides + included angle → cosine rule.
3. Write the formula, substitute, then calculate.
4. Give answers to the accuracy requested (usually 3 s.f. or 1 d.p.).

## Memory hooks

- **SOHCAHTOA:** "Some Old Horses Chew Apples Happily Through Old Age."
- **Sine rule:** "Side over sine — all equal."
- **Cosine rule:** "c squared equals a squared plus b squared minus 2ab cos C."

## Quick practice

1. A ladder 6 m long makes 70° with the ground. How high does it reach? **[5.64 m]**
2. From a tower 40 m high, the angle of depression of a car is 28°. How far is the car from the tower''s base? **[40/tan28° ≈ 75.2 m]**
3. In triangle ABC, \(a = 8\), \(b = 5\), \(C = 60°\). Find \(c\). **[7]**
4. A right triangle has legs 9 cm and 12 cm. Find the hypotenuse. **[15 cm]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('7b93d6ca-cca9-f3f6-d7f7-d72815a47e85'::uuid, 'cheat-ordinary-math-statistics-and-probability', 'Mathematics', 'Statistics & Probability Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Statistics & Probability Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Statistics and probability are reliable marks on the GCE paper. The calculations are straightforward once you know the definitions, and examiners love frequency tables, mean/median/mode, and simple probability with everyday Cameroon examples (marbles, students, market produce).

## Core concepts

### Averages and spread
- **Mean** \(= \frac{\Sigma fx}{\Sigma f}\) for a frequency table (sum of value × frequency, divided by total frequency).
- **Median:** the middle value when data is ordered. For \(n\) values, it is the \(\frac{n+1}{2}\)th value.
- **Mode:** the most frequent value.
- **Range** \(= \text{max} - \text{min}\).

**Worked example:** the mean of 5 numbers is 12, so the total is 60. If four numbers are 8, 10, 14, 16 (sum 48), the missing number is \(60 - 48 = 12\).

### Probability basics
- \(P(\text{event}) = \frac{\text{favourable outcomes}}{\text{total outcomes}}\)
- Probabilities always lie between 0 and 1.
- \(P(\text{not A}) = 1 - P(A)\).
- **Independent events:** \(P(A \text{ and } B) = P(A) \times P(B)\).
- **Mutually exclusive:** \(P(A \text{ or } B) = P(A) + P(B)\).
- **General addition:** \(P(A \text{ or } B) = P(A) + P(B) - P(A \text{ and } B)\).

### Venn diagrams
- \(n(A \cup B) = n(A) + n(B) - n(A \cap B)\).
- "Neither" = total − \(n(A \cup B)\).

**Worked example:** 60 students, 38 drink tea, 32 drink coffee, 12 drink both.
\(n(A \cup B) = 38 + 32 - 12 = 58\). Neither = \(60 - 58 = 2\).

## Common mistakes & exam traps

- Forgetting to draw the \(fx\) column — the table itself earns marks.
- Using the wrong total: the denominator is the **total frequency**, not the number of different values.
- Adding probabilities of events that are NOT mutually exclusive (double-counting the overlap).
- For "without replacement", the denominator decreases after each draw.

## Exam technique

1. Always draw the frequency table with an \(fx\) column and a total row.
2. For probability word problems, write the fraction before simplifying.
3. For "at least one" questions, use \(1 - P(\text{none})\).
4. Draw the Venn diagram even if not asked — it organises your thinking.

## Memory hooks

- **Mean:** "Sum of fx over sum of f."
- **Probability:** "Favourable over total."
- **Or = add, And = multiply** (for independent/mutually exclusive cases).

## Quick practice

1. 60 students: 38 tea, 32 coffee, 12 both. How many drink neither? **[2]**
2. The mean of 8, 10, 14, 16, x is 12. Find x. **[12]**
3. \(P(\text{red}) = \frac{3}{8}\), \(P(\text{blue}) = \frac{2}{8}\), independent. Find \(P(\text{both})\). **[6/64 = 3/32]**
4. A bag has 4 red and 6 blue marbles. Two are drawn without replacement. Find \(P(\text{both red})\). **[4/10 × 3/9 = 2/15]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('38e2b6f0-299e-3b49-91bc-9cbcea087762'::uuid, 'cheat-ordinary-math-vectors-and-transformations', 'Mathematics', 'Vectors & Transformations Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Vectors & Transformations Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Vectors and transformations are a compact, high-scoring topic. Once you learn the notation and the four transformations, the questions become mechanical. GCE often combines them — for example, describing a transformation that maps one shape onto another.

## Core concepts

### Vectors
- A vector has **magnitude and direction**; a scalar has only magnitude.
- Column vector \(\binom{x}{y}\): \(x\) right (+)/left (−), \(y\) up (+)/down (−).
- **Addition:** add components. \(\binom{2}{3} + \binom{1}{-4} = \binom{3}{-1}\).
- **Scalar multiplication:** multiply each component. \(3\binom{2}{-1} = \binom{6}{-3}\).
- **Magnitude:** \(|\mathbf{v}| = \sqrt{x^2 + y^2}\).
- **Parallel vectors:** one is a scalar multiple of the other.

### The four transformations
| Transformation | Description | Matrix |
|---|---|---|
| Reflection in x-axis | \((x,y) \to (x,-y)\) | \(\begin{pmatrix}1&0\\0&-1\end{pmatrix}\) |
| Reflection in y-axis | \((x,y) \to (-x,y)\) | \(\begin{pmatrix}-1&0\\0&1\end{pmatrix}\) |
| Rotation 90° anticlockwise | \((x,y) \to (-y,x)\) | \(\begin{pmatrix}0&-1\\1&0\end{pmatrix}\) |
| Rotation 180° | \((x,y) \to (-x,-y)\) | \(\begin{pmatrix}-1&0\\0&-1\end{pmatrix}\) |
| Enlargement scale k | \((x,y) \to (kx,ky)\) | \(\begin{pmatrix}k&0\\0&k\end{pmatrix}\) |

- **Translation:** add a column vector to every point. The shape does not change size or orientation.
- **Enlargement:** needs a **scale factor** and a **centre of enlargement**. Lines through the centre and each vertex; distances multiply by k.
- **Invariant points:** points that do not move under a transformation.

## Common mistakes & exam traps

- Confusing rotation direction: 90° clockwise \((x,y) \to (y,-x)\), anticlockwise \((x,y) \to (-y,x)\).
- Forgetting the centre of enlargement — "enlarge by scale factor 2" is incomplete without it.
- Describing a transformation without all details: "reflection" needs the mirror line; "rotation" needs angle, direction and centre.
- Adding vectors when you should subtract (e.g. \(\overrightarrow{AB} = \mathbf{b} - \mathbf{a}\)).

## Exam technique

1. For \(\overrightarrow{AB}\), remember: **B minus A**.
2. When describing a transformation, give ALL the details (type, line/centre, scale factor/angle).
3. Draw the image on the grid — a correct diagram earns marks even if your description is imperfect.
4. Check invariant points to verify your transformation.

## Memory hooks

- **AB vector:** "From A to B, do B minus A."
- **Rotation 90° anticlockwise:** "(x, y) becomes (minus y, x)."

## Quick practice

1. \(\mathbf{a} = \binom{3}{-2}\), \(\mathbf{b} = \binom{1}{4}\). Find \(\mathbf{a} + \mathbf{b}\) and \(|\mathbf{a}|\). **[\binom{4}{2}, √13]**
2. Reflect the point (3, 5) in the y-axis. **[(−3, 5)]**
3. Rotate (2, 1) by 90° anticlockwise about the origin. **[(−1, 2)]**
4. Enlarge triangle with vertices (1,1), (2,1), (1,2) by scale factor 2, centre origin. **[(2,2), (4,2), (2,4)]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1205c970-3370-d437-9b51-878a82b1135e'::uuid, 'cheat-ordinary-math-set-theory', 'Mathematics', 'Set Theory Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Set Theory Cheatsheet

> **Exam weight:** high · **Time to master:** 20 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Set theory is a short, self-contained topic that appears early in the GCE paper. It tests clear notation and careful counting. The Venn diagram is the examiner''s favourite tool because it combines set notation with arithmetic.

## Core concepts

### Notation
- \(A = \{1, 2, 3\}\) — a set is a collection of distinct objects.
- \(\in\) means "is an element of": \(2 \in A\).
- \(\notin\) means "is not an element of": \(5 \notin A\).
- \(A \cup B\) — **union**: everything in A or B (or both).
- \(A \cap B\) — **intersection**: everything in both A and B.
- \(A''\) — **complement**: everything NOT in A (within the universal set).
- \(\emptyset\) — the empty set.
- \(n(A)\) — the number of elements in A.

### Key formulas
- \(n(A \cup B) = n(A) + n(B) - n(A \cap B)\)
- \(n(A'') = n(\mathcal{U}) - n(A)\)
- Disjoint sets: \(A \cap B = \emptyset\), so \(n(A \cup B) = n(A) + n(B)\).

### Venn diagrams
Draw a rectangle for the universal set \(\mathcal{U}\), overlapping circles for the sets. Fill in the intersection first, then work outwards.

**Worked example:** In a class of 40 students, 25 play football, 18 play basketball, 10 play both.
- Both: 10. Football only: 15. Basketball only: 8. Neither: \(40 - (15+10+8) = 7\).

## Common mistakes & exam traps

- Counting the intersection twice — always subtract \(n(A \cap B)\).
- Confusing \(\cup\) (union, "cup" holds everything) with \(\cap\) (intersection, "cap" holds the overlap).
- Forgetting the universal set when drawing a Venn diagram.
- Writing \(A \cup B\) when the question means \(A \cap B\).

## Exam technique

1. Fill the Venn diagram from the middle (intersection) outwards.
2. Check that all regions add up to the total.
3. Read the question carefully: "only A" means \(A - (A \cap B)\).

## Memory hooks

- **Union ∪:** "The cup holds everything."
- **Intersection ∩:** "The cap covers the overlap."

## Quick practice

1. \(A = \{1,2,3,4\}\), \(B = \{3,4,5\}\). Find \(A \cup B\) and \(A \cap B\). **[{1,2,3,4,5} and {3,4}]**
2. In a class of 40, 25 play football, 18 play basketball, 10 play both. How many play neither? **[7]**
3. If \(n(\mathcal{U}) = 50\) and \(n(A) = 18\), find \(n(A'')\). **[32]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('62d26ec4-9183-5cbe-3647-04e11df60d98'::uuid, 'cheat-ordinary-math-matrices', 'Mathematics', 'Matrices Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Matrices Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Matrices appear in the later part of the GCE Ordinary Level syllabus. The operations are mechanical — addition, multiplication, determinant, inverse — and the questions reward careful, neat working. Matrix multiplication is the most common source of lost marks.

## Core concepts

### Basics
- A matrix is a rectangular array of numbers. \(\begin{pmatrix}2 & 3\\1 & 4\end{pmatrix}\) is a 2×2 matrix (2 rows, 2 columns).
- **Order:** rows × columns. A 2×3 matrix has 2 rows and 3 columns.

### Addition and subtraction
Only possible when matrices have the **same order**. Add/subtract corresponding elements.

### Scalar multiplication
Multiply every element by the scalar.
\(3\begin{pmatrix}2 & -1\\0 & 4\end{pmatrix} = \begin{pmatrix}6 & -3\\0 & 12\end{pmatrix}\).

### Multiplication
- The number of **columns** of the first must equal the number of **rows** of the second.
- Result order: rows of first × columns of second.
- Multiply row by column: each element is the sum of products.

**Worked example:**
$$\begin{pmatrix}1 & 2\\3 & 4\end{pmatrix}\begin{pmatrix}5 & 6\\7 & 8\end{pmatrix} = \begin{pmatrix}1(5)+2(7) & 1(6)+2(8)\\3(5)+4(7) & 3(6)+4(8)\end{pmatrix} = \begin{pmatrix}19 & 22\\43 & 50\end{pmatrix}$$

### Determinant of a 2×2 matrix
For \(A = \begin{pmatrix}a & b\\c & d\end{pmatrix}\), \(\det(A) = ad - bc\).
If \(ad - bc = 0\), the matrix is **singular** (no inverse).

### Inverse of a 2×2 matrix
$$A^{-1} = \frac{1}{ad-bc}\begin{pmatrix}d & -b\\-c & a\end{pmatrix}$$

**Worked example:** \(A = \begin{pmatrix}2 & 3\\1 & 4\end{pmatrix}\). \(\det = 8 - 3 = 5\).
$$A^{-1} = \frac{1}{5}\begin{pmatrix}4 & -3\\-1 & 2\end{pmatrix}$$

### Identity matrix
\(I = \begin{pmatrix}1 & 0\\0 & 1\end{pmatrix}\). \(AI = IA = A\).

## Common mistakes & exam traps

- **Matrix multiplication is NOT commutative:** \(AB \ne BA\) in general.
- Multiplying in the wrong order — the row of the first multiplies the column of the second.
- Forgetting the sign changes in the inverse (swap a and d, negate b and c).
- Dividing by a zero determinant — a singular matrix has no inverse.

## Exam technique

1. Write the matrices clearly and keep rows/columns aligned.
2. For multiplication, check the orders first: (m×n)(n×p) → m×p.
3. To solve \(AX = B\), multiply both sides by \(A^{-1}\) on the LEFT: \(X = A^{-1}B\).
4. Verify by multiplying \(A A^{-1}\) — you should get \(I\).

## Memory hooks

- **Inverse:** "Swap the diagonal, negate the other, divide by the determinant."
- **Multiplication:** "Row of first, column of second."

## Quick practice

1. \(A = \begin{pmatrix}1 & 2\\3 & 4\end{pmatrix}\), \(B = \begin{pmatrix}5 & 6\\7 & 8\end{pmatrix}\). Find \(AB\). **[\begin{pmatrix}19 & 22\\43 & 50\end{pmatrix}]**
2. Find the determinant of \(\begin{pmatrix}2 & 3\\1 & 4\end{pmatrix}\). **[5]**
3. Find the inverse of \(\begin{pmatrix}2 & 3\\1 & 4\end{pmatrix}\). **[1/5 \begin{pmatrix}4 & −3\\−1 & 2\end{pmatrix}]**
4. Is \(\begin{pmatrix}2 & 4\\1 & 2\end{pmatrix}\) singular? **[Yes, det = 0]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('998e1dfe-a496-83c5-457a-dd687bdf296f'::uuid, 'cheat-ordinary-amath-factor-and-remainder-theorem', 'Additional Mathematics', 'Factor & Remainder Theorem Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Factor & Remainder Theorem Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

The factor and remainder theorems are the standard route into solving cubic and higher-degree polynomial equations — a guaranteed feature of the Additional Mathematics paper. They also connect to curve sketching and to finding where a curve crosses the x-axis.

## Core concepts

### The remainder theorem
When a polynomial \(f(x)\) is divided by \((x - a)\), the remainder is \(f(a)\).
**Example:** \(f(x) = x^3 - 2x + 1\). Divide by \((x - 1)\): remainder \(= f(1) = 1 - 2 + 1 = 0\).

### The factor theorem
\((x - a)\) is a factor of \(f(x)\) **if and only if** \(f(a) = 0\).
This means \(a\) is a root of the equation \(f(x) = 0\).

### Solving a cubic — the standard method
1. Find one root by **inspection** (try ±1, ±2, ±3 — factors of the constant term).
2. Divide the cubic by the corresponding factor (long division or synthetic division).
3. Factorise the resulting quadratic.
4. Write all three roots.

**Worked example:** solve \(x^3 - 6x^2 + 11x - 6 = 0\).
1. Try \(x = 1\): \(1 - 6 + 11 - 6 = 0\) ✓ so \((x-1)\) is a factor.
2. Divide: \(x^3 - 6x^2 + 11x - 6 = (x-1)(x^2 - 5x + 6)\).
3. Factorise: \((x-1)(x-2)(x-3)\).
4. Roots: \(x = 1, 2, 3\).

### Finding unknown coefficients
If \((x - a)\) is a factor, substitute \(x = a\) and set the result to zero to form an equation in the unknown coefficient.

**Worked example:** \(f(x) = x^3 + ax^2 - 5x + b\) has factors \((x-2)\) and \((x+1)\).
- \(f(2) = 8 + 4a - 10 + b = 0\) → \(4a + b = 2\).
- \(f(-1) = -1 + a + 5 + b = 0\) → \(a + b = -4\).
- Solving: \(a = 2\), \(b = -6\).

## Common mistakes & exam traps

- Trying only positive values when inspecting roots — negative roots are common.
- Forgetting that \((x + 1)\) is a factor means \(f(-1) = 0\), not \(f(1) = 0\).
- Making arithmetic slips in long division — check by multiplying back.
- Writing "x = 1 is a factor" — factors are expressions, roots are values.

## Exam technique

1. Always test the factors of the constant term first.
2. Show the substitution \(f(a) = 0\) explicitly — it earns the method mark.
3. After dividing, check the quadratic factorises; if not, use the quadratic formula.
4. Verify your roots by substituting back into the original cubic.

## Memory hooks

- **Factor theorem:** "If f(a) = 0, then (x − a) is a factor — zero in, factor out."
- **Remainder theorem:** "Divide by (x − a), the remainder is f(a)."

## Quick practice

1. \(f(x) = x^3 + ax^2 - 5x + b\) has factors \((x-2)\) and \((x+1)\). Find a and b. **[a = 2, b = −6]**
2. Solve \(x^3 - 2x^2 - 5x + 6 = 0\). **[x = −2, 1, 3]**
3. Find the remainder when \(x^3 - 3x + 2\) is divided by \((x - 2)\). **[4]**
4. Show that \((x + 2)\) is a factor of \(x^3 + 3x^2 - 4\). **[f(−2) = −8 + 12 − 4 = 0]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('99696e9b-d727-44fa-352f-1ccfe1a46568'::uuid, 'cheat-ordinary-amath-differentiation', 'Additional Mathematics', 'Differentiation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Differentiation Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Differentiation is the heart of Additional Mathematics. It appears in nearly every paper — as a direct "differentiate this" question, as a tangent/normal problem, as a stationary-points question, and as a rates-of-change application. It is also the foundation for the calculus you will meet at A-Level.

## Core concepts

### Standard results
| Function | Derivative |
|---|---|
| \(x^n\) | \(nx^{n-1}\) |
| \(\sin x\) | \(\cos x\) |
| \(\cos x\) | \(-\sin x\) |
| \(e^x\) | \(e^x\) |
| \(\ln x\) | \(\frac{1}{x}\) |
| \(kx\) | \(k\) |
| constant | 0 |

### Rules
- **Chain rule:** \(\frac{dy}{dx} = \frac{dy}{du} \times \frac{du}{dx}\).
- **Product rule:** \(\frac{d}{dx}(uv) = u''v + uv''\).
- **Quotient rule:** \(\frac{d}{dx}\left(\frac{u}{v}\right) = \frac{u''v - uv''}{v^2}\).

### Differentiation from first principles
$$f''(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$$
GCE sometimes asks for this for a simple function like \(f(x) = x^2\):
$$f''(x) = \lim_{h \to 0} \frac{(x+h)^2 - x^2}{h} = \lim_{h \to 0} \frac{2xh + h^2}{h} = 2x$$

### Tangents and normals
- **Tangent** at \(x = a\): gradient \(= f''(a)\).
- **Normal:** perpendicular, gradient \(= -\frac{1}{f''(a)}\).

**Worked example:** \(y = x^3 - 2x\) at \(x = 1\).
\(\frac{dy}{dx} = 3x^2 - 2 = 1\). Point: \((1, -1)\). Tangent: \(y + 1 = 1(x - 1)\) → \(y = x - 2\).

### Stationary points
- Solve \(\frac{dy}{dx} = 0\).
- Classify using \(\frac{d^2y}{dx^2}\): positive → minimum, negative → maximum, zero → point of inflection (check sign change).

### Rates of change
\(\frac{dy}{dt} = \frac{dy}{dx} \times \frac{dx}{dt}\) (chain rule).

## Common mistakes & exam traps

- Forgetting the chain rule on \((2x+1)^5\) — you must multiply by the derivative of the inside.
- Using the product rule when you should expand first (expanding is often simpler).
- Confusing maximum and minimum — check the sign of \(\frac{d^2y}{dx^2}\).
- For normals, forgetting the negative reciprocal of the gradient.

## Exam technique

1. Write \(\frac{dy}{dx} = ...\) before differentiating — method marks.
2. For stationary points, always find the y-coordinate too (substitute x back).
3. For "maximum/minimum" word problems, define the variable, form the expression, differentiate, set to zero, and verify the nature.
4. Check units in rates-of-change problems.

## Memory hooks

- **Power rule:** "Bring the power down, reduce it by one."
- **Normal gradient:** "Flip and negate."

## Quick practice

1. Differentiate from first principles \(f(x) = x^2\). **[2x]**
2. Find the maximum point of \(y = x^3 - 3x\) on \([-2, 2]\). **[Maximum at x = −1, y = 2]**
3. Find the normal to \(y = x^2 - 3x\) at \(x = 2\). **[Gradient of tangent = 1, normal gradient = −1]**
4. Differentiate \(y = (3x + 1)^4\). **[12(3x+1)³]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('89c8d7e5-0507-9d62-d706-dc6a7b7cbd50'::uuid, 'cheat-ordinary-amath-integration', 'Additional Mathematics', 'Integration Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Integration Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Integration is the inverse of differentiation and the second pillar of Additional Mathematics calculus. It is tested as indefinite integrals, definite integrals, and area-under-curve problems. The area question is a near-certainty on the paper.

## Core concepts

### Standard integrals
| Function | Integral |
|---|---|
| \(x^n\) | \(\frac{x^{n+1}}{n+1} + c\), \(n \ne -1\) |
| \(\frac{1}{x}\) | \(\ln|x| + c\) |
| \(\sin x\) | \(-\cos x + c\) |
| \(\cos x\) | \(\sin x + c\) |
| \(e^x\) | \(e^x + c\) |
| \(k\) | \(kx + c\) |

### Indefinite vs definite
- Indefinite: \(\int f(x)\,dx\) — always add \(+c\).
- Definite: \(\int_a^b f(x)\,dx = [F(x)]_a^b = F(b) - F(a)\).

**Worked example:** \(\int_0^3 x^2\,dx = \left[\frac{x^3}{3}\right]_0^3 = \frac{27}{3} - 0 = 9\).

### Area under a curve
- Area between curve and x-axis: \(\int_a^b y\,dx\).
- **Check whether the curve crosses the axis** — split the interval where the sign changes, otherwise areas cancel.
- Area between two curves: \(\int (\text{upper} - \text{lower})\,dx\) over the intersection points.

**Worked example:** area between \(y = x\) and \(y = x^2\).
Intersections: \(x = x^2\) → \(x = 0, 1\).
$$\int_0^1 (x - x^2)\,dx = \left[\frac{x^2}{2} - \frac{x^3}{3}\right]_0^1 = \frac{1}{2} - \frac{1}{3} = \frac{1}{6}$$

### Kinematics link
- \(v = \frac{ds}{dt}\), \(a = \frac{dv}{dt}\).
- \(s = \int v\,dt\), \(v = \int a\,dt\).
- A body is **at rest** when \(v = 0\).

## Common mistakes & exam traps

- Forgetting the \(+c\) on indefinite integrals — a guaranteed lost mark.
- Forgetting to check if the curve crosses the x-axis before finding an area.
- Subtracting the wrong way round — always upper minus lower.
- Integrating \(\frac{1}{x}\) as \(\ln x\) without the absolute value.

## Exam technique

1. **Check by differentiating** your answer — if you get the integrand back, you are right.
2. For area problems, sketch the curve first.
3. Write the integral with limits clearly before evaluating.
4. For kinematics, integrate with initial conditions to find the constant.

## Memory hooks

- **Integration:** "Add one to the power, divide by the new power."
- **Area between curves:** "Top minus bottom."

## Quick practice

1. Evaluate \(\int_1^4 (2\sqrt{x} + 3x)\,dx\). **[≈51.8]**
2. Find the area between \(y = x\) and \(y = x^2\). **[1/6]**
3. A particle moves with \(v = t^3 - 6t^2\). When is it at rest? **[t = 0 and t = 6]**
4. Integrate \(\int (3x^2 + 2x + 1)\,dx\). **[x³ + x² + x + c]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('607396cf-759e-8e32-0587-61d222aee659'::uuid, 'cheat-ordinary-amath-coordinate-geometry', 'Additional Mathematics', 'Coordinate Geometry Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Coordinate Geometry Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Coordinate geometry links algebra and graphs. It covers straight lines, gradients, midpoints, distance, and circles. GCE tests it directly and as a tool inside other questions (e.g. finding where a tangent meets a curve).

## Core concepts

### The straight line
- **Gradient:** \(m = \frac{y_2 - y_1}{x_2 - x_1}\).
- **Equation forms:**
  - \(y = mx + c\) (gradient–intercept)
  - \(y - y_1 = m(x - x_1)\) (point–gradient)
  - \(ax + by + c = 0\) (general form)
- **Parallel lines:** equal gradients.
- **Perpendicular lines:** \(m_1 \times m_2 = -1\).

### Midpoint and distance
- Midpoint: \(\left(\frac{x_1+x_2}{2}, \frac{y_1+y_2}{2}\right)\).
- Distance: \(\sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}\).

### The circle
- Centre \((a,b)\), radius \(r\): \((x-a)^2 + (y-b)^2 = r^2\).
- General form: \(x^2 + y^2 + 2gx + 2fy + c = 0\), centre \((-g, -f)\), radius \(\sqrt{g^2 + f^2 - c}\).
- A tangent to a circle is perpendicular to the radius at the point of contact.

**Worked example:** find the equation of the tangent to \(x^2 + y^2 = 25\) at \((3, 4)\).
Radius gradient \(= \frac{4}{3}\), so tangent gradient \(= -\frac{3}{4}\).
\(y - 4 = -\frac{3}{4}(x - 3)\) → \(3x + 4y = 25\).

### Intersections
- Line meets curve: substitute the line into the curve and solve.
- The discriminant tells you the number of intersections (2, 1 tangent, or 0).

## Common mistakes & exam traps

- Using the wrong gradient formula (subtracting in the wrong order).
- Forgetting that perpendicular gradients multiply to −1.
- Mixing up centre and radius when reading the circle equation.
- For the tangent, using the radius gradient instead of the negative reciprocal.

## Exam technique

1. Sketch the situation — a quick diagram prevents sign errors.
2. For "line meets curve" questions, always substitute and solve systematically.
3. Write the final equation in the form requested (often \(ax + by + c = 0\)).
4. Check your answer by substituting the given point.

## Memory hooks

- **Perpendicular gradients:** "Flip and negate."
- **Circle equation:** "x minus a, squared, plus y minus b, squared, equals r squared."

## Quick practice

1. Find the gradient of the line through (2, 3) and (6, 11). **[2]**
2. Find the midpoint and distance between (1, 2) and (5, 5). **[Midpoint (3, 3.5), distance 5]**
3. Write the equation of the circle with centre (2, −1) and radius 3. **[(x−2)² + (y+1)² = 9]**
4. Find the tangent to \(x^2 + y^2 = 25\) at (3, 4). **[3x + 4y = 25]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('84b08922-bd20-321d-6971-1da846828a9c'::uuid, 'cheat-ordinary-amath-logarithms-and-exponentials', 'Additional Mathematics', 'Logarithms & Exponentials Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Logarithms & Exponentials Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Logarithms are the inverse of exponentials and appear in the Additional Mathematics paper as equations to solve, as simplification exercises, and inside growth/decay applications. They are also essential preparation for A-Level.

## Core concepts

### Definition
\(\log_a x = y\) means \(a^y = x\). "The logarithm is the exponent."
- \(\log_a 1 = 0\) (since \(a^0 = 1\)).
- \(\log_a a = 1\) (since \(a^1 = a\)).

### The laws of logarithms
| Law | Example |
|---|---|
| \(\log_a (xy) = \log_a x + \log_a y\) | \(\log 6 = \log 2 + \log 3\) |
| \(\log_a \left(\frac{x}{y}\right) = \log_a x - \log_a y\) | \(\log \frac{8}{2} = \log 8 - \log 2\) |
| \(\log_a (x^n) = n\log_a x\) | \(\log x^3 = 3\log x\) |
| \(\log_a \frac{1}{x} = -\log_a x\) | \(\log \frac{1}{5} = -\log 5\) |

### Natural logarithms
\(\ln x = \log_e x\), where \(e \approx 2.718\). \(\ln e = 1\), \(\ln 1 = 0\).

### Solving exponential equations
**Example:** solve \(3^x = 20\).
1. Take logs of both sides: \(\log 3^x = \log 20\).
2. \(x\log 3 = \log 20\).
3. \(x = \frac{\log 20}{\log 3} \approx 2.727\).

### Growth and decay
\(N = N_0 e^{kt}\) for growth, \(N = N_0 e^{-kt}\) for decay.
- \(N_0\) is the initial amount, \(k\) the growth/decay constant, \(t\) time.
- **Half-life:** the time for the amount to halve. Solve \(\frac{1}{2} = e^{-kt}\).

## Common mistakes & exam traps

- Writing \(\log(x + y) = \log x + \log y\) — **wrong**. The laws apply to products and quotients only.
- Forgetting that \(\log_a 1 = 0\) and \(\log_a a = 1\).
- Dropping the base when changing between forms.
- Solving \(3^x = 20\) by dividing by 3 — you must take logs.

## Exam technique

1. Isolate the exponential term before taking logs.
2. Use \(\ln\) when the base is \(e\), \(\log_{10}\) otherwise.
3. In growth/decay problems, identify \(N_0\), \(k\), and \(t\) from the question first.
4. Give answers to the requested accuracy (usually 3 s.f.).

## Memory hooks

- **Logarithm:** "The log is the exponent — what power of the base gives the number?"
- **Laws:** "Multiply becomes add, divide becomes subtract, power comes down."

## Quick practice

1. Solve \(3^x = 20\). **[x ≈ 2.727]**
2. Simplify \(\log_2 8 + \log_2 4\). **[5]**
3. Solve \(\ln x = 2\). **[x = e² ≈ 7.39]**
4. A substance decays with \(N = N_0 e^{-0.1t}\). Find its half-life. **[t ≈ 6.93]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('42120599-2b4c-5ff3-ffd5-8b0eba24397b'::uuid, 'cheat-ordinary-amath-series-and-sequences', 'Additional Mathematics', 'Series & Sequences Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Series & Sequences Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Arithmetic and geometric progressions are a compact, reliable topic on the Additional Mathematics paper. The formulas are few and the questions are mechanical once you identify the type of progression. Sum-to-infinity and applications (interest, depreciation) are favourites.

## Core concepts

### Arithmetic progression (AP)
Each term differs by a constant \(d\).
- \(n\)th term: \(u_n = a + (n-1)d\).
- Sum of \(n\) terms: \(S_n = \frac{n}{2}[2a + (n-1)d] = \frac{n}{2}(a + l)\), where \(l\) is the last term.

**Worked example:** AP with \(a = 3\), \(d = 2\). 10th term \(= 3 + 9(2) = 21\). Sum of 10 terms \(= \frac{10}{2}(3 + 21) = 120\).

### Geometric progression (GP)
Each term is multiplied by a constant ratio \(r\).
- \(n\)th term: \(u_n = ar^{n-1}\).
- Sum of \(n\) terms: \(S_n = \frac{a(1 - r^n)}{1 - r}\), \(r \ne 1\).
- **Sum to infinity** (when \(|r| < 1\)): \(S_\infty = \frac{a}{1 - r}\).

**Worked example:** GP with \(a = 4\), \(r = \frac{1}{2}\). Sum to infinity \(= \frac{4}{1 - 1/2} = 8\).

### Applications
- **Compound interest:** \(A = P(1 + r)^n\) — a GP.
- **Depreciation:** \(A = P(1 - r)^n\).
- **Recurring decimals:** \(0.\overline{3} = 0.3 + 0.03 + 0.003 + \cdots = \frac{0.3}{1 - 0.1} = \frac{1}{3}\).

## Common mistakes & exam traps

- Confusing AP and GP — check whether terms are added or multiplied.
- Using the sum formula with the wrong \(n\) (number of terms, not the last term).
- For sum to infinity, forgetting the condition \(|r| < 1\).
- In word problems, misidentifying \(a\) and \(r\) (e.g. 10% increase means \(r = 1.1\), not 0.1).

## Exam technique

1. Write down \(a\), \(d\) or \(r\), and \(n\) before substituting.
2. For "sum of the first n terms", count the terms carefully.
3. For interest problems, \(r = 1 + \frac{\text{rate}}{100}\) for growth.
4. Check whether the question wants the term or the sum.

## Memory hooks

- **AP:** "Add the common difference."
- **GP:** "Multiply by the common ratio."
- **Sum to infinity:** "First term over one minus r."

## Quick practice

1. AP: \(a = 3\), \(d = 2\). Find the 10th term and sum of 10 terms. **[21 and 120]**
2. GP: \(a = 4\), \(r = \frac{1}{2}\). Find the sum to infinity. **[8]**
3. Write \(0.\overline{6}\) as a fraction. **[2/3]**
4. 100,000 FCFA grows at 5% per year. Find the amount after 3 years. **[115,762.50 FCFA]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('456ac3e6-c7f1-9f45-9025-e16d811d1dc2'::uuid, 'cheat-ordinary-phys-measurement', 'Physics', 'Measurement Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Measurement Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Measurement is where the GCE Physics paper begins, and it underpins every practical question. Examiners test base units, prefixes, instrument precision, and the precautions that earn practical marks. Getting the units right here protects you across the whole paper.

## Core concepts

### Base units
| Quantity | Unit | Symbol |
|---|---|---|
| Length | metre | m |
| Mass | kilogram | kg |
| Time | second | s |
| Temperature | kelvin / degree Celsius | K / °C |
| Electric current | ampere | A |

### Prefixes
| Prefix | Meaning | Example |
|---|---|---|
| kilo (k) | ×10³ | 1 km = 1000 m |
| mega (M) | ×10⁶ | 1 MHz = 1,000,000 Hz |
| milli (m) | ×10⁻³ | 250 mA = 0.25 A |
| micro (μ) | ×10⁻⁶ | 1 μm = 0.000001 m |

### Measuring instruments
- **Vernier calipers:** measure to 0.01 cm.
- **Micrometer screw gauge:** measure to 0.001 cm (0.01 mm).
- **Measuring cylinder:** read the **bottom of the meniscus** at eye level.
- **Ruler:** measure to 0.1 cm (1 mm).

### Density
$$\text{Density} = \frac{\text{mass}}{\text{volume}}$$
**Worked example:** a stone of mass 54 g displaces 20 cm³ of water.
\(\rho = \frac{54}{20} = 2.7\,\text{g/cm}^3\).

### Practical precautions (earn marks!)
1. Avoid **parallax error**: view the scale perpendicular to it.
2. **Repeat readings** and average them.
3. Check for **zero error** before using the instrument.
4. Read at eye level.

## Common mistakes & exam traps

- Confusing mass (kg) with weight (N) — weight is a force, \(W = mg\).
- Forgetting to convert units before calculating (e.g. cm³ to m³).
- Reading the top of the meniscus instead of the bottom.
- Writing "measure twice" as a precaution without saying why (repeat and average to reduce random error).

## Exam technique

1. Always state the unit with every answer.
2. For density questions, write the formula, substitute, then calculate.
3. When asked for precautions, give specific, practical ones — not vague statements.
4. Convert prefixes early: 250 mA → 0.25 A before any calculation.

## Memory hooks

- **Density:** "Mass over volume — how tightly packed the matter is."
- **kilo, mega, milli, micro:** "King Midas Made Many Mistakes" (k, M, m, μ).

## Quick practice

1. Convert 3.5 km to metres. **[3500 m]**
2. State two precautions when measuring length with a ruler. **[View perpendicular to the scale; check for zero error]**
3. A block has mass 120 g and volume 40 cm³. Find its density. **[3 g/cm³]**
4. What does a micrometer measure to? **[0.001 cm]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('0402fbd9-f619-6b2e-8000-1cd16df2e02b'::uuid, 'cheat-ordinary-phys-mechanics', 'Physics', 'Mechanics Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Mechanics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Mechanics — motion, forces, energy and pressure — is the biggest single topic on the GCE Ordinary Level Physics paper. It appears in Paper 1 and Paper 2 every year, and the calculations follow a small set of formulas you must know cold.

## Core concepts

### Motion
- Speed \(= \frac{\text{distance}}{\text{time}}\).
- Velocity is speed with direction.
- Acceleration \(= \frac{\Delta v}{t}\).

### The SUVAT equations (constant acceleration)
- \(v = u + at\)
- \(s = ut + \frac{1}{2}at^2\)
- \(v^2 = u^2 + 2as\)

**Worked example:** a car accelerates from 10 m/s to 30 m/s in 5 s.
\(a = \frac{30 - 10}{5} = 4\,\text{m/s}^2\). Distance \(s = 10(5) + \frac{1}{2}(4)(25) = 50 + 50 = 100\) m.

### Forces
- \(F = ma\) (Newton''s second law).
- Weight \(W = mg\), with \(g = 10\,\text{m/s}^2\) on Earth (state this!).
- **Newton''s laws:** (1) a body stays at rest or uniform motion unless acted on by a force; (2) \(F = ma\); (3) action and reaction are equal and opposite.
- Momentum \(= mv\), conserved in collisions.

### Pressure
- \(P = \frac{F}{A}\) in pascals (Pa).
- Liquid pressure \(= \rho gh\).
- **Worked example:** 250 N on 0.05 m² → \(P = \frac{250}{0.05} = 5000\) Pa.

### Hooke''s law
\(F = kx\) — extension is proportional to force, up to the elastic limit.

### Graphs
- **Distance–time:** gradient = speed.
- **Velocity–time:** gradient = acceleration; **area under the graph = distance**.

### Terminal velocity
A falling object accelerates until air resistance equals its weight, then falls at constant velocity.

## Common mistakes & exam traps

- Using \(g = 10\) without stating it — GCE wants you to say "take g = 10 m/s²".
- Confusing distance and displacement.
- Forgetting that the area under a velocity–time graph is distance (not the gradient).
- Mixing up mass and weight: mass in kg, weight in newtons.

## Exam technique

1. List what you know (u, v, a, s, t) and what you need — then pick the SUVAT equation with those letters.
2. Draw the velocity–time graph for motion questions.
3. State the formula before substituting.
4. Check units: force in N, mass in kg, acceleration in m/s².

## Memory hooks

- **SUVAT:** "v = u + at, s = ut + half a t squared, v squared = u squared + 2as."
- **Pressure:** "Force over area — a sharp knife cuts because the area is tiny."

## Quick practice

1. A car goes 10 → 30 m/s in 5 s. Find the acceleration and distance. **[4 m/s², 100 m]**
2. 250 N acts on 0.05 m². Find the pressure. **[5000 Pa]**
3. A car brakes from 25 m/s to rest in 50 m. Find the deceleration. **[−6.25 m/s²]**
4. What is the weight of a 5 kg mass? **[50 N]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('cbf003fc-ede2-74d2-6722-d64e65954931'::uuid, 'cheat-ordinary-phys-thermal-physics', 'Physics', 'Thermal Physics Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Thermal Physics Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Thermal physics covers heat transfer, temperature, and the energy calculations that appear regularly on the GCE paper. The three methods of heat transfer and the \(Q = mc\Delta\theta\) calculation are the core of this topic.

## Core concepts

### Temperature and heat
- **Temperature** is the degree of hotness; **heat** is energy transferred because of a temperature difference.
- Heat flows from hot to cold until temperatures equalise.

### The three methods of heat transfer
| Method | How it works | Best example |
|---|---|---|
| Conduction | Particles vibrate and pass energy along | Metal spoon in hot tea |
| Convection | Hot fluid rises, cool fluid sinks — a current | Boiling water, sea breeze |
| Radiation | Infrared waves, no medium needed | Heat from the sun |

- **Conduction:** metals are best (free electrons). Non-metals and air are poor (insulators).
- **Convection:** hot air/water rises because it is less dense.
- **Radiation:** black, dull surfaces absorb and emit best; white, shiny surfaces reflect.
- A **vacuum flask** defeats all three: vacuum stops conduction + convection, silvered walls reflect radiation.

### Heat calculations
$$Q = mc\Delta\theta$$
- \(Q\) = heat energy (J), \(m\) = mass (kg), \(c\) = specific heat capacity (J/kg°C), \(\Delta\theta\) = temperature change (°C).
- Water: \(c = 4200\,\text{J/kg°C}\).

**Worked example:** heat 2 kg of water from 20°C to 50°C.
\(Q = 2 \times 4200 \times 30 = 252,000\) J.

### Latent heat
Energy absorbed or released at a **change of state** with **no temperature change**.
- Melting/freezing: latent heat of fusion.
- Boiling/condensing: latent heat of vaporisation.
- Sweating cools you because vaporisation takes in latent heat.

## Common mistakes & exam traps

- Saying "heat rises" — it is the hot **fluid** that rises, not heat.
- Forgetting that radiation needs no medium (it travels through a vacuum).
- Using \(\Delta\theta\) in °C but mass in grams — convert to kg.
- Confusing latent heat (no temperature change) with \(Q = mc\Delta\theta\) (temperature change).

## Exam technique

1. For "explain why" questions, name the method of transfer and the mechanism.
2. For calculations, write \(Q = mc\Delta\theta\), substitute, then compute.
3. Give the reason a metal feels hotter than plastic — conduction, not "it is hotter".
4. State the direction of heat flow in every transfer question.

## Memory hooks

- **Conduction:** "Particles pass the shake along."
- **Convection:** "Hot rises, cool sinks, round and round."
- **Radiation:** "No medium needed — the sun reaches us through space."

## Quick practice

1. Why does a metal spoon in hot tea feel hot but a plastic one does not? **[Metal conducts heat well; plastic is an insulator]**
2. Why do black surfaces absorb more radiation? **[Black, dull surfaces are better absorbers of infrared]**
3. Calculate the heat to raise 2 kg of water from 20°C to 50°C. **[252,000 J]**
4. Why does sweating cool the body? **[Latent heat of vaporisation is taken from the skin]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('7140c6cd-af1d-89e4-7e64-9031d4f09d26'::uuid, 'cheat-ordinary-phys-waves-and-light', 'Physics', 'Waves & Light Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Waves & Light Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Waves and light are a rich source of GCE questions — wave properties, reflection, refraction, lenses, the eye, sound, and the electromagnetic spectrum. The wave equation \(v = f\lambda\) is tested every year.

## Core concepts

### Wave basics
- \(v = f\lambda\) (wave speed = frequency × wavelength).
- **Transverse waves:** vibration perpendicular to travel (light, water waves, all EM waves).
- **Longitudinal waves:** vibration along the direction of travel (sound).
- **Amplitude** = height (loudness/brightness). **Frequency** = waves per second (pitch/colour).

### Reflection and refraction
- Reflection: angle of incidence = angle of reflection (\(i = r\)).
- Refraction: light bends **towards** the normal entering a denser medium, **away** entering a rarer medium.
- A prism splits white light into a spectrum — red bends least, violet most.

### Lenses and the eye
- **Converging (convex) lens:** forms a real, inverted image of a distant object.
- The eye focuses by changing the shape of the lens (**accommodation**).
- **Total internal reflection:** beyond the critical angle, light reflects inside the medium — used in optical fibres.

### Sound
- Needs a medium — **no sound in a vacuum**.
- Speed in air ≈ 340 m/s.
- Frequency = pitch; amplitude = loudness.
- **Echo:** distance \(= \frac{\text{speed} \times \text{time}}{2}\).
- Ultrasound (>20,000 Hz): sonar, medical scanning.

### The electromagnetic spectrum
Radio → microwave → infrared → visible → ultraviolet → X-ray → gamma.
- Radio: communication. Infrared: remote controls, heat. UV: sterilisation. X-rays: medical imaging. Gamma: cancer treatment.

## Common mistakes & exam traps

- Saying sound travels through a vacuum — it cannot.
- Confusing transverse and longitudinal (sound is longitudinal, light is transverse).
- For echoes, forgetting to divide by 2 (the sound goes out and back).
- Using the wrong unit: frequency in Hz, wavelength in m, speed in m/s.

## Exam technique

1. Write \(v = f\lambda\) and rearrange before substituting.
2. For echo questions, draw the out-and-back path.
3. For refraction, always draw the normal at the point of incidence.
4. Give the full name of the wave type when asked (e.g. "transverse").

## Memory hooks

- **Transverse:** "Shake the rope up and down."
- **Longitudinal:** "Push the slinky back and forth."
- **EM spectrum order:** "Rabbits Mate In Very Unusual eXpensive Gardens."

## Quick practice

1. A wave has frequency 50 Hz and wavelength 6.8 m. Find its speed. **[340 m/s]**
2. Why can sound not travel through a vacuum? **[No particles to vibrate]**
3. A sound wave returns as an echo after 2 s. How far away is the wall? **[340 m]**
4. Which wave type is sound? **[Longitudinal]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('df460726-8891-48ac-a3ef-e4c66ac1eaa7'::uuid, 'cheat-ordinary-phys-electricity', 'Physics', 'Electricity Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Electricity Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Electricity is one of the highest-weight topics on the GCE paper. Circuit calculations, Ohm''s law, series and parallel combinations, power, and household electricity all appear regularly. The formulas are few but must be applied with care.

## Core concepts

### Basic quantities
- Current \(I = \frac{Q}{t}\) (coulombs per second = amperes).
- Resistance \(R = \frac{V}{I}\) (ohms).
- **Ohm''s law:** \(V \propto I\) for a metal conductor at constant temperature.

### Series and parallel circuits
| | Series | Parallel |
|---|---|---|
| Current | Same everywhere | Splits between branches |
| Voltage | Adds up | Same across each branch |
| Resistance | \(R = R_1 + R_2 + \cdots\) | \(\frac{1}{R} = \frac{1}{R_1} + \frac{1}{R_2} + \cdots\) |

**Worked example:** two 6 Ω resistors in parallel.
\(\frac{1}{R} = \frac{1}{6} + \frac{1}{6} = \frac{1}{3}\) → \(R = 3\,Ω\). Wait — \(\frac{1}{6}+\frac{1}{6} = \frac{2}{6} = \frac{1}{3}\), so \(R = 3\,Ω\). With 12 V across, \(I = \frac{12}{3} = 4\) A.

### Power and energy
- \(P = VI = I^2R = \frac{V^2}{R}\).
- Energy \(E = Pt\); \(1\,\text{kWh} = 3.6\,\text{MJ}\).

**Worked example:** a 60 W bulb runs for 5 hours. Energy \(= 0.06 \times 5 = 0.3\) kWh.

### Fuses and safety
- A fuse is rated slightly above the normal current: \(I = \frac{P}{V}\).
- **Worked example:** a 2 kW iron on 230 V → \(I = \frac{2000}{230} \approx 8.7\) A → use a 10 A fuse.

## Common mistakes & exam traps

- Adding parallel resistances like series ones — you must use the reciprocal formula.
- Forgetting that in parallel, the total resistance is **less** than the smallest branch.
- Using \(P = VI\) with the wrong units (kW instead of W).
- Confusing the fuse rating with the appliance power.

## Exam technique

1. Redraw the circuit and label each resistor.
2. Simplify parallel groups first, then series.
3. Write the formula, substitute, calculate, and give units.
4. For household questions, convert kW to W before using \(P = VI\).

## Memory hooks

- **Series:** "Same current, resistances add."
- **Parallel:** "Same voltage, reciprocals add."
- **Power:** "VI, I squared R, V squared over R."

## Quick practice

1. 4 Ω, 6 Ω and 12 Ω in parallel. Find the total resistance. **[2 Ω]**
2. A 2 kW iron runs 30 minutes a day for 30 days. Find the energy in kWh. **[30 kWh]**
3. Why does a small area give high pressure? **[P = F/A — smaller area, larger pressure]**
4. A 60 W bulb runs for 5 h. Find the energy in kWh. **[0.3 kWh]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('13fee7cc-bb5a-1907-0241-3dad55c28caf'::uuid, 'cheat-ordinary-phys-magnetism-and-induction', 'Physics', 'Magnetism & Induction Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Magnetism & Induction Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Magnetism, electromagnetism and electromagnetic induction connect the physics of motors, generators and transformers — all of which appear on the GCE paper. The Fleming rules and the transformer equation are the key tested items.

## Core concepts

### Magnets
- Magnetic materials: iron, steel, cobalt, nickel.
- Like poles repel, unlike poles attract.
- An **electromagnet** is a coil of wire around a soft-iron core carrying a current.
- It is stronger with: more turns, more current, a soft-iron core.
- Uses: relay, electric bell, scrapyard crane.

### The motor effect
A wire carrying current in a magnetic field experiences a force.
**Fleming''s left-hand rule:** thuMb = Motion, First finger = Field, seCond finger = Current.
This is the principle of the electric motor.

### Electromagnetic induction
Moving a magnet into a coil induces a current (and out of it, a current in the opposite direction).
- **Faraday''s law:** induced EMF is proportional to the rate of change of magnetic flux.
- **Lenz''s law:** the induced current opposes the change that produced it.
- **Fleming''s right-hand rule** applies to generators.

### Transformers
$$\frac{V_s}{V_p} = \frac{N_s}{N_p}$$
- Step-up: more secondary turns → higher voltage.
- Step-down: fewer secondary turns → lower voltage.
- Power stations step up voltage for transmission to reduce current, cutting \(I^2R\) losses.

## Common mistakes & exam traps

- Using the left-hand rule for generators — generators use the right-hand rule.
- Forgetting that a transformer works on **alternating** current only (it needs a changing flux).
- Saying "more voltage means more loss" — higher voltage means lower current, so less \(I^2R\) loss.
- Confusing the direction of the induced current (Lenz''s law opposes the change).

## Exam technique

1. State the law/rule before applying it.
2. For transformer calculations, write \(\frac{V_s}{V_p} = \frac{N_s}{N_p}\) and substitute.
3. For "explain" questions on transmission, mention \(I^2R\) loss explicitly.
4. Name the rule you use (left hand for motor, right hand for generator).

## Memory hooks

- **Left hand (motor):** "thuMb = Motion, First = Field, seCond = Current."
- **Step-up:** "More turns, more voltage."

## Quick practice

1. State three ways to strengthen an electromagnet. **[More turns, more current, soft-iron core]**
2. Why step up voltage for transmission? **[Lower current → less I²R loss]**
3. A transformer has 200 primary turns and 1000 secondary turns. Input 230 V. Find the output. **[1150 V]**
4. Which rule applies to a generator? **[Fleming''s right-hand rule]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('cb0e1ad2-c88c-4245-f8ba-f2ee7808b63c'::uuid, 'cheat-ordinary-phys-radioactivity', 'Physics', 'Radioactivity Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Radioactivity Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Radioactivity is a compact topic with guaranteed questions on the types of radiation, half-life calculations, and uses/safety. The properties of alpha, beta and gamma are the core knowledge.

## Core concepts

### The three types of radiation
| Type | Nature | Stopped by | Ionising power |
|---|---|---|---|
| Alpha (α) | Helium nucleus (2p + 2n) | Paper | Most ionising |
| Beta (β) | Fast electron | Aluminium | Moderate |
| Gamma (γ) | Electromagnetic wave | Lead (reduced) | Least ionising |

- **Penetration:** alpha < beta < gamma.
- **Ionisation:** alpha > beta > gamma.

### Half-life
The time taken for half the nuclei (or the activity) to decay.
- After 1 half-life: ½ remains. After 2: ¼. After 3: ⅛. After n: \((\frac{1}{2})^n\).

**Worked example:** half-life 8 days, after 32 days (4 half-lives): \((\frac{1}{2})^4 = \frac{1}{16}\) remains.

### Uses
- Alpha: smoke detectors.
- Beta: thickness control in paper/foil production.
- Gamma: medical tracers, sterilisation, cancer therapy.
- Carbon-14: dating archaeological material.

### Safety precautions
- Use tongs, never bare hands.
- Store in lead-lined containers.
- Limit exposure time; increase distance; use shielding.
- Wear protective clothing.

## Common mistakes & exam traps

- Confusing which radiation is stopped by what (alpha = paper, beta = aluminium, gamma = lead).
- Mixing up ionising and penetrating power (they are opposite).
- Forgetting to divide by 2 repeatedly in half-life problems.
- Saying gamma is "the most dangerous" without context — it is the most penetrating.

## Exam technique

1. For half-life, count the number of half-lives first.
2. Write the fraction as \((\frac{1}{2})^n\).
3. For safety questions, give specific precautions (tongs, lead, distance, time).
4. Match the radiation to its use by its properties.

## Memory hooks

- **Alpha, beta, gamma:** "Alpha is stopped by paper, beta by aluminium, gamma needs lead."
- **Half-life:** "Halve, halve, halve."

## Quick practice

1. Half-life 8 days: what fraction remains after 32 days? **[1/16]**
2. Which radiation is stopped by paper? **[Alpha]**
3. Which radiation is most penetrating? **[Gamma]**
4. Name two uses of gamma radiation. **[Medical tracers, sterilisation]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('fb9218f1-320e-281a-fdb3-57a617e40b3c'::uuid, 'cheat-ordinary-chem-atomic-structure', 'Chemistry', 'Atomic Structure Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Atomic Structure Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Atomic structure is the foundation of all chemistry. GCE tests the subatomic particles, electron configuration, isotopes, and the periodic table patterns. It is also the gateway to bonding and the mole.

## Core concepts

### The atom
- **Nucleus:** protons (positive) + neutrons (neutral).
- **Electrons:** negative, arranged in shells around the nucleus.
- \(Z\) (atomic number) = number of protons.
- \(A\) (mass number) = protons + neutrons.
- **Isotopes:** same \(Z\), different \(A\) (same element, different neutron number).

### Electron configuration
Shells fill in order: 2, 8, 8.
- Sodium (11 electrons): 2, 8, 1.
- Chlorine (17 electrons): 2, 8, 7.

### The periodic table
- **Group** = same number of outer electrons → similar chemical properties.
- **Group I (alkali metals):** very reactive, form +1 ions; reactivity increases down the group.
- **Group VII (halogens):** form −1 ions; reactivity decreases down the group.
- **Group VIII (noble gases):** full outer shells, unreactive.
- **Periods:** metallic → non-metallic from left to right.

### Ions
- Metals lose electrons → positive ions (cations).
- Non-metals gain electrons → negative ions (anions).
- \(\text{Na} \to \text{Na}^+ + e^-\), \(\text{Cl} + e^- \to \text{Cl}^-\).

## Common mistakes & exam traps

- Confusing atomic number and mass number.
- Writing the electron configuration of an ion instead of the atom.
- Saying "isotopes have different protons" — they have the same protons, different neutrons.
- Forgetting that the number of electrons equals the number of protons in a neutral atom.

## Exam technique

1. Write \(Z\) and \(A\) clearly: \(^{A}_{Z}X\).
2. For electron configuration, count the electrons first.
3. For periodic table questions, link properties to the outer shell.
4. Give the charge of the ion with its sign (Na⁺, not Na).

## Memory hooks

- **Shells:** "2, 8, 8 — fill them in order."
- **Isotopes:** "Same protons, different neutrons."

## Quick practice

1. Give the electron configuration of chlorine (Z = 17). **[2, 8, 7]**
2. Why are noble gases unreactive? **[Full outer shells]**
3. An atom has 11 protons and 12 neutrons. Give Z and A. **[Z = 11, A = 23]**
4. What ion does magnesium (2, 8, 2) form? **[Mg²⁺]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('d079ec0b-288e-6f42-b9ba-a699c33896b7'::uuid, 'cheat-ordinary-chem-bonding', 'Chemistry', 'Bonding Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Bonding Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Bonding explains why substances behave the way they do. GCE tests ionic, covalent and metallic bonding, the properties of giant structures, and dot-and-cross diagrams. The properties questions are favourites because they reward precise vocabulary.

## Core concepts

### Ionic bonding
- A metal **loses** electrons → cation; a non-metal **gains** → anion.
- The oppositely charged ions attract → giant ionic lattice.
- \(\text{Na}^+ + \text{Cl}^- \to \text{NaCl}\).
- **Properties:** high melting point, conducts when molten or dissolved, usually soluble in water.
- Draw **dot-and-cross diagrams** — easy marks!

### Covalent bonding
- Non-metals **share** electrons: \(\text{H}_2\text{O}\), \(\text{CH}_4\), \(\text{O}_2\).
- **Simple molecules:** low melting/boiling points, do not conduct.
- **Giant covalent structures:**
  - **Diamond:** hardest natural substance, does not conduct (all electrons bonded).
  - **Graphite:** conducts (delocalised electrons between layers), slippery (layers slide) — used in pencils and lubricants.

### Metallic bonding
- Positive ions in a "sea" of delocalised electrons.
- **Properties:** conducts electricity and heat, malleable, high melting point.
- **Alloys:** different-sized atoms disrupt the layers, so they are **stronger** than pure metals.

## Common mistakes & exam traps

- Saying ionic compounds "conduct as solids" — they only conduct when molten or dissolved.
- Confusing diamond and graphite conductivity.
- Forgetting that alloys are stronger because the different atom sizes stop layers sliding.
- Drawing dot-and-cross diagrams without showing the outer shells clearly.

## Exam technique

1. For "explain properties" questions, link structure → bonding → property.
2. Draw the dot-and-cross diagram with the outer shell electrons only.
3. Use the correct vocabulary: lattice, delocalised, giant structure, molten.
4. Give two properties with reasons for full marks.

## Memory hooks

- **Ionic:** "Metal gives, non-metal takes."
- **Covalent:** "Non-metals share."
- **Graphite:** "Slides and conducts — layers and delocalised electrons."

## Quick practice

1. Why does graphite conduct but diamond does not? **[Graphite has delocalised electrons between layers]**
2. Why are alloys stronger than pure metals? **[Different atom sizes disrupt sliding layers]**
3. When does an ionic compound conduct electricity? **[When molten or dissolved]**
4. What type of bonding is in methane? **[Covalent]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('3f715b47-f84c-bbd6-611b-6b6a87088b44'::uuid, 'cheat-ordinary-chem-the-mole', 'Chemistry', 'The Mole Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# The Mole Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

The mole is the chemist''s counting unit and the source of the most calculation marks on the GCE paper. Moles, masses, gas volumes and concentrations all follow from a few formulas. Titration calculations are a near-certainty.

## Core concepts

### The key formulas
- 1 mole \(= 6.02 \times 10^{23}\) particles \(= A_r\) or \(M_r\) in grams.
- Moles \(= \frac{\text{mass}}{M_r}\).
- Gas at RTP: moles \(= \frac{\text{volume}}{24\,\text{dm}^3}\).
- Solution: moles \(= \text{concentration (mol/dm}^3\text{)} \times \text{volume (dm}^3\text{)}\).
- \(\text{cm}^3 \to \text{dm}^3\): divide by 1000.

### Relative formula masses to know
| Substance | \(M_r\) |
|---|---|
| \(\text{H}_2\text{O}\) | 18 |
| \(\text{H}_2\text{SO}_4\) | 98 |
| \(\text{CaCO}_3\) | 100 |
| \(\text{KOH}\) | 56 |
| \(\text{NaOH}\) | 40 |

### The titration method (5 steps)
1. Write the balanced equation.
2. Find the moles of the known solution.
3. Use the mole ratio to find the moles of the unknown.
4. Find the concentration: moles ÷ volume.
5. Check the units (mol/dm³).

**Worked example:** 25 cm³ of 0.1 M NaOH neutralises 20 cm³ of HCl.
1. \(\text{NaOH} + \text{HCl} \to \text{NaCl} + \text{H}_2\text{O}\) (1:1 ratio).
2. Moles NaOH \(= 0.1 \times \frac{25}{1000} = 0.0025\).
3. Moles HCl \(= 0.0025\).
4. \([\text{HCl}] = \frac{0.0025}{20/1000} = 0.125\,\text{mol/dm}^3\).

## Common mistakes & exam traps

- Forgetting to convert cm³ to dm³ (divide by 1000).
- Using the wrong mole ratio from the equation.
- Confusing \(A_r\) (one atom) with \(M_r\) (whole formula).
- Forgetting the units on the final answer.

## Exam technique

1. Write the balanced equation first — the ratio comes from it.
2. Show every step; method marks are generous.
3. Convert all volumes to dm³ before calculating.
4. Check your answer is sensible (concentrations are usually between 0.01 and 2 mol/dm³).

## Memory hooks

- **Moles:** "Mass over Mr."
- **Gas at RTP:** "Volume over 24."
- **Solution:** "Concentration times volume."

## Quick practice

1. How many moles are in 9.8 g of \(\text{H}_2\text{SO}_4\)? **[0.1 mol]**
2. 25 cm³ of 0.1 M NaOH neutralises 20 cm³ of HCl. Find [HCl]. **[0.125 M]**
3. What mass of MgO forms from 4.8 g of Mg? \(2\text{Mg} + \text{O}_2 \to 2\text{MgO}\). **[8 g]**
4. What volume does 0.5 mol of gas occupy at RTP? **[12 dm³]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('c90ac6ec-f226-e9dc-e3ef-ed3f74d3d6a6'::uuid, 'cheat-ordinary-chem-acids-bases-and-salts', 'Chemistry', 'Acids, Bases & Salts Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Acids, Bases & Salts Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Acids, bases and salts are a core GCE topic covering pH, neutralisation, salt preparation, solubility rules and gas tests. The salt preparation routes and gas tests are guaranteed marks.

## Core concepts

### Acids
- \(\text{pH} < 7\); blue litmus turns red.
- \(\text{HCl}\), \(\text{H}_2\text{SO}_4\), \(\text{HNO}_3\).
- **Strong acid:** fully ionised in water (HCl). **Weak acid:** partially ionised (ethanoic acid).
- Reactions:
  - Acid + metal → salt + hydrogen.
  - Acid + carbonate → salt + water + carbon dioxide.
  - Acid + alkali → salt + water (neutralisation).

### Bases and alkalis
- \(\text{pH} > 7\); red litmus turns blue.
- Bases: metal oxides and hydroxides. Alkalis are soluble bases: \(\text{NaOH}\), \(\text{KOH}\), \(\text{Ca(OH)}_2\), aqueous ammonia.

### Salt preparation routes
| Route | Method |
|---|---|
| Acid + excess metal | Add metal until no more reacts, filter |
| Acid + insoluble base | Warm, add base until excess, filter |
| Acid + alkali | Titration (both soluble) |
| Acid + carbonate | Add carbonate until excess, filter |

### Solubility rules
- **Soluble:** all sodium, potassium and ammonium salts; all nitrates; chlorides except silver and lead; sulfates except barium, lead and calcium.
- **Insoluble:** carbonates except sodium, potassium and ammonium.

### Gas tests
| Gas | Test | Result |
|---|---|---|
| \(\text{H}_2\) | Burning splint | Pop |
| \(\text{O}_2\) | Glowing splint | Relights |
| \(\text{CO}_2\) | Limewater | Turns milky |
| \(\text{NH}_3\) | Damp red litmus | Turns blue |
| \(\text{Cl}_2\) | Damp litmus | Bleaches |

## Common mistakes & exam traps

- Saying "acid + metal → salt + water" — it is salt + **hydrogen**.
- Forgetting the filter step in salt preparation.
- Confusing which chlorides/sulfates are insoluble.
- Writing the wrong gas test result.

## Exam technique

1. For salt preparation, name the route and the method steps.
2. For gas tests, give the test AND the result.
3. Write balanced equations for neutralisation.
4. Use the solubility rules to predict precipitates.

## Memory hooks

- **Acid + metal:** "Salt and hydrogen."
- **Acid + carbonate:** "Salt, water and carbon dioxide."
- **Gas tests:** "Hydrogen pops, oxygen relights, CO₂ goes milky."

## Quick practice

1. Give the test and result for carbon dioxide. **[Limewater turns milky]**
2. Which chlorides are insoluble? **[Silver chloride and lead chloride]**
3. Write the equation for HCl + NaOH. **[HCl + NaOH → NaCl + H₂O]**
4. How would you prepare a pure sample of copper(II) sulfate? **[React excess copper(II) oxide with warm sulfuric acid, filter]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('b9b5ebc5-b913-5613-04e5-b854638693df'::uuid, 'cheat-ordinary-chem-electrolysis', 'Chemistry', 'Electrolysis Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Electrolysis Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Electrolysis is a distinctive GCE topic that tests whether you can predict the products at each electrode. The selective discharge rules and the industrial applications (aluminium extraction, electroplating) are the key tested ideas.

## Core concepts

### The setup
- Electrolysis needs a **molten or dissolved ionic compound** (so ions can move) and a **DC supply**.
- **Cathode (−):** attracts cations (positive ions).
- **Anode (+):** attracts anions (negative ions).

### Selective discharge in solutions
- **Cathode:** hydrogen is produced UNLESS the metal is less reactive than hydrogen (Cu, Ag, Au deposit as metals).
- **Anode:** halide ions → halogen gas; sulfate/nitrate solutions → oxygen.

**Worked example:** electrolysis of molten NaCl.
- Cathode: \(\text{Na}^+ + e^- \to \text{Na}\).
- Anode: \(2\text{Cl}^- \to \text{Cl}_2 + 2e^-\).

### Applications
- **Electroplating:** the object is the cathode, the plating metal is the anode.
- **Aluminium extraction:** purified bauxite (\(\text{Al}_2\text{O}_3\)) dissolved in molten **cryolite** (lowers the melting point, saving energy). \(\text{Al}^{3+}\) → Al at the cathode. Huge electricity use → smelters near hydroelectric dams.

## Common mistakes & exam traps

- Saying electrolysis works on any compound — the compound must be molten or dissolved.
- Forgetting that in aqueous solutions, hydrogen is often produced instead of the metal.
- Confusing cathode and anode (cathode = negative, attracts cations).
- Forgetting why cryolite is used (lowers melting point).

## Exam technique

1. Identify the ions present first.
2. Apply the discharge rules at each electrode.
3. Write half-equations with electrons.
4. For industrial questions, link the process to energy use.

## Memory hooks

- **Cathode:** "Cations to the cathode."
- **Anode:** "Anions to the anode."
- **Cryolite:** "Lowers the melting point, saves energy."

## Quick practice

1. What are the products of electrolysing molten NaCl? **[Na at cathode, Cl₂ at anode]**
2. Why is cryolite used in aluminium extraction? **[Lowers the melting point → saves energy]**
3. In electroplating, where is the object placed? **[At the cathode]**
4. What is produced at the cathode when electrolysing copper(II) sulfate solution? **[Copper]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1cec55b6-4838-c987-50e5-9f7fc4372f5f'::uuid, 'cheat-ordinary-chem-metals', 'Chemistry', 'Metals Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Metals Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Metals covers the reactivity series, extraction, rusting and displacement reactions — all regular GCE questions. The reactivity series must be memorised, and the extraction method follows directly from it.

## Core concepts

### The reactivity series (memorise!)
$$\text{K} > \text{Na} > \text{Ca} > \text{Mg} > \text{Al} > (\text{C}) > \text{Zn} > \text{Fe} > (\text{H}) > \text{Cu} > \text{Ag} > \text{Au}$$

### Extraction
- **Above carbon** (K, Na, Ca, Mg, Al): extract by **electrolysis**.
- **Below carbon** (Zn, Fe, Cu): extract by **reduction with carbon/carbon monoxide**.
- **Blast furnace:** \(\text{Fe}_2\text{O}_3\) + coke + limestone. Coke provides carbon monoxide (the reducing agent); limestone removes impurities as slag.

### Rusting
- Needs **iron + oxygen + water**. Salt speeds it up.
- **Prevention:** paint, oil/grease, galvanising (zinc coating — zinc is sacrificial), alloying (stainless steel).

### Key reactions
- Metal + acid → salt + hydrogen (only metals above hydrogen in the series).
- A more reactive metal **displaces** a less reactive metal from its salt solution.
- \(\text{Fe} + \text{CuSO}_4 \to \text{FeSO}_4 + \text{Cu}\).

## Common mistakes & exam traps

- Writing the reactivity series in the wrong order (K is most reactive, Au least).
- Saying copper can displace iron — it cannot (copper is less reactive).
- Forgetting that rusting needs BOTH oxygen and water.
- Confusing the extraction method for metals above vs below carbon.

## Exam technique

1. Quote the reactivity series when explaining displacement.
2. For rusting, state all three conditions (iron, oxygen, water).
3. For extraction, link the method to the metal''s position relative to carbon.
4. Give two prevention methods with reasons.

## Memory hooks

- **Reactivity series:** "Please Stop Calling Me A Careless Zebra, I Think He Can''t Swim" — K Na Ca Mg Al (C) Zn Fe (H) Cu Ag Au.

## Quick practice

1. Why does iron rust faster near the sea? **[Salt water speeds up rusting]**
2. Can copper displace iron from iron(II) sulfate? **[No — copper is less reactive]**
3. How is aluminium extracted? **[Electrolysis of molten aluminium oxide]**
4. Name two ways to prevent rusting. **[Paint, galvanising]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('2ea3521d-d8a4-c19a-90ea-23ee5e760650'::uuid, 'cheat-ordinary-chem-organic-chemistry', 'Chemistry', 'Organic Chemistry Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Organic Chemistry Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Organic chemistry introduces the chemistry of carbon compounds. GCE tests crude oil fractionation, alkanes, alkenes, combustion, and polymers. The alkene test (bromine water) is a guaranteed question.

## Core concepts

### Crude oil
- A mixture of hydrocarbons separated by **fractional distillation** (by boiling point).
- Fractions: refinery gas → petrol → naphtha → kerosene → diesel → bitumen.
- Shorter chains: lower boiling point, more volatile, more flammable.

### Alkanes (saturated)
- General formula: \(C_nH_{2n+2}\).
- Methane \(\text{CH}_4\), ethane \(\text{C}_2\text{H}_6\).
- Only single C–C bonds.
- **Complete combustion:** \(\text{CH}_4 + 2\text{O}_2 \to \text{CO}_2 + 2\text{H}_2\text{O}\).
- **Incomplete combustion** (limited oxygen): produces toxic carbon monoxide.

### Alkenes (unsaturated)
- General formula: \(C_nH_{2n}\).
- Ethene \(\text{C}_2\text{H}_4\) — contains a C=C double bond.
- **Test for unsaturation:** shake with bromine water — red-brown → colourless.

### Polymers
- Ethene → poly(ethene) by addition polymerisation.
- Plastics cause pollution; recycle and reduce use.

## Common mistakes & exam traps

- Confusing the alkane and alkene formulas (\(C_nH_{2n+2}\) vs \(C_nH_{2n}\)).
- Writing incomplete combustion products as just CO — it is CO (toxic), not CO₂.
- Forgetting the bromine water test result (decolourised).
- Saying crude oil is separated by "filtering" — it is fractional distillation.

## Exam technique

1. Write the general formula before naming specific compounds.
2. For combustion, balance the equation carefully.
3. Give the test AND the colour change for unsaturation.
4. Link fraction properties to chain length.

## Memory hooks

- **Alkanes:** "Saturated — single bonds, CnH2n+2."
- **Alkenes:** "Unsaturated — double bond, CnH2n."
- **Bromine water:** "Red-brown to colourless = double bond present."

## Quick practice

1. Give the test for unsaturation. **[Bromine water decolourised]**
2. Why is incomplete combustion dangerous? **[Produces toxic carbon monoxide]**
3. Write the formula of propane. **[C₃H₈]**
4. How is crude oil separated? **[Fractional distillation by boiling point]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1d15f24f-5e2e-88d6-b545-5094e81c353e'::uuid, 'cheat-ordinary-chem-rates-of-reaction', 'Chemistry', 'Rates of Reaction Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Rates of Reaction Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Rates of reaction is a practical-heavy GCE topic. Examiners test the factors that change the rate, how to measure it, and the collision theory explanation. The graph interpretation questions reward clear reasoning.

## Core concepts

### Measuring rate
- Rate \(= \frac{\text{change in quantity}}{\text{time}}\).
- Measure: volume of gas produced, loss of mass, change in colour/turbidity, time for a cross to disappear.

### Factors that change the rate
| Factor | Effect | Why (collision theory) |
|---|---|---|
| Concentration | Higher → faster | More particles per volume → more collisions |
| Temperature | Higher → faster | Particles move faster → more energetic collisions |
| Surface area | Smaller pieces → faster | More exposed particles → more collisions |
| Catalyst | Faster | Lowers activation energy |
| Pressure (gases) | Higher → faster | Particles squeezed closer → more collisions |

### Collision theory
Particles must **collide** with **enough energy** (≥ activation energy) and the **correct orientation** to react.

### Catalysts
- Speed up a reaction without being used up.
- Lower the activation energy.
- Biological catalysts are enzymes.

### Graphs
- Steeper gradient = faster rate.
- The line flattens when the reaction stops (one reactant used up).
- A catalyst makes the initial gradient steeper but the final amount is the same.

## Common mistakes & exam traps

- Saying temperature "gives particles more energy" without mentioning collisions.
- Confusing surface area with concentration.
- Forgetting that a catalyst does not change the final yield.
- Reading the graph incorrectly — the rate is the gradient, not the height.

## Exam technique

1. Use collision theory vocabulary: collisions, energy, activation energy, orientation.
2. For graph questions, describe the gradient and what happens at the end.
3. Give the factor, the effect, and the reason for full marks.
4. For "how to measure rate", name the apparatus and what you record.

## Memory hooks

- **Collision theory:** "Collide with enough energy, the right way round."
- **Catalyst:** "Speeds up, not used up."

## Quick practice

1. Why does increasing temperature speed up a reaction? **[More energetic collisions]**
2. Does a catalyst change the final yield? **[No]**
3. Name two ways to measure the rate of a gas-producing reaction. **[Volume of gas, loss of mass]**
4. Why does powdering a solid speed up a reaction? **[Increases surface area → more collisions]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('5ea6e24d-b642-7b36-e2e2-949d407af526'::uuid, 'cheat-ordinary-bio-cell-biology', 'Biology', 'Cell Biology Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Cell Biology Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Cell biology is the foundation of the whole GCE Biology syllabus. Cell structure, specialised cells, and the movement of substances (diffusion, osmosis, active transport) appear in nearly every paper.

## Core concepts

### Cell structure
- **All cells:** cell membrane (controls entry/exit), cytoplasm (site of reactions), nucleus (contains chromosomes/DNA).
- **Plant cells extra:** cellulose cell wall (support), chloroplasts (photosynthesis), large permanent vacuole (cell sap).

### Specialised cells
| Cell | Adaptation | Function |
|---|---|---|
| Red blood cell | No nucleus, biconcave shape | Carries oxygen |
| Root hair cell | Long extension | Absorbs water and minerals |
| Sperm cell | Tail | Movement |
| Palisade cell | Many chloroplasts | Photosynthesis |

### Movement of substances
- **Diffusion:** movement from high to low concentration (no energy needed). Example: oxygen into the blood.
- **Osmosis:** movement of **water** through a **partially permeable membrane** from a dilute to a concentrated solution.
- **Active transport:** movement against the concentration gradient, **uses energy**. Example: root hairs absorbing mineral ions.

### The exam favourite
A plant wilts in salty soil: the soil solution is more concentrated than the cell sap → water leaves the cells by osmosis → cells lose turgor → wilting.

## Common mistakes & exam traps

- Defining osmosis as "movement of water from high to low concentration" — it must mention the partially permeable membrane.
- Saying diffusion "uses energy" — it does not.
- Confusing active transport with diffusion (active transport goes against the gradient and needs energy).
- Forgetting plant-specific structures.

## Exam technique

1. Define osmosis exactly: water, partially permeable membrane, dilute → concentrated.
2. For "explain wilting" questions, use the full chain: concentrated soil → water leaves → turgor lost.
3. Give two differences between plant and animal cells with examples.
4. Use the correct vocabulary: turgor, plasmolysis, concentration gradient.

## Memory hooks

- **Osmosis:** "Water through a partially permeable membrane, dilute to concentrated."
- **Diffusion:** "High to low, no energy."
- **Active transport:** "Low to high, needs energy."

## Quick practice

1. Give two differences between plant and animal cells. **[Cell wall + chloroplasts present in plants only]**
2. Define osmosis exactly. **[Water moves through a partially permeable membrane from a dilute to a concentrated solution]**
3. Why does a plant wilt in salty soil? **[Water leaves cells by osmosis → loss of turgor]**
4. Which process needs energy? **[Active transport]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('2e215c90-92f0-5bf0-00e9-41dbc8a80e43'::uuid, 'cheat-ordinary-bio-nutrition-and-digestion', 'Biology', 'Nutrition & Digestion Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Nutrition & Digestion Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Nutrition and digestion cover the food groups, deficiency diseases, the digestive system, and enzymes — all regular GCE questions. The enzyme facts and the digestive journey are the core knowledge.

## Core concepts

### The food groups
| Nutrient | Function | Sources |
|---|---|---|
| Carbohydrates | Energy | Rice, cassava, maize |
| Proteins | Growth and repair | Beans, fish, meat |
| Fats | Concentrated energy | Palm oil, groundnuts |
| Vitamins | Regulate body processes | Fruits, vegetables |
| Minerals | Various | Meat, milk, iodised salt |

### Vitamins and minerals
- **Vitamin A:** vision (deficiency → night blindness).
- **Vitamin C:** healing, iron absorption (deficiency → scurvy).
- **Vitamin D:** calcium absorption (deficiency → rickets).
- **Iron:** haemoglobin (deficiency → anaemia).
- **Calcium:** bones and teeth.
- **Iodine:** thyroid (deficiency → goitre).
- **Protein deficiency:** kwashiorkor. **Energy deficiency:** marasmus.

### The digestive system
| Part | What happens |
|---|---|
| Mouth | Teeth chew; amylase digests starch → maltose |
| Stomach | HCl + pepsin digest protein |
| Small intestine | Bile emulsifies fat; lipase → fatty acids + glycerol; villi absorb |
| Large intestine | Water absorbed |

### Enzyme facts
- Enzymes are **proteins**.
- They are **specific** (each enzyme acts on one substrate).
- They **speed up** reactions (catalysts).
- Best temperature ≈ 37°C; **denatured** by high heat and extreme pH.

## Common mistakes & exam traps

- Confusing which enzyme digests which food (amylase = starch, protease = protein, lipase = fat).
- Saying enzymes are "killed" by heat — they are **denatured** (active site changes shape).
- Forgetting the role of bile (emulsifies fat — a physical change, not digestion).
- Mixing up deficiency diseases and their causes.

## Exam technique

1. For enzyme questions, use the vocabulary: substrate, active site, denatured, specific.
2. For digestion, trace the food through the system naming each enzyme and product.
3. Give the nutrient, its function, and a source for full marks.
4. For "why does chewing help", mention surface area for enzymes.

## Memory hooks

- **Amylase:** "Starch to maltose."
- **Protease:** "Protein to amino acids."
- **Lipase:** "Fat to fatty acids and glycerol."

## Quick practice

1. Name the enzyme for starch and where it is produced. **[Amylase; salivary glands and pancreas]**
2. Why does chewing help digestion? **[Increases surface area for enzymes]**
3. Which deficiency causes scurvy? **[Vitamin C]**
4. What does bile do? **[Emulsifies fat]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('7ac9bcd4-3f06-2683-2b5e-f0f28de01932'::uuid, 'cheat-ordinary-bio-transport-systems', 'Biology', 'Transport Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Transport Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Transport covers the plant vascular system and the human circulatory system — both guaranteed GCE topics. The blood trace question and the xylem/phloem distinction are favourites.

## Core concepts

### Transport in plants
- **Xylem:** carries water and minerals **up** the plant (transpiration pull).
- **Phloem:** carries food (sugars) **both ways** (translocation).
- **Transpiration** is faster with: wind, heat, low humidity, light.
- Stomata open in light, close in darkness.
- **Wilting** happens when transpiration exceeds water uptake.

### Human circulation
- **Double circulation:** right side of the heart → lungs; left side → body.
- **Arteries:** thick, elastic walls, high pressure, carry blood away from the heart.
- **Veins:** valves, low pressure, carry blood back to the heart.
- **Capillaries:** one cell thick — site of exchange.

### Blood
- **Plasma:** liquid, transports dissolved substances.
- **Red blood cells:** carry oxygen (haemoglobin, no nucleus).
- **White blood cells:** defend against disease.
- **Platelets:** help blood clot.

### The blood trace (exam favourite)
Lungs → pulmonary vein → left atrium → left ventricle → aorta → arteries → capillaries → body → veins → vena cava → right atrium → right ventricle → pulmonary artery → lungs.

## Common mistakes & exam traps

- Confusing xylem and phloem (xylem = water up, phloem = food both ways).
- Saying arteries carry "oxygenated blood" — the pulmonary artery carries deoxygenated blood.
- Forgetting valves are in veins (to prevent backflow at low pressure).
- Mixing up the order of the heart chambers in the trace.

## Exam technique

1. For the blood trace, start and end at the lungs, naming every structure.
2. Give the adaptation AND its function for each blood vessel.
3. For transpiration, list the environmental factors.
4. Use the correct vocabulary: transpiration pull, translocation, double circulation.

## Memory hooks

- **Xylem:** "X = water up."
- **Arteries:** "Away from the heart."
- **Trace:** "Lungs → vein → left atrium → left ventricle → aorta → body."

## Quick practice

1. Why do veins have valves? **[To prevent backflow at low pressure]**
2. What happens when transpiration exceeds water uptake? **[Wilting]**
3. Which vessel carries blood from the heart to the lungs? **[Pulmonary artery]**
4. What does the phloem transport? **[Food (sugars)]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('15ccc8c3-61d9-589a-8b13-e78024ac2326'::uuid, 'cheat-ordinary-bio-respiration', 'Biology', 'Respiration Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Respiration Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Respiration is the energy-releasing process that appears in every GCE paper. The aerobic/anaerobic equations, breathing mechanics, and the alveoli adaptations are the core tested items.

## Core concepts

### Aerobic respiration
$$\text{Glucose} + \text{O}_2 \to \text{CO}_2 + \text{H}_2\text{O} + \text{energy}$$
- Happens in every cell, releasing about 38 ATP per glucose.
- Requires oxygen.

### Anaerobic respiration
- **Muscles:** glucose → lactic acid (causes fatigue and oxygen debt).
- **Yeast:** glucose → ethanol + carbon dioxide (fermentation — used in brewing and bread-making).

### Breathing mechanics
- **Inhale:** diaphragm flattens, ribs move up and out → chest volume increases → pressure decreases → air enters.
- **Exhale:** the reverse.

### The alveoli
Adaptations for gas exchange:
- Thin walls (one cell thick).
- Moist surfaces.
- Huge surface area.
- Rich blood supply.

### Smoking
Damages cilia → bronchitis, emphysema, lung cancer, heart disease.

## Common mistakes & exam traps

- Writing the anaerobic equation with oxygen — anaerobic means WITHOUT oxygen.
- Confusing breathing (ventilation) with respiration (energy release).
- Saying respiration "happens in the lungs" — it happens in every cell.
- Forgetting the products of fermentation (ethanol + CO₂).

## Exam technique

1. Write the word equations for both aerobic and anaerobic respiration.
2. For "why does exercise cause pain", mention lactic acid and oxygen debt.
3. For alveoli, give at least three adaptations.
4. Distinguish clearly between breathing and respiration.

## Memory hooks

- **Aerobic:** "Glucose plus oxygen makes CO₂, water and energy."
- **Anaerobic in muscles:** "Glucose to lactic acid."
- **Yeast:** "Glucose to ethanol and CO₂."

## Quick practice

1. Why does anaerobic exercise cause muscle pain? **[Lactic acid builds up]**
2. Why is yeast used in bread-making? **[CO₂ raises the dough]**
3. Give two adaptations of the alveoli. **[Thin walls, huge surface area]**
4. Write the word equation for aerobic respiration. **[Glucose + oxygen → carbon dioxide + water + energy]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('32620f88-6c8e-3595-d54d-4cf01d2fa560'::uuid, 'cheat-ordinary-bio-coordination', 'Biology', 'Coordination Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Coordination Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Coordination covers the nervous system, the reflex arc, the eye, hormones, and the kidney. The reflex arc diagram and the insulin/diabetes link are guaranteed GCE questions.

## Core concepts

### The nervous system
- **CNS** = brain + spinal cord.
- **Reflex arc:** receptor → sensory neurone → relay neurone (spinal cord) → motor neurone → effector.
- Reflexes are fast, automatic and protective.

### The eye
- Cornea and lens focus light.
- Iris controls pupil size.
- Retina contains rods (dim light) and cones (colour).
- **Accommodation:** the lens changes shape to focus near and far objects.

### Hormones
| Hormone | Source | Effect |
|---|---|---|
| Insulin | Pancreas | Lowers blood glucose (lack → diabetes) |
| Adrenaline | Adrenal glands | Fight-or-flight response |
| Thyroxine | Thyroid | Controls metabolic rate |

### The kidney
1. **Ultrafiltration** in the Bowman''s capsule.
2. **Selective reabsorption** of glucose, water and salts.
3. Urine = urea + excess water and salts.

## Common mistakes & exam traps

- Drawing the reflex arc with the relay neurone in the brain — it is in the spinal cord.
- Saying hormones act "quickly" — they are slower but longer-lasting than nerves.
- Confusing rods and cones.
- Forgetting the three kidney stages in order.

## Exam technique

1. Draw and label the reflex arc with all five parts.
2. For "why is insulin a hormone", say it is a chemical messenger carried in the blood.
3. Give the source and effect for each hormone.
4. For the kidney, name the three stages in order.

## Memory hooks

- **Reflex arc:** "Receptor, sensory, relay, motor, effector."
- **Insulin:** "Lowers blood glucose."
- **Kidney:** "Filter, reabsorb, excrete."

## Quick practice

1. Draw and label the reflex arc. **[5 parts]**
2. Why is insulin called a hormone? **[A chemical messenger carried in the blood]**
3. What do rods detect? **[Dim light]**
4. Where does ultrafiltration happen? **[Bowman''s capsule]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('20842fb1-d3c8-3ac8-0a65-0c82f8201ed6'::uuid, 'cheat-ordinary-bio-reproduction-and-genetics', 'Biology', 'Reproduction & Genetics Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Reproduction & Genetics Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Reproduction and genetics combine the biology of inheritance with human reproduction. Genetic crosses, sex determination, and the sickle-cell example (very relevant in Cameroon) are guaranteed GCE questions.

## Core concepts

### Reproduction
- **Asexual:** one parent, offspring identical (cassava stems, yeast budding).
- **Sexual:** gametes fuse → variation.
- **Flower:** stamens (male: anther + filament), carpel (female: stigma, style, ovary).
- Insect-pollinated: colourful, scented. Wind-pollinated: small, light pollen.
- Ovule → seed; ovary → fruit.
- **Human:** ovulation ≈ day 14; fertilisation in the oviduct; the placenta exchanges nutrients, oxygen and waste.
- **HIV transmission:** blood, sexual contact, mother-to-child — NOT casual contact.

### Genetics
- **Alleles:** dominant (T) vs recessive (t).
- \(Tt \times Tt\) → 1 TT : 2 Tt : 1 tt = 3 tall : 1 short.
- **Sex determination:** XX = female, XY = male — the father decides.
- **Sickle cell:** AS carriers are healthy; SS individuals have the disease (common in Cameroon).

**Worked example:** \(Tt \times tt\).
Gametes: T, t × t, t. Offspring: Tt, Tt, tt, tt → 1 : 1 (50% tall, 50% short).

## Common mistakes & exam traps

- Writing the gametes wrong (each gamete carries ONE allele).
- Forgetting the phenotype ratio (3:1) vs genotype ratio (1:2:1).
- Saying the mother determines the sex of the child — the father''s sperm decides.
- Confusing the flower parts (stamen = male, carpel = female).

## Exam technique

1. Draw the Punnett square with gametes clearly labelled.
2. Write the genotype ratio and phenotype ratio separately.
3. For sex determination, show XX and XY.
4. For sickle cell, use the AS/SS notation.

## Memory hooks

- **Gametes:** "One allele each."
- **3:1 ratio:** "Tt × Tt gives 3 dominant, 1 recessive."
- **Sex:** "Father decides — X or Y sperm."

## Quick practice

1. \(Tt \times tt\): give the offspring ratio. **[1 Tt : 1 tt — 50% tall]**
2. Why do siblings differ? **[Meiosis + random fertilisation → variation]**
3. What is the genotype of a person with sickle-cell disease? **[SS]**
4. Where does fertilisation occur in humans? **[Oviduct]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('2d7c24db-0b61-40d6-b35d-f4fd422a0a55'::uuid, 'cheat-ordinary-bio-ecology', 'Biology', 'Ecology Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Ecology Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Ecology covers ecosystems, food chains, nutrient cycles and environmental issues. GCE loves Cameroon examples — Waza reserve, deforestation, and the energy loss in food chains.

## Core concepts

### Key terms
- **Habitat:** where an organism lives.
- **Population:** all organisms of one species in an area.
- **Community:** all the populations in an area.
- **Ecosystem:** the community + its environment.

### Food chains
Producer → primary consumer → secondary consumer → tertiary consumer.
- **Decomposers** break down dead matter and recycle nutrients.
- Only about **10% of energy** passes to the next level → chains rarely exceed 4 links.

### Cycles
- **Carbon cycle:** photosynthesis, respiration, combustion, decomposition.
- **Water cycle:** evaporation, condensation, precipitation.

### Cameroon examples
- Waza National Park (wildlife).
- Congo Basin deforestation.
- Soil erosion after slash-and-burn farming.

## Common mistakes & exam traps

- Confusing population and community.
- Forgetting decomposers in the food chain diagram.
- Saying energy is "recycled" — energy flows through, matter is recycled.
- Putting the producer at the wrong end of the chain.

## Exam technique

1. Start every food chain with a producer (plant).
2. For "why are food chains short", mention the 90% energy loss at each level.
3. Give the role of decomposers explicitly.
4. Use Cameroon examples when asked for local applications.

## Memory hooks

- **Food chain:** "Producer first, arrows point to the eater."
- **Energy:** "10% passes on, 90% is lost."

## Quick practice

1. Why are food chains short? **[90% of energy is lost at each level]**
2. What is the role of decomposers? **[Break down dead matter and recycle nutrients]**
3. Name two processes in the carbon cycle. **[Photosynthesis, respiration]**
4. Define a population. **[All organisms of one species in an area]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('4cb251f3-2d3d-5728-de22-cfaf3588d7da'::uuid, 'cheat-ordinary-hbio-body-systems', 'Human Biology', 'Body Systems Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Body Systems Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Body systems covers the organisation of the body, the skin, and the skeleton — the foundation topics of Human Biology. GCE tests the functions of the skin and skeleton, joint types, and the levels of organisation.

## Core concepts

### Organisation
Cells → tissues → organs → systems.
**Homeostasis** = maintaining a constant internal environment.

### The skin
- **Epidermis:** outer layer, contains melanin (protects against UV).
- **Dermis:** sweat glands, blood vessels, receptors, fat.
- **Functions:**
  1. Protection (barrier against microbes and UV).
  2. Temperature regulation (sweating, vasodilation/vasoconstriction).
  3. Sensation (touch, pain, heat, cold).
  4. Vitamin D synthesis.

### The skeleton
- **Functions:** support, protection (skull, ribs), movement, blood cell production (bone marrow), mineral storage (calcium).
- **Joints:**
  - Fixed (skull).
  - Slightly movable (spine).
  - Freely movable (synovial): ball-and-socket (shoulder, hip), hinge (elbow, knee).
- **Synovial joint parts:** cartilage (reduces friction), synovial fluid (lubricates), ligaments (bone to bone).
- **Muscles:** work in antagonistic pairs (biceps/triceps).

## Common mistakes & exam traps

- Confusing ligaments (bone to bone) with tendons (muscle to bone).
- Saying the skin''s only function is protection.
- Forgetting that the skeleton produces blood cells in the marrow.
- Mixing up joint types.

## Exam technique

1. Give two functions of the skin besides protection.
2. For joints, name the type and the movement it allows.
3. Use the correct vocabulary: antagonistic, synovial, ligament, tendon.
4. For homeostasis, define it precisely.

## Memory hooks

- **Ligament:** "Ligament links bone to bone."
- **Tendon:** "Tendon ties muscle to bone."
- **Antagonistic:** "Biceps bends, triceps straightens."

## Quick practice

1. Give two skin functions besides protection. **[Temperature regulation, sensation]**
2. What type of joint is the elbow? **[Hinge]**
3. What does the skeleton produce in the bone marrow? **[Blood cells]**
4. Define homeostasis. **[Maintaining a constant internal environment]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('45ee8e59-de24-9604-b793-c311223a7961'::uuid, 'cheat-ordinary-hbio-blood-and-circulation', 'Human Biology', 'Blood & Circulation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Blood & Circulation Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Blood and circulation is a core Human Biology topic. The composition of blood, the heart, blood groups, and the breathing system all appear on the GCE paper.

## Core concepts

### Blood
- **Plasma:** liquid, transports dissolved substances.
- **Red blood cells:** contain haemoglobin, carry oxygen, NO nucleus.
- **White blood cells:** phagocytes (engulf microbes) and lymphocytes (produce antibodies).
- **Platelets:** help blood clot.
- **Blood groups:** O = universal donor, AB = universal recipient.

### The heart
- 4 chambers; the **left ventricle is the thickest** (pumps blood around the whole body).
- **Valves** prevent backflow.
- **SAN (sinoatrial node)** is the pacemaker — the heart is myogenic.
- Cardiac output = stroke volume × heart rate.
- **Coronary arteries** supply the heart muscle; blockage → heart attack (risks: smoking, fat, inactivity).

### The breathing system
Nose (warms/filters) → trachea (cartilage rings) → bronchi → bronchioles → alveoli.
- Alveoli: thin, moist, huge surface area, rich blood supply.
- **Inhale:** diaphragm flattens, ribs rise → pressure falls → air in.

## Common mistakes & exam traps

- Saying the left ventricle is thickest "because it pumps to the lungs" — it pumps to the whole body.
- Confusing the universal donor (O) and recipient (AB).
- Forgetting that red blood cells have no nucleus.
- Mixing up the order of the breathing passages.

## Exam technique

1. For the blood trace, name every structure in order.
2. Give the adaptation and function for each blood component.
3. For the heart, link the ventricle thickness to its job.
4. Use the correct vocabulary: myogenic, cardiac output, coronary.

## Memory hooks

- **Donor/recipient:** "O gives to all, AB takes from all."
- **Left ventricle:** "Thickest — pumps to the whole body."
- **Breathing in:** "Diaphragm down, ribs up, pressure down, air in."

## Quick practice

1. Why is the left ventricle thicker than the right? **[It pumps blood around the whole body]**
2. Trace blood from the lungs to the body. **[Lungs → pulmonary vein → left atrium → left ventricle → aorta → body]**
3. Which blood group is the universal donor? **[O]**
4. What is cardiac output? **[Stroke volume × heart rate]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ba57cf5e-b51b-d280-8734-291106d9fa4e'::uuid, 'cheat-ordinary-hbio-reproduction-and-health', 'Human Biology', 'Reproduction & Health Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Reproduction & Health Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Reproduction and health covers the reproductive systems, the menstrual cycle, pregnancy, and public health issues like STIs. GCE tests the labelled diagrams, the cycle, and the placenta''s functions.

## Core concepts

### The male system
- **Testes:** produce sperm and testosterone.
- Sperm travel: testes → vas deferens → urethra.

### The female system
- **Ovaries:** produce ova, oestrogen and progesterone.
- Ova travel: ovary → oviduct → uterus.
- **Menstrual cycle:** ~28 days; ovulation ≈ day 14.
- Hormones: FSH, LH, oestrogen, progesterone.

### Fertilisation and pregnancy
- Fertilisation occurs in the **oviduct**.
- Implantation in the uterus lining.
- **Placenta functions:** exchange of nutrients/oxygen/waste, produces hormones, acts as a barrier.

### Health
- **Antenatal care:** regular check-ups during pregnancy.
- Dangers: malaria, anaemia.
- **Contraception:** barrier (condoms), hormonal (pill), natural methods.
- **STIs:** HIV via blood, sexual contact, mother-to-child — NOT casual contact. Prevention: testing, condoms, faithfulness.

## Common mistakes & exam traps

- Saying fertilisation happens in the uterus — it is in the oviduct.
- Confusing FSH and LH roles.
- Forgetting the placenta is a barrier as well as an exchange surface.
- Saying HIV spreads by casual contact — it does not.

## Exam technique

1. Draw and label the female reproductive system with at least 5 parts.
2. Give three placenta functions.
3. For the cycle, state ovulation day and the hormones involved.
4. For HIV, state the three transmission routes precisely.

## Memory hooks

- **Fertilisation:** "In the oviduct."
- **Placenta:** "Exchange, hormones, barrier."
- **Ovulation:** "Around day 14."

## Quick practice

1. Draw and label the female reproductive system. **[5 parts]**
2. Give three functions of the placenta. **[Exchange, hormones, barrier]**
3. Where does fertilisation occur? **[Oviduct]**
4. Name two ways HIV is transmitted. **[Blood, sexual contact]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('041e9e73-5cb2-0322-b41a-a482922c7245'::uuid, 'cheat-ordinary-hbio-nutrition-and-disease', 'Human Biology', 'Nutrition & Disease Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Nutrition & Disease Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Nutrition and disease links diet to health — a topic with strong Cameroon relevance. GCE tests the food groups, deficiency diseases, and the prevention of common diseases.

## Core concepts

### The food groups
| Nutrient | Function | Deficiency disease |
|---|---|---|
| Carbohydrates | Energy | Marasmus (energy deficiency) |
| Proteins | Growth and repair | Kwashiorkor |
| Fats | Concentrated energy | — |
| Vitamin A | Vision | Night blindness |
| Vitamin C | Healing, iron absorption | Scurvy |
| Vitamin D | Calcium absorption | Rickets |
| Iron | Haemoglobin | Anaemia |
| Iodine | Thyroid function | Goitre |
| Calcium | Bones and teeth | Weak bones |

### Balanced diet
A balanced diet provides the right amounts of all nutrients for age, sex, activity and health status.

### Common diseases
- **Malaria:** caused by Plasmodium, spread by the female Anopheles mosquito. Prevention: bed nets, insecticide, clearing stagnant water.
- **Cholera:** contaminated water/food. Prevention: clean water, hygiene.
- **Diabetes:** inability to control blood glucose. Type 1: no insulin. Type 2: linked to diet and inactivity.
- **Hypertension:** high blood pressure — reduce salt, fat, stress.

## Common mistakes & exam traps

- Confusing kwashiorkor (protein) and marasmus (energy).
- Saying malaria is caused by "dirty water" — it is caused by the Plasmodium parasite spread by mosquitoes.
- Forgetting the vitamin–disease pairings.
- Giving the disease without its cause or prevention.

## Exam technique

1. Give the nutrient, its function, a source, and the deficiency disease.
2. For diseases, state cause, transmission, and prevention.
3. Use Cameroon-relevant examples (malaria, cholera in the rainy season).
4. For "balanced diet", mention the factors that change needs.

## Memory hooks

- **Kwashiorkor:** "Protein — puffy belly."
- **Marasmus:** "Energy — thin and wasted."
- **Malaria:** "Plasmodium, Anopheles mosquito."

## Quick practice

1. Which deficiency causes scurvy? **[Vitamin C]**
2. What causes malaria and how is it spread? **[Plasmodium parasite; female Anopheles mosquito]**
3. Give two ways to prevent cholera. **[Clean water, good hygiene]**
4. What is the deficiency disease for iron? **[Anaemia]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('01e4bbd2-da58-a3e1-0464-b219fccebd6e'::uuid, 'cheat-ordinary-agr-soils', 'Agricultural Science', 'Soils Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Soils Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Soils is a foundation topic in Agricultural Science. GCE tests the soil profile, texture, nutrients, fertilisers, and conservation methods. The soil profile diagram and nutrient deficiency questions are favourites.

## Core concepts

### The soil profile
- **A horizon (topsoil):** organic matter, roots, most fertile.
- **B horizon (subsoil):** less organic matter, accumulates minerals.
- **C horizon:** weathered parent rock.

### Soil texture
- Sand (large particles, drains fast), silt, clay (small particles, holds water).
- **Loam** (balanced mix) is ideal.
- Best pH for most crops: 6–7 (test with an indicator).

### Humus
Decayed organic matter — improves water retention, supplies nutrients, improves structure.

### Plant nutrients
| Nutrient | Role | Deficiency sign |
|---|---|---|
| Nitrogen (N) | Leaf growth | Yellowing leaves |
| Phosphorus (P) | Root growth | Purple leaves |
| Potassium (K) | Fruit/quality | Poor fruit, weak stems |

### Fertilisers
- **Organic** (manure, compost): improves structure, slow release.
- **Inorganic** (NPK, urea): fast, precise.
- Application: broadcasting, banding, top dressing.

### Conservation
Crop rotation, mulching, cover crops, terracing, agroforestry, contour ploughing.
- **Erosion:** water (gullying after deforestation), wind (Sahel region).

## Common mistakes & exam traps

- Confusing the A and B horizons.
- Saying clay drains fast — clay holds water, sand drains.
- Forgetting which nutrient causes which deficiency sign.
- Giving erosion controls without explaining how they work.

## Exam technique

1. Draw and label the soil profile with the three horizons.
2. For nutrients, give the role AND the deficiency sign.
3. For conservation, name the method and how it reduces erosion.
4. Use the correct vocabulary: humus, loam, leaching, topsoil.

## Memory hooks

- **N-P-K:** "Nitrogen for leaves, Phosphorus for roots, Potassium for fruit."
- **Loam:** "The ideal mix of sand, silt and clay."

## Quick practice

1. Draw and label the soil profile. **[3 horizons]**
2. Give two erosion control methods. **[Terracing, mulching]**
3. Yellowing leaves indicate which deficiency? **[Nitrogen]**
4. Why is loam ideal for farming? **[Balanced drainage and water retention]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a92fe7e9-975e-b7d8-68d7-8c7e8681a987'::uuid, 'cheat-ordinary-agr-crop-production', 'Agricultural Science', 'Crop Production Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Crop Production Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Crop production covers propagation, nursery practices, major Cameroonian crops, and pest/disease control. GCE tests the propagation methods, cocoa processing, and the cassava mosaic disease cycle.

## Core concepts

### Propagation
- **Sexual (seeds):** maize, cocoa.
- **Vegetative (asexual):** cassava stems, yam setts, plantain suckers, grafting.
- Advantages of vegetative propagation: true to type, faster, no seed dormancy.

### Nursery practices
- Seedbed preparation, pricking out, hardening off.
- **Spacing** prevents competition for light, water and nutrients.
- Weed at 2–3 weeks (maize).
- **Irrigation:** flood, furrow, drip (most efficient).

### Major crops
- **Cocoa:** shade trees needed; pods fermented 5–7 days (turning) then dried — quality determines price.
- **Coffee:** Arabica (highlands), Robusta (lowlands).
- **Cassava:** planted from stems, 9–12 months to harvest, processed to garri (removes cyanide).

### Pests and diseases
- **Fungal:** cocoa black pod (favoured by humidity).
- **Viral:** cassava mosaic (spread by whitefly; control with clean planting material).
- **Control:** cultural (rotation, sanitation), biological, chemical (follow labels, wear protection, respect withdrawal periods).

## Common mistakes & exam traps

- Saying cassava is grown from seeds — it is grown from stem cuttings.
- Forgetting why cocoa is fermented (develops flavour, quality = price).
- Confusing the vector of cassava mosaic (whitefly).
- Giving chemical control without safety precautions.

## Exam technique

1. For propagation, name the method and an example crop.
2. For cocoa, link fermentation/drying to quality and price.
3. For diseases, give the cause, vector, and control.
4. Use the correct vocabulary: sett, sucker, pricking out, hardening off.

## Memory hooks

- **Vegetative:** "Stems, setts, suckers — no seeds."
- **Cassava mosaic:** "Whitefly carries it, clean stems stop it."

## Quick practice

1. Why ferment and dry cocoa properly? **[Quality determines price]**
2. What is the vector of cassava mosaic and how is it controlled? **[Whitefly; clean planting material]**
3. Give one advantage of vegetative propagation. **[True to type, faster]**
4. Which irrigation method is most efficient? **[Drip]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('b3386950-cf11-54ef-211c-2a334be12298'::uuid, 'cheat-ordinary-agr-animal-production', 'Agricultural Science', 'Animal Production Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Animal Production Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Animal production covers poultry, pigs, cattle and small ruminants. GCE tests broiler/layer management, vaccination, biosecurity, and the African swine fever situation.

## Core concepts

### Poultry
- **Broilers:** raised for meat, ready in 6–8 weeks.
- **Layers:** raised for eggs, start laying ≈ 20 weeks.
- **Housing:** deep litter or battery cages.
- **Brooding:** warmth in the first weeks.
- **Feed:** starter → grower → layers'' mash. Clean water always.
- **Vaccines:** Newcastle, Gumboro.
- **Healthy signs:** alert, glossy feathers, good feed intake.

### Pigs
- Farrowing care for sows and piglets.
- **African swine fever (ASF):** NO vaccine → strict biosecurity only.

### Cattle
- Zebu cattle; tsetse fly challenge in the south.
- Diseases: CBPP, trypanosomiasis.
- Dry-season supplementation.

### Small ruminants and fish
- Goats/sheep: browse and graze; deworm against parasites.
- Fish: tilapia in ponds.

### Biosecurity
Footbaths, isolate new birds, control visitors, clean equipment.

## Common mistakes & exam traps

- Confusing broilers and layers.
- Saying ASF has a vaccine — it does not; control is biosecurity.
- Forgetting the brooding requirement for chicks.
- Giving vaccination without the disease names.

## Exam technique

1. For poultry, give the feed stages and vaccination schedule.
2. For biosecurity, give specific measures.
3. For ASF, state clearly that there is no vaccine.
4. Use the correct vocabulary: brooding, deep litter, farrowing, biosecurity.

## Memory hooks

- **Broilers:** "Meat in 6–8 weeks."
- **Layers:** "Eggs from about 20 weeks."
- **ASF:** "No vaccine — biosecurity only."

## Quick practice

1. Give the vaccination schedule for broilers. **[Newcastle, Gumboro]**
2. Give two biosecurity measures. **[Footbaths, isolation of new birds]**
3. Why is there no vaccine for ASF? **[Viral disease — control by biosecurity only]**
4. What is brooding? **[Providing warmth to chicks in the first weeks]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('4027df5e-3f4e-037b-74a6-a2cd06371549'::uuid, 'cheat-ordinary-agr-farm-management', 'Agricultural Science', 'Farm Management Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Farm Management Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Farm management covers the business side of agriculture — records, costs, revenue, profit and simple accounts. GCE tests farm records, cost calculations, and the importance of planning.

## Core concepts

### Farm records
- **Inventory:** list of farm assets.
- **Production records:** what was produced.
- **Financial records:** income and expenditure.
- **Importance:** planning, monitoring, decision-making, obtaining credit.

### Costs and revenue
- **Fixed costs:** do not change with output (rent, equipment).
- **Variable costs:** change with output (seeds, feed, fertiliser).
- **Total cost** = fixed + variable.
- **Revenue** = price × quantity sold.
- **Profit** = revenue − total cost.

**Worked example:** a farmer sells 200 bags of maize at 5,000 FCFA each. Revenue = 1,000,000 FCFA. Fixed costs 200,000, variable costs 300,000. Total cost = 500,000. Profit = 500,000 FCFA.

### Farm planning
- Choose crops/animals suited to the land and market.
- Budget for inputs.
- Plan for seasons and risks (drought, pests, price changes).

### Marketing
- Direct sale, cooperatives, middlemen.
- Cooperatives give better prices and shared transport.

## Common mistakes & exam traps

- Confusing fixed and variable costs.
- Forgetting that profit = revenue − total cost (not just revenue).
- Giving records without their purpose.
- Mixing up revenue and profit.

## Exam technique

1. Define each term before calculating.
2. Show the calculation steps clearly.
3. For "why keep records", give at least three reasons.
4. Use the correct vocabulary: fixed cost, variable cost, revenue, profit.

## Memory hooks

- **Profit:** "Revenue minus total cost."
- **Fixed costs:** "Same every month, whatever you produce."

## Quick practice

1. A farmer sells 200 bags at 5,000 FCFA each. Fixed costs 200,000, variable 300,000. Find profit. **[500,000 FCFA]**
2. Give two reasons for keeping farm records. **[Planning, obtaining credit]**
3. Define variable cost with an example. **[Costs that change with output — seeds, feed]**
4. Why do cooperatives help farmers? **[Better prices, shared transport]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('39fedfef-486b-8487-2e1c-715d04e1d2ec'::uuid, 'cheat-ordinary-fnut-nutrients', 'Food and Nutrition', 'Nutrients Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Nutrients Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Nutrients is the foundation of Food and Nutrition. GCE tests the energy values, vitamins, minerals, and the effects of deficiency. The energy values (4/4/9) are guaranteed marks.

## Core concepts

### Energy values
- Carbohydrate: 4 kcal/g.
- Protein: 4 kcal/g.
- Fat: 9 kcal/g.

### Vitamins
| Vitamin | Function | Sources | Deficiency |
|---|---|---|---|
| A | Vision | Red palm oil, carrots | Night blindness |
| C | Healing, iron absorption | Citrus, guava | Scurvy |
| D | Calcium absorption | Sunlight, fish | Rickets |
| Folate | Blood cell formation | Green leaves | Anaemia in pregnancy |

### Minerals
- **Iron:** haemoglobin (dark greens, meat) — deficiency: anaemia. Vitamin C aids absorption.
- **Calcium:** bones and teeth (milk, fish).
- **Iodine:** thyroid (iodised salt) — deficiency: goitre.

### Water
6–8 glasses daily — transport, temperature regulation, waste removal.

### Balance
- BMI \(= \frac{\text{kg}}{\text{m}^2}\). Healthy range: 18.5–24.9.
- Needs vary with age, sex, activity, pregnancy.

## Common mistakes & exam traps

- Forgetting the energy values (4/4/9).
- Confusing which vitamin prevents which disease.
- Saying vitamin C is stored in the body — it is water-soluble and not stored.
- Giving the deficiency without the source.

## Exam technique

1. Give the vitamin, function, source, and deficiency disease.
2. For energy, state the value per gram.
3. For "balanced diet", mention the factors that change needs.
4. Use the correct vocabulary: water-soluble, fat-soluble, deficiency.

## Memory hooks

- **Energy values:** "4, 4, 9 — carbs, protein, fat."
- **Vitamin A:** "A for eyes."
- **Vitamin D:** "D for bones (with calcium)."

## Quick practice

1. Give the energy value of 1 g of each nutrient. **[4/4/9]**
2. Give two deficiency diseases and their causes. **[Scurvy (vitamin C), rickets (vitamin D)]**
3. What is the healthy BMI range? **[18.5–24.9]**
4. Which mineral prevents goitre? **[Iodine]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('bcf44599-4c71-2925-46fa-a075447dcd0e'::uuid, 'cheat-ordinary-fnut-meal-planning', 'Food and Nutrition', 'Meal Planning Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Meal Planning Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Meal planning tests whether you can apply nutrition knowledge to real families and budgets — a favourite GCE question type. The planning factors and special diets are the core knowledge.

## Core concepts

### Planning factors
Nutritional needs, budget, season, time available, equipment, family size, culture and religion.

### Food groups
- **Energy-giving:** carbohydrates and fats.
- **Body-building:** proteins.
- **Protective:** vitamins and minerals.

### Special diets
| Diet | Key rules |
|---|---|
| Diabetic | Controlled carbohydrates, regular meals |
| Hypertensive | Less than 5 g salt per day, use herbs |
| Pregnant | Extra protein, iron, folate |
| Convalescent | High protein, small frequent meals |

### A balanced Cameroonian example
A small-budget lunch: rice + beans + huckleberry + avocado + water.
- Swaps: seasonal vegetables, dried fish instead of meat.

## Common mistakes & exam traps

- Planning meals without considering the budget.
- Forgetting to justify the choice of foods.
- Giving a diet for one condition but not explaining the rules.
- Ignoring seasonality and local availability.

## Exam technique

1. Plan the day''s meals first, then justify each choice.
2. Link every food to a nutrient and its function.
3. For special diets, state the rule AND the reason.
4. Use the correct vocabulary: balanced, protective, energy-giving.

## Memory hooks

- **Planning factors:** "Needs, budget, season, time, equipment, family, culture."
- **Diabetic:** "Controlled carbs, regular meals."

## Quick practice

1. Plan a day''s meals for a pregnant woman on a limited budget, with justification. **[10 marks]**
2. Give two ways to conserve vitamin C when cooking. **[Little water, short cooking time]**
3. Name the three food groups. **[Energy-giving, body-building, protective]**
4. What is the salt limit for a hypertensive person? **[Less than 5 g per day]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('02ed673d-27d1-785b-5067-1f0841852e23'::uuid, 'cheat-ordinary-fnut-preservation-and-hygiene', 'Food and Nutrition', 'Preservation & Hygiene Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Preservation & Hygiene Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Preservation and hygiene cover food spoilage, preservation methods, and kitchen safety — all tested on the GCE paper. The danger zone and cross-contamination are the key concepts.

## Core concepts

### Causes of spoilage
Micro-organisms, enzymes, pests, moisture, oxygen.

### Preservation methods
| Method | Example |
|---|---|
| Drying | Fish, mangoes |
| Salting | Fish, meat |
| Smoking | Fish |
| Fermentation | Garri |
| Canning | Fruits, vegetables |
| Freezing | Meat, vegetables |
| Pickling | Vegetables |
| Jam-making | Sugar + acid |

- **Refrigeration SLOWS spoilage; it does not stop it.**

### Kitchen hygiene
- Wash hands before and during cooking.
- Cover cuts; tie back hair.
- **Separate raw and cooked food** (prevent cross-contamination).
- Cool leftovers quickly; reheat thoroughly ONCE.

### The danger zone
5–63 °C — bacteria multiply fastest. Keep hot food hot, cold food cold.

### Food-borne illnesses
- **Salmonella:** undercooked poultry.
- **Cholera:** contaminated water (rainy-season risk in Cameroon).

## Common mistakes & exam traps

- Saying refrigeration "kills bacteria" — it only slows them.
- Confusing the danger zone temperatures.
- Forgetting to separate raw and cooked food.
- Giving preservation methods without examples.

## Exam technique

1. For preservation, give the method, an example, and how it works.
2. For hygiene, give specific practices.
3. State the danger zone range precisely.
4. For illnesses, give the cause and prevention.

## Memory hooks

- **Danger zone:** "5 to 63 — bacteria''s happy place."
- **Cross-contamination:** "Raw and cooked never touch."

## Quick practice

1. Give three fish preservation methods with one advantage each. **[Drying, salting, smoking]**
2. Define the danger zone and give one rule. **[5–63 °C; keep hot food hot]**
3. What is cross-contamination and how is it prevented? **[Raw to cooked transfer; separate boards and utensils]**
4. Why does refrigeration not stop spoilage? **[It only slows bacterial growth]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e193977d-e1fe-0985-e5f9-40d79864bdab'::uuid, 'cheat-ordinary-english-comprehension-and-summary', 'English Language', 'Comprehension & Summary Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Comprehension & Summary Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Comprehension and summary are guaranteed on Paper 1 and Paper 2 of the GCE English Language exam. They test whether you can read accurately, extract the right information, and express it in your own words. Summary questions are where most marks are lost — not because students cannot read, but because they copy the passage instead of summarising.

## Core concepts

### The comprehension question
- Read the passage **twice**: once for the gist, once for detail.
- Answer in **your own words** unless the question says "quote".
- Match your answer to the **marks**: a 2-mark question needs two distinct points.
- Use the exact wording of the question to start your answer (e.g. "The writer says that...").

### The summary question
- Identify the **key points** the question asks for (e.g. "the causes of flooding").
- Select only relevant points — ignore examples, repetition and decoration.
- Write in **continuous prose** (full sentences), not bullet points.
- Use your own words; copying earns few marks.
- Aim for one point per mark, plus one extra as a safety margin.

### Vocabulary in context
- Use the surrounding sentence to guess the meaning of an unknown word.
- Look for **clues**: definitions, examples, contrasts ("but", "however"), cause-effect ("because", "therefore").

### Inference
- Some answers are not stated directly — you must "read between the lines".
- Support every inference with evidence from the passage.

## Common mistakes & exam traps

- Copying whole sentences from the passage in a summary — paraphrase instead.
- Answering with too few points for the marks available.
- Quoting when the question asks for your own words (and vice versa).
- Missing the instruction "in not more than 80 words" — count your words.
- Writing a summary of the whole passage instead of only the points asked for.

## Exam technique

1. Underline the key instruction words: "state", "explain", "quote", "in your own words".
2. For summaries, list your points in rough first, then join them into prose.
3. Give your summary a **title** if asked — it earns a mark.
4. Manage time: comprehension should take about 30 minutes, summary about 25.

## Memory hooks

- **Summary:** "One point per mark, in your own words, in continuous prose."
- **Comprehension:** "Answer the question asked, not the question you wish was asked."

## Quick practice

1. Why is it important to answer in your own words in a summary? **[To show understanding and earn marks]**
2. A 3-mark summary question needs how many points? **[At least 3, ideally 4]**
3. What does "inference" mean? **[Reading meaning that is implied but not stated]**
4. When may you quote directly from the passage? **[Only when the question says "quote"]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('d530bddc-ddbb-c112-e7f0-e44e022c7988'::uuid, 'cheat-ordinary-english-essay-writing', 'English Language', 'Essay Writing Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Essay Writing Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

The essay is the biggest single mark on the English Language paper — typically 20–25 marks. A well-structured essay with correct grammar and a clear argument will always score higher than a longer one that rambles. Examiners reward structure, relevance and accuracy.

## Core concepts

### The essay structure
1. **Introduction:** state your topic and your position (for argumentative) or your plan (for narrative). Keep it to 2–3 sentences.
2. **Body:** 3–4 paragraphs, each with ONE main idea. Start each with a topic sentence.
3. **Conclusion:** summarise your main points and give a final thought. Do not introduce new ideas.

### Types of essay
- **Narrative:** tell a story with a clear beginning, middle and end. Use past tenses and vivid detail.
- **Descriptive:** paint a picture with the senses — sight, sound, smell, touch, taste.
- **Argumentative:** take a clear position and support it with reasons and examples. Address the counter-argument.
- **Expository:** explain or inform. Be logical and factual.

### Paragraphing
- One idea per paragraph.
- Use linking words: however, therefore, moreover, in addition, on the other hand, consequently.
- Vary sentence length — short sentences for impact, longer ones for explanation.

### Register and tone
- Match the tone to the task: formal for argumentative/expository, more personal for narrative.
- Avoid slang and contractions in formal essays.

## Common mistakes & exam traps

- Writing "off-topic" — always answer the exact question set.
- No clear structure: a wall of text with no paragraphs.
- Repeating the same idea in different words to pad the length.
- Forgetting the conclusion or ending abruptly.
- Spelling and grammar errors that obscure meaning.

## Exam technique

1. Spend 5 minutes **planning** — jot down your introduction idea, 3–4 body points, and conclusion.
2. Write a **topic sentence** for each paragraph.
3. Leave time to **proofread** — check subject-verb agreement, tenses, and punctuation.
4. Aim for 350–450 words; quality over quantity.

## Memory hooks

- **Essay plan:** "Intro, 3 points, conclusion — say it, prove it, wrap it."
- **Paragraph:** "One idea, one paragraph."

## Quick practice

1. What are the three parts of an essay? **[Introduction, body, conclusion]**
2. How many main ideas should each body paragraph contain? **[One]**
3. Name three linking words. **[However, therefore, moreover]**
4. Why should you plan before writing? **[To stay on topic and structure your argument]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('77d71d6e-ca24-31e1-75de-6defb2db0691'::uuid, 'cheat-ordinary-english-grammar-and-usage', 'English Language', 'Grammar & Usage Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Grammar & Usage Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Grammar questions appear directly in the "Use of English" section and indirectly in every essay you write. Correct grammar is the difference between a good and a great essay mark. The most common tested areas are tenses, subject-verb agreement, prepositions, and sentence structure.

## Core concepts

### Tenses
- **Present simple:** habits and facts — "She works in Douala."
- **Past simple:** completed actions — "He went to market."
- **Present perfect:** past action with present relevance — "I have finished my homework."
- **Past perfect:** action before another past action — "She had left before I arrived."
- **Future:** "will" for decisions/predictions, "going to" for plans.

### Subject-verb agreement
- Singular subject → singular verb: "The boy **plays**."
- Plural subject → plural verb: "The boys **play**."
- Watch tricky subjects: "Neither of the students **is** here." "The news **is** good."

### Prepositions
- Time: at (a time), on (a day), in (a month/year).
- Place: at (a point), on (a surface), in (an enclosed space).
- Common pairs: interested **in**, good **at**, afraid **of**, depend **on**, listen **to**.

### Sentence structure
- **Simple:** one clause — "The dog barked."
- **Compound:** two clauses joined by and/but/or — "The dog barked and the cat ran."
- **Complex:** main clause + subordinate clause — "The dog barked because it was hungry."

### Common errors
- "There is many people" → "There **are** many people."
- "I have went" → "I have **gone**."
- "Me and John went" → "**John and I** went."

## Common mistakes & exam traps

- Confusing "its" (possession) and "it''s" (it is).
- Confusing "their", "there" and "they''re".
- Using "less" for countable nouns — use "fewer": "fewer students".
- Double negatives: "I don''t have nothing" → "I don''t have anything".

## Exam technique

1. Read the whole sentence before choosing the answer.
2. Check subject-verb agreement by finding the subject and the verb.
3. In error-correction questions, look for tense, agreement, preposition and spelling errors.
4. In your essay, use tenses consistently — do not switch between past and present without reason.

## Memory hooks

- **Agreement:** "Match the verb to the subject, not to the nearest noun."
- **Prepositions:** "At a point, on a surface, in a space."

## Quick practice

1. Correct: "There is many students in the class." **[There are many students]**
2. Choose: "She is interested ___ music." **[in]**
3. Correct: "I have went to the market." **[I have gone to the market]**
4. "Neither of the boys ___ (is/are) present." **[is]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a6b2bfe0-07ef-4954-5f21-74423825f781'::uuid, 'cheat-ordinary-english-vocabulary-and-idioms', 'English Language', 'Vocabulary & Idioms Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Vocabulary & Idioms Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

A rich vocabulary lifts your essay marks and helps you answer comprehension and use-of-English questions. GCE papers test synonyms, antonyms, idioms and word formation. Building vocabulary is a slow process, so learn in themes and use the words actively.

## Core concepts

### Synonyms and antonyms
- **Synonym:** a word with the same meaning — happy/joyful, big/enormous.
- **Antonym:** a word with the opposite meaning — happy/sad, big/small.
- In comprehension, "find a word meaning X" questions test synonyms.

### Word formation
- **Prefixes** change meaning: un-, dis-, im-, in-, re-, pre-, mis-.
  - happy → unhappy, agree → disagree, possible → impossible.
- **Suffixes** change word class:
  - -tion/-sion (noun): decide → decision
  - -ful/-less (adjective): care → careful/careless
  - -ly (adverb): quick → quickly
  - -ment (noun): develop → development

### Common idioms
- "Break the ice" — start a conversation.
- "Once in a blue moon" — very rarely.
- "Hit the nail on the head" — be exactly right.
- "A piece of cake" — very easy.
- "Bite the bullet" — face something difficult bravely.
- "Under the weather" — feeling ill.

### Phrasal verbs
- "Look after" — take care of.
- "Give up" — stop trying.
- "Put off" — postpone.
- "Turn down" — refuse.
- "Carry on" — continue.

## Common mistakes & exam traps

- Using an idiom in the wrong context — idioms are fixed; do not change their words.
- Confusing similar words: affect/effect, advice/advise, practice/practise.
- Using a word whose meaning you are not sure of in an essay — a wrong word costs more than a simple one.
- Forgetting that phrasal verbs are often informal — avoid them in formal essays.

## Exam technique

1. Learn vocabulary in **themes** (school, health, money, environment) — exam topics repeat.
2. In "find the word" questions, scan for the exact meaning, not a related idea.
3. Keep a personal vocabulary notebook with example sentences.
4. In essays, use one precise word instead of three vague ones.

## Memory hooks

- **Prefixes:** "Un, dis, im — opposites begin."
- **Idioms:** "Learn idioms as whole phrases, never word by word."

## Quick practice

1. Give a synonym for "enormous". **[huge/giant]**
2. Add a prefix to make "possible" negative. **[impossible]**
3. What does "once in a blue moon" mean? **[Very rarely]**
4. Choose the correct word: "The teacher gave us good ___ (advice/advise)." **[advice]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('0ac3a986-b334-8426-13a6-7b0b52ac7ce2'::uuid, 'cheat-ordinary-english-letter-writing', 'English Language', 'Letter Writing Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Letter Writing Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Letter writing is a frequent choice on the GCE English Language essay paper. Formal letters (to officials, editors, companies) and informal letters (to friends and family) have strict formats. Getting the format right earns marks before you even write a sentence of content.

## Core concepts

### Formal letter format
1. **Your address** (top right).
2. **Date** (below your address).
3. **Recipient''s address** (top left, below the date).
4. **Salutation:** "Dear Sir/Madam" (if you do not know the name) or "Dear Mr/Mrs/Ms X".
5. **Subject line:** a short summary of the letter''s purpose.
6. **Body:** introduction (state purpose), 2–3 paragraphs of content, conclusion (request action).
7. **Closing:** "Yours faithfully" (for Dear Sir/Madam) or "Yours sincerely" (for Dear Mr/Mrs X).
8. **Signature** and printed name.

### Informal letter format
1. **Your address** (top right) and **date**.
2. **Salutation:** "Dear John,".
3. **Body:** friendly opening, main content, warm closing.
4. **Closing:** "Yours sincerely" or "Love/Best wishes".
5. **Signature.**

### Content tips
- Formal: be polite, clear and concise. State your purpose in the first sentence.
- Informal: be warm and natural. Ask about the reader''s life.

## Common mistakes & exam traps

- Matching the wrong closing to the salutation: "Dear Sir" → "Yours faithfully"; "Dear Mr X" → "Yours sincerely".
- Forgetting the addresses or the date.
- Using informal language in a formal letter (contractions, slang).
- Writing the subject line in an informal letter.
- Signing a full name when only a first name is appropriate (informal).

## Exam technique

1. Decide formal or informal **before** you write.
2. Set out the format correctly — it earns marks.
3. Plan the body: purpose, 2–3 points, request/action.
4. Keep the tone consistent throughout.

## Memory hooks

- **Formal closing:** "Sir → faithfully, Surname → sincerely."
- **Letter skeleton:** "Addresses, date, salutation, body, closing, signature."

## Quick practice

1. Which closing follows "Dear Sir/Madam"? **[Yours faithfully]**
2. Where does the recipient''s address go in a formal letter? **[Top left, below the date]**
3. Name one thing you should NOT write in a formal letter. **[Slang/contractions]**
4. What goes between the salutation and the body in a formal letter? **[A subject line]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('c3cc0b93-bbb4-5b93-454d-d59d24e11fbd'::uuid, 'cheat-ordinary-english-literature-poetry-analysis', 'English Literature', 'Poetry Analysis Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Poetry Analysis Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Poetry is a core section of the English Literature paper. You must read a poem, understand its meaning, and comment on how the poet uses language and structure to create effect. The marks go to those who quote the poem and explain the effect — not just describe what it says.

## Core concepts

### First reading — meaning
- Read the poem twice: once for feeling, once for detail.
- Identify the **speaker** and the **situation**.
- Summarise the poem''s subject in one sentence.
- Identify the **theme** (love, loss, nature, identity, war, freedom).

### Language devices
- **Simile:** comparison using "like" or "as" — "her smile is like sunshine".
- **Metaphor:** direct comparison — "life is a journey".
- **Personification:** giving human qualities to objects — "the wind whispered".
- **Imagery:** language that creates pictures using the senses.
- **Alliteration:** repeated consonant sounds — "the silent silver sea".
- **Onomatopoeia:** words that imitate sounds — "buzz", "hiss".
- **Symbolism:** an object standing for an idea — a dove for peace.

### Structure and form
- **Rhyme scheme:** the pattern of end rhymes (AABB, ABAB).
- **Rhythm:** the beat of the poem; regular rhythm suggests control, irregular suggests chaos.
- **Stanzas:** groups of lines; a change of stanza often signals a change of idea.
- **Enjambment:** a line running into the next without punctuation — creates flow.

### Tone and mood
- **Tone:** the poet''s attitude (sad, angry, joyful, ironic).
- **Mood:** the feeling created in the reader.

## Common mistakes & exam traps

- Describing the poem''s content without commenting on **how** it is written.
- Quoting without explaining the effect of the quote.
- Confusing the poet with the speaker.
- Ignoring structure — rhyme, rhythm and stanza shape matter.
- Writing a general essay on the theme without referring to the specific poem.

## Exam technique

1. **Quote + technique + effect:** name the device, quote it, explain what it does.
2. Comment on language AND structure AND tone.
3. Link every point back to the theme.
4. Use the poem''s title in your introduction and conclusion.

## Memory hooks

- **Analysis formula:** "What it says, how it says it, why it matters."
- **Devices:** "Simile like, metaphor is, personification gives life."

## Quick practice

1. What is the difference between a simile and a metaphor? **[Simile uses like/as; metaphor is direct]**
2. Name three language devices. **[Simile, metaphor, personification]**
3. What is the rhyme scheme AABB? **[First two lines rhyme, next two rhyme]**
4. What is the difference between tone and mood? **[Tone is the poet''s attitude; mood is the reader''s feeling]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('daa04281-0300-104f-e9bf-a284f40d3c82'::uuid, 'cheat-ordinary-english-literature-prose-analysis', 'English Literature', 'Prose Analysis Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Prose Analysis Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Prose (novels and short stories) is a major section of the English Literature paper. You are tested on plot, character, setting and theme, and you must support every point with evidence from the text. Knowing the set texts well is the foundation of a good mark.

## Core concepts

### Plot
- The sequence of events: **exposition → rising action → climax → falling action → resolution**.
- Be able to summarise the plot in a paragraph and in a sentence.
- Note key turning points and how they change the characters.

### Character
- **Characterisation:** how the author builds a character (actions, speech, thoughts, what others say).
- **Protagonist:** the main character. **Antagonist:** the character who opposes them.
- Track each character''s **development** — how they change from start to end.
- Use **P.E.E.** (Point, Evidence, Explanation) for every character point.

### Setting
- Where and when the story happens — place, time, society.
- Setting can create **mood** and **symbolise** ideas (e.g. a storm for conflict).

### Theme
- The central ideas: love, power, injustice, identity, tradition vs change.
- Show how the author explores the theme through events, characters and language.

### Narrative technique
- **Point of view:** first person ("I"), third person ("he/she"), omniscient (all-knowing).
- **Foreshadowing:** hints of what will come.
- **Irony:** a gap between what is said and what is meant.

## Common mistakes & exam traps

- Retelling the plot instead of analysing it.
- Making points without quoting or referring to the text.
- Confusing characters'' names or events — accuracy matters.
- Ignoring the question and writing a memorised essay.
- Forgetting to comment on the author''s methods (language, structure).

## Exam technique

1. Answer the question set — adapt your knowledge to it.
2. Use **P.E.E.** for every point: Point, Evidence (quote/reference), Explanation.
3. Comment on the author''s **methods**, not just the story.
4. Link your points to the theme in the question.

## Memory hooks

- **P.E.E.:** "Point, Evidence, Explanation — every time."
- **Plot arc:** "Exposition, rising, climax, falling, resolution."

## Quick practice

1. What does P.E.E. stand for? **[Point, Evidence, Explanation]**
2. Name the five stages of a plot. **[Exposition, rising action, climax, falling action, resolution]**
3. What is a protagonist? **[The main character]**
4. Give two ways an author can reveal character. **[Actions and speech]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('90348320-c32c-dbec-3e6b-5b679e8d13f6'::uuid, 'cheat-ordinary-english-literature-drama-analysis', 'English Literature', 'Drama Analysis Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Drama Analysis Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Drama is a distinct genre on the English Literature paper. A play is written to be performed, so you must consider dialogue, stage directions, dramatic tension and the effect on an audience. Examiners reward answers that treat the text as a play, not just a story.

## Core concepts

### Dialogue
- Dialogue reveals character and advances the plot.
- **Subtext:** what characters really mean beneath what they say.
- Comment on how a character''s speech changes (tone, formality) in different situations.

### Stage directions
- The playwright''s instructions: setting, movement, tone, props.
- They tell you how lines should be delivered — use them as evidence.
- Example: "She pauses, then speaks quietly" reveals hesitation.

### Dramatic tension
- **Conflict:** between characters, within a character, or with society.
- **Climax:** the moment of greatest tension.
- **Dramatic irony:** the audience knows something the characters do not — creates suspense.

### Structure of a play
- **Acts and scenes:** a scene change often signals a change of time, place or mood.
- **Exposition:** the opening that sets up the situation.
- **Resolution:** how the conflict is resolved.

### Audience effect
- Ask: how does this moment make the audience feel — and why?
- Consider comedy, tragedy, suspense and catharsis.

## Common mistakes & exam traps

- Writing about the play as if it were a novel — ignore performance.
- Ignoring stage directions.
- Forgetting to comment on the effect on the **audience**.
- Quoting dialogue without explaining what it reveals.
- Not knowing the difference between the playwright and a character.

## Exam technique

1. Always consider the play **on stage**: what would the audience see and hear?
2. Use stage directions as evidence alongside dialogue.
3. Comment on tension and how it builds to the climax.
4. Link character and conflict to the play''s themes.

## Memory hooks

- **Drama lens:** "Dialogue, stage directions, tension, audience."
- **Tension:** "Conflict builds, climax breaks."

## Quick practice

1. Why must you consider stage directions in a play? **[They show how lines are delivered and reveal character]**
2. What is dramatic irony? **[The audience knows what characters do not]**
3. What is subtext? **[The real meaning beneath the spoken words]**
4. Name the three types of conflict. **[Character vs character, character vs self, character vs society]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('8f4e1b0c-76ea-129c-3239-9787fcec19a4'::uuid, 'cheat-ordinary-french-compr-hension-crite', 'French', 'Fiche : Compréhension écrite', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fiche : Compréhension écrite

> **Poids à l''examen :** élevé · **Temps de maîtrise :** 30 min · **Niveau :** Form 5

## Pourquoi ce sujet est important

La compréhension écrite est une épreuve obligatoire au GCE. Elle teste ta capacité à lire un texte, à en saisir le sens général et les détails, et à répondre en français correct. Beaucoup de points se perdent parce qu''on répond en anglais ou qu''on recopie le texte au lieu de reformuler.

## Notions essentielles

### Lire efficacement
- Lis le texte **deux fois** : une fois pour le sens général, une fois pour les détails.
- Souligne les mots-clés et les noms propres.
- Repère le **thème** du texte (santé, école, environnement, voyage...).

### Répondre aux questions
- Réponds **en français** — c''est une épreuve de français.
- Réponds **en phrases complètes** : "Le texte parle de..." au lieu de "la pollution".
- Adapte la longueur de ta réponse au nombre de points (une question à 2 points = deux idées).
- Reformule avec tes propres mots quand la question demande "expliquez".

### Le vocabulaire utile
- **Question :** la question, le texte, le titre, l''auteur, le paragraphe.
- **Verbes de consigne :** relevez (find), expliquez (explain), justifiez (justify), citez (quote), résumez (summarise).

### L''inférence
- Certaines réponses ne sont pas écrites directement — il faut "lire entre les lignes".
- Appuie chaque réponse sur une preuve du texte.

## Erreurs fréquentes et pièges d''examen

- Répondre en anglais — zéro point même si la réponse est juste.
- Recopier des phrases entières du texte quand on demande d''expliquer.
- Répondre avec trop peu d''idées pour le nombre de points.
- Ignorer la consigne "citez" (il faut citer) ou "expliquez" (il faut reformuler).
- Ne pas lire la question complète avant de répondre.

## Technique d''examen

1. Lis les questions **avant** le texte pour savoir quoi chercher.
2. Souligne dans le texte les passages qui répondent aux questions.
3. Réponds dans l''ordre des questions.
4. Garde 5 minutes à la fin pour relire tes réponses et vérifier l''orthographe.

## Moyens mnémotechniques

- **Répondre :** "En français, en phrases complètes, avec des preuves du texte."
- **Consignes :** "Citer = copier, expliquer = reformuler."

## Entraînement rapide

1. Dans quelle langue faut-il répondre aux questions de compréhension ? **[En français]**
2. Une question à 2 points demande combien d''idées ? **[Deux idées]**
3. Que signifie "relevez" ? **[Trouvez dans le texte]**
4. Pourquoi faut-il lire les questions avant le texte ? **[Pour savoir quoi chercher]**

## Auto-évaluation

Tu es prêt(e) à quitter cette fiche lorsque tu peux :

- [ ] Expliquer chaque notion sans regarder la fiche.
- [ ] Refaire les exercices d''entraînement sans aide.
- [ ] Citer au moins un piège fréquent et l''éviter.
- [ ] Rédiger une réponse d''examen propre et complète avec le bon vocabulaire.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('21931f88-4f9e-9968-3d81-8c7c7f7daeb6'::uuid, 'cheat-ordinary-french-expression-crite', 'French', 'Fiche : Expression écrite', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fiche : Expression écrite

> **Poids à l''examen :** élevé · **Temps de maîtrise :** 35 min · **Niveau :** Form 5

## Pourquoi ce sujet est important

L''expression écrite (la rédaction) est l''épreuve la plus lourde en points au GCE français. Une rédaction bien structurée, avec des phrases correctes et un vocabulaire varié, rapporte toujours plus qu''un texte long et confus. Les correcteurs récompensent la structure, la pertinence et la correction de la langue.

## Notions essentielles

### La structure de la rédaction
1. **Introduction :** présente le sujet et annonce ton plan (2–3 phrases).
2. **Développement :** 2–3 paragraphes, chacun avec UNE idée principale.
3. **Conclusion :** résume tes idées et donne une réflexion finale.

### Les types de rédaction
- **Récit (narrative) :** raconte une histoire au passé (passé composé, imparfait).
- **Description :** décris avec les cinq sens.
- **Argumentation :** donne ton opinion et défends-la avec des arguments et des exemples.
- **Lettre :** respecte le format (voir la fiche sur la correspondance).

### Les connecteurs logiques
- Pour ajouter : **de plus, en outre, ensuite, également**.
- Pour opposer : **mais, cependant, par contre, en revanche**.
- Pour conclure : **en conclusion, finalement, pour conclure, donc**.

### La concordance des temps
- Récit au passé : imparfait (description) + passé composé (actions).
- Exemple : "Il **faisait** beau quand je **suis arrivé**."

## Erreurs fréquentes et pièges d''examen

- Hors sujet — réponds toujours à la question posée.
- Pas de paragraphes — un bloc de texte sans structure.
- Oublier la conclusion.
- Répéter les mêmes mots — utilise des synonymes.
- Faire des fautes d''accord (le sujet et le verbe).

## Technique d''examen

1. Passe 5 minutes à **préparer** un plan (introduction, 2–3 idées, conclusion).
2. Écris des phrases simples et correctes plutôt que des phrases longues et fausses.
3. Relis-toi à la fin : vérifie les accords, les temps et l''orthographe.
4. Vise 150–200 mots pour une rédaction courte.

## Moyens mnémotechniques

- **Plan :** "Introduction, développement, conclusion — annonce, développe, résume."
- **Paragraphe :** "Une idée par paragraphe."

## Entraînement rapide

1. Quelles sont les trois parties d''une rédaction ? **[Introduction, développement, conclusion]**
2. Combien d''idées par paragraphe ? **[Une]**
3. Cite trois connecteurs pour ajouter une idée. **[De plus, en outre, ensuite]**
4. Pourquoi faut-il faire un plan avant d''écrire ? **[Pour rester dans le sujet et structurer]**

## Auto-évaluation

Tu es prêt(e) à quitter cette fiche lorsque tu peux :

- [ ] Expliquer chaque notion sans regarder la fiche.
- [ ] Refaire les exercices d''entraînement sans aide.
- [ ] Citer au moins un piège fréquent et l''éviter.
- [ ] Rédiger une réponse d''examen propre et complète avec le bon vocabulaire.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('2ed44f3a-9e2b-4963-94e1-3803452a06d6'::uuid, 'cheat-ordinary-french-grammaire', 'French', 'Fiche : Grammaire', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fiche : Grammaire

> **Poids à l''examen :** élevé · **Temps de maîtrise :** 30 min · **Niveau :** Form 5

## Pourquoi ce sujet est important

La grammaire est testée directement (exercices à trous, transformation de phrases) et indirectement dans toutes tes rédactions. Les points les plus testés sont les temps, les accords, les pronoms et la négation. Une bonne grammaire améliore immédiatement ta note d''expression.

## Notions essentielles

### Les temps essentiels
- **Présent :** habitudes et faits — "Je **mange** à midi."
- **Passé composé :** actions terminées — "Hier, j''**ai mangé** à midi." (auxiliaire avoir/être + participe passé)
- **Imparfait :** descriptions et habitudes passées — "Quand j''étais petit, je **jouais** au foot."
- **Futur proche :** aller + infinitif — "Je **vais manger**."
- **Futur simple :** "Je **mangerai** demain."

### L''accord du participe passé
- Avec **avoir** : accord avec le COD placé avant — "Les lettres que j''**ai écrites**."
- Avec **être** : accord avec le sujet — "Elle **est partie**."

### Les pronoms
- **COD :** le, la, les — "Je le vois."
- **COI :** lui, leur — "Je lui parle."
- **En / y :** "J''en veux" (de cela), "J''y vais" (à cet endroit).

### La négation
- **ne ... pas** : "Je ne mange pas."
- **ne ... jamais** : "Je ne mange jamais."
- **ne ... rien** : "Je ne mange rien."
- **ne ... personne** : "Je ne vois personne."

### Les accords
- Nom + adjectif : "une **belle** maison", "des **beaux** garçons".
- Sujet + verbe : "Les enfants **jouent**."

## Erreurs fréquentes et pièges d''examen

- Oublier le "ne" dans la négation : "Je mange pas" → "Je ne mange pas".
- Confondre passé composé et imparfait.
- Oublier l''accord du participe passé avec être.
- Confondre "à" et "a" (préposition / verbe avoir).
- Confondre "et" et "est" (conjonction / verbe être).

## Technique d''examen

1. Lis toute la phrase avant de choisir la réponse.
2. Identifie le sujet et le verbe pour vérifier l''accord.
3. Dans les exercices à trous, regarde le contexte (temps, personne).
4. Dans ta rédaction, utilise les temps de façon cohérente.

## Moyens mnémotechniques

- **Négation :** "Ne ... pas, ne ... jamais, ne ... rien — le ne ne s''oublie pas."
- **Accord :** "Avec être, accorde avec le sujet."

## Entraînement rapide

1. Complète : "Je ne mange ___." **[pas]**
2. "Elle est ___ (partir)." **[partie]**
3. Complète : "Hier, je ___ (manger) à midi." **[ai mangé]**
4. "Je ___ (aller) manger demain." **[vais]**

## Auto-évaluation

Tu es prêt(e) à quitter cette fiche lorsque tu peux :

- [ ] Expliquer chaque notion sans regarder la fiche.
- [ ] Refaire les exercices d''entraînement sans aide.
- [ ] Citer au moins un piège fréquent et l''éviter.
- [ ] Rédiger une réponse d''examen propre et complète avec le bon vocabulaire.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('dbf61568-f819-71cc-d60c-ea983da43cc7'::uuid, 'cheat-ordinary-french-vocabulaire-et-conjugaison', 'French', 'Fiche : Vocabulaire et conjugaison', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fiche : Vocabulaire et conjugaison

> **Poids à l''examen :** élevé · **Temps de maîtrise :** 25 min · **Niveau :** Form 5

## Pourquoi ce sujet est important

Le vocabulaire et la conjugaison sont le socle de tout le français. Sans verbes bien conjugués et sans mots précis, tu ne peux ni comprendre ni t''exprimer. Le GCE teste la conjugaison des verbes courants et le vocabulaire des thèmes de la vie quotidienne.

## Notions essentielles

### Les verbes du premier groupe (-er)
- Radical + terminaisons : e, es, e, ons, ez, ent.
- **Parler :** je parle, tu parles, il parle, nous parlons, vous parlez, ils parlent.

### Les verbes irréguliers essentiels
- **Être :** je suis, tu es, il est, nous sommes, vous êtes, ils sont.
- **Avoir :** j''ai, tu as, il a, nous avons, vous avez, ils ont.
- **Aller :** je vais, tu vas, il va, nous allons, vous allez, ils vont.
- **Faire :** je fais, tu fais, il fait, nous faisons, vous faites, ils font.
- **Venir :** je viens, tu viens, il vient, nous venons, vous venez, ils viennent.

### Les auxiliaires au passé composé
- **Avoir :** j''ai parlé, tu as parlé...
- **Être** (verbes de mouvement) : je suis allé(e), tu es allé(e)...

### Le vocabulaire par thème
- **L''école :** le professeur, l''élève, la leçon, le devoir, l''examen, la récréation.
- **La santé :** le médecin, l''hôpital, la maladie, le médicament, la fièvre.
- **La famille :** le père, la mère, le frère, la sœur, les parents.
- **La ville :** la rue, le marché, la banque, la gare, l''église.

### Les faux amis
- "Attendre" ne veut pas dire "to attend" mais "to wait".
- "Demander" ne veut pas dire "to demand" mais "to ask".
- "Librairie" = bookshop, pas library (bibliothèque).

## Erreurs fréquentes et pièges d''examen

- Confondre les terminaisons : "nous parlons" et non "nous parlez".
- Oublier le "s" à la 2e personne du singulier : "tu parles".
- Utiliser un faux ami (attendre, demander, librairie).
- Conjuguer "être" et "avoir" de façon incorrecte.
- Oublier l''accord du participe passé avec être.

## Technique d''examen

1. Apprends les verbes irréguliers par cœur — ils reviennent chaque année.
2. Dans un exercice de conjugaison, identifie d''abord le temps et la personne.
3. Utilise le vocabulaire des thèmes étudiés dans tes rédactions.
4. Vérifie la terminaison avec la personne du sujet.

## Moyens mnémotechniques

- **Être :** "Je suis, tu es, il est — suis, es, est."
- **Avoir :** "J''ai, tu as, il a — ai, as, a."
- **Faux amis :** "Attendre = wait, demander = ask, librairie = bookshop."

## Entraînement rapide

1. Conjugue "aller" au présent. **[je vais, tu vas, il va, nous allons, vous allez, ils vont]**
2. Que signifie "attendre" en anglais ? **[To wait]**
3. Conjugue "être" à la 1re personne du pluriel. **[nous sommes]**
4. "Librairie" = library ? **[Non, bookshop]**

## Auto-évaluation

Tu es prêt(e) à quitter cette fiche lorsque tu peux :

- [ ] Expliquer chaque notion sans regarder la fiche.
- [ ] Refaire les exercices d''entraînement sans aide.
- [ ] Citer au moins un piège fréquent et l''éviter.
- [ ] Rédiger une réponse d''examen propre et complète avec le bon vocabulaire.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('f6590949-d217-755f-4baa-c6df41b43a8f'::uuid, 'cheat-ordinary-french-civilisation', 'French', 'Fiche : Civilisation', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fiche : Civilisation

> **Poids à l''examen :** élevé · **Temps de maîtrise :** 25 min · **Niveau :** Form 5

## Pourquoi ce sujet est important

La civilisation (la culture et la société francophones) apparaît dans les textes de compréhension et dans les sujets de rédaction. Connaître le Cameroun francophone, la France et la francophonie te donne le contexte pour comprendre les textes et enrichir tes rédactions.

## Notions essentielles

### Le Cameroun francophone
- Le Cameroun est un pays **bilingue** : français et anglais.
- Les régions francophones : le Centre, le Littoral, l''Ouest, le Nord, l''Extrême-Nord, le Sud, l''Est, l''Adamaoua.
- La capitale politique : **Yaoundé**. La capitale économique : **Douala**.
- Le Cameroun est appelé "l''Afrique en miniature" à cause de sa diversité.

### La France
- La capitale : **Paris**. Le fleuve : la Seine.
- Les symboles : le drapeau bleu-blanc-rouge, la Marseillaise (l''hymne), Marianne.
- La devise : "Liberté, Égalité, Fraternité".

### La francophonie
- La francophonie : l''ensemble des pays qui parlent français.
- Des pays francophones : le Sénégal, la Côte d''Ivoire, le Canada (Québec), la Belgique, la Suisse.
- L''organisation internationale de la francophonie promeut la langue et la culture.

### Les fêtes et traditions
- La fête nationale française : le 14 juillet.
- Les fêtes religieuses : Noël (25 décembre), Pâques.
- Les fêtes camerounaises : la fête nationale (20 mai), le 1er janvier.

## Erreurs fréquentes et pièges d''examen

- Confondre Yaoundé (capitale) et Douala (économique).
- Confondre la devise française avec un autre slogan.
- Ne pas connaître les pays francophones.
- Confondre les dates des fêtes nationales.

## Technique d''examen

1. Apprends les faits essentiels par cœur (capitales, symboles, dates).
2. Dans une rédaction, utilise la civilisation pour donner des exemples concrets.
3. Relie la civilisation au thème du texte de compréhension.

## Moyens mnémotechniques

- **Cameroun :** "Yaoundé capitale, Douala économique, Afrique en miniature."
- **France :** "Bleu-blanc-rouge, Liberté-Égalité-Fraternité, Paris."

## Entraînement rapide

1. Quelle est la capitale politique du Cameroun ? **[Yaoundé]**
2. Quelle est la devise de la France ? **[Liberté, Égalité, Fraternité]**
3. Cite deux pays francophones. **[Le Sénégal, la Côte d''Ivoire]**
4. Pourquoi le Cameroun est-il appelé "l''Afrique en miniature" ? **[À cause de sa diversité]**

## Auto-évaluation

Tu es prêt(e) à quitter cette fiche lorsque tu peux :

- [ ] Expliquer chaque notion sans regarder la fiche.
- [ ] Refaire les exercices d''entraînement sans aide.
- [ ] Citer au moins un piège fréquent et l''éviter.
- [ ] Rédiger une réponse d''examen propre et complète avec le bon vocabulaire.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('41c4c545-3135-7764-1d96-28f86839d984'::uuid, 'cheat-ordinary-sbe-french-compr-hension-et-expression', 'Special Bilingual Education French', 'Fiche : Compréhension et expression', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fiche : Compréhension et expression

> **Poids à l''examen :** élevé · **Temps de maîtrise :** 30 min · **Niveau :** Form 5

## Pourquoi ce sujet est important

Le français en éducation bilingue spéciale vise à te rendre capable de comprendre et de produire du français dans des situations scolaires et quotidiennes. L''épreuve combine compréhension de textes et expression écrite. La maîtrise du vocabulaire scolaire est essentielle.

## Notions essentielles

### Le vocabulaire de la classe
- **Les objets :** le tableau, la craie, le cahier, le livre, le stylo, la règle, le sac.
- **Les personnes :** le professeur, l''élève, le directeur, le surveillant.
- **Les actions :** écouter, lire, écrire, parler, répondre, poser une question, expliquer.

### Comprendre un texte
- Identifie le **sujet** du texte dès la première lecture.
- Repère les **mots interrogatifs** : qui, quoi, où, quand, pourquoi, comment, combien.
- Réponds en **phrases complètes** en français.

### S''exprimer en français
- Décris une image : "Sur l''image, je vois..."
- Raconte une journée : "Le matin, je me lève à six heures..."
- Exprime ton opinion : "À mon avis...", "Je pense que...", "Je suis d''accord avec...".

### Le bilinguisme
- Le bilinguisme : la capacité de parler deux langues.
- Au Cameroun : le français et l''anglais sont les deux langues officielles.
- Avantages du bilinguisme : plus d''opportunités de travail, meilleure communication.

## Erreurs fréquentes et pièges d''examen

- Répondre en anglais dans une épreuve de français.
- Répondre par un mot seul au lieu d''une phrase complète.
- Confondre les mots interrogatifs (où = where, quand = when).
- Oublier les accords dans les phrases.

## Technique d''examen

1. Lis la question et identifie le mot interrogatif.
2. Cherche la réponse dans le texte, puis reformule-la.
3. Pour l''expression, fais un petit plan avant d''écrire.
4. Relis tes réponses pour vérifier la grammaire.

## Moyens mnémotechniques

- **Mots interrogatifs :** "Qui (who), quoi (what), où (where), quand (when), pourquoi (why), comment (how)."
- **Opinion :** "À mon avis, je pense que, je suis d''accord."

## Entraînement rapide

1. Que signifie "où" en anglais ? **[Where]**
2. Cite trois objets de la classe. **[Le tableau, le cahier, le stylo]**
3. Comment exprimer son opinion ? **[À mon avis / Je pense que]**
4. Quelles sont les deux langues officielles du Cameroun ? **[Le français et l''anglais]**

## Auto-évaluation

Tu es prêt(e) à quitter cette fiche lorsque tu peux :

- [ ] Expliquer chaque notion sans regarder la fiche.
- [ ] Refaire les exercices d''entraînement sans aide.
- [ ] Citer au moins un piège fréquent et l''éviter.
- [ ] Rédiger une réponse d''examen propre et complète avec le bon vocabulaire.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ba8ce81d-3e1d-22df-8650-70b254b3fd7d'::uuid, 'cheat-ordinary-religious-studies-christian-ethics-and-morality', 'Religious Studies', 'Christian Ethics & Morality Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Christian Ethics & Morality Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Ethics and morality form a major section of the Religious Studies paper. You must know what Christianity teaches about key moral issues and be able to explain the reasoning behind those teachings. Questions often ask you to "explain Christian teaching on X" and to "give reasons".

## Core concepts

### The basis of Christian ethics
- The **Ten Commandments** (Exodus 20) — the foundation of moral law.
- The **teaching of Jesus** — especially the Sermon on the Mount (Matthew 5–7).
- The **Golden Rule:** "Do to others what you would have them do to you" (Matthew 7:12).
- **Love** as the greatest commandment: love God and love your neighbour (Matthew 22:37–39).

### Key moral issues
- **Honesty:** Christians must not lie, steal or bear false witness.
- **Forgiveness:** Jesus taught to forgive "seventy times seven" (Matthew 18:22).
- **Justice and fairness:** care for the poor, the widow and the orphan.
- **Work:** work is good and should be done honestly (Colossians 3:23).
- **Marriage and family:** marriage is a sacred covenant; faithfulness is required.

### The role of conscience
- Conscience is the inner voice that judges right and wrong.
- Christians believe conscience should be formed by Scripture and prayer.

## Common mistakes & exam traps

- Giving a personal opinion instead of Christian teaching.
- Quoting Bible verses without explaining their meaning.
- Confusing the Ten Commandments with other lists.
- Not distinguishing between what the Bible says and what churches teach today.

## Exam technique

1. Answer from the Christian perspective, not your own opinion.
2. Support every point with a teaching, a verse or an example.
3. For "explain" questions, give the teaching AND the reason behind it.
4. Use religious vocabulary: commandment, covenant, conscience, salvation, sin.

## Memory hooks

- **Golden Rule:** "Do to others as you would have them do to you."
- **Greatest commandment:** "Love God, love your neighbour."

## Quick practice

1. State the Golden Rule. **[Do to others what you would have them do to you]**
2. What are the two greatest commandments? **[Love God and love your neighbour]**
3. What is conscience? **[The inner sense of right and wrong]**
4. Give one teaching of Jesus about forgiveness. **[Forgive seventy times seven]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('4fd9c9ad-812e-b8c2-bfcf-898af981b958'::uuid, 'cheat-ordinary-religious-studies-the-life-and-teachings-of-jesus', 'Religious Studies', 'The Life & Teachings of Jesus Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# The Life & Teachings of Jesus Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

The life and teachings of Jesus are central to the Religious Studies syllabus. You must know the key events of his life and be able to explain the meaning of his parables and miracles. Questions often ask you to retell a story and then explain its significance.

## Core concepts

### Key events in the life of Jesus
- **Birth:** born in Bethlehem to Mary and Joseph; visited by shepherds and wise men.
- **Baptism:** baptised by John the Baptist in the River Jordan; the Spirit descended like a dove.
- **Temptation:** tempted by the devil in the wilderness for 40 days.
- **Calling of disciples:** chose twelve disciples to follow him.
- **Transfiguration:** appeared in glory with Moses and Elijah.
- **Triumphal entry:** entered Jerusalem on a donkey.
- **Crucifixion:** died on the cross at Golgotha.
- **Resurrection:** rose on the third day; appeared to the disciples.
- **Ascension:** returned to heaven 40 days after the resurrection.

### The parables
- Stories with a spiritual meaning.
- **The Good Samaritan:** love your neighbour, even your enemy.
- **The Prodigal Son:** God''s forgiveness and love for the repentant.
- **The Sower:** how people receive the word of God.
- **The Lost Sheep:** God rejoices over one repentant sinner.

### The miracles
- Acts of power showing God''s kingdom.
- **Healing:** the blind, the lame, the lepers.
- **Nature:** calming the storm, walking on water, feeding the 5,000.
- **Raising the dead:** Jairus'' daughter, Lazarus.
- Miracles showed compassion AND proved Jesus'' divine power.

### The Sermon on the Mount
- The **Beatitudes:** "Blessed are the poor in spirit, for theirs is the kingdom of heaven."
- Teachings on prayer (the Lord''s Prayer), fasting, and trust in God.

## Common mistakes & exam traps

- Confusing the details of different parables and miracles.
- Retelling a story without explaining its **meaning**.
- Not knowing the names of the twelve disciples.
- Confusing the order of events (baptism before temptation, etc.).

## Exam technique

1. For story questions, retell accurately with key names and places.
2. For "explain the meaning" questions, give the spiritual lesson.
3. Link events to their significance for Christians today.
4. Use the correct terms: parable, miracle, disciple, resurrection.

## Memory hooks

- **Life order:** "Birth, baptism, temptation, disciples, miracles, parables, cross, resurrection, ascension."
- **Parable meaning:** "Good Samaritan = love your neighbour; Prodigal Son = God forgives."

## Quick practice

1. Where was Jesus born? **[Bethlehem]**
2. What is a parable? **[A story with a spiritual meaning]**
3. What lesson does the Good Samaritan teach? **[Love your neighbour]**
4. What happened on the third day after the crucifixion? **[The resurrection]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('7efab175-1c1b-0fc2-d113-3fb0101a6e8d'::uuid, 'cheat-ordinary-religious-studies-the-old-testament', 'Religious Studies', 'The Old Testament Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# The Old Testament Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

The Old Testament provides the background to Christianity. GCE questions cover the creation, the patriarchs, the Exodus, the prophets and the covenant. You must know the key stories and their religious significance.

## Core concepts

### Creation
- Genesis 1: God created the world in six days and rested on the seventh.
- God created humans "in his own image" — the basis of human dignity.
- The **Fall:** Adam and Eve disobeyed God and were expelled from Eden.

### The patriarchs
- **Abraham:** called by God; father of the nation; tested by the sacrifice of Isaac.
- **Isaac:** son of Abraham and Sarah.
- **Jacob:** renamed Israel; father of the twelve tribes.
- **Joseph:** sold into slavery by his brothers, rose to power in Egypt, forgave his brothers.

### The Exodus
- **Moses:** called by God at the burning bush; led Israel out of slavery in Egypt.
- The **Passover:** the angel passed over the houses of the Israelites.
- The **Ten Commandments:** given to Moses on Mount Sinai.
- The **covenant:** God''s promise to be Israel''s God; Israel''s promise to obey.

### The prophets
- Prophets spoke God''s word and called people back to justice.
- **Elijah:** opposed the worship of Baal on Mount Carmel.
- **Isaiah:** announced the coming of the Messiah.
- **Jeremiah:** warned of judgment and exile.
- **Amos:** condemned injustice and oppression of the poor.

### The exile and return
- Israel was conquered and taken into exile in Babylon (586 BC).
- The people returned and rebuilt the temple.

## Common mistakes & exam traps

- Confusing the patriarchs (Abraham, Isaac, Jacob, Joseph).
- Confusing the Exodus events (Passover, Red Sea, Ten Commandments).
- Not knowing which prophet said what.
- Retelling stories without religious significance.

## Exam technique

1. Know the order: Creation → Patriarchs → Exodus → Prophets → Exile → Return.
2. For each story, know the people, the place and the religious lesson.
3. Link Old Testament events to their New Testament meaning (e.g. Passover → Last Supper).
4. Quote key verses where possible.

## Memory hooks

- **Patriarchs:** "Abraham, Isaac, Jacob, Joseph — the family of faith."
- **Exodus:** "Moses, Passover, Red Sea, Ten Commandments."

## Quick practice

1. Who led Israel out of Egypt? **[Moses]**
2. What was given to Moses on Mount Sinai? **[The Ten Commandments]**
3. Who was sold into slavery by his brothers? **[Joseph]**
4. What did the prophets do? **[Spoke God''s word and called for justice]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('fda51239-547d-14b1-ee98-9c0ff6965c6d'::uuid, 'cheat-ordinary-religious-studies-the-church-and-christian-living', 'Religious Studies', 'The Church & Christian Living Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# The Church & Christian Living Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

This section covers the birth and growth of the Church and how Christians live out their faith today. Questions test your knowledge of Pentecost, the early church, worship, and Christian responsibilities in society.

## Core concepts

### The birth of the Church
- **Pentecost:** the Holy Spirit descended on the disciples (Acts 2); they spoke in tongues and Peter preached.
- About 3,000 people were baptised that day.
- The Church began in Jerusalem and spread through the Roman Empire.

### The early church
- The believers shared everything in common (Acts 2:44–45).
- **Peter** and **Paul** were the leading apostles.
- **Paul''s missionary journeys:** spread the gospel to Asia Minor and Europe.
- Persecution: Stephen was the first martyr.

### Worship and sacraments
- **Baptism:** entry into the Church; symbolises cleansing from sin.
- **Holy Communion / Eucharist:** remembering Jesus'' death; bread and wine.
- **Prayer:** personal and corporate communication with God.
- **Worship:** praise, singing, reading Scripture, preaching, giving.

### Christian living today
- **Love and service:** helping the poor, sick and needy.
- **Witness:** sharing faith by word and example.
- **Stewardship:** caring for God''s creation and using talents well.
- **Community:** belonging to a local church, fellowship with other believers.

### Christian responsibilities in society
- Obey the law and be good citizens.
- Work for justice and peace.
- Care for the environment.
- Respect people of other faiths.

## Common mistakes & exam traps

- Confusing Pentecost with other events.
- Not knowing the difference between baptism and communion.
- Giving personal opinion instead of Christian teaching.
- Forgetting the role of the Holy Spirit.

## Exam technique

1. Know the key events and dates of the early church.
2. For "how Christians live" questions, give teaching + example.
3. Use the correct terms: Pentecost, sacrament, stewardship, witness.
4. Support points with Bible references where possible.

## Memory hooks

- **Pentecost:** "The Spirit came, Peter preached, 3,000 baptised."
- **Sacraments:** "Baptism begins, communion remembers."

## Quick practice

1. What happened at Pentecost? **[The Holy Spirit descended on the disciples]**
2. What are the two main sacraments? **[Baptism and Holy Communion]**
3. What does stewardship mean? **[Caring for God''s creation and using talents well]**
4. Who was the first martyr? **[Stephen]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a33d20e8-17b4-f45a-cccf-ff0785d1083c'::uuid, 'cheat-ordinary-citizenship-rights-and-responsibilities-of-citizens', 'Citizenship Education', 'Rights & Responsibilities Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Rights & Responsibilities Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Citizenship Education tests your understanding of what it means to be a citizen of Cameroon. The rights and responsibilities of citizens are a guaranteed topic. You must be able to list rights, explain them, and match each right with its corresponding responsibility.

## Core concepts

### What is a citizen?
- A citizen is a legal member of a state with rights and duties.
- Citizenship is acquired by **birth** (descent or place of birth) or by **naturalisation** (legal process).

### Fundamental rights
- **Right to life** and personal liberty.
- **Right to equality** before the law — no discrimination.
- **Freedom of expression** and freedom of the press.
- **Freedom of association** and assembly.
- **Freedom of religion** and worship.
- **Right to education** and to work.
- **Right to own property.**
- **Right to vote** and to be voted for.
- **Right to a fair trial** and protection of the law.

### Responsibilities of citizens
- **Obey the law.**
- **Pay taxes.**
- **Vote in elections.**
- **Defend the nation** when required.
- **Respect the rights of others.**
- **Protect public property** and the environment.
- **Participate in community development.**
- **Promote peace and national unity.**

### Rights and responsibilities go together
- Every right has a matching duty: the right to vote carries the duty to vote wisely.
- Rights are limited by the rights of others.

## Common mistakes & exam traps

- Listing rights without explaining them.
- Confusing rights with responsibilities.
- Forgetting that rights are limited by the rights of others.
- Not knowing the two ways of acquiring citizenship.

## Exam technique

1. For "state" questions, list clearly. For "explain" questions, add a sentence of detail.
2. Match each right with its responsibility — examiners love this link.
3. Use Cameroon examples (elections, taxes, national service).
4. Structure answers with headings: Rights / Responsibilities.

## Memory hooks

- **Rights:** "Life, liberty, equality, expression, association, religion, education, work, property, vote, fair trial."
- **Duties:** "Obey, pay, vote, defend, respect, protect, participate."

## Quick practice

1. Name two ways of acquiring citizenship. **[Birth and naturalisation]**
2. State three fundamental rights. **[Life, education, freedom of expression]**
3. What responsibility matches the right to vote? **[To vote wisely]**
4. Why are rights limited? **[By the rights of others]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('5bfb96c5-dce6-6d90-138b-7130b971f41b'::uuid, 'cheat-ordinary-citizenship-democracy-and-governance', 'Citizenship Education', 'Democracy & Governance Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Democracy & Governance Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Democracy and governance are core themes in Citizenship Education. You must understand how Cameroon is governed, the branches of government, and the principles of democracy. Questions often ask you to describe the role of an institution or explain democratic principles.

## Core concepts

### What is democracy?
- **Democracy:** government by the people, for the people.
- Key principles: free and fair elections, rule of law, separation of powers, protection of rights, majority rule with minority rights.

### The three branches of government
1. **The Executive:** implements laws. In Cameroon: the President, the Prime Minister and the government.
2. **The Legislature:** makes laws. In Cameroon: the National Assembly and the Senate (Parliament).
3. **The Judiciary:** interprets and applies laws. In Cameroon: the courts, headed by the Supreme Court.

### The President of Cameroon
- Elected by direct universal suffrage for a term of **7 years**.
- Head of State, head of the Executive, and Commander-in-Chief of the armed forces.
- Appoints the Prime Minister and ministers.

### Elections
- **Universal suffrage:** all adult citizens can vote.
- Elections must be **free, fair and transparent**.
- The body that organises elections in Cameroon: **ELECAM** (Elections Cameroon).

### Good governance
- Transparency, accountability, participation, rule of law.
- **Decentralisation:** power shared with regional and local councils.

## Common mistakes & exam traps

- Confusing the roles of the three branches.
- Not knowing the President''s term of office.
- Confusing ELECAM with other institutions.
- Forgetting that democracy includes minority rights.

## Exam technique

1. Learn the three branches and their functions by heart.
2. For "role of X" questions, describe the function AND give an example.
3. Use Cameroon-specific facts (7-year term, ELECAM, National Assembly).
4. Link principles to examples.

## Memory hooks

- **Branches:** "Executive does, Legislature makes, Judiciary judges."
- **Democracy:** "Free elections, rule of law, separation of powers, rights protected."

## Quick practice

1. What is democracy? **[Government by the people, for the people]**
2. Name the three branches of government. **[Executive, Legislature, Judiciary]**
3. How long is the President''s term in Cameroon? **[7 years]**
4. What does ELECAM do? **[Organises elections]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('00f2dbe8-375e-4895-8e71-ed358923576a'::uuid, 'cheat-ordinary-citizenship-national-symbols-and-civic-values', 'Citizenship Education', 'National Symbols & Civic Values Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# National Symbols & Civic Values Cheatsheet

> **Exam weight:** high · **Time to master:** 25 min · **Level:** Ordinary (Form 5)

## Why this topic matters

National symbols represent the identity and unity of Cameroon. They are a short, reliable topic — you must know each symbol, what it looks like, and what it represents. Civic values show how citizens should behave.

## Core concepts

### The national symbols of Cameroon
- **The flag:** green, red and yellow with a yellow star in the centre.
  - Green = the forests and vegetation of the south.
  - Red = national unity and independence.
  - Yellow = the savannah of the north and the sun.
  - The star = unity.
- **The coat of arms:** features the star, the scales of justice, crossed fasces, and the national motto.
- **The national anthem:** "O Cameroon, Cradle of Our Forefathers".
- **The national motto:** "Peace – Work – Fatherland" (Paix – Travail – Patrie).
- **The national day:** 20 May (National Day).
- **The head of state:** the President.

### Civic values
- **Patriotism:** love and loyalty to the nation.
- **Integrity:** honesty and uprightness.
- **Tolerance:** respect for people of different religions, tribes and opinions.
- **Solidarity:** standing together and helping one another.
- **Hard work** and **discipline**.
- **Respect** for elders, authority and the law.

### Duties towards national symbols
- Respect the flag and the anthem.
- Stand at attention when the anthem plays.
- Protect public property.

## Common mistakes & exam traps

- Confusing the meaning of the flag colours.
- Not knowing the national motto.
- Confusing the national day (20 May) with other dates.
- Forgetting that values must be explained, not just listed.

## Exam technique

1. Learn the symbols and their meanings exactly.
2. For values, give the value AND an example of how to practise it.
3. Use the French motto too: "Paix – Travail – Patrie".
4. Link symbols to national unity.

## Memory hooks

- **Flag:** "Green south, red unity, yellow north, star = unity."
- **Motto:** "Peace, Work, Fatherland."

## Quick practice

1. What do the colours of the Cameroon flag represent? **[Green = forests, red = unity, yellow = savannah]**
2. State the national motto. **[Peace – Work – Fatherland]**
3. When is Cameroon''s National Day? **[20 May]**
4. Give two civic values. **[Patriotism and integrity]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('abc85de5-1a13-84bd-be88-86d1cd29cb5e'::uuid, 'cheat-ordinary-citizenship-human-rights-and-social-justice', 'Citizenship Education', 'Human Rights & Social Justice Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Human Rights & Social Justice Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Human rights are protected by the Cameroonian constitution and international agreements. This topic tests your knowledge of the main rights, the bodies that protect them, and issues of social justice such as discrimination and gender equality.

## Core concepts

### What are human rights?
- Rights that belong to every person simply because they are human.
- They are **universal** (for everyone), **inalienable** (cannot be taken away), and **indivisible** (all equally important).

### The Universal Declaration of Human Rights (1948)
- Adopted by the United Nations.
- Key rights: life, liberty, equality, freedom from torture, fair trial, freedom of expression, education, work, and participation in government.

### Social justice issues
- **Discrimination:** treating people unfairly because of their tribe, religion, gender or disability.
- **Gender equality:** equal rights and opportunities for men and women.
- **Child rights:** protection from exploitation, the right to education and healthcare.
- **Poverty:** the denial of basic needs — a barrier to enjoying rights.

### Protecting human rights in Cameroon
- The **constitution** guarantees fundamental rights.
- The **National Commission on Human Rights and Freedoms** monitors and promotes rights.
- Courts protect rights through the rule of law.
- International bodies: the United Nations, the African Commission on Human and Peoples'' Rights.

## Common mistakes & exam traps

- Confusing human rights with civic responsibilities.
- Not knowing the year of the Universal Declaration (1948).
- Listing rights without explaining what social justice means.
- Forgetting that rights come with limits (respect for others'' rights).

## Exam technique

1. Define human rights before listing them.
2. For each right, give a brief explanation or example.
3. Link rights to the bodies that protect them.
4. Use Cameroon examples (constitution, National Commission).

## Memory hooks

- **Rights:** "Universal, inalienable, indivisible."
- **UDHR:** "United Nations, 1948, rights for all."

## Quick practice

1. What are human rights? **[Rights belonging to every person]**
2. When was the Universal Declaration adopted? **[1948]**
3. Give two examples of social justice issues. **[Discrimination and gender inequality]**
4. Which body promotes human rights in Cameroon? **[The National Commission on Human Rights and Freedoms]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('7bc7b57c-bc87-8af8-d0c0-de6aee8e9c09'::uuid, 'cheat-ordinary-logic-propositions-and-truth-values', 'Logic', 'Propositions & Truth Values Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Propositions & Truth Values Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Logic is the study of correct reasoning. The foundation is the **proposition** — a statement that is either true or false. Almost every Logic question builds on identifying propositions and working out their truth values. This is a high-scoring, mechanical topic once you master the basics.

## Core concepts

### What is a proposition?
- A proposition is a statement that can be judged **true or false**.
- Examples: "Yaoundé is the capital of Cameroon" (true). "2 + 2 = 5" (false).
- **Not propositions:** questions ("What time is it?"), commands ("Close the door!"), exclamations ("Wow!"), and opinions without a truth value.

### Truth values
- Every proposition has a truth value: **T** (true) or **F** (false).
- A proposition cannot be both true and false at the same time.

### Simple and compound propositions
- **Simple proposition:** one statement — "It is raining."
- **Compound proposition:** two or more simple propositions joined by connectives — "It is raining **and** it is cold."

### The connectives
| Connective | Symbol | Meaning |
|---|---|---|
| and | ∧ | both true |
| or | ∨ | at least one true |
| not | ¬ | opposite truth value |
| if...then | → | implication |
| if and only if | ↔ | equivalence |

### Truth tables
A truth table lists all possible truth values of a proposition.
For \(p \land q\):
| p | q | p ∧ q |
|---|---|---|
| T | T | T |
| T | F | F |
| F | T | F |
| F | F | F |

## Common mistakes & exam traps

- Calling a question or command a proposition.
- Confusing "and" (both) with "or" (at least one).
- Forgetting that "or" in logic is **inclusive** (both can be true).
- Getting the order of rows in a truth table wrong.

## Exam technique

1. Ask: "Can this statement be true or false?" If not, it is not a proposition.
2. Build truth tables systematically: 2 propositions → 4 rows; 3 → 8 rows.
3. Write the truth values in a fixed order (TT, TF, FT, FF).
4. Check each row against the meaning of the connective.

## Memory hooks

- **Proposition:** "True or false, not a question or a command."
- **And vs Or:** "And = both, Or = at least one."

## Quick practice

1. Is "Close the door!" a proposition? **[No, it is a command]**
2. What is the truth value of "2 + 2 = 5"? **[False]**
3. How many rows in a truth table for two propositions? **[4]**
4. When is \(p \land q\) true? **[Only when both p and q are true]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('8e7ad9fe-d882-8298-c263-e8571771480d'::uuid, 'cheat-ordinary-logic-logical-connectives', 'Logic', 'Logical Connectives Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Logical Connectives Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Logical connectives join propositions to form compound statements. You must know the meaning of each connective, build truth tables for them, and translate between words and symbols. This is the core skill of the Logic paper.

## Core concepts

### Conjunction (and) — \(p \land q\)
True only when **both** are true.
| p | q | p ∧ q |
|---|---|---|
| T | T | T |
| T | F | F |
| F | T | F |
| F | F | F |

### Disjunction (or) — \(p \lor q\)
True when **at least one** is true (inclusive or).
| p | q | p ∨ q |
|---|---|---|
| T | T | T |
| T | F | T |
| F | T | T |
| F | F | F |

### Negation (not) — \(\neg p\)
Flips the truth value.
| p | ¬p |
|---|---|
| T | F |
| F | T |

### Implication (if...then) — \(p \to q\)
False **only** when a true premise leads to a false conclusion.
| p | q | p → q |
|---|---|---|
| T | T | T |
| T | F | F |
| F | T | T |
| F | F | T |

### Equivalence (if and only if) — \(p \leftrightarrow q\)
True when both have the **same** truth value.
| p | q | p ↔ q |
|---|---|---|
| T | T | T |
| T | F | F |
| F | T | F |
| F | F | T |

### Translating words to symbols
- "p and q" → \(p \land q\)
- "p or q" → \(p \lor q\)
- "not p" → \(\neg p\)
- "if p then q" → \(p \to q\)
- "p if and only if q" → \(p \leftrightarrow q\)

## Common mistakes & exam traps

- Thinking "or" excludes both being true — in logic it is inclusive.
- Forgetting that \(p \to q\) is true when p is false (vacuously true).
- Confusing \(p \to q\) with \(q \to p\) (the converse).
- Mixing up the symbols ∧ and ∨.

## Exam technique

1. Memorise the five truth tables exactly.
2. For implication, remember: "True implies False is the only False."
3. Build compound truth tables column by column.
4. Translate word problems into symbols before working.

## Memory hooks

- **Implication:** "True → False is the only false case."
- **Equivalence:** "Same values = true."

## Quick practice

1. When is \(p \lor q\) false? **[Only when both are false]**
2. When is \(p \to q\) false? **[Only when p is true and q is false]**
3. What is \(\neg\) called? **[Negation]**
4. When is \(p \leftrightarrow q\) true? **[When p and q have the same truth value]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('385562d9-4fe1-5bd5-d84b-63bca1ae326d'::uuid, 'cheat-ordinary-logic-syllogisms-and-arguments', 'Logic', 'Syllogisms & Arguments Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Syllogisms & Arguments Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

An argument is a set of propositions where some (the premises) support a conclusion. The **syllogism** is the classic form of deductive argument. You must be able to identify premises and conclusions, and judge whether an argument is valid. This is the heart of logical reasoning.

## Core concepts

### Premises and conclusion
- **Premises:** the statements that provide the evidence.
- **Conclusion:** the statement that follows from the premises.
- Indicator words for conclusions: "therefore", "so", "hence", "thus", "it follows that".
- Indicator words for premises: "because", "since", "given that", "as".

### The categorical syllogism
Three propositions with three terms, each used twice:
1. **Major premise:** "All men are mortal."
2. **Minor premise:** "Socrates is a man."
3. **Conclusion:** "Therefore, Socrates is mortal."

### Validity and soundness
- **Valid:** the conclusion follows necessarily from the premises (the form is correct).
- **Invalid:** the conclusion does not follow, even if the premises are true.
- **Sound:** valid AND all premises are true.
- A valid argument can have false premises; a sound argument cannot.

### Common valid forms
- **Modus ponens:** If p then q; p; therefore q.
- **Modus tollens:** If p then q; not q; therefore not p.

### Common invalid forms (fallacies)
- **Affirming the consequent:** If p then q; q; therefore p. (Invalid!)
- **Denying the antecedent:** If p then q; not p; therefore not q. (Invalid!)

## Common mistakes & exam traps

- Confusing validity (form) with truth (content).
- Thinking a false conclusion means the argument is invalid.
- Confusing modus ponens with affirming the consequent.
- Not identifying the conclusion correctly.

## Exam technique

1. Find the conclusion first (look for "therefore").
2. Identify the premises that support it.
3. Test validity: could the premises be true and the conclusion false?
4. Name the form if you recognise it (modus ponens, modus tollens).

## Memory hooks

- **Modus ponens:** "If p then q, p, so q."
- **Modus tollens:** "If p then q, not q, so not p."
- **Validity:** "Form matters, not truth."

## Quick practice

1. What is a premise? **[A statement that provides evidence]**
2. Name two conclusion indicator words. **[Therefore, so]**
3. Is "If p then q; q; therefore p" valid? **[No — affirming the consequent]**
4. What makes an argument sound? **[Valid and all premises true]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ee169296-9f61-efac-2639-ed7f9a5eadd0'::uuid, 'cheat-ordinary-logic-fallacies-and-reasoning', 'Logic', 'Fallacies & Reasoning Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fallacies & Reasoning Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Fallacies are errors in reasoning. Recognising them is a key skill tested in the Logic paper — questions give you an argument and ask you to identify the fallacy or explain why the reasoning is flawed. This topic also sharpens your critical thinking for every other subject.

## Core concepts

### What is a fallacy?
- A fallacy is a flaw in reasoning that makes an argument invalid or weak.
- Fallacies can be **formal** (a bad argument form) or **informal** (a trick in the content).

### Formal fallacies
- **Affirming the consequent:** If p then q; q; therefore p.
- **Denying the antecedent:** If p then q; not p; therefore not q.

### Informal fallacies
- **Ad hominem:** attacking the person instead of the argument — "You cannot trust his opinion, he is young."
- **Appeal to authority:** "It must be true because the chief said so" (when the authority is not an expert on the matter).
- **Appeal to emotion:** using fear or pity instead of evidence.
- **Hasty generalisation:** a conclusion from too few examples — "Two students failed, so the whole class is weak."
- **Straw man:** misrepresenting an opponent''s argument to make it easy to attack.
- **False dilemma:** presenting only two options when more exist — "Either you support us or you are against us."
- **Circular reasoning:** the conclusion is used as a premise — "It is true because it is written in the book, and the book is true."
- **Post hoc:** assuming that because B followed A, A caused B.

## Common mistakes & exam traps

- Naming a fallacy without explaining why it is a fallacy.
- Confusing ad hominem with a valid criticism of a claim.
- Not distinguishing formal from informal fallacies.
- Failing to give an example when asked.

## Exam technique

1. Identify the conclusion, then look for the flaw.
2. Name the fallacy AND explain the flaw in the reasoning.
3. Give a short example to support your answer.
4. If unsure, describe the flaw in your own words — you can still earn marks.

## Memory hooks

- **Ad hominem:** "Attack the person, not the argument."
- **Hasty generalisation:** "Too few examples, too big a claim."
- **False dilemma:** "Only two doors, but there are more."

## Quick practice

1. What is a fallacy? **[An error in reasoning]**
2. "He is poor, so his argument is wrong" — which fallacy? **[Ad hominem]**
3. "Two students failed, so the whole class is weak" — which fallacy? **[Hasty generalisation]**
4. What is circular reasoning? **[Using the conclusion as a premise]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('f53a2742-9bed-597e-8a76-60fd4cbe50ef'::uuid, 'cheat-ordinary-geography-map-reading-and-interpretation', 'Geography', 'Map Reading & Interpretation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Map Reading & Interpretation Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Map reading is a practical skill tested in the Geography paper, usually with a topographical map extract. You must measure distances, read grid references, interpret relief and describe settlement patterns. It is a reliable source of marks if you practise the techniques.

## Core concepts

### Grid references
- **Four-figure reference:** locates a 1 km square. Read eastings (horizontal) then northings (vertical).
- **Six-figure reference:** locates a point within the square. Divide the square into tenths.
- Always read **along the corridor, then up the stairs** (eastings first, then northings).

### Measuring distance
- **Straight-line distance:** use the scale bar or the ratio scale (e.g. 1 : 50,000 means 1 cm = 0.5 km).
- **Curved distance (road/river):** use a piece of string or divide the curve into straight segments.

### Direction and bearing
- **Direction:** compass points (N, NE, E, SE, S, SW, W, NW).
- **Bearing:** angle measured **clockwise from North** (0°–360°).

### Relief and contours
- **Contour lines** join points of equal height.
- **Close contours** = steep slope. **Wide contours** = gentle slope.
- **Contour values:** the number tells you the height in metres.
- **Spot heights** and **trig points** give exact heights.
- **Valleys** have V-shaped contours pointing uphill; **ridges** point downhill.

### Settlement and land use
- Describe settlement **pattern**: dispersed (scattered), nucleated (clustered), linear (along a road/river).
- Identify land use: forest, farmland, swamp, built-up areas.
- Describe the **site** (the land it stands on) and **situation** (its position relative to other places).

## Common mistakes & exam traps

- Reading northings before eastings.
- Forgetting to convert map distance to ground distance using the scale.
- Confusing bearings (clockwise from North) with compass directions.
- Misreading contour values — check the contour interval.
- Not using compass points correctly (NE is between N and E).

## Exam technique

1. Always write grid references in the order: eastings, then northings.
2. Show your working for distance calculations.
3. For "describe the relief", mention height, slope and features (valleys, hills).
4. Use map evidence (names, symbols) to support your answers.

## Memory hooks

- **Grid reference:** "Along the corridor, up the stairs."
- **Contours:** "Close = steep, wide = gentle."
- **Bearing:** "Clockwise from North."

## Quick practice

1. Which do you read first, eastings or northings? **[Eastings]**
2. On a 1 : 50,000 map, what does 1 cm represent? **[0.5 km]**
3. What do close contour lines indicate? **[A steep slope]**
4. What is a nucleated settlement? **[A clustered settlement]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6a1f605d-0e30-0924-3b8b-e24d3e45631b'::uuid, 'cheat-ordinary-geography-physical-geography', 'Geography', 'Physical Geography Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Physical Geography Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Physical geography covers the natural features of the earth — rocks, landforms, rivers, coasts and the processes that shape them. GCE questions ask you to name processes, describe landforms and explain how they were formed. Cameroon examples (Mount Cameroon, the Sanaga River) score extra marks.

## Core concepts

### Rocks and weathering
- **Igneous rocks:** formed from cooled magma — granite, basalt.
- **Sedimentary rocks:** formed from layers of sediment — limestone, sandstone.
- **Metamorphic rocks:** changed by heat and pressure — marble, slate.
- **Weathering:** the breakdown of rocks in place — physical (freeze-thaw), chemical (rainwater dissolving limestone), biological (roots).

### Rivers and their landforms
- **Erosion:** hydraulic action, abrasion, attrition, solution.
- **Transportation:** traction, saltation, suspension, solution.
- **Upper course:** V-shaped valley, waterfalls, rapids.
- **Middle course:** meanders, floodplains.
- **Lower course:** deltas, estuaries.
- **A waterfall** forms where hard rock overlies soft rock; the soft rock erodes faster.

### Coasts
- **Erosional landforms:** cliffs, wave-cut platforms, caves, arches, stacks.
- **Depositional landforms:** beaches, sand dunes, spits, bars.

### Glaciation (for reference)
- **Glacial erosion:** U-shaped valleys, corries, arêtes.
- **Glacial deposition:** moraines, drumlins.

### Cameroon examples
- **Mount Cameroon** — an active volcano near the coast.
- **The Sanaga River** — one of Cameroon''s major rivers.
- **The Adamawa Plateau** — a highland region.

## Common mistakes & exam traps

- Confusing weathering (in place) with erosion (transport).
- Confusing the four river erosion processes.
- Describing a landform without explaining its formation.
- Forgetting Cameroon examples.

## Exam technique

1. For "describe and explain" questions: describe the feature, then explain the process step by step.
2. Use the correct sequence of processes.
3. Name the processes in the order they happen.
4. Include a Cameroon example where relevant.

## Memory hooks

- **River erosion:** "H.A.A.S. — Hydraulic, Abrasion, Attrition, Solution."
- **River course:** "Upper V, middle meander, lower delta."
- **Weathering vs erosion:** "Weathering stays, erosion moves."

## Quick practice

1. What is the difference between weathering and erosion? **[Weathering breaks rock in place; erosion transports it]**
2. Name two river erosion processes. **[Hydraulic action, abrasion]**
3. How does a waterfall form? **[Hard rock over soft rock; soft rock erodes faster]**
4. Give one Cameroon example of a physical feature. **[Mount Cameroon]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6a2146f9-121d-416c-9c8f-bfadd89001cc'::uuid, 'cheat-ordinary-geography-climate-and-weather', 'Geography', 'Climate & Weather Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Climate & Weather Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Climate and weather are central to the Geography syllabus. You must understand the elements of weather, the instruments used to measure them, and the climate zones of Cameroon and the world. Questions often ask you to describe a climate and explain its causes.

## Core concepts

### Weather vs climate
- **Weather:** the state of the atmosphere at a particular time and place.
- **Climate:** the average weather conditions of a place over a long period (30 years).

### Elements of weather and instruments
| Element | Instrument | Unit |
|---|---|---|
| Temperature | Thermometer | °C |
| Rainfall | Rain gauge | mm |
| Wind direction | Wind vane | compass point |
| Wind speed | Anemometer | km/h |
| Pressure | Barometer | mb/hPa |
| Humidity | Hygrometer | % |

### Factors affecting climate
- **Latitude:** places near the equator are hotter.
- **Altitude:** temperature falls about 6.5 °C per 1,000 m.
- **Distance from the sea:** the sea warms and cools slowly (moderating effect).
- **Ocean currents:** warm currents warm the coast; cold currents cool it.
- **Winds:** trade winds, monsoon winds, prevailing winds.

### Climate zones
- **Equatorial:** hot and wet all year (rainforest).
- **Tropical (savanna):** hot with wet and dry seasons.
- **Desert:** hot and very dry.
- **Mediterranean:** hot dry summers, mild wet winters.
- **Temperate:** four seasons, moderate temperatures.

### The climate of Cameroon
- **South:** equatorial climate — hot and wet all year (rainforest).
- **Centre:** tropical climate — wet and dry seasons (savanna).
- **North:** semi-arid climate — long dry season (Sahel).
- **Highlands (Adamawa, West):** cooler due to altitude.

## Common mistakes & exam traps

- Confusing weather and climate.
- Mixing up the instruments and what they measure.
- Forgetting that altitude lowers temperature.
- Not knowing the climate zones of Cameroon.

## Exam technique

1. Define weather and climate before comparing them.
2. For "describe the climate of X", give temperature AND rainfall patterns.
3. Explain causes (latitude, altitude, distance from sea).
4. Use Cameroon examples for the climate zones.

## Memory hooks

- **Altitude:** "6.5 °C cooler for every 1,000 m up."
- **Cameroon:** "South wet, centre seasonal, north dry, highlands cool."

## Quick practice

1. What is the difference between weather and climate? **[Weather is short-term; climate is long-term average]**
2. What instrument measures rainfall? **[Rain gauge]**
3. How does altitude affect temperature? **[It gets cooler as you go up]**
4. Describe the climate of northern Cameroon. **[Semi-arid with a long dry season]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6fd68433-7c50-3a10-a8c0-5bcb1c2e4cd5'::uuid, 'cheat-ordinary-geography-population-and-settlement', 'Geography', 'Population & Settlement Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Population & Settlement Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Population and settlement are major themes in the Geography paper. You must understand population growth, distribution, density, migration and the factors that influence where people live. Cameroon examples (rural-urban migration to Douala and Yaoundé) are frequently tested.

## Core concepts

### Population terms
- **Population density:** number of people per square kilometre (population ÷ area).
- **Population distribution:** how people are spread over an area.
- **Birth rate:** live births per 1,000 people per year.
- **Death rate:** deaths per 1,000 people per year.
- **Natural increase:** birth rate − death rate.
- **Population growth rate:** natural increase + net migration.

### Factors affecting population distribution
- **Physical factors:** climate, relief, soils, water supply.
- **Human factors:** economic opportunities, transport, government policy, security.
- Dense areas: fertile plains, coasts, cities. Sparse areas: deserts, mountains, rainforests.

### Migration
- **Migration:** the movement of people from one place to another.
- **Rural-urban migration:** movement from villages to cities — the main pattern in Cameroon.
- **Push factors:** lack of jobs, poor services, drought, conflict.
- **Pull factors:** jobs, schools, hospitals, entertainment.
- **Effects:** overcrowding, unemployment and slums in cities; labour shortage in villages.

### Settlement
- **Site:** the actual land on which a settlement stands.
- **Situation:** the settlement''s position relative to other places.
- **Patterns:** dispersed, nucleated, linear.
- **Functions:** market town, administrative centre, port, industrial town.

## Common mistakes & exam traps

- Confusing density with distribution.
- Confusing push and pull factors.
- Forgetting the formula for density.
- Not distinguishing site from situation.

## Exam technique

1. Learn the definitions exactly — they are often tested directly.
2. For migration, list push factors and pull factors separately.
3. Use Cameroon examples (Douala, Yaoundé, rural areas).
4. For "effects" questions, give effects on the city AND on the village.

## Memory hooks

- **Density:** "People divided by area."
- **Push vs pull:** "Push leaves, pull attracts."
- **Site vs situation:** "Site is the land, situation is the position."

## Quick practice

1. How do you calculate population density? **[Population ÷ area]**
2. Give two push factors for rural-urban migration. **[Lack of jobs, poor services]**
3. What is natural increase? **[Birth rate − death rate]**
4. Name two effects of rural-urban migration on cities. **[Overcrowding, unemployment]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('4d29fc8a-38c0-754e-9188-15fe140510fb'::uuid, 'cheat-ordinary-geography-economic-geography', 'Geography', 'Economic Geography Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Economic Geography Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Economic geography covers agriculture, industry and trade. Cameroon''s economy depends heavily on agriculture (cocoa, coffee, cotton, palm oil) and increasingly on oil and industry. Questions ask you to describe economic activities, explain their importance, and discuss problems and solutions.

## Core concepts

### Agriculture
- **Subsistence farming:** growing food for the family''s own needs.
- **Commercial farming:** growing crops for sale.
- **Plantation agriculture:** large farms growing cash crops — cocoa, coffee, rubber, palm oil, bananas.
- **Food crops in Cameroon:** maize, cassava, plantains, yams, rice, groundnuts.
- **Cash crops in Cameroon:** cocoa, coffee, cotton, palm oil, rubber.

### The importance of agriculture
- Provides food for the population.
- Provides employment (most Cameroonians work in agriculture).
- Earns foreign exchange from exports.
- Supplies raw materials to industry.

### Industry
- **Primary:** extraction — farming, fishing, mining, forestry.
- **Secondary:** manufacturing — processing raw materials into goods.
- **Tertiary:** services — trade, transport, banking, education.
- **Industries in Cameroon:** agro-processing (palm oil, cocoa), aluminium (Alucam in Edéa), cement, textiles, oil refining (Limbe).

### Trade
- **Exports:** what a country sells abroad — oil, cocoa, coffee, timber, bananas.
- **Imports:** what a country buys — machinery, fuel, manufactured goods.
- **Balance of trade:** exports − imports. A deficit means imports exceed exports.

### Problems of agriculture in Cameroon
- Dependence on rain (climate change).
- Poor roads and transport.
- Lack of modern tools and credit.
- Price fluctuations on world markets.

## Common mistakes & exam traps

- Confusing subsistence and commercial farming.
- Confusing primary, secondary and tertiary sectors.
- Not knowing Cameroon''s main exports.
- Forgetting that agriculture employs most Cameroonians.

## Exam technique

1. Define the terms before using them.
2. For "importance of X", give economic, social and political points.
3. Use Cameroon examples (cocoa, oil, Alucam).
4. For problems, always suggest solutions.

## Memory hooks

- **Sectors:** "Primary extracts, secondary makes, tertiary serves."
- **Cash crops:** "Cocoa, coffee, cotton, palm oil, rubber."

## Quick practice

1. What is the difference between subsistence and commercial farming? **[Subsistence is for the family; commercial is for sale]**
2. Name two cash crops of Cameroon. **[Cocoa, coffee]**
3. What is the balance of trade? **[Exports − imports]**
4. Give two problems of agriculture in Cameroon. **[Poor roads, dependence on rain]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('49f075dc-b010-739e-f321-63660462e059'::uuid, 'cheat-ordinary-history-pre-colonial-africa', 'History', 'Pre-Colonial Africa Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Pre-Colonial Africa Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Pre-colonial Africa covers the great kingdoms and empires that existed before European colonisation. You must know their origins, organisation, achievements and decline. This topic corrects the false idea that Africa had no history before the Europeans arrived.

## Core concepts

### The great West African empires
- **Ghana Empire (8th–11th century):** controlled the gold trade across the Sahara; kings taxed trade; declined due to attacks and loss of trade routes.
- **Mali Empire (13th–15th century):** founded by Sundiata Keita; famous ruler Mansa Musa (pilgrimage to Mecca, spread of Islam); city of Timbuktu became a centre of learning.
- **Songhai Empire (15th–16th century):** largest of the three; rulers Sunni Ali and Askia Muhammad; fell to the Moroccan invasion of 1591.

### Kingdoms in other regions
- **Kanem-Bornu** (around Lake Chad): strong cavalry, trade across the Sahara.
- **The Hausa states** (northern Nigeria): city-states like Kano and Katsina, trade and craft.
- **The Ashanti Kingdom** (modern Ghana): powerful military, gold trade.
- **The Zulu Kingdom** (southern Africa): under Shaka, a powerful army.
- **The Kingdom of Kongo:** central Africa, contact with the Portuguese.

### Organisation of African societies
- **Centralised states:** a king or emperor with officials — e.g. Mali, Songhai.
- **Decentralised societies:** rule by councils of elders and age groups — e.g. many Igbo societies.
- **Religion:** traditional religions, then Islam spread through trade, then Christianity.

### The trans-Saharan trade
- Gold, salt, slaves and manufactured goods crossed the Sahara.
- The trade brought wealth and Islam to West Africa.

## Common mistakes & exam traps

- Confusing the three great empires (Ghana, Mali, Songhai).
- Confusing Sundiata and Mansa Musa.
- Forgetting the role of the gold-salt trade.
- Not knowing the order of the empires in time.

## Exam technique

1. For each empire, know: location, founder, famous ruler, achievement, cause of decline.
2. Use a timeline to keep the order clear.
3. Link trade to the spread of Islam.
4. Support answers with specific names and places.

## Memory hooks

- **Order:** "Ghana, Mali, Songhai — oldest to newest."
- **Mali:** "Sundiata founded, Mansa Musa famous, Timbuktu learned."

## Quick practice

1. Which empire was founded by Sundiata Keita? **[Mali]**
2. Who was Mansa Musa? **[A famous ruler of Mali]**
3. What brought Islam to West Africa? **[The trans-Saharan trade]**
4. Which empire fell to the Moroccan invasion of 1591? **[Songhai]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('bcf73fc9-2c67-476f-f7c9-59db786756ec'::uuid, 'cheat-ordinary-history-colonialism-in-africa', 'History', 'Colonialism in Africa Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Colonialism in Africa Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Colonialism transformed Africa. You must understand the causes of the scramble for Africa, how the continent was partitioned, and the effects of colonial rule. This is a major section of the History paper and the background to independence movements.

## Core concepts

### The scramble for Africa
- In the late 19th century, European powers raced to claim African territory.
- **Causes:** economic (raw materials, markets), political (rivalry between European powers), strategic (naval bases, routes), and humanitarian claims (spreading "civilisation" and Christianity).

### The Berlin Conference (1884–1885)
- European powers met in Berlin to divide Africa.
- Rules: a power must effectively occupy a territory to claim it.
- No African representatives were invited.
- Africa was partitioned without regard for African peoples or boundaries.

### Methods of colonial rule
- **Direct rule:** the colonial power governed through its own officials (used by France).
- **Indirect rule:** governing through traditional chiefs (used by Britain).
- **Assimilation (French):** making Africans "French" in culture and law.
- **Association (French):** later policy, allowing more African culture.

### Effects of colonialism
- **Positive:** modern transport, schools, hospitals, cash crops, new technology.
- **Negative:** loss of independence, exploitation of resources, forced labour, artificial borders, destruction of traditional systems, cultural disruption.

### Cameroon under colonial rule
- **German rule (1884–1916):** plantations, railways, harsh labour.
- After World War I, Cameroon was divided between **Britain** and **France** under a League of Nations mandate.
- **French Cameroon:** most of the territory, assimilation policy.
- **British Cameroons:** two parts (Northern and Southern), administered from Nigeria.

## Common mistakes & exam traps

- Confusing direct and indirect rule.
- Forgetting the date of the Berlin Conference (1884–85).
- Listing only negative effects of colonialism.
- Not knowing the German/British/French periods in Cameroon.

## Exam technique

1. Structure answers: causes → partition → methods → effects.
2. Give both positive and negative effects.
3. Use Cameroon-specific facts (German 1884, mandate after WWI).
4. Support with dates and names.

## Memory hooks

- **Berlin:** "1884–85, Europe divides Africa, no Africans invited."
- **Cameroon:** "German first, then British and French after WWI."

## Quick practice

1. When was the Berlin Conference? **[1884–1885]**
2. What is the difference between direct and indirect rule? **[Direct = colonial officials; indirect = through chiefs]**
3. Who colonised Cameroon first? **[Germany]**
4. Give two negative effects of colonialism. **[Exploitation, loss of independence]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('53bdbf03-e4cf-0846-9877-a1ddeab31d80'::uuid, 'cheat-ordinary-history-independence-movements', 'History', 'Independence Movements Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Independence Movements Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

The independence movements of the mid-20th century are a central theme of the History paper. You must know the causes of nationalism, the key leaders, and the process by which African countries — especially Cameroon — gained independence.

## Core concepts

### What is nationalism?
- Nationalism is the desire of a people to govern themselves.
- It grew from: education (educated elites), the effects of World War II, the Atlantic Charter, the rise of pan-Africanism, and opposition to colonial exploitation.

### Key nationalist leaders
- **Cameroon:** Ruben Um Nyobé (UPC — Union des Populations du Cameroun), Ahmadou Ahidjo.
- **Ghana:** Kwame Nkrumah — first leader of independent Ghana (1957).
- **Kenya:** Jomo Kenyatta.
- **Tanzania:** Julius Nyerere.
- **Senegal:** Léopold Sédar Senghor.
- **South Africa:** Nelson Mandela (later, against apartheid).

### Pan-Africanism
- The movement for unity and solidarity of African peoples.
- Key figures: W.E.B. Du Bois, Kwame Nkrumah.
- Led to the founding of the **Organisation of African Unity (OAU)** in 1963.

### The independence of Cameroon
- **French Cameroon:** became independent on **1 January 1960** under Ahmadou Ahidjo.
- **British Southern Cameroons:** voted in a 1961 plebiscite to join the Republic of Cameroon, forming the **Federal Republic of Cameroon**.
- **British Northern Cameroons:** voted to join Nigeria.
- In 1972, the federation became the **United Republic of Cameroon** (a unitary state).

### The UPC and Ruben Um Nyobé
- The UPC demanded immediate independence and reunification.
- Um Nyobé was killed in 1958.
- The UPC was banned but its demands shaped the independence process.

## Common mistakes & exam traps

- Confusing the dates of independence (Cameroon 1960, Ghana 1957).
- Confusing the 1961 plebiscite results (South joined Cameroon, North joined Nigeria).
- Not knowing the role of the UPC.
- Forgetting the causes of nationalism.

## Exam technique

1. Learn key dates and leaders exactly.
2. For "causes of nationalism", give political, economic and social reasons.
3. Use Cameroon''s specific path: French independence 1960, plebiscite 1961, federation, then unitary state 1972.
4. Link nationalism to pan-Africanism and the OAU.

## Memory hooks

- **Cameroon dates:** "1960 French independence, 1961 plebiscite, 1972 unitary."
- **Nationalism:** "Education, WWII, pan-Africanism, exploitation."

## Quick practice

1. When did French Cameroon become independent? **[1 January 1960]**
2. Who was Ruben Um Nyobé? **[A UPC nationalist leader]**
3. What did Southern Cameroons vote for in 1961? **[To join the Republic of Cameroon]**
4. What was the OAU? **[The Organisation of African Unity, founded 1963]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a79e427c-e768-d37d-163a-ba2939263283'::uuid, 'cheat-ordinary-history-cameroon-history', 'History', 'Cameroon History Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Cameroon History Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Cameroon history is a distinct section of the paper. You must know the peopling of Cameroon, the colonial periods, the path to independence, and the political evolution since 1960. Questions are often specific, so precise dates and names are essential.

## Core concepts

### The peopling of Cameroon
- Cameroon has over 250 ethnic groups.
- Major groups: the Bantu (south and centre), the Semi-Bantu (west), the Fulani (north), the Kirdi (north), the Fang-Beti, the Douala, the Bamileke, the Bassa.
- The **Bamileke** are known for enterprise and migration.
- The **Fulani** spread Islam in the north through the Sokoto caliphate.

### The colonial periods
- **German Kamerun (1884–1916):** the protectorate began in 1884; Germans built plantations and railways; harsh treatment of labour.
- **World War I:** British and French forces conquered German Kamerun in 1916.
- **Mandate and trusteeship:** the League of Nations (then the UN) gave France and Britain mandates over Cameroon.
- **French Cameroon:** the larger part, governed from Yaoundé.
- **British Cameroons:** administered as part of Nigeria.

### Independence and reunification
- **1 January 1960:** French Cameroon independent under Ahmadou Ahidjo.
- **11 February 1961:** plebiscite in British Cameroons.
- **1 October 1961:** Southern Cameroons joined the Republic of Cameroon → **Federal Republic of Cameroon**.
- **1972:** referendum created the **United Republic of Cameroon** (unitary state).
- **1982:** Ahidjo resigned; **Paul Biya** became President.
- **1984:** the country was renamed the **Republic of Cameroon**.

### Cameroon today
- Bilingual (French and English), with English-speaking regions in the North-West and South-West.
- The capital is Yaoundé; the economic capital is Douala.

## Common mistakes & exam traps

- Confusing the dates 1960, 1961, 1972 and 1984.
- Confusing Ahidjo and Biya.
- Not knowing which regions are English-speaking.
- Forgetting the German period.

## Exam technique

1. Build a timeline of Cameroon history and memorise it.
2. For each period, know the key events and their dates.
3. Use precise names: Kamerun, Federal Republic, United Republic, Republic.
4. Link colonial history to today''s bilingualism.

## Memory hooks

- **Timeline:** "1884 German, 1916 divided, 1960 French independence, 1961 reunification, 1972 unitary, 1984 Republic."
- **Leaders:** "Ahidjo first, Biya since 1982."

## Quick practice

1. When did German rule in Cameroon begin? **[1884]**
2. What happened on 1 October 1961? **[Southern Cameroons joined the Republic of Cameroon]**
3. Who became President in 1982? **[Paul Biya]**
4. Which regions of Cameroon are English-speaking? **[North-West and South-West]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('35933be8-b425-b7d2-69c9-9bbac893f9df'::uuid, 'cheat-ordinary-history-world-history', 'History', 'World History Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# World History Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

World history covers the major events of the 20th century that shaped the modern world — the World Wars, the Cold War and decolonisation. These events directly affected Africa and Cameroon, so the paper links world history to African history.

## Core concepts

### World War I (1914–1918)
- **Causes:** militarism, alliances, imperialism, nationalism (MAIN).
- Trigger: the assassination of Archduke Franz Ferdinand (1914).
- **Effects:** millions dead, empires collapsed (German, Austro-Hungarian, Ottoman), the League of Nations was created.
- **Africa:** German colonies (including Kamerun) were taken by the Allies.

### World War II (1939–1945)
- **Causes:** the Treaty of Versailles, the rise of Hitler, expansion of Germany and Japan.
- **Effects:** the Holocaust, the atomic bomb, the founding of the **United Nations (1945)**.
- **Africa:** African soldiers fought for the Allies; the war weakened the colonial powers and encouraged nationalism.

### The League of Nations and the UN
- **League of Nations (1920):** created after WWI to keep peace; failed to prevent WWII.
- **United Nations (1945):** created after WWII; more effective; still exists today.

### The Cold War (1947–1991)
- The rivalry between the **USA** (capitalist) and the **USSR** (communist).
- **Effects:** the division of Germany and Berlin, the arms race, proxy wars in Africa and Asia.
- Ended with the fall of the Berlin Wall (1989) and the collapse of the USSR (1991).

### Decolonisation
- After WWII, European empires broke up.
- Ghana (1957) was the first sub-Saharan colony to gain independence.
- By the 1960s, most of Africa was independent.

## Common mistakes & exam traps

- Confusing the causes of WWI and WWII.
- Confusing the League of Nations (1920) with the UN (1945).
- Not knowing the dates of the wars.
- Forgetting the effects on Africa.

## Exam technique

1. Learn the dates: WWI 1914–18, WWII 1939–45, UN 1945, Cold War 1947–91.
2. For each event, know causes, key facts and effects.
3. Link world events to Africa (WWI → loss of German colonies; WWII → nationalism).
4. Use the acronym MAIN for WWI causes.

## Memory hooks

- **WWI causes:** "MAIN — Militarism, Alliances, Imperialism, Nationalism."
- **Dates:** "1914–18, 1939–45, UN 1945, Cold War 1947–91."

## Quick practice

1. What triggered World War I? **[The assassination of Archduke Franz Ferdinand]**
2. When was the United Nations founded? **[1945]**
3. Who fought the Cold War? **[The USA and the USSR]**
4. Which was the first sub-Saharan colony to gain independence? **[Ghana (1957)]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6ee6fcf3-da0b-5102-36c0-1f3278b51d6c'::uuid, 'cheat-ordinary-economics-basic-economic-concepts', 'Economics', 'Basic Economic Concepts Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Basic Economic Concepts Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Economics is the study of how people and societies use scarce resources to satisfy unlimited wants. The basic concepts — scarcity, choice, opportunity cost, the factors of production — are the foundation of every other topic. Definitions are tested directly, so learn them precisely.

## Core concepts

### Scarcity and choice
- **Scarcity:** limited resources versus unlimited wants. It is the basic economic problem.
- **Choice:** because resources are scarce, we must choose between alternatives.
- **Opportunity cost:** the next best alternative given up when a choice is made.
  - Example: if you spend 5,000 FCFA on a book, the opportunity cost is the shirt you could not buy.

### The factors of production
| Factor | Reward |
|---|---|
| Land (natural resources) | Rent |
| Labour (human effort) | Wages/Salary |
| Capital (machines, tools, money) | Interest |
| Enterprise (risk-taking, organisation) | Profit |

### Wants and needs
- **Needs:** things essential for survival — food, water, shelter, clothing.
- **Wants:** things we desire but can live without — phones, holidays, luxuries.

### Goods and services
- **Free goods:** abundant, no price — air, sunshine.
- **Economic goods:** scarce, have a price — food, clothes.
- **Consumer goods:** used directly by consumers.
- **Capital goods:** used to produce other goods — machines, tools.
- **Services:** intangible — transport, banking, education.

### The three basic questions
Every economy must answer:
1. **What** to produce?
2. **How** to produce?
3. **For whom** to produce?

## Common mistakes & exam traps

- Confusing wants and needs.
- Confusing the reward for each factor of production.
- Forgetting that opportunity cost is the NEXT BEST alternative, not all alternatives.
- Confusing consumer goods and capital goods.

## Exam technique

1. Define terms precisely — definitions earn marks.
2. Always give an example with your definition.
3. For opportunity cost, name the specific alternative given up.
4. Use Cameroon examples (land, labour in agriculture).

## Memory hooks

- **Factors:** "Land rents, labour wages, capital interest, enterprise profit."
- **Opportunity cost:** "The next best thing you gave up."

## Quick practice

1. What is scarcity? **[Limited resources versus unlimited wants]**
2. What is the reward for capital? **[Interest]**
3. Give an example of opportunity cost. **[Spending on a book means giving up a shirt]**
4. What are the three basic economic questions? **[What, how, for whom to produce]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('aff258a2-bfb5-a5ff-f835-8753bf483bfa'::uuid, 'cheat-ordinary-economics-demand-and-supply', 'Economics', 'Demand & Supply Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Demand & Supply Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Demand and supply are the heart of microeconomics. They explain how prices are set in markets. GCE questions ask you to define demand and supply, state the laws, draw and interpret diagrams, and explain the factors that shift the curves.

## Core concepts

### Demand
- **Demand:** the quantity of a good that consumers are willing and able to buy at a given price.
- **The law of demand:** as price rises, quantity demanded falls (and vice versa) — a downward-sloping curve.
- **Effective demand** requires both willingness AND ability to pay.

### Supply
- **Supply:** the quantity of a good that producers are willing and able to sell at a given price.
- **The law of supply:** as price rises, quantity supplied rises (and vice versa) — an upward-sloping curve.

### Equilibrium
- **Equilibrium price:** where demand equals supply — the market clears.
- **Excess demand (shortage):** price is below equilibrium; demand exceeds supply.
- **Excess supply (surplus):** price is above equilibrium; supply exceeds demand.
- Price moves toward equilibrium naturally.

### Factors shifting demand (non-price)
- Income (rises → demand rises for normal goods).
- Tastes and fashion.
- Price of substitutes (cocoa vs coffee) and complements (car and fuel).
- Population and its structure.
- Expectations of future prices.

### Factors shifting supply (non-price)
- Cost of production (wages, raw materials).
- Technology (improvements → supply rises).
- Weather (affects agriculture).
- Taxes and subsidies.
- Number of producers.

## Common mistakes & exam traps

- Confusing a movement ALONG the curve (price change) with a SHIFT of the curve (other factors).
- Drawing the demand curve sloping up or the supply curve sloping down.
- Forgetting that demand requires ability to pay.
- Confusing substitutes and complements.

## Exam technique

1. Draw and label the axes (Price on the vertical, Quantity on the horizontal).
2. Distinguish clearly: price change → movement; other factor → shift.
3. For "explain the effect of X", state the direction of the shift and the new equilibrium.
4. Label equilibrium price and quantity on your diagram.

## Memory hooks

- **Demand down, supply up:** "Demand falls with price, supply rises with price."
- **Shift vs movement:** "Price moves along, everything else shifts."

## Quick practice

1. State the law of demand. **[As price rises, quantity demanded falls]**
2. What happens at equilibrium? **[Demand equals supply]**
3. Does a rise in income shift demand or move along it? **[Shifts demand]**
4. What is a substitute good? **[A good that can replace another, e.g. cocoa and coffee]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e034ec18-a54b-e8b6-8dd2-233486068892'::uuid, 'cheat-ordinary-economics-production-and-costs', 'Economics', 'Production & Costs Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Production & Costs Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Production and costs explain how firms turn inputs into outputs and how they decide how much to produce. You must understand the types of production, productivity, and the cost concepts. Questions often ask you to distinguish fixed from variable costs and explain economies of scale.

## Core concepts

### Types of production
- **Primary:** extraction of raw materials — farming, fishing, mining, forestry.
- **Secondary:** manufacturing and construction — turning raw materials into goods.
- **Tertiary:** services — trade, transport, banking, education, health.
- **Quaternary (modern):** information and technology services.

### Productivity
- **Productivity:** output per unit of input (e.g. output per worker).
- Higher productivity → lower costs → higher profits.
- Improved by: better training, better technology, better management.

### Division of labour
- Breaking production into specialised tasks.
- **Advantages:** faster production, higher skill, less time wasted.
- **Disadvantages:** boredom, dependence on others, loss of craftsmanship.

### Costs
- **Fixed costs:** do not change with output — rent, salaries of managers.
- **Variable costs:** change with output — raw materials, casual labour.
- **Total cost = fixed + variable.**
- **Average cost = total cost ÷ output.**
- **Marginal cost:** the extra cost of producing one more unit.

### Economies of scale
- Falling average costs as output rises (large firms).
- **Internal:** buying in bulk, better machinery, specialist managers.
- **External:** benefits from the industry''s location (skilled labour pool, suppliers nearby).
- **Diseconomies of scale:** rising average costs when a firm grows too large (poor communication, management problems).

## Common mistakes & exam traps

- Confusing fixed and variable costs.
- Confusing productivity with production.
- Forgetting that average cost = total ÷ output.
- Confusing internal and external economies of scale.

## Exam technique

1. Define each cost type with an example.
2. For economies of scale, give internal AND external examples.
3. Use the formulas exactly: TC = FC + VC, AC = TC ÷ Q.
4. Link productivity to lower costs.

## Memory hooks

- **Sectors:** "Primary extracts, secondary makes, tertiary serves."
- **Costs:** "Fixed stays, variable changes, total is both."

## Quick practice

1. Give two examples of fixed costs. **[Rent, manager salaries]**
2. What is productivity? **[Output per unit of input]**
3. How do you calculate average cost? **[Total cost ÷ output]**
4. Give one internal economy of scale. **[Buying in bulk]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('7e89501e-1846-15e2-c35c-d3e5aafd1224'::uuid, 'cheat-ordinary-economics-money-and-banking', 'Economics', 'Money & Banking Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Money & Banking Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Money and banking connect households, firms and the government. You must understand the functions of money, the role of banks, and how money is created. Central banks and commercial banks are frequently tested, with Cameroon examples (BEAC, commercial banks).

## Core concepts

### What is money?
- Money is anything generally accepted as payment for goods and services.
- **Functions of money:**
  1. **Medium of exchange** — used to buy and sell.
  2. **Measure of value** — prices are expressed in money.
  3. **Store of value** — can be saved for later.
  4. **Standard of deferred payment** — used in debts and contracts.

### Qualities of good money
- Acceptable, durable, portable, divisible, scarce, uniform, stable in value.

### The central bank
- In Cameroon and the CEMAC zone: the **BEAC** (Bank of Central African States).
- **Functions:** issues currency, controls the money supply, acts as banker to the government and to commercial banks, manages foreign reserves, supervises banks.

### Commercial banks
- **Functions:** accept deposits, give loans, transfer money, provide safe custody, foreign exchange, financial advice.
- **Types of accounts:** current (cheque) accounts, savings accounts, fixed deposit accounts.

### How banks create money
- Banks keep a fraction of deposits (reserve) and lend the rest.
- Loans become new deposits elsewhere → the money supply expands.
- The **credit multiplier** = 1 ÷ reserve ratio.

### Other financial institutions
- Microfinance institutions (help small savers and borrowers).
- Insurance companies, post office savings banks.

## Common mistakes & exam traps

- Confusing the functions of the central bank and commercial banks.
- Forgetting that money must be generally accepted.
- Not knowing the BEAC.
- Confusing the functions of money with the qualities of money.

## Exam technique

1. List the four functions of money with an example of each.
2. Distinguish central bank (controls system) from commercial banks (serve the public).
3. Use Cameroon examples (BEAC, FCFA).
4. For money creation, explain the reserve ratio and the multiplier.

## Memory hooks

- **Functions of money:** "Exchange, measure, store, defer."
- **Central bank:** "Issues, controls, supervises, reserves."

## Quick practice

1. Name the four functions of money. **[Medium of exchange, measure of value, store of value, standard of deferred payment]**
2. What is the central bank of the CEMAC zone? **[BEAC]**
3. Give two functions of commercial banks. **[Accept deposits, give loans]**
4. What is the credit multiplier? **[1 ÷ reserve ratio]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('f1aa97a6-6e04-cd31-66a4-7b405b74f3cf'::uuid, 'cheat-ordinary-economics-international-trade', 'Economics', 'International Trade Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# International Trade Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

International trade explains why countries buy and sell across borders. You must understand why trade happens, the benefits and problems, and Cameroon''s place in world trade. Balance of payments and trade barriers are common exam topics.

## Core concepts

### Why countries trade
- No country is self-sufficient — resources are unevenly distributed.
- **Comparative advantage:** a country should specialise in producing what it can make at the lowest opportunity cost.
- **Absolute advantage:** a country produces more of a good with the same resources.

### Benefits of trade
- Access to goods not produced at home.
- Lower prices from competition.
- Larger markets for domestic producers.
- Specialisation and higher output.
- Transfer of technology and ideas.

### Problems of trade
- **Dependence** on a few exports (Cameroon: oil, cocoa).
- **Price fluctuations** on world markets.
- **Unfavourable terms of trade:** export prices fall while import prices rise.
- Competition from cheap imports can harm local industry.

### Balance of payments
- **Exports:** goods and services sold abroad.
- **Imports:** goods and services bought from abroad.
- **Balance of trade:** exports − imports of goods.
- **Surplus:** exports exceed imports. **Deficit:** imports exceed exports.

### Trade barriers
- **Tariffs:** taxes on imports (make imports dearer, protect local industry).
- **Quotas:** limits on the quantity of imports.
- **Embargoes:** complete bans on trade with a country.
- **Subsidies:** government help to local producers to compete.

### Regional integration
- **CEMAC:** the Central African Economic and Monetary Community (uses the FCFA).
- **ECOWAS:** the Economic Community of West African States.
- **AfCFTA:** the African Continental Free Trade Area.

## Common mistakes & exam traps

- Confusing exports and imports.
- Confusing balance of trade with balance of payments.
- Forgetting that tariffs raise prices for consumers.
- Not knowing Cameroon''s main exports.

## Exam technique

1. Define exports and imports before using them.
2. For "benefits/problems", give economic points with examples.
3. Use Cameroon examples (oil, cocoa exports).
4. Explain the effect of each trade barrier on prices and local industry.

## Memory hooks

- **Trade:** "Export sells, import buys."
- **Barriers:** "Tariff taxes, quota limits, embargo bans."

## Quick practice

1. What is comparative advantage? **[Specialising in what you produce at lowest opportunity cost]**
2. What is the balance of trade? **[Exports − imports of goods]**
3. Give two benefits of international trade. **[Access to goods, lower prices]**
4. What is a tariff? **[A tax on imports]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('001f5d06-46e5-c941-afce-8a72b1beb09a'::uuid, 'cheat-ordinary-commerce-trade-and-its-types', 'Commerce', 'Trade & Its Types Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Trade & Its Types Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Trade is the exchange of goods and services for money. It is the foundation of Commerce. You must distinguish home from foreign trade, wholesale from retail, and understand the chain that moves goods from producer to consumer.

## Core concepts

### What is trade?
- **Trade:** the buying and selling of goods and services.
- **Home (internal) trade:** trade within a country.
- **Foreign (external) trade:** trade between countries — imports, exports, re-exports.

### The chain of distribution
Producer → Wholesaler → Retailer → Consumer.
- **Producer:** makes or grows the goods.
- **Wholesaler:** buys in bulk from producers, sells in smaller quantities to retailers.
- **Retailer:** sells directly to the final consumer.
- **Consumer:** the final user.

### Functions of the wholesaler
- Buys in bulk and breaks bulk.
- Stores goods (warehousing).
- Transports goods to retailers.
- Provides credit to retailers.
- Bears risk of price changes and damage.
- Gives market information to producers.

### Functions of the retailer
- Buys from wholesalers in small quantities.
- Sells directly to consumers.
- Provides a convenient location and opening hours.
- Offers credit and after-sales service.
- Gives feedback to wholesalers about consumer tastes.

### Types of retailers
- **Small-scale:** kiosks, market stalls, hawkers, small shops.
- **Large-scale:** supermarkets, department stores, chain stores, mail order, online shops.

### Channels of distribution
- Direct: Producer → Consumer.
- One middleman: Producer → Retailer → Consumer.
- Two middlemen: Producer → Wholesaler → Retailer → Consumer.

## Common mistakes & exam traps

- Confusing the roles of wholesaler and retailer.
- Forgetting the order of the distribution chain.
- Not knowing the functions of each middleman.
- Confusing home and foreign trade.

## Exam technique

1. Draw the chain of distribution — it earns marks.
2. For "functions of X", list and briefly explain each.
3. Give examples of small and large retailers.
4. Explain why middlemen exist (convenience, breaking bulk).

## Memory hooks

- **Chain:** "Producer, wholesaler, retailer, consumer."
- **Wholesaler:** "Buys bulk, breaks bulk."

## Quick practice

1. What is the chain of distribution? **[Producer → Wholesaler → Retailer → Consumer]**
2. Give two functions of a wholesaler. **[Breaking bulk, warehousing]**
3. What is home trade? **[Trade within a country]**
4. Name two large-scale retailers. **[Supermarkets, department stores]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('fff59ef1-eacb-6ea1-ad76-999147737ea1'::uuid, 'cheat-ordinary-commerce-aids-to-trade', 'Commerce', 'Aids to Trade Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Aids to Trade Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Aids to trade are the services that make trade possible — transport, banking, insurance, warehousing, advertising and communication. They are a guaranteed topic in Commerce. You must know what each aid does and why it is important.

## Core concepts

### What are aids to trade?
- Services that assist the buying and selling of goods.
- They do not produce goods but make trade easier.

### Transport
- Moves goods from producer to consumer.
- **Road:** flexible, door-to-door, good for short distances.
- **Rail:** cheap for heavy goods over long distances.
- **Sea:** cheapest for bulky goods internationally.
- **Air:** fastest, but expensive — for perishable and valuable goods.
- **Pipeline:** for oil, gas, water.

### Banking
- Provides money for trade (loans, overdrafts).
- Transfers money (cheques, transfers).
- Safeguards money and valuables.
- Provides foreign exchange for international trade.

### Insurance
- Protects against risks — fire, theft, transport accidents, death.
- **Premium:** the amount paid for insurance.
- **Policy:** the contract of insurance.
- **Indemnity:** compensation for loss.
- Principles: insurable interest, utmost good faith, indemnity.

### Warehousing
- Storage of goods between production and sale.
- Balances supply and demand.
- Allows goods to be graded, packaged and preserved.

### Advertising
- Informs consumers about goods and services.
- Creates demand and increases sales.
- **Media:** newspapers, radio, television, billboards, internet.

### Communication
- Passes information between buyers and sellers.
- Post, telephone, internet, email.

## Common mistakes & exam traps

- Confusing the aids to trade with the types of trade.
- Not knowing the advantages of each transport mode.
- Confusing premium, policy and indemnity.
- Forgetting that aids to trade do not produce goods.

## Exam technique

1. List the aids to trade and explain each with an example.
2. For transport, compare modes (cost, speed, capacity).
3. Use insurance terms precisely (premium, policy, indemnity).
4. Link each aid to how it helps trade.

## Memory hooks

- **Aids:** "Transport, banking, insurance, warehousing, advertising, communication."
- **Insurance:** "Premium paid, policy signed, indemnity received."

## Quick practice

1. Name four aids to trade. **[Transport, banking, insurance, warehousing]**
2. Which transport mode is fastest? **[Air]**
3. What is a premium? **[The amount paid for insurance]**
4. Why is warehousing important? **[It stores goods and balances supply and demand]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1967010f-7f3e-5116-08e9-79e5c8bead91'::uuid, 'cheat-ordinary-commerce-business-documents', 'Commerce', 'Business Documents Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Business Documents Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Business documents record every transaction between buyer and seller. You must know each document, who issues it, and what it contains. Questions often ask you to identify a document from a description or to state its purpose.

## Core concepts

### The documents in order
1. **Enquiry:** the buyer asks for information about goods and prices.
2. **Quotation:** the seller states the price and terms.
3. **Catalogue:** a list of goods with prices.
4. **Order:** the buyer formally requests the goods.
5. **Acknowledgement:** the seller confirms the order.
6. **Delivery note:** accompanies the goods when delivered.
7. **Goods received note (GRN):** the buyer records goods received.
8. **Invoice:** the seller''s bill — states goods, quantity, price, total.
9. **Credit note:** issued when the seller reduces the amount (returns, overcharge).
10. **Debit note:** issued when the buyer owes more (undercharge, extra goods).
11. **Statement of account:** a summary of transactions over a period.
12. **Receipt:** proof of payment.

### Key documents in detail
- **Invoice:** the most important document. Contains: names and addresses, date, description of goods, quantity, unit price, total, trade discount, VAT.
- **Credit note:** reduces the buyer''s debt. Issued for returned goods or overcharging.
- **Debit note:** increases the buyer''s debt. Issued for undercharging.
- **Receipt:** issued by the seller when payment is made.

### Trade and cash discounts
- **Trade discount:** a reduction from the list price, given to traders (not recorded in the books).
- **Cash discount:** a reduction for prompt payment (recorded in the books).

## Common mistakes & exam traps

- Confusing credit note and debit note.
- Confusing trade and cash discount.
- Not knowing the order of documents.
- Forgetting what an invoice contains.

## Exam technique

1. Learn the documents in sequence — the order helps you remember.
2. For each document, know who issues it and why.
3. Distinguish credit note (reduce debt) from debit note (increase debt).
4. Give the contents of an invoice when asked.

## Memory hooks

- **Order:** "Enquiry, quotation, order, invoice, receipt."
- **Notes:** "Credit reduces, debit increases."

## Quick practice

1. Which document is the seller''s bill? **[Invoice]**
2. When is a credit note issued? **[For returns or overcharging]**
3. What is a trade discount? **[A reduction from list price for traders]**
4. What is proof of payment called? **[A receipt]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('753e9b1f-4da8-dd7c-d621-e090598aa6e0'::uuid, 'cheat-ordinary-commerce-methods-of-payment', 'Commerce', 'Methods of Payment Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Methods of Payment Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Methods of payment are how buyers settle their debts. You must know the different methods, their advantages and disadvantages, and which is suitable for which situation. Questions often ask you to compare methods or recommend one for a given case.

## Core concepts

### Cash
- Immediate payment in notes and coins.
- **Advantages:** simple, universally accepted, no bank needed.
- **Disadvantages:** risk of theft, inconvenient for large sums, no record.

### Cheque
- A written order to a bank to pay a sum from the drawer''s account.
- **Parties:** drawer (writes it), drawee (the bank), payee (receives it).
- **Advantages:** safe for large sums, provides a record, can be stopped.
- **Disadvantages:** can bounce (no funds), needs a bank account, takes time to clear.

### Bank transfer
- Electronic transfer of money between accounts.
- **Advantages:** fast, safe, convenient, good record.
- **Disadvantages:** needs bank accounts and technology.

### Mobile money
- Payment via mobile phone (MTN Mobile Money, Orange Money).
- **Advantages:** fast, works without a bank account, reaches rural areas.
- **Disadvantages:** fees, phone and network needed, fraud risk.

### Postal order / money order
- A pre-paid order for a fixed amount.
- Used for small payments where a cheque is not convenient.

### Bill of exchange
- A written order requiring the drawee to pay a fixed sum at a fixed date.
- Used mainly in international trade.

### Letter of credit
- A bank''s promise to pay the seller on behalf of the buyer.
- Very safe for international trade.

## Common mistakes & exam traps

- Confusing the parties to a cheque.
- Forgetting that a cheque can bounce.
- Not knowing when to recommend each method.
- Confusing bill of exchange and letter of credit.

## Exam technique

1. For each method, give an advantage AND a disadvantage.
2. Recommend a method based on the situation (large sum, distance, speed).
3. Use Cameroon examples (mobile money, bank transfer).
4. Learn the cheque parties exactly.

## Memory hooks

- **Cheque parties:** "Drawer writes, drawee pays, payee receives."
- **Mobile money:** "Fast, no bank needed, reaches rural areas."

## Quick practice

1. Name the three parties to a cheque. **[Drawer, drawee, payee]**
2. Give one advantage of mobile money. **[Works without a bank account]**
3. What is a letter of credit? **[A bank''s promise to pay the seller]**
4. Give one disadvantage of cash. **[Risk of theft]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('bf458fed-04b0-3829-c286-e65edf4b6b8a'::uuid, 'cheat-ordinary-accounting-the-accounting-equation', 'Accounting', 'The Accounting Equation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# The Accounting Equation Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

The accounting equation is the foundation of all accounting. Every transaction affects it, and the double-entry system is built on it. If you master this equation, you can analyse any transaction and prepare any statement.

## Core concepts

### The accounting equation
$$\text{Assets} = \text{Capital} + \text{Liabilities}$$

- **Assets:** what the business owns (cash, stock, equipment, buildings, debtors).
- **Capital:** what the owner has invested (owner''s equity).
- **Liabilities:** what the business owes (creditors, loans, bank overdraft).

### Rearranged forms
- Capital = Assets − Liabilities.
- Liabilities = Assets − Capital.

### The effect of transactions
Every transaction affects the equation in at least two places (double entry).
| Transaction | Effect |
|---|---|
| Owner invests cash | Assets ↑, Capital ↑ |
| Buy goods for cash | Cash ↓, Stock ↑ (Assets unchanged) |
| Buy goods on credit | Stock ↑, Creditors ↑ (Liabilities) |
| Sell goods for cash | Cash ↑, Stock ↓, Profit ↑ Capital |
| Pay a creditor | Cash ↓, Creditors ↓ |
| Owner takes drawings | Cash ↓, Capital ↓ |

### Worked example
A trader has assets of 5,000,000 FCFA and liabilities of 1,500,000 FCFA.
Capital = 5,000,000 − 1,500,000 = **3,500,000 FCFA**.

## Common mistakes & exam traps

- Forgetting that drawings reduce capital.
- Confusing assets with expenses.
- Not applying double entry to every transaction.
- Mixing up debtors (owe us) and creditors (we owe them).

## Exam technique

1. Write the equation before analysing a transaction.
2. For each transaction, identify which items change and by how much.
3. Check the equation still balances after every transaction.
4. Use the rearranged forms when asked to find capital or liabilities.

## Memory hooks

- **Equation:** "Assets equal capital plus liabilities."
- **Debtors vs creditors:** "Debtors owe us, creditors we owe."

## Quick practice

1. State the accounting equation. **[Assets = Capital + Liabilities]**
2. What is capital? **[What the owner has invested]**
3. How does buying goods on credit affect the equation? **[Assets ↑ and Liabilities ↑]**
4. Assets 5,000,000, Liabilities 1,500,000. Find capital. **[3,500,000]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e3fd3abf-bbb4-973d-e748-38bb4137d87d'::uuid, 'cheat-ordinary-accounting-double-entry-bookkeeping', 'Accounting', 'Double Entry Bookkeeping Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Double Entry Bookkeeping Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Double entry is the system used to record every financial transaction. Every transaction is recorded twice — a debit and a credit. This is the most tested skill in the Accounting paper, and it underlies the ledger, the trial balance and the final accounts.

## Core concepts

### The golden rule
Every transaction has two sides:
- **Debit (Dr):** the receiving side.
- **Credit (Cr):** the giving side.

### The rules for each account type
| Account type | Debit | Credit |
|---|---|---|
| Assets | Increase | Decrease |
| Liabilities | Decrease | Increase |
| Capital | Decrease | Increase |
| Expenses | Increase | Decrease |
| Income/Revenue | Decrease | Increase |

### The ledger
- The ledger is the book of accounts, one account per item.
- **T-account:** Debit on the left, Credit on the right.
- **Balancing an account:** total each side; the difference is the balance.

### Worked examples
- **Cash sale of 50,000 FCFA:** Debit Cash 50,000; Credit Sales 50,000.
- **Buy goods on credit for 80,000:** Debit Purchases 80,000; Credit Creditors 80,000.
- **Pay rent 30,000 by cash:** Debit Rent 30,000; Credit Cash 30,000.
- **Receive cash from a debtor 20,000:** Debit Cash 20,000; Credit Debtors 20,000.

### The trial balance
- A list of all ledger balances at a date.
- **Debit balances** total must equal **credit balances** total.
- If they do not balance, there is an error.

### Errors that do NOT affect the trial balance
- Omission, commission, principle, original entry, complete reversal, compensating errors.

## Common mistakes & exam traps

- Debiting an expense instead of crediting it.
- Forgetting that cash received is a debit to cash.
- Not balancing accounts correctly.
- Confusing purchases (goods bought) with expenses.

## Exam technique

1. Identify the two accounts in every transaction.
2. Apply the rules: what increases/decreases on each side?
3. Write Dr and Cr clearly in the ledger.
4. Check the trial balance totals agree.

## Memory hooks

- **Debit/Credit:** "Debit the receiver, credit the giver."
- **Assets/Expenses:** "Increase on the debit side."

## Quick practice

1. What is the golden rule of double entry? **[Every transaction has a debit and a credit]**
2. How do you record a cash sale? **[Debit Cash, Credit Sales]**
3. Do expenses increase on the debit or credit side? **[Debit]**
4. What does a trial balance check? **[That total debits equal total credits]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('116856d5-fee6-18c4-e60b-641c953fae2c'::uuid, 'cheat-ordinary-accounting-final-accounts', 'Accounting', 'Final Accounts Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Final Accounts Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Final accounts show the profit and the financial position of a business. They are the most important output of accounting. You must be able to prepare a trading account, a profit and loss account, and a balance sheet — and know which items go where.

## Core concepts

### The trading account
Shows **gross profit**.
$$\text{Gross Profit} = \text{Sales} - \text{Cost of Goods Sold}$$

$$\text{Cost of Goods Sold} = \text{Opening Stock} + \text{Purchases} - \text{Closing Stock}$$

### The profit and loss account
Shows **net profit**.
$$\text{Net Profit} = \text{Gross Profit} + \text{Other Income} - \text{Expenses}$$

- **Other income:** rent received, discounts received, commission received.
- **Expenses:** rent paid, salaries, wages, electricity, insurance, depreciation, discounts allowed.

### The balance sheet
Shows the financial position at a date.
$$\text{Assets} = \text{Capital} + \text{Liabilities}$$

- **Fixed assets:** long-term — land, buildings, equipment, vehicles.
- **Current assets:** short-term — stock, debtors, cash, bank.
- **Current liabilities:** due within a year — creditors, bank overdraft.
- **Long-term liabilities:** loans due after a year.
- **Working capital = current assets − current liabilities.**

### The layout
| Balance Sheet of X as at ... |
|---|
| **Fixed Assets** | |
| Land and buildings | ... |
| Equipment | ... |
| **Current Assets** | |
| Stock | ... |
| Debtors | ... |
| Cash | ... |
| **Less Current Liabilities** | (creditors, overdraft) |
| **Net Current Assets (Working Capital)** | ... |
| **Financed by:** | |
| Capital | ... |
| Add Net Profit | ... |
| Less Drawings | ... |
| Long-term loans | ... |

## Common mistakes & exam traps

- Putting expenses in the trading account instead of the P&L.
- Forgetting closing stock in the cost of goods sold.
- Confusing debtors and creditors on the balance sheet.
- Forgetting to add net profit and subtract drawings from capital.

## Exam technique

1. Learn the layouts by heart — they are always the same.
2. Classify every item first: trading, P&L, or balance sheet.
3. Show the working for cost of goods sold.
4. Check the balance sheet balances.

## Memory hooks

- **Gross vs net:** "Gross = trading, Net = after expenses."
- **Balance sheet:** "Fixed and current assets, current and long-term liabilities."

## Quick practice

1. How do you calculate gross profit? **[Sales − Cost of goods sold]**
2. What is working capital? **[Current assets − current liabilities]**
3. Where does rent paid go? **[Profit and loss account]**
4. What are current liabilities? **[Debts due within a year]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('9fef1118-b5ae-9218-cff9-010400459a4f'::uuid, 'cheat-ordinary-accounting-depreciation', 'Accounting', 'Depreciation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Depreciation Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Depreciation is the fall in value of fixed assets over time. It is an expense that must be recorded every year. You must know the two main methods — straight line and reducing balance — and be able to calculate depreciation and the book value of assets.

## Core concepts

### What is depreciation?
- The fall in value of a fixed asset due to wear and tear, passage of time, obsolescence, or depletion.
- It is recorded as an expense in the P&L account.
- It reduces the value of the asset on the balance sheet.

### Causes of depreciation
- **Wear and tear:** use of the asset.
- **Passage of time:** even unused assets lose value (leases).
- **Obsolescence:** newer, better machines appear.
- **Depletion:** using up natural resources.

### Straight line method
Equal depreciation each year.
$$\text{Depreciation} = \frac{\text{Cost} - \text{Residual Value}}{\text{Useful Life}}$$

**Example:** machine costs 1,000,000 FCFA, residual value 100,000, life 9 years.
Depreciation = (1,000,000 − 100,000) ÷ 9 = **100,000 FCFA per year**.

### Reducing balance method
A fixed percentage of the **book value** each year — depreciation is higher in early years.
$$\text{Depreciation} = \text{Book Value} \times \text{Rate}$$

**Example:** asset 1,000,000 FCFA at 20% reducing balance.
Year 1: 200,000. Book value 800,000.
Year 2: 160,000. Book value 640,000.

### Book value
$$\text{Book Value} = \text{Cost} - \text{Accumulated Depreciation}$$

### The depreciation account
- Debit: Depreciation expense (P&L).
- Credit: Accumulated depreciation (balance sheet, deducted from the asset).

## Common mistakes & exam traps

- Confusing the two methods.
- Forgetting the residual value in the straight line method.
- Using the original cost instead of book value in reducing balance.
- Forgetting that depreciation is an expense.

## Exam technique

1. Identify the method from the question.
2. Show the formula and the working.
3. For reducing balance, use the book value at the START of each year.
4. Record depreciation in both the P&L and the balance sheet.

## Memory hooks

- **Straight line:** "Cost minus scrap, divided by life."
- **Reducing balance:** "Book value times rate, every year."

## Quick practice

1. What is depreciation? **[The fall in value of a fixed asset over time]**
2. Give two causes of depreciation. **[Wear and tear, obsolescence]**
3. Cost 1,000,000, residual 100,000, life 9 years — straight line depreciation? **[100,000 per year]**
4. Asset 1,000,000 at 20% reducing balance — year 1 depreciation? **[200,000]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('507d6b0b-9d97-6c3e-036e-8f0fbc26457a'::uuid, 'cheat-ordinary-business-studies-forms-of-business-organisation', 'Business Studies', 'Forms of Business Organisation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Forms of Business Organisation Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Businesses come in different forms, each with its own advantages and disadvantages. You must be able to compare sole proprietorships, partnerships and companies, and recommend a form for a given situation. This is a guaranteed topic in Business Studies.

## Core concepts

### Sole proprietorship
- Owned and run by **one person**.
- **Advantages:** easy to set up, owner keeps all profit, full control, personal service.
- **Disadvantages:** unlimited liability, limited capital, all risk on one person, no continuity.

### Partnership
- **2 to 20 partners** (unlimited) share ownership.
- **Advantages:** more capital, shared skills and risk, more ideas.
- **Disadvantages:** unlimited liability, shared profits, disagreements possible, decisions slower.
- **Deed of partnership:** the agreement setting out roles, profit sharing and rules.

### Limited company
- A separate legal entity owned by **shareholders**.
- **Private limited company (Ltd):** shares not sold to the public.
- **Public limited company (PLC):** shares sold on the stock exchange.
- **Advantages:** limited liability, more capital, continuity, professional management.
- **Disadvantages:** more regulation, accounts published, less privacy, slower decisions.

### Public corporation
- Owned by the **government** (e.g. SONARA, CAMTEL).
- Provides essential services; can be inefficient and political.

### Cooperative
- Owned and run by its **members** for mutual benefit.
- Common in agriculture and credit (credit unions).

## Common mistakes & exam traps

- Confusing limited and unlimited liability.
- Not knowing the number of partners allowed.
- Confusing private and public limited companies.
- Forgetting that a company is a separate legal entity.

## Exam technique

1. Define each form before listing advantages and disadvantages.
2. For "recommend a form", match the form to the situation (capital, risk, control).
3. Use Cameroon examples (SONARA, CAMTEL, credit unions).
4. Explain limited liability clearly — it is the key advantage of companies.

## Memory hooks

- **Liability:** "Limited = lose only what you invested; unlimited = lose everything."
- **Forms:** "Sole one, partnership few, company many."

## Quick practice

1. What is unlimited liability? **[The owner is personally responsible for all debts]**
2. How many partners can a partnership have? **[2 to 20]**
3. Give one advantage of a limited company. **[Limited liability]**
4. Who owns a public corporation? **[The government]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e9ec1434-d317-7a27-e82a-82c30710db2e'::uuid, 'cheat-ordinary-business-studies-marketing', 'Business Studies', 'Marketing Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Marketing Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Marketing is how a business identifies customers and satisfies their needs profitably. The marketing mix (the 4 Ps) is the core framework. Questions ask you to explain the elements of the mix and how a business can attract customers.

## Core concepts

### What is marketing?
- Marketing is identifying customer needs and satisfying them profitably.
- It is NOT just selling — it starts before the product exists.

### The marketing mix (the 4 Ps)
1. **Product:** what the business sells — quality, design, branding, packaging.
2. **Price:** what customers pay — pricing strategies (cost-plus, competitive, penetration, skimming).
3. **Place:** where and how the product reaches customers — distribution channels, location.
4. **Promotion:** how customers learn about the product — advertising, sales promotion, personal selling, public relations.

### Market research
- Gathering information about customers and competitors.
- **Primary data:** collected directly (questionnaires, interviews, observation).
- **Secondary data:** already published (reports, statistics, newspapers).
- Used to identify demand, set prices and improve products.

### Market segmentation
- Dividing the market into groups with similar needs.
- By age, income, gender, location, lifestyle.
- Allows targeted marketing.

### The product life cycle
- **Introduction → Growth → Maturity → Decline.**
- Marketing effort changes at each stage (promote heavily at introduction, extend at maturity).

## Common mistakes & exam traps

- Forgetting one of the 4 Ps.
- Confusing primary and secondary research.
- Thinking marketing is only advertising.
- Not linking the 4 Ps to examples.

## Exam technique

1. List the 4 Ps and explain each with an example.
2. For market research, distinguish primary and secondary data.
3. Use a Cameroon product (e.g. a local drink) to illustrate the mix.
4. Link promotion to the product life cycle.

## Memory hooks

- **4 Ps:** "Product, Price, Place, Promotion."
- **Research:** "Primary = collected fresh, Secondary = already published."

## Quick practice

1. What are the 4 Ps of marketing? **[Product, Price, Place, Promotion]**
2. Give an example of primary research. **[A questionnaire]**
3. What is market segmentation? **[Dividing the market into groups with similar needs]**
4. Name the four stages of the product life cycle. **[Introduction, growth, maturity, decline]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('79026e0b-6eb3-99dd-7837-176894e78ea4'::uuid, 'cheat-ordinary-business-studies-production-and-operations', 'Business Studies', 'Production & Operations Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Production & Operations Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Production is the process of turning inputs into outputs. You must understand the factors of production, the types of production, and how businesses improve efficiency. Questions often ask about productivity, quality and the benefits of technology.

## Core concepts

### The factors of production
| Factor | Reward |
|---|---|
| Land | Rent |
| Labour | Wages |
| Capital | Interest |
| Enterprise | Profit |

### Types of production
- **Primary:** extraction — farming, fishing, mining.
- **Secondary:** manufacturing and construction.
- **Tertiary:** services — transport, banking, retail.

### Job, batch and flow production
- **Job production:** one unique item at a time (custom furniture, a bridge).
- **Batch production:** groups of identical items (bakeries, clothing).
- **Flow production:** continuous mass production (bottling plants, car assembly).

### Productivity and efficiency
- **Productivity:** output per worker (or per unit of input).
- Improve by: training, better machinery, better organisation, motivation.
- Higher productivity → lower unit costs → higher profit.

### Quality
- **Quality control:** checking products at the end of production.
- **Quality assurance:** building quality into the process.
- Benefits: customer satisfaction, fewer returns, good reputation.

### Technology in production
- Automation and computers speed production and improve consistency.
- **Advantages:** faster, cheaper, more accurate.
- **Disadvantages:** high cost, job losses, breakdowns.

## Common mistakes & exam traps

- Confusing the types of production (job, batch, flow).
- Confusing primary, secondary and tertiary sectors.
- Forgetting the reward for each factor.
- Confusing quality control and quality assurance.

## Exam technique

1. Define each term with an example.
2. For job/batch/flow, match the method to the product.
3. Give advantages AND disadvantages of technology.
4. Link productivity to lower costs and higher profit.

## Memory hooks

- **Sectors:** "Primary extracts, secondary makes, tertiary serves."
- **Production methods:** "Job one-off, batch groups, flow continuous."

## Quick practice

1. What is the reward for enterprise? **[Profit]**
2. Which production method suits a bakery? **[Batch]**
3. What is productivity? **[Output per worker]**
4. Give one advantage of automation. **[Faster production]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('80e13ca4-7228-0c62-64f5-7f3e668492f0'::uuid, 'cheat-ordinary-business-studies-business-finance', 'Business Studies', 'Business Finance Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Business Finance Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Every business needs money to start and grow. You must know the sources of finance, the difference between short-term and long-term finance, and the factors a business considers when choosing a source. This is a core topic in Business Studies.

## Core concepts

### Short-term finance (up to 1 year)
- **Bank overdraft:** borrow up to a limit on a current account.
- **Trade credit:** buying goods and paying later.
- **Short-term loans:** repaid within a year.
- **Factoring:** selling debts to a factor for immediate cash.

### Long-term finance (more than 1 year)
- **Owner''s capital:** the owner''s own money.
- **Share capital:** money from shareholders (companies).
- **Retained profit:** profit kept in the business.
- **Long-term loans / debentures:** borrowed from banks or investors.
- **Leasing:** renting equipment instead of buying.
- **Hire purchase:** paying for an asset in instalments.
- **Grants and subsidies:** government help.

### Internal vs external finance
- **Internal:** from within the business — retained profit, sale of assets, owner''s savings.
- **External:** from outside — bank loans, share capital, trade credit.

### Choosing a source of finance
Consider:
- The **purpose** (short-term need vs long-term asset).
- The **cost** (interest).
- The **risk** (security/collateral required).
- The **size** of the business.
- **Control** (shares dilute ownership).

## Common mistakes & exam traps

- Confusing short-term and long-term finance.
- Forgetting that retained profit is internal finance.
- Not matching the source to the purpose.
- Confusing share capital with loans.

## Exam technique

1. Classify each source as short-term or long-term, internal or external.
2. Match the source to the purpose (buy a machine → long-term; pay wages → short-term).
3. Give advantages and disadvantages of each source.
4. Use the factors (purpose, cost, risk, control) when recommending.

## Memory hooks

- **Short-term:** "Overdraft, trade credit, short loans."
- **Long-term:** "Capital, shares, retained profit, long loans."

## Quick practice

1. Give two sources of short-term finance. **[Bank overdraft, trade credit]**
2. What is retained profit? **[Profit kept in the business]**
3. Is share capital internal or external finance? **[External]**
4. Why might a business prefer a loan to issuing shares? **[To keep control]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('0923aa83-6b01-8c29-c100-b1a21eaa37bd'::uuid, 'cheat-ordinary-computer-science-computer-hardware', 'Computer Science', 'Computer Hardware Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Computer Hardware Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Hardware is the physical part of a computer system. You must know the components of a computer, their functions, and the difference between hardware and software. This is the foundation of the whole Computer Science syllabus.

## Core concepts

### Hardware vs software
- **Hardware:** the physical parts you can touch — CPU, monitor, keyboard.
- **Software:** the programs and instructions — operating systems, applications.

### The main components
- **Input devices:** send data into the computer — keyboard, mouse, scanner, microphone, webcam.
- **Output devices:** present results — monitor, printer, speakers.
- **Storage devices:** keep data permanently — hard disk, SSD, USB flash drive, memory card.
- **The CPU (Central Processing Unit):** the "brain" — fetches, decodes and executes instructions.

### The CPU
- Made up of:
  - **ALU (Arithmetic Logic Unit):** performs calculations and logic.
  - **Control Unit:** directs the operations.
  - **Registers:** fast, small storage inside the CPU.
- **Clock speed** (GHz) measures how fast the CPU works.

### Memory
- **RAM (Random Access Memory):** temporary, volatile — lost when power is off. Holds running programs.
- **ROM (Read Only Memory):** permanent, non-volatile — holds the startup instructions (BIOS).
- **Cache:** very fast memory between CPU and RAM.

### Storage
- **Hard disk (HDD):** magnetic, large capacity, mechanical.
- **SSD:** flash memory, faster and more reliable than HDD.
- **Optical discs (CD/DVD):** read by laser.
- **Cloud storage:** data stored on remote servers accessed via the internet.

### Units of data
- Bit → Byte (8 bits) → KB (1024 B) → MB → GB → TB.

## Common mistakes & exam traps

- Confusing input and output devices.
- Confusing RAM (volatile) and ROM (non-volatile).
- Forgetting the parts of the CPU.
- Confusing storage (permanent) with memory (temporary).

## Exam technique

1. Classify devices as input, output or storage.
2. Know the CPU parts and their functions.
3. Distinguish RAM and ROM clearly (volatile vs non-volatile).
4. Use the units of data in order.

## Memory hooks

- **CPU:** "ALU calculates, Control directs, Registers store."
- **RAM vs ROM:** "RAM runs, ROM starts."

## Quick practice

1. Give two input devices. **[Keyboard, mouse]**
2. What does the ALU do? **[Performs calculations and logic]**
3. Is RAM volatile? **[Yes]**
4. How many bytes in a kilobyte? **[1024]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('beafcd70-1b53-68b8-3896-11d70a6b4670'::uuid, 'cheat-ordinary-computer-science-software-and-operating-systems', 'Computer Science', 'Software & Operating Systems Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Software & Operating Systems Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Software is what makes hardware useful. You must distinguish system software from application software, understand the role of the operating system, and know the types of application software. This topic is tested directly and supports every other area.

## Core concepts

### System software
- Manages the computer itself.
- **Operating system (OS):** the most important system software.
- **Utilities:** maintenance programs — antivirus, disk cleanup, backup tools.
- **Device drivers:** let the OS communicate with hardware.

### The functions of the operating system
1. **Manages the processor** (scheduling tasks).
2. **Manages memory** (RAM allocation).
3. **Manages files** (creating, saving, organising).
4. **Manages devices** (input/output).
5. **Provides the user interface** (GUI or command line).
6. **Manages security** (user accounts, passwords).

### Application software
- Programs that help the user do tasks.
- **Word processors:** Word, Google Docs.
- **Spreadsheets:** Excel, Google Sheets.
- **Databases:** Access, MySQL.
- **Presentation:** PowerPoint.
- **Graphics:** Photoshop, GIMP.
- **Browsers:** Chrome, Firefox.
- **Communication:** WhatsApp, email clients.

### Types of software licensing
- **Proprietary:** paid, closed source (Windows, Office).
- **Freeware:** free but not open source.
- **Open source:** free and the source code is available (Linux, LibreOffice).
- **Shareware:** free trial, then pay.

### The user interface
- **GUI (Graphical User Interface):** windows, icons, menus, pointer (WIMP).
- **Command line interface (CLI):** typed commands.

## Common mistakes & exam traps

- Confusing system and application software.
- Forgetting the functions of the OS.
- Confusing freeware and open source.
- Thinking the OS is an application.

## Exam technique

1. Classify software as system or application first.
2. List the OS functions with a short explanation of each.
3. Give examples for each type of software.
4. Distinguish GUI and CLI.

## Memory hooks

- **OS functions:** "Processor, memory, files, devices, interface, security."
- **GUI:** "Windows, icons, menus, pointer."

## Quick practice

1. What is the most important system software? **[The operating system]**
2. Give two functions of the OS. **[Managing memory, managing files]**
3. Is a word processor system or application software? **[Application]**
4. What does open source mean? **[Free with source code available]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('76894c38-abef-cad6-04db-a36203e7218b'::uuid, 'cheat-ordinary-computer-science-data-representation', 'Computer Science', 'Data Representation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Data Representation Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Computers store everything as binary — 0s and 1s. You must understand binary numbers, how to convert between binary and denary, and how text, images and sound are represented. This is a core, high-scoring topic in Computer Science.

## Core concepts

### Binary and denary
- **Denary (decimal):** base 10, digits 0–9.
- **Binary:** base 2, digits 0 and 1.
- Each binary digit is a **bit**. 8 bits = 1 **byte**.

### Converting binary to denary
Place values: 128, 64, 32, 16, 8, 4, 2, 1.
**Example:** 1011₂ = 8 + 0 + 2 + 1 = **11**.

### Converting denary to binary
Divide by 2 repeatedly, reading the remainders backwards.
**Example:** 13 → 13÷2=6 r1, 6÷2=3 r0, 3÷2=1 r1, 1÷2=0 r1 → **1101₂**.

### Hexadecimal
- Base 16: digits 0–9 and A–F (A=10, B=11, C=12, D=13, E=14, F=15).
- Each hex digit = 4 bits.
- **Example:** 2F₁₆ = 2×16 + 15 = **47**.

### Representing text
- **ASCII:** 7 or 8 bits per character (128 or 256 characters).
- **Unicode:** more bits, represents all world languages.

### Representing images
- **Bitmap:** a grid of pixels, each with a colour value (bits per pixel = colour depth).
- **Resolution:** the number of pixels — higher resolution = sharper image = larger file.
- **Vector graphics:** stored as mathematical shapes — scale without losing quality.

### Representing sound
- **Sampling:** measuring the sound wave at intervals.
- **Sample rate:** samples per second (higher = better quality, larger file).
- **Bit depth:** bits per sample.

## Common mistakes & exam traps

- Forgetting the place values in binary.
- Reading remainders in the wrong order when converting to binary.
- Confusing hex digits A–F with letters.
- Not knowing the relationship between resolution and file size.

## Exam technique

1. Write the place values above the binary digits.
2. Show your working for every conversion.
3. For images/sound, link quality to file size.
4. Learn the hex digits A–F by heart.

## Memory hooks

- **Place values:** "128, 64, 32, 16, 8, 4, 2, 1."
- **Hex:** "A=10, B=11, C=12, D=13, E=14, F=15."

## Quick practice

1. Convert 1011₂ to denary. **[11]**
2. Convert 13 to binary. **[1101]**
3. What is 2F₁₆ in denary? **[47]**
4. What does a higher sample rate do? **[Better quality but larger file]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('2ca67ad5-d558-1822-35c8-e6c7dec78b49'::uuid, 'cheat-ordinary-computer-science-networks-and-the-internet', 'Computer Science', 'Networks & the Internet Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Networks & the Internet Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Networks connect computers so they can share data and resources. The internet is the largest network of all. You must know the types of networks, the hardware involved, and the benefits and risks of networking.

## Core concepts

### Types of networks
- **LAN (Local Area Network):** covers a small area — a school, an office.
- **WAN (Wide Area Network):** covers a large area — the internet is the largest WAN.
- **PAN (Personal Area Network):** connects personal devices — Bluetooth, phone to earbuds.

### Network hardware
- **Router:** connects networks and directs data between them.
- **Switch:** connects devices within a LAN.
- **Wireless access point:** allows Wi-Fi connections.
- **Network interface card (NIC):** lets a device connect to a network.
- **Server:** provides services (files, web pages) to clients.
- **Client:** a device that requests services.

### Wired vs wireless
- **Wired (Ethernet):** fast, secure, reliable, but cables limit mobility.
- **Wireless (Wi-Fi):** convenient, mobile, but slower and less secure.

### The internet and the web
- **Internet:** the global network of networks.
- **World Wide Web:** the collection of web pages accessed over the internet.
- **URL:** the address of a web resource.
- **HTTP/HTTPS:** protocols for transferring web pages (HTTPS is secure).
- **IP address:** the unique address of a device on a network.
- **DNS:** converts domain names (google.com) into IP addresses.

### Benefits of networking
- Sharing files, printers and internet connections.
- Centralised storage and backups.
- Communication (email, messaging).
- Collaboration.

### Risks of networking
- Hacking, viruses, data theft.
- Need for security: firewalls, encryption, passwords, antivirus.

## Common mistakes & exam traps

- Confusing LAN and WAN.
- Confusing the internet with the web.
- Not knowing the role of a router.
- Forgetting the risks of networking.

## Exam technique

1. Define LAN, WAN and PAN with examples.
2. Know the function of each network device.
3. Distinguish internet (infrastructure) from web (content).
4. Give benefits AND risks.

## Memory hooks

- **LAN vs WAN:** "LAN local, WAN wide."
- **Router:** "Directs data between networks."

## Quick practice

1. What is a LAN? **[A network covering a small area]**
2. What does a router do? **[Connects networks and directs data]**
3. What is the difference between the internet and the web? **[Internet is the network; web is the pages]**
4. Give two risks of networking. **[Hacking, viruses]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('37cc73e3-44ce-784f-0022-919093a6c0ca'::uuid, 'cheat-ordinary-computer-science-programming-fundamentals', 'Computer Science', 'Programming Fundamentals Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Programming Fundamentals Cheatsheet

> **Exam weight:** high · **Time to master:** 35 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Programming is how we give computers instructions. You must understand algorithms, the basic programming constructs (sequence, selection, iteration), variables, and how to trace simple programs. This is the most practical topic in Computer Science.

## Core concepts

### What is an algorithm?
- A step-by-step set of instructions to solve a problem.
- Represented as **pseudocode**, **flowcharts**, or **program code**.

### Flowchart symbols
- **Oval:** start/end.
- **Rectangle:** process (a step).
- **Diamond:** decision (yes/no).
- **Parallelogram:** input/output.
- **Arrow:** flow of control.

### The three constructs
1. **Sequence:** instructions in order.
2. **Selection:** choosing a path — IF...THEN...ELSE.
3. **Iteration:** repeating — FOR, WHILE, REPEAT.

### Variables and constants
- **Variable:** a named storage location whose value can change.
- **Constant:** a value that never changes.
- **Data types:** integer, real, character, string, Boolean (true/false).

### Operators
- **Arithmetic:** +, −, ×, ÷, MOD, DIV.
- **Comparison:** =, ≠, <, >, ≤, ≥.
- **Logic:** AND, OR, NOT.

### Pseudocode example

    INPUT age
    IF age >= 18 THEN
        OUTPUT "Adult"
    ELSE
        OUTPUT "Minor"
    ENDIF

### Tracing
- Work through a program line by line, recording variable values in a table.
- This is how you find the output or spot errors.

## Common mistakes & exam traps

- Confusing the flowchart symbols.
- Forgetting the ELSE branch in selection.
- Mixing up FOR (known count) and WHILE (condition-based) loops.
- Not tracing variables carefully.

## Exam technique

1. Learn the flowchart symbols exactly.
2. For trace questions, draw a table with a column per variable.
3. Write pseudocode with clear indentation.
4. Check the loop condition and the exit condition.

## Memory hooks

- **Constructs:** "Sequence, selection, iteration."
- **Flowchart:** "Oval ends, diamond decides, rectangle does."

## Quick practice

1. What is an algorithm? **[A step-by-step set of instructions]**
2. Which symbol represents a decision? **[A diamond]**
3. Name the three programming constructs. **[Sequence, selection, iteration]**
4. What data type stores true or false? **[Boolean]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e2f7b424-f563-bab6-24ea-dc34a0ba143d'::uuid, 'cheat-ordinary-ict-ict-in-everyday-life', 'ICT', 'ICT in Everyday Life Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# ICT in Everyday Life Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

ICT (Information and Communication Technology) is everywhere — in schools, banks, hospitals and government. You must understand what ICT is, where it is used, and its benefits and drawbacks for society. This is a core theme of the ICT paper.

## Core concepts

### What is ICT?
- The use of technology to store, retrieve, transmit and manipulate information.
- Includes computers, phones, the internet, software and networks.

### Uses of ICT
- **Education:** e-learning, online research, virtual classrooms.
- **Banking:** ATMs, mobile money, online banking.
- **Health:** electronic records, telemedicine, medical equipment.
- **Government:** e-government services, online registration.
- **Business:** e-commerce, online advertising, stock control.
- **Communication:** email, social media, video calls.

### Benefits of ICT
- Fast communication and access to information.
- Automation saves time and reduces errors.
- Global connectivity — work and learn from anywhere.
- New jobs in technology.

### Drawbacks of ICT
- **Digital divide:** not everyone has access.
- **Cybercrime:** fraud, hacking, identity theft.
- **Health issues:** eye strain, sedentary lifestyle.
- **Job losses:** automation replaces some jobs.
- **Privacy concerns:** personal data can be misused.

### E-commerce and e-government
- **E-commerce:** buying and selling online (Jumia, Amazon).
- **E-government:** government services online (tax filing, registration).

## Common mistakes & exam traps

- Confusing ICT with just computers.
- Forgetting the drawbacks (digital divide, cybercrime).
- Not giving examples of ICT use.
- Confusing e-commerce and e-government.

## Exam technique

1. Define ICT broadly — it includes phones, networks and software.
2. Give examples from different sectors.
3. Balance benefits with drawbacks.
4. Use Cameroon examples (mobile money, e-government).

## Memory hooks

- **ICT uses:** "Education, banking, health, government, business, communication."
- **Drawbacks:** "Divide, crime, health, jobs, privacy."

## Quick practice

1. What does ICT stand for? **[Information and Communication Technology]**
2. Give two uses of ICT in banking. **[ATMs, mobile money]**
3. What is the digital divide? **[The gap between those with and without access to technology]**
4. Give two drawbacks of ICT. **[Cybercrime, job losses]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('408cfa22-118f-86cf-9fb9-35acec26e0d0'::uuid, 'cheat-ordinary-ict-word-processing-and-spreadsheets', 'ICT', 'Word Processing & Spreadsheets Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Word Processing & Spreadsheets Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Word processors and spreadsheets are the most used application software. The ICT paper tests your knowledge of their features and how to use them effectively. You must know the key terms and be able to describe tasks like formatting, formulas and charts.

## Core concepts

### Word processing
- Software for creating and editing text documents (Word, Google Docs).
- **Key features:**
  - **Formatting:** font, size, bold, italic, underline, colour.
  - **Alignment:** left, right, centre, justified.
  - **Paragraph formatting:** line spacing, indentation, bullet points.
  - **Page setup:** margins, orientation (portrait/landscape), page size.
  - **Editing tools:** cut, copy, paste, find and replace, spell check.
  - **Insert:** tables, images, headers and footers, page numbers.
  - **Mail merge:** sending the same letter to many people with personalised details.

### Spreadsheets
- Software for calculations and data analysis (Excel, Google Sheets).
- **Key terms:**
  - **Cell:** the intersection of a row and column (e.g. B3).
  - **Row:** horizontal (numbered). **Column:** vertical (lettered).
  - **Range:** a group of cells (e.g. A1:A10).
  - **Formula:** a calculation starting with = (e.g. =A1+B1).
  - **Function:** a built-in formula — SUM, AVERAGE, MAX, MIN, COUNT.
  - **Cell reference:** relative (A1) changes when copied; absolute ($A$1) stays fixed.

### Common spreadsheet functions
- **=SUM(A1:A10)** — adds the range.
- **=AVERAGE(A1:A10)** — the mean.
- **=MAX(A1:A10)** / **=MIN(A1:A10)** — largest/smallest.
- **=COUNT(A1:A10)** — counts numeric cells.

### Charts
- **Bar chart:** comparing categories.
- **Line graph:** trends over time.
- **Pie chart:** proportions of a whole.

## Common mistakes & exam traps

- Confusing rows and columns.
- Forgetting the = sign before a formula.
- Confusing relative and absolute references.
- Not knowing which chart suits which data.

## Exam technique

1. Learn the spreadsheet terms exactly (cell, range, formula, function).
2. Write formulas with the = sign and the correct cell references.
3. Match the chart type to the data.
4. Describe word processing features with their purpose.

## Memory hooks

- **Cell address:** "Column letter first, row number second."
- **Functions:** "SUM adds, AVERAGE means, MAX largest, MIN smallest."

## Quick practice

1. What is a cell? **[The intersection of a row and column]**
2. Write a formula to add A1 to A10. **[=SUM(A1:A10)]**
3. Which chart shows trends over time? **[Line graph]**
4. What does mail merge do? **[Sends personalised letters to many people]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1c3f4520-d50e-e557-6153-4dca46ba958e'::uuid, 'cheat-ordinary-ict-databases', 'ICT', 'Databases Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Databases Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Databases store and organise information so it can be searched and updated easily. You must understand the key terms — table, record, field, primary key — and be able to describe queries, sorting and reports. This is a core topic in ICT.

## Core concepts

### What is a database?
- An organised collection of data stored electronically.
- Examples: a school''s student records, a bank''s customer records.

### Key terms
- **Table:** a collection of related records.
- **Record:** one complete set of data (one row) — e.g. one student.
- **Field:** one piece of data (one column) — e.g. name, age.
- **Primary key:** a unique field that identifies each record (e.g. student ID).
- **Data type:** the kind of data in a field — text, number, date, Boolean.

### Database operations
- **Sorting:** arranging records in order (ascending/descending) by a field.
- **Searching/Querying:** finding records that match a condition.
- **Filtering:** showing only records that meet criteria.
- **Reports:** presenting data in a formatted, printable layout.

### Query example
Find all students in Form 5:

    SELECT * FROM students WHERE class = "Form 5"

### Flat-file vs relational
- **Flat-file database:** one table — simple but wasteful (data repeated).
- **Relational database:** multiple linked tables — avoids duplication, more powerful.
- Tables are linked by a **foreign key** (a primary key from another table).

### Advantages of a database
- Fast searching and sorting.
- Easy updating.
- Data shared by many users.
- Reduced duplication (relational).

## Common mistakes & exam traps

- Confusing record and field.
- Forgetting the purpose of a primary key.
- Confusing sorting and filtering.
- Not knowing the difference between flat-file and relational.

## Exam technique

1. Define table, record, field and primary key precisely.
2. Use examples (student records) to explain.
3. For queries, state the field, the condition and the output.
4. Explain why relational databases are better than flat-file.

## Memory hooks

- **Record vs field:** "Record is a row, field is a column."
- **Primary key:** "Unique for every record."

## Quick practice

1. What is a record? **[One complete set of data, one row]**
2. What is a primary key? **[A unique field identifying each record]**
3. What is the difference between sorting and filtering? **[Sorting orders; filtering selects]**
4. Give one advantage of a relational database. **[Reduces duplication]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('29b1c473-5e54-860a-7d00-396bbe81a6fc'::uuid, 'cheat-ordinary-ict-internet-safety-and-security', 'ICT', 'Internet Safety & Security Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Internet Safety & Security Cheatsheet

> **Exam weight:** high · **Time to master:** 30 min · **Level:** Ordinary (Form 5)

## Why this topic matters

Using the internet safely is essential knowledge for every ICT student. You must understand the threats online — viruses, phishing, cyberbullying — and the measures that protect you. This topic is tested directly and is increasingly important in the real world.

## Core concepts

### Online threats
- **Malware:** malicious software — viruses, worms, trojans, ransomware.
- **Phishing:** fake messages that trick you into revealing passwords or bank details.
- **Identity theft:** stealing personal information to commit fraud.
- **Cyberbullying:** harassment online.
- **Hacking:** unauthorised access to systems.
- **Spam:** unwanted bulk messages.

### Protecting yourself
- Use **strong passwords** (long, mixed characters, not easy to guess).
- Do not share passwords or personal information.
- **Update software** regularly to fix security holes.
- Use **antivirus** and **firewall** software.
- Check for **HTTPS** and padlock icons before entering details.
- Be suspicious of unknown links and attachments.
- Log out of accounts on shared devices.

### Protecting data
- **Encryption:** scrambling data so only authorised people can read it.
- **Backups:** copies of data stored safely.
- **Access control:** passwords, PINs, biometrics.
- **Two-factor authentication (2FA):** a second check beyond the password.

### Copyright and plagiarism
- **Copyright:** the legal right of creators over their work.
- Do not copy others'' work without permission or acknowledgement.
- **Plagiarism:** presenting others'' work as your own — an academic offence.

## Common mistakes & exam traps

- Confusing the types of malware.
- Not knowing what phishing is.
- Forgetting practical safety measures.
- Confusing copyright with plagiarism.

## Exam technique

1. Define each threat with an example.
2. Give practical, specific safety measures.
3. Explain encryption and backups clearly.
4. Link safety to real situations (social media, banking).

## Memory hooks

- **Threats:** "Malware, phishing, identity theft, cyberbullying, hacking."
- **Safety:** "Strong passwords, updates, antivirus, HTTPS, backups."

## Quick practice

1. What is phishing? **[Fake messages that trick you into revealing details]**
2. Give two features of a strong password. **[Long, mixed characters]**
3. What does encryption do? **[Scrambles data so only authorised people can read it]**
4. What is plagiarism? **[Presenting others'' work as your own]**

## Self-check before you leave

You are ready to move on when you can:

- [ ] Explain every concept above without looking at the sheet.
- [ ] Redo the practice questions from memory and get them right.
- [ ] Name at least one common trap and how to avoid it.
- [ ] Write one clean exam answer using the correct vocabulary and units.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

commit;