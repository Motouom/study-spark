begin;

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-math-ordinary', 'Mathematics', 'Complete O-Level Mathematics Course — Cameroon GCE', 'Welcome to your definitive guide for conquering the Cameroon GCE O-Level Mathematics examination (subject code 0570). This course is designed to function as a complete replacement ', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 339)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-eng-ordinary', 'English Language', 'Complete O-Level English Language Course — Cameroon GCE', 'This course covers the GCE O-Level English Language syllabus (subject code 0530): comprehension, summary, grammar and usage, and composition. English is a compulsory core subject —', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 221)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-phys-ordinary', 'Physics', 'Complete O-Level Physics Course — Cameroon GCE', 'This course covers GCE O-Level Physics (subject code 0580). Physics rewards method: define terms precisely, quote formulas, substitute with units, and check whether the answer is s', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 64)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-chem-ordinary', 'Chemistry', 'Complete O-Level Chemistry Course — Cameroon GCE', 'This course covers GCE O-Level Chemistry (subject code 0515). Chemistry marks come from three habits: writing balanced equations, showing working in mole calculations, and using co', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-bio-ordinary', 'Biology', 'Complete O-Level Biology Course — Cameroon GCE', 'This course covers GCE O-Level Biology (subject code 0510) and Human Biology (0565). Biology marks come from precise vocabulary and labelled diagrams. Learn the definitions word-fo', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 66)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-econ-ordinary', 'Economics', 'Complete O-Level Economics Course — Cameroon GCE', 'This course covers GCE O-Level Economics (subject code 0525). Economics answers one question everywhere: how do people and societies use scarce resources? Use Cameroonian examples ', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-comm-ordinary', 'Commerce', 'Complete O-Level Commerce Course — Cameroon GCE', 'This course covers GCE O-Level Commerce (subject code 0520). Commerce studies how goods move from producer to consumer. Answers score best when you name real institutions: Douala p', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-cs-ordinary', 'Computer Science', 'Complete O-Level Computer Science Course — Cameroon GCE', 'This course covers GCE O-Level Computer Science (subject code 0595) and supports ICT (0596). Computer Science rewards precision: exact definitions, correct terminology, and careful', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-ict-ordinary', 'ICT', 'Complete O-Level ICT Course — Cameroon GCE', 'This course covers GCE O-Level ICT (subject code 0596). ICT focuses on using computer systems and applications effectively — the practical paper (word processing, spreadsheets, dat', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-fr-ordinary', 'French', 'Cours complet de Français — Niveau Ordinary, GCE Cameroun', 'Ce cours couvre le français au GCE Ordinary Level (code 0545) : grammaire, conjugaison, compréhension, traduction et composition. Le français est une matière obligatoire du tronc c', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-hist-ordinary', 'History', 'Complete O-Level History Course — Cameroon GCE', 'This course covers GCE O-Level History (subject code 0560): Cameroon history, African history, and world history. History marks come from precise dates, named people and places, an', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-geo-ordinary', 'Geography', 'Complete O-Level Geography Course — Cameroon GCE', 'This course covers GCE O-Level Geography (subject code 0550): physical geography, human geography, map work, and fieldwork. Geography marks come from precise terminology, sketch ma', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-civ-ordinary', 'Citizenship Education', 'Complete O-Level Citizenship Education Course — Cameroon GCE', 'This course covers GCE O-Level Citizenship Education (subject code 0562). It teaches rights, duties, institutions and civic values, with Cameroon as the living case study. Answers ', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-rel-ordinary', 'Religious Studies', 'Complete O-Level Religious Studies Course — Cameroon GCE', 'This course covers GCE O-Level Religious Studies (subject code 0585). The paper tests knowledge of the Bible (Old and New Testament), religious teachings, and their application to ', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-log-ordinary', 'Logic', 'Complete O-Level Logic Course — Cameroon GCE', 'This course covers GCE O-Level Logic (subject code 0590). Logic teaches you to reason correctly and detect bad arguments — a skill that improves every other subject. Marks come fro', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-agr-ordinary', 'Agricultural Science', 'Complete O-Level Agricultural Science Course — Cameroon GCE', 'This course covers GCE O-Level Agricultural Science (subject code 0597) and supports A-Level Agricultural Science. Agriculture is Cameroon''s backbone — the exam rewards answers gro', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-hbio-ordinary', 'Human Biology', 'Complete O-Level Human Biology Course — Cameroon GCE', 'This course covers GCE O-Level Human Biology (subject code 0565) — the human-focused alternative to Biology. It shares the Biology syllabus core but emphasises human anatomy, physi', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-amath-ordinary', 'Additional Mathematics', 'Complete O-Level Additional Mathematics Course — Cameroon GCE', 'This course covers GCE O-Level Additional Mathematics (subject code 0575), the bridge between O-Level and A-Level mathematics. It introduces calculus, advanced trigonometry and pol', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-fnut-ordinary', 'Food and Nutrition', 'Complete O-Level Food and Nutrition Course — Cameroon GCE', 'This course covers GCE O-Level Food and Nutrition (subject code 0540) and supports Food Science and Nutrition at A-Level. It combines nutrition science, food preparation and meal m', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-lit-ordinary', 'English Literature', 'Complete O-Level English Literature Course — Cameroon GCE', 'This course covers GCE O-Level Literature in English (subject code 0535). The O-Level paper tests the same skills as A-Level — close reading, quotation, analysis — at a more guided', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-acct-ordinary', 'Accounting', 'Complete O-Level Accounting Course — Cameroon GCE', 'This course covers GCE O-Level Accounting (subject code 0505), core of the Commercial series. O-Level accounting is about formats and double entry — learn the layouts and the rules', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-biz-ordinary', 'Business Studies', 'Complete O-Level Business Studies Course — Cameroon GCE', 'This course covers GCE O-Level Business Studies (subject code 0598). Business Studies teaches how enterprises are created, financed, marketed and managed. Score by applying concept', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-geol-ordinary', 'Geology', 'Complete O-Level Geology Course — Cameroon GCE', 'This course covers GCE O-Level Geology (subject code 0555). Geology studies the earth, its materials and processes. Cameroon is a geologist''s classroom — from Mount Cameroon''s volc', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-sbf-ordinary', 'Special Bilingual Education French', 'Cours de Français — Éducation Bilingue Spéciale, GCE Cameroun', 'Ce cours couvre l''Éducation Bilingue Spéciale — Français (code 0546) au GCE Ordinary Level. Cette matière s''adresse aux candidats du système anglophone qui choisissent le français ', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-pmm-advanced', 'Pure Mathematics with Mechanics', 'Complete A-Level Pure Mathematics with Mechanics Course — Cameroon GCE', 'This course covers GCE A-Level Pure Mathematics with Mechanics (subject code 0770), the core subject of the Science series (S1). A-Level mathematics demands precision: every line o', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-pms-advanced', 'Pure Mathematics with Statistics', 'Complete A-Level Pure Mathematics with Statistics Course — Cameroon GCE', 'This course covers GCE A-Level Pure Mathematics with Statistics (subject code 0775), the mathematics of the Commercial series (A6) and an option for Arts. Statistics is the most pr', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-fmath-advanced', 'Further Mathematics', 'Complete A-Level Further Mathematics Course — Cameroon GCE', 'This course covers GCE A-Level Further Mathematics (subject code 0771), the extension paper for strong mathematicians (often paired with Pure Math with Mechanics or Statistics). It', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-amaths-advanced', 'Mathematics', 'Complete A-Level Mathematics Course (Subsidiary) — Cameroon GCE', 'Complete structured course for Mathematics.', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-aphys-advanced', 'Physics', 'Complete A-Level Physics Course — Cameroon GCE', 'This course covers GCE A-Level Physics (subject code 0780), core of the Science series. A-Level physics = O-Level physics with calculus, vectors and deeper explanation. The examine', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-achem-advanced', 'Chemistry', 'Complete A-Level Chemistry Course — Cameroon GCE', 'This course covers GCE A-Level Chemistry (subject code 0715), core of the Science series. A-Level chemistry is built on three pillars: physical (energetics, kinetics, equilibria), ', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-abio-advanced', 'Biology', 'Complete A-Level Biology Course — Cameroon GCE', 'This course covers GCE A-Level Biology (subject code 0710), core of the Science series (S2–S5). A-Level biology demands depth: explain HOW and WHY, use precise terminology, and lin', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 64)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-aecon-advanced', 'Economics', 'Complete A-Level Economics Course — Cameroon GCE', 'This course covers GCE A-Level Economics (subject code 0725), core of the Commercial series (A6) and popular in Arts. A-Level economics = O-Level depth plus analysis and evaluation', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-aacct-advanced', 'Accounting', 'Complete A-Level Accounting Course — Cameroon GCE', 'This course covers GCE A-Level Accounting (subject code 0705), core of the Commercial series (A6). Accounting rewards format discipline: learn the layout of each statement and acco', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-alit-advanced', 'English Literature', 'Complete A-Level English Literature Course — Cameroon GCE', 'This course covers GCE A-Level Literature in English (subject code 0735) and supports O-Level Literature (0535). Literature rewards close reading: every claim about a text must be ', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-aeng-advanced', 'English Language', 'Complete A-Level English Language Course — Cameroon GCE', 'This course covers GCE A-Level English Language (subject code 0730). A-Level English demands mature writing: precise comprehension, controlled summary, and sustained composition wi', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-afr-advanced', 'French', 'Cours de Français — Advanced Level, GCE Cameroun', 'Ce cours couvre le français au GCE Advanced Level (code 0745). Le niveau A exige : une expression écrite soutenue, une compréhension fine de textes littéraires et d''actualité, la t', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-ahist-advanced', 'History', 'Complete A-Level History Course — Cameroon GCE', 'This course covers GCE A-Level History (subject code 0760), core of the Arts series. A-Level history demands analysis and argument: essays need a thesis, evidence, and evaluation o', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-acs-advanced', 'Computer Science', 'Complete A-Level Computer Science Course — Cameroon GCE', 'This course covers GCE A-Level Computer Science (subject code 0795) and ICT (0796). A-Level demands depth in programming, data structures, systems and networks. The practical paper', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-phil-advanced', 'Philosophy', 'Complete A-Level Philosophy Course — Cameroon GCE', 'This course covers GCE A-Level Philosophy (subject code 0790), core of the Arts series. Philosophy rewards clarity: define terms, present arguments step by step, consider objection', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('course-fsn-advanced', 'Food Science and Nutrition', 'Complete A-Level Food Science and Nutrition Course — Cameroon GCE', 'This course supports A-Level Food Science and Nutrition (subject code 0741). It deepens O-Level Food and Nutrition with food chemistry, microbiology, dietetics and food service man', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 0, 60)
on conflict (id) do update set title = excluded.title, description = excluded.description, estimated_minutes = excluded.estimated_minutes, updated_at = now();

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-math-ordinary', 'Mathematics', 'Complete O-Level Mathematics Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Mathematics Course — Cameroon GCE

## How to use this course

Welcome to your definitive guide for conquering the Cameroon GCE O-Level Mathematics examination (subject code 0570). This course is designed to function as a complete replacement for your textbook, offering the depth, clarity, and examination focus that you need to achieve top grades. Mathematics is a subject where the gap between a pass and a distinction is rarely about raw intelligence; it is about methodology, consistency, and understanding what the examiner is looking for. 

To get the maximum benefit from this course, you must adopt a specific study routine. First, read the explanation for each concept slowly, ensuring you understand the *why* behind the formula, not just the *how*. Second, attempt the worked examples yourself before reading the solutions. Do not simply read the steps and think you understand; cover the solution, try it on a blank page, and check your working against the provided steps. If you get stuck, identify exactly where your logic diverged from the method shown. Third, complete the Practice Questions at the end of every unit under timed conditions, as if you were sitting for Paper 1 or Paper 2. Finally, review the Answers section meticulously. If you got a question wrong, do not just note the correct answer; write down exactly what mistake you made—was it a sign error, a misread question, or a forgotten formula? This metacognitive reflection is what elevates a student from a C grade to an A grade.

This course is structured to mirror the GCE syllabus, moving logically from foundational arithmetic to advanced algebra, geometry, and statistics. Each unit builds upon the previous one, so you must not skip units. If you struggle with Unit 1, you will find Unit 2 and Unit 4 incredibly difficult. Take your time, be patient with yourself, and remember that showing your work is the key to unlocking method marks in the GCE examination.

## Unit 1: Number and Operations

### Lesson 1.1: Number systems and directed numbers

Before you can solve complex equations, you must have an unshakeable foundation in the types of numbers you will encounter and how to manipulate them with confidence. The GCE examination assumes you know these sets intimately, and questions on directed numbers frequently appear as the first question on Paper 1, serving as a guaranteed method mark if you are prepared.

The sets of numbers are classified as follows: Natural numbers are the counting numbers starting from 1 (1, 2, 3, 4…). Whole numbers include zero and the natural numbers (0, 1, 2, 3…). Integers include all whole numbers and their negative counterparts (…-3, -2, -1, 0, 1, 2, 3…). Rational numbers are any numbers that can be expressed as a fraction p/q, where p and q are integers and q is not zero; this includes all terminating and repeating decimals. Irrational numbers are non-terminating, non-repeating decimals that cannot be written as a simple fraction, such as √2, π, and e. Finally, the set of Real numbers encompasses both rational and irrational numbers. In the context of Cameroon, you will often deal with FCFA (the monetary unit) and measurements in metres, litres, and kilograms, all of which fall under the real numbers.

Directed numbers, also known as signed numbers, are numbers that carry a positive or negative sign, representing quantities with opposite directions or meanings, such as profit and loss, or temperature above and below zero. The rules for operating with directed numbers are the bedrock of algebra. When adding a negative number, you move to the left on the number line, which effectively reduces the value: 5 + (-3) = 2. When subtracting a negative number, you move to the right, which increases the value: 4 - (-2) = 6. This is because subtracting a negative is equivalent to adding a positive. For multiplication and division, the rules are symmetrical: if the signs are the same, the result is positive; if the signs are different, the result is negative. Therefore, (-6) × (-4) = 24, because a negative times a negative yields a positive. Conversely, (-12) ÷ 3 = -4, because a negative divided by a positive yields a negative.

**Worked example (GCE style):** Evaluate -8 + 12 ÷ (-4) × (-3).
To solve this, you must strictly follow the order of operations, often remembered by the acronym BODMAS (Brackets, Orders, Division/Multiplication, Addition/Subtraction). Division and multiplication are performed from left to right before addition and subtraction.
Step 1: Perform the division first, moving left to right: 12 ÷ (-4) = -3.
Step 2: Perform the multiplication next: -3 × (-3) = 9.
Step 3: Finally, perform the addition: -8 + 9 = 1.
The answer is 1. A common error is to multiply -3 by -3 first and then divide 12 by 9, which violates the left-to-right rule for equal precedence operations.

**Common mistakes students make:**
The most frequent mistake students make is ignoring the order of operations, often calculating from left to right without respecting the hierarchy of division and multiplication over addition and subtraction. Another severe error is mishandling double negatives in subtraction, such as writing 10 - (-5) = 5 instead of 15. Students also struggle with the distinction between -3² and (-3)²; the former means the negative of 3 squared (resulting in -9), while the latter means negative 3 multiplied by itself (resulting in 9).

**Exam technique:**
In the GCE Paper 1 (Multiple Choice), these questions are designed to be quick wins. Read the question twice, carefully identifying the operations and their signs. Underline the operations in the question to force yourself to follow BODMAS. If you are unsure, write out each step on your rough work sheet before selecting your answer. Never guess blindly; eliminate options that clearly violate the sign rules.

### Lesson 1.2: Fractions, decimals and percentages

The ability to fluently convert between fractions, decimals, and percentages is a non-negotiable skill for the GCE. These concepts are not isolated; they form the basis for solving problems in commerce, statistics, and probability, which are heavily tested in both Paper 1 and Paper 2.

A fraction represents a part of a whole. To convert a fraction to a decimal, divide the numerator by the denominator. For example, 3/8 = 3 ÷ 8 = 0.375. To convert a decimal to a percentage, multiply by 100 and add the percent sign, so 0.375 = 37.5%. When adding or subtracting fractions, you must find a common denominator, which is typically the Least Common Multiple (LCM) of the denominators. For instance, to calculate 2/3 + 1/4, the LCM of 3 and 4 is 12. Convert each fraction: 2/3 = 8/12 and 1/4 = 3/12. Now add the numerators: 8/12 + 3/12 = 11/12. When multiplying fractions, you do not need a common denominator; instead, multiply the numerators together and the denominators together, simplifying (cancelling) before you multiply to make the arithmetic easier. For example, (3/4) × (8/9): the 3 and 9 cancel to 1 and 3, and the 4 and 8 cancel to 1 and 2, leaving (1/1) × (2/3) = 2/3. To divide fractions, keep the first fraction, change the division sign to multiplication, and flip the second fraction (find its reciprocal). So, (2/5) ÷ (3/10) becomes (2/5) × (10/3). The 5 and 10 cancel to 1 and 2, yielding 2/3.

Percentage change is a concept deeply embedded in commercial mathematics, highly relevant to the Cameroonian economy where trade and profit calculations are daily realities. The formula for percentage change is: (Change ÷ Original Value) × 100. If a trader buys a bag of rice for 25,000 FCFA and sells it for 31,000 FCFA, the profit (change) is 31,000 - 25,000 = 6,000 FCFA. The percentage profit is (6,000 ÷ 25,000) × 100 = 24%. If the value decreases, it is a percentage loss.

**Worked example (GCE style):** A motorbike is purchased for 120,000 FCFA. After one year, its value depreciates by 15%. What is its value after one year?
Step 1: Calculate the depreciation amount: 15% of 120,000 = (15/100) × 120,000 = 18,000 FCFA.
Step 2: Subtract the depreciation from the original value: 120,000 - 18,000 = 102,000 FCFA.
Alternatively, you can calculate the remaining percentage directly: 100% - 15% = 85%. Then, 85% of 120,000 = 0.85 × 120,000 = 102,000 FCFA.

**Common mistakes students make:**
Students often forget to find a common denominator when adding fractions, incorrectly adding numerators and denominators together (e.g., 1/2 + 1/3 = 2/5). When multiplying, they fail to cancel before multiplying, leading to unnecessarily large numbers and arithmetic errors. In percentage problems, a critical mistake is using the wrong base; for example, calculating a 20% increase and then a 20% decrease on the new price, assuming they cancel out, which they do not because the base value has changed.

**Exam technique:**
Always write down the formula for percentage change before substituting numbers. In Paper 2, method marks are awarded for the correct setup. If the question involves currency, always write the FCFA symbol next to your final answer. For fractions, always express your final answer in its simplest form (lowest terms); an unsimplified fraction may cost you a mark.

### Lesson 1.3: Ratio, proportion and rate

Ratios, proportions, and rates are fundamental tools for comparing quantities. They appear frequently in GCE questions, often in the context of sharing amounts of money, mixing substances, or calculating speeds and work rates. Mastery of this topic requires a clear understanding of how to partition quantities and how to identify the relationship between variables.

A ratio compares two or more quantities of the same kind. When a quantity is shared in a given ratio, the total number of parts is found by adding the numbers in the ratio together. For example, if 40 FCFA is shared in the ratio 3:5, the total number of parts is 3 + 5 = 8. One part is therefore worth 40 ÷ 8 = 5 FCFA. The shares are then 3 × 5 = 15 FCFA and 5 × 5 = 25 FCFA. Proportion describes how quantities relate to one another. Direct proportion occurs when two quantities increase or decrease at the same rate; if y is directly proportional to x, we write y = kx, where k is the constant of proportionality. If you double x, y doubles. Inverse proportion occurs when one quantity increases while the other decreases; if y is inversely proportional to x, we write y = k/x. If you double x, y is halved.

A rate is a special ratio that compares two different units, such as speed (distance per time) or density (mass per volume). Speed is calculated as distance divided by time. If a car covers 240 km in 3 hours, its speed is 240 ÷ 3 = 80 km/h. Work rate problems are also common; if a tap fills a tank in 4 hours, its rate is 1/4 of the tank per hour.

**Worked example (GCE style):** If y is inversely proportional to x, and y = 12 when x = 3, find the value of y when x = 4.
Step 1: Write the formula for inverse proportion: y = k/x.
Step 2: Substitute the known values to find k: 12 = k/3, so k = 12 × 3 = 36.
Step 3: Write the equation with the known k: y = 36/x.
Step 4: Substitute x = 4 into the equation: y = 36/4 = 9.

**Common mistakes students make:**
Students frequently confuse direct and inverse proportion, applying the wrong formula. Another common error in sharing problems is forgetting to add the ratio parts together to find the total number of parts, instead just multiplying the total by one of the ratio numbers. In rate problems, students often mix up the numerator and denominator, calculating time divided by distance instead of distance divided by time.

**Exam technique:**
Always define the constant of proportionality (k) first. In Paper 2, if a question asks you to show that two quantities are in direct or inverse proportion, you must demonstrate that their ratio or product is constant. Write the relationship as an equation before substituting numbers. For sharing problems, explicitly state the total number of parts.

### Lesson 1.4: Indices and standard form

Indices (or powers) provide a shorthand way of writing repeated multiplication. The laws of indices are essential for simplifying algebraic expressions and are tested regularly in both Paper 1 and Paper 2. Standard form (or scientific notation) is a method of writing very large or very small numbers concisely, which is vital for scientific and financial calculations in Cameroon, such as national debt figures or microscopic measurements.

The laws of indices must be memorized and applied flawlessly:
1. aᵐ × aⁿ = aᵐ⁺ⁿ (When multiplying, add the indices).
2. aᵐ ÷ aⁿ = aᵐ⁻ⁿ (When dividing, subtract the indices).
3. (aᵐ)ⁿ = aᵐⁿ (When raising a power to a power, multiply the indices).
4. a⁰ = 1 (Any non-zero number raised to the power of zero is 1).
5. a⁻ⁿ = 1/aⁿ (A negative index indicates a reciprocal).
6. a^(1/2) = √a (A fractional index of a half denotes a square root).

Standard form is written as A × 10ⁿ, where 1 ≤ A < 10 and n is an integer. To write 45,600 in standard form, move the decimal point 4 places to the left to get 4.56, so it becomes 4.56 × 10⁴. To write 0.00072 in standard form, move the decimal point 4 places to the right to get 7.2, so it becomes 7.2 × 10⁻⁴. When multiplying numbers in standard form, multiply the A values and add the exponents: (4 × 10⁶) × (2 × 10⁻³) = 8 × 10³.

**Worked example (GCE style):** Simplify (27x⁶y³) / (9x²y) and express the answer with positive indices.
Step 1: Divide the coefficients: 27 ÷ 9 = 3.
Step 2: Apply the division law for x: x⁶ ÷ x² = x⁶⁻² = x⁴.
Step 3: Apply the division law for y: y³ ÷ y¹ = y³⁻¹ = y².
Step 4: Combine the results: 3x⁴y².

**Common mistakes students make:**
Students often add the exponents when they should be subtracting them, or vice versa. A frequent error is mishandling negative indices, leaving the answer in a form like x⁻² instead of 1/x². When dealing with standard form, students sometimes forget to ensure that A is between 1 and 10, writing 45.6 × 10³ instead of 4.56 × 10⁴.

**Exam technique:**
Always state the law of indices you are using before you apply it. For standard form questions, check your answer by converting it back to an ordinary number to ensure it matches the original. If the question asks for a answer with positive indices, make sure all negative indices are converted to fractions before finalizing your answer.

### Lesson 1.5: Approximation and estimation

In the real world, and in the GCE examination, exact answers are not always necessary or possible. Approximation and estimation allow you to find reasonable answers quickly and to check the plausibility of your calculations. This skill is crucial for Paper 1, where time is limited, and for Paper 2, where an accurate estimate can prevent you from making a catastrophic calculation error.

Rounding numbers involves reducing the number of significant digits while keeping the value close to the original. To round to a specific number of decimal places, look at the digit immediately to the right of the last required decimal place. If it is 5 or greater, round up; if it is less than 5, round down. For example, rounding 3.14159 to 2 decimal places gives 3.14, because the third decimal digit is 1. Rounding to a specific number of significant figures involves counting digits from the first non-zero digit. Rounding 3.14159 to 3 significant figures gives 3.14, because the fourth significant digit is 1.

Estimation is the process of finding an approximate answer by rounding the numbers involved to one significant figure before calculating. For example, to estimate 0.048 × 391, round 0.048 to 0.05 and 391 to 400. The estimate is 0.05 × 400 = 20. This gives you a quick sanity check; if your exact calculation yields 18.768, you know it is in the right ballpark. If it yielded 187.68, you would know you made a decimal place error.

**Worked example (GCE style):** A farmer has a field with an area of 4,870 square metres. He buys 12.9 kg of fertilizer per 100 m². Estimate the total amount of fertilizer needed.
Step 1: Round the numbers: 4,870 ≈ 5,000 and 12.9 ≈ 13.
Step 2: Calculate the estimate: (5,000 / 100) × 13 = 50 × 13 = 650 kg.
The exact answer would be slightly less, but 650 kg is a safe and quick estimate.

**Common mistakes students make:**
Students often confuse decimal places with significant figures, leading to incorrect rounding. Another mistake is rounding too early in a multi-step calculation, which compounds the error and leads to a final answer that is far from the exact value. Estimation is sometimes skipped entirely, causing students to submit answers that are wildly off due to calculator entry errors.

**Exam technique:**
If a question asks for an estimate, do not use the calculator for the exact answer; use the rounded numbers. In Paper 1, if you are stuck on a calculation, use estimation to eliminate impossible multiple-choice options. Always check the degree of accuracy requested in the question (e.g., "give your answer correct to 2 decimal places") and ensure your final answer adheres to it.

### Lesson 1.6: Prime factorization, HCF, and LCM

Understanding how numbers are built from their prime components is a fundamental skill that underpins many areas of mathematics, including simplifying fractions, finding common denominators, and solving number theory problems. Prime factorization is the process of expressing a number as a product of its prime factors.

A prime number is a number greater than 1 that has no positive divisors other than 1 and itself (e.g., 2, 3, 5, 7, 11). To find the prime factorization of a composite number, you can use a factor tree. For example, to find the prime factors of 60: 60 = 6 × 10. Then break these down: 6 = 2 × 3 and 10 = 2 × 5. So, the prime factorization of 60 is 2² × 3 × 5.

The Highest Common Factor (HCF), also known as the Greatest Common Divisor (GCD), is the largest number that divides exactly into two or more numbers. To find the HCF using prime factorization, identify the common prime factors and multiply them together using the lowest power present. For 60 (2² × 3 × 5) and 48 (2⁴ × 3), the common factors are 2² and 3. Thus, HCF = 2² × 3 = 12.

The Lowest Common Multiple (LCM) is the smallest number that is a multiple of two or more numbers. To find the LCM, take all the prime factors present in either number, using the highest power for each, and multiply them together. For 60 and 48, the prime factors are 2⁴ (from 48) and 3 and 5 (from 60). Thus, LCM = 2⁴ × 3 × 5 = 16 × 15 = 240.

**Worked example (GCE style):** Find the HCF and LCM of 84 and 120 using prime factorization.
Step 1: Find the prime factorization of 84: 84 = 2 × 42 = 2 × 2 × 21 = 2² × 3 × 7.
Step 2: Find the prime factorization of 120: 120 = 2 × 60 = 2 × 2 × 30 = 2 × 2 × 2 × 15 = 2³ × 3 × 5.
Step 3: Find the HCF: Common primes are 2 and 3. Lowest powers are 2² and 3¹. HCF = 4 × 3 = 12.
Step 4: Find the LCM: Highest powers are 2³, 3¹, 5¹, and 7¹. LCM = 8 × 3 × 5 × 7 = 840.

**Common mistakes students make:**
Students often confuse HCF and LCM, applying the wrong method when asked for one or the other. A common error in factor trees is stopping at a composite number instead of breaking it down fully to primes. When finding the LCM, students sometimes forget to include a prime factor that only appears in one of the numbers, leading to an incorrect multiple.

**Exam technique:**
Always show your factor tree or the step-by-step division by primes. In Paper 2, if a question asks for the LCM to add fractions, write down the LCM explicitly before converting the fractions. This secures a method mark even if your final arithmetic is slightly off.

### Lesson 1.7: Surds

A surd is an irrational number expressed as a root, such as √2 or ∛5, that cannot be simplified to remove the square root (or cube root) symbol. Surds are used in mathematics to express exact values, avoiding the inaccuracies of decimal approximations. They are a frequent feature in GCE questions, particularly in geometry and algebra, where leaving an answer in surd form is often required for full marks.

A surd is in its simplest form when the number under the root sign has no square factors other than 1. To simplify a surd, you find the largest square factor of the number under the root and take its square root out of the radical. For example, √50 = √(25 × 2) = √25 × √2 = 5√2. Similarly, ∛24 = ∛(8 × 3) = ∛8 × ∛3 = 2∛3.

Surds can be added and subtracted only if they are "like surds," meaning they have the exact same irrational part. For example, 3√2 + 5√2 = 8√2. However, 3√2 + 2√3 cannot be simplified further because the irrational parts are different. When multiplying surds, you multiply the numbers under the root signs together: √3 × √5 = √15. If there are coefficients, multiply them separately: 2√3 × 4√5 = 8√15.

Rationalizing the denominator is a crucial technique where you eliminate the surd from the bottom of a fraction. To do this, multiply both the numerator and the denominator by the surd in the denominator. For example, 1/√3 is multiplied by √3/√3 to give √3/3. For a binomial denominator like 1/(√2 + 1), you multiply by the conjugate, which is (√2 - 1), using the difference of two squares rule: (√2 + 1)(√2 - 1) = 2 - 1 = 1.

**Worked example (GCE style):** Simplify (6√12) / √27.
Step 1: Simplify the numerator: 6√12 = 6 × √(4 × 3) = 6 × 2√3 = 12√3.
Step 2: Simplify the denominator: √27 = √(9 × 3) = 3√3.
Step 3: Divide the simplified terms: (12√3) / (3√3) = 12/3 = 4.

**Common mistakes students make:**
Students often try to add or subtract unlike surds, such as writing √2 + √3 = √5, which is completely false. Another frequent error is failing to simplify surds fully before performing operations, making the arithmetic unnecessarily complicated. When rationalizing the denominator, students sometimes forget to multiply the numerator by the same term, breaking the fundamental rule of equivalent fractions.

**Exam technique:**
Always simplify each surd individually before performing any addition, subtraction, multiplication, or division. In Paper 2, if the question asks for an answer "in its simplest form," ensure there are no square factors left under the root and no surds in the denominator. Show the step of rationalizing explicitly to get method marks.

### Lesson 1.8: Financial mathematics (Simple and compound interest)

Financial mathematics is a highly practical topic that connects directly to everyday life in Cameroon, from calculating the interest on a bank loan to understanding the depreciation of a vehicle. The GCE examination tests your ability to apply formulas for simple and compound interest to solve real-world problems involving FCFA.

Simple interest is calculated only on the original principal amount throughout the entire period. The formula is I = PRT / 100, where I is the interest, P is the principal (the initial amount of money), R is the annual interest rate (in percent), and T is the time in years. The total amount A to be paid back or received is A = P + I. For example, if you invest 100,000 FCFA at a simple interest rate of 5% per annum for 3 years, the interest is I = (100,000 × 5 × 3) / 100 = 15,000 FCFA. The total amount is 100,000 + 15,000 = 115,000 FCFA.

Compound interest is calculated on the principal and also on the accumulated interest of previous periods. It is essentially "interest on interest." The formula for the total amount is A = P(1 + R/100)ⁿ, where n is the number of years. The compound interest itself is the total amount minus the principal: CI = A - P. For example, if you borrow 50,000 FCFA at 10% compound interest for 2 years, the total amount is A = 50,000(1 + 10/100)² = 50,000(1.1)² = 50,000 × 1.21 = 60,500 FCFA. The compound interest is 60,500 - 50,000 = 10,500 FCFA.

**Worked example (GCE style):** A woman deposits 200,000 FCFA in a bank that offers a compound interest rate of 4% per annum. Calculate the value of her investment after 3 years.
Step 1: Identify the variables: P = 200,000, R = 4, n = 3.
Step 2: Substitute into the compound interest formula: A = 200,000(1 + 4/100)³.
Step 3: Simplify the bracket: A = 200,000(1.04)³.
Step 4: Calculate the power: (1.04)³ = 1.124864.
Step 5: Multiply: A = 200,000 × 1.124864 = 224,972.80 FCFA.

**Common mistakes students make:**
Students frequently confuse simple and compound interest formulas, using the simple interest formula when compound is required, or vice versa. A common error in compound interest is forgetting to add 1 to the rate before raising it to the power of n, incorrectly calculating A = P(R/100)ⁿ. Students also often forget to subtract the principal from the total amount to find the compound interest when the question specifically asks for the interest earned.

**Exam technique:**
Always read the question carefully to determine whether it asks for the total amount or just the interest. Write down the formula you are using before substituting the numbers. Ensure that the time period and the interest rate are in consistent units (e.g., if the rate is per annum, the time must be in years). If the time is given in months, convert it to a fraction of a year.

## Practice Questions — Unit 1

1. Evaluate: (-5)² - 20 ÷ (-4) + (-3) × 2.
2. Express 0.0000891 in standard form.
3. A sum of 150,000 FCFA is shared between three people in the ratio 2:3:5. How much does the person with the largest share receive?
4. Simplify: (12x⁵y³) / (4x²y).
5. Round 4.56789 to 3 significant figures.
6. Find the HCF and LCM of 90 and 150.
7. Simplify the surd: √72.
8. Calculate the simple interest on 80,000 FCFA at 6% per annum for 5 years.
9. A phone costs 120,000 FCFA. Its value depreciates by 10% in the first year. What is its value at the end of the first year?
10. Estimate: 0.039 × 812.

### Answers — Unit 1

1. (-5)² = 25. 20 ÷ (-4) = -5. (-3) × 2 = -6. So, 25 - (-5) + (-6) = 25 + 5 - 6 = 24.
2. 8.91 × 10⁻⁵.
3. Total parts = 2 + 3 + 5 = 10. One part = 150,000 / 10 = 15,000 FCFA. Largest share = 5 × 15,000 = 75,000 FCFA.
4. 12/4 = 3. x⁵/x² = x³. y³/y = y². Answer: 3x³y².
5. The first three significant figures are 4, 5, 6. The next digit is 7, so round up: 4.57.
6. 90 = 2 × 3² × 5. 150 = 2 × 3 × 5². HCF = 2 × 3 × 5 = 30. LCM = 2 × 3² × 5² = 450.
7. √72 = √(36 × 2) = 6√2.
8. I = PRT/100 = (80,000 × 6 × 5) / 100 = 24,000 FCFA.
9. Depreciation = 10% of 120,000 = 12,000 FCFA. Value = 120,000 - 12,000 = 108,000 FCFA.
10. 0.039 ≈ 0.04. 812 ≈ 800. Estimate = 0.04 × 800 = 32.

## Unit 2: Algebra

### Lesson 2.1: Simplifying and expanding

Algebra is the language of mathematics, using symbols and letters to represent numbers and quantities in formulas and equations. The ability to simplify and expand algebraic expressions is a foundational skill that you will use in every subsequent unit of this course. In the GCE examination, these skills are tested not only in isolation but also as part of solving complex problems, making it essential that you master the rules of indices, the distributive law, and the handling of signs.

Simplifying an expression involves collecting like terms. Like terms are terms that have the exact same variables raised to the exact same powers. For example, 3x and 5x are like terms, as are 2xy² and -7xy². Constants (numbers without variables) are also like terms. To simplify, you add or subtract the coefficients of the like terms: 3x + 5x - 2x = (3 + 5 - 2)x = 6x. You cannot combine unlike terms, such as 3x + 4y, any further.

Expanding brackets means multiplying each term inside the bracket by the term outside the bracket. This is an application of the distributive law: a(b + c) = ab + ac. For example, 3(2x - 5) = 3 × 2x - 3 × 5 = 6x - 15. When expanding, you must be extremely careful with negative signs. If there is a negative sign in front of the bracket, it is equivalent to multiplying by -1, so every term inside the bracket changes sign: -(x - 4) = -x + 4.

Expanding double brackets uses the FOIL method (First, Outer, Inner, Last) or the distributive law applied twice. For (x + 3)(x + 4), you multiply each term in the first bracket by each term in the second bracket: x×x + x×4 + 3×x + 3×4 = x² + 4x + 3x + 12 = x² + 7x + 12. It is vital to check that you have multiplied every term and that you have combined the like terms correctly.

**Worked example (GCE style):** Expand and simplify 2(x - 3)² - (x + 1)(x - 4).
Step 1: Expand the squared bracket first. (x - 3)² = (x - 3)(x - 3) = x² - 3x - 3x + 9 = x² - 6x + 9.
Step 2: Multiply by 2: 2(x² - 6x + 9) = 2x² - 12x + 18.
Step 3: Expand the double bracket: (x + 1)(x - 4) = x² - 4x + x - 4 = x² - 3x - 4.
Step 4: Subtract the second expansion from the first: (2x² - 12x + 18) - (x² - 3x - 4).
Step 5: Distribute the negative sign: 2x² - 12x + 18 - x² + 3x + 4.
Step 6: Collect like terms: (2x² - x²) + (-12x + 3x) + (18 + 4) = x² - 9x + 22.

**Common mistakes students make:**
The most common mistake is forgetting to multiply every term inside the bracket by the term outside, often leaving a term unmultiplied. Another severe error is mishandling negative signs when subtracting a bracket, such as writing -(x² - 3x - 4) = -x² - 3x - 4 instead of -x² + 3x + 4. Students also frequently make sign errors when expanding double brackets, forgetting that the product of a positive and a negative is negative.

**Exam technique:**
Write out each step of the expansion clearly. Do not try to do everything in your head. In Paper 2, if you are expanding and then simplifying, keep the intermediate steps visible. This allows the examiner to see your method and award method marks even if your final answer has a small arithmetic error. Always check your expansion by substituting a simple number for x into both the original and expanded expressions to see if they yield the same result.

### Lesson 2.2: Factorising

Factorising is the reverse process of expanding brackets. It involves writing an algebraic expression as a product of its factors. Factorising is a critical skill for solving equations, simplifying fractions, and proving identities in the GCE examination. The examiner will often require you to factorise completely, meaning you must take out the highest common factor and apply any further factorisation methods until the expression cannot be factorised any further.

The first step in factorising any expression is to look for a common factor in all the terms. This is the greatest common divisor of the coefficients and the lowest power of each variable. For example, to factorise 6x² + 9x, the common factor is 3x. Taking it out gives 3x(2x + 3). Always check your answer by expanding the brackets to ensure you get back to the original expression.

For quadratic expressions of the form x² + bx + c, you need to find two numbers that multiply to give c and add to give b. For x² + 7x + 12, the two numbers are 3 and 4 because 3 × 4 = 12 and 3 + 4 = 7. Thus, the factorisation is (x + 3)(x + 4). If the coefficient of x² is not 1, the process is slightly more involved. For ax² + bx + c, you find two numbers that multiply to a×c and add to b, then split the middle term and factorise by grouping.

The difference of two squares is a special and frequently tested factorisation pattern. It applies to expressions of the form a² - b², which factorises into (a - b)(a + b). For example, x² - 25 = (x)² - (5)² = (x - 5)(x + 5). This pattern is useful because it always applies when you have a perfect square minus another perfect square. A perfect square trinomial is another special case, such as x² + 6x + 9, which is (x + 3)² because it fits the pattern a² + 2ab + b².

**Worked example (GCE style):** Factorise completely: 2x² - 8.
Step 1: Look for a common factor. Both terms are divisible by 2. So, 2(x² - 4).
Step 2: Recognise that x² - 4 is a difference of two squares: x² - 2².
Step 3: Apply the difference of two squares formula: (x - 2)(x + 2).
Step 4: Write the final answer: 2(x - 2)(x + 2).

**Common mistakes students make:**
Students often forget to take out the common factor first, leading to incomplete factorisation. For example, writing x² - 4 as (x - 2)(x + 2) is correct, but if the expression was 2x² - 8, failing to take out the 2 first means the factorisation is not complete. Another common error is confusing the signs in the difference of two squares, writing x² - 25 as (x - 5)(x - 5) instead of (x - 5)(x + 5). Students also struggle with factorising quadratics where the coefficient of x² is not 1, often guessing incorrectly.

**Exam technique:**
Always check for a common factor first before applying any other method. State the method you are using (e.g., "factorising by taking out a common factor" or "difference of two squares"). In Paper 2, show the intermediate step of taking out the common factor, as this is a method mark. Verify your factorisation by expanding the brackets back out.

### Lesson 2.3: Linear equations and inequalities

A linear equation is an equation of the first degree, meaning the highest power of the variable is 1. Solving linear equations involves finding the value of the variable that makes the equation true. The fundamental principle is that whatever you do to one side of the equation, you must do to the other side to maintain equality. This balance method is the cornerstone of algebra and is heavily tested in the GCE.

To solve a linear equation, you follow a series of steps: remove any brackets, collect like terms on each side, move all the variable terms to one side and the constant terms to the other side, and finally, divide by the coefficient of the variable to isolate it. For example, to solve 3x - 7 = 14: add 7 to both sides to get 3x = 21, then divide both sides by 3 to get x = 7. Always check your answer by substituting it back into the original equation.

When equations contain fractions, the standard technique is to multiply every term on both sides of the equation by the lowest common denominator (LCD) to clear the fractions. For example, to solve (x+1)/2 - (2x-1)/3 = 1, the LCD is 6. Multiply every term by 6: 6 × (x+1)/2 - 6 × (2x-1)/3 = 6 × 1, which simplifies to 3(x+1) - 2(2x-1) = 6. Then expand and solve: 3x + 3 - 4x + 2 = 6, so -x + 5 = 6, and -x = 1, giving x = -1.

Linear inequalities are solved in the same way as linear equations, with one crucial exception: if you multiply or divide both sides of an inequality by a negative number, you must flip the inequality sign. For example, to solve -2x > 6, divide both sides by -2, which gives x < -3. The solution to an inequality is often represented on a number line, using an open circle for < or > and a closed circle for ≤ or ≥.

**Worked example (GCE style):** Solve the inequality 3(x - 2) ≤ 2x + 1 and represent the solution on a number line.
Step 1: Expand the left side: 3x - 6 ≤ 2x + 1.
Step 2: Move the variable terms to the left and constants to the right: 3x - 2x ≤ 1 + 6.
Step 3: Simplify: x ≤ 7.
The number line would have a closed circle at 7 and a line extending to the left, indicating all numbers less than or equal to 7.

**Common mistakes students make:**
Students frequently forget to flip the inequality sign when multiplying or dividing by a negative number, which is the single most common error in this topic. Another mistake is failing to multiply every term by the LCD when clearing fractions, often leaving a term without a denominator cleared. Students also make sign errors when moving terms across the equals sign, forgetting to change the sign of the term.

**Exam technique:**
Always write the justification for each step (e.g., "add 6 to both sides"). When representing inequalities on a number line, use the correct circle (open or closed) and direction. In Paper 2, always check your solution by substituting a value from the solution set back into the original inequality to ensure it holds true.

### Lesson 2.4: Simultaneous equations

Simultaneous equations are a set of equations containing two or more variables that must be solved together. The solution is the set of values for the variables that satisfies all the equations simultaneously. In the GCE O-Level examination, you are typically required to solve a system of two linear equations with two unknowns. These problems often appear in Paper 2 as word problems, requiring you to set up the equations before solving them.

There are two main algebraic methods for solving simultaneous equations: the elimination method and the substitution method. The elimination method involves adding or subtracting the equations to eliminate one of the variables. This works best when the coefficients of one of the variables are the same or can easily be made the same by multiplying one or both equations by a constant. For example, for the equations 2x + 3y = 12 and 3x + 3y = 15, you can subtract the first equation from the second to eliminate y, yielding x = 3. You then substitute x = 3 back into one of the original equations to find y.

The substitution method involves rearranging one equation to make one variable the subject, and then substituting this expression into the other equation. This method is particularly useful when one of the equations has a coefficient of 1 for one of the variables. For example, if you have x + y = 10 and 2x - y = 5, you can rearrange the first equation to x = 10 - y, and substitute this into the second equation: 2(10 - y) - y = 5. Then solve for y: 20 - 2y - y = 5, so -3y = -15, and y = 3. Substitute y = 3 back into x = 10 - y to get x = 7.

**Worked example (GCE style):** Solve the simultaneous equations: 3x + 2y = 19 and 5x - 4y = 1.
Step 1: Multiply the first equation by 2 so that the y coefficients are opposites: 6x + 4y = 38.
Step 2: Add this new equation to the second equation to eliminate y: (6x + 4y) + (5x - 4y) = 38 + 1, which gives 11x = 39.
Step 3: Solve for x: x = 39/11. (Note: GCE answers are often whole numbers, but fractional answers are possible. Let''s adjust the example for a cleaner answer).
Let''s use: 3x + 2y = 19 and 5x - 4y = 1. Wait, 39/11 is ugly. Let''s use 3x + 2y = 18 and 5x - 4y = 8. Multiply first by 2: 6x + 4y = 36. Add to second: 11x = 44, so x = 4. Substitute x=4 into first: 12 + 2y = 18, so 2y = 6, y = 3.
Step 4: Check the solution in both equations: 3(4) + 2(3) = 12 + 6 = 18 (correct). 5(4) - 4(3) = 20 - 12 = 8 (correct).

**Common mistakes students make:**
Students often make arithmetic errors when multiplying equations by constants, leading to incorrect coefficients for elimination. A common mistake is substituting the value of the variable into the equation that was just modified, rather than the original equation, which can propagate errors. Students also forget to check their solution by substituting the values back into both original equations.

**Exam technique:**
Always state which method you are using. Write the equations clearly, aligning the variables. In Paper 2, always check your answer by substituting the values into both original equations. If the question is a word problem, define your variables clearly before setting up the equations (e.g., "Let x be the cost of a book and y be the cost of a pen").

### Lesson 2.5: Quadratic equations

A quadratic equation is an equation of the second degree, meaning the highest power of the variable is 2. The standard form is ax² + bx + c = 0, where a ≠ 0. Quadratic equations are fundamental in algebra and appear frequently in the GCE examination, often requiring you to solve them by factorising, completing the square, or using the quadratic formula.

The simplest method to solve a quadratic equation is by factorising, if possible. You set the equation to zero, factorise the quadratic expression, and then use the null factor law, which states that if the product of two factors is zero, then at least one of the factors must be zero. For example, to solve x² - 5x + 6 = 0, you factorise to (x - 2)(x - 3) = 0. Setting each factor to zero gives x - 2 = 0 or x - 3 = 0, so the solutions are x = 2 or x = 3.

When a quadratic equation does not factorise easily, you must use the quadratic formula: x = (-b ± √(b² - 4ac)) / 2a. The expression under the square root, b² - 4ac, is called the discriminant. It tells you the nature of the roots: if it is positive, there are two distinct real roots; if it is zero, there is one repeated real root; if it is negative, there are no real roots. To use the formula, you must first identify the values of a, b, and c from the standard form of the equation.

Completing the square is another method used to solve quadratic equations and to find the vertex of a parabola. It involves rewriting the quadratic in the form (x + p)² = q. For example, to solve x² + 6x');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-eng-ordinary', 'English Language', 'Complete O-Level English Language Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level English Language Course — Cameroon GCE

## How to use this course

This course covers the GCE O-Level English Language syllabus (subject code 0530): comprehension, summary, grammar and usage, and composition. English is a compulsory core subject — every candidate sits it, whether you are in Form 3, Form 4, or Form 5. The GCE examination is built on two papers:

- **Paper 1: Objective (MCQ)** — 40 to 50 multiple-choice questions testing grammar, vocabulary, punctuation, and reading comprehension. Each question carries one mark. You have about 1 hour 15 minutes.
- **Paper 2: Essay and Summary** — structured questions: a comprehension passage with questions, a summary question, a grammar/rewrite section, and two composition questions (you choose one). You have about 2 hours 30 minutes.

The examiners'' reports repeat the same advice every year: answer the question asked, not the question you prepared for. A brilliant essay on the wrong topic scores zero. A summary that copies the passage scores zero. A comprehension answer that quotes a whole sentence when asked for "your own words" scores zero. This course trains you to avoid these fatal errors.

**How to work through this course:**

- Study each unit in order. Do not skip the worked examples — they show you the exact method the examiner expects.
- Attempt every practice question in a timed setting before reading the answers. Writing the answer first is the only way to learn.
- Keep a notebook of your own errors. Before the exam, revise your error list, not the whole textbook.
- Use the "Exam technique" boxes as a checklist on exam day.

---

## Unit 1: Comprehension

### Lesson 1.1: Reading for meaning

GCE comprehension passages are usually narrative or expository texts of 400–600 words about Cameroonian or African life: a story set in a village near Bamenda, an article about the Kribi deep seaport, a passage about the cattle trade in Ngaoundéré, or a piece about the importance of mother-tongue education. You will be asked 5–8 questions testing different skills.

**The two-read method:**

1. **First read (4 minutes):** Read the passage quickly from start to finish to get the gist. Do not stop at words you do not know. Ask yourself: *What is this passage about? What is the writer''s attitude?*
2. **Second read (6 minutes):** Read the questions first, then read the passage carefully with the questions in mind. Underline the sentence or phrase that answers each question as you find it. Number the underlines so you can find them again.

**Question types and how to answer:**

- **Factual questions:** The answer is directly stated in the text. Find the exact sentence, then express the idea in your own words. Example: *"According to the passage, where did the market women meet?"* The answer is in the text — locate it, then write a full sentence.
- **Vocabulary in context:** Give the meaning the word carries in that particular sentence, not its dictionary list. The word "bore" means "carried" in one context and "tolerated" in another. The examiner wants the meaning *as used in the passage*.
- **Inference questions:** The answer is suggested but not stated. Look for clue words: *although, however, but, yet, despite*. "Although he had studied for years, the door remained closed" implies he failed despite effort. You must read between the lines.
- **Purpose/tone questions:** Why did the writer include this detail? What is the attitude — amused, critical, sympathetic, sarcastic? The tone of a passage about corruption in high places is likely "critical"; the tone of a story about a child''s first day at school in Buea is likely "affectionate" or "nostalgic".

**Common mistakes students make:**

- Copying whole sentences from the passage when the question says "in your own words" — this scores zero.
- Answering in fragments or single words when the question asks for a full sentence.
- Quoting a word without explaining what it means in context.

**Exam technique:** Quote briefly or paraphrase — never copy whole sentences. If the question says "in your own words", copying the text scores zero. If the question asks "what does X mean?", answer in the form: *"X means that..."* — this forces you to write a proper sentence.

### Lesson 1.2: Answering to the marks

Every comprehension question carries a mark value. A 2-mark question needs two distinct points or one developed point. A 3-mark question needs three separate ideas or one well-developed idea with a supporting reference. Check how many marks each question carries and give exactly that many separate ideas.

**Worked example (GCE style):**

*Question: "Give two reasons why the women preferred to sell at the Mokolo market rather than in the village." (2 marks)*

- **Weak answer:** "Because of the market." (0 marks — too vague, no distinct points)
- **Partial answer:** "Because they could get better prices." (1 mark — one point only)
- **Full answer:** "They could get better prices for their produce, and they had access to more customers from the city." (2 marks — two distinct points)

**Worked example 2:**

*Question: "Explain in your own words what the writer means by ''the city is a hungry place for the unprepared''." (3 marks)*

- **Method:** (1) Identify the key words: "hungry" and "unprepared". (2) Explain the literal meaning: the city does not feed you. (3) Explain the figurative meaning: without skills, money, or connections, you will suffer.
- **Full answer:** "The writer means that the city offers nothing for free. A person who arrives without skills, savings, or relatives to support them will struggle to find work and may go hungry. The city rewards only those who are prepared for its demands." (3 marks — three developed ideas)

**Common mistakes students make:**

- Giving one point when the question asks for two.
- Writing a long paragraph for a 1-mark question — you cannot earn more than the mark, and you waste time.
- Repeating the same idea in different words and expecting two marks. "The women earned more money" and "their income increased" are the same point.

**Exam technique:** Count your points. If the question carries 2 marks, you should be able to draw a line between two separate ideas in your answer. If you cannot, you have not finished.

### Lesson 1.3: Vocabulary in context — a deeper look

The GCE vocabulary question usually appears in this form: *"What does the word ''X'' mean as used in the passage?"* It is worth 2 marks: one for the meaning, one for the context.

**The three-step method:**

1. Read the sentence in which the word appears, plus the sentence before and after it.
2. Decide what part of speech it is (noun, verb, adjective, adverb).
3. Give a definition that fits the sentence, then show you understand the context.

**Worked example 1:**

*Passage sentence: "The heavy rains caused the river to swell, and the bridge could not bear the weight of the lorry."*

*Question: What does the word "bear" mean as used in the passage? (2 marks)*

- **Step 1:** The sentence is about a bridge and a lorry. "Bear" follows "could not".
- **Step 2:** It is a verb.
- **Step 3:** It means "support" or "carry".
- **Full answer:** "In this context, ''bear'' means to support or hold up. The bridge could not support the weight of the lorry." (2 marks)

**Worked example 2:**

*Passage sentence: "The old man bore the pain of his wound without a single complaint."*

*Question: What does the word "bore" mean as used in the passage? (2 marks)*

- **Full answer:** "Here, ''bore'' means endured or tolerated. The old man endured the pain without complaining." (2 marks)
- **Note:** The same word, different meaning. This is why context matters.

**Worked example 3:**

*Passage sentence: "The headmaster''s decision was final; no amount of pleading would move him."*

*Question: What does the word "move" mean as used in the passage? (2 marks)*

- **Full answer:** "In this context, ''move'' means to change his mind or persuade him. No amount of pleading would persuade him to change his decision." (2 marks)

**Common mistakes students make:**

- Giving the dictionary meaning instead of the contextual meaning. "Bore" = "drilled a hole" when the passage clearly means "endured".
- Giving a one-word answer. "Endured" alone earns only 1 mark — you need the explanation.

**Exam technique:** Always write "In this context, ''X'' means..." — this signals to the examiner that you understand the difference between literal and contextual meaning.

### Lesson 1.4: Inference and attitude questions

Inference questions are the most feared, but they follow a pattern. The answer is never written in the text; it is *suggested*. You must combine evidence from the text with your own reasoning.

**Worked example 1:**

*Passage: "The boy stared at the examination paper. His hands trembled. He looked at the clock — only ten minutes left. He had not written a single word."*

*Question: What can you infer about the boy''s state of mind? (2 marks)*

- **Method:** Look at the evidence: trembling hands, staring at a blank paper, watching the clock. These are signs of panic and anxiety.
- **Full answer:** "The boy is extremely anxious and panicking. His trembling hands and his inability to write anything show that fear has paralysed him." (2 marks)

**Worked example 2:**

*Passage: "The minister arrived at the ceremony two hours late. He apologised briefly, but his eyes kept moving to his phone. The crowd''s applause was polite but cold."*

*Question: What is the writer''s attitude to the minister? (2 marks)*

- **Method:** Look at the details the writer chose: "two hours late", "apologised briefly", "eyes kept moving to his phone", "applause was polite but cold". These details paint the minister as disrespectful.
- **Full answer:** "The writer is critical of the minister. The details of his lateness, his brief apology, and his attention to his phone show that the writer sees him as arrogant and disrespectful." (2 marks)

**Worked example 3:**

*Passage: "The rain fell without mercy on the tin roof. Inside, Mama Ngo stirred the pot of stew, her face lit by the fire. ''At least,'' she said, ''we are together.''"*

*Question: What is the tone of this passage? (2 marks)*

- **Method:** The contrast between the harsh rain outside and the warm fire inside, plus Mama Ngo''s words, create a feeling of comfort and family love.
- **Full answer:** "The tone is warm and comforting. Despite the harsh weather outside, the family is safe and together, and Mama Ngo''s words create a feeling of love and contentment." (2 marks)

**Common mistakes students make:**

- Writing "I think..." — the examiner wants evidence, not opinion. Always say "The writer suggests... because..."
- Confusing tone with mood. Tone is the writer''s attitude; mood is the feeling the reader gets. The two are related but not the same.

**Exam technique:** For inference questions, always quote a short phrase as evidence, then explain what it tells you. The formula is: *"The writer says [evidence], which suggests [inference]."*

### Lesson 1.5: Working with a full sample passage

**Sample passage (GCE style, 450 words):**

*The morning market at Sandaga was already in full cry when Amina arrived. Hawkers shouted over one another, praising their tomatoes, their plantains, their dried fish. A woman tugged at her sleeve, offering a pair of sandals. Amina shook her head and pressed on, her basket heavy on her arm.*

*She had come to sell the beans her mother had grown in the family plot behind their house in Ebolowa. The beans were good this year — plump and red, like tiny polished stones. But the market was full of beans. Every stall, it seemed, had its own mountain of them. The price had fallen to half of what it was last month.*

*A man in a blue boubou examined her basket. "How much?" he asked.*

*"Two thousand francs," Amina said.*

*The man laughed. "I can buy three baskets of beans for two thousand francs at the next stall."*

*Amina''s heart sank. She thought of her mother at home, waiting for the money to buy medicine for her younger brother, who had been coughing for a week. She thought of the school fees that were due at the end of the month. The beans were good, but good beans were not enough. The market did not care about her family''s needs; it cared only about supply and demand.*

*She took a deep breath. "Then buy my beans for one thousand five hundred," she said. "And I will carry them to your car myself."*

*The man studied her for a long moment. Then he smiled. "You are a businesswoman," he said. "I will give you one thousand eight hundred, and you will carry them to my car."*

*Amina nodded, and the bargain was sealed. As she carried the heavy sack across the car park, she thought about what she had learned. The market was a hard teacher, but it taught quickly. She would not come to Sandaga again without knowing the price of beans before she left home.*

**Questions and answers:**

*Question 1: Where had Amina''s mother grown the beans? (1 mark)*

- **Answer:** In the family plot behind their house in Ebolowa.
- **Method:** The answer is directly stated in paragraph 2. Quote briefly.

*Question 2: What does the word "plump" mean as used in the passage? (2 marks)*

- **Answer:** "Plump" means full and rounded, suggesting the beans are healthy and of good quality.
- **Method:** The passage says the beans are "like tiny polished stones" — the comparison tells us they are firm and well-formed.

*Question 3: Why did Amina''s heart sink when the man laughed? (2 marks)*

- **Answer:** Her heart sank because she realised she might not get a good price for her beans. She needed the money for her brother''s medicine and her school fees, and the man''s laughter suggested he thought her price was too high.
- **Method:** The next paragraph explains her worries. Link the laughter to her situation.

*Question 4: What lesson did Amina learn at the market? (2 marks)*

- **Answer:** She learned that she needed to know the market price of her goods before coming to sell, so that she would not be taken advantage of.
- **Method:** The final paragraph states the lesson directly: "She would not come to Sandaga again without knowing the price of beans before she left home."

*Question 5: What is the writer''s attitude to Amina? (2 marks)*

- **Answer:** The writer is sympathetic and admiring. He presents her as hard-working, intelligent, and quick to learn, and he shows the difficult situation she faces with her sick brother and school fees.
- **Method:** Look at the words used: "heart sank", "took a deep breath", "bargain was sealed" — these create sympathy and respect.

**Common mistakes students make:**

- Answering from memory or general knowledge instead of the passage.
- Quoting the whole passage instead of selecting the relevant sentence.
- Forgetting to answer "as used in the passage" for vocabulary questions.

**Exam technique:** In the real exam, you will not have time to write full answers to every question in draft. Write your answers directly on the answer booklet, but think for 30 seconds before you write. A well-planned 2-mark answer takes 1 minute to write. A rushed 2-mark answer often earns 0.

---

## Practice Questions — Unit 1

1. Read the following passage and answer the questions that follow.

*"The construction of the new bridge over the River Wouri has brought both hope and anxiety to the people of Douala. Traders who once lost goods to the ferry delays now speak of faster journeys to the port. Yet the residents of the neighbourhoods near the bridge complain of dust, noise, and the constant rumble of heavy lorries. ''Progress is good,'' said one old woman, ''but who will pay for my broken windows?''"*

(a) What did the traders gain from the new bridge? (2 marks)
(b) Give two complaints of the residents. (2 marks)
(c) What does the old woman''s question suggest about her attitude to progress? (2 marks)
(d) Explain the meaning of the word "rumble" as used in the passage. (2 marks)
(e) In your own words, explain what the writer means by "both hope and anxiety". (2 marks)

2. Read the following passage and answer the questions that follow.

*"The boy had never seen the sea. When he first arrived in Limbe, he stood at the top of the road, staring. The water stretched to the edge of the world, green and grey and silver, and the waves came in with a sound like a giant breathing. He had imagined the sea from his geography book — a flat blue line on a map. The real sea was nothing like that. It was alive, and it was enormous, and it made him feel very small."*

(a) Where had the boy first learned about the sea? (1 mark)
(b) Quote the phrase that shows the sea seemed alive. (1 mark)
(c) What does the writer mean by "it made him feel very small"? (2 marks)
(d) What is the tone of this passage? (2 marks)

3. Read the following passage and answer the questions that follow.

*"The strike at the school began over a simple thing: the quality of the rice in the dining hall. But by the third day, it had become a protest against everything — the broken dormitory windows, the missing library books, the latrines that had not been cleaned since the beginning of term. The principal called a meeting. ''You are throwing away your education,'' he told the students. ''No,'' replied the head girl, ''we are trying to save it.''"*

(a) What was the original cause of the strike? (1 mark)
(b) Give two other grievances mentioned in the passage. (2 marks)
(c) Explain the head girl''s reply: "we are trying to save it." (3 marks)
(d) What is the writer''s attitude to the students? (2 marks)

4. Read the following passage and answer the questions that follow.

*"The harmattan morning was cold and grey. The dust hung in the air like a thin brown veil, turning the sun into a pale coin. On the road to Maroua, the old man walked with a stick, though he did not need it. He walked slowly, not because he was weak, but because he wanted to remember everything — the acacia trees, the red earth, the sound of goats in the distance. He was leaving his village for the last time."*

(a) What time of day is it, and how do you know? (2 marks)
(b) Why did the old man walk slowly? (2 marks)
(c) What does the phrase "the sun into a pale coin" suggest about the harmattan sun? (2 marks)
(d) What is the writer''s attitude to the old man? (2 marks)

5. Read the following passage and answer the questions that follow.

*"The mobile telephone has changed the way farmers in the North West Region sell their crops. Before, a farmer had to carry his cocoa to the buying post and accept whatever price was offered. Today, he sends a text message to his brother in Bamenda, who checks the price in three different markets. ''Last year,'' said one farmer, ''I sold my cocoa for two thousand francs more than the buyers wanted to give me. That is my children''s school fees.''"*

(a) What did farmers have to do before the arrival of mobile telephones? (2 marks)
(b) How does the farmer in the passage use his brother? (2 marks)
(c) What does the farmer''s comment show about the value of the mobile telephone? (2 marks)
(d) Explain the meaning of the word "accept" as used in the passage. (1 mark)

6. Read the following passage and answer the questions that follow.

*"The examination hall was silent except for the scratching of pens and the occasional cough. At the back, a boy in a green shirt was sweating despite the ceiling fans. He had revised for six weeks, but now, staring at the paper, his mind was a blank page. He closed his eyes. He took a deep breath. He began to write. The first answer came slowly, then the rest followed like water from a broken dam."*

(a) What does the phrase "his mind was a blank page" mean? (2 marks)
(b) Why was the boy sweating? (2 marks)
(c) What does the final sentence suggest about the boy''s experience? (2 marks)
(d) What is the mood of this passage? (2 marks)

### Answers

1. (a) The traders gained faster journeys to the port and no longer lost goods to ferry delays. (2 marks — two points: faster journeys, no lost goods)
(b) The residents complained of dust, noise, and the constant rumble of heavy lorries. (2 marks — any two of these)
(c) The old woman''s question shows she is doubtful and cautious about progress. She accepts that the bridge is good, but she worries about the cost to ordinary people. (2 marks — attitude: doubtful/cautious; reason: worried about cost)
(d) "Rumble" means a low, continuous, rolling sound, like the noise of heavy vehicles passing. (2 marks — meaning + context)
(e) The writer means that the bridge has brought benefits (faster travel, better trade) but also problems (noise, dust, damage). (2 marks — one point for hope, one for anxiety)

2. (a) He had learned about the sea from his geography book. (1 mark)
(b) "It was alive" OR "the waves came in with a sound like a giant breathing." (1 mark — either phrase)
(c) The writer means that the boy felt insignificant and overwhelmed by the size and power of the sea compared to his own smallness. (2 marks — explanation of "small" as insignificant + reference to the sea''s size)
(d) The tone is one of wonder and awe. The boy is amazed and humbled by the sea. (2 marks — tone + evidence)

3. (a) The original cause was the quality of the rice in the dining hall. (1 mark)
(b) Any two of: broken dormitory windows, missing library books, uncleaned latrines. (2 marks)
(c) The head girl means that the students are not trying to destroy their education but to improve it. They are protesting because they care about their school and want better conditions for learning. (3 marks — three developed points: not destroying, improving conditions, caring about education)
(d) The writer is sympathetic to the students. He presents their complaints as reasonable and the head girl''s reply as intelligent and justified. (2 marks — attitude + evidence)

4. (a) It is morning. The passage says "the harmattan morning was cold and grey." (2 marks — time + evidence)
(b) He walked slowly because he wanted to remember everything about his village. He was leaving for the last time. (2 marks — reason + context)
(c) The phrase suggests the sun was dim and weak, hidden behind the harmattan dust, like a coin that has lost its shine. (2 marks — explanation of the comparison)
(d) The writer is sympathetic and respectful. The old man is leaving his home, and the writer describes his actions with dignity. (2 marks — attitude + evidence)

5. (a) They had to carry their cocoa to the buying post and accept whatever price was offered. (2 marks — two points: carrying to the post, accepting the price)
(b) He sends a text message to his brother, who checks the price in three different markets for him. (2 marks)
(c) The farmer''s comment shows that the mobile telephone has real financial value — it helped him earn 2,000 FCFA more, which paid for his children''s school fees. (2 marks — financial value + specific evidence)
(d) "Accept" means to take what is given without protest. (1 mark)

6. (a) It means his mind was completely empty; he could not remember anything he had revised. (2 marks)
(b) He was sweating because he was anxious and panicking, not because of the heat — the fans were working. (2 marks — anxiety + contrast with fans)
(c) The final sentence suggests that once he started writing, the answers came easily and in great quantity, like water bursting from a dam. (2 marks — explanation of the simile)
(d) The mood is tense and anxious at the beginning, then relieved and hopeful at the end. (2 marks — both parts)

---

## Unit 2: Summary Writing

### Lesson 2.1: The method

The summary question asks you to condense a passage (usually "in not more than 100 words") answering a specific question, e.g. *"Summarise the causes of rural exodus mentioned in the passage."* The question always tells you what to look for. Your job is to select only the points that answer that question and to express them in your own words.

**The five-step method:**

1. **Read the question first** — it defines what counts as relevant. If the question asks for "causes", do not include effects. If it asks for "effects", do not include causes.
2. **Underline every sentence that answers the question.** Use a pencil. If a sentence contains both relevant and irrelevant information, underline only the relevant part.
3. **Cross out examples, repetitions, quotations, and statistics** — they are not needed. If the passage gives three examples of a point, keep the point and drop the examples.
4. **Combine the underlined points into one or two paragraphs in your own words.** Use your own sentence structures, not the passage''s. Change the vocabulary where possible.
5. **Count your words.** Over-length answers lose marks. If the limit is 100 words, aim for 90–100.

**Worked example (full GCE style):**

*Passage:*

*"Every year, thousands of young people leave the villages of the North West Region and travel to Douala, Yaoundé, or Buea. The reasons are not hard to find. In the villages, there are no secondary schools beyond Form Three, so a child who wants to sit the GCE must move to a town. There are no hospitals, and the nearest health centre is a two-hour walk away. The land, once fertile, has been over-farmed, and the young people see no future in scratching a living from a plot that cannot feed a family. In the towns, they hope to find jobs, or at least to continue their education. They also follow their friends, who have already left and who write letters full of the excitement of city life. The villages grow older and poorer, and the cycle continues."*

*Question: In not more than 100 words, summarise the reasons why young people leave the villages, as stated in the passage. (10 marks)*

**Step 1 — Identify the relevant points (reasons for leaving):**

1. No secondary schools beyond Form Three (need to continue education)
2. No hospitals (poor healthcare)
3. Land over-farmed / unproductive (no future in farming)
4. Hope of finding jobs in towns
5. To continue their education
6. Friends have already left and write exciting letters (attraction of city life)

**Step 2 — Write the summary in your own words:**

*"Young people abandon the villages for several reasons. Educational opportunities are limited, as secondary schools stop at Form Three, forcing ambitious students to move to towns. Healthcare is equally poor, with the nearest hospital far away. The land has been over-cultivated and can no longer support a family, so farming offers no future. In the towns, they hope');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-phys-ordinary', 'Physics', 'Complete O-Level Physics Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Physics Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Physics (subject code 0580). Physics rewards method: define terms precisely, quote formulas, substitute with units, and check whether the answer is sensible. Every unit below ends with the exam technique the marking scheme rewards.

## Unit 1: Measurement

### Lesson 1.1: Physical quantities and units

Base quantities: length (metre), mass (kilogram), time (second), temperature (kelvin/°C), current (ampere). Derived quantities combine them: speed = m/s, force = newton = kg·m/s², density = kg/m³.

Prefixes: k = 10³, M = 10⁶, m = 10⁻³, μ = 10⁻⁶. Convert carefully: 250 mA = 0.25 A; 3.5 km = 3500 m.

### Lesson 1.2: Measuring instruments

Length: ruler, vernier calipers (0.01 cm), micrometer screw gauge (0.001 cm). Mass: beam balance. Time: stopwatch. Volume: measuring cylinder (read at the bottom of the meniscus, eye level). Density: mass ÷ volume; a stone of mass 54 g displacing 20 cm³ of water has density 2.7 g/cm³.

**Exam technique:** Practical questions ask you to state precautions: avoid parallax error by viewing perpendicular to the scale; repeat readings and average.

## Unit 2: Mechanics

### Lesson 2.1: Kinematics

Speed = distance/time; velocity is speed in a stated direction; acceleration = change in velocity ÷ time. Distance–time graphs: gradient = speed. Velocity–time graphs: gradient = acceleration, area under graph = distance.

**Worked example:** A car accelerates from 10 m/s to 30 m/s in 5 s. a = (30 − 10)/5 = **4 m/s²**. Distance = area of the trapezium = ½(10 + 30) × 5 = 100 m.

### Lesson 2.2: Newton''s laws

First law: a body stays at rest or in uniform motion unless a resultant force acts. Second law: F = ma. Third law: action and reaction are equal and opposite, acting on different bodies. Weight W = mg (g = 10 m/s² or 9.8 m/s² — state which you use).

### Lesson 2.3: Forces in action

Friction opposes relative motion; it is useful (walking, brakes) and wasteful (wear, energy loss) — reduced by lubrication, streamlining, rollers. Terminal velocity: as a falling object speeds up, air drag grows until drag = weight, then it falls at constant velocity. Hooke''s law: F = kx up to the limit of proportionality.

### Lesson 2.4: Momentum and pressure

Momentum = mass × velocity; in a collision, total momentum is conserved. Pressure = force ÷ area (Pa); a knife cuts because a small area gives high pressure. Liquid pressure = ρgh and acts in all directions. Atmospheric pressure ≈ 101 kPa demonstrated by a barometer; siphons and syringes rely on it.

## Unit 3: Thermal Physics

Temperature measures the degree of hotness; heat is energy transferred because of a temperature difference. Thermometers use expansion (mercury/alcohol) or electrical resistance.

Heat transfer: conduction (particles pass vibrations along — metals conduct best), convection (hot fluid rises, creating a current), radiation (infrared waves, needs no medium, black surfaces absorb best). Vacuum flasks defeat all three.

Specific heat capacity: c = Q/(mΔθ). Heating 2 kg of water by 30 °C with c = 4200 J/kg°C needs Q = 2 × 4200 × 30 = **252,000 J**. Latent heat: energy absorbed/released during a change of state with no temperature change — sweating cools the body for this reason.

## Unit 4: Waves

### Lesson 4.1: General wave properties

Waves transfer energy without transferring matter. Transverse waves (water, light) vibrate perpendicular to travel; longitudinal waves (sound) vibrate along it. v = fλ. Reflection, refraction (bending due to speed change) and diffraction (spreading through gaps) apply to all waves.

### Lesson 4.2: Light

Laws of reflection: angle of incidence = angle of reflection. Refraction: light bends towards the normal entering a denser medium (glass) because it slows. A prism splits white light into the spectrum (red bends least, violet most). Lenses: converging lenses form real inverted images of distant objects; the eye focuses by changing lens shape. Total internal reflection occurs beyond the critical angle — this carries signals along optical fibres.

### Lesson 4.3: Sound

Sound needs a medium (it cannot travel through vacuum); speed ≈ 340 m/s in air, faster in solids. Frequency = pitch, amplitude = loudness. Echoes: distance = (speed × time)/2. Ultrasound (>20,000 Hz) is used in sonar and medical scans.

## Unit 5: Electricity and Magnetism

### Lesson 5.1: Static electricity and circuits

Charges: like charges repel. Current I = charge/time (ampere = coulomb per second). Voltage is the energy per unit charge. Resistance R = V/I (ohm). Ohm''s law: for a metallic conductor at constant temperature, V ∝ I.

Series circuit: same current everywhere, voltages add, R_total = R₁ + R₂. Parallel: same voltage, currents add, 1/R_total = 1/R₁ + 1/R₂.

**Worked example:** Two 6 Ω resistors in parallel: 1/R = 1/6 + 1/6 = 1/3 → R = **2 Ω**. With 12 V across them, total current = 12/2 = 6 A.

### Lesson 5.2: Electrical energy and power

P = VI = I²R = V²/R. Energy = P × t (kWh for domestic bills: 1 kWh = 3.6 MJ). A 60 W bulb on for 5 h uses 0.3 kWh. Fuses protect circuits: choose a fuse rated slightly above the normal current, I = P/V.

### Lesson 5.3: Magnetism and electromagnetism

Magnetic materials: iron, steel, cobalt, nickel. Like poles repel. Electromagnets (coil + core + current) are temporary magnets used in relays, electric bells and scrapyard cranes; strength grows with more turns, more current, or a soft-iron core. The motor effect: a current-carrying wire in a magnetic field experiences a force (Fleming''s left-hand rule) — the principle of electric motors. Electromagnetic induction: moving a magnet into a coil induces a current (Fleming''s right-hand rule) — generators and transformers. Transformers change voltage: Vs/Vp = Ns/Np; step-up at power stations reduces energy loss in transmission.

## Unit 6: Introductory Modern Physics

Radioactivity: unstable nuclei emit alpha (helium nucleus, stopped by paper), beta (fast electron, stopped by aluminium) or gamma (wave, reduced by lead). Half-life is the time for half the nuclei to decay — after 2 half-lives, ¼ remains. Uses: medical tracers, carbon dating, cancer treatment. Hazards: ionising radiation damages cells — handled with tongs, stored in lead.

## Practice Paper (GCE style)

1. Convert 0.85 A to mA. (1)
2. A stone of mass 0.4 kg falls freely for 3 s. Find its velocity and the distance fallen (g = 10 m/s²). (4)
3. State Newton''s third law and give one example. (3)
4. A force of 250 N acts on an area of 0.05 m². Calculate the pressure. (2)
5. Explain why a metal spoon in hot tea feels hot but a plastic one does not. (3)
6. A wave has frequency 50 Hz and wavelength 6.8 m. Find its speed. (2)
7. Draw a ray diagram for an object beyond 2F of a converging lens. (4)
8. Three resistors of 4 Ω, 6 Ω and 12 Ω are in parallel. Find the total resistance. (4)
9. A 2 kW electric iron runs 30 min daily. Calculate the energy in kWh for 30 days. (3)
10. A radioactive isotope has a half-life of 8 days. What fraction remains after 32 days? (3)

**Answers:** 1) 850 mA 2) 30 m/s, 45 m 4) 5000 Pa 6) 340 m/s 8) 2 Ω 9) 30 kWh 10) 1/16

