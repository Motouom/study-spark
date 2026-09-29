-- Complete GCE Paper Coverage Migration
-- Generated: 2026-09-25T13:41:41.413713
-- Total papers: 506

BEGIN;

-- Ensure topics exist for each subject/level

-- Topic for Accounting (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-accounting',
    'Accounting',
    'Accounting - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Accounting.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Additional Mathematics (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-additional-mathematics',
    'Additional Mathematics',
    'Additional Mathematics - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Additional Mathematics.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Agricultural Science (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-agricultural-science',
    'Agricultural Science',
    'Agricultural Science - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Agricultural Science.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Biology (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-biology',
    'Biology',
    'Biology - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Biology.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Biology (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-biology',
    'Biology',
    'Biology - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Biology.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Business Studies (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-business-studies',
    'Business Studies',
    'Business Studies - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Business Studies.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Business Studies (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-business-studies',
    'Business Studies',
    'Business Studies - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Business Studies.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Chemistry (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-chemistry',
    'Chemistry',
    'Chemistry - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Chemistry.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Chemistry (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-chemistry',
    'Chemistry',
    'Chemistry - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Chemistry.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Citizenship Education (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-citizenship-education',
    'Citizenship Education',
    'Citizenship Education - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Citizenship Education.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Commerce (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-commerce',
    'Commerce',
    'Commerce - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Commerce.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Commerce (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-commerce',
    'Commerce',
    'Commerce - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Commerce.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Computer Science (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-computer-science',
    'Computer Science',
    'Computer Science - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Computer Science.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Computer Science (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-computer-science',
    'Computer Science',
    'Computer Science - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Computer Science.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Economics (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-economics',
    'Economics',
    'Economics - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Economics.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Economics (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-economics',
    'Economics',
    'Economics - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Economics.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for English Language (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-english-language',
    'English Language',
    'English Language - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for English Language.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for English Language (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-english-language',
    'English Language',
    'English Language - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for English Language.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for English Literature (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-english-literature',
    'English Literature',
    'English Literature - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for English Literature.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for English Literature (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-english-literature',
    'English Literature',
    'English Literature - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for English Literature.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Food and Nutrition (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'Food and Nutrition - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Food and Nutrition.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Food Science and Nutrition (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'Food Science and Nutrition - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Food Science and Nutrition.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for French (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-french',
    'French',
    'French - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for French.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for French (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-french',
    'French',
    'French - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for French.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Further Mathematics (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-further-mathematics',
    'Further Mathematics',
    'Further Mathematics - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Further Mathematics.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Geography (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-geography',
    'Geography',
    'Geography - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Geography.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Geography (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-geography',
    'Geography',
    'Geography - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Geography.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Geology (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-geology',
    'Geology',
    'Geology - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Geology.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for History (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-history',
    'History',
    'History - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for History.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for History (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-history',
    'History',
    'History - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for History.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Human Biology (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-human-biology',
    'Human Biology',
    'Human Biology - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Human Biology.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for ICT (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-ict',
    'ICT',
    'ICT - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for ICT.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for ICT (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-ict',
    'ICT',
    'ICT - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for ICT.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Logic (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-logic',
    'Logic',
    'Logic - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Logic.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Mathematics (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-mathematics',
    'Mathematics',
    'Mathematics - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Mathematics.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Mathematics (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-mathematics',
    'Mathematics',
    'Mathematics - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Mathematics.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Philosophy (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-philosophy',
    'Philosophy',
    'Philosophy - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Philosophy.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Philosophy (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-philosophy',
    'Philosophy',
    'Philosophy - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Philosophy.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Physics (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-physics',
    'Physics',
    'Physics - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Physics.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Physics (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-physics',
    'Physics',
    'Physics - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Physics.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Pure Mathematics with Mechanics (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'Pure Mathematics with Mechanics - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Pure Mathematics with Mechanics.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Pure Mathematics with Statistics (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'Pure Mathematics with Statistics - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Pure Mathematics with Statistics.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Religious Studies (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-religious-studies',
    'Religious Studies',
    'Religious Studies - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Religious Studies.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Religious Studies (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-religious-studies',
    'Religious Studies',
    'Religious Studies - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Religious Studies.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Special Bilingual Education French (Ordinary Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'Special Bilingual Education French - Ordinary Level',
    'Comprehensive ordinary level past papers and practice questions for Special Bilingual Education French.',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Topic for Special Bilingual Education French (Advanced Level)
INSERT INTO public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
VALUES (
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'Special Bilingual Education French - Advanced Level',
    'Comprehensive advanced level past papers and practice questions for Special Bilingual Education French.',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    600,
    120
)
ON CONFLICT (id) DO UPDATE SET
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    question_count = EXCLUDED.question_count,
    estimated_minutes = EXCLUDED.estimated_minutes,
    updated_at = NOW();


-- Insert/Update course documents (papers)

-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b507630f-1ef8-c767-d0ad-f51ff5731d27',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e8c335fd-0030-e96e-9511-b1d394e5e41c',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '15efff85-f8e0-f5b1-8863-4f4d0b8a66d6',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9613cebe-1ecb-55bd-be89-80fd937505c1',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '947a01a5-26f8-e6d5-e4ba-5b3d38c9a7e7',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3eb7269b-99a1-2ef8-0e48-aa3fbde992c9',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bc590610-7185-2bc6-6b4c-a33eed7318c3',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '50532007-94e5-0c7b-4757-079a6a0ff51a',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '48c9e945-2bb4-03aa-dd9e-421541d4e855',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd409332c-c6fd-3387-281b-05b0318976d6',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a28e391a-773c-ea40-3df4-c39eb16d6353',
    'ol-accounting',
    'Accounting',
    'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Accounting Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '55cfb28b-2860-96eb-7017-9f6324fb7b33',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '52b30b1a-4561-838d-176f-d75fc994a6a1',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3eefbfd7-c830-5846-c3b3-6c096c2db50a',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9d31b00d-8d9f-da4b-0610-d6f5969339e1',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ef9cde15-cba8-c57e-49e8-2bf975615d2a',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '36bcda06-9158-b697-3640-c1f19c41f41e',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b1cf7f28-4a9b-9142-9b72-a802b57722c4',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5eb36c15-3ee0-69af-1330-ab7f314774cb',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'afcbbd1c-ac2c-786a-6f35-9208aa32a604',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f3852b9f-2380-3a5e-6dfb-2a04171d6571',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '26270f33-3ca0-1836-8fc5-339e192fd4e1',
    'ol-additional-mathematics',
    'Additional Mathematics',
    'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Additional Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '20b03cde-601f-9e4e-8195-8f0851b7d6b0',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '382efacc-5999-7e32-6fcd-18337775fa7e',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b9f1d08c-8864-8d82-d153-9d84e4852c3b',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9c9bcd05-e7d5-d4b2-c17f-f3542ac3f9dc',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6d448745-010d-03ec-71b5-bc5df34cfd9c',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8ad4b56c-8412-76a2-1f80-af85119bf2d3',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '94488bf9-0773-7d8f-ca38-c045f2299678',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '87d600e5-eaed-8d9f-a9a0-d3bf424b2932',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7613336b-28a4-ea36-47f9-b2b6065252a8',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '97d13a06-ea28-dbb5-32c1-3c410e2519ff',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4b97c55d-3e83-1c5c-c4fb-bbc4d9d1e6b3',
    'al-agricultural-science',
    'Agricultural Science',
    'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Agricultural Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f9784da7-3fa1-8033-bcfb-45e686f387ab',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '45b4ce6f-44bf-50d9-9c25-b43a68f6b9d8',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd06c3dbe-6df7-9d5c-9523-697b9b622f58',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a50a19d5-192f-5a1e-87b0-ac5dd810e911',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6a6ed82c-8ea2-e164-e416-a9db6334a0ce',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '928aa58c-dda5-8037-62e0-5d4c7e53a4a1',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '989e0647-029b-449d-9277-8757cbcba0b5',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '18e25325-c8ba-6c4e-875e-3157647c480f',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8ea4a182-6ef4-b7a3-5d93-1c6911f0d91d',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cccd2598-6c74-9bed-d99a-84132eff8926',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e5a99e87-3dab-a226-d6d9-e11ff26e6c38',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '96cdc9b7-08a6-9a79-5bf0-a68645bac9da',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '87db5a11-e18b-ab7a-a512-2c0c7f2a7c50',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a46c92cf-5397-71d2-b4cf-7740f240f136',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '011c0a77-63b4-38d8-dc88-57299590f380',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fc4e58e0-3d3e-dc59-6723-3d0976fdf244',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6e6f5ba4-098a-03d7-eb88-d3243fe7afd2',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b2a2cf0f-5a08-40b0-98ab-7199219cec0c',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0057a664-041f-e476-0bd3-e736d575d156',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7eb6756b-cd6a-000e-3f45-f9178ba31182',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a0345b6c-7fbb-65f3-af47-3e5d4d80d8fa',
    'al-biology',
    'Biology',
    'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f9a5b4a3-5753-6be6-f41b-98466edf9fc2',
    'ol-biology',
    'Biology',
    'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cef450de-fb26-b1ff-e963-ce992aae209c',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4e44c731-0f76-30ea-008e-815e269dd296',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5ef6ecca-96d0-609a-92d1-cee6eacab72f',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '363d075a-41b2-28b0-200e-363c831ef95c',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fc197b89-3ffb-4fc8-32d2-6b134b1c757c',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b6b7ea58-dc07-50df-8a48-0b66a0da952c',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '41d62051-c3fe-6be1-c3b0-7dfed0f3fa5d',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '72ec0eb4-9f2e-2a9d-d052-ba7ea8a60425',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c6c00824-57c0-144c-308c-dd9bf80b3e3c',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0c22c9a7-d971-423f-b642-ce42cd2ebe7a',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fd9a59db-9a0a-3b68-dd8f-6e0eef4ae707',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fb0eb9f2-460f-00b4-1e47-e2afee002595',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f673409b-b14f-21d9-5cbb-28e550f8fd69',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e66744e9-94f3-332d-7f4f-260aa078bce5',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cb477b18-7b35-824c-7037-ca3d2c4f462e',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '10e7a7ea-ad43-3c81-8fa2-8073397fd1f0',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a8988de9-b55c-a6c5-d301-0f2d8ac470d9',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '78e2c203-bf65-c892-77dc-dec547c6f5c4',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fdc3827c-42d3-2190-0810-37e6de18535f',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4fa27ad1-a17c-eff2-b742-4bc51a971a13',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ec00c3a5-bed2-1f3b-ba4d-b5c57101634d',
    'al-business-studies',
    'Business Studies',
    'CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '63a1fbcc-8012-10bc-f5f8-3fade5e6d6a5',
    'ol-business-studies',
    'Business Studies',
    'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Business Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9eefe180-3c27-96e9-0189-bbd3a68ad0d0',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9cd934c1-8565-2ba3-e359-3291ccb74c19',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ed3c9ed2-70b0-7916-b6e3-415ff1e2b006',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c133b151-6996-57b1-412a-3a30627fc20a',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '457089bf-6649-2067-310c-f7947a6c18b8',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '23b91f5d-2ebd-d82d-6aec-7b99809aadf8',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0a75d08b-1a05-ab49-8bab-4905ccd9df8f',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd8bd0e67-2dd2-7b1b-0936-c2aa6808cded',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '55da8c13-a312-d4e9-f121-2056c3f9f803',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9038bb67-e032-7c3f-ce6c-89eb4a0d0836',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f2b1bca1-fb67-386c-d19e-704518393f4f',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bb340fa3-e057-42a4-91b0-20a894206bca',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e2f11b6b-fbc4-a3ea-74ba-b1294e558ce6',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e2bef534-79f3-4cd2-8afb-721f7edd5902',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b5d3ef41-188e-bbfb-aa2f-566a042b4f3f',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '00a05a02-6f2d-15ce-7ccc-7c7e8b8aca71',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2e01ea06-a190-122c-4f02-251658595241',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd0acde13-9ad3-ee03-7810-02382bea3de8',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b2ff0794-8814-eea1-4370-dbc373c9de6d',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'baf8923c-a04a-c749-7035-b875cf9dad79',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bf6dc322-ce0e-2ef4-71ef-d289f89eaab5',
    'al-chemistry',
    'Chemistry',
    'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fcf8f403-be6e-fa56-ae5b-80c74c5ea4ea',
    'ol-chemistry',
    'Chemistry',
    'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Chemistry Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd194350b-7297-13d6-6712-51940c20d69c',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '995492d0-6b24-0f64-ac79-de2337c0c091',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cff80fc3-d712-a87b-d566-09deeee6007f',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7c39d65c-7499-635f-875e-29dacd7e0844',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '991f6934-b66a-e04e-022e-eb356c329b52',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a4bccc7c-add7-43f8-30d1-b4a3882341cc',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '281b8455-aaca-143a-c24a-06fb5188a982',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5789b4bf-ee52-8442-3a35-9dd09b922820',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '320c8ca7-5f76-1705-11d3-58ddadcc91ec',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c3914da5-cc09-b436-3845-fbfce1699f4d',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e5e85a18-0e10-baeb-1e7b-1f2d72c4560d',
    'ol-citizenship-education',
    'Citizenship Education',
    'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Citizenship Education Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '12e0d805-8b2a-180a-b8b2-4e8bb0caee1e',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cda6223d-4368-8bb1-96ea-dd557f6c625c',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '991fc9dc-4f26-a7d9-a1c0-547517128d93',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '86c17e57-c988-b224-9a3f-a625e5f90f5f',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7c47e32d-01c5-3c22-fe1d-f4ae0ee44b17',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '57ec3f36-3011-de02-78a5-cd6e363a9a34',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '332c853e-d837-9f05-2df8-27804e92243e',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '242d9a22-7fba-ac08-a1e8-3b7fefd93869',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0b7eead5-35b3-3d20-e260-823188941b49',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '929c9942-3dc3-8e72-a3cc-e7f5d092fd45',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '37438a92-0894-4f72-2bc0-1ef7052534f8',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '78d3b0cb-0136-2075-f91f-8ab8655feb80',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5ed5a496-e792-6a96-2d26-cd0170f94e37',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '98d3ee98-3922-3be7-689c-ce1e4ff54332',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e1add4ab-2aad-685f-5213-9e202563674b',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '77da7c69-c25b-9ebb-3805-146c19a6d4c1',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2c98d05e-ead9-2f17-c2b2-7ab4daa2f5ab',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd03da3aa-00b2-e89b-844b-18ac3f846821',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c86b327d-c945-3f85-26e5-95bbba23c179',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a3c9a040-9777-a9f3-ca24-26ef77673fa9',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '08a987f0-1d23-7b98-0573-228b2aeb2d75',
    'al-commerce',
    'Commerce',
    'CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMMERCE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e7a52faa-b7d4-181b-0ef9-a572d47b449a',
    'ol-commerce',
    'Commerce',
    'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Commerce Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '742313a9-020c-5270-8fb6-9288e65c1283',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6cc65e92-4584-1d64-0780-bd2b69e9d49c',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '354e3730-c9e7-1504-5997-c443d13badef',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b7dc570b-665f-85fe-8818-22b18ef2ed4e',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '30017f18-3fb0-00b2-9e54-dedd28bd53d5',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '75383d3e-c996-3977-3433-eb5b55edeb19',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3ef175f8-ea02-cfe9-15f4-f8ccd372d37b',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6d2ddda9-309c-7b1e-5adb-f6fc33d616f5',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c06e40c0-6cf3-d188-e3a6-050f85758901',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f6042eaa-1abd-30f5-accb-febfddba8084',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd90b27b3-74f9-c99e-46dc-69cf55e447cb',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '71051bb7-98c3-9042-6cc0-aca28bad7638',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b01af661-67cc-785d-e8da-2af47fa0f3a0',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c646ff15-e06b-f10f-535a-ed96f67a1ef7',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'daaefe28-eb11-1c4b-a3a0-6a78ee3f39fe',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'dfa30f33-0879-2ec5-84f3-2f09d75ec61b',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6b7302b0-6ddc-83c9-5228-4c46c660ee4d',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7dab2791-fd85-94ef-4975-78a6b9ef4f4f',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'de3c220f-468e-c9a7-d732-0da20586594e',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '311bd535-4250-13ce-b566-a54f4fe03d77',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5562f3ff-4647-0100-a025-24d65e94b943',
    'al-computer-science',
    'Computer Science',
    'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1501cc24-9d7d-98f7-14b0-69a637c1ee74',
    'ol-computer-science',
    'Computer Science',
    'CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL COMPUTER SCIENCE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Computer Science Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '32b37502-8819-39e4-dabd-3ed88ee93735',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '17d2e42a-8668-cc24-04df-9ccc558a85cd',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '23fcd99c-4889-e989-9faa-c0cd1cf5aa34',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1fec57fc-4ac3-f3cf-0f53-c95b50233f8d',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '836ce9cb-8226-8f17-27cb-4fce48189831',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'acc25c58-6ef2-7762-cd28-a651f8c4d63c',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7e455aa8-b158-66a8-9243-62dfd516e127',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9a5df909-941b-a14b-1bcb-ad59824da06d',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2bdec461-a673-1903-cac4-42ab20ad0fc5',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e5718ba2-6d0b-e99f-0577-2a8225b58b53',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8a9cf025-8d6c-d132-f8ae-5ed7252281f6',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4dcc0369-d743-2070-535f-047cff6f44eb',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '28a9d5a5-dd4e-f8c4-0afa-181929e24d2a',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5769680a-a56b-91ac-5ff1-a0b69f7fd280',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a295c523-d1cd-2b31-fe69-28fb3c90d602',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '06dd28f7-f060-4148-63bd-833d73d640ab',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'af3bf48f-0d6d-9aa7-77e6-e4dabf406796',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a94e6f4e-4950-521c-281f-dfaf389ede34',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '51c20c71-9503-7ad0-5e66-13c035892bf7',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7c61943a-2d71-7875-5a7c-68bb49ccee86',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '21b64085-218f-5e93-4f13-c9f5f5e91d50',
    'al-economics',
    'Economics',
    'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2ab79377-9a26-22a5-4e27-e4a517506e2f',
    'ol-economics',
    'Economics',
    'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts','commercial']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Economics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7b3468a2-73dc-3fff-82da-00d8c661943a',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6d48c8b8-6fdd-0cb4-475d-6c9e0bbb5815',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c7d85c15-10e7-b4bc-5558-6db274133362',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6608cc09-708b-13ac-d3a9-0cee4dc0dbcd',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1ef250ae-a4ee-ba75-f196-4deababd0115',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '770f6d26-e53a-257e-845a-c52840e8cd1e',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b4b248eb-ea3e-a8f8-aea7-20123c3f6616',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '47bf1b2f-7af0-796b-66ee-dcd48d338b69',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bfce51c2-e6de-9591-f8e7-9c5904edb3cb',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bdf5a705-a30a-efb2-f6dd-a3e78205be07',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f1419d61-8e1d-85d4-a92b-46af32a67f32',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7087bca1-eef2-624c-f385-43224e5f4148',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0a49f76c-284a-1809-b97f-81362cfaf3ae',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ddc1f108-d93a-d8ac-6c2d-1a1dfff5b0b0',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c3bb60ad-a4f9-cf26-0cbb-599d6f284f9c',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5fe40cc8-a7e2-8b8b-e541-260a73f59e82',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '426e8f26-eab5-623c-1fc0-9c5e25faa457',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5606a7d4-1a3e-7084-0830-fd5aac60bb20',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2fa91aa8-eecd-654e-6488-8fb36bbdc330',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0ddda878-b188-1ade-f23d-309eac41fd23',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5fadb5c3-34d1-4161-0108-b970c823586d',
    'al-english-language',
    'English Language',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LANGUAGE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0b2fc145-9e3f-d483-7e5b-a30298082284',
    'ol-english-language',
    'English Language',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Language Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b62c0dbb-ba06-220d-7949-9772d30120b6',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '56738c19-c1bf-7d54-233b-6bc75ba69aa7',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '47a65b6c-6801-57ff-2c97-72d7f6d30a72',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a77b806f-84a6-244d-e499-44756c76cbfe',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '828f98b3-6143-bd81-0414-6547317d178a',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '086fe25f-fbbb-11cf-ba10-050363a8f095',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b880a965-c4b7-1265-07aa-93bdbbd53cc1',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fb98b02a-6925-5c7f-f555-76db769a3ee2',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '512d045a-f5cc-0c26-21c0-b0f016293b01',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '60cde724-579d-f208-0c17-476cbba736d3',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '28a10ac6-a4a8-358a-46ff-68dce0e524ec',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ca232327-917d-1894-4a0d-e6aef6363e46',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4f21415d-f4fc-7d33-3f9f-2740e5a55c40',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8ed61f17-c0c8-cb60-c302-6df35cb275d9',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7af1083b-97cb-8e6e-5560-0b2bd4268670',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '13c5c267-9c6d-1b84-d1cd-ace8a9345bbb',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ea4e7980-5274-dca5-cc53-eea245d5fcda',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '97fca68f-1c30-9119-118b-282434cd9dcc',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '80a4e941-294b-825d-d227-b69de7f0b6d8',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'eef45482-2beb-57f4-4e43-419c56e55a9d',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3be111bc-9cfb-94be-d8c1-f6aee273a3a5',
    'al-english-literature',
    'English Literature',
    'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4c130090-6838-8691-846a-79436f935c9e',
    'ol-english-literature',
    'English Literature',
    'CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ENGLISH LITERATURE P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level English Literature Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c5469f6a-3016-99a8-7e7c-b49db7530c97',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6854173f-64fd-de32-c3b2-57bad48440a3',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e43e2a70-8e19-9699-a9a9-c10abbbc247a',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1b3d6063-27a3-1c5f-2c1e-4a21b15d26f3',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '365bc2d1-6a32-cb07-6267-a128fdb931fc',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a1707fd3-8163-4eb5-3980-9cbf3bf33473',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '961b123b-1685-3bac-ee51-098e968d9cd9',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '763f8a60-27ce-687e-572b-0ab5f55b0d12',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c42a1227-e871-9181-a8a6-afcaed7ea3f0',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7996e5a0-7f6b-a7de-e793-8a57bda600ac',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a8689d7d-0c2e-c6da-8b49-c92cdc5443eb',
    'ol-food-and-nutrition',
    'Food and Nutrition',
    'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Food and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3736e2fd-011b-6307-ed38-8c1353821317',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cf642fa9-0388-70a5-df29-210648903ec1',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6fd4c903-288b-14a2-3534-d3c671af2380',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c114ec15-2cdf-25d1-8300-cd006256a393',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9257260d-ed2c-f5f4-c0e6-b7dcd742052f',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '540cc3be-d005-0be8-17de-e1d67446dc56',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4ab6a941-f0f5-389f-9af3-1ace72d9f38c',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd6d261a7-e5d6-c62a-41aa-84ce764eb51c',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5e7fd78d-b690-8b23-3723-635d220d0a71',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c0a3b61e-e280-948c-5916-baec09d256ad',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3ebcaf7b-b166-0a42-483e-687f74aa45a8',
    'al-food-science-and-nutrition',
    'Food Science and Nutrition',
    'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Food Science and Nutrition Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1e883965-1cb9-e00b-ddcc-41c8026a91e7',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b18c2855-b1a9-f7c8-ba1b-cb520741f00a',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '543fff97-e110-b892-6336-7c80c00c5232',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b0e86ff9-01b6-c2e8-03dd-3483fd1a59ab',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e5aaea3b-a2bd-e699-4b90-1adef292aa9b',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '72b14625-149d-6991-1119-023ae92773c7',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1e53c740-be26-01ce-caad-d37fa19a99c8',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c085cc8c-66a6-e8b1-7acb-d008a43860d7',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4586a5a0-0da4-4f8d-fcfd-d89a147ab163',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'df1af98c-0f5d-def8-05e9-a28ac2276465',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '944d040e-2465-d51a-071a-50f751e0bf3d',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5ab77cee-ec45-303a-2f21-c3c27e8ac815',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '113c6921-0499-950f-673f-eb8da3853824',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '13b87775-3868-f8cd-a223-5477d3b438fa',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c51ba166-3eb4-dcb4-b604-1d08ca8537e9',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '906159e0-6f5f-25f8-b027-745419a1f688',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '62440989-b3e6-064d-3ad3-3249b55db433',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '323e1b6d-ec92-dc5d-441e-72179f885948',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c9a3e03c-5969-dcf6-56cc-e4dc70677493',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '70815d44-ac92-c112-6617-055587b5dd59',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd762489f-2f53-5649-ec6b-37dcb8d92d18',
    'al-french',
    'French',
    'CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_arts','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FRENCH P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b2da7a05-7064-6781-61ce-62fc66dd96d0',
    'ol-french',
    'French',
    'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','arts','commercial','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '65735d5c-64f9-65fa-a209-739ef3a321e7',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6467fecc-058b-fee9-372b-e2ce7f62b0bd',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c9362b9c-bc96-330c-929a-8aeb5663c7b5',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7cfccba8-71c9-467c-c0a4-20d481075a6a',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4e3df7a8-ba05-19aa-6b42-1e200e2f0a7f',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9cf8056c-a697-87d0-5c3b-2829b8c62e8d',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '588adf20-6133-2ed1-b7fa-cfa3eeb604d0',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7a1b4061-f5d9-a6d2-364c-05b11fddafb3',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e8d8f57e-3544-26a6-04ba-f7bf73176422',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0c833ccb-057c-fe34-f8de-960f575804fa',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3c54b7ad-c9c7-7182-91e2-c7ef0cab917e',
    'al-further-mathematics',
    'Further Mathematics',
    'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Further Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '52bf3ab1-afdd-81bf-eff1-7ec6842a3231',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b8674df3-3856-ae6a-b6b2-4c7655fa1c1a',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8af545bb-5a8f-be67-5f9d-93e552a7ab11',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3ae1f1cd-597c-cce8-ad21-ef36665477fc',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'eff856fc-3cf4-03f6-749c-eee615b4df42',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5ca4e058-3ba8-af26-b79c-ac06e5447ca4',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7793d5a4-b9e8-5c43-d9ac-ecb93300451a',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cbe24bd6-2335-987f-0513-736dcbf03ab2',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3ca098b5-e93d-ecf6-f6db-307bb51cca49',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6de7a596-ec39-f45b-1f62-d769700d5d4e',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4b52bde5-8664-e29f-ccdc-ed3a01a4e1cd',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f3c7d483-2226-fd85-5126-0166a404d11e',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd9256682-713a-34a4-fe17-5485878342db',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4981720e-2375-2e2c-dcdf-0f4ef37d5977',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0d2cb513-7d0b-d658-9a66-22a672256bcd',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9439a9a5-4ae2-2a5a-10a0-6f61d1474a48',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fa6337a2-8fde-710d-ab57-02f209af1de6',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'edf4fcda-b488-1c33-991c-7d7380d45af8',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '57d2c7c9-ab77-8098-471d-837af02a4332',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0ebfebcd-475d-6073-3871-760db3a554cf',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '87c1487c-f936-8cc9-cf10-2acf492ec989',
    'al-geography',
    'Geography',
    'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2450c8f6-0836-4bbc-40bd-58bb1102be26',
    'ol-geography',
    'Geography',
    'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Geography Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '27e242b3-3532-c6fe-f835-3088c25d8039',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '72ae14ef-42fb-9011-ab95-aade31e54b4a',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '50c6f0b4-83e5-0b22-9133-5ca2320683d7',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6d0dcd42-d57f-8063-7796-20cd216f29b5',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f114bd25-5db6-b227-bf6e-4913e8e8559d',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9c53ba52-1b08-b45f-524c-ce68d5a6f92d',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '14e03ee0-e239-8de9-d8e1-c7fb5cfbe19f',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7bd844c1-a722-e857-229b-8fdf78b6946e',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3f4ce417-eabb-e58f-7e48-416e7e223e4f',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0dd31002-094b-e0d3-b815-3cc645f94a30',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '401c99b4-95ac-039f-ba0f-2f751a8f7e51',
    'al-geology',
    'Geology',
    'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Geology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '91256958-22eb-3db3-3252-9cf687480cf2',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '14acb4d4-c06e-9aff-d1b9-f8befac69e38',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c83a9a32-87e0-445e-2162-379f4a865c37',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd1f964e2-b48e-2095-21b9-7a8dc61eb72b',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c5b20693-af5a-6988-698c-f70198beaff0',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '05646a2c-6c30-6b10-cba7-e20754f0efbe',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b9f9c9a0-ad7a-4325-dce2-7544263e7497',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '066a842b-004c-4785-f276-d29e42538046',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '54a234cd-2d32-aa52-6469-5e66d494b0b3',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '17514ff9-7b95-7a2a-da6e-0eb3f3ff9190',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ccf8346e-0206-2c79-6f8a-b6de6ab8a703',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b2e0d69a-ff20-73fb-fb8b-8a0265bc389a',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '641545bf-22ff-34d9-1705-ca6d5ddb0db7',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '51367ac0-05fd-c2cd-dcaf-dc2fbe8b2f9d',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5a667ea5-0203-e4c7-6d0a-7385583a1341',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd89bc126-4913-bf14-073d-faefc4fb03be',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '191b5842-336a-731c-2caf-0086ee75931e',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f910ba76-7a75-5b6d-36be-4a320011e549',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'abc0ee17-ef28-2c86-1477-3c6fe653c15d',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b8333360-e5ab-d5dc-7a2e-c26caf459e08',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ab204367-a024-ad8c-0580-14b17ebc3d33',
    'al-history',
    'History',
    'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fe32b2b1-ff38-2c65-5490-58758f1cfe34',
    'ol-history',
    'History',
    'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level History Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0ca7ba58-3f6d-ed92-b98f-c9dd4dccaa3b',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '550d75b2-e045-e6a4-6bbb-1919d516292e',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4839caea-2b4f-525d-bbb2-40666c0b758c',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cd1e8cf7-10bf-f68c-16e2-398d26587afb',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'df241847-5c58-9750-ecc2-7b0458dd4474',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '413bebbe-b1ca-24d8-5f2b-3c91f025e37b',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '309a0ff7-713c-146f-8b48-ad17b94e1dbb',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7103d5d9-ba76-36c3-236b-6a4be8ebbbc7',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '38c11b2c-1feb-28a3-f3ef-63517d1cc78c',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '815be41c-6274-308c-1a7f-f4aacfb8af33',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0b6edada-7cfe-5fc3-61d6-04641781f81a',
    'ol-human-biology',
    'Human Biology',
    'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Human Biology Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1070bff7-a090-0d85-1895-17e8147a2d5d',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2772f6ae-15b3-f0c5-8532-3743f58a9dce',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '21633a07-01c8-223f-a9c1-dd78e9169693',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '94d50768-5d26-e7c3-0b68-936a363c0678',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7b3aa1cd-e54d-a609-b0eb-cbd796b10bf4',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '915d4089-98a3-e8fd-aceb-7d88041215c1',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bc0b47d2-b166-fd2d-73d3-ebbc1dbecbc7',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '49710792-9680-614b-d99d-22d7abdc6f97',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8661dc4d-c379-8f55-5745-b48f7e6f4440',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '942c8af7-7c14-52a7-ac58-302b336ae7f7',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '616cac5f-20bb-54da-018d-1319ee006313',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'faafd400-f6a0-5f36-0bb3-f344a28d479f',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f946d7cd-c8b1-0cc3-2cbe-1fadd5d3f321',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e9442986-d14e-10fd-5705-7c8276ee9de8',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '114e0eb5-97f0-a6f4-9087-62840ce6f4c1',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'eeae1005-de0a-d0c9-4d17-a4a52c7ddd24',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e1fe4655-16a8-f961-a037-fa72c3d0cf16',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ba03b1ce-c89e-356d-99c4-a2c79b97946d',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8f0ce178-b3fa-f7d0-9c5e-01dc5d886495',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cdab419c-d8b0-59c7-f2e4-e70bc150a286',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL ICT P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5f2e536e-59a0-026b-681e-26c689f5df93',
    'al-ict',
    'ICT',
    'CAMEROON GCE ADVANCED LEVEL ICT P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL ICT P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5cb5c130-edb5-83ad-8de3-7db19ac3262b',
    'ol-ict',
    'ICT',
    'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['commercial','technical','science']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level ICT Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3e947724-c56b-3acd-dfb6-9665cfd23dbf',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4a2b9c5c-f678-b713-a3aa-7863301a07b7',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '141b2033-11c1-3f49-d5fe-0108bd213de0',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9508baba-3a27-a7c0-bf73-fe5fe52ff8cf',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cd8a0dbb-934e-581d-88de-ad3f3516ce91',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd19f5372-ca0c-b371-0ac2-4946b863112d',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '574ab2df-1041-83b4-bfe5-b9e92b1234d5',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4fa198f9-8d26-e361-69f8-7da9ab7f0f4b',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '18788948-35b2-33af-7560-0a289e721dac',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ebc97ef6-1049-71c4-1b68-945ddcbcfc94',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8b26ee59-c9ea-ee21-128e-0c7fe804806e',
    'ol-logic',
    'Logic',
    'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Logic Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c7eb2b18-0178-32a3-931e-2a79de9277b4',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd6822d93-1f52-7e9c-cc54-7cd7cfe098aa',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fe629ab4-3f1a-efc1-296a-70d882eb6ed5',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '885d675a-4e56-239a-7ec8-033cfc097127',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '609beb39-628b-f8ee-203c-3a7191888bbc',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5e4833e2-1fda-2e53-c3e9-156e1497e6c8',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2ac71fdc-fda6-2032-5f4f-7796b514453e',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8d24ba97-7c69-af9b-c289-e51d9eefcc14',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '05a95867-3b47-825b-118d-916677da7caf',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1d22b99a-c4af-8712-c107-91c3a810382b',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a0f67792-ef08-533b-e180-e2769fb60fcf',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '25e1b5c8-a978-04b4-44da-d590104b83d0',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fb6ac78d-4dcf-8bea-34c1-9a9eb86862d4',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '18ddaedf-567e-773b-9190-acc618709691',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b7f9037c-f10d-df45-0d2e-352ef85939d7',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6ad4f91e-1338-3795-d69e-46448f2c4c5f',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '55763fb3-8a1a-782d-cb3a-0b96418c857d',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '353cedb6-0eea-e18b-d8a5-879341f86066',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '275c8c3a-dd50-65f3-3cce-9352ea761f63',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6a07bd55-5568-31a7-1073-37deb7afc461',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '05595897-c32d-743a-87eb-46f3f0a9c4ed',
    'al-mathematics',
    'Mathematics',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science','a_commercial']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '72c2421b-9587-7d9e-a6f6-8bc5feaa455f',
    'ol-mathematics',
    'Mathematics',
    'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Mathematics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e424b8e4-211f-2f01-576e-0db5623fc748',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'e7e7bbae-1238-239b-435f-27ab33bc58f3',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'cd72e699-f9f0-fedc-36d3-d8e34f2385c1',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a55e54c8-b040-f54b-8a54-54450930a248',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b9d3a1c8-ce44-41e6-3fce-7a77890ac8a2',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '17122b87-4f3d-ed57-294d-c480f7c1126d',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fb788c73-c2a9-712d-7509-f2ee314da250',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'dabc0446-1cb4-9173-d365-be2371313b87',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1c55d0ee-2521-ada4-83f2-3f0b81ecf5f2',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '029b82ea-8091-9e1b-2cc6-9fde9e5fffd5',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '46b66316-63c6-cd4e-ca19-a4723ef0e057',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '970bf4ea-66cf-f9b8-cb57-1bb42c160244',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8b23087c-0b1f-f38c-05e4-945cc0da2bcd',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '463fbf44-5d64-653e-c75d-efff607a09b1',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '42b5f4b1-f494-89c1-087e-023c6005e94e',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5e6b3885-b439-34dd-ebeb-f89779582108',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fd8dfe9b-b63a-2375-de02-4134ead69a93',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8ca4c073-307a-df60-f7fe-25cf04473f60',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '603dca43-5d1d-9ca8-1daa-5e22e0762c1f',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '79a2d016-4742-e18d-fef6-f02e5b9991dc',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c355908c-15f6-5a47-3da4-d0fc857ad6b8',
    'al-philosophy',
    'Philosophy',
    'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd3a0ce1e-d685-fec5-5257-cddc905a831a',
    'ol-philosophy',
    'Philosophy',
    'CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHILOSOPHY P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Philosophy Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ef3417fb-a83b-5b95-eaea-5d684b3420d2',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '66d59cbf-edec-dd63-ab7c-870176dbfcd2',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '105a599b-9790-edaa-7eff-fcba7bf0473a',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '87a7d08b-dc70-cda4-5f66-0b06c3e65937',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '222f13e6-6a31-a069-8bb9-3a071108d767',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'c45d97a3-c276-4159-94fc-1eb5c94d4e5e',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '59f323c2-2636-827a-0d0c-bde3f40cef2d',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '03879695-d828-c13c-da4e-b5cfe842d813',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5f2685ca-5ffb-2024-2114-8c5492c88f10',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fc1c34b3-2720-6121-95ba-2b1d72b4a6ce',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '49049b22-fcf1-570c-4638-ac18cf947dc9',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2d61513b-4c9e-c27f-5f8c-090d63a26a8f',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b749a206-244c-665f-3754-05e318284a31',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'dd15c09d-814c-0da6-d70b-62265571e566',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f326ed51-a581-adee-b819-7629eba63095',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8d5ac5cf-76e2-4923-8a7f-73abbe76512a',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '74774aa7-4a5d-8c95-9f68-e1296812d15d',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd9497e1c-7d04-4a7f-578f-c4c724d2c0dc',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1cbb58d1-7aaa-89bc-bd88-4b6dff740b1e',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5abdb5da-3433-7b3e-0479-4cb7caeaa638',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '66814cd0-7557-3845-9a6b-e38459deefb4',
    'al-physics',
    'Physics',
    'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '857a1335-2136-ebce-29ce-77a4e27005b5',
    'ol-physics',
    'Physics',
    'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['science','technical']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Physics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '988b17ad-5b6c-62c2-965b-5942b389c351',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5b65c480-6e82-7b73-0be3-2d5bd1c776f0',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '689a473b-6523-09fc-e667-068751f422b0',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '13306f37-3719-66ff-f2a9-1867579bf345',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '563ebccc-632b-88e6-5e4d-7c5abd01a64e',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ffe02a43-de8c-23c4-406b-c8f3041da09f',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a22886ae-3e42-9483-37ac-cf543db71be9',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8e5261fe-9e6e-7bd2-57de-191da40cd781',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3ca6575f-f064-1be8-063d-91a6b5ebf4b2',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '92004266-f9e3-22fb-770e-c38dd29e46a8',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd3be5164-c190-3ffe-5c78-3a1866eeac68',
    'al-pure-mathematics-with-mechanics',
    'Pure Mathematics with Mechanics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Mechanics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '74204151-82c4-0556-4150-05179bde8622',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8b9a9e5f-005a-e586-bc99-386a8d09c068',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1feae1f7-aa6c-c7e9-06a9-0d46ddc7f8dc',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '630f9b1a-4ced-3b74-f9db-2c3ae99e1792',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '6d107487-eebc-fe14-1aa0-897e7c74a79d',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9985332c-93c0-1447-2c85-6a34777cde91',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'b55eb457-6bc6-1659-c674-9680fa5fac28',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '674b6fde-83ec-0ccf-e6ca-0dff5a469210',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a7f2182e-c19b-580e-2e7b-65510ab0ceff',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ee0d6f76-2563-18c1-a177-4f4b1ab3da84',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f4367720-68e1-cbe7-db29-15234199c697',
    'al-pure-mathematics-with-statistics',
    'Pure Mathematics with Statistics',
    'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_science']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Pure Mathematics with Statistics Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '31a71e2c-a1ea-7a28-c204-37bf53c402b2',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4dfa5711-b75b-86c6-7d72-be11e136a65f',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '48855519-f2bd-a4cd-112f-68a2641c159e',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'fec372ea-e5d7-f802-78aa-2b2bb2a9a21d',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1e5fe0bc-46ce-ad1a-c4da-5a124f6b4e2b',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'bab19977-35c9-2118-9a08-587f23e12446',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'da7272d0-6500-fa99-c7d8-3c143941d5ec',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '581bb23b-e4f4-dbd0-9e8a-383c523360f6',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3a3d7ebc-0e59-0f9d-80ce-7c469a1cffac',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '09531a41-7c04-cab0-e4a1-379324274b8f',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'ede42f10-644f-0cf4-480f-f8654265fa9f',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '1f3c4bb7-9fe2-b8e0-1856-97193f54e3ee',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a75b8d46-6969-72a3-a534-00d98cdc5bd3',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '3861bb77-d3f6-e9d5-68b2-3110bf22301a',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '80a147fb-7a1c-5ee5-ef31-6ab1523c9d34',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8aaa8cc6-6c9e-245d-16f0-3db4e9626f96',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '26a2dae9-c7a0-f155-2b80-614e426e5601',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'adb9fdce-ef53-47c8-8603-54602d69e12d',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '46f0795e-1c1f-3bb6-6ea1-aab72608c447',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8c0f3e53-0617-5297-51e1-61593cc98819',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f3cf2510-62b8-81d9-0ecb-420a61620abc',
    'al-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL RELIGIOUS STUDIES P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '04af7a0c-eca4-eb4e-4a7a-5fa37ea0f9bb',
    'ol-religious-studies',
    'Religious Studies',
    'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['general','arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Religious Studies Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '0705b722-7c00-741b-de52-426276957268',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'de45cf32-3a8b-d742-bec3-04d05b8aef67',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '48813c87-70c6-80c0-b701-e25c307c9c77',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'af3c654f-0451-279e-2b13-c88c44c74d52',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2d760d35-b130-c777-f3a7-fa4179c93469',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '2427ab55-baa8-c2e9-2315-416e6fcdcd68',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P1 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '49a17c4f-9fad-e054-a45e-e2d0bd8fc939',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'a2745790-9f66-7ce9-3d52-4375cf5da29e',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'f8ba3dfe-a07a-1ba6-3139-f28c252b8d52',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd5c0c190-0daa-839c-d34b-b0c6fb6d7b4a',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '73e15e57-4ba8-ed3b-9ee1-ccc3290a9a9b',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '52c42be1-09d8-42aa-9423-0f5ee7a16f18',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '8e88445d-b0e8-b007-cd5b-e8519b8eb61e',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '92b9cf48-34be-a72e-a5c2-0b2620236b47',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 4

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '7c369a55-7121-286e-3146-4c307bac5c28',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '9793d5e8-4a96-a26d-d665-ff92ac4b0202',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 5

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'adc84fa2-5864-6efd-f79c-60475b55ae0f',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '49f51ee6-dd2a-585c-9ce6-157960a416e1',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 6

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '4d6d3c6a-a0e2-b26b-8a48-0b32ec19f83e',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    'd3b661cf-820e-1d3f-fd66-90596a569b39',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 7

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '5035a087-103e-d8d0-700d-7ee651ddcdcd',
    'al-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8',
    'english',
    'advanced',
    ARRAY['upper_sixth']::text[],
    ARRAY['a_arts']::text[],
    'published',
    '# CAMEROON GCE ADVANCED LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Advanced Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Advanced Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


-- CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '19cdd9e2-d80d-4881-1ea1-26d6cdb0cec8',
    'ol-special-bilingual-education-french',
    'Special Bilingual Education French',
    'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8',
    'english',
    'ordinary',
    ARRAY['form_5']::text[],
    ARRAY['arts']::text[],
    'published',
    '# CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 8

Content not found.',
    'paper',
    'paper',
    (SELECT id FROM auth.users WHERE email = 'admin@studyspark.app' LIMIT 1),
    'gce',
    'GCE Ordinary Level',
    '2024',
    'teacher_authored',
    'Cameroon GCE GCE Ordinary Level Special Bilingual Education French Past Paper',
    'approved',
    'approved',
    '1.0.0',
    'Complete GCE paper coverage migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id,
    subject = EXCLUDED.subject,
    title = EXCLUDED.title,
    language = EXCLUDED.language,
    level = EXCLUDED.level,
    class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series,
    status = EXCLUDED.status,
    markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind,
    doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path,
    exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year,
    source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference,
    permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status,
    content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note,
    updated_at = NOW();


COMMIT;

NOTIFY pgrst, 'reload schema';