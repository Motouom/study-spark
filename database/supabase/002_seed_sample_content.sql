insert into public.topics (
  id,
  subject,
  title,
  description,
  level,
  class_levels,
  series,
  question_count,
  estimated_minutes
) values
(
  'math-quadratics',
  'Mathematics',
  'Quadratic equations',
  'Factorization, completing the square, and graph interpretation.',
  'ordinary',
  array['form_4', 'form_5'],
  array['general', 'science', 'technical'],
  2,
  25
),
(
  'eng-summary',
  'English Language',
  'Summary writing',
  'Identifying main ideas and writing concise answers.',
  'ordinary',
  array['form_3', 'form_4', 'form_5'],
  array['general', 'science', 'arts', 'commercial', 'technical'],
  1,
  20
),
(
  'physics-motion',
  'Physics',
  'Motion and forces',
  'Speed, acceleration, Newton laws, and simple calculations.',
  'ordinary',
  array['form_4', 'form_5'],
  array['science', 'technical'],
  1,
  25
),
(
  'chem-bonding',
  'Chemistry',
  'Chemical bonding',
  'Ionic, covalent, and metallic bonding with structure examples.',
  'ordinary',
  array['form_5'],
  array['science'],
  1,
  25
),
(
  'bio-cell',
  'Biology',
  'Cell biology',
  'Cell organelles, osmosis, diffusion, and microscopy.',
  'ordinary',
  array['form_3', 'form_4', 'form_5'],
  array['general', 'science'],
  1,
  25
),
(
  'french-grammar',
  'French',
  'Grammaire essentielle',
  'Accords, conjugaison, pronoms et construction de phrases.',
  'ordinary',
  array['form_3', 'form_4', 'form_5'],
  array['general', 'science', 'arts', 'commercial', 'technical'],
  1,
  20
),
(
  'commerce-basics',
  'Commerce',
  'Trade and business documents',
  'Basic trade terms, receipts, invoices, and business records.',
  'ordinary',
  array['form_4', 'form_5'],
  array['commercial', 'technical'],
  1,
  25
),
(
  'econ-demand',
  'Economics',
  'Demand and supply',
  'Market equilibrium, shifts, elasticity, and price controls.',
  'advanced',
  array['lower_sixth', 'upper_sixth'],
  array['a_commercial', 'a_arts'],
  1,
  35
),
(
  'math-calculus',
  'Mathematics',
  'Differentiation',
  'Limits, gradients, stationary points, and curve sketching.',
  'advanced',
  array['lower_sixth', 'upper_sixth'],
  array['a_science', 'a_commercial'],
  1,
  40
)
on conflict (id) do update set
  subject = excluded.subject,
  title = excluded.title,
  description = excluded.description,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  question_count = excluded.question_count,
  estimated_minutes = excluded.estimated_minutes;