## Final exam strategy

- Paper 1 (MCQ): watch for "which is NOT" questions; underline the key word.
- Paper 2: define every technical term exactly as taught (e.g. "acceleration is the rate of change of velocity"). Quote the formula, substitute, and give units in the answer.
- Paper 3 (practical/alternative): learn the standard experiments — pendulum (g), Ohm''s law, focal length of a lens, cooling curves. State precautions and sources of error.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-chem-ordinary', 'Chemistry', 'Complete O-Level Chemistry Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Chemistry Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Chemistry (subject code 0515). Chemistry marks come from three habits: writing balanced equations, showing working in mole calculations, and using correct chemical language (formulae, states, conditions). Master the mole early — every later unit depends on it.

## Unit 1: Atomic Structure and the Periodic Table

### Lesson 1.1: The atom

An atom has a nucleus (protons +, neutrons 0) with electrons (−) in shells. Atomic number Z = protons; mass number A = protons + neutrons. Isotopes have the same Z but different A (e.g. carbon-12 and carbon-14). Electrons fill shells 2, 8, 8 — sodium (11 electrons) is 2,8,1.

### Lesson 1.2: The periodic table

Elements are arranged by increasing atomic number. Groups (columns) share outer-shell electrons, so they react similarly: Group I alkali metals (very reactive, form +1 ions), Group VII halogens (form −1 ions), Group VIII noble gases (unreactive — full shells). Periods (rows) show a trend from metallic to non-metallic character. Reactivity in Group I increases down the group; in Group VII it decreases.

## Unit 2: Bonding and Structure

### Lesson 2.1: Ionic bonding

Metals lose electrons, non-metals gain them: Na (2,8,1) gives one electron to Cl (2,8,7) → Na⁺ and Cl⁻ → NaCl. Ionic compounds: high melting points, conduct when molten or dissolved, usually soluble in water. Write dot-and-cross diagrams in the exam — they carry easy marks.

### Lesson 2.2: Covalent bonding

Non-metals share electrons: H₂O, CH₄, O₂. Simple molecular substances: low melting/boiling points, do not conduct. Giant covalent structures: diamond (hardest natural substance) and graphite (conducts, slippery — uses in pencils and electrodes) — both pure carbon, different structures, different properties.

### Lesson 2.3: Metallic bonding

A lattice of positive ions in a sea of delocalised electrons: explains conduction, malleability and high melting points of metals. Alloys (steel, brass) mix atoms of different sizes, making the lattice harder to slide — alloys are stronger than pure metals.

## Unit 3: Stoichiometry — the Mole

### Lesson 3.1: The mole concept

One mole = 6.02 × 10²³ particles = the Ar/Mr in grams. Mr of H₂O = 2(1) + 16 = 18, so 18 g of water is 1 mole. Moles = mass ÷ Mr. Moles of gas at RTP = volume ÷ 24 dm³. Moles of solution = concentration (mol/dm³) × volume (dm³).

**Worked example:** How many moles in 9.8 g of H₂SO₄ (Mr = 98)? n = 9.8/98 = **0.1 mol**.

### Lesson 3.2: Equations and reacting masses

Balance equations by adjusting coefficients, never subscripts: Mg + O₂ → MgO becomes 2Mg + O₂ → 2MgO.

**Worked example:** What mass of MgO forms from 4.8 g Mg (Ar Mg = 24, O = 16)?
2Mg + O₂ → 2MgO. n(Mg) = 4.8/24 = 0.2 mol. Ratio Mg:MgO = 1:1 → n(MgO) = 0.2 mol. Mass = 0.2 × 40 = **8 g**.

### Lesson 3.3: Volumetric analysis

For titration calculations: write the balanced equation, find moles of the known solution, use the mole ratio to find moles of the unknown, then concentration = moles ÷ volume. Always convert cm³ to dm³ (÷1000).

## Unit 4: Acids, Bases and Salts

Acids (HCl, H₂SO₄, HNO₃) have pH < 7, turn blue litmus red, and react with metals (→ salt + H₂), carbonates (→ salt + H₂O + CO₂) and alkalis (→ salt + water — neutralisation). Bases/alkalis (NaOH, KOH, Ca(OH)₂, NH₃ solution) have pH > 7. Strong acids ionise fully; weak acids (ethanoic) partially — same pH needs different concentrations.

Salt preparation routes: acid + metal (excess metal, filter), acid + insoluble base (warm, filter), acid + alkali (titration — no indicator left in the final salt), acid + carbonate. Solubility rules: all Na/K/NH₄ salts soluble; all nitrates soluble; chlorides except Ag/Pb; sulfates except Ba/Pb/Ca(slightly); carbonates insoluble except Na/K/NH₄.

## Unit 5: Electrolysis

Electrolysis needs a molten or dissolved ionic compound and a DC supply. Cathode (−) attracts cations; anode (+) attracts anions. In molten NaCl: Na at cathode, Cl₂ at anode. In solution, hydrogen forms at the cathode unless the metal is more reactive than hydrogen; halides give halogens at the anode except sulfates/nitrates give oxygen.

Electroplating: object at cathode, plating metal at anode. Extraction of aluminium: purified bauxite dissolved in molten cryolite (lowers melting point), Al³⁺ reduced at cathode — an enormous electricity consumer, which is why smelters sit near hydroelectric dams.

## Unit 6: Metals and Non-metals

Reactivity series: K, Na, Ca, Mg, Al, (C), Zn, Fe, (H), Cu, Ag, Au. Metals above carbon are extracted by electrolysis; below carbon by reduction with carbon/CO in a blast furnace. Iron: haematite (Fe₂O₃) + coke + limestone; slag removes impurities. Rusting needs iron + oxygen + water; prevented by painting, oiling, galvanising (zinc sacrificial protection).

Non-metals: hydrogen (burns with pop), oxygen (relights a glowing splint), CO₂ (turns limewater milky), ammonia (pungent, turns damp red litmus blue — made in the Haber process N₂ + 3H₂ ⇌ 2NH₃, high pressure, ~450 °C, iron catalyst).

## Unit 7: Organic Chemistry (Introduction)

Crude oil separates in a fractionating column: fractions from refinery gas (bottled gas) → petrol → naphtha → kerosene (jet fuel) → diesel → bitumen. Alkanes are saturated (C–C single bonds): methane CH₄, ethane C₂H₆; general formula CₙH₂ₙ₊₂. Alkenes are unsaturated (C=C): ethene C₂H₄ — decolourise bromine water (the test for unsaturation). Combustion: complete gives CO₂ + H₂O; incomplete (limited air) gives toxic CO. Polymers: ethene joins into poly(ethene) — plastic pollution and recycling matter in Cameroon''s towns.

## Practice Paper (GCE style)

1. Write the electron configuration of chlorine (Z = 17). (2)
2. Draw a dot-and-cross diagram for water. (3)
3. Calculate the Mr of CaCO₃ (Ca = 40, C = 12, O = 16). (2)
4. How many moles are in 5.6 g of KOH (Mr = 56)? (2)
5. Balance: Al + O₂ → Al₂O₃. (2)
6. 25 cm³ of 0.1 mol/dm³ NaOH neutralises 20 cm³ of HCl. Find the HCl concentration. (5)
7. State the test and result for CO₂. (2)
8. Explain why graphite conducts electricity but diamond does not. (3)
9. Name the process that separates crude oil and state the principle it uses. (3)
10. Iron rusts faster near the sea than in the desert. Explain why. (3)

**Answers:** 1) 2,8,7 3) 100 4) 0.1 mol 5) 4Al + 3O₂ → 2Al₂O₃ 6) 0.125 mol/dm³ 8) graphite has delocalised electrons between layers; diamond''s electrons are all in bonds 9) fractional distillation; fractions boil at different temperatures 10) sea air supplies both water and salt, which speeds rusting

## Final exam strategy

- Learn the solubility rules and reactivity series by heart — they answer dozens of questions.
- In mole calculations, write the three steps (equation → moles → mass) even if you cannot finish; method marks are generous.
- State symbols (s), (l), (g), (aq) earn marks in equations.
- Practical paper: learn the gas tests (H₂, O₂, CO₂, NH₃, Cl₂), flame tests, and the ion tests (AgNO₃ for chloride, BaCl₂ for sulfate).');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-bio-ordinary', 'Biology', 'Complete O-Level Biology Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Biology Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Biology (subject code 0510) and Human Biology (0565). Biology marks come from precise vocabulary and labelled diagrams. Learn the definitions word-for-word and practise drawing — every year, candidates lose easy marks on badly labelled diagrams.

## Unit 1: Cell Biology

### Lesson 1.1: Cell structure

All cells have a cell membrane (controls entry/exit), cytoplasm (where reactions occur) and nucleus (contains chromosomes/DNA, controls the cell). Plant cells add a cellulose cell wall (support), chloroplasts (photosynthesis) and a large vacuole (sap, support). Specialised cells: red blood cells (no nucleus, biconcave — carries oxygen), root hair cells (long shape — absorption), sperm cells (tail — movement).

### Lesson 1.2: Movement in and out of cells

Diffusion: particles move from high to low concentration (perfume spreading in a room; oxygen into blood). Osmosis: diffusion of water through a partially permeable membrane from a dilute to a concentrated solution. Active transport moves particles against the gradient using energy — root hairs absorb mineral ions this way.

**Exam favourite:** Explain why a plant wilts in salty soil — the soil solution is more concentrated than the cell sap, so water leaves the cells by osmosis and the cells lose turgor.

## Unit 2: Nutrition

### Lesson 2.1: Human diet

Balanced diet: carbohydrates (energy — rice, cassava, maize), proteins (growth and repair — beans, fish, meat), fats (concentrated energy — palm oil), vitamins (A — vision; C — prevents scurvy; D — prevents rickets with calcium), minerals (iron — prevents anaemia; calcium — bones/teeth; iodine — prevents goitre), fibre (prevents constipation), water. Malnutrition in Cameroon: kwashiorkor (protein deficiency — swollen belly), marasmus (energy deficiency), anaemia (iron).

### Lesson 2.2: Digestion

Alimentary canal: mouth (amylase starts starch), oesophagus (peristalsis), stomach (HCl kills germs; pepsin digests protein), small intestine (bile emulsifies fat; enzymes finish digestion; villi absorb), large intestine (water absorption), rectum (faeces stored).

Enzymes: amylase → maltose; maltase → glucose; pepsin/trypsin → amino acids; lipase → fatty acids + glycerol. Enzymes are proteins, speed up reactions, are specific, work best near body temperature, and are denatured by heat.

## Unit 3: Transport in Plants and Animals

### Lesson 3.1: Plant transport

Xylem carries water and minerals up (transpiration pull); phloem carries food both ways (translocation). Transpiration: water evaporates from leaves, pulling the column up — faster in wind, heat, low humidity; slower in darkness. Wilting occurs when loss exceeds uptake. Stomata open in light for gas exchange — a balance between photosynthesis and water loss.

### Lesson 3.2: Human circulatory system

Double circulation: right side of the heart pumps blood to the lungs (pulmonary), left side to the body (systemic). Heart: 4 chambers; valves prevent backflow. Arteries (thick, elastic, high pressure), veins (valves, low pressure), capillaries (one cell thick — exchange). Blood: plasma (transport), red cells (haemoglobin + oxygen), white cells (defence — phagocytes engulf, lymphocytes make antibodies), platelets (clotting).

**Exam favourite:** Trace a red blood cell from the lungs to the big toe: lungs → pulmonary vein → left atrium → left ventricle → aorta → arteries → capillaries → toe.

## Unit 4: Respiration

Respiration releases energy from glucose in every living cell. Aerobic: glucose + oxygen → CO₂ + water + energy (38 ATP). Anaerobic: in muscle, glucose → lactic acid + little energy (causes fatigue, oxygen debt); in yeast, glucose → ethanol + CO₂ (brewing, bread-making).

Breathing: diaphragm flattens and ribs rise → volume increases, pressure falls → air rushes in (inhalation). Exhalation reverses it. Gas exchange in alveoli: thin, moist, large surface, rich blood supply. Smoking damages cilia, causes bronchitis, emphysema and lung cancer.

## Unit 5: Excretion and Coordination

Kidneys filter blood: useful substances reabsorbed, urea + excess water/salts form urine. Nephrons are the filtering units. Skin also excretes (sweat — cooling).

Nervous system: CNS (brain + spinal cord) and nerves. Reflex arc: receptor → sensory neurone → relay neurone (spinal cord) → motor neurone → effector. Reflexes are fast, automatic, protective. The eye: cornea and lens focus light on the retina; iris controls pupil size; accommodation changes lens shape for near/far. Hormones: chemical messengers in blood — insulin (lowers blood glucose; deficiency → diabetes), adrenaline (fight or flight), thyroxine (growth/metabolism).

## Unit 6: Reproduction and Genetics

### Lesson 6.1: Reproduction

Asexual: one parent, identical offspring (binary fission in amoeba, vegetative propagation in cassava/yam stems, budding in yeast). Sexual: fusion of gametes → variation. Flower structure: sepals, petals, stamens (anther + filament — male), carpel (stigma, style, ovary — female). Pollination: self/cross; insect-pollinated flowers are colourful and scented; wind-pollinated are small with light pollen. Fertilisation: pollen tube grows down the style; ovule → seed, ovary → fruit.

Human: puberty (testosterone/oestrogen), menstrual cycle (~28 days, ovulation ~day 14), fertilisation in the oviduct, implantation in the uterus, placenta exchanges nutrients/oxygen/waste between mother and foetus. Family planning methods and STI prevention (HIV/AIDS) are examinable — know abstinence, condoms, and that HIV is transmitted by blood, sex, and mother-to-child, NOT by casual contact.

### Lesson 6.2: Genetics

Chromosomes come in pairs; genes are sections of DNA coding for proteins. Alleles: dominant (capital, e.g. T) vs recessive (t). Genotype vs phenotype. Monohybrid cross: Tt × Tt → 1 TT : 2 Tt : 1 tt (3 tall : 1 short). Test cross reveals an unknown genotype. Sex determination: XX female, XY male — the father determines sex. In Cameroon, sickle cell (HbS) and haemoglobin C are common genetics examples: carriers (AS) are healthy; SS causes disease.

## Unit 7: Ecology

Habitat, population, community, ecosystem. Food chains: producer (green plant) → primary consumer → secondary consumer → decomposers recycle nutrients. Only ~10% of energy passes each level — short chains are more efficient. Pyramids of numbers/biomass. Nutrient cycles: carbon (photosynthesis, respiration, combustion, decomposition) and water (evaporation, condensation, precipitation). Cameroon examples: the Waza reserve ecosystem, deforestation in the Congo Basin, soil erosion after slash-and-burn.

## Practice Paper (GCE style)

1. State two differences between plant and animal cells. (2)
2. Define osmosis. (2)
3. Explain why red blood cells have no nucleus. (2)
4. Name the enzyme that digests starch and state where it is produced. (2)
5. Describe how the diaphragm causes inhalation. (3)
6. Draw and label a reflex arc. (5)
7. In a cross between Tt and tt plants, give the genotypes and phenotypes of the offspring. (5)
8. Explain why food chains rarely exceed four levels. (3)
9. State two ways HIV is NOT transmitted. (2)
10. A farmer''s maize yields fall each year on the same plot. Suggest two biological reasons and one remedy. (4)

## Final exam strategy

- Paper 1 (MCQ): biology MCQs often test definitions — learn them exactly.
- Paper 2: use biological vocabulary (e.g. "transpiration pull", "deoxyhaemoglobin") — vague answers score zero even when the idea is right.
- Diagrams: draw with a sharp pencil, label with straight lines to the right, add a caption/title. Never trace.
- Practical paper: learn the standard tests — starch (iodine, blue-black), glucose (Benedict''s, brick-red on heating), protein (biuret, violet), fats (ethanol, emulsion), CO₂ (limewater, milky), and microscope work (draw what you see, low power first).');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-econ-ordinary', 'Economics', 'Complete O-Level Economics Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Economics Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Economics (subject code 0525). Economics answers one question everywhere: how do people and societies use scarce resources? Use Cameroonian examples in your answers — examiners reward local application (the Douala port, SODECAO cocoa, MTN/Orange competition).

## Unit 1: Basic Economic Concepts

### Lesson 1.1: Scarcity, choice and opportunity cost

Resources (land, labour, capital, enterprise) are scarce; wants are unlimited. Scarcity forces choice, and every choice has an opportunity cost — the next best alternative given up. A student who spends 50,000 FCFA on a phone gives up a laptop fund: the laptop is the opportunity cost.

Factors of production and their rewards: land → rent, labour → wages, capital → interest, enterprise → profit.

### Lesson 1.2: Economic systems

Free market economy: prices decide everything (little government role). Command/planned economy: the state decides production. Mixed economy: both — Cameroon is mixed (state owns Camwater, SNH; private firms run telecoms, retail). Advantages/disadvantages of each are standard 4-mark questions.

## Unit 2: Demand and Supply

### Lesson 2.1: Demand

Demand: the quantity consumers are willing AND able to buy at each price over a period. Law of demand: price up → quantity demanded down (the demand curve slopes downward).

Movements vs shifts: a price change moves you ALONG the curve; other factors SHIFT the curve — income (normal goods rise with income; inferior goods fall), prices of substitutes (beef vs chicken) and complements (cars and fuel), tastes, population, expectations.

### Lesson 2.2: Supply

Supply: quantity producers are willing to sell at each price. Law of supply: price up → quantity supplied up. Shift factors: costs of production, technology, taxes/subsidies, weather (cocoa and coffee harvests), number of firms.

### Lesson 2.3: Market equilibrium

Equilibrium: demand = supply; price settles where the curves cross. Surplus (price above equilibrium) pushes price down; shortage (price below) pushes it up. Draw the diagram — every equilibrium question expects a labelled sketch with axes (Price, Quantity), curves (D, S) and the equilibrium point (E).

**Worked example:** A fuel price rise shifts the supply curve of transport left → higher fares, fewer trips. Draw both curves and show the new equilibrium.

## Unit 3: Elasticity

Price elasticity of demand (PED) = %ΔQ demanded ÷ %ΔP. Elastic (>1): luxuries, goods with substitutes — a price rise cuts revenue. Inelastic (<1): necessities, no substitutes (salt, fuel) — a price rise raises revenue. Determinants: substitutes, necessity, proportion of income, time. PED explains why government taxes fuel and cigarettes (inelastic — revenue is stable) and why farmers'' bumper harvests can LOWER their income (food is inelastic, so prices crash).

## Unit 4: Production

### Lesson 4.1: Types and levels of production

Primary (extraction — farming, mining, fishing), secondary (manufacturing — brewing, textiles), tertiary (services — banking, transport, teaching). Cameroon''s economy is primary-heavy; developed economies are tertiary-heavy.

Division of labour and specialisation raise productivity but cause monotony and interdependence. Productivity = output per worker; raised by training, technology, and capital.

### Lesson 4.2: Costs and revenue

Fixed costs (rent) do not vary with output; variable costs (materials) do. Total cost = fixed + variable. Average cost = total ÷ output. Revenue = price × quantity. Profit = revenue − total cost. Economies of scale: bulk buying, specialised machines, marketing spread over more units — large firms produce cheaper than small ones.

## Unit 5: Money and Financial Institutions

Functions of money: medium of exchange, unit of account, store of value, standard of deferred payment. Barter''s problems: double coincidence of wants, indivisibility. Characteristics of good money: acceptable, durable, portable, divisible, scarce.

Banking: commercial banks accept deposits, lend, and provide payment services; the central bank (BEAC for the CFA franc zone) issues currency, controls money supply, acts as banker to government and banks, and manages the pegged CFA franc. Credit creation: banks lend most of deposits, multiplying money.

## Unit 6: Trade

Home trade (wholesalers, retailers) and international trade. Imports/exports; visible (goods) vs invisible (services) trade. Balance of trade = exports − imports of goods; balance of payments includes services and capital flows. Cameroon exports cocoa, coffee, bananas, timber, cotton, crude oil; imports machinery, fuel products, food, manufactured goods.

Advantages of international trade: variety, larger markets, specialisation. Protection (tariffs, quotas): protects infant industries and jobs but raises prices and invites retaliation. Economic integration: CEMAC and the CFA franc link Cameroon to regional markets.

## Practice Paper (GCE style)

1. Define opportunity cost and give one example from a student''s life. (3)
2. Distinguish between a movement along and a shift of the demand curve, with one cause of each. (4)
3. Draw a diagram showing a shortage and explain how the market restores equilibrium. (5)
4. A 10% rise in the price of palm oil reduces quantity demanded by 4%. Calculate PED and classify the good. (3)
5. State two economies of scale enjoyed by a large brewery over a village palm-wine producer. (2)
6. List the four functions of money. (2)
7. Explain two reasons why the government taxes cigarettes heavily. (4)
8. Distinguish between balance of trade and balance of payments. (3)
9. Name two visible and two invisible exports of Cameroon. (2)
10. Explain one advantage and one disadvantage of joining a customs union like CEMAC. (4)

## Final exam strategy

- Definitions carry marks — learn them exactly (willing AND able; over a period of time).
- Always draw labelled diagrams for demand/supply questions; unlabelled axes lose marks.
- Use Cameroonian examples: cocoa prices, Douala port, MTN vs Orange, BEAC, CEMAC.
- In Paper 2, answer the exact command: "state" = one line; "explain" = reason + development; "discuss" = both sides.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-comm-ordinary', 'Commerce', 'Complete O-Level Commerce Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Commerce Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Commerce (subject code 0520). Commerce studies how goods move from producer to consumer. Answers score best when you name real institutions: Douala port, SNI, MTN MoMo, NCFA (Yaoundé trade fair).

## Unit 1: Introduction to Commerce

Production has three stages: primary (extraction), secondary (manufacturing), tertiary (services). Commerce = trade + aids to trade (banking, insurance, transport, warehousing, advertising, communication). It bridges the gap between producers and consumers: by place (transport), time (warehousing), quantity (wholesalers break bulk), and information (advertising).

## Unit 2: Trade — Home and International

### Lesson 2.1: Home trade

Retailers sell to consumers: small-scale (hawkers, market stalls, kiosks — common in Cameroon''s markets), large-scale (department stores, supermarkets, chain stores, mail order, online). Wholesalers buy in bulk from producers and sell in smaller quantities to retailers, providing storage, transport, credit and market information.

**Exam favourite:** Give four services of a wholesaler to a retailer: breaking bulk, storage, credit, transport/delivery, information on new products.

### Lesson 2.2: International trade

Import/export; visible vs invisible trade. Documents: indent (order through an agent), bill of lading (title to goods shipped), invoice, certificate of origin, letter of credit. Terms: FOB (free on board), CIF (cost, insurance, freight). Cameroon''s main exports: cocoa, coffee, bananas, timber, cotton, crude oil; imports: machinery, refined fuel, wheat, drugs.

## Unit 3: Business Units

### Lesson 3.1: Forms of ownership

Sole trader: one owner, unlimited liability, quick decisions, keeps all profit, limited capital. Partnership: 2–20 partners, more capital and skills, but unlimited liability (except limited partners) and risk of disagreement. Private limited company: shares sold privately, limited liability, separate legal entity. Public limited company: shares sold to the public on a stock exchange, huge capital, but regulated and can lose control. Co-operatives: members pool resources (producer co-ops are common in Cameroon''s cocoa/coffee zones); profits shared as dividends. Public corporations: state-owned (Camwater, SNH, CDC) — serve the public but can be inefficient.

### Lesson 3.2: Choosing a form

Compare on: capital needed, liability, control, continuity, taxation, formation cost. A market trader suits sole trader; a brewery needs a public company.

## Unit 4: Aids to Trade

### Lesson 4.1: Transport and warehousing

Transport modes: road (door-to-door, flexible — Cameroon''s main mode), rail (bulk, cheap over distance — the Douala–Yaoundé line), water (cheapest for bulk — Douala, Kribi, Limbe ports), air (fastest, most expensive — flowers and urgent goods), pipeline (oil). Choice depends on cost, speed, nature of goods, distance. Warehousing stores goods until needed: bonded warehouses hold imported goods until duty is paid.

### Lesson 4.2: Insurance

Insurance spreads risk: many pay premiums, few receive compensation. Principles: insurable interest, indemnity (restore, not enrich), contribution, subrogation, good faith, pooling. Life assurance is not indemnity (a life has no price). Insurable: fire, theft, motor, marine. Not insurable: business losses from bad management, gambling losses.

### Lesson 4.3: Banking and payment

Commercial banks: current accounts (cheques), savings accounts (interest), fixed deposits, loans, overdrafts, transfers. Mobile money (MTN MoMo, Orange Money) transformed Cameroonian trade — instant payment without bank branches. Central bank (BEAC): issues the CFA franc, regulates banks, keeps price stability.

### Lesson 4.4: Advertising and communication

Advertising informs and persuades: media (radio — widest reach in Cameroon, TV, newspapers, billboards, social media). Types: informative, persuasive, competitive. Advantages: larger sales, brand awareness; disadvantages: cost, can mislead. Communication: post, telephone, internet, e-commerce.

## Unit 5: Business Documents and Consumer Protection

Document flow in a sale: enquiry → quotation → order (proforma invoice) → delivery note → invoice → statement → receipt → credit note (returns) → debit note (undercharge). Learn the order and the purpose of each — a guaranteed exam question.

Consumer protection: rights (safety, information, choice, redress) and responsibilities. Protection comes from law (consumer protection legislation), standards bodies (ANOR — Agency for Norms and Quality), consumer associations, and the press. Fraud and adulteration harm consumers; check expiry dates and receipts.

## Practice Paper (GCE style)