insert into public.questions (
  id,
  subject,
  topic_id,
  class_levels,
  series,
  language,
  type,
  difficulty,
  status,
  prompt,
  explanation,
  marks,
  choices,
  correct_index,
  answer_boolean
) values
(
  '00000000-0000-4000-8000-000000000001',
  'Mathematics',
  'math-quadratics',
  array['form_4', 'form_5'],
  array['general', 'science', 'technical'],
  'english',
  'mcq',
  'easy',
  'published',
  'Solve x^2 - 5x + 6 = 0.',
  'Factor the expression as (x - 2)(x - 3), so x = 2 or x = 3.',
  2,
  array['x = 1 or 6', 'x = 2 or 3', 'x = -2 or -3', 'x = 0 or 5'],
  1,
  null
),
(
  '00000000-0000-4000-8000-000000000002',
  'Mathematics',
  'math-quadratics',
  array['form_4', 'form_5'],
  array['general', 'science', 'technical'],
  'english',
  'true_false',
  'easy',
  'published',
  'The graph of y = x^2 opens upward.',
  'The coefficient of x^2 is positive, so the parabola opens upward.',
  1,
  null,
  null,
  true
),
(
  '00000000-0000-4000-8000-000000000003',
  'English Language',
  'eng-summary',
  array['form_3', 'form_4', 'form_5'],
  array['general', 'science', 'arts', 'commercial', 'technical'],
  'english',
  'essay',
  'medium',
  'published',
  'Write a concise summary of a school debate in one paragraph.',
  'A good summary keeps the main points and removes examples or repetition.',
  5,
  null,
  null,
  null
),
(
  '00000000-0000-4000-8000-000000000004',
  'Physics',
  'physics-motion',
  array['form_4', 'form_5'],
  array['science', 'technical'],
  'english',
  'mcq',
  'easy',
  'published',
  'What is the SI unit of force?',
  'Force is measured in newtons, symbol N.',
  1,
  array['Joule', 'Newton', 'Watt', 'Pascal'],
  1,
  null
),
(
  '00000000-0000-4000-8000-000000000005',
  'Chemistry',
  'chem-bonding',
  array['form_5'],
  array['science'],
  'english',
  'true_false',
  'easy',
  'published',
  'Ionic bonding involves the transfer of electrons.',
  'Ionic bonds form when electrons move from one atom to another, creating ions.',
  1,
  null,
  null,
  true
),
(
  '00000000-0000-4000-8000-000000000006',
  'Biology',
  'bio-cell',
  array['form_3', 'form_4', 'form_5'],
  array['general', 'science'],
  'english',
  'fill_blank',
  'medium',
  'published',
  'The powerhouse of the cell is the ____.',
  'Mitochondria release energy for cell activities through respiration.',
  1,
  null,
  null,
  null
),
(
  '00000000-0000-4000-8000-000000000007',
  'French',
  'french-grammar',
  array['form_3', 'form_4', 'form_5'],
  array['general', 'science', 'arts', 'commercial', 'technical'],
  'french',
  'mcq',
  'easy',
  'published',
  'Choisissez la phrase correcte.',
  'Le sujet pluriel ils prend sont, et le participe passe s accorde: venus.',
  1,
  array['Il sont venu.', 'Ils sont venus.', 'Ils est venus.', 'Il sont venus.'],
  1,
  null
),
(
  '00000000-0000-4000-8000-000000000008',
  'Commerce',
  'commerce-basics',
  array['form_4', 'form_5'],
  array['commercial', 'technical'],
  'english',
  'mcq',
  'medium',
  'published',
  'Which document is usually issued after goods are sold on credit?',
  'An invoice records goods supplied and the amount owed by the buyer.',
  1,
  array['Receipt', 'Invoice', 'Cheque', 'Bank statement'],
  1,
  null
),
(
  '00000000-0000-4000-8000-000000000009',
  'Economics',
  'econ-demand',
  array['lower_sixth', 'upper_sixth'],
  array['a_commercial', 'a_arts'],
  'english',
  'essay',
  'hard',
  'published',
  'Explain three factors that can shift the demand curve for a normal good.',
  'Demand shifts when non-price determinants change, such as income or consumer preferences.',
  10,
  null,
  null,
  null
),
(
  '00000000-0000-4000-8000-000000000010',
  'Mathematics',
  'math-calculus',
  array['lower_sixth', 'upper_sixth'],
  array['a_science', 'a_commercial'],
  'english',
  'mcq',
  'hard',
  'published',
  'If y = 3x^2 - 4x + 1, find dy/dx.',
  'Differentiate term by term: d/dx(3x^2) = 6x and d/dx(-4x) = -4.',
  2,
  array['6x - 4', '3x - 4', '6x + 1', 'x^3 - 2x'],
  0,
  null
)
on conflict (id) do update set
  subject = excluded.subject,
  topic_id = excluded.topic_id,
  class_levels = excluded.class_levels,
  series = excluded.series,
  language = excluded.language,
  type = excluded.type,
  difficulty = excluded.difficulty,
  status = excluded.status,
  prompt = excluded.prompt,
  explanation = excluded.explanation,
  marks = excluded.marks,
  choices = excluded.choices,
  correct_index = excluded.correct_index,
  answer_boolean = excluded.answer_boolean;

update public.questions
set accepted_answers = array['mitochondrion', 'mitochondria']
where id = '00000000-0000-4000-8000-000000000006';

update public.questions
set
  rubric = array[
    'Identifies the main ideas',
    'Removes examples and repetition',
    'Writes one clear paragraph'
  ],
  min_words = 30
where id = '00000000-0000-4000-8000-000000000003';

update public.questions
set
  rubric = array[
    'Identifies income, taste, and price of related goods',
    'Explains direction of demand shift',
    'Uses at least one practical example'
  ],
  min_words = 70
where id = '00000000-0000-4000-8000-000000000009';