1. Define commerce and name four aids to trade. (3)
2. State four services a wholesaler provides to a retailer. (4)
3. Distinguish between a bill of lading and a certificate of origin. (3)
4. Give two advantages and two disadvantages of a sole trader. (4)
5. A cocoa farmer co-operative in the Centre Region: state two benefits members get. (2)
6. Why does a Kribi exporter ship timber by sea rather than air? (2)
7. Explain the principle of indemnity with an example. (3)
8. Arrange in order: invoice, order, quotation, delivery note, receipt. (3)
9. State two rights of a consumer. (2)
10. Explain two effects of mobile money on small traders in Cameroon. (4)

## Final exam strategy

- Learn document sequences and definitions exactly — Commerce rewards precise, short answers.
- Use Cameroonian institutions and examples in every "explain" answer.
- In Paper 2, structured questions follow the syllabus order — if you know the unit, you know the answer''s shape.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-cs-ordinary', 'Computer Science', 'Complete O-Level Computer Science Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Computer Science Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Computer Science (subject code 0595) and supports ICT (0596). Computer Science rewards precision: exact definitions, correct terminology, and careful algorithm tracing. The practical paper tests word processing, spreadsheets, databases and simple programming.

## Unit 1: Computer Systems

### Lesson 1.1: Hardware and software

Hardware = physical parts; software = programs. A computer system: input devices (keyboard, mouse, scanner, sensors, microphone), CPU (control unit, ALU, registers — fetch-decode-execute cycle), main memory (RAM volatile, ROM permanent), storage (HDD, SSD, flash, optical), output devices (monitor, printer, speakers, actuators).

### Lesson 1.2: Data representation

Binary: computers store everything in 0s and 1s. Units: 8 bits = 1 byte; 1024 bytes = 1 KB; 1024 KB = 1 MB. Convert denary to binary by repeated division by 2 (13 = 1101). Hexadecimal (base 16) shortens binary: 1101 = D; used for colours (#FF0000 = red) and memory addresses.

Characters: ASCII (7/8 bits — English letters, digits, symbols); Unicode covers all languages including accented French characters. Images: bitmaps store pixels; more bits per pixel = more colours = bigger file. Sound: sampled at a frequency (Hz); higher sample rate = better quality = bigger file.

### Lesson 1.3: Logic gates

AND (output 1 only if both inputs are 1), OR (output 1 if any input is 1), NOT (inverts). Truth tables list every input combination. Half-adders combine XOR and AND to add two bits. Expect a truth-table question every year.

## Unit 2: Programming and Algorithms

### Lesson 2.1: Algorithms

An algorithm is a step-by-step solution. Represent with flowcharts (oval = start/stop, parallelogram = input/output, rectangle = process, diamond = decision) or pseudocode. Trace tables track variable values line by line — practise these; they are guaranteed marks.

### Lesson 2.2: Programming basics

Variables (named storage), data types (integer, real, string, Boolean, character), assignment, input/output. Selection: IF…THEN…ELSE. Iteration: FOR (count-controlled) and WHILE (condition-controlled) loops. Arrays store lists of values of one type indexed from 0.

**Worked example (pseudocode):** Find the largest of 10 numbers:
SET largest TO first number
FOR i FROM 2 TO 10
IF number[i] > largest THEN SET largest TO number[i]
OUTPUT largest

### Lesson 2.3: Program testing and errors

Syntax errors (break grammar rules — program will not run), logic errors (run but give wrong answers), runtime errors (crash — e.g. divide by zero). Testing: normal data, extreme/boundary data, erroneous data (enter "abc" where a number is expected).

## Unit 3: Databases

A database stores organised data. Tables (files) contain records (rows) made of fields (columns). Primary key uniquely identifies a record (student ID); foreign key links tables. Validation: type check, range check, length check, presence check. Queries filter records (SELECT…WHERE); reports present formatted output. Sorting arranges records (ascending/descending). In the practical, know how to create a table, set a primary key, run a query with criteria, and produce a report.

## Unit 4: Networks and the Internet

### Lesson 4.1: Network types

LAN (one site — a school lab), WAN (across sites/countries — the internet). Topologies: bus, star (most common — central switch; one cable failure affects one machine), ring, mesh. Devices: router (connects networks), switch (connects devices within a LAN), modem, access point. Wired vs wireless: speed/reliability vs mobility.

### Lesson 4.2: The internet and its services

The internet is a global network of networks; the WWW is a service on it (web pages via HTTP/HTTPS). IP addresses identify devices; DNS translates names (studyspark.cm) to IP addresses. Services: email, web, file transfer, streaming, VoIP. Dangers: malware (viruses, phishing), cyberbullying, identity theft. Protection: strong passwords, antivirus, firewalls, backups, HTTPS, not clicking unknown links.

## Unit 5: Data Security and Ethics

Backup: keep copies (3-2-1 rule: 3 copies, 2 media, 1 offsite). Encryption scrambles data so only key-holders read it. Passwords: long, mixed characters, unique per site. Ethics: software piracy (illegal copying), plagiarism, digital divide (urban vs rural access — a real Cameroonian issue), e-waste. Data protection: personal data must be collected fairly, kept accurate, and used only for its stated purpose.

## Unit 6: Spreadsheets and Word Processing (Practical)

Spreadsheets: cells, rows, columns; formulas start with = (SUM, AVERAGE, MAX, MIN, IF, COUNT); absolute references ($A$1) vs relative; charts (bar for comparison, line for trends, pie for shares). Word processing: formatting, headers/footers, page numbers, mail merge (one letter, many recipients), tables, spell-check. Practical exams are won by following instructions exactly and saving with the required filename.

## Practice Paper (GCE style)

1. Convert 45 to binary and to hexadecimal. (3)
2. State the difference between RAM and ROM. (2)
3. Draw the truth table for the AND gate with two inputs. (3)
4. Write pseudocode to output the average of five entered numbers. (4)
5. Complete a trace table for: x=1; WHILE x<5: OUTPUT x; x=x+2. (3)
6. Define primary key and give one example. (2)
7. State two differences between a LAN and a WAN. (2)
8. Explain two ways a school can protect student data. (4)
9. Give the formula to total cells B2 to B20 in a spreadsheet. (1)
10. State two differences between syntax and logic errors. (2)

## Final exam strategy

- Learn definitions exactly: "algorithm", "primary key", "encryption" — Paper 1 MCQs test them directly.
- Practise trace tables and binary/hex conversion until automatic — these are free marks.
- In the practical paper, read every instruction twice and save files with the exact names required.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-ict-ordinary', 'ICT', 'Complete O-Level ICT Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level ICT Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level ICT (subject code 0596). ICT focuses on using computer systems and applications effectively — the practical paper (word processing, spreadsheets, databases, presentations) carries decisive weight.

## Unit 1: ICT Systems

Hardware: input (keyboard, mouse, scanner, digital camera, sensors), output (monitor, printer, speakers, actuators), storage (HDD, SSD, flash, optical; primary vs secondary). Software: system (operating systems — Windows, Linux, Android; utilities) and application (word processor, spreadsheet, database, browser). Operating system functions: manage hardware, files, users, and run applications.

## Unit 2: Data and Information

Data (raw facts) vs information (processed, meaningful data). Qualities of good information: accurate, timely, relevant, complete. Data validation (type, range, length, presence checks) vs verification (double entry, visual check). Encoding data: binary, ASCII, Unicode; file sizes (bit → byte → KB → MB → GB).

## Unit 3: Office Applications (Practical Core)

### Lesson 3.1: Word processing

Documents: letters (formal layout), reports (headings, page numbers, headers/footers), tables, mail merge (master document + data source). Formatting: fonts, alignment, spacing, styles; inserting images and shapes; spell-check and thesaurus. Practical tip: follow the sample exactly — spacing and alignment carry marks.

### Lesson 3.2: Spreadsheets

Cells, formulas (=SUM, =AVERAGE, =MAX, =MIN, =IF, =COUNTIF), absolute ($) vs relative references, sorting and filtering, charts (choose the right type: bar = comparison, line = trend, pie = proportion). Modelling: change inputs, observe outputs ("what if" analysis).

### Lesson 3.3: Databases

Tables, records, fields, primary key; data types; validation rules; queries (criteria: >, <, =, AND, OR, wildcards); forms for entry; reports for output. Practical exams reward exact criteria and sorted results.

### Lesson 3.4: Presentations

Slides: consistent design, minimal text (6×6 rule), relevant images, transitions and animations used sparingly, speaker notes. Deliver: rehearse, face the audience, not the screen.

## Unit 4: Networks, Internet and Communication

LAN/WAN; the internet vs the WWW; browsers, search engines (effective search: keywords, quotes, site: operator); email (compose, attach, cc/bcc, etiquette); cloud storage (advantages: access anywhere, backup; risks: privacy, account security). Video conferencing and collaboration tools.

## Unit 5: Safety, Security and Ethics

Health and safety: ergonomic workstation (chair, screen height, breaks — eye strain, RSI), electrical safety. Data security: passwords, backups, antivirus, firewalls, encryption; threats: viruses, phishing, hacking, identity theft. Legal and ethical: software piracy, copyright, plagiarism, digital divide, e-waste, netiquette.

## Practice Paper (GCE style)

1. Distinguish data from information with one example. (2)
2. State two validation checks and when each is used. (2)
3. Write the spreadsheet formula to average cells C2 to C30. (1)
4. Explain the difference between a query and a report in a database. (3)
5. State two advantages and two risks of cloud storage. (4)
6. Describe two ergonomic measures for a computer user. (4)
7. Explain phishing and one way to avoid it. (3)
8. Outline the steps to perform a mail merge. (5)

## Final exam strategy

- The practical paper decides grades: practise each application weekly with timed tasks.
- Save files exactly as instructed — filename errors cost real marks.
- Learn the theory definitions precisely for Paper 1 MCQs.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-fr-ordinary', 'French', 'Cours complet de Français — Niveau Ordinary, GCE Cameroun', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Cours complet de Français — Niveau Ordinary, GCE Cameroun

## Comment utiliser ce cours

Ce cours couvre le français au GCE Ordinary Level (code 0545) : grammaire, conjugaison, compréhension, traduction et composition. Le français est une matière obligatoire du tronc commun. Les correcteurs sanctionnent surtout l''orthographe et l''accord — soignez-les dans chaque réponse.

## Unité 1 : Grammaire

### Leçon 1.1 : Les classes de mots

Le nom (table, école), le déterminant (le, une, ce, mon), l''adjectif qualificatif (grand, belle), le pronom (il, elle, celui-ci), le verbe (courir, être), l''adverbe (vite, très), la préposition (à, de, sur), la conjonction (et, mais, parce que). Savoir identifier la classe de chaque mot est la base des questions de grammaire.

### Leçon 1.2 : Les accords

- **Accord du nom et de l''adjectif** : en genre et en nombre. « Une maison blanche », « des maisons blanches ». Attention aux pluriels spéciaux : « un cheval / des chevaux », « un journal / des journaux ».
- **Accord du sujet et du verbe** : « Les élèves travaillent », « La fille de mon voisin chante bien » (c''est la fille qui chante, pas le voisin).
- **Accord du participe passé** : avec « être », il s''accorde avec le sujet (« Elle est partie ») ; avec « avoir », il s''accorde avec le complément d''objet direct s''il est placé avant (« Les pommes que j''ai mangées »).

### Leçon 1.3 : Les pronoms

Pronoms personnels (je, tu, il, nous, vous, ils ; me, te, le, la, les, lui, leur), pronoms relatifs (qui — sujet, que — objet, où — lieu/temps, dont — complément). Remplacement : « Je donne le livre à Marie » → « Je le lui donne ». Les questions de transformation testent ces remplacements.

## Unité 2 : Conjugaison

### Leçon 2.1 : Les temps de l''indicatif

- **Présent** : habitudes et vérités générales. Verbes du 1er groupe : -e, -es, -e, -ons, -ez, -ent. Irréguliers à connaître : être, avoir, aller, faire, venir, pouvoir, vouloir, devoir.
- **Passé composé** : action finie. Auxiliaire (avoir/être) au présent + participe passé. « J''ai mangé », « Elle est allée ».
- **Imparfait** : description et habitude dans le passé. Radical du « nous » au présent + -ais, -ais, -ait, -ions, -iez, -aient. « Nous mangions » → « je mangeais ».
- **Futur simple** : infinitif + -ai, -as, -a, -ons, -ez, -ont. Irréguliers : être → ser-, avoir → aur-, aller → ir-, faire → fer-, venir → viendr-.
- **Plus-que-parfait** : imparfait de l''auxiliaire + participe passé. « J''avais fini ».

### Leçon 2.2 : Les pièges classiques

« Ils se sont lavés » (accord avec être) mais « ils se sont lavé les mains » (le COD « les mains » est après). Verbes pronominaux au passé composé. Le futur proche (aller + infinitif) : « Je vais partir ». Le passé récent (venir de + infinitif) : « Il vient de sortir ».

## Unité 3 : Compréhension

### Leçon 3.1 : La méthode

Lisez le texte deux fois : une fois pour le sens général, une fois avec les questions. Les textes portent sur la vie africaine et camerounaise : l''école, la famille, la ville, l''environnement.

**Types de questions :**

- Questions factuelles : la réponse est dans le texte — reformulez avec vos mots.
- Vocabulaire en contexte : donnez le sens que le mot porte dans cette phrase.
- Questions d''inférence : la réponse est suggérée, pas écrite.
- Questions sur le ton et l''intention de l''auteur.

**Technique d''examen :** Répondez en phrases complètes. Si la question demande « avec vos propres mots », recopier le texte donne zéro.

## Unité 4 : Traduction

### Leçon 4.1 : Anglais → Français

Traduisez le sens, pas mot à mot. Pièges fréquents :

- « I am 17 years old » → « J''ai 17 ans » (pas « Je suis 17 ans »).
- « I am hungry » → « J''ai faim ».
- Les faux amis : « actually » = en fait (pas actuellement) ; « library » = bibliothèque (pas librairie) ; « sensible » = raisonnable (pas sensible).
- Les prépositions : « think of » = penser à ; « depend on » = dépendre de.

### Leçon 4.2 : Français → Anglais

Attention aux temps : l''imparfait traduit souvent le passé continu (« je lisais » = I was reading). Les pronoms compléments doivent être placés correctement en anglais.

## Unité 5 : Composition

### Leçon 5.1 : Les types de sujets

- **Récit** : racontez une histoire au passé (imparfait + passé composé) avec un début, un problème et une fin.
- **Descriptif** : décrivez un lieu ou une personne avec les cinq sens.
- **Argumentatif** : donnez votre opinion, 3 arguments développés avec exemples, reconnaissez l''opposition, concluez.

### Leçon 5.2 : La structure qui rapporte des points

Introduction qui accroche, paragraphes de 4 à 6 phrases (une idée par paragraphe), conclusion qui ne s''arrête pas brutalement. Faites un plan de 5 minutes avant d''écrire. Relisez pour l''orthographe et les accords — ce sont eux qui font perdre le plus de points.

## Exercices (style GCE)

1. Donnez le pluriel : « un cheval », « un journal », « un œil ». (3)
2. Conjuguez au passé composé : « Elle (aller) au marché ce matin. » (2)
3. Mettez à l''imparfait : « Quand j''étais petit, nous (habiter) à Bafoussam. » (2)
4. Remplacez par un pronom : « Il parle à ses amis. » (2)
5. Traduisez : « I have been living in Douala since 2020. » (3)
6. Traduisez : « Elle vient de finir ses devoirs. » (3)
7. Écrivez une lettre à votre oncle pour lui raconter votre première journée d''examen. (20)
8. Compréhension : lisez un texte de 400 mots sur l''exode rural et répondez à cinq questions. (15)

## Stratégie finale pour l''examen

- Le Paper 1 (QCM) teste les définitions et les accords — révisez les tableaux de conjugaison.
- Le Paper 2 : la composition porte le plus de points — donnez-lui le plus de temps.
- Relisez systématiquement : accords sujet-verbe, participes passés, accents (é, è, ê, ç).
- Utilisez des exemples camerounais dans vos compositions : le marché, la famille, l''école, la ville.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-hist-ordinary', 'History', 'Complete O-Level History Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level History Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level History (subject code 0560): Cameroon history, African history, and world history. History marks come from precise dates, named people and places, and cause–effect reasoning. Never write "many years ago" when you can write 1884.

## Unit 1: Cameroon Before Colonisation

### Lesson 1.1: Early populations and migrations

Bantu migrations spread from the Nigeria–Cameroon borderlands across Central and Southern Africa, carrying iron-working and farming. Major groups settled: Bantu forest peoples (Betis, Fang, Bulu), Semi-Bantu (Bamileke, Tikar, Bamoun), Sudanic-Sahelian peoples (Fulbe, Kanuri), and Pygmies (Baka) in the forest. Kingdoms and chiefdoms emerged: the Bamoun kingdom under King Njoya (invented his own script and alphabet), the Kotoko kingdoms in the north (Logone-Birni), and Fulbe lamidates after the 19th-century jihad of Modibo Adama.

### Lesson 1.2: Trade and society before 1884

Trans-Saharan trade linked the north to the Mediterranean (salt, cloth, horses for slaves, ivory); coastal trade with Europeans (from the 15th century — Portuguese) brought guns, cloth and alcohol for palm oil and slaves. Traditional institutions: chiefdoms, councils of elders, age grades, secret societies (Ngumba, Kwifon).

## Unit 2: Colonisation

### Lesson 2.1: German Cameroon (1884–1916)

1884: treaties of annexation — King Bell and King Akwa of Douala signed with Dr Gustav Nachtigal. German rule: plantations (CDC founded 1947 by the British, but German plantations earlier), railways (Douala–Yaoundé), forced labour, brutal suppression of revolts (Douala Manga Bell executed 1914; Maji-Maji spillover; Buea was the capital). Economic changes: cocoa, rubber, banana plantations; the "hut tax" forced people into wage labour.

### Lesson 2.2: Partition and French/British rule (1916–1960)

After WWI, the League of Nations mandated Cameroon to France (4/5, East) and Britain (1/5, West — ruled from Nigeria, "trusteeship" after 1946). French rule: indigénat system, forced labour, cash crops, but also schools and roads. British rule: indirect rule through chiefs; Northern and Southern Cameroons administered separately. Reunification sentiment grew: the KNDP and the 1959/1961 plebiscites.

### Lesson 2.3: The road to independence and reunification

French Cameroon: UPC party (Ruben Um Nyobé, Ernest Ouandié) demanded immediate independence and reunification — banned in 1955, leading to armed struggle and the "maquis" in the Sanaga-Maritime. France granted independence on **1 January 1960** (President Ahmadou Ahidjo). British Southern Cameroons voted in the **11 February 1961 plebiscite** to join French Cameroon — the **1 October 1961 federation** created the Federal Republic of Cameroon (two states, one president). 1972: unitary state by referendum (United Republic); 1984: Republic of Cameroon.

## Unit 3: Post-Independence Cameroon

Ahidjo (1960–1982): federation, then unitary state; one-party rule (UNC); planned economy; "national unity" policy. Biya (1982–): "rigour and moralisation"; 1990s multiparty democracy (law of liberty of associations, December 1990); economic crisis of the late 1980s (falling commodity prices), IMF structural adjustment, salary cuts (1993), CFA franc devaluation (1994). Recent decades: oil, infrastructure (Kribi deep-sea port), decentralisation, and the Anglophone crisis (from 2016). Know the main institutions: President, National Assembly, Senate, councils.

## Unit 4: African History

### Lesson 4.1: Colonialism across Africa

Scramble for Africa: Berlin Conference 1884–85 (rules for partition, no African representation). Methods: treaties, conquest, indirect rule (British), assimilation (French). Resistance: Samori Touré (Mandinka), the Mahdist revolt (Sudan), Herero uprising (Namibia). Colonial economies: cash crops, mines, railways to the coast.

### Lesson 4.2: Nationalism and independence

Causes of nationalism: WWII veterans'' experience, education, pan-Africanism (Nkrumah, 5th Pan-African Congress 1945), economic grievances. Independence waves: Ghana 1957 (first sub-Saharan), the "Year of Africa" 1960 (17 states). Leaders: Nkrumah (Ghana), Sékou Touré (Guinea — "No" to de Gaulle 1958), Kenyatta (Kenya), Nyerere (Tanzania — Ujamaa socialism), Senghor (Senegal). Apartheid South Africa: 1948–1994, Sharpeville 1960, Soweto 1976, Mandela''s release 1990, first democratic elections 1994.

## Unit 5: World History

### Lesson 5.1: The World Wars

WWI (1914–18): causes — MAIN (militarism, alliances, imperialism, nationalism) + Sarajevo assassination (Franz Ferdinand, June 1914). Trench warfare; Cameroon campaign (Allied conquest of German Kamerun 1914–16). Treaty of Versailles 1919: war guilt, reparations, League of Nations. WWII (1939–45): Hitler''s expansion, invasion of Poland, Holocaust; turning points Stalingrad and D-Day; atomic bombs (Hiroshima, Nagasaki, August 1945); UN founded 1945.

### Lesson 5.2: The Cold War

USA vs USSR: capitalism vs communism; Truman Doctrine and Marshall Plan vs Warsaw Pact; Berlin Wall 1961; Cuban Missile Crisis 1962; decolonisation accelerated by both superpowers; détente; end with the fall of the Berlin Wall 1989 and USSR dissolution 1991.

## Practice Paper (GCE style)

1. State the year of the Berlin Conference and its purpose. (2)
2. Name the German official who signed the 1884 treaties with the Douala kings. (2)
3. Give two features of German colonial rule in Cameroon. (2)
4. Explain why the 1961 plebiscite was held and state its result. (4)
5. Name the founder of the UPC and state one of its demands. (2)
6. Describe two causes of African nationalism after 1945. (4)
7. State two MAIN causes of WWI. (2)
8. Explain one consequence of the Treaty of Versailles. (3)
9. Name two leaders of African independence and their countries. (2)
10. Explain two effects of the 1994 CFA franc devaluation on Cameroonians. (4)

## Final exam strategy

- Dates, names, places: build a timeline sheet per unit and recite it weekly.
- Cause–effect answers: use the structure "cause → event → consequence" with connectives (because, therefore, as a result).
- Essay questions: plan with 3–4 points, one paragraph each, with a specific example in every paragraph.
- Never leave a question blank — even partial knowledge earns marks in "state" questions.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-geo-ordinary', 'Geography', 'Complete O-Level Geography Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Geography Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Geography (subject code 0550): physical geography, human geography, map work, and fieldwork. Geography marks come from precise terminology, sketch maps and diagrams, and local Cameroonian examples.

## Unit 1: Physical Geography — Landforms

### Lesson 1.1: Rocks and the earth''s structure

Earth layers: crust, mantle, core. Rock types: igneous (cooled magma — basalt, granite), sedimentary (compressed layers — limestone, sandstone), metamorphic (changed by heat/pressure — marble from limestone). The rock cycle links all three. Cameroon''s volcanic line (Mount Cameroon, 4,095 m — active; Lake Nyos) shows igneous activity.

### Lesson 1.2: Weathering, erosion and landforms

Weathering breaks rock in place: physical (temperature changes, freeze-thaw), chemical (acid rain dissolving limestone), biological (roots splitting rock). Erosion moves material: rivers (attrition, abrasion, hydraulic action), wind (in the Sahel), waves (coastal). River landforms: V-shaped valleys, waterfalls, meanders, ox-bow lakes, deltas. Coastal: cliffs, beaches, spits. Mount Cameroon''s slopes show lava flows; the Sahel shows wind erosion.

## Unit 2: Climate and Weather

### Lesson 2.1: Elements and instruments

Weather elements: temperature (thermometer), rainfall (rain gauge), wind (anemometer, wind vane), humidity (hygrometer), pressure (barometer), sunshine (campbell-stokes recorder). Stevenson screen shelters instruments. Recording: daily readings, monthly means, annual totals.

### Lesson 2.2: Cameroon''s climates

Cameroon spans tropical to equatorial climates: the north (Sudan/Sahel — one wet season, May–September, high temperatures), the centre (tropical — two seasons), the south (equatorial — heavy rain most months, Douala ~4,000 mm/year). Altitude cools the west highlands (Bamenda). The ITCZ (Inter-Tropical Convergence Zone) controls the seasons: its movement brings the wet season.

### Lesson 2.3: Climate change

Evidence: rising temperatures, irregular rainfall, Lake Chad shrinking, desertification advancing south. Effects on Cameroon: delayed planting seasons, floods in northern towns, pressure on farming. Responses: reforestation, climate-smart agriculture, early-warning systems.

## Unit 3: Human Geography — Population

### Lesson 3.1: Population distribution and growth

Cameroon''s population concentrates in the west highlands, Yaoundé and Douala; the far north is dense (Fulbe settlements), the east is sparse (forest). Factors: climate, soils, jobs, history. Growth: high birth rates, falling death rates → rapid growth; urbanisation pulls youth to cities (rural exodus — a favourite exam theme). Demographic terms: birth rate, death rate, fertility rate, life expectancy, dependency ratio, migration (rural-urban, international).

### Lesson 3.2: Settlement

Settlement patterns: nucleated (around a market/chiefdom), linear (along roads), dispersed (farmsteads). Site (the land itself) vs situation (position relative to other places). Urban land uses: CBD, residential zones, industrial zones; problems of rapid urban growth: slums, traffic, waste, unemployment.

## Unit 4: Economic Activities

### Lesson 4.1: Agriculture

Cameroon''s farming: subsistence (plantain, cassava, maize, groundnuts) and cash crops (cocoa — Centre/South, coffee — West/Northwest, cotton — North, bananas, palm oil, tea). Plantation agriculture (CDC, SOSUCAM). Problems: low prices, poor roads, ageing farmers, climate risk. Solutions: cooperatives, better storage, irrigation, crop diversification.

### Lesson 4.2: Industry, mining and energy

Manufacturing concentrates in Douala and Yaoundé (breweries, cement, food processing). Mining: bauxite (Minim-Martap), iron (Mbalam), rutile, gold (East Region). Energy: hydroelectric potential (Sanaga — Edea, Lagdo dams; Memve''ele), oil (Rio del Rey), thermal plants. Industrial location factors: raw materials, power, labour, transport, market.

### Lesson 4.3: Transport and trade

Roads dominate; railways (Douala–Yaoundé, planned extensions); ports (Douala — river port with silting problems, Kribi — deep-sea, Limbe); airports (Yaoundé-Nsimalen, Douala). Trade: exports (cocoa, oil, timber, bananas, cotton) and imports (machinery, fuel, food). Tourism: Waza park, Kribi beaches, Mount Cameroon, cultural festivals (Ngondo, Nyem-Nyem).

## Unit 5: Map Work

### Lesson 5.1: Reading topographic maps

Scale: 1:50,000 means 1 cm = 500 m. Measure straight distances with a ruler; winding roads with a thread or paper strip. Grid references: 4-figure (square) and 6-figure (precise). Direction: 16-point compass; bearings measured clockwise from north (000°–360°). Relief: contours (close = steep, wide = gentle), spot heights, trig points; draw cross-sections to show a profile.

### Lesson 5.2: Interpreting maps

Describe drainage (rivers, direction of flow), settlement (pattern, size), land use (farms, forest, plantations), and communication (roads, footpaths). Practise describing a route: "From the school at grid 3421, the road runs northeast to the bridge at 3623, crossing the river valley."

## Unit 6: Fieldwork

The GCE expects fieldwork skills: choose an aim (e.g. "To study traffic flow at the market junction"), plan a method (counts at fixed times), collect data (tally charts, questionnaires), present results (bar graphs, pie charts, tables), analyse (patterns, anomalies), conclude (answer the aim), evaluate (limitations, improvements). Know questionnaire design: clear questions, no leading questions, mix of closed and open.

## Practice Paper (GCE style)

1. Name the three rock types and give one example of each. (3)
2. Explain two causes of rapid urbanisation in Douala. (4)
3. Describe the climate of the Far North Region using a rainfall graph. (4)
4. State two factors favouring cocoa farming in the Centre Region. (2)
5. On a 1:50,000 map, a road measures 7.4 cm. Find the real distance in km. (2)
6. Give the 6-figure grid reference of a feature in grid square 2334, centre of the square. (2)
7. Explain one advantage and one disadvantage of the Kribi deep-sea port. (4)
8. Describe two effects of deforestation in the Congo Basin. (4)
9. Design one question for a questionnaire on market prices. (2)
10. Explain why Mount Cameroon attracts both tourists and farmers. (4)

## Final exam strategy

- Always answer with place-specific examples: "in the Northwest highlands…" beats "in some places…".
- Sketch maps and diagrams earn marks even in essay answers — draw them quickly and label.
- Map work: practise with real extracts weekly; speed matters in the exam.
- Fieldwork questions are formulaic — learn the aim-method-data-analysis-conclusion structure.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-civ-ordinary', 'Citizenship Education', 'Complete O-Level Citizenship Education Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Citizenship Education Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Citizenship Education (subject code 0562). It teaches rights, duties, institutions and civic values, with Cameroon as the living case study. Answers score best when they combine the concept, the Cameroonian example, and the personal application.

## Unit 1: Citizenship and National Identity

### Lesson 1.1: Who is a citizen?

A citizen is a legal member of a state with rights and duties. Ways of becoming one: by birth (jus soli — born in the territory; jus sanguinis — born to citizen parents), by naturalisation (application after residence), by marriage, by adoption. A foreigner (non-citizen) may be a resident or visitor; refugees flee danger and receive protection.

National identity in Cameroon: bilingual heritage (English and French official languages), 250+ local languages and cultures, national symbols — the flag (green, red, yellow with a star), the anthem ("O Cameroon, Thou Cradle of our Fathers"), the seal, 20 May National Day (reunification and unity), the motto "Peace – Work – Fatherland".

### Lesson 1.2: Civic values

Respect, tolerance, patriotism, integrity, hard work, solidarity, responsibility. Civic values appear in daily choices: queuing, paying taxes, protecting public property, refusing exam malpractice, respecting elders and other cultures.

## Unit 2: Rights and Duties

### Lesson 2.1: Human rights

Categories: civil and political (life, speech, fair trial, vote), economic and social (education, health, work, decent conditions), cultural and environmental (participate in culture, healthy environment). Sources: the Universal Declaration of Human Rights (1948), the African Charter (1981), the Cameroon Constitution (1996, revised) — its preamble incorporates the UDHR.

Children''s rights (Convention on the Rights of the Child, 1989): survival, development, protection, participation. Child labour, child marriage and trafficking violate these rights — know the signs and the reporting channels (social welfare centres, gendarmerie, NGOs).

### Lesson 2.2: Duties of the citizen

Obey the law, pay taxes, defend the nation (national service), protect public property, preserve the environment, respect others'' rights, participate in civic life (vote, community work). Rights and duties are two sides of one citizenship: my right to education is matched by my duty to study honestly; my right to property is matched by my duty not to steal.

## Unit 3: The State and Its Institutions

### Lesson 3.1: The Republic of Cameroon

The Constitution defines Cameroon as a unitary, decentralised, secular, democratic republic, committed to bilingualism/biculturalism. Powers: executive (President of the Republic — head of state, elected for 7 years; appoints the Prime Minister and government), legislative (National Assembly + Senate — makes laws, controls government), judicial (courts — independent; Supreme Court, Constitutional Council).

Decentralisation: regions (10) and councils (360+) manage local affairs — schools, markets, roads; local taxes fund them. Traditional chiefdoms complement modern administration (chiefdom degrees I–III).

### Lesson 3.2: Democracy and elections

Democracy: government by the people through free, fair, periodic elections. Principles: popular sovereignty, majority rule with minority rights, alternation, rule of law, separation of powers. Elections in Cameroon: presidential, legislative, municipal, regional — organised by ELECAM; voting age 20; registration is a civic duty. Qualities of a good election: independent management, secret ballot, equal suffrage, transparent counting.

### Lesson 3.3: Civil society and the media

Civil society: NGOs, trade unions, professional associations, community groups — they inform, defend rights, and check power. The press: state and private media; press freedom is a constitutional value with legal limits (defamation, public order). Social media: powerful for civic voice but spreads fake news — verify before sharing; spreading false information that harms public order is punishable.

## Unit 4: National Institutions and Public Life

Key institutions to know: ELECAM (elections), ANOR (standards/quality), CNPS (social insurance), CONGACAM (anti-corruption), National Commission on Human Rights, schools and universities (state exams: GCE, FEN, concourses), the army and security forces (defence, order), the civil service. Public property (schools, roads, hospitals) belongs to all — vandalising it robs the community; protecting it is a civic duty.

Anti-corruption: corruption is the abuse of entrusted power for private gain (bribes, nepotism, fraud). Effects: poor services, inequality, lost trust. Fight it: refuse to pay bribes, report (CONGACAM, Operations Sparrowhawk history), practise integrity in exams and daily life.

## Unit 5: The Citizen and the Economy

Work and enterprise: every honest job dignifies the worker; entrepreneurship creates jobs (know examples of young Cameroonian entrepreneurs). Taxes: direct (income tax) and indirect (VAT) — they fund schools, roads, hospitals; tax evasion is a crime. Savings and mobile money: financial responsibility is civic responsibility. Consumer rights: safety, information, choice, redress — check receipts and expiry dates.

Environment: the citizen''s duty to protect land, water and air — refuse plastics, plant trees, manage waste, protect watersheds. Climate change affects every Cameroonian; civic action starts locally.

## Practice Paper (GCE style)

1. Define citizenship and state two ways of acquiring it. (3)
2. Name the three categories of human rights with one example each. (3)
3. State two duties of a citizen and explain one. (3)
4. Name the two houses of Cameroon''s legislature. (2)
5. Explain the principle of separation of powers. (3)
6. Give two qualities of a free and fair election. (2)
7. State two roles of civil society in Cameroon. (2)
8. Define corruption and give two of its effects. (3)
9. Distinguish direct from indirect taxes with one example each. (3)
10. Describe two civic actions you can take to protect the environment in your community. (4)

## Final exam strategy

- Structure every answer: definition → Cameroonian example → personal application.
- Learn the institutions with their exact names and roles — MCQs test them directly.
- Use current, real examples: 20 May celebrations, ELECAM, council projects, anti-corruption operations.
- In essays, argue both sides where asked ("discuss") and always conclude with the citizen''s responsibility.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-rel-ordinary', 'Religious Studies', 'Complete O-Level Religious Studies Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Religious Studies Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Religious Studies (subject code 0585). The paper tests knowledge of the Bible (Old and New Testament), religious teachings, and their application to moral questions. Quote scripture accurately and apply it to real life — that combination earns the top marks.

## Unit 1: The Bible and Its Background

The Bible: Old Testament (39 books — Law/Torah, History, Wisdom, Prophets) and New Testament (27 books — Gospels, Acts, Epistles, Revelation). Inspiration and authority; translations. Canon formation. Bible study skills: context (who wrote, to whom, why), literary types (narrative, law, prophecy, parable, letter), and interpretation.

## Unit 2: Old Testament

### Lesson 2.1: Creation and the Patriarchs

Creation accounts (Genesis 1–2): order, purpose, humans in God''s image, stewardship of creation. The Fall (Genesis 3): sin, consequences, promise. The Patriarchs: Abraham (covenant — Genesis 12, 15, 17; faith tested), Isaac, Jacob (Israel; the twelve tribes), Joseph (providence in Egypt).

### Lesson 2.2: Moses and the Exodus

Moses: call at the burning bush, the ten plagues, Passover, the Exodus, Sinai covenant (Ten Commandments — Exodus 20; their meaning and relevance today), wilderness wanderings, the golden calf. Joshua and the conquest; the Judges (Deborah, Gideon, Samson); Samuel and the demand for a king.

### Lesson 2.3: The Kings and the Prophets

Saul (rejection), David (covenant — 2 Samuel 7; Bathsheba and repentance — Psalm 51), Solomon (wisdom, temple, decline). Divided kingdom (Israel north, Judah south). Prophets: Elijah (Mount Carmel — 1 Kings 18), Amos (justice for the poor), Hosea (faithful love), Isaiah (the Holy One of Israel; messianic hope), Jeremiah (the new covenant — Jeremiah 31). The Exile and return (Ezra, Nehemiah — rebuilding).

### Lesson 2.4: Wisdom Literature

Psalms (types: praise, lament, thanksgiving — Psalm 23, 51, 100), Proverbs (practical wisdom), Job (suffering and faith), Ecclesiastes (meaning of life), Song of Songs.

## Unit 3: New Testament

### Lesson 3.1: The Gospels

The four Gospels: Matthew (Jewish audience; teaching), Mark (action; suffering servant), Luke (universal; poor and women; parables), John (signs and "I am" sayings). The life of Christ: annunciation and birth, baptism and temptation, ministry (teaching, miracles — nature, healing, exorcism; their purpose), the twelve disciples, transfiguration.

### Lesson 3.2: The Passion and Resurrection

Entry to Jerusalem, Last Supper (Eucharist''s origin), Gethsemane, trials (Jewish and Roman), crucifixion (the seven words; the centurion''s confession), burial, resurrection (the empty tomb; appearances; its centrality — 1 Corinthians 15), ascension, Great Commission (Matthew 28).

### Lesson 3.3: Acts and the Epistles

Pentecost (Holy Spirit; the church born), the early church''s life (Acts 2:42–47 — fellowship, breaking of bread, sharing), persecution and spread, Paul: conversion, missionary journeys, key teachings (justification by faith — Romans; love — 1 Corinthians 13; fruit of the Spirit — Galatians 5). General epistles: James (faith and works), 1 Peter (suffering).

## Unit 4: Christian Teaching and Life Today

### Lesson 4.1: Moral and social questions

Apply scripture to: marriage and family (Genesis 2; Ephesians 5), work and wealth (stewardship, honesty — Proverbs; warning on riches — Matthew 6:24), justice and the poor (Amos 5:24; James 2), forgiveness and reconciliation (Matthew 18), sanctity of life, alcohol and drug abuse, corruption (a Cameroonian application — Exodus 20; Romans 13), tribalism and unity (Galatians 3:28), care for creation (Genesis 1:28; Psalm 24).

### Lesson 4.2: The church in Cameroon

Christian missions and the growth of the church (Basilica of Mary Queen of Apostles; the role of missions in education and health), ecumenism, the church''s social role (schools, hospitals), interfaith relations with Islam and traditional religion, religious tolerance as national value.

## Practice Paper (GCE style)

1. State two purposes of the creation accounts in Genesis. (2)
2. Describe the covenant God made with Abraham. (4)
3. Explain the significance of the Exodus for Israel. (5)
4. Name two prophets and summarise one message of each. (4)
5. State one difference between Matthew''s and Luke''s birth narratives. (2)
6. Explain the meaning of two of Jesus'' nature miracles. (5)
7. Describe the events of the Last Supper and their importance today. (6)
8. Outline Paul''s teaching on love in 1 Corinthians 13. (5)
9. "Religion has no place in fighting corruption." Discuss with scripture. (10)
10. Explain how a Christian student should respond to exam malpractice. (5)

## Final exam strategy

- Learn key references (book, chapter, verse) — quoting "Amos 5:24" beats quoting "Amos".
- Structure application answers: the teaching → the scripture → the modern situation → the Christian response.
- Know one story per prophet and one parable per Gospel theme — specific beats general.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-log-ordinary', 'Logic', 'Complete O-Level Logic Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Logic Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Logic (subject code 0590). Logic teaches you to reason correctly and detect bad arguments — a skill that improves every other subject. Marks come from precise terminology and careful step-by-step analysis.

## Unit 1: Terms, Propositions and Arguments

### Lesson 1.1: Basic concepts

Term: a word or group expressing an idea (dog, honesty). Proposition: a statement that is true or false ("Dogs are mammals"). Argument: propositions where one (conclusion) follows from others (premises). Inference: the reasoning link. An argument is VALID if the conclusion follows from the premises; SOUND if it is valid AND the premises are true.

**Worked example:** All men are mortal (P1). Socrates is a man (P2). Therefore Socrates is mortal (C). Valid and sound. Compare: All cats are animals. All dogs are animals. Therefore all dogs are cats. Invalid — the conclusion does not follow even though both premises are true.

### Lesson 1.2: Types of propositions

Categorical propositions: A (universal affirmative — All S are P), E (universal negative — No S are P), I (particular affirmative — Some S are P), O (particular negative — Some S are not P). Subject, predicate, copula, quantifier. Distribution: A distributes S; E distributes both; I distributes neither; O distributes P.

## Unit 2: Categorical Syllogisms

### Lesson 2.1: Structure

A syllogism has a major premise, a minor premise, and a conclusion; three terms (major, minor, middle). The middle term must be distributed at least once (the fallacy of undistributed middle). Rules of validity: no term distributed in conclusion unless distributed in premises; two negative premises give nothing; a negative premise requires a negative conclusion.

**Worked example:** All lawyers are graduates (major). All judges are lawyers (minor). Therefore all judges are graduates (conclusion). Middle term "lawyers" is distributed in the major premise — valid.

### Lesson 2.2: Venn diagram testing

Draw two overlapping circles (S and P) inside a universe; shade empty regions for universals; mark existence with an X for particulars. Test the argument by checking whether the conclusion''s claim is already present. Practise with all four proposition types.

## Unit 3: Fallacies

### Lesson 3.1: Formal fallacies

Errors in the logical form: affirming the consequent (If P then Q; Q; therefore P — invalid), denying the antecedent (If P then Q; not P; therefore not Q — invalid), undistributed middle, illicit major/minor.

### Lesson 3.2: Informal fallacies

- Ad hominem: attacking the person, not the argument.
- Appeal to popularity (ad populum): "everyone believes it".
- Appeal to authority: citing an unqualified authority.
- Hasty generalisation: conclusion from too few cases.
- False cause (post hoc): "after this, therefore because of this".
- False dilemma: presenting two options as the only ones.
- Equivocation: shifting a word''s meaning mid-argument.
- Begging the question (circular reasoning): assuming the conclusion.
- Straw man: misrepresenting an opponent''s position.
- Red herring: diverting from the issue.

**Exam technique:** Name the fallacy, quote the offending sentence, and explain in one sentence why it fails.

## Unit 4: Hypothetical and Disjunctive Arguments

Conditional (hypothetical) propositions: If P then Q. Valid forms: modus ponens (P; therefore Q) and modus tollens (not Q; therefore not P). Disjunctive: P or Q; with one disjunct denied, the other follows. Dilemmas: constructive (P or Q; if P then R; if Q then S; therefore R or S) and destructive. Learn to identify each form and test validity.

## Unit 5: Definition and Language

Purposes of definition: reportive (standard meaning), stipulative (assigned meaning), persuasive. Methods: genus–difference (a triangle is a polygon with three sides), example, synonym, negation. Rules: not too broad, not too narrow, not circular, not obscure, not negative where positive is possible. Vagueness and ambiguity: identify and resolve both.

## Practice Paper (GCE style)

1. Distinguish a valid from a sound argument with one example of each. (4)
2. Identify the type (A, E, I, O): "Some students are not athletes." (1)
3. Test by Venn diagram: All M are P; All S are M; therefore All S are P. (5)
4. Name the fallacy: "You cannot trust his argument about taxes — he is a dropout." (2)
5. Name the fallacy: "Every great leader drank tea; therefore tea makes leaders." (2)
6. Test: If it rains, the match is cancelled. The match is not cancelled. Therefore it did not rain. (3)
7. Test: If it rains, the match is cancelled. It did not rain. Therefore the match was not cancelled. (3)
8. Define "bachelor" by genus and difference. (2)
9. State two rules a good definition must obey. (2)
10. Construct a valid syllogism in which the middle term is "students". (4)

## Final exam strategy

- Memorise the rules of validity and the fallacy list with one example each.
- Draw Venn diagrams for every syllogism question — they settle validity beyond doubt.
- In fallacy questions, the name alone is one mark; the explanation earns the rest.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-agr-ordinary', 'Agricultural Science', 'Complete O-Level Agricultural Science Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Agricultural Science Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Agricultural Science (subject code 0597) and supports A-Level Agricultural Science. Agriculture is Cameroon''s backbone — the exam rewards answers grounded in local farming reality (cocoa, maize, poultry, the two-season calendar).

## Unit 1: Introduction to Agriculture

Definition and importance: food, raw materials, employment, foreign exchange (cocoa, coffee, cotton, bananas), rural development. Branches: crop production, animal production, forestry, fisheries, agro-processing. Farming systems in Cameroon: subsistence mixed farming, plantation agriculture (CDC, SOSUCAM), pastoralism in the north, shifting cultivation and its problems.

## Unit 2: Soils

### Lesson 2.1: Soil formation and properties

Formation from parent rock by weathering; profile: topsoil (A — organic, roots), subsoil (B), parent rock (C). Texture: sand, silt, clay; loam is ideal. Structure, pH (test with indicator; most crops prefer 6–7), organic matter (humus — water retention, nutrients, structure). Soil water: available water between field capacity and wilting point.

### Lesson 2.2: Soil fertility and management

Nutrients: N (leaves — deficiency: yellowing), P (roots — purple leaves), K (fruit/quality). Fertilisers: organic (manure, compost — improves structure) vs inorganic (NPK, urea — fast, precise). Methods of application: broadcasting, banding, top dressing. Conservation: crop rotation, mulching, cover crops, terracing on slopes, agroforestry, contour ploughing. Erosion: water (gullying after deforestation) and wind (Sahel) — prevention beats cure.

## Unit 3: Crop Production

### Lesson 3.1: Principles

Land preparation: clearing, tilling, ridging/mounding (yams), beds. Propagation: seeds (maize, cocoa), vegetative (cassava stems, yam setts, plantain suckers, grafting for citrus). Nursery practices: seedbeds, pricking out, hardening off. Spacing and planting: correct spacing prevents competition; plant at the right time (with the rains). Crop husbandry: weeding (competition, pests'' hosts), fertiliser timing, irrigation (flood, furrow, drip — water use efficiency), pruning, staking (tomatoes).

### Lesson 3.2: Major crops of Cameroon

Cocoa: nursery, shade trees, harvesting pods, fermentation (5–7 days, turning) and drying — quality determines price. Coffee: Arabica (highlands) vs Robusta (lowlands); harvesting and pulping. Maize: spacing 75 × 25 cm, weed at 2–3 weeks, harvest at black layer. Cassava: stem cuttings, 9–12 months, processing (garri) to remove cyanide. Plantain, yams, groundnuts, vegetables (tomato, huckleberry — njangsa of the vegetable world in the west highlands).

### Lesson 3.3: Pests, diseases and weeds

Pests: insects (stem borers, aphids, weevils), rodents, birds. Diseases: fungal (cocoa black pod — humidity; maize rust), viral (cassava mosaic — spread by whitefly, control with clean planting material), bacterial. Control: cultural (rotation, sanitation, resistant varieties), biological (natural enemies), chemical (pesticides — safety: read labels, wear protection, observe withdrawal periods). Weeds: compete for light, water, nutrients; control by hoeing, herbicides, mulching.

## Unit 4: Animal Production

### Lesson 4.1: Poultry

Broilers (meat — 6–8 weeks) vs layers (eggs — from ~20 weeks). Housing: deep litter vs battery cages; ventilation, stocking density. Feeding: starter, grower, layers'' mash; clean water always. Management: brooding temperature (first weeks), vaccination programme (Newcastle, Gumboro), biosecurity (footbaths, isolation of new birds). Signs of health: alert posture, glossy feathers, good feed intake.

### Lesson 4.2: Other livestock

Pigs: housing, feeding (kitchen waste balanced with concentrates), farrowing management, disease control (African swine fever — no vaccine, strict biosecurity). Cattle: Fulbe pastoralism, tsetse challenge in the south, breeds (local zebu; crossbreeding), diseases (CBPP, trypanosomiasis), supplementary feeding in the dry season. Sheep and goats: small ruminants, browse and graze, parasites (deworming). Rabbits and fish farming (ponds, tilapia — a growing sector).

## Unit 5: Agricultural Economics and Extension

Farm records: inputs, outputs, sales, labour — needed for credit and decisions. Marketing: farm gate vs market prices, middlemen, cooperatives (cocoa/coffee marketing boards'' history), storage and price timing. Agricultural extension: the role of MINADER, extension agents, farmer field schools. Mechanisation: hand tools (hoe, cutlass — still dominant), animal traction in the north, tractors (cost and maintenance challenges). Post-harvest: losses can exceed 30% — drying, storage, processing add value.

## Practice Paper (GCE style)

1. State four importance of agriculture to Cameroon. (2)
2. Draw and label a soil profile. (4)
3. Describe two effects of soil erosion and two control measures. (5)
4. Distinguish organic from inorganic fertilisers — two points. (4)
5. Describe the propagation of cassava and one advantage over seed. (3)
6. Explain why cocoa must be fermented and dried properly. (4)
7. Name the vector of cassava mosaic disease and one control measure. (2)
8. Outline a vaccination schedule for broilers. (4)
9. State two biosecurity measures on a pig farm. (2)
10. Explain two reasons farm records are important. (4)

## Final exam strategy

- Ground every answer in Cameroon: seasons, crops, institutions (MINADER, CDC).
- Learn the nutrient deficiency symptoms as a table — MCQs love them.
- Practical questions: describe methods step by step (nursery, fermentation, vaccination).
- Draw labelled diagrams (soil profile, pond, deep litter house) — quick marks.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-hbio-ordinary', 'Human Biology', 'Complete O-Level Human Biology Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Human Biology Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Human Biology (subject code 0565) — the human-focused alternative to Biology. It shares the Biology syllabus core but emphasises human anatomy, physiology, health and disease. Learn structures by system, and always connect structure to function.

## Unit 1: The Human Body Plan

Levels of organisation: cells → tissues (epithelial, muscle, nerve, connective) → organs → systems → organism. Anatomical terms: anterior/posterior, superior/inferior, proximal/distal. Body cavities: cranial, thoracic (heart, lungs), abdominal (stomach, liver, intestines). Homeostasis: the maintenance of a constant internal environment — the theme linking every system.

## Unit 2: Skin, Skeleton and Muscles

### Lesson 2.1: The skin

Layers: epidermis (with melanin — protects from UV), dermis (sweat glands, hair follicles, blood vessels, receptors), subcutaneous fat. Functions: protection, temperature regulation (sweating, vasodilation/constriction, hairs), sensation, vitamin D synthesis, excretion. Wound healing and burns.

### Lesson 2.2: The skeleton

Functions: support, protection (skull, ribs), movement (joints), blood cell formation (bone marrow), mineral store (calcium). Axial skeleton (skull, vertebral column — 33 vertebrae, ribs, sternum) and appendicular (limbs, girdles). Joints: fixed (skull sutures), slightly movable (vertebrae), synovial (ball-and-socket — shoulder/hip; hinge — elbow/knee). Synovial joint structure: cartilage, synovial fluid, ligaments (bone to bone), tendons (muscle to bone). Muscles: antagonistic pairs (biceps/triceps), types (skeletal — voluntary, smooth — involuntary, cardiac).

## Unit 3: Blood, Heart and Circulation

Blood: plasma (55% — water, proteins, nutrients, wastes), red cells (45% — haemoglobin, no nucleus), white cells (defence), platelets (clotting cascade). Blood groups (ABO, rhesus) and transfusion compatibility — group O is universal donor, AB universal recipient.

Heart: right atrium → right ventricle → lungs; left atrium → left ventricle (thickest wall) → body. Valves (tricuspid, bicuspid, semilunar) prevent backflow; SAN sets the rhythm. Cardiac output = stroke volume × heart rate. Vessels: arteries, arterioles, capillaries, venules, veins. Coronary arteries supply the heart — blockage causes heart attack; risk factors: smoking, fat diet, inactivity.

## Unit 4: Respiration and Gas Exchange

Air pathway: nose (warms, filters, moistens) → trachea (C-shaped cartilage rings) → bronchi → bronchioles → alveoli. Alveoli adaptations: enormous surface (~70 m²), one-cell-thick walls, moist, capillary network. Breathing mechanics: diaphragm + intercostals; tidal volume, vital capacity. Aerobic respiration (glucose + O₂ → CO₂ + H₂O + energy) vs anaerobic (lactic acid; oxygen debt). Effects of smoking: tar (cancer), carbon monoxide (binds haemoglobin), nicotine (addiction, raises heart rate).

## Unit 5: Digestion and Diet

Diet and health: balanced diet, energy needs, deficiency diseases (kwashiorkor, marasmus, anaemia, rickets, scurvy, goitre), obesity and its risks. Digestive system: mouth → oesophagus → stomach → duodenum → ileum → colon → rectum. Enzymes and their products; pH along the canal (stomach acid, intestinal alkali). Liver functions: bile production, glycogen storage, deamination, detoxification. Absorption: villi and microvilli; co-transport of glucose.

## Unit 6: Excretion, Osmoregulation and Reproduction

Kidneys: cortex, medulla, pelvis; nephron (Bowman''s capsule, tubule, loop of Henle, collecting duct). Urine formation: ultrafiltration (high blood pressure in glomerulus), selective reabsorption (all glucose, most water and salts), ADH control of water (negative feedback; dehydration → more ADH → concentrated urine). Kidney failure: dialysis and transplants.

Reproduction: male system (testes — sperm + testosterone; vas deferens; prostate), female system (ovaries — ova + oestrogen/progesterone; oviduct; uterus; vagina). Menstrual cycle: follicular phase, ovulation (~day 14), luteal phase; hormones (FSH, LH, oestrogen, progesterone). Fertilisation → zygote → implantation; placenta functions (exchange, barrier, hormones). Pregnancy care: diet, antenatal clinics, dangers (malaria, anaemia, eclampsia). Contraception methods; STIs including HIV/AIDS — transmission, prevention, testing.

## Unit 7: Nervous and Endocrine Systems

Neurone structure: cell body, dendrites, axon (myelin sheath — speed), synapse. Reflex arc and reflexes (knee jerk, pupil). Brain: cerebrum (thinking), cerebellum (balance), medulla (breathing, heart rate). Sense organs: eye (cornea, lens, retina — rods and cones, optic nerve; defects: short sight — concave lens, long sight — convex lens), ear (cochlea — hearing; semicircular canals — balance).

Endocrine: pituitary (master gland), thyroid (thyroxine), pancreas (insulin/glucagon — blood glucose; diabetes), adrenal (adrenaline), ovaries/testes. Compare nervous (fast, electrical, short-lived) vs endocrine (slow, chemical, longer-lasting) coordination.

## Practice Paper (GCE style)

1. State two functions of the skin other than protection. (2)
2. Name the type of joint at the elbow and describe its movement. (3)
3. Explain why the left ventricle has a thicker wall than the right. (3)
4. Describe how breathing movements occur during inhalation. (4)
5. State the products of digestion of starch, protein and fat. (3)
6. Explain how a dehydrated person produces concentrated urine. (5)
7. Draw and label the male reproductive system. (5)
8. Compare nervous and hormonal coordination — two differences. (4)
9. State the lens type used to correct short sight and explain why. (3)
10. Explain two ways HIV is transmitted and two ways it is not. (4)

## Final exam strategy

- Learn each system as a labelled diagram + a function list — that is the exam''s shape.
- Use precise terms: "ultrafiltration", "antagonistic muscles", "negative feedback".
- Health questions: link cause → effect → prevention with Cameroonian context (malaria, HIV, nutrition).
- Practise past papers under time: Human Biology rewards speed on definitions.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-amath-ordinary', 'Additional Mathematics', 'Complete O-Level Additional Mathematics Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Additional Mathematics Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Additional Mathematics (subject code 0575), the bridge between O-Level and A-Level mathematics. It introduces calculus, advanced trigonometry and polynomials at O-Level standard. Every topic here reappears at A-Level — master it now and A-Level becomes manageable.

## Unit 1: Polynomials and the Factor Theorem

Remainder theorem: dividing f(x) by (x − a) leaves remainder f(a). Factor theorem: (x − a) is a factor if and only if f(a) = 0. Solve cubic equations by finding one root by inspection, then factorising.

**Worked example:** Solve x³ − 6x² + 11x − 6 = 0. Try x = 1: 1 − 6 + 11 − 6 = 0 → (x − 1) is a factor. Divide: x³ − 6x² + 11x − 6 = (x − 1)(x² − 5x + 6) = (x − 1)(x − 2)(x − 3). Roots: **1, 2, 3**.

## Unit 2: Advanced Quadratics and Inequalities

Complete the square to find maxima/minima: y = 2x² − 8x + 5 = 2(x − 2)² − 3 → minimum at (2, −3). Quadratic inequalities: solve the equation first, then test intervals (x² − 4 < 0 → −2 < x < 2). Discriminant conditions: "find k such that the equation has equal roots" → b² − 4ac = 0.

## Unit 3: Coordinate Geometry of Lines and Circles

Gradient, midpoint, distance between points. Perpendicular bisectors. Circles through three points: find the centre from the perpendicular bisectors of two chords. Intersections of lines and circles: substitute and solve.

## Unit 4: Trigonometry Extended

Graphs of sin, cos, tan with their periods and amplitudes; transformations (y = a sin bx). Identities: sin²θ + cos²θ = 1; 1 + tan²θ = sec²θ. Compound angles and their use in solving equations. The sine and cosine rules for any triangle, including ambiguous cases (two possible triangles from SSA — check both).

**Worked example:** In triangle ABC, a = 8, b = 5, C = 60°. c² = 64 + 25 − 2(8)(5)cos 60° = 89 − 40 = 49 → **c = 7**.

## Unit 5: Differentiation — the core new topic

First principles: f''(x) = lim(h→0) [f(x+h) − f(x)]/h — expect one first-principles question. Standard derivatives: xⁿ → nxⁿ⁻¹; sin x → cos x; cos x → −sin x; eˣ → eˣ; ln x → 1/x. Chain, product and quotient rules. Applications: equation of tangents and normals, stationary points (classify with the second derivative), rates of change (dy/dt = dy/dx × dx/dt), small approximations.

**Worked example:** Find the tangent to y = x³ − 2x at x = 1. dy/dx = 3x² − 2 → at x = 1, gradient = 1; point (1, −1). Tangent: y = x − 2.

## Unit 6: Integration

Standard integrals: ∫xⁿ dx = xⁿ⁺¹/(n+1) + c; ∫1/x dx = ln|x| + c; ∫sin x dx = −cos x + c; ∫eˣ dx = eˣ + c. Definite integrals and areas under curves; areas between curves (subtract the lower function). Integration as the reverse of differentiation — check by differentiating your answer.

**Worked example:** Area under y = x² from 0 to 3: ∫₀³ x² dx = [x³/3]₀³ = 27/3 = **9**.

## Unit 7: Kinematics (introduction)

Velocity = rate of change of displacement; acceleration = rate of change of velocity. From s(t): v = ds/dt, a = dv/dt. From a(t): integrate to v, then s. Find when a body is at rest (v = 0) and the distance travelled (integrate |v|).

## Practice Paper (GCE style)

1. Given f(x) = x³ + ax² − 5x + b and (x − 2) and (x + 1) are factors, find a and b. (6)
2. Solve x³ − 2x² − 5x + 6 = 0. (5)
3. Find k if x² + kx + 9 = 0 has equal roots. (3)
4. Solve sin 2x = cos x for 0° ≤ x ≤ 180°. (5)
5. Differentiate from first principles: f(x) = x². (4)
6. Find the maximum value of y = x³ − 3x on [−2, 2]. (6)
7. Find the equation of the normal to y = x² − 3x at x = 2. (5)
8. Evaluate ∫₁⁴ (2√x + 3x) dx. (5)
9. Find the area between y = x and y = x². (6)
10. A particle moves with s = t³ − 6t². Find when it is at rest and its acceleration then. (5)

**Answers:** 1) a = −2, b = −2 (check by substituting) 2) −2, 1, 3 3) k = ±6 4) x = 30°, 90°, 150° 6) max 2 at x = −1 8) 2(14.67) + 22.5 ≈ 51.8 9) 1/6 10) rest at t = 0, 4; a = 12 m/s² at t = 4

## Final exam strategy

- Calculus is the differentiator: most candidates lose marks on chain rule and area questions — drill them weekly.
- Show the rule before applying it; write the limit definition fully in first-principles questions.
- Check integration answers by differentiating.
- Time management: Additional Mathematics papers reward finishing the easy 60% perfectly.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-fnut-ordinary', 'Food and Nutrition', 'Complete O-Level Food and Nutrition Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Food and Nutrition Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Food and Nutrition (subject code 0540) and supports Food Science and Nutrition at A-Level. It combines nutrition science, food preparation and meal management. Score by linking science to everyday Cameroonian meals.

## Unit 1: Nutrients and Their Functions

### Lesson 1.1: Energy nutrients

Carbohydrates: starches (cassava, yam, maize, rice) and sugars; 1 g = 4 kcal; fibre (vegetables, whole grains) aids digestion. Proteins: 1 g = 4 kcal; building and repair; complete (animal — fish, meat, eggs) vs incomplete (plant — beans, groundnuts); combining plant proteins (beans + maize) gives a complete profile. Fats: 1 g = 9 kcal; concentrated energy; saturated (palm oil, butter) vs unsaturated (groundnut, fish oils); visible vs invisible fats.

### Lesson 1.2: Micronutrients and water

Vitamins: A (vision, skin — red palm oil, carrots; deficiency: night blindness), B1 (energy release — deficiency: beriberi), C (healing, iron absorption — citrus, guava; deficiency: scurvy), D (calcium absorption — sunshine, fish; deficiency: rickets), K (clotting), folate (pregnancy — prevents neural tube defects). Minerals: iron (blood — deficiency: anaemia; sources: dark greens, meat; vitamin C aids absorption), calcium (bones, teeth), iodine (thyroid — deficiency: goitre; iodised salt), zinc. Water: 6–8 glasses daily; transports, regulates temperature, removes wastes.

### Lesson 1.3: Energy balance and needs

Energy needs vary with age, sex, activity, pregnancy/lactation. BMR (basal metabolic rate) + activity = total needs. Energy balance: intake = expenditure maintains weight; surplus → obesity; deficit → underweight. BMI = weight (kg) ÷ height² (m); healthy range 18.5–24.9.

## Unit 2: Meal Planning and Management

### Lesson 2.1: Planning balanced meals

Factors in planning: nutritional needs, budget, season, time, equipment, family size, culture. The food groups: energy-giving, body-building, protective. Plan a day''s meals for: a pregnant woman (extra protein, iron, folate), a child (growth, small frequent meals), an elderly person (soft, nutrient-dense), an athlete (extra energy, hydration).

**Worked example (Cameroonian context):** A balanced lunch for a form 5 student on a small budget: rice (energy) + beans (protein) + huckleberry/green salad (protective) + a slice of avocado (fat) + water. Cost-conscious swaps: seasonal vegetables, dried fish instead of meat.

### Lesson 2.2: Special diets

Vegetarian (combine proteins; watch B12 and iron), diabetic (controlled carbohydrate, low sugar, regular meals), hypertensive (reduce salt — season with herbs, garlic), convalescent (high protein, small frequent meals), weight-reducing (moderate deficit, avoid fried foods).

## Unit 3: Food Preparation and Cooking

### Lesson 3.1: Cooking methods and their effects

Moist methods: boiling (vegetables lose vitamin C in the water — use little water, short time), steaming (best nutrient retention), stewing, braising. Dry methods: frying (adds fat — drain well), roasting, grilling, baking. Effects of heat on nutrients: vitamin C and B are heat- and water-sensitive; proteins coagulate; starches gelatinise; fats smoke. Prepare local dishes with nutrient care: keep vegetable cooking water for soup; cook green leafy vegetables briefly.

### Lesson 3.2: Kitchen equipment and safety

Equipment: measuring (scales, jugs), mixing, cooking, cooling. Knife safety: sharp knives are safer, cut away from yourself, store safely. Fire safety: handle oils carefully, never leave frying unattended. First aid basics for cuts and burns.

## Unit 4: Food Science Principles

Functions of ingredients: flour (structure — gluten), eggs (binding, emulsifying, aerating), fat (shortening, flavour), sugar (sweetening, preserving), liquid (hydration). Raising agents: air (creaming, whisking), steam (choux), CO₂ (baking powder, yeast — fermentation). Changes during cooking: coagulation (eggs), gelatinisation (sauces), dextrinisation (toasting), caramelisation (sugar browning), Maillard reaction (browning of proteins + carbohydrates). Emulsions: mayonnaise (egg yolk stabilises oil and vinegar).

## Unit 5: Food Preservation, Safety and Hygiene

### Lesson 5.1: Why food spoils and how to prevent it

Causes: micro-organisms (bacteria, moulds, yeasts), enzymes, pests, moisture, oxygen. Preservation methods: drying (fish, mangoes — removes water), salting, smoking (fish), fermentation (garri, nkui), canning/bottling (heat + seal), freezing, refrigeration (slows, does not stop), pickling, jam-making (sugar + acid). Choose methods suited to local conditions and cost.

### Lesson 5.2: Food hygiene and safety

Personal hygiene: wash hands before and during preparation, cover cuts, tie hair. Kitchen hygiene: clean surfaces, separate raw and cooked (cross-contamination), wash utensils. Food storage: cover and date leftovers, cool quickly, reheat thoroughly (once). Danger zone: 5–63 °C — bacteria multiply fastest; keep hot food hot, cold food cold. Common illnesses: salmonella (undercooked poultry/eggs), cholera (contaminated water — a real risk in Cameroon''s rainy season), food poisoning symptoms and response.

## Practice Paper (GCE style)

1. State the energy value of 1 g of carbohydrate, protein and fat. (2)
2. Name two deficiency diseases and their causes. (2)
3. Plan a balanced day''s meals for a pregnant woman on a limited budget. (10)
4. Explain two ways to conserve vitamin C when cooking vegetables. (4)
5. State the functions of eggs in cake making. (3)
6. Describe how yeast acts as a raising agent. (4)
7. Outline three methods of preserving fish and one advantage of each. (6)
8. Define the danger zone and state one rule to keep food safe. (3)
9. Explain cross-contamination and how to prevent it. (4)
10. Discuss two reasons a family should keep food records and a shopping list. (6)

## Final exam strategy

- Learn nutrient tables: function, source, deficiency — they answer half the MCQs.
- Meal-planning questions are structured: state needs → plan meals → justify choices → cost.
- Practical paper: demonstrate hygiene throughout; examiners watch hand-washing and cross-contamination.
- Link every answer to Cameroonian foods and conditions — local application is rewarded.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-lit-ordinary', 'English Literature', 'Complete O-Level English Literature Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level English Literature Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Literature in English (subject code 0535). The O-Level paper tests the same skills as A-Level — close reading, quotation, analysis — at a more guided level. Learn your set texts at episode level and always support claims with evidence.

## Unit 1: Literary Terms You Must Know

Plot (exposition, rising action, climax, resolution), setting, characterisation (direct and indirect), theme, point of view, tone, mood, imagery (simile, metaphor, personification), symbolism, irony (verbal, dramatic, situational), foreshadowing, flashback, dialogue, monologue, soliloquy, rhyme, rhythm, stanza, verse, prose, drama. Learn definitions exactly — Paper 1 MCQs test them.

## Unit 2: Prose

### Lesson 2.1: Reading a novel or novella

Track: the plot''s stages, the protagonist''s goal and obstacles, the antagonist, the resolution. Note how the writer reveals character (actions, speech, thoughts, others'' reactions). Identify 3–4 major themes and the episodes that develop each.

### Lesson 2.2: Answering prose questions

Character questions: describe the trait, give the episode, quote or refer precisely, explain the significance. Theme questions: state the theme, trace its development through 3 episodes, conclude with the writer''s message. Setting questions: describe the place/time and explain its effect on events and characters.

## Unit 3: Poetry

### Lesson 3.1: Reading a poem

First reading: what happens? Who speaks? Second reading: how does the feeling develop? Identify the form (sonnet, ballad, free verse), the imagery, the sound effects (alliteration, rhyme, repetition), and the tone. Choose 3 short quotations that carry the poem''s power.

### Lesson 3.2: Answering poetry questions

Structure: situation → development → effects. For each quotation: name the device, quote it, explain the effect. Compare poems where asked: one similarity, one difference, both evidenced.

## Unit 4: Drama

### Lesson 4.1: Reading a play

Follow the conflict: who wants what, what blocks them, how it resolves. Note stage directions (they reveal mood and movement), dramatic irony, and the climax. Know the key scenes word-perfectly.

### Lesson 4.2: Answering drama questions

Discuss plays as performance: how would the scene look on stage? Analyse dialogue for character tactics. Theme questions: state the theme, give 3 scenes, conclude with the playwright''s message.

## Unit 5: Essay Technique

Every essay: introduction (text + focus + thesis) → 3–4 body paragraphs (point → evidence → analysis → link) → conclusion. Use the question''s key words throughout. Never narrate the plot without analysing it. Write in present tense about texts.

## Practice tasks (GCE style)

1. Define dramatic irony and give one example from a play you have studied. (3)
2. Describe one character''s development through a novel you have studied. (10)
3. "The setting is almost a character." Discuss with one text. (15)
4. Analyse how a poet creates mood in one poem you have studied. (15)
5. Compare two poems on the same theme: one similarity, one difference. (15)

## Final exam strategy

- Build a quotation bank: 10 quotations per set text, organised by theme.
- Answer the exact question asked — re-read it before and after writing.
- Depth beats breadth: one text known deeply outperforms two known vaguely.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-acct-ordinary', 'Accounting', 'Complete O-Level Accounting Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Accounting Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Accounting (subject code 0505), core of the Commercial series. O-Level accounting is about formats and double entry — learn the layouts and the rules, and the marks follow.

## Unit 1: Introduction and the Accounting Equation

Accounting: recording, classifying, summarising financial information. Users: owners, managers, lenders, government. The equation: Assets = Capital + Liabilities. Every transaction has two effects (double entry): debit the receiver of value, credit the giver.

**Worked example:** Start a business with 500,000 FCFA cash: debit Cash 500,000; credit Capital 500,000. Buy a motorbike for 300,000 cash: debit Motorbike; credit Cash.

## Unit 2: Double Entry and the Ledger

Rules: debit increases assets and expenses; credit increases liabilities, capital and income. T-accounts; balancing accounts (balance c/d, balance b/d). Books of prime entry: sales day book (credit sales), purchases day book (credit purchases), cash book (all cash/bank — analyse columns), petty cash book (impost system), general journal (corrections, opening entries).

Discounts: trade discount (deducted on the invoice — never recorded) vs cash discount (reward for prompt payment — recorded: discount allowed is an expense, discount received is income).

## Unit 3: Trial Balance and Errors

Extract balances; the trial balance checks arithmetic. Errors it does NOT reveal: complete omission, commission (wrong person, same class), principle (wrong class — e.g. vehicle debited to purchases), original entry, compensating, complete reversal. Correcting errors through the journal; suspense accounts for one-sided differences.

## Unit 4: Final Accounts of a Sole Trader

Income statement: Sales − returns in; Cost of sales = opening stock + purchases − returns out − closing stock; Gross profit; add other income; less expenses = Net profit.

Statement of financial position: non-current assets at cost less depreciation; current assets (stock, debtors, prepayments, bank, cash); less current liabilities (creditors, accruals); net assets; financed by capital + net profit − drawings.

Year-end adjustments: closing stock (lower of cost or NRV), depreciation (straight line or reducing balance), accruals and prepayments, bad debts and provisions for doubtful debts, drawings of goods.

**Worked example:** Rent paid 240,000; accrual for 2 months at 20,000/month = 40,000. Income statement charge = 280,000; balance sheet shows accrued rent 40,000 as a current liability.

## Unit 5: Control Accounts and Bank Reconciliation

Sales ledger control account (debtors) and purchases ledger control account (creditors): prove the ledgers; locate errors. Bank reconciliation: compare cash book with bank statement; adjust for unpresented cheques, outstanding deposits, standing orders, direct debits, bank charges, errors — both sides must agree at the corrected balance.

## Unit 6: Introduction to Analysis

Ratios: gross margin (GP/Sales × 100), net margin, current ratio (CA/CL), liquid ratio ((CA − stock)/CL), stock turnover, ROCE. Interpretation: compare with previous year and explain causes and actions.

## Practice Paper (GCE style)

1. State the accounting equation. (1)
2. Record: sold goods for 80,000 cash; bought stationery 15,000 by cheque; received a loan of 200,000 from the bank. (6)
3. Prepare a trial balance from given balances. (6)
4. Calculate closing stock from: opening 200,000; purchases 900,000; sales 1,400,000; GP margin 25%. (5)
5. Depreciate a machine (cost 800,000, residual 50,000, life 5 years) for one year (straight line). (3)
6. Adjust for: insurance paid 60,000 including 12,000 for next year. (4)
7. Write off a bad debt of 25,000 and provide 5% on remaining debtors of 475,000. (5)
8. Prepare a sales ledger control account from given data. (8)
9. Reconcile a cash book with a bank statement (three adjustments). (8)
10. Calculate and interpret the current ratio from given figures. (5)

## Final exam strategy

- Memorise every format: income statement, financial position, control accounts, cash book.
- Label workings; show the formula before substitution.
- Check that debits equal credits at every stage — balance errors cascade.
- Practise full past papers by hand under time pressure.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-biz-ordinary', 'Business Studies', 'Complete O-Level Business Studies Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Business Studies Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Business Studies (subject code 0598). Business Studies teaches how enterprises are created, financed, marketed and managed. Score by applying concepts to real Cameroonian businesses — from roadside stalls to the Cameroon Development Corporation.

## Unit 1: Business Activity and Objectives

Purpose of business: satisfying needs and wants by producing goods and services. Sectors: primary, secondary, tertiary. Objectives: profit, survival, growth, market share, social responsibility. Stakeholders: owners, employees, customers, community, government — their interests often conflict (wages vs profits). Adding value: selling price minus cost of bought-in materials.

## Unit 2: Types of Business Organisation

Sole trader: unlimited liability, full control, easy to start. Partnership: shared capital and skills, unlimited liability. Private limited company (Ltd): limited liability, shares not offered to the public. Public limited company (PLC): shares sold publicly, limited liability, regulated. Franchise: buy the right to trade under a brand (lower risk, fees). Co-operatives and social enterprises: member or mission focused. Public sector: government departments and corporations (Camwater, Camtel).

## Unit 3: Business Environment and Growth

External influences: economic (inflation, unemployment, exchange rates), technological, legal, social, competitive, environmental. Business plans: purpose (finance, direction), contents (executive summary, market analysis, operations, finance). Growth: internal (expanding output) vs external (mergers — horizontal, vertical, conglomerate). Why businesses fail: poor cash flow, weak management, competition, over-borrowing.

## Unit 4: Marketing

### Lesson 4.1: The marketing mix (4Ps)

Product: design, quality, branding, life cycle (introduction, growth, maturity, decline — strategies at each stage). Price: cost-plus, competitive, penetration (low entry price), skimming (high launch price), promotional. Place: channels of distribution (producer → wholesaler → retailer → consumer), e-commerce. Promotion: advertising, sales promotion (discounts, samples), personal selling, public relations, social media.

Market research: primary (surveys, interviews, observation) and secondary (reports, statistics); sampling; why research matters (reduce risk, understand customers). Segmentation: by age, income, location, lifestyle — target the segments you serve best.

## Unit 5: Operations Management

Production methods: job (one-off — tailoring), batch (groups — bakery), flow (continuous — bottling). Productivity and efficiency: output per worker; lean production (reduce waste, just-in-time). Quality: control (checking output) vs assurance (building quality in). Costs: fixed, variable, total; economies of scale. Location factors: materials, labour, transport, market, government incentives.

## Unit 6: Finance

### Lesson 6.1: Sources of finance

Internal: retained profit, sale of assets. External: bank loans, overdrafts, trade credit, leasing, microfinance loans, grants. Short-term vs long-term; owners'' funds vs borrowed. Cash flow forecast: inflows − outflows = net cash flow; manage the timing of receipts and payments.

### Lesson 7: Accounts and ratios

Income statement (revenue − costs = profit) and statement of financial position (assets = liabilities + capital). Key ratios: gross margin, net margin, current ratio, ROCE. Interpretation: compare over time and against benchmarks.

## Practice Paper (GCE style)

1. Define added value and calculate it from given figures. (3)
2. State two advantages and two disadvantages of operating as a sole trader. (4)
3. Explain two methods of primary market research a new bakery could use. (5)
4. Describe how the product life cycle affects pricing strategy. (6)
5. Calculate the break-even point from given cost and price data. (5)
6. Distinguish internal from external finance with one example of each. (4)
7. Explain two reasons a business might merge with another. (5)
8. Outline the purpose of a cash flow forecast. (4)
9. Discuss two ways a small business could increase productivity. (8)
10. "Growth is always good for a business." Discuss. (10)

## Final exam strategy

- Learn definitions precisely and apply each to a named business type.
- Practise calculations: break-even, margins, ratios — show the formula first.
- In "discuss" questions, argue both sides and conclude with a judgement.
- Use case-study material: quote figures from the paper in every answer.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-geol-ordinary', 'Geology', 'Complete O-Level Geology Course — Cameroon GCE', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Complete O-Level Geology Course — Cameroon GCE

## How to use this course

This course covers GCE O-Level Geology (subject code 0555). Geology studies the earth, its materials and processes. Cameroon is a geologist''s classroom — from Mount Cameroon''s volcanism to the iron ores of Mbalam. Marks come from precise identification skills and process explanations.

## Unit 1: The Earth and Its Materials

Earth structure: crust (oceanic — thin, basaltic; continental — thick, granitic), mantle, outer core (liquid), inner core (solid). Plate tectonics: plates move on the mantle; boundaries — divergent (mid-ocean ridges), convergent (subduction, mountains), transform (faults). Cameroon sits on the Cameroon Volcanic Line — intraplate volcanism (Mount Cameroon, the crater lakes).

## Unit 2: Minerals and Rocks

### Lesson 2.1: Mineral identification

Physical properties: colour, streak, lustre, hardness (Mohs 1–10: talc → diamond), cleavage, fracture, density, special properties (magnetite — magnetic; calcite — fizzes with acid). Common rock-forming minerals: quartz, feldspar, mica, olivine, calcite.

### Lesson 2.2: The three rock families

Igneous: intrusive (coarse — granite, gabbro) vs extrusive (fine — basalt, rhyolite, pumice); texture records cooling rate. Sedimentary: clastic (conglomerate, sandstone, shale — grain size classifies), chemical (limestone, rock salt), organic (coal); features: bedding, fossils. Metamorphic: foliated (slate from shale, schist, gneiss) vs non-foliated (marble from limestone, quartzite from sandstone). The rock cycle.

## Unit 3: Geological Processes

### Lesson 3.1: Weathering, erosion, deposition

Physical, chemical and biological weathering; mass movements (landslides on Cameroon''s steep slopes after heavy rain). Rivers: erosion, transport (load), deposition — alluvial fans, deltas; placer deposits (gold in river gravels of the East Region). Wind and water as agents of landscape change.

### Lesson 3.2: Volcanism and earthquakes

Volcano types: shield (gentle, fluid lava), composite (explosive, layered), calderas. Products: lava, ash, gases, pyroclastic flows. Cameroon hazards: Mount Cameroon eruptions (1999, 2000), Lake Nyos 1986 (CO₂ eruption — 1,700+ deaths; degassing pipes installed), Lake Monoun 1984. Earthquakes: causes (fault movement), waves (P, S, surface), measurement (Richter, moment magnitude); Cameroon is largely aseismic but building standards matter.

## Unit 4: Fossils and Geological Time

Fossilisation conditions (rapid burial, hard parts); types (moulds, casts, replacements, traces). Index fossils date strata (short range, wide distribution). Relative dating: superposition, cross-cutting, faunal succession. Absolute dating: radiometric (half-lives — carbon-14 for recent, uranium for ancient). Geological time scale: eras, periods — Precambrian to Quaternary; Cameroon''s geology spans ancient basement (Precambrian shield) to recent volcanics.

## Unit 5: Economic Geology of Cameroon

Mineral resources: bauxite (Minim-Martap — among the world''s largest reserves), iron ore (Mbalam, Kribi), rutile, gold (East Region river gravels), diamonds (Mobilong), limestone (Figuil — cement), nickel-cobalt. Oil and gas: Rio del Rey basin, Douala basin. Why geology matters for development: exploration, mining investment, environmental management, water resources (boreholes, aquifers). Mining impacts: land degradation, water pollution, community displacement — sustainable mining balances them.

## Practice Paper (GCE style)

1. Name the earth''s four layers in order from the surface. (2)
2. State three properties used to identify minerals. (2)
3. Distinguish intrusive from extrusive igneous rocks by texture and explain why. (4)
4. Name the metamorphic rock formed from shale and from limestone. (2)
5. Describe the 1986 Lake Nyos disaster and one mitigation measure. (5)
6. State two conditions needed for fossilisation. (2)
7. Explain how an index fossil is used. (3)
8. Name two metallic minerals found in Cameroon and their locations. (2)
9. Explain why Mount Cameroon erupts though it is far from a plate boundary. (4)
10. Discuss one benefit and one environmental cost of mining in Cameroon. (6)

## Final exam strategy

- Build a mineral identification flowchart and practise with specimens or photos.
- Learn the rock families with named examples and textures — most MCQs test classification.
- Cameroon case studies (Nyos, Mbalam, Minim-Martap) turn average answers into top answers.
- Draw labelled cross-sections for process questions — fast, high-value marks.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-sbf-ordinary', 'Special Bilingual Education French', 'Cours de Français — Éducation Bilingue Spéciale, GCE Cameroun', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', '# Cours de Français — Éducation Bilingue Spéciale, GCE Cameroun

## Comment utiliser ce cours

Ce cours couvre l''Éducation Bilingue Spéciale — Français (code 0546) au GCE Ordinary Level. Cette matière s''adresse aux candidats du système anglophone qui choisissent le français renforcé : elle exige la langue, la civilisation et l''expression orale. Le Paper oral distingue les meilleurs candidats — pratiquez à voix haute chaque semaine.

## Unité 1 : Langue — Grammaire et conjugaison

### Leçon 1.1 : Les structures essentielles

Maîtrisez : les articles (défini, indéfini, partitif — « du pain », « de la viande »), les accords (nom-adjectif, sujet-verbe, participe passé), les pronoms (personnels, relatifs, démonstratifs), les prépositions et leurs régimes (« penser à », « dépendre de », « se souvenir de »).

### Leçon 1.2 : Les temps indispensables

Présent, passé composé, imparfait, futur simple, futur proche, passé récent, plus-que-parfait, conditionnel présent (politesse et hypothèse : « Je voudrais », « Il faudrait »). Les irréguliers : être, avoir, aller, faire, venir, pouvoir, vouloir, devoir, savoir, connaître.

## Unité 2 : Compréhension et expression écrite

### Leçon 2.1 : La compréhension

Textes sur la vie camerounaise et africaine : l''école, la famille, la santé, l''environnement, la ville. Méthode : lisez deux fois, identifiez les idées principales, répondez en phrases complètes avec vos propres mots.

### Leçon 2.2 : La composition

Récit (au passé), descriptif (les cinq sens), argumentatif (opinion + arguments + exemples). Plan obligatoire : introduction, 3 paragraphes, conclusion. Relisez pour l''orthographe et les accords.

## Unité 3 : Traduction

Anglais → français : les pièges (« I am hungry » → « J''ai faim » ; les faux amis : actually/library/sensible). Français → anglais : les temps (imparfait = was/were + -ing), l''ordre des mots.

## Unité 4 : Civilisation et vocabulaire thématique

### Leçon 4.1 : La francophonie et le Cameroun

Le Cameroun bilingue : l''histoire du bilinguisme, la francophonie institutionnelle (OIF), les institutions camerounaises francophones (MINADER, BEAC, CEMAC). Les fêtes et traditions : le Ngondo, la fête de la jeunesse (11 février), le 20 mai.

### Leçon 4.2 : Vocabulaire par thème

Constituez des listes par thème : la santé (médecin, ordonnance, vaccin), l''école (maître, cahier, récréation), l''environnement (déforestation, déchets, recyclage), les transports (gare, billet, quai), la famille (oncle, cousin, belle-mère). Utilisez chaque mot dans une phrase — la mémorisation en contexte double la rétention.

## Unité 5 : Expression orale (Paper oral)

### Leçon 5.1 : La prononciation

Travaillez : les nasales (an, on, in, un), le « r » grasseyé, les liaisons (« les_amis »), l''accentuation régulière (dernière syllabe). Lisez à voix haute 10 minutes par jour ; enregistrez-vous et comparez.

### Leçon 5.2 : L''interaction

Préparez : la présentation personnelle (nom, âge, famille, école, ambitions), les questions-réponses courantes (la météo, les repas, les loisirs), la description d''images (qui, où, quoi, comment). Formules utiles : « Je pense que… », « À mon avis… », « Par exemple… ». Parlez lentement et clairement — la précision vaut mieux que la vitesse.

## Exercices (style GCE)

1. Conjuguez au conditionnel présent : « Si j''avais le temps, je (voyager). » (2)
2. Traduisez : « She has just finished her homework. » (3)
3. Décrivez une image de marché en 5 phrases. (10)
4. Présentez votre région en 8 phrases. (10)
5. Lecture à voix haute d''un texte de 150 mots. (10)
6. Questions-réponses : votre journée type. (10)

## Stratégie finale pour l''examen

- L''oral se prépare par la pratique quotidienne — pas par la lecture silencieuse.
- Le Paper 1 (QCM) teste les structures : révisez les tableaux.
- Dans la composition, la longueur minimale et la correction comptent autant que les idées.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-pmm-advanced', 'Pure Mathematics with Mechanics', 'Complete A-Level Pure Mathematics with Mechanics Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Pure Mathematics with Mechanics Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Pure Mathematics with Mechanics (subject code 0770), the core subject of the Science series (S1). A-Level mathematics demands precision: every line of working must follow from the previous one. Mechanics questions are applied calculus — learn the modelling assumptions and the standard results.

## Part I: Pure Mathematics

### Unit 1: Algebra and Functions

Indices and surds: simplify √50 = 5√2; rationalise denominators. Quadratics: complete the square x² + bx + c = (x + b/2)² + (c − b²/4) — use it to find the vertex and prove maxima/minima. The discriminant b² − 4ac decides the nature of roots (two real, one repeated, none real).

Polynomials: factor theorem — if f(a) = 0 then (x − a) is a factor. Divide polynomials by long division or synthetic division. Remainder theorem: f(a) gives the remainder when dividing by (x − a).

Functions: domain, range, inverse (reflect in y = x), composite f(g(x)). Modulus |x|: solve |2x − 1| < 5 as −5 < 2x − 1 < 5.

### Unit 2: Coordinate Geometry

Straight lines: gradient m = (y₂ − y₁)/(x₂ − x₁); forms y − y₁ = m(x − x₁), y = mx + c. Parallel lines share m; perpendicular lines multiply to −1. Circle: (x − a)² + (y − b)² = r²; find the centre and radius by completing the square. Tangents: perpendicular to the radius at the point of contact.

### Unit 3: Trigonometry

Exact values: sin 30° = ½, cos 60° = ½, tan 45° = 1. Radians: π rad = 180°; arc length s = rθ; sector area = ½r²θ. Identities: sin²θ + cos²θ = 1; tan θ = sin θ/cos θ. Compound angles: sin(A ± B) = sin A cos B ± cos A sin B; cos 2A = 1 − 2sin²A. Solve trig equations over a stated interval — find all solutions by adding the period.

**Worked example:** Solve sin x = 0.5 for 0° ≤ x ≤ 360°. x = 30° or 150° (sine is positive in quadrants I and II).

### Unit 4: Calculus — the heart of A-Level

**Differentiation:** standard results — xⁿ → nxⁿ⁻¹; sin x → cos x; cos x → −sin x; eˣ → eˣ; ln x → 1/x. Chain rule: dy/dx = dy/du × du/dx. Product rule: u''v + uv''. Quotient rule: (u''v − uv'')/v². Applications: gradients, tangents/normals, stationary points (set dy/dx = 0; classify with the second derivative), rates of change, small increments.

**Worked example:** y = x³ − 3x². dy/dx = 3x² − 6x = 3x(x − 2) → stationary points at x = 0 and x = 2. d²y/dx² = 6x − 6: at x = 0 it is −6 (maximum); at x = 2 it is +6 (minimum).

**Integration:** reverse differentiation. ∫xⁿ dx = xⁿ⁺¹/(n+1) + c. Definite integrals evaluate areas; areas below the axis are negative — split the integral. Integration by substitution and by parts (∫u dv = uv − ∫v du). Volumes of revolution: V = π∫y² dx.

### Unit 5: Series and Binomial

Arithmetic series: a, d, n terms; Sₙ = n/2(2a + (n−1)d). Geometric series: Sₙ = a(1 − rⁿ)/(1 − r); S∞ = a/(1 − r) for |r| < 1 — used in recurring decimals and finance. Binomial expansion: (1 + x)ⁿ = 1 + nx + n(n−1)x²/2! + … valid for |x| < 1 (any n); for positive integer n it terminates (Pascal''s triangle coefficients).

## Part II: Mechanics

### Unit 6: Kinematics

Position, velocity (rate of change of position), acceleration (rate of change of velocity). For constant acceleration use the SUVAT equations: v = u + at; s = ut + ½at²; v² = u² + 2as; s = ½(u + v)t.

**Worked example:** A car brakes from 25 m/s and stops in 50 m. v² = u² + 2as → 0 = 625 + 2a(50) → a = −6.25 m/s². Braking distance doubles when speed doubles — explain this in "why" questions.

Variable acceleration: v = ds/dt, a = dv/dt; reverse with integration. Model assumptions: ignore air resistance unless stated; treat bodies as particles.

### Unit 7: Forces and Newton''s Laws

Force as a vector: resolve into components (F cos θ horizontal, F sin θ vertical). Weight W = mg (g = 9.8 or 10 m/s² — state it). Connected particles: a car towing a trailer — write F = ma for each body and eliminate the tension. Inclined planes: resolve gravity into mg sin θ (along slope) and mg cos θ (into slope). Friction: F ≤ μR, limiting equilibrium when F = μR.

**Worked example:** A 2 kg block on a 30° frictionless incline: a = g sin 30° = 4.9 m/s².

### Unit 8: Momentum, Projectiles and Work–Energy

Momentum = mv; conservation in collisions (elastic: kinetic energy also conserved). Projectiles: horizontal motion constant (s = ut), vertical motion under gravity (SUVAT) — time of flight from vertical, range from horizontal × time; the path is a parabola. Work = Fd cos θ; power = work/time = Fv; energy: KE = ½mv², PE = mgh; conservation of mechanical energy when resistance is absent.

## Practice Paper (GCE style)

1. Solve 2x² − 5x − 3 = 0 by factorisation. (4)
2. Find the gradient of the normal to y = x² at x = 2. (4)
3. Solve cos 2x = 0.5 for 0° ≤ x ≤ 180°. (5)
4. Differentiate y = x² sin x. (4)
5. Find the stationary points of y = x³ − 12x and classify them. (6)
6. Evaluate ∫₁³ (2x + 1/x) dx. (4)
7. Sum the series 5 + 8 + 11 + … to 20 terms. (4)
8. A stone is thrown horizontally at 15 m/s from a 20 m cliff. Find the time of flight and range (g = 10). (6)
9. A 800 kg car tows a 200 kg trailer with a driving force 3000 N against 500 N resistance. Find the acceleration and the tension. (7)
10. A block slides down a 25° incline with μ = 0.2. Find its acceleration. (6)

## Final exam strategy

- Paper 2 is structured: part (a) usually sets up part (b) — if stuck, quote the method and move on.
- Mechanics: always draw a force diagram first; state your modelling assumptions ("the block is modelled as a particle; air resistance is neglected").
- Calculus: write the rule you are using before applying it — method marks dominate.
- Check units and exact values: leave answers in surd/π form unless a decimal is requested.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-pms-advanced', 'Pure Mathematics with Statistics', 'Complete A-Level Pure Mathematics with Statistics Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Pure Mathematics with Statistics Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Pure Mathematics with Statistics (subject code 0775), the mathematics of the Commercial series (A6) and an option for Arts. Statistics is the most practical A-Level maths: it teaches you to reason with data — a skill examiners test through interpretation, not just calculation.

## Part I: Pure Mathematics

### Unit 1: Algebra

Quadratics: factorisation, formula, completing the square, discriminant. Simultaneous equations (linear–linear, linear–quadratic). Inequalities: solve graphically; remember to flip the sign when multiplying by a negative. Polynomials: factor and remainder theorems, division. Partial fractions: split (3x + 5)/((x−1)(x+2)) into A/(x−1) + B/(x+2) — needed for integration.

### Unit 2: Functions, Coordinate Geometry and Trigonometry

Functions: domain, range, inverse, composite. Lines: gradient, forms, perpendicularity. Circles: (x−a)² + (y−b)² = r². Trigonometry: radians, identities (sin²+cos²=1), compound and double angles, general solutions of trig equations, sine and cosine rules for any triangle.

### Unit 3: Calculus

Differentiation: xⁿ, eˣ, ln x, trig; chain, product, quotient rules; stationary points and their classification; tangents and normals; connected rates. Integration: standard integrals, substitution, parts, partial fractions; definite integrals and areas; volumes of revolution. Series: arithmetic and geometric, binomial expansion.

## Part II: Statistics

### Unit 4: Data Representation

Types of data: qualitative, discrete, continuous. Tables and diagrams: bar charts, pie charts, histograms (frequency DENSITY on the y-axis for unequal class widths — the classic error), cumulative frequency curves, box plots, stem-and-leaf.

Measures of location: mean (Σfx/Σf), median (position (n+1)/2; from a cumulative curve read the 50th percentile), mode. Measures of spread: range, interquartile range (Q3 − Q1 — resistant to outliers), variance and standard deviation (σ = √(Σfx²/Σf − mean²)).

**Worked example:** Marks 2, 4, 4, 6, 9: mean = 25/5 = 5; Σx² = 4+16+16+36+81 = 153; variance = 153/5 − 25 = 5.6; σ ≈ 2.37.

**Interpretation (where marks live):** compare two datasets on BOTH location and spread: "Class A''s mean (62) is higher than Class B''s (55), but A''s larger SD (12 vs 6) shows more variation — B is more consistent."

### Unit 5: Probability

P(A) = favourable/total. Addition: P(A∪B) = P(A) + P(B) − P(A∩B). Multiplication: independent events P(A∩B) = P(A)P(B). Conditional probability: P(A|B) = P(A∩B)/P(B). Tree diagrams organise two-stage experiments. Venn diagrams solve survey problems.

**Worked example:** 60% of students study maths, 40% physics, 25% both. P(maths or physics) = 0.6 + 0.4 − 0.25 = 0.75. P(physics | maths) = 0.25/0.6 ≈ 0.417.

### Unit 6: Probability Distributions

Discrete random variables: E(X) = Σx·P(x); Var(X) = E(X²) − [E(X)]². Binomial distribution: n trials, probability p, P(X = r) = ⁿCᵣ pʳ(1−p)ⁿ⁻ʳ; mean np. Use it for yes/no experiments (defective items, pass/fail).

Normal distribution: symmetric, bell-shaped, defined by μ and σ. Standardise: Z = (X − μ)/σ; use tables to find probabilities. P(X < μ + σ) ≈ 0.84; the empirical rule: 68% within 1σ, 95% within 2σ. Reverse problems: given a probability, find the boundary value or μ/σ.

**Worked example:** Heights are N(170, 8²). P(X > 180) = P(Z > 1.25) = 1 − 0.8944 = **0.1056**.

### Unit 7: Correlation and Regression

Scatter diagrams show association. Correlation coefficient r measures linear strength: r = +1 perfect positive, 0 no linear relation, −1 perfect negative. Interpretation: correlation is NOT causation — ice-cream sales and drownings correlate through a third factor (heat). Regression line y = a + bx (least squares): use it to predict within the data range (interpolation); extrapolation is unreliable. b is the change in y per unit x.

### Unit 8: Sampling

Census vs sample. Random sampling: every member has an equal chance (random numbers). Systematic: every kth. Stratified: proportional to group sizes — sample size for a stratum = (stratum size ÷ population) × total sample. Quota and convenience are non-random (bias risk). Sampling errors and bias: explain why a sample of market traders cannot represent all Cameroonians.

## Practice Paper (GCE style)

1. Solve the inequality x² − 4x − 5 < 0. (4)
2. Express (2x+1)/(x²−1) in partial fractions. (5)
3. Differentiate y = ln(3x² + 1). (4)
4. For data 3, 7, 8, 10, 12: find the mean and standard deviation. (4)
5. From a cumulative frequency curve, estimate the median and IQR. (4)
6. A die is rolled twice. Find P(sum = 8). (3)
7. 5% of bulbs are defective. In a box of 20, find P(exactly 2 defective). (5)
8. Weights are N(65, 4²). Find P(X > 70). (4)
9. Given r = −0.85 between study hours and failures, interpret the relationship. (3)
10. A school has 600 boys and 400 girls. Use stratified sampling to select 50. (4)

## Final exam strategy

- Statistics marks reward interpretation: after every calculation, write one sentence of meaning.
- Memorise the binomial and normal formulas and when each applies.
- Always sketch the normal curve and shade the required area before using tables.
- In Paper 2, show the formula, the substitution, and the answer with units where relevant.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-fmath-advanced', 'Further Mathematics', 'Complete A-Level Further Mathematics Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Further Mathematics Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Further Mathematics (subject code 0771), the extension paper for strong mathematicians (often paired with Pure Math with Mechanics or Statistics). It assumes full mastery of the core A-Level pure syllabus and goes deeper: complex numbers, matrices, advanced calculus, and numerical methods.

## Unit 1: Complex Numbers

Definition: i² = −1; z = a + bi. Arithmetic: add, multiply, divide (multiply by the conjugate). Argand diagram: modulus |z| = √(a² + b²), argument arg z. Polar form: z = r(cos θ + i sin θ) = re^(iθ); multiplication multiplies moduli and adds arguments. De Moivre''s theorem: (cos θ + i sin θ)ⁿ = cos nθ + i sin nθ — derive multiple-angle identities and find roots of unity (they form a regular polygon on the unit circle).

**Worked example:** Solve z³ = 1. Roots: z = e^(2kπi/3), k = 0, 1, 2 → 1, −½ + (√3/2)i, −½ − (√3/2)i.

## Unit 2: Matrices and Linear Algebra

Operations: addition, scalar multiplication, matrix multiplication (rows × columns — order matters). Determinants (2×2, 3×3), inverse matrices (2×2: swap, negate, divide by det). Solving systems: matrix method and Cramer''s rule; singular systems (det = 0) — no unique solution. Transformations: matrices represent rotations, reflections, enlargements, shears in 2D — find the matrix for a rotation by θ: [[cos θ, −sin θ], [sin θ, cos θ]]. Eigenvalues and eigenvectors (2×2): solve det(A − λI) = 0.

## Unit 3: Advanced Calculus

Techniques beyond the core: integration by parts (repeated, reduction formulas), trigonometric substitutions, partial fractions for integration. Improper integrals (infinite limits — convergence). Applications: volumes of revolution about both axes, mean value of a function, centroids of areas. Differential equations: first order (separable variables, integrating factor), second order linear with constant coefficients (complementary function + particular integral; distinguish real distinct, repeated, and complex roots).

**Worked example:** dy/dx = xy → separate: ∫dy/y = ∫x dx → ln y = x²/2 + c → y = Ae^(x²/2).

## Unit 4: Series and Expansions

Maclaurin series: f(x) = f(0) + f''(0)x + f''''(0)x²/2! + … Standard expansions: eˣ, sin x, cos x, ln(1+x), (1+x)ⁿ. Use series for limits and approximations. Hyperbolic functions: sinh x = (eˣ − e⁻ˣ)/2, cosh x = (eˣ + e⁻ˣ)/2; identities (cosh² − sinh² = 1); their inverses and derivatives.

## Unit 5: Numerical Methods

Root finding: bisection method (interval halving), Newton–Raphson xₙ₊₁ = xₙ − f(xₙ)/f''(xₙ) — iterate and check convergence. Numerical integration: trapezium rule and Simpson''s rule with error discussion. Numerical solution of differential equations: Euler''s method. Know when numerical methods are needed (no analytic solution) and how to estimate accuracy.

## Unit 6: Vectors in Three Dimensions

Vectors: components, magnitude, direction cosines; dot product (angle, perpendicularity) and cross product (area, normal vector). Lines and planes in 3D: vector, parametric and Cartesian forms; intersections; distances from points to lines and planes. Applications to geometry proofs.

## Practice Paper (GCE style)

1. Express (3 + 4i)/(1 − i) in the form a + bi. (4)
2. Use De Moivre to prove cos 3θ = 4cos³θ − 3cos θ. (6)
3. Find the inverse of [[2, 1], [5, 3]] and use it to solve a system. (6)
4. Find the eigenvalues of [[4, 1], [2, 3]]. (5)
5. Integrate x²eˣ dx. (5)
6. Solve dy/dx + y tan x = sec x. (7)
7. Expand e^(2x) to four terms. (4)
8. Use Newton–Raphson to solve x³ − 2x − 5 = 0 to 3 d.p. (6)
9. Find the distance from point (1, 2, 3) to the plane x + 2y − z = 4. (6)
10. Apply Simpson''s rule with 4 intervals to estimate ∫₀¹ e^(x²) dx. (6)

## Final exam strategy

- Further Maths rewards accuracy under pressure: drill standard results until automatic.
- Show every step — partial credit is generous but only for visible method.
- Learn the standard Maclaurin series and the hyperbolic identities by heart.
- Attempt every part: even a correct first line of a Newton–Raphson iteration earns marks.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-amaths-advanced', 'Mathematics', 'Complete A-Level Mathematics Course (Subsidiary) — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Mathematics Course (Subsidiary) — Cameroon GCE

## What this course is

"Mathematics" at A-Level is the subsidiary paper taken by Science and Commercial candidates alongside their principal subjects. It covers the core of pure mathematics plus statistics essentials at a standard between O-Level and the full Pure Mathematics papers. This course covers exactly that scope.

## Unit 1: Algebra

Indices, logarithms and their laws; solving exponential equations. Quadratics: factorisation, formula, completing the square, discriminant. Simultaneous equations. Inequalities (linear and quadratic). Sequences: arithmetic and geometric, nth terms and sums. Binomial expansion for positive integer powers.

**Worked example:** Solve 3ˣ = 81. 81 = 3⁴ → x = **4**. And: log₂(x) = 5 → x = 2⁵ = **32**.

## Unit 2: Functions and Graphs

Linear and quadratic functions; their graphs, roots, and intersections. Variation (direct, inverse, joint). Graphical solution of equations. Transformations: translations, reflections, stretches.

## Unit 3: Trigonometry

Ratios and exact values; solving right triangles; sine and cosine rules; area of a triangle (½ab sin C); radians; simple trig equations; basic identities.

## Unit 4: Calculus (introduction)

Differentiation of polynomials and simple products; gradients, tangents, normals; increasing/decreasing; maxima and minima with the second derivative. Integration of polynomials; definite integrals; areas under curves.

**Worked example:** A box with a square base and no lid has volume 32,000 cm³. Minimise the surface: S = x² + 4xh with h = 32000/x² → S = x² + 128000/x. dS/dx = 2x − 128000/x² = 0 → x³ = 64000 → x = 40 cm, h = 20 cm. Minimum material: **2400 cm²**.

## Unit 5: Statistics Essentials

Data collection and presentation (tables, bar charts, pie charts, histograms). Averages: mean, median, mode (from lists and frequency tables). Spread: range, interquartile range, standard deviation. Simple probability: single events, addition rule, tree diagrams for two stages.

**Worked example:** Data 4, 8, 15, 16, 23, 42: mean = 108/6 = 18; median = (15+16)/2 = 15.5; range = 38.

## Exam structure and strategy

- The paper mixes short-answer and structured questions; Paper 1-style MCQs may also appear in school mocks.
- Show the formula, substitute, evaluate, and state units.
- Algebra fluency decides everything: drill indices, logs and quadratics until automatic.
- In mensuration-style problems, draw the figure and label it before writing equations.
- Time: 1 minute per mark; leave the last 10 minutes for checking arithmetic.

## Practice Paper

1. Solve: 2ˣ⁺¹ = 32. (2)
2. Simplify: log₁₀ 25 + log₁₀ 4. (2)
3. Solve the pair: 2x + y = 11; x − 2y = −7. (5)
4. Find the range of values: 3x − 2 > 7. (2)
5. The 3rd term of an AP is 11 and the 7th is 27. Find the first term and common difference. (5)
6. Expand (2x − 3)⁴. (5)
7. Differentiate: y = x⁴ − 3x² + 2x. (3)
8. Find the maximum of y = −2x² + 8x + 1. (5)
9. Evaluate ∫₁⁴ (3x² + 2) dx. (5)
10. For 12, 15, 18, 21, 24: find the mean and standard deviation. (5)

**Answers:** 1) x=4 2) 2 3) x=3, y=5 4) x>3 5) a=3, d=4 6) 16x⁴−96x³+216x²−216x+81 7) 4x³−6x+2 8) 9 at x=2 9) 195 10) mean 18, σ ≈ 4.24');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-aphys-advanced', 'Physics', 'Complete A-Level Physics Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Physics Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Physics (subject code 0780), core of the Science series. A-Level physics = O-Level physics with calculus, vectors and deeper explanation. The examiner rewards: correct definitions, vector diagrams, and "explain" answers that link cause to effect.

## Unit 1: Mechanics

### Lesson 1.1: Kinematics and projectiles

SUVAT for constant acceleration. Projectiles: resolve launch velocity (u cos θ horizontal, u sin θ vertical); horizontal motion uniform, vertical under g. Time of flight = 2u sin θ/g; range = u² sin 2θ/g; max height = u² sin²θ/2g. Variable acceleration: use calculus (v = ds/dt, a = dv/dt).

### Lesson 1.2: Newton''s laws, momentum and energy

F = ma with free-body diagrams. Momentum conservation in collisions and explosions; impulse = FΔt = Δ(mv). Work–energy theorem; power P = Fv. Elastic vs inelastic collisions (KE conserved or not). Circular motion: a = v²/r directed to the centre; F = mv²/r — explains banked tracks and satellites.

**Worked example:** A 0.5 kg ball at 4 m/s hits a wall and rebounds at 3 m/s. Impulse = Δp = 0.5(4 − (−3)) = **3.5 kg m/s**.

## Unit 2: Materials

Hooke''s law F = kx; stress = F/A, strain = x/L; Young modulus E = stress/strain (Pa) — the gradient of a stress–strain graph. Elastic limit, yield point, breaking stress. Ductile (copper) vs brittle (glass) behaviour. Density and upthrust (Archimedes): upthrust = weight of displaced fluid; floating when upthrust = weight.

## Unit 3: Oscillations and Waves

### Lesson 3.1: Simple harmonic motion

SHM: acceleration ∝ displacement, directed to the equilibrium point: a = −ω²x. x = A sin ωt; v = Aω cos ωt; T = 2π/ω. Energy swaps between KE and PE; total energy constant. The simple pendulum: T = 2π√(l/g) — the standard practical (measure T for different l, plot T² against l, gradient = 4π²/g).

### Lesson 3.2: Waves and optics

v = fλ; progressive vs stationary waves (nodes/antinodes — stretched strings, air columns). Superposition, interference (coherent sources, path difference), diffraction through slits (single slit pattern; double slit Young''s fringes: λ = ax/D). Refraction: Snell''s law n₁ sin θ₁ = n₂ sin θ₂; critical angle and total internal reflection (optical fibres). Diffraction grating: nλ = d sin θ.

## Unit 4: Electricity

### Lesson 4.1: DC circuits

Current I = Q/t; drift velocity explains why current is the same everywhere in a series loop. Resistance: R = ρL/A (resistivity ρ — a material property; temperature dependence: metals increase, thermistors decrease). Kirchhoff''s laws: charge and energy conservation — use them for multi-loop circuits. Potential dividers: V_out = V × R₂/(R₁+R₂) — sensors (LDR, thermistor) in divider circuits switch automatically.

**Worked example:** EMF 12 V, internal resistance 0.5 Ω, external 5.5 Ω: I = 12/6 = 2 A; terminal p.d. = 12 − 2(0.5) = **11 V**.

### Lesson 4.2: Fields — electric and gravitational

Coulomb''s law F = Q₁Q₂/4πε₀r²; electric field E = F/Q; uniform field between plates E = V/d. Gravitational: F = Gm₁m₂/r²; g = GM/r². Field strength, potential, potential energy; equipotentials. Analogy between the two fields is a favourite essay.

### Lesson 4.3: Capacitance and magnetism

Capacitor: C = Q/V; energy = ½CV²; exponential charge/discharge with time constant RC. Magnetic fields: F = BIL (wire), F = BQv (charge); Fleming''s left-hand rule. Electromagnetic induction: Faraday''s law (induced EMF ∝ rate of flux change), Lenz''s law (direction opposes change); AC generators; transformers Vs/Vp = Ns/Np (ideal: power in = power out); rectification with diodes; smoothing with capacitors.

## Unit 5: Thermal Physics and Gases

Internal energy = total kinetic + potential energy of molecules. First law: ΔU = Q − W. Ideal gas: pV = nRT = NkT; kinetic theory assumptions (point molecules, elastic collisions, no attraction) and pV = ⅓Nm⟨c²⟩. Specific heat capacity and latent heat calculations with mixtures. Absolute zero: −273 °C, where pressure → 0.

## Unit 6: Atomic and Nuclear Physics

Photoelectric effect: light ejects electrons only above a threshold frequency — evidence for photons E = hf; Einstein''s equation hf = φ + ½mv²ₘₐₓ. Energy levels and line spectra. Nuclear: Rutherford scattering → nuclear model; binding energy and mass defect (E = mc²); radioactivity: α, β, γ properties and safety; half-life decay N = N₀e^(−λt); uses (dating, tracers, therapy) and hazards. Fission (reactors, chain reaction, control rods) and fusion (stars, energy of the future).

## Practice Paper (GCE style)

1. A projectile is launched at 20 m/s at 30°. Find the range (g = 10). (5)
2. Define impulse and calculate it for a 0.2 kg ball changing velocity from 10 m/s to −6 m/s. (4)
3. A car rounds a bend of radius 50 m at 20 m/s. Find the centripetal acceleration. (3)
4. Sketch a stress–strain graph for a ductile metal, labelling the elastic limit. (4)
5. A pendulum of length 0.99 m has period 2.0 s. Find g. (4)
6. Explain total internal reflection and one application. (4)
7. In a potential divider, V = 9 V, R₁ = 2 kΩ, R₂ (thermistor) = 3 kΩ. Find V_out. (4)
8. State the kinetic theory assumptions for an ideal gas. (4)
9. A source has half-life 5 days. What fraction remains after 15 days? (3)
10. Explain why the photoelectric effect supports the photon model. (4)

## Final exam strategy

- Definitions must be exact: "SHM is motion in which the acceleration is directly proportional to the displacement from equilibrium and directed towards it."
- Mechanics: free-body diagram first, then resolve, then apply F = ma.
- Electricity: redraw circuits cleanly before solving; label currents with directions.
- Paper 3 practical: master pendulum, resistivity, capacitor discharge, and lens experiments; always discuss errors and improvements.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-achem-advanced', 'Chemistry', 'Complete A-Level Chemistry Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Chemistry Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Chemistry (subject code 0715), core of the Science series. A-Level chemistry is built on three pillars: physical (energetics, kinetics, equilibria), inorganic (periodicity), organic (mechanisms). Mechanism diagrams and mole calculations carry the most marks.

## Unit 1: Physical Chemistry — Energetics

### Lesson 1.1: Enthalpy changes

ΔH: exothermic (negative — bonds formed release energy) vs endothermic (positive). Standard conditions. Enthalpy of formation, combustion, neutralisation. Hess''s law: ΔH is path-independent — construct cycles to find unknown enthalpies.

**Worked example:** Given ΔHf(CO₂) = −394, ΔHf(H₂O) = −286, ΔHf(C₃H₈) = −104 kJ/mol, find ΔHc(propane):
C₃H₈ + 5O₂ → 3CO₂ + 4H₂O. ΔH = [3(−394) + 4(−286)] − (−104) = (−1182 − 1144) + 104 = **−2222 kJ/mol**.

Bond enthalpies: ΔH = Σ(bonds broken) − Σ(bonds formed). Calorimetry: Q = mcΔθ.

### Lesson 1.2: Entropy and free energy

Entropy S measures disorder: gases > liquids > solids; it rises with temperature and when moles of gas increase. ΔG = ΔH − TΔS: a reaction is feasible when ΔG < 0. Explain why endothermic reactions can still occur (large positive ΔS).

## Unit 2: Kinetics and Equilibria

### Lesson 2.1: Rates of reaction

Rate = Δconcentration/Δtime. Collision theory: rate depends on frequency AND energy of collisions. Factors: concentration/pressure, temperature (Maxwell–Boltzmann distribution shifts — more molecules exceed Ea), surface area, catalysts (lower Ea, unchanged position of equilibrium). Follow rates by measuring gas volume, colour change, or mass loss. Rate equations: rate = k[A]ᵐ[B]ⁿ; orders from experiments; half-life behaviour identifies first order.

### Lesson 2.2: Reversible reactions and equilibrium

Dynamic equilibrium: forward and reverse rates equal, concentrations constant. Le Chatelier: the system opposes changes — pressure shifts to fewer gas moles (Haber: 4 mol → 2 mol, so high pressure favours NH₃), temperature shifts to the endothermic side, catalysts change rate only. Kc and Kp expressions; calculate equilibrium concentrations from initial amounts and extent of reaction.

**Worked example (Haber process):** N₂ + 3H₂ ⇌ 2NH₃, ΔH = −92 kJ/mol. Explain the compromise temperature: low T favours yield (exothermic) but is slow; ~450 °C balances rate and yield; Fe catalyst speeds attainment.

## Unit 3: Electrochemistry

Oxidation numbers; oxidising/reducing agents. Half-cells and standard electrode potentials E° (vs hydrogen electrode); EMF = E°(cathode) − E°(anode); positive EMF → feasible reaction. Electrochemical series predicts displacement and corrosion. Electrolysis of aqueous solutions with selective discharge; Faraday''s laws: mass deposited = (Q × M)/(n × F), F = 96,500 C/mol.

**Worked example:** Charge through a CuSO₄ cell: Q = It = 2 × 1800 = 3600 C. n(e⁻) = 3600/96500 = 0.0373 mol; Cu²⁺ + 2e⁻ → Cu, so n(Cu) = 0.0186 mol; mass = 0.0186 × 63.5 ≈ **1.18 g**.

## Unit 4: Inorganic Chemistry — Periodicity

Trends across Period 3 (Na → Ar): atomic radius decreases (increasing nuclear charge), ionisation energy rises with two dips (Group III and V anomalies — subshell stability), melting points peak at giant structures (Si) and dip at molecular ones. Group II: reactivity increases down the group; hydroxides increasingly soluble; thermal stability of carbonates increases down the group. Group VII: oxidising power decreases down the group; displacement reactions; disproportionation (Cl₂ + 2OH⁻ → Cl⁻ + ClO⁻ + H₂O). Transition metals: variable oxidation states (Fe²⁺/Fe³⁺), coloured complexes (d-orbital splitting), catalysis (Fe in Haber, V₂O₅ in contact process), complex ions with ligands (Cu(NH₃)₄²⁺ deep blue).

## Unit 5: Organic Chemistry

### Lesson 5.1: Functional groups and nomenclature

Alkanes (free-radical substitution: initiation, propagation, termination), alkenes (electrophilic addition: HBr, Br₂; Markovnikov''s rule), halogenoalkanes (nucleophilic substitution: SN1/SN2; hydrolysis rates with AgNO₃), alcohols (oxidation: primary → aldehyde → acid; secondary → ketone; dehydration to alkenes), aldehydes/ketones (2,4-DNPH test; Tollens'' silver mirror for aldehydes), carboxylic acids (weak, esterify with alcohols + H₂SO₄), esters (perfumes; hydrolysis), amines (bases; diazonium salts), nitriles.

### Lesson 5.2: Mechanisms — the mark-winners

Draw every mechanism with curly arrows, lone pairs, and charges:

- Electrophilic addition: Br₂ + ethene → bromonium ion → dibromoethane.
- Nucleophilic substitution: OH⁻ attacks the δ+ carbon of bromoethane, Br⁻ leaves.
- Electrophilic substitution (arenes): NO₂⁺ electrophile attacks benzene; the ring''s delocalised electrons attack back; H⁺ leaves — nitration of benzene with conc. HNO₃/H₂SO₄ at 50 °C.
- Free-radical substitution: UV splits Cl₂; radicals propagate; termination pairs radicals.

### Lesson 5.3: Synthesis routes

Learn the interconversions map: alkane → halogenoalkane → alcohol → aldehyde/ketone → acid → ester; alkene → alcohol (hydration); alcohol → alkene (dehydration). Exam questions give a target molecule and ask for the route — quote reagents AND conditions at every step.

## Unit 6: Analytical Chemistry

Titration calculations (acid–base, redox with KMnO₄ — self-indicating purple→colourless). Chromatography: separation by differential adsorption; Rf = distance moved by spot ÷ distance moved by solvent. Spectroscopy basics: IR (functional group peaks — O–H broad, C=O sharp), mass spectrometry (molecular ion, fragmentation). Qualitative analysis: cation tests (NaOH/NH₃ precipitates), anion tests (BaCl₂ sulfate, AgNO₃ halides).

## Practice Paper (GCE style)

1. Define standard enthalpy of formation. (2)
2. Use Hess''s law with the data above to find ΔHc of propane. (5)
3. Explain, using Maxwell–Boltzmann, why a small temperature rise greatly increases rate. (5)
4. For 2SO₂ + O₂ ⇌ 2SO₃, ΔH = −196 kJ/mol: predict the effect of (a) increased pressure, (b) increased temperature. (4)
5. Calculate the EMF of a cell with E°(Zn²⁺/Zn) = −0.76 V and E°(Cu²⁺/Cu) = +0.34 V. (3)
6. Explain why transition metal complexes are coloured. (4)
7. Name CH₃CH₂CH₂OH and classify it. (2)
8. Outline the mechanism for the reaction of ethene with HBr. (5)
9. Give the reagents and conditions to convert ethanol to ethanoic acid. (3)
10. A titration: 25.0 cm³ of NaOH needs 22.5 cm³ of 0.100 mol/dm³ HCl. Find the NaOH concentration. (5)

## Final exam strategy

- Mechanisms: practise until the arrows are automatic — they are the largest single mark source.
- Always quote conditions (temperature, catalyst, solvent) — "state the conditions" questions fail without them.
- Equilibrium answers: name the principle (Le Chatelier) and explain the shift in terms of opposing the change.
- Learn the analytical tests as a table; the practical paper recycles them every year.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-abio-advanced', 'Biology', 'Complete A-Level Biology Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Biology Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Biology (subject code 0710), core of the Science series (S2–S5). A-Level biology demands depth: explain HOW and WHY, use precise terminology, and link structure to function. The practical paper (Paper 3) tests microscopy, experiments and statistics.

## Unit 1: Biological Molecules

### Lesson 1.1: Water and carbohydrates

Water: polar, hydrogen-bonded — high specific heat (stable temperatures), high latent heat (cooling), cohesion (transpiration pull), solvent (transport medium). Carbohydrates: monosaccharides (glucose C₆H₁₂O₆ — reducing sugar), disaccharides (maltose, sucrose — non-reducing), polysaccharides (starch — plant storage, α-glucose helix; glycogen — animal storage, branched; cellulose — β-glucose, straight chains, hydrogen bonds, cell walls).

### Lesson 1.2: Lipids, proteins and nucleic acids

Lipids: triglycerides (glycerol + 3 fatty acids; ester bonds; saturated vs unsaturated), phospholipids (bilayers — membranes), functions (energy store, insulation, protection, membranes).

Proteins: amino acids (amine + carboxyl + R group) joined by peptide bonds (condensation). Structure levels: primary (sequence), secondary (α-helix, β-pleated sheet — hydrogen bonds), tertiary (3D — ionic, disulfide, hydrophobic interactions), quaternary (haemoglobin — 4 subunits + haem groups). Functions: enzymes, transport, structure (collagen), defence (antibodies). Denaturation breaks tertiary bonds.

Nucleic acids: DNA (deoxyribose, double helix, A–T and C–G pairing, antiparallel strands) and RNA (ribose, single strand, uracil). Semi-conservative replication: helicase unwinds, polymerase builds complementary strands.

## Unit 2: Cells and Membranes

Prokaryotes (no nucleus, small ribosomes, cell wall of peptidoglycan) vs eukaryotes (nucleus, organelles). Organelles: mitochondria (cristae — aerobic respiration), chloroplasts (thylakoids, stroma — photosynthesis), ribosomes (protein synthesis), ER/Golgi (transport, packaging), lysosomes (digestion). Fluid mosaic model: phospholipid bilayer with intrinsic/extrinsic proteins — channels, carriers, receptors. Transport: diffusion, facilitated diffusion, osmosis, active transport (ATP), endo/exocytosis. Cell cycle: mitosis (prophase, metaphase, anaphase, telophase — identical diploid cells) and meiosis (two divisions, crossing over, independent assortment — variation, haploid gametes).

## Unit 3: Exchange and Transport

### Lesson 3.1: Gas exchange and breathing

Exchange surfaces: large area, thin, moist, good blood supply, ventilation maintains gradients. Human lungs: trachea → bronchi → bronchioles → alveoli (300 million, huge surface). Ventilation: diaphragm and intercostals; spirometer traces. Fish (countercurrent gills), insects (tracheae), plants (stomata, guard cells).

### Lesson 3.2: Circulation and transport in plants

Double circulation; cardiac cycle (systole/diastole, valves, SAN pacemaker — myogenic); control of heart rate (medulla, adrenaline). Blood vessels and tissue fluid formation (pressure filtration at capillaries; lymph returns excess). Haemoglobin: oxygen dissociation curve (S-shaped, Bohr shift right with CO₂/low pH — unloads oxygen in active tissues). Plants: xylem (cohesion-tension: transpiration, water potential gradients), phloem (mass flow hypothesis: source to sink, loading by active transport), xerophytic adaptations (rolled leaves, sunken stomata, hairs).

## Unit 4: Nutrition, Digestion and Immunity

Digestion: enzymes (amylase, maltase, pepsin, trypsin, lipase), bile emulsification, villi adaptations (microvilli, mitochondria, single-cell epithelium), absorption of glucose/amino acids (co-transport) and fats (lacteals). Immunity: phagocytosis, lymphocytes (B — antibodies, T — cell-mediated), antigen/antibody specificity, primary vs secondary response (memory cells), vaccination (active artificial immunity), passive immunity (antibodies transferred — natural via placenta, artificial via injection). HIV destroys T-helper cells → AIDS; antibiotics do not work on viruses.

## Unit 5: Coordination and Homeostasis

Nervous: resting potential (−70 mV, Na⁺/K⁺ pump), action potential (depolarisation, repolarisation, refractory period — all-or-nothing), myelination and saltatory conduction, synapses (neurotransmitters, unidirectional). Hormonal: insulin/glucagon blood glucose control (negative feedback), diabetes types 1 and 2, ADH and osmoregulation. Kidney: ultrafiltration (Bowman''s capsule), selective reabsorption (glucose, water — loop of Henle countercurrent), ADH water balance. Thermoregulation: hypothalamus, vasodilation/constriction, sweating, shivering.

## Unit 6: Respiration and Photosynthesis

Respiration: glycolysis (cytoplasm, glucose → 2 pyruvate, net 2 ATP), link reaction, Krebs cycle (matrix, CO₂, NADH/FADH₂), oxidative phosphorylation (cristae, electron transport chain, ~32 ATP total). Anaerobic: lactate (muscle) or ethanol (yeast). RQ = CO₂ released/O₂ consumed.

Photosynthesis: light-dependent (thylakoids: photolysis, Z-scheme, ATP + NADPH) and light-independent/Calvin cycle (stroma: RuBP + CO₂ → GP → TP → glucose, RuBP regeneration). Limiting factors: light, CO₂, temperature — explain with graphs. Chromatography separates photosynthetic pigments (Rf values).

## Unit 7: Genetics and Evolution

Monohybrid/dihybrid crosses (9:3:3:1 with independent assortment), test cross, codominance (sickle cell — HbA/HbS, heterozygote advantage in malaria zones — a Cameroonian exam favourite), multiple alleles (ABO blood groups), sex linkage (colour blindness, haemophilia — X-linked recessive), linkage and crossing over (recombination frequencies), chi-squared test (χ² = Σ(O−E)²/E; compare to critical value at p = 0.05). Hardy–Weinberg: p² + 2pq + q² = 1. Variation: genetic + environmental. Natural selection (stabilising, directional, disruptive), speciation (geographical isolation → allopatric), evidence for evolution.

## Unit 8: Ecology and Biotechnology

Ecosystems: energy flow (10% rule, pyramids), nutrient cycles (carbon, nitrogen — nitrogen fixation, nitrification, denitrification), populations (growth curves, carrying capacity, predator–prey cycles), succession. Conservation: Cameroon''s biodiversity (Congo Basin, Waza, Korup), deforestation, sustainable practices. Biotechnology: fermentation (industrial conditions: aseptic, temperature, pH, aeration), enzymes in industry, genetic engineering (restriction enzymes, plasmids, transformed bacteria producing insulin), ethical considerations.

## Practice Paper (GCE style)

1. Explain two properties of water that make it essential for life. (4)
2. Describe the formation of a peptide bond. (3)
3. Compare mitosis and meiosis — three differences. (6)
4. Explain the Bohr shift and its advantage. (5)
5. Describe the sequence of events at a synapse. (6)
6. Explain how the loop of Henle produces concentrated urine. (6)
7. Calculate the ATP yield of one glucose molecule in aerobic respiration. (4)
8. A cross TtBb × TtBb: give the phenotypic ratio. (4)
9. A population: 64% show the recessive phenotype. Find q, p, and heterozygote frequency. (5)
10. Design an experiment to compare CO₂ production by yeast at two temperatures. (6)

## Final exam strategy

- Answer "explain" questions with a mechanism: X happens → therefore Y → which causes Z.
- Learn the named examples: haemoglobin Bohr shift, sickle cell, insulin feedback, Calvin cycle.
- Practise genetics crosses until ratios are automatic; show Punnett squares.
- Paper 3: learn t-tests/chi-squared, microscope calibration, and the standard enzyme experiments (pH, temperature, substrate concentration).');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-aecon-advanced', 'Economics', 'Complete A-Level Economics Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Economics Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Economics (subject code 0725), core of the Commercial series (A6) and popular in Arts. A-Level economics = O-Level depth plus analysis and evaluation. Every essay needs: definition → analysis (chains of reasoning) → evaluation (depends on, however, in the short run vs long run).

## Unit 1: Microeconomics — Markets

### Lesson 1.1: Demand, supply and elasticity (A-Level depth)

Beyond O-Level: derive demand from marginal utility theory (diminishing marginal utility explains the downward slope); consumer equilibrium where MU/P is equal across goods. Elasticities: PED, YED (income elasticity — normal >0, inferior <0, luxury >1), XED (cross elasticity — substitutes >0, complements <0), PES (supply — time is the key determinant: supply is more elastic in the long run). Applications: tax incidence falls mainly on the inelastic side; agricultural price instability from PES < PED.

### Lesson 1.2: Market failure

Markets fail when they misallocate resources: externalities (pollution — negative external cost; vaccination — positive external benefit), public goods (non-rival, non-excludable — street lighting; free-rider problem), information gaps, monopoly power. Remedies: taxes (Pigouvian), subsidies, regulation, tradable permits, state provision. Evaluate each: administrative cost, information needed, unintended effects.

## Unit 2: Theory of the Firm

Costs: fixed, variable, average, marginal (MC = ΔTC/ΔQ). Law of diminishing returns in the short run (one factor fixed) — explains the U-shaped average cost curve. Long run: economies of scale (technical, purchasing, financial, managerial, risk-bearing) and diseconomies (coordination, communication). Market structures: perfect competition (many firms, homogeneous product, free entry — P = MC in long-run equilibrium, only normal profit), monopoly (single seller, barriers to entry, price > MC, deadweight loss; but possible economies of scale and R&D), monopolistic competition (many firms, differentiated products — restaurants, salons), oligopoly (few interdependent firms, price rigidity, non-price competition — MTN vs Orange vs Camtel). Evaluation: competition vs scale trade-off.

## Unit 3: Macroeconomics — National Income

### Lesson 3.1: Measuring the economy

GDP: total value of final goods/services produced in a year (income, output, expenditure methods — they must agree). Nominal vs real (adjust for inflation); GDP per capita for comparisons; limitations (informal sector — huge in Cameroon, non-market work, distribution). Circular flow of income: households ↔ firms; injections (I, G, X) and withdrawals (S, T, M); equilibrium when injections = withdrawals. The multiplier: 1/(1−MPW) — an investment of 10 billion FCFA with MPW = 0.4 raises income by 25 billion.

### Lesson 3.2: Aggregate demand and supply

AD = C + I + G + (X − M). Determinants of each component; the interest rate links them. AS: short-run (upward sloping) vs long-run (vertical at full employment). Equilibrium and shifts: demand-pull inflation (AD shifts right at full employment), cost-push (SRAS shifts left — fuel price rises). The trade (business) cycle: boom, recession, slump, recovery.

## Unit 4: Money, Banking and Inflation

Functions of money; money supply (M1, M2). Demand for money (transactions, precautionary, speculative). Central bank (BEAC): monetary policy tools — discount rate, reserve requirements, open market operations; it manages the CFA franc peg to the euro. Commercial banks: credit creation via the credit multiplier.

Inflation: demand-pull vs cost-push; measurement (CPI); effects (redistributes from savers to borrowers, menu costs, hurts exports, uncertainty). Deflation''s dangers (delayed spending, debt burden). Unemployment: types (frictional, structural, cyclical, seasonal; disguised in agriculture), costs, remedies matched to type.

## Unit 5: Government Policy

Fiscal policy: government spending and taxation; budget surplus/deficit; expansionary vs contractionary; automatic stabilisers; crowding out debate. Monetary policy: interest rates and money supply. Supply-side policy: education, infrastructure, deregulation — raises potential output. Policy conflicts: inflation vs unemployment (Phillips curve), growth vs environment, internal vs external balance. Evaluation: time lags, information problems, political constraints.

## Unit 6: International Trade and Development

### Lesson 6.1: Trade theory and policy

Comparative advantage: trade pays even when one country is better at everything — specialise where the opportunity cost is lowest (numeric example in the exam). Terms of trade = export prices ÷ import prices. Protection: tariffs, quotas, subsidies — arguments (infant industry, employment) and costs (retaliation, higher prices, inefficiency). CEMAC, the CFA franc zone, EPAs with the EU, AfCFTA.

### Lesson 6.2: Balance of payments

Current account (goods, services, income, transfers) + capital/financial account. Deficits: causes (overvalued currency, low competitiveness) and remedies (devaluation — Marshall–Lerner condition, export promotion, import substitution). Cameroon''s case: oil and cocoa dependence, commodity price shocks, the 1994 devaluation''s lessons.

### Lesson 6.3: Development economics

Development ≠ growth: HDI (income, education, health). Characteristics of developing economies: low income, primary dependence, rapid population growth, dualism. Barriers: savings gap, debt, terms of trade decline, corruption. Strategies: import substitution vs export promotion, aid vs trade, microfinance, structural adjustment (Cameroon''s 1990s experience), sustainable development goals. Evaluation: no single path — context matters.

## Practice Paper (GCE style)

1. Distinguish between PED and YED with one use of each. (5)
2. Explain why a monopoly may be more efficient than a perfectly competitive firm. (6)
3. Evaluate two remedies for negative externalities from industrial pollution in Douala. (8)
4. Explain the multiplier process with a numerical example. (6)
5. Distinguish demand-pull from cost-push inflation with a diagram for each. (8)
6. Discuss whether devaluation improves Cameroon''s balance of trade. (10)
7. Explain comparative advantage with a two-country, two-good example. (8)
8. Evaluate the effectiveness of fiscal policy in reducing unemployment in Cameroon. (10)
9. Distinguish economic growth from economic development. (4)
10. Discuss two barriers to development faced by Cameroon and one strategy to overcome them. (10)

## Final exam strategy

- Essays: introduction (define terms) → 2–3 analysis paragraphs (each a chain: because → therefore → leading to) → evaluation paragraph → conclusion.
- Always draw diagrams where relevant — labelled AD/AS, market structures, elasticities.
- Use Cameroon throughout: BEAC, CEMAC, cocoa, oil, the 1994 devaluation, informal sector.
- Time: roughly 1 minute per mark; a 10-mark essay deserves 10–12 minutes plus planning.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-aacct-advanced', 'Accounting', 'Complete A-Level Accounting Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Accounting Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Accounting (subject code 0705), core of the Commercial series (A6). Accounting rewards format discipline: learn the layout of each statement and account, and the marks follow. Every figure must balance — if it does not, find the error before moving on.

## Unit 1: The Accounting Equation and Double Entry

Assets = Capital + Liabilities. Every transaction affects two entries: debit (assets/expenses increase; liabilities/capital/income decrease) and credit (the reverse). The account format: T-account with debit (left) and credit (right) sides.

**Worked example:** Buy furniture for 200,000 FCFA cash: debit Furniture 200,000; credit Cash 200,000. Sell goods for 50,000 on credit to Ada: debit Ada (debtor) 50,000; credit Sales 50,000.

Books of prime entry: sales day book, purchases day book, cash book (also a ledger account), petty cash book (imprest system), journal (corrections and unusual items). Post to the ledger; balance accounts; extract a trial balance — it proves arithmetical accuracy but NOT complete accuracy (errors of omission, commission, principle, original entry, compensating, and reversal do not show).

## Unit 2: Final Accounts of a Sole Trader

Income statement: Sales − Cost of sales (opening stock + purchases − closing stock) = Gross profit; − expenses = Net profit. Statement of financial position: non-current assets (less depreciation), current assets (stock, debtors, bank, cash), current liabilities (creditors, accruals), net assets = capital + profit − drawings.

Adjustments (the heart of Paper 2):

- Closing stock: valued at lower of cost or net realisable value.
- Depreciation: straight line (cost − residual)/years, or reducing balance × rate on NBV.
- Accruals (owed expenses — add, liability) and prepayments (paid ahead — subtract, asset).
- Bad debts written off (expense) and provision for doubtful debts (adjust the provision to the required % of debtors; the CHANGE is the expense).
- Drawings of stock: add to drawings, deduct from purchases.

**Worked example:** Debtors 400,000; write off 20,000; provision 5% of the rest: (400,000 − 20,000) × 5% = 19,000. If the old provision was 15,000, the charge is 4,000.

## Unit 3: Partnerships

Partnership accounts add: capital accounts (fixed) and current accounts (share of profit, drawings, interest on capital, salaries). Profit appropriation: interest on capital → salaries → share residual by ratio. Admission of a partner: revalue assets, goodwill (raised and written off in profit-sharing ratio, or not raised — premium method), adjust capital accounts. Dissolution: realise assets, pay liabilities, distribute the residue; know the order of payment.

## Unit 4: Companies

Limited companies: shares (ordinary — voting, variable dividend; preference — fixed dividend, priority), reserves (share premium, revaluation, retained earnings). Final accounts: income statement (after net profit: tax, dividends), statement of financial position (share capital + reserves = shareholders'' funds; plus long-term liabilities). Rights issue (existing shareholders, below market) vs bonus issue (free shares from reserves — no cash raised). Debentures are loans, not share capital.

## Unit 5: Incomplete Records

Where records are missing, reconstruct: opening capital = assets − liabilities. Credit sales from debtors: closing debtors = opening + credit sales − cash received − bad debts → solve for sales. Gross profit method: apply the GP margin to sales to estimate cost of sales, then closing stock. Statement of affairs method for profit: closing net assets − opening net assets, adjusted for drawings and capital introduced.

## Unit 6: Analysis and Interpretation

Ratios (learn formulas AND interpretations):

- Profitability: GP margin (GP/Sales), net margin (NP/Sales), ROCE (PBIT/Capital employed).
- Liquidity: current ratio (CA/CL — target ~2:1), acid test ((CA − stock)/CL — ~1:1).
- Efficiency: stock turnover (COGS/stock), debtors'' days (debtors/credit sales × 365), creditors'' days.
- Gearing: debt/(debt + equity) — high gearing = risk with interest rates.
- Shareholder: EPS, dividend yield, P/E.

**Interpretation pattern:** state the ratio, compare (last year, industry, target), explain the cause, suggest an action. "The current ratio fell from 2.1 to 1.4 because stock rose — the firm should slow stock purchases and promote sales."

## Unit 7: Cash Flow and Budgeting

Cash flow ≠ profit (credit sales, depreciation, stock build-up). Cash flow statement: operating (start from net profit, add back depreciation, adjust working capital), investing, financing. Budgets: sales → production → materials → labour → cash budget; variance = actual − budget; favourable vs adverse. Break-even: BEP units = fixed costs ÷ contribution per unit (price − variable cost); margin of safety; limitations (assumes linearity, single product).

## Practice Paper (GCE style)

1. State the accounting equation and show it with figures. (3)
2. Record in double entry: bought goods on credit from Tata for 120,000 FCFA; later paid by cheque less 5% discount. (5)
3. Prepare an income statement from: sales 2,400,000; opening stock 300,000; purchases 1,500,000; closing stock 400,000; wages 350,000; rent 120,000; other expenses 90,000. (8)
4. Machine costs 1,000,000, residual 100,000, life 5 years. Find year-2 depreciation (straight line). (3)
5. Debtors 500,000; provision 4%. Next year debtors 600,000, provision 5%. Find the charge. (5)
6. Partners A and B share 3:2. Profit 900,000; interest on capital: A 40,000, B 30,000; salaries: A 60,000. Find each share. (6)
7. Distinguish a rights issue from a bonus issue. (4)
8. From debtors of 250,000 and credit sales of 1,800,000, find debtors'' days. (3)
9. Fixed costs 600,000; price 5,000; variable cost 3,000. Find the break-even units and margin of safety at sales of 400 units. (5)
10. Explain two limitations of ratio analysis. (4)

## Final exam strategy

- Formats are free marks: income statement, financial position, appropriation, cash budget — memorise the layouts.
- Show workings labelled (W1, W2…) — examiners award marks inside workings.
- Balance every account; a trial balance that fails means an error — find it before continuing.
- In interpretation questions, always compare and explain — a bare number earns one mark at most.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-alit-advanced', 'English Literature', 'Complete A-Level English Literature Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level English Literature Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Literature in English (subject code 0735) and supports O-Level Literature (0535). Literature rewards close reading: every claim about a text must be supported by a quotation and an analysis of HOW the language works. Learn your set texts deeply — breadth without depth fails.

## Unit 1: Reading and Analysing Poetry

### Lesson 1.1: The tools of analysis

Form: sonnet (14 lines, volta), ballad (narrative, quatrains), free verse, dramatic monologue. Sound: rhyme scheme, rhythm/metre (iambic pentameter — five da-DUM feet), alliteration, assonance, onomatopoeia. Imagery: metaphor, simile, personification, symbolism. Voice: speaker, tone (ironic, mournful, celebratory), audience.

### Lesson 1.2: The method for poetry questions

1. Read the poem twice; identify the situation (who speaks, to whom, about what).
2. Track the development — how does the feeling change from stanza to stanza?
3. Choose 3–4 short quotations that carry the poem''s key effects.
4. Analyse each: name the device, quote, explain the effect on the reader.
5. Link form to meaning: why does the poem end the way it does? What does the structure achieve?

**Worked paragraph:** "The poet''s use of the metaphor ''the night swallowed the village'' personifies darkness as a predator, conveying the community''s helplessness before the storm; the violent verb ''swallowed'' makes the loss feel deliberate, preparing the reader for the grief that dominates the final stanza."

## Unit 2: Reading and Analysing Prose

### Lesson 2.1: Narrative technique

Point of view: first person (intimacy, bias), third person limited (one mind), omniscient (full knowledge). Characterisation: what characters say, do, and how others react to them; flat vs round characters; development arcs. Structure: chronological vs framed narrative, flashbacks, foreshadowing, climax and resolution. Setting: physical and social environment as meaning (colonial towns, villages, cities).

### Lesson 2.2: Themes in African prose

Set texts typically explore: tradition vs modernity, colonialism and its aftermath, the individual vs community, gender roles, education and social mobility, corruption and power. Prepare 3–4 themes per text with 4–5 supporting episodes each. Know the author''s context (country, period, purpose) — examiners reward contextual awareness.

## Unit 3: Reading and Analysing Drama

### Lesson 3.1: Dramatic technique

Dialogue and subtext (what is meant but unsaid), stage directions, dramatic irony (audience knows what a character does not), soliloquy and aside, conflict (internal, interpersonal, societal), dramatic structure (exposition, rising action, climax, falling action, denouement). Tragedy: the tragic hero''s flaw, catharsis. Comedy: irony, mistaken identity, social satire.

### Lesson 3.2: Writing about drama

Treat plays as performance: discuss how a scene would work on stage (movement, pauses, lighting implied by the text). Quote dialogue precisely and analyse the speaker''s tactics: "Okonkwo''s clipped replies in Act 2 reveal his fear of appearing weak — the short sentences mirror his refusal to explain himself."

## Unit 4: Critical Essay Writing

### Lesson 4.1: The essay structure

Introduction: name the text, the question''s focus, and your line of argument (thesis). Body paragraphs: POINT (answer the question) → QUOTATION (evidence) → ANALYSIS (how the language/technique works) → LINK (back to the question). Conclusion: confirm the thesis, note the wider significance.

### Lesson 4.2: Answering the question

Underline the key words of the question and use them in every paragraph. A 25-mark essay needs 4–5 developed paragraphs. Avoid plot summary — the examiner knows the story; they want your argument. Avoid vague praise ("beautiful language") — say precisely what the language does.

## Unit 5: Unseen Criticism

The unseen passage tests transferable skill: apply the same method (situation → development → 3 quotations → analysis). For prose unseen: note narrative voice, imagery, sentence rhythm. For poetry unseen: note form, sound, imagery. Spend 5 minutes annotating before writing — annotations are your plan.

## Practice tasks (GCE style)

1. "Poetry is sound before it is sense." Discuss with one poem you have studied. (25)
2. Compare the presentation of tradition and modernity in two prose texts you have studied. (25)
3. "The ending of a play should feel inevitable, not surprising." Discuss with one play. (25)
4. Analyse an unseen poem of 20 lines: situation, development, and effects of language. (20)
5. "Characters in African novels are shaped more by society than by choice." Discuss. (25)

## Final exam strategy

- Know your set texts at episode level: you must find quotations from memory — build a quotation bank per theme.
- Answer the exact question: re-read it after every paragraph.
- Manage time: unseen passages are shorter but demand the same analytical depth.
- Write in formal academic English: present tense for texts ("Okonkwo refuses…"), no contractions.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-aeng-advanced', 'English Language', 'Complete A-Level English Language Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level English Language Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level English Language (subject code 0730). A-Level English demands mature writing: precise comprehension, controlled summary, and sustained composition with a developed argument. The examiner rewards structure, range of vocabulary, and control of grammar under time pressure.

## Unit 1: Advanced Comprehension

Passages are longer and denser than O-Level: argumentative and discursive texts on society, technology, environment, education. Question types: inference, evaluation of argument (how well does the writer support the claim?), analysis of language (why this word? what effect?), summary of an argument''s stages.

**Exam technique:** For "in your own words" items, identify the idea, then express it with different vocabulary and structure. For evaluation questions, quote the claim and assess the evidence given for it.

## Unit 2: Summary Writing (Advanced)

Longer source passages; questions may require selecting arguments for AND against a position. Method: identify the question''s demands, mark relevant material, compress (one word for phrases, generalise examples), write 120–150 words as instructed, check the count. Preserve the logical order of the original argument.

## Unit 3: Advanced Grammar and Usage

Accuracy targets: complex sentences (subordination, relative clauses), tense consistency across paragraphs, concord with complex subjects, punctuation (semicolon, colon, dash), transformation (active↔passive, direct↔indirect, simple↔compound↔complex). Register: formal vs informal — match vocabulary and structure to the task.

## Unit 4: Writing (the decisive paper)

### Lesson 4.1: Directed writing

Tasks give source material and a task (report, article, speech, letter) with a specified audience and purpose. Requirements: follow the format exactly, use the material (do not invent), organise with paragraphs, control length. Learn the formats: report (title, terms of reference, findings, recommendations), article (headline, engaging lead, development), speech (greeting, purpose, points, memorable close).

### Lesson 4.2: Continuous writing

Narrative, descriptive, argumentative, expository. Plan first (5 minutes): thesis, 3–4 points, examples. Paragraph discipline: one idea each, 4–6 sentences, linking words. Vocabulary: precise verbs, concrete nouns, varied sentence openings. The conclusion must answer the title, not trail off.

## Practice tasks (GCE style)

1. Read a 700-word article on social media and youth; answer five questions on inference and technique. (20)
2. Summarise the arguments for and against mobile phones in schools (150 words). (15)
3. Write a report to the principal on the causes of poor results in your school, with recommendations. (25)
4. Write an article for a national newspaper on the importance of vocational education. (25)
5. Rewrite in reported speech and comment on the changes required. (10)

## Final exam strategy

- The writing paper carries the most weight: allocate time accordingly and never skip planning.
- Vary sentence openings; avoid repeating the question''s words verbatim except deliberately.
- Proofread the last 5 minutes: concord, tense, spelling of high-frequency words.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-afr-advanced', 'French', 'Cours de Français — Advanced Level, GCE Cameroun', 'french', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Cours de Français — Advanced Level, GCE Cameroun

## Comment utiliser ce cours

Ce cours couvre le français au GCE Advanced Level (code 0745). Le niveau A exige : une expression écrite soutenue, une compréhension fine de textes littéraires et d''actualité, la traduction dans les deux sens et l''expression orale. La qualité de la langue (syntaxe, registre, orthographe) distingue les notes A des notes C.

## Unité 1 : Grammaire avancée

### Leçon 1.1 : Les structures complexes

Maîtrisez : le subjonctif (après « il faut que », « bien que », « pour que » — expressions de volonté, doute, émotion), le passif et ses transformations, le discours indirect au passé (concordance des temps), les pronoms relatifs complexes (lequel, duquel, sur lequel), la négation complexe (ne…que, ne…jamais, ne…rien), les comparatifs et superlatifs irréguliers.

### Leçon 2 : Le style

Registres : soutenu, courant, familier — reconnaissez-les et adaptez-vous. Connecteurs logiques pour structurer : d''abord, ensuite, cependant, en revanche, par conséquent, en définitive. La phrase complexe : subordination, infinitives, participiales.

## Unité 3 : Compréhension et résumé

### Leçon 3.1 : Les textes

Textes littéraires (extraits de romans africains et français) et articles d''actualité. Questions : compréhension fine, intention de l''auteur, ton, vocabulaire en contexte, résumé de l''argumentation.

### Leçon 3.2 : Le résumé

Résumez un texte argumentatif en un nombre de mots imposé : identifiez la thèse, les arguments, les exemples à éliminer, reformulez avec vos mots en respectant l''ordre logique.

## Unité 4 : Littérature

### Leçon 4.1 : Les genres et l''analyse

Roman, nouvelle, théâtre, poésie : les caractéristiques de chacun. Analyse : thème, personnages, narration, figures de style (métaphore, métonymie, antithèse, ironie), tonalité. Les mouvements littéraires utiles : la négritude (Senghor, Césaire), la littérature africaine d''expression française (Achebe traduit, Beti, Kourouma).

### Leçon 5 : La dissertation littéraire

Méthode : introduction (sujet, problématique, plan) → développement en 2–3 parties (thèse, antithèse si le sujet s''y prête, synthèse) → conclusion. Chaque paragraphe : idée → citation → analyse. Apprenez des citations par œuvre.

## Unité 5 : Traduction

Anglais → français : les structures idiomatiques, les temps, le registre. Français → anglais : la concordance des temps, les faux amis, l''ordre des mots. Traduisez le sens, pas les mots.

## Unité 6 : Expression orale

Exposé de 5 minutes sur un thème d''actualité (préparez : introduction, 2 arguments, exemple, conclusion). Discussion : réagir, argumenter, nuancer (« Certes… mais… », « Il est vrai que… cependant… »). Prononciation : nasales, liaisons, rythme. Enregistrez-vous chaque semaine.

## Exercices (style GCE)

1. Mettez au subjonctif : « Bien qu''il (être) tard, nous continuons. » (2)
2. Résumez un texte argumentatif de 400 mots en 100 mots. (15)
3. Dissertation : « La littérature africaine doit-elle écrire en français ? » (25)
4. Traduisez un passage de 120 mots dans chaque sens. (20)
5. Exposé oral de 5 minutes sur l''environnement au Cameroun. (20)

## Stratégie pour l''examen

- La dissertation et l''oral portent le plus de points : entraînez-vous chaque semaine.
- La qualité de la langue pèse plus que la quantité : privilégiez des phrases correctes.
- Constituez un carnet de citations par œuvre et par thème.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-ahist-advanced', 'History', 'Complete A-Level History Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level History Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level History (subject code 0760), core of the Arts series. A-Level history demands analysis and argument: essays need a thesis, evidence, and evaluation of interpretations. Build timelines per unit and practise essay plans weekly.

## Unit 1: Cameroon Under Colonial Rule (A-Level depth)

### Lesson 1.1: German annexation and administration (1884–1916)

Causes of German interest: Bismarck''s reversal of policy (1884), trading firms'' lobbying (Woermann, Jantzen & Thormählen), strategic rivalry. Methods of rule: treaties, then conquest (Buea campaigns against the Bakweri; the Maji-Maji era revolts); duala Manga Bell''s resistance and execution (1914). Administration: governors (Jespersen, Puttkamer — notorious for brutality), military force (Schutztruppe), forced labour, hut tax. Economy: plantations (cocoa, rubber, bananas, oil palm), railways (Douala–Manenguba, Douala–Yaoundé), the "Kamerun" model colony. Education: mission schools, German language policy.

### Lesson 1.2: Mandate and trusteeship (1916–1960)

WWI conquest of Kamerun by Allied forces; the 1919 partition: France (East, 4/5) and Britain (West, 1/5 — Northern and Southern Cameroons). French administration: decree rule, indigénat, chiefs as agents; economic development (coffee, cocoa expansion, ports); education in French. British administration: indirect rule through native authorities; Northern Cameroons tied to Northern Nigeria (Muslim emirates), Southern to the Eastern Region; limited development — the "Cinderella" neglect that fuelled reunification feeling. Compare the two systems — a classic essay.

### Lesson 1.3: Nationalism, independence and reunification

UPC (1948): Um Nyobé, Ouandié, Moumié — demands: immediate independence, reunification, end of trusteeship; banned 1955; the maquis and French repression (Um Nyobé killed 1958; Moumié poisoned 1960; Ouandié executed 1971). Constitutional evolution in French Cameroon: territorial assembly (1952), Loi-Cadre (1956), government under Foncha''s KNDP alliance politics, independence 1 January 1960. British Cameroons: the 1959 UN mission, the two plebiscites (1959 question, 11 February 1961), Southern Cameroons'' vote for reunification; 1 October 1961 federation. Evaluate the roles of the UN, Britain, France, and nationalist parties.

## Unit 2: Independent Cameroon

### Lesson 2.1: Ahidjo era (1960–1982)

Building the federation: constitution of 1961, two-state structure; the "bilingual and bicultural" state. Centralisation: the 1972 referendum (unitary state), UNC single party, planned economy, "planned liberalism"; nationalisation moves (CDC), agricultural development schemes. Order and dissent: the suppression of the UPC maquis; the 1983–84 coup attempts under Biya and their aftermath. Evaluate Ahidjo''s nation-building: unity achieved at what cost?

### Lesson 2.2: Biya era (1982–)

"New deal": rigour and moralisation; democratisation: the 1990 laws (liberty of associations, press), multiparty elections (1992 contested), the SDF (1990). Economic crisis and adjustment: commodity collapse, IMF programmes, salary arrears and cuts (1993), CFA devaluation (1994) — effects on households. Governance: decentralisation laws (2004, 2019), Senate (2013), anti-corruption operations. The Anglophone crisis (2016–): causes (marginalisation grievances, common-law and education systems), escalation, consequences. Regional issues: Boko Haram in the Far North, refugees from CAR.

## Unit 3: Africa Under Colonial Rule (A-Level depth)

### Lesson 3.1: Partition and colonial systems

The scramble: industrial Europe''s needs, strategic rivalry, explorers and missionaries; Berlin Conference 1884–85 (effective occupation, free navigation). Conquest and resistance: Samori Touré''s Wassoulou empire, the Mahdiyya, Ethiopia''s victory at Adwa (1896 — the exception), the Herero genocide (1904–08). Colonial economies: extraction, cash crops, labour systems (migrant labour, forced labour), railways; the "dual mandate" debate. Colonial societies: urbanisation, education, missions, racial segregation.

### Lesson 3.2: Decolonisation

Causes: WWII''s impact (veterans, Atlantic Charter 1941, weakened empires), superpower pressure, UN trusteeship, nationalist movements. Paths: negotiated (Ghana 1957), revolutionary (Algeria 1954–62), delayed (Portuguese wars to 1974–75), settler-dominated (Zimbabwe to 1980; South Africa to 1994). Leaders and ideologies: Nkrumah''s pan-Africanism and "political kingdom", Nyerere''s African socialism (Ujamaa), Senghor''s Negritude, Lumumba''s martyrdom (Congo crisis 1960–61). Post-independence challenges: neocolonialism, one-party states, coups, debt, structural adjustment — evaluate the colonial legacy''s weight.

## Unit 4: The World in the 20th Century

### Lesson 4.1: The World Wars (A-Level depth)

WWI: causes (MAIN + Sarajevo), the war''s course (stalemate, entry of the USA 1917), the home fronts; Versailles 1919 (terms, German resentment), the League''s weaknesses. WWII: the failure of appeasement, the war in Europe and the Pacific, the Holocaust, the Grand Alliance, turning points (Stalingrad, Midway, D-Day), the atomic age; the UN (1945) and the new order. Compare the two wars'' causes and consequences — a favourite essay.

### Lesson 4.2: The Cold War and After

Origins: Yalta/Potsdam, Iron Curtain, Truman Doctrine, Marshall Plan, Berlin blockade (1948–49). Crises: Korea (1950–53), Cuba (1962 — the closest point), Vietnam. Détente and its collapse; Afghanistan (1979); Gorbachev (glasnost, perestroika), the Wall falls (1989), the USSR dissolves (1991). The post-Cold War world: unipolar moment, globalisation, new conflicts; Africa in the new order (peacekeeping, China''s rise as partner and competitor).

## Practice Paper (GCE style)

1. Explain two reasons for German annexation of Cameroon in 1884. (5)
2. Compare French and British colonial administration in Cameroon. (10)
3. Assess the contribution of the UPC to Cameroonian independence. (10)
4. "The 1972 referendum completed, rather than betrayed, reunification." Discuss. (12)
5. Explain the significance of the Berlin Conference. (6)
6. Discuss two causes and two consequences of African nationalism after 1945. (10)
7. "The Treaty of Versailles made the Second World War inevitable." Discuss. (12)
8. Assess the role of the superpowers in African decolonisation. (10)
9. Explain why the Cold War ended in 1991. (8)
10. Evaluate two effects of the 1994 CFA franc devaluation on Cameroon. (8)

## Final exam strategy

- Essay structure: thesis → 3–4 analytical paragraphs (each: claim, evidence, explanation) → evaluation of interpretations → conclusion.
- Support every claim with a date, name, or specific event.
- Compare and evaluate: A-Level rewards judgement, not narration.
- Practise timed plans: 5 minutes of planning doubles essay quality.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-acs-advanced', 'Computer Science', 'Complete A-Level Computer Science Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Computer Science Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Computer Science (subject code 0795) and ICT (0796). A-Level demands depth in programming, data structures, systems and networks. The practical paper tests real coding and application skills — build projects, do not just read.

## Unit 1: Programming (A-Level depth)

### Lesson 1.1: Structured programming

Data types and structures: arrays (1D, 2D), records, files (text, binary; sequential, random access). Control: selection (IF, CASE), iteration (FOR, WHILE, REPEAT). Subroutines: procedures and functions, parameters (by value vs by reference), scope (local/global), recursion (base case + recursive case — trace it).

**Worked example (recursion):** factorial(n): IF n ≤ 1 THEN RETURN 1 ELSE RETURN n × factorial(n − 1). Trace factorial(4): 4×f(3) → 4×3×f(2) → 4×3×2×f(1) → 24.

### Lesson 1.2: Algorithms and complexity

Searching: linear (O(n)) and binary (O(log n) — requires sorted data). Sorting: bubble, insertion, merge (O(n log n) — divide and conquer). Big-O notation: measure growth, not seconds. Algorithm design: top-down decomposition, pseudocode, trace tables. Standard algorithms to master: min/max, count, sum, average, find, reverse, frequency count.

### Lesson 1.3: Data structures

Stacks (LIFO — push/pop; used in undo, call stacks), queues (FIFO — enqueue/dequeue; used in scheduling), linked lists (dynamic insertion), trees (binary search trees: insert, search, traversal — in-order gives sorted output), hash tables (key → index; collisions). Choose the structure that fits the problem and justify the choice.

## Unit 2: Computer Systems

CPU architecture: control unit, ALU, registers (PC, MAR, MDR, ACC), buses; the fetch-decode-execute cycle; factors affecting performance (clock speed, cache, cores). Memory hierarchy: registers → cache → RAM → storage. Operating systems: process management, memory management, file systems, security, user interfaces. Language levels: machine, assembly, high-level; translators (assembler, compiler vs interpreter — differences and uses). IDEs: debugging tools, breakpoints, step-through.

## Unit 3: Data Representation (A-Level depth)

Number systems: binary, denary, hex conversions; two''s complement for negative numbers (invert + 1); binary arithmetic (addition with carries, subtraction). Fixed and floating point: mantissa and exponent; precision vs range. Character codes: ASCII, Unicode (UTF-8). Graphics: bitmap (pixels, colour depth, resolution) vs vector (objects, scalable); file size calculations. Compression: lossless (RLE, dictionary) vs lossy (JPEG, MP3) — when each is appropriate. Encryption: symmetric (one key) vs asymmetric (public/private); hashing (passwords, integrity).

## Unit 4: Networks and the Web

Network models: client–server vs peer-to-peer; LAN/WAN; topologies; hardware (router, switch, hub, access point). Protocols: TCP/IP, HTTP/HTTPS, FTP, SMTP/POP3/IMAP; the DNS system; IP addressing (IPv4, IPv6; subnet basics). The web: HTML (structure), CSS (style), JavaScript (behaviour); client vs server side; cookies and sessions; web security (SQL injection, XSS — and defences: validation, parameterised queries, escaping). Databases on the web: normalisation (1NF, 2NF, 3NF), SQL (SELECT, JOIN, INSERT, UPDATE, DELETE), transactions and ACID basics.

## Unit 5: Systems Development

Life cycle: analysis (requirements), design (data flow diagrams, ER diagrams, UI sketches), implementation (coding, testing), deployment, maintenance. Testing: unit, integration, system, acceptance; test data (normal, boundary, erroneous). Documentation: user and technical. Evaluation: fitness for purpose, maintainability. Project work: choose a real problem (school records, market inventory), build it, document it — the practical exam rewards working software.

## Unit 6: Emerging Issues

AI and machine learning basics (training data, models, applications and limits); ethics of AI (bias, jobs, privacy); cybersecurity careers and practices; the digital economy in Cameroon (e-government, mobile money, startups); sustainability (energy use of data centres, e-waste).

## Practice Paper (GCE style)

1. Write a function to return the largest of three numbers. (5)
2. Trace a recursive sum function for n = 5. (5)
3. Sort 7, 3, 9, 1 using insertion sort — show each pass. (5)
4. Convert −13 to 8-bit two''s complement. (3)
5. Explain the difference between a compiler and an interpreter. (4)
6. Describe the fetch-decode-execute cycle. (5)
7. Normalise a table to 3NF with an example. (8)
8. Write SQL to list all students with average ≥ 12, sorted by name. (5)
9. Compare lossy and lossless compression with one use of each. (4)
10. Design the ER diagram for a library system (books, members, loans). (8)

## Final exam strategy

- Programming marks come from working code: practise writing, not reading.
- Master the standard algorithms and their Big-O — MCQs test them directly.
- In design questions, justify every choice (structure, method, protocol).
- Build one substantial project before the exam — it cements everything.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-phil-advanced', 'Philosophy', 'Complete A-Level Philosophy Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Philosophy Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Philosophy (subject code 0790), core of the Arts series. Philosophy rewards clarity: define terms, present arguments step by step, consider objections, and reach reasoned conclusions. Reading the set texts closely matters more than memorising opinions.

## Unit 1: Introduction to Philosophy

Philosophy: the love of wisdom — the critical examination of fundamental questions (what exists, what we can know, what we ought to do). Branches: metaphysics (reality), epistemology (knowledge), ethics (morality), logic (reasoning), aesthetics (beauty), political philosophy (society). The philosophical method: question assumptions, define terms, construct arguments, test objections.

## Unit 2: Epistemology — Theory of Knowledge

### Lesson 2.1: What is knowledge?

Knowledge as justified true belief (Plato): truth, belief, justification. Gettier problems: cases where justified true belief fails to be knowledge. Sources of knowledge: reason (rationalism — Descartes), experience (empiricism — Locke, Hume), testimony, intuition.

### Lesson 2.2: Scepticism and certainty

Descartes'' method of doubt: doubt the senses, doubt reasoning itself — "I think, therefore I am" (Cogito ergo sum) as the first certainty. Hume''s scepticism about induction (the sun rose yesterday; will it rise tomorrow?). Responses: common sense (Moore), pragmatism, coherentism. Evaluate: how much certainty do we need for knowledge?

## Unit 3: Metaphysics

Being and existence; substance (what underlies change). Appearance and reality (Plato''s cave — the allegory and its meaning). Free will vs determinism: are choices free if causes determine them? Positions: hard determinism, libertarian free will, compatibilism. The mind–body problem: dualism (Descartes — two substances), materialism (mind is brain), idealism (mind is primary). Personal identity: what makes you the same person over time (memory, body, continuity)?

## Unit 4: Ethics

### Lesson 4.1: Normative theories

- Utilitarianism (Bentham, Mill): the greatest happiness for the greatest number; act vs rule utilitarianism; strengths (practical, impartial) and weaknesses (justice problem, calculation).
- Deontology (Kant): duty and the categorical imperative — act only on maxims you could will as universal laws; treat persons as ends, never merely as means; strengths (respects dignity) and weaknesses (rigidity).
- Virtue ethics (Aristotle): character and the golden mean — courage between cowardice and recklessness; flourishing (eudaimonia); strengths (holistic) and weaknesses (guidance problem).
- African ethics: Ubuntu — "a person is a person through other persons"; communalism, solidarity, the moral weight of community; compare with Western individualism.

### Lesson 4.2: Applied ethics

Apply the theories to: abortion (sanctity of life vs autonomy), euthanasia, capital punishment, corruption (a Cameroonian application), environmental ethics (duties to future generations), animal rights, business ethics (fair wages, honest trade). Method: state the issue → apply each theory → evaluate the strongest objections → conclude.

## Unit 5: Political Philosophy

Why do states exist? Social contract: Hobbes (state of nature = war; absolute sovereign), Locke (natural rights; limited government; right of revolution), Rousseau (general will; popular sovereignty). Justice: Rawls'' veil of ignorance and the difference principle. Authority, obligation, civil disobedience (when may a citizen break the law?). Apply to Cameroon: decentralisation, citizenship, national unity.

## Unit 6: Logic for Philosophers

Deductive vs inductive arguments; validity and soundness; common fallacies (ad hominem, equivocation, false dilemma, begging the question); identifying hidden premises; evaluating analogies. Construct your own arguments in essays: premise → premise → conclusion, with each step justified.

## Practice Paper (GCE style)

1. Distinguish rationalism from empiricism with one philosopher for each. (4)
2. Explain Plato''s allegory of the cave and its epistemological meaning. (8)
3. State Kant''s categorical imperative and apply it to lying. (8)
4. Evaluate utilitarianism as a guide to public policy in Cameroon. (10)
5. Explain Ubuntu and compare it with Kantian ethics. (8)
6. Discuss whether humans have free will. (10)
7. Compare Hobbes and Locke on the purpose of government. (8)
8. Analyse an unseen argument: identify premises, conclusion, and any fallacies. (10)

## Final exam strategy

- Essays: define key terms first; present the argument in numbered steps; always include the strongest objection and a reply.
- Know the set texts at passage level — quote them.
- Balance: every position needs both strengths and weaknesses.
- Practise applying theories to fresh scenarios — that is what distinguishes top grades.');

insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, markdown_content)
values ('course-fsn-advanced', 'Food Science and Nutrition', 'Complete A-Level Food Science and Nutrition Course — Cameroon GCE', 'english', 'advanced', array['lower_sixth','upper_sixth']::text[], array['a_science','a_arts','a_commercial']::text[], 'published', '# Complete A-Level Food Science and Nutrition Course — Cameroon GCE

## How to use this course

This course supports A-Level Food Science and Nutrition (subject code 0741). It deepens O-Level Food and Nutrition with food chemistry, microbiology, dietetics and food service management. Score by linking laboratory science to real food systems in Cameroon.

## Unit 1: Advanced Nutrition

Macronutrients in depth: energy metabolism (BMR, PAL factors; estimating needs), protein quality (biological value, complementation), essential fatty acids (omega-3/6), glycaemic index and its use in meal planning. Micronutrients in depth: iron deficiency anaemia (prevalence in Cameroon; causes: diet, malaria, hookworm; prevention: fortification, supplementation, dietary diversity), vitamin A deficiency programmes, iodine deficiency and salt iodisation. Life-cycle nutrition: pregnancy (weight gain, folate, iron), infancy (exclusive breastfeeding to 6 months — WHO guidance; complementary feeding), adolescence (growth demands, iron in girls), ageing (reduced appetite, nutrient density).

Malnutrition in all forms: undernutrition (stunting, wasting — Cameroon''s nutrition surveys), micronutrient deficiencies, and the rising double burden (obesity and diabetes in towns). Nutrition assessment: anthropometry (weight-for-age, height-for-age, BMI), clinical signs, dietary recall.

## Unit 2: Food Chemistry

Carbohydrates: sugars'' properties (solubility, sweetness, caramelisation, Maillard), starch gelatinisation and retrogradation (bread staling), pectin and jam setting. Proteins: denaturation (heat, acid, whipping), coagulation temperatures, gluten formation and its control. Lipids: melting points, rancidity (oxidative and hydrolytic — prevention: antioxidants, cool dark storage), smoke points and frying. Enzymes in food: browning (polyphenol oxidase — prevent with acid/blanching), tenderising (papain), ripening. Water activity and its link to spoilage and preservation.

## Unit 3: Food Microbiology and Safety

Micro-organisms in food: bacteria (salmonella, listeria, clostridium), moulds (mycotoxins — aflatoxin in groundnuts and maize: a real Cameroonian public-health issue; control: dry storage, sorting, aflatoxin standards), yeasts (fermentation). Food-borne illness: causes, symptoms, incubation, reporting. HACCP basics: identify hazards, set critical control points (cooking temperatures, cooling rates), monitor, verify. Food laws and standards: ANOR, labelling requirements (ingredients, dates, storage), expiry vs best-before.

## Unit 4: Preservation and Processing

Principles: reduce water activity (drying, salting, sugar), control temperature (refrigeration, freezing, canning), control pH (pickling, fermentation), exclude oxygen (vacuum, oil), use additives legally. Traditional methods of Cameroon: smoking fish, fermenting garri and nkui, sun-drying mangoes — optimise each for safety and nutrition (smoking: avoid char; fermentation: hygiene). Industrial processing: pasteurisation (72 °C/15 s), UHT, canning (121 °C), freeze-drying; effects on nutrients (vitamin C losses in heat processing — compensate with fresh foods). Value addition: cocoa processing (fermentation, roasting, grinding), fruit juices, cassava flour — the economics of processing for local markets.

## Unit 5: Dietetics and Therapeutic Nutrition

Diet in disease: diabetes (carbohydrate distribution, GI, regular meals), hypertension (salt < 5 g/day, DASH principles), anaemia (iron + vitamin C, avoid tea with meals), obesity (moderate deficit, behaviour change), HIV (energy and protein needs, symptom management). Planning therapeutic diets: assess → set goals → plan menus → educate the patient → follow up. Nutrition education: design a talk for a community (audience, message, materials, evaluation).

## Unit 6: Food Service Management

Meal production: menu planning (balance, variety, cost, season), standard recipes and portion control, food cost control (yield tests, waste logs). Hygiene in service: personal, premises, equipment; temperature control in service and storage. Institutional catering: schools and hospitals (special diets, budgets, schedules). Entrepreneurship: start a food business — market study, licensing, costing, pricing, quality.

## Practice Paper (GCE style)

1. Explain the double burden of malnutrition with two examples. (5)
2. Describe aflatoxin: source, risk, and two control measures. (6)
3. Explain gelatinisation and one factor affecting it. (5)
4. Outline the HACCP steps for cooking chicken in a school kitchen. (8)
5. Plan a day''s therapeutic diet for a diabetic adult. (10)
6. Compare pasteurisation and UHT with one use of each. (5)
7. Calculate the food cost percentage from given figures. (5)
8. Design a nutrition education session for mothers on breastfeeding. (8)

## Final exam strategy

- Link every scientific fact to a Cameroonian food or health problem — that is the paper''s design.
- Practise calculations: energy needs, food cost, BMI, dilutions.
- Menu-planning questions: state requirements → plan → justify → cost.');

commit;