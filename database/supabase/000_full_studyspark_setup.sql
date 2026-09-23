-- StudySpark full Supabase setup
-- Run this once in the Supabase SQL editor for the StudySpark project.
-- It creates the learner tables, RLS policies, seed learner content, account deletion RPC,
-- Data API grants, and refreshes the PostgREST schema cache.

create extension if not exists pgcrypto;

create table if not exists public.student_profiles (
  user_id uuid primary key references auth.users(id) on delete cascade,
  name text not null,
  language text not null check (language in ('english', 'french')),
  country text not null default 'Cameroon',
  region text not null default 'Not set',
  city text not null default '',
  location_verified boolean not null default false,
  location_latitude numeric(9, 6),
  location_longitude numeric(9, 6),
  location_verified_at timestamptz,
  level text not null check (level in ('ordinary', 'advanced')),
  class_level text not null check (class_level in ('form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth')),
  series text not null check (
    series in ('general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial')
  ),
  subjects text[] not null default '{}',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.student_profiles
add column if not exists country text not null default 'Cameroon';

alter table public.student_profiles
add column if not exists region text not null default 'Not set';

alter table public.student_profiles
add column if not exists city text not null default '';

alter table public.student_profiles
add column if not exists location_verified boolean not null default false;

alter table public.student_profiles
add column if not exists location_latitude numeric(9, 6);

alter table public.student_profiles
add column if not exists location_longitude numeric(9, 6);

alter table public.student_profiles
add column if not exists location_verified_at timestamptz;

update public.student_profiles
set
  country = coalesce(nullif(trim(country), ''), 'Cameroon'),
  region = coalesce(nullif(trim(region), ''), 'Not set'),
  city = coalesce(city, '');

create table if not exists public.topics (
  id text primary key,
  subject text not null,
  title text not null,
  description text not null default '',
  level text not null check (level in ('ordinary', 'advanced')),
  class_levels text[] not null default '{}',
  series text[] not null default '{}',
  question_count integer not null default 0,
  estimated_minutes integer not null default 15,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.questions (
  id uuid primary key default gen_random_uuid(),
  subject text not null,
  topic_id text not null references public.topics(id) on delete restrict,
  class_levels text[] not null default '{}',
  series text[] not null default '{}',
  language text not null check (language in ('english', 'french')),
  type text not null check (type in ('mcq', 'true_false', 'fill_blank', 'match', 'image_mcq', 'audio_mcq', 'essay')),
  difficulty text not null check (difficulty in ('easy', 'medium', 'hard')),
  status text not null default 'draft' check (status in ('draft', 'review', 'published', 'archived')),
  prompt text not null,
  explanation text not null default '',
  marks integer not null default 1,
  choices text[],
  correct_index integer,
  answer_boolean boolean,
  accepted_answers text[],
  match_lefts text[],
  match_rights text[],
  rubric text[],
  min_words integer,
  image_hint text,
  audio_hint text,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.practice_attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  mode text not null check (mode in ('normal', 'random', 'daily', 'adaptive')),
  subject text,
  topic_id text references public.topics(id) on delete set null,
  question_count integer not null check (question_count >= 0),
  score numeric(5, 2) not null check (score >= 0 and score <= 100),
  question_ids uuid[] not null default '{}',
  selected_answers jsonb not null default '[]'::jsonb,
  duration_seconds integer not null default 0 check (duration_seconds >= 0),
  completed_at timestamptz not null default now()
);

alter table public.practice_attempts
add column if not exists question_ids uuid[] not null default '{}';

alter table public.practice_attempts
add column if not exists selected_answers jsonb not null default '[]'::jsonb;

alter table public.practice_attempts
add column if not exists duration_seconds integer not null default 0 check (duration_seconds >= 0);

create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists student_profiles_set_updated_at on public.student_profiles;
create trigger student_profiles_set_updated_at
before update on public.student_profiles
for each row execute function public.set_updated_at();

drop trigger if exists topics_set_updated_at on public.topics;
create trigger topics_set_updated_at
before update on public.topics
for each row execute function public.set_updated_at();

drop trigger if exists questions_set_updated_at on public.questions;
create trigger questions_set_updated_at
before update on public.questions
for each row execute function public.set_updated_at();

alter table public.student_profiles enable row level security;
alter table public.topics enable row level security;
alter table public.questions enable row level security;
alter table public.practice_attempts enable row level security;

drop policy if exists "students read own profile" on public.student_profiles;
drop policy if exists "students insert own profile" on public.student_profiles;
drop policy if exists "students update own profile" on public.student_profiles;
drop policy if exists "authenticated students read topics" on public.topics;
drop policy if exists "students read only matching published questions" on public.questions;
drop policy if exists "students insert own attempts" on public.practice_attempts;
drop policy if exists "students read own attempts" on public.practice_attempts;
drop policy if exists "admins manage profiles" on public.student_profiles;
drop policy if exists "admins manage topics" on public.topics;
drop policy if exists "admins manage questions" on public.questions;

create policy "students read own profile"
on public.student_profiles for select
to authenticated
using ((select auth.uid()) = user_id);

create policy "students insert own profile"
on public.student_profiles for insert
to authenticated
with check ((select auth.uid()) = user_id);

create policy "students update own profile"
on public.student_profiles for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

create policy "authenticated students read topics"
on public.topics for select
to authenticated
using (true);

create policy "students read only matching published questions"
on public.questions for select
to authenticated
using (
  status = 'published'
  and exists (
    select 1
    from public.student_profiles profile
    where profile.user_id = (select auth.uid())
      and profile.language = questions.language
      and profile.class_level = any(questions.class_levels)
      and profile.series = any(questions.series)
      and questions.subject = any(profile.subjects)
  )
);

create policy "students insert own attempts"
on public.practice_attempts for insert
to authenticated
with check ((select auth.uid()) = user_id);

create policy "students read own attempts"
on public.practice_attempts for select
to authenticated
using ((select auth.uid()) = user_id);

create policy "admins manage profiles"
on public.student_profiles for all
to authenticated
using ((select auth.jwt() -> 'app_metadata' ->> 'role') in ('admin', 'reviewer'))
with check ((select auth.jwt() -> 'app_metadata' ->> 'role') in ('admin', 'reviewer'));

create policy "admins manage topics"
on public.topics for all
to authenticated
using ((select auth.jwt() -> 'app_metadata' ->> 'role') in ('admin', 'reviewer'))
with check ((select auth.jwt() -> 'app_metadata' ->> 'role') in ('admin', 'reviewer'));

create policy "admins manage questions"
on public.questions for all
to authenticated
using ((select auth.jwt() -> 'app_metadata' ->> 'role') in ('admin', 'reviewer'))
with check ((select auth.jwt() -> 'app_metadata' ->> 'role') in ('admin', 'reviewer'));

create index if not exists topics_access_idx on public.topics (level, subject);
create index if not exists questions_access_idx on public.questions (status, language, subject, topic_id);
create index if not exists attempts_user_completed_idx on public.practice_attempts (user_id, completed_at desc);

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

drop function if exists public.delete_current_user();
drop function if exists public.delete_current_user(text);

create or replace function public.delete_current_user(confirm_text text)
returns boolean
language plpgsql
security definer
set search_path = auth, public
as $$
declare
  current_user_id uuid := auth.uid();
begin
  if current_user_id is null then
    raise exception 'not authenticated';
  end if;

  if confirm_text <> 'delete' then
    raise exception 'delete confirmation did not match';
  end if;

  delete from auth.users
  where id = current_user_id;

  return true;
end;
$$;

revoke all on function public.delete_current_user(text) from public;
grant execute on function public.delete_current_user(text) to authenticated;

grant usage on schema public to anon, authenticated;

grant select, insert, update on public.student_profiles to authenticated;
grant select on public.topics to authenticated;
grant select, insert on public.practice_attempts to authenticated;

-- Serve learner questions without answer keys, then grade submitted answers server-side.

drop function if exists public.list_allowed_questions();
create or replace function public.list_allowed_questions()
returns table (
  id uuid,
  subject text,
  topic_id text,
  class_levels text[],
  series text[],
  language text,
  type text,
  difficulty text,
  status text,
  prompt text,
  explanation text,
  marks integer,
  choices text[],
  correct_index integer,
  answer_boolean boolean,
  accepted_answers text[],
  match_lefts text[],
  match_rights text[],
  rubric text[],
  min_words integer,
  image_hint text,
  audio_hint text
)
language sql
security definer
set search_path = public
as $$
  select
    q.id,
    q.subject,
    q.topic_id,
    q.class_levels,
    q.series,
    q.language,
    q.type,
    q.difficulty,
    q.status,
    q.prompt,
    ''::text as explanation,
    q.marks,
    q.choices,
    null::integer as correct_index,
    null::boolean as answer_boolean,
    '{}'::text[] as accepted_answers,
    q.match_lefts,
    q.match_rights,
    '{}'::text[] as rubric,
    q.min_words,
    q.image_hint,
    q.audio_hint
  from public.questions q
  where q.status = 'published'
    and exists (
      select 1
      from public.student_profiles profile
      where profile.user_id = (select auth.uid())
        and profile.language = q.language
        and profile.class_level = any(q.class_levels)
        and profile.series = any(q.series)
        and q.subject = any(profile.subjects)
    );
$$;

drop function if exists public.grade_question_answer(uuid, jsonb);
create or replace function public.grade_question_answer(question_id uuid, submitted_answer jsonb)
returns jsonb
language plpgsql
security definer
set search_path = public
as $$
declare
  q public.questions%rowtype;
  is_correct boolean := false;
  response text := '';
  words integer := 0;
  rubric_hits integer := 0;
begin
  if (select auth.uid()) is null then
    raise exception 'authentication required';
  end if;

  select *
  into q
  from public.questions question
  where question.id = question_id
    and question.status = 'published'
    and exists (
      select 1
      from public.student_profiles profile
      where profile.user_id = (select auth.uid())
        and profile.language = question.language
        and profile.class_level = any(question.class_levels)
        and profile.series = any(question.series)
        and question.subject = any(profile.subjects)
    );

  if not found then
    raise exception 'question not available for this learner';
  end if;

  if q.type in ('mcq', 'image_mcq', 'audio_mcq') then
    is_correct := (submitted_answer ->> 'selected')::integer = q.correct_index;
  elsif q.type = 'true_false' then
    is_correct := (submitted_answer ->> 'selected')::boolean = q.answer_boolean;
  elsif q.type = 'fill_blank' then
    response := lower(trim(coalesce(submitted_answer ->> 'value', '')));
    is_correct := exists (
      select 1 from unnest(q.accepted_answers) accepted where lower(trim(accepted)) = response
    );
  elsif q.type = 'match' then
    is_correct := not exists (
      select 1
      from generate_subscripts(q.match_lefts, 1) idx
      where (submitted_answer -> 'mapping' ->> ((idx - 1)::text))::integer is distinct from idx - 1
    );
  elsif q.type = 'essay' then
    response := lower(coalesce(submitted_answer ->> 'value', ''));
    words := cardinality(regexp_split_to_array(trim(response), '\s+'));
    select count(*)
    into rubric_hits
    from unnest(q.rubric) item
    where exists (
      select 1
      from unnest(regexp_split_to_array(lower(item), '\s+')) word
      where length(word) > 3 and position(word in response) > 0
    );
    is_correct := words >= coalesce(q.min_words, 80)
      and rubric_hits >= greatest(1, ceil(cardinality(q.rubric)::numeric / 2)::integer);
  end if;

  return jsonb_build_object(
    'correct', coalesce(is_correct, false),
    'explanation', q.explanation,
    'correct_index', q.correct_index,
    'answer_boolean', q.answer_boolean,
    'accepted_answers', coalesce(q.accepted_answers, '{}'::text[]),
    'match_rights', coalesce(q.match_rights, '{}'::text[]),
    'rubric', coalesce(q.rubric, '{}'::text[])
  );
end;
$$;

revoke all on function public.list_allowed_questions() from public;
revoke all on function public.grade_question_answer(uuid, jsonb) from public;
grant execute on function public.list_allowed_questions() to authenticated;
grant execute on function public.grade_question_answer(uuid, jsonb) to authenticated;

revoke select on public.questions from authenticated;
grant select on public.topics to authenticated;

notify pgrst, 'reload schema';

-- Secure admin foundation for StudySpark.
-- Roles must be stored in auth.users.raw_app_meta_data.role as admin, reviewer, or super_admin.

create table if not exists public.admin_audit_logs (
  id uuid primary key default gen_random_uuid(),
  actor_id uuid references auth.users(id) on delete set null,
  actor_email text not null default 'unknown',
  action text not null,
  target_table text not null,
  target_id text not null,
  details jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

alter table public.admin_audit_logs enable row level security;

create or replace function public.current_admin_role()
returns text
language sql
stable
security definer
set search_path = public
as $$
  select nullif((auth.jwt() -> 'app_metadata' ->> 'role'), '');
$$;

create or replace function public.is_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.current_admin_role() in ('admin', 'reviewer', 'super_admin');
$$;

create or replace function public.is_super_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.current_admin_role() = 'super_admin';
$$;

create or replace function public.assert_admin()
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if not public.is_admin() then
    raise exception 'admin access required';
  end if;
end;
$$;

create or replace function public.log_admin_action(
  action text,
  target_table text,
  target_id text,
  details jsonb default '{}'::jsonb
)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  log_id uuid;
begin
  perform public.assert_admin();

  insert into public.admin_audit_logs (actor_id, actor_email, action, target_table, target_id, details)
  values (
    auth.uid(),
    coalesce(auth.jwt() ->> 'email', 'unknown'),
    action,
    target_table,
    target_id,
    coalesce(details, '{}'::jsonb)
  )
  returning id into log_id;

  return log_id;
end;
$$;

drop policy if exists "admins read audit logs" on public.admin_audit_logs;
create policy "admins read audit logs"
on public.admin_audit_logs for select
to authenticated
using (public.is_admin());

drop policy if exists "admins manage profiles" on public.student_profiles;
create policy "admins manage profiles"
on public.student_profiles for all
to authenticated
using (public.is_admin())
with check (public.is_admin());

drop policy if exists "admins manage topics" on public.topics;
create policy "admins manage topics"
on public.topics for all
to authenticated
using (public.is_admin())
with check (public.is_admin());

drop policy if exists "admins manage questions" on public.questions;
create policy "admins manage questions"
on public.questions for all
to authenticated
using (public.is_admin())
with check (public.is_admin());

drop function if exists public.admin_list_topics();
create or replace function public.admin_list_topics()
returns setof public.topics
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();
  return query select * from public.topics order by subject, title;
end;
$$;

drop function if exists public.admin_list_questions(text);
create or replace function public.admin_list_questions(status_filter text default null)
returns setof public.questions
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();
  return query
    select *
    from public.questions
    where status_filter is null or status = status_filter
    order by updated_at desc, created_at desc;
end;
$$;

drop function if exists public.admin_list_learners();
create or replace function public.admin_list_learners()
returns table (
  user_id uuid,
  name text,
  language text,
  level text,
  class_level text,
  series text,
  subjects text[],
  attempts bigint,
  average_score numeric,
  last_seen timestamptz,
  created_at timestamptz
)
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();
  return query
    select
      profile.user_id,
      profile.name,
      profile.language,
      profile.level,
      profile.class_level,
      profile.series,
      profile.subjects,
      count(attempt.id) as attempts,
      coalesce(round(avg(attempt.score), 2), 0) as average_score,
      max(attempt.completed_at) as last_seen,
      profile.created_at
    from public.student_profiles profile
    left join public.practice_attempts attempt on attempt.user_id = profile.user_id
    group by profile.user_id, profile.name, profile.language, profile.level, profile.class_level,
      profile.series, profile.subjects, profile.created_at
    order by profile.created_at desc;
end;
$$;

drop function if exists public.admin_list_audit_logs(integer);
create or replace function public.admin_list_audit_logs(limit_count integer default 100)
returns setof public.admin_audit_logs
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();
  return query
    select *
    from public.admin_audit_logs
    order by created_at desc
    limit greatest(1, least(coalesce(limit_count, 100), 500));
end;
$$;

drop function if exists public.admin_upsert_topic(text, text, text, text, text, text[], text[], integer);
create or replace function public.admin_upsert_topic(
  topic_id text,
  topic_subject text,
  topic_title text,
  topic_description text,
  topic_level text,
  topic_class_levels text[],
  topic_series text[],
  topic_estimated_minutes integer
)
returns text
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  if trim(coalesce(topic_id, '')) = '' or trim(coalesce(topic_title, '')) = '' then
    raise exception 'topic id and title are required';
  end if;

  insert into public.topics (
    id, subject, title, description, level, class_levels, series, estimated_minutes
  )
  values (
    topic_id,
    topic_subject,
    topic_title,
    coalesce(topic_description, ''),
    topic_level,
    coalesce(topic_class_levels, '{}'::text[]),
    coalesce(topic_series, '{}'::text[]),
    greatest(1, coalesce(topic_estimated_minutes, 15))
  )
  on conflict (id) do update set
    subject = excluded.subject,
    title = excluded.title,
    description = excluded.description,
    level = excluded.level,
    class_levels = excluded.class_levels,
    series = excluded.series,
    estimated_minutes = excluded.estimated_minutes,
    updated_at = now();

  perform public.log_admin_action('topic.upsert', 'topics', topic_id, jsonb_build_object('title', topic_title));
  return topic_id;
end;
$$;

drop function if exists public.admin_validate_question(
  text, text, text[], text[], text, text, text, text, text, integer, text[], integer, boolean,
  text[], text[], text[], text[], integer
);
create or replace function public.admin_validate_question(
  question_subject text,
  question_topic_id text,
  question_class_levels text[],
  question_series text[],
  question_language text,
  question_type text,
  question_difficulty text,
  question_status text,
  question_prompt text,
  question_explanation text,
  question_marks integer,
  question_choices text[],
  question_correct_index integer,
  question_answer_boolean boolean,
  question_accepted_answers text[],
  question_match_lefts text[],
  question_match_rights text[],
  question_rubric text[],
  question_min_words integer
)
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  if not exists (select 1 from public.topics where id = question_topic_id) then
    raise exception 'topic does not exist';
  end if;
  if trim(coalesce(question_prompt, '')) = '' then
    raise exception 'question prompt is required';
  end if;
  if trim(coalesce(question_explanation, '')) = '' then
    raise exception 'explanation is required';
  end if;
  if coalesce(array_length(question_class_levels, 1), 0) = 0 then
    raise exception 'at least one class level is required';
  end if;
  if coalesce(array_length(question_series, 1), 0) = 0 then
    raise exception 'at least one series is required';
  end if;
  if question_marks is null or question_marks < 1 then
    raise exception 'marks must be at least 1';
  end if;
  if question_type in ('mcq', 'image_mcq', 'audio_mcq') then
    if coalesce(array_length(question_choices, 1), 0) < 2 then
      raise exception 'multiple choice questions require at least two choices';
    end if;
    if question_correct_index is null or question_correct_index < 0
      or question_correct_index >= array_length(question_choices, 1) then
      raise exception 'correct option index is invalid';
    end if;
  elsif question_type = 'true_false' then
    if question_answer_boolean is null then
      raise exception 'true/false questions require a boolean answer';
    end if;
  elsif question_type = 'fill_blank' then
    if coalesce(array_length(question_accepted_answers, 1), 0) = 0 then
      raise exception 'fill-in-the-blank questions require accepted answers';
    end if;
  elsif question_type = 'match' then
    if coalesce(array_length(question_match_lefts, 1), 0) = 0
      or array_length(question_match_lefts, 1) <> array_length(question_match_rights, 1) then
      raise exception 'matching questions require equal left and right lists';
    end if;
  elsif question_type = 'essay' then
    if coalesce(array_length(question_rubric, 1), 0) = 0 then
      raise exception 'essay questions require a rubric';
    end if;
    if coalesce(question_min_words, 0) < 1 then
      raise exception 'essay questions require a minimum word count';
    end if;
  end if;
end;
$$;

drop function if exists public.admin_upsert_question(
  uuid, text, text, text[], text[], text, text, text, text, text, text, integer, text[], integer,
  boolean, text[], text[], text[], text[], integer, text, text
);
create or replace function public.admin_upsert_question(
  question_id uuid,
  question_subject text,
  question_topic_id text,
  question_class_levels text[],
  question_series text[],
  question_language text,
  question_type text,
  question_difficulty text,
  question_status text,
  question_prompt text,
  question_explanation text,
  question_marks integer,
  question_choices text[],
  question_correct_index integer,
  question_answer_boolean boolean,
  question_accepted_answers text[],
  question_match_lefts text[],
  question_match_rights text[],
  question_rubric text[],
  question_min_words integer,
  question_image_hint text,
  question_audio_hint text
)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  saved_id uuid := coalesce(question_id, gen_random_uuid());
begin
  perform public.admin_validate_question(
    question_subject, question_topic_id, question_class_levels, question_series,
    question_language, question_type, question_difficulty, question_status, question_prompt,
    question_explanation, question_marks, question_choices, question_correct_index,
    question_answer_boolean, question_accepted_answers, question_match_lefts,
    question_match_rights, question_rubric, question_min_words
  );

  insert into public.questions (
    id, subject, topic_id, class_levels, series, language, type, difficulty, status, prompt,
    explanation, marks, choices, correct_index, answer_boolean, accepted_answers, match_lefts,
    match_rights, rubric, min_words, image_hint, audio_hint, created_by
  )
  values (
    saved_id, question_subject, question_topic_id, question_class_levels, question_series,
    question_language, question_type, question_difficulty, question_status, question_prompt,
    question_explanation, question_marks, question_choices, question_correct_index,
    question_answer_boolean, question_accepted_answers, question_match_lefts,
    question_match_rights, question_rubric, question_min_words, question_image_hint,
    question_audio_hint, auth.uid()
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
    answer_boolean = excluded.answer_boolean,
    accepted_answers = excluded.accepted_answers,
    match_lefts = excluded.match_lefts,
    match_rights = excluded.match_rights,
    rubric = excluded.rubric,
    min_words = excluded.min_words,
    image_hint = excluded.image_hint,
    audio_hint = excluded.audio_hint,
    updated_at = now();

  perform public.log_admin_action(
    case when question_id is null then 'question.create' else 'question.update' end,
    'questions',
    saved_id::text,
    jsonb_build_object('status', question_status, 'subject', question_subject, 'topic_id', question_topic_id)
  );

  return saved_id;
end;
$$;

drop function if exists public.admin_archive_question(uuid);
create or replace function public.admin_archive_question(question_id uuid)
returns boolean
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  update public.questions
  set status = 'archived', updated_at = now()
  where id = question_id;

  if not found then
    raise exception 'question not found';
  end if;

  perform public.log_admin_action('question.archive', 'questions', question_id::text, '{}'::jsonb);
  return true;
end;
$$;

revoke all on function public.current_admin_role() from public;
revoke all on function public.is_admin() from public;
revoke all on function public.is_super_admin() from public;
revoke all on function public.assert_admin() from public;
revoke all on function public.log_admin_action(text, text, text, jsonb) from public;
revoke all on function public.admin_list_topics() from public;
revoke all on function public.admin_list_questions(text) from public;
revoke all on function public.admin_list_learners() from public;
revoke all on function public.admin_list_audit_logs(integer) from public;
revoke all on function public.admin_upsert_topic(text, text, text, text, text, text[], text[], integer) from public;
revoke all on function public.admin_validate_question(
  text, text, text[], text[], text, text, text, text, text, text, integer, text[], integer, boolean,
  text[], text[], text[], text[], integer
) from public;
revoke all on function public.admin_upsert_question(
  uuid, text, text, text[], text[], text, text, text, text, text, text, integer, text[], integer,
  boolean, text[], text[], text[], text[], integer, text, text
) from public;
revoke all on function public.admin_archive_question(uuid) from public;

grant execute on function public.current_admin_role() to authenticated;
grant execute on function public.is_admin() to authenticated;
grant execute on function public.is_super_admin() to authenticated;
grant execute on function public.admin_list_topics() to authenticated;
grant execute on function public.admin_list_questions(text) to authenticated;
grant execute on function public.admin_list_learners() to authenticated;
grant execute on function public.admin_list_audit_logs(integer) to authenticated;
grant execute on function public.admin_upsert_topic(text, text, text, text, text, text[], text[], integer) to authenticated;
grant execute on function public.admin_upsert_question(
  uuid, text, text, text[], text[], text, text, text, text, text, text, integer, text[], integer,
  boolean, text[], text[], text[], text[], integer, text, text
) to authenticated;
grant execute on function public.admin_archive_question(uuid) to authenticated;

grant select on public.admin_audit_logs to authenticated;

notify pgrst, 'reload schema';

-- =========================================
-- 008_course_markdown_documents.sql
-- =========================================

-- Full Markdown course/question-bank documents.
-- Use this for professionally formatted topic documents that should stay in-app.

create table if not exists public.course_documents (
  id uuid primary key default gen_random_uuid(),
  topic_id text not null references public.topics(id) on delete cascade,
  subject text not null,
  title text not null,
  language text not null check (language in ('english', 'french')),
  level text not null check (level in ('ordinary', 'advanced')),
  class_levels text[] not null default '{}',
  series text[] not null default '{}',
  status text not null default 'draft' check (status in ('draft', 'review', 'published', 'archived')),
  markdown_content text not null,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

drop trigger if exists course_documents_set_updated_at on public.course_documents;
create trigger course_documents_set_updated_at
before update on public.course_documents
for each row execute function public.set_updated_at();

alter table public.course_documents enable row level security;

drop policy if exists "students read matching published course documents" on public.course_documents;
create policy "students read matching published course documents"
on public.course_documents for select
to authenticated
using (
  status = 'published'
  and exists (
    select 1
    from public.student_profiles profile
    where profile.user_id = (select auth.uid())
      and profile.language = course_documents.language
      and profile.class_level = any(course_documents.class_levels)
      and profile.series = any(course_documents.series)
      and course_documents.subject = any(profile.subjects)
  )
);

drop policy if exists "admins manage course documents" on public.course_documents;
create policy "admins manage course documents"
on public.course_documents for all
to authenticated
using (public.is_admin())
with check (public.is_admin());

create index if not exists course_documents_access_idx
on public.course_documents (status, language, subject, topic_id);

drop function if exists public.admin_list_course_documents(text);
create or replace function public.admin_list_course_documents(status_filter text default null)
returns setof public.course_documents
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();
  return query
    select *
    from public.course_documents
    where status_filter is null or status = status_filter
    order by updated_at desc, created_at desc;
end;
$$;

drop function if exists public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text
);
create or replace function public.admin_upsert_course_document(
  document_id uuid,
  document_topic_id text,
  document_subject text,
  document_title text,
  document_language text,
  document_level text,
  document_class_levels text[],
  document_series text[],
  document_status text,
  document_markdown_content text
)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  saved_id uuid := coalesce(document_id, gen_random_uuid());
begin
  perform public.assert_admin();

  if not exists (select 1 from public.topics where id = document_topic_id) then
    raise exception 'topic does not exist';
  end if;
  if trim(coalesce(document_title, '')) = '' then
    raise exception 'document title is required';
  end if;
  if length(trim(coalesce(document_markdown_content, ''))) < 20 then
    raise exception 'markdown content is too short';
  end if;
  if coalesce(array_length(document_class_levels, 1), 0) = 0 then
    raise exception 'at least one class level is required';
  end if;
  if coalesce(array_length(document_series, 1), 0) = 0 then
    raise exception 'at least one series is required';
  end if;

  insert into public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, created_by
  )
  values (
    saved_id, document_topic_id, document_subject, document_title, document_language,
    document_level, document_class_levels, document_series, document_status,
    document_markdown_content, auth.uid()
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

  perform public.log_admin_action(
    case when document_id is null then 'course_document.create' else 'course_document.update' end,
    'course_documents',
    saved_id::text,
    jsonb_build_object('title', document_title, 'status', document_status, 'topic_id', document_topic_id)
  );

  return saved_id;
end;
$$;

drop function if exists public.admin_archive_course_document(uuid);
create or replace function public.admin_archive_course_document(document_id uuid)
returns boolean
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  update public.course_documents
  set status = 'archived', updated_at = now()
  where id = document_id;

  if not found then
    raise exception 'course document not found';
  end if;

  perform public.log_admin_action('course_document.archive', 'course_documents', document_id::text, '{}'::jsonb);
  return true;
end;
$$;

drop function if exists public.list_allowed_course_documents();
create or replace function public.list_allowed_course_documents()
returns table (
  id uuid,
  topic_id text,
  subject text,
  title text,
  language text,
  level text,
  class_levels text[],
  series text[],
  markdown_content text,
  updated_at timestamptz
)
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if auth.uid() is null then
    raise exception 'authentication required';
  end if;

  return query
    select
      document.id,
      document.topic_id,
      document.subject,
      document.title,
      document.language,
      document.level,
      document.class_levels,
      document.series,
      document.markdown_content,
      document.updated_at
    from public.course_documents document
    join public.student_profiles profile on profile.user_id = auth.uid()
    where document.status = 'published'
      and (
        (
          profile.language = document.language
          and profile.class_level = any(document.class_levels)
          and profile.series = any(document.series)
          and document.subject = any(profile.subjects)
        )
        or exists (
          select 1
          from public.structural_question_progress progress
          where progress.user_id = auth.uid()
            and progress.document_id = document.id
        )
      )
    order by document.updated_at desc;
end;
$$;

revoke all on function public.admin_list_course_documents(text) from public;
revoke all on function public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text
) from public;
revoke all on function public.admin_archive_course_document(uuid) from public;
revoke all on function public.list_allowed_course_documents() from public;

grant execute on function public.admin_list_course_documents(text) to authenticated;
grant execute on function public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text
) to authenticated;
grant execute on function public.admin_archive_course_document(uuid) to authenticated;
grant execute on function public.list_allowed_course_documents() to authenticated;

grant select on public.course_documents to authenticated;

notify pgrst, 'reload schema';

-- 009_cameroon_curriculum_topics.sql
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
('math-number-algebra', 'Mathematics', 'Number and algebra', 'Indices, surds, logarithms, sequences, inequalities, and algebraic manipulation.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science', 'commercial', 'technical'], 0, 35),
('math-geometry-measurement', 'Mathematics', 'Geometry and measurement', 'Angles, polygons, circles, loci, mensuration, bearings, and scale drawing.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science', 'commercial', 'technical'], 0, 35),
('math-trigonometry', 'Mathematics', 'Trigonometry', 'Ratios, identities, sine rule, cosine rule, bearings, heights, and distances.', 'ordinary', array['form_4', 'form_5'], array['general', 'science', 'technical'], 0, 40),
('math-statistics-probability', 'Mathematics', 'Statistics and probability', 'Data presentation, averages, dispersion, probability, and interpretation.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science', 'commercial', 'technical'], 0, 30),
('addmath-functions', 'Additional Mathematics', 'Functions and graphs', 'Mappings, composite functions, inverse functions, curve sketching, and transformations.', 'ordinary', array['form_4', 'form_5'], array['science', 'technical'], 0, 40),
('addmath-calculus', 'Additional Mathematics', 'Introductory calculus', 'Limits, differentiation, integration, tangents, normals, maxima, and minima.', 'ordinary', array['form_4', 'form_5'], array['science', 'technical'], 0, 45),
('puremath-mechanics', 'Pure Mathematics with Mechanics', 'Pure mathematics with mechanics', 'Algebra, calculus, vectors, kinematics, forces, moments, energy, and motion.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 60),
('puremath-statistics', 'Pure Mathematics with Statistics', 'Pure mathematics with statistics', 'Algebra, calculus, probability, distributions, correlation, regression, and statistical inference.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 60),
('furthermath-pure', 'Further Mathematics', 'Pure mathematics', 'Complex numbers, matrices, vectors, proof, series, and advanced algebra.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 55),
('furthermath-mechanics-statistics', 'Further Mathematics', 'Mechanics and statistics', 'Forces, motion, moments, probability distributions, and statistical inference.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 55),
('eng-comprehension-summary', 'English Language', 'Comprehension and summary', 'Reading comprehension, inference, vocabulary, and concise summary writing.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science', 'arts', 'commercial', 'technical'], 0, 30),
('eng-grammar-vocabulary', 'English Language', 'Grammar and vocabulary', 'Sentence structure, tenses, clauses, concord, punctuation, and word use.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science', 'arts', 'commercial', 'technical'], 0, 30),
('eng-essay-writing', 'English Language', 'Composition and essay writing', 'Narrative, descriptive, argumentative, expository, and formal writing.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science', 'arts', 'commercial', 'technical'], 0, 35),
('lit-poetry-drama-prose', 'English Literature', 'Poetry, drama, and prose', 'Literary devices, character, theme, setting, plot, and critical appreciation.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['arts'], 0, 40),
('alit-textual-analysis', 'English Literature', 'Advanced textual analysis', 'Close reading, comparison, literary periods, criticism, and structured essays.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_arts'], 0, 50),
('french-grammar', 'French', 'Grammaire et conjugaison', 'Accords, temps verbaux, pronoms, syntaxe, discours direct et indirect.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science', 'arts', 'commercial', 'technical'], 0, 30),
('french-comprehension-expression', 'French', 'Comprehension et expression ecrite', 'Lecture, vocabulaire, resume, redaction, lettre, dialogue, et traduction.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science', 'arts', 'commercial', 'technical'], 0, 35),
('special-bilingual-french', 'Special Bilingual Education French', 'Special bilingual French', 'Advanced bilingual comprehension, grammar, translation, writing, and oral expression.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_arts'], 0, 45),
('religion-bible-ethics', 'Religious Studies', 'Biblical studies and ethics', 'Old Testament, New Testament, moral issues, worship, and religious values.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'arts'], 0, 35),
('philosophy-logic-ethics', 'Philosophy', 'Logic, ethics, and philosophy', 'Arguments, fallacies, epistemology, metaphysics, ethics, political philosophy, and African philosophy.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_arts'], 0, 50),
('logic-reasoning', 'Logic', 'Formal and critical reasoning', 'Propositions, syllogisms, truth tables, validity, fallacies, and argument analysis.', 'ordinary', array['form_4', 'form_5'], array['general', 'arts'], 0, 35),
('citizenship-civics', 'Citizenship Education', 'Citizenship and civic life', 'Rights, duties, constitution, democracy, elections, peace, and national integration.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'arts'], 0, 25),
('physics-mechanics', 'Physics', 'Mechanics', 'Motion, forces, work, energy, power, pressure, moments, and machines.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['science', 'technical'], 0, 40),
('physics-waves-electricity', 'Physics', 'Waves, electricity, and magnetism', 'Light, sound, heat, current electricity, circuits, magnetism, and electromagnetism.', 'ordinary', array['form_4', 'form_5'], array['science', 'technical'], 0, 45),
('aphysics-fields-modern', 'Physics', 'Advanced physics', 'Fields, oscillations, thermal physics, atomic physics, electronics, and nuclear physics.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 55),
('chem-structure-bonding', 'Chemistry', 'Atomic structure and bonding', 'Atoms, periodicity, ionic bonding, covalent bonding, metallic bonding, and structure.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['science', 'technical'], 0, 40),
('chem-stoichiometry-reactions', 'Chemistry', 'Stoichiometry and reactions', 'Moles, equations, acids, bases, salts, redox, rates, and equilibrium.', 'ordinary', array['form_4', 'form_5'], array['science', 'technical'], 0, 45),
('achem-organic-physical', 'Chemistry', 'Advanced organic and physical chemistry', 'Hydrocarbons, functional groups, energetics, kinetics, equilibrium, and electrochemistry.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 55),
('bio-cell-transport', 'Biology', 'Cells and transport', 'Cell structure, microscopy, diffusion, osmosis, active transport, and enzymes.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science'], 0, 35),
('bio-nutrition-respiration', 'Biology', 'Nutrition, respiration, and excretion', 'Photosynthesis, food tests, digestion, gas exchange, respiration, kidneys, and homeostasis.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science'], 0, 40),
('bio-reproduction-ecology', 'Biology', 'Reproduction, genetics, and ecology', 'Reproduction, inheritance, variation, evolution, ecosystems, cycles, and conservation.', 'ordinary', array['form_4', 'form_5'], array['general', 'science'], 0, 45),
('abio-physiology-genetics', 'Biology', 'Advanced physiology and genetics', 'Cell biochemistry, physiology, coordination, inheritance, ecology, and evolution.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 55),
('human-biology-systems', 'Human Biology', 'Human body systems', 'Support, movement, circulation, respiration, digestion, reproduction, and health.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science'], 0, 40),
('geology-earth-materials', 'Geology', 'Earth materials and processes', 'Minerals, rocks, plate tectonics, structures, fossils, geological maps, and earth history.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science', 'a_arts'], 0, 50),
('geography-physical', 'Geography', 'Physical geography', 'Rocks, weathering, climate, rivers, coasts, soils, vegetation, and natural hazards.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'arts'], 0, 40),
('geography-human-cameroon', 'Geography', 'Human and Cameroon geography', 'Population, settlement, agriculture, industry, transport, trade, maps, and Cameroon regions.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'arts'], 0, 45),
('ageography-regional-skills', 'Geography', 'Advanced geography and map skills', 'Geomorphology, climatology, regional geography, statistics, fieldwork, and map interpretation.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_arts'], 0, 55),
('history-cameroon-africa', 'History', 'Cameroon and African history', 'Pre-colonial societies, colonial rule, nationalism, reunification, and post-independence Cameroon.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'arts'], 0, 45),
('history-world', 'History', 'World history', 'European contact, imperialism, world wars, international organizations, and global change.', 'ordinary', array['form_4', 'form_5'], array['general', 'arts'], 0, 45),
('ahistory-cameroon-world', 'History', 'Advanced Cameroon, Africa, and world history', 'Historiography, political development, diplomacy, conflicts, and modern state formation.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_arts'], 0, 55),
('econ-microeconomics', 'Economics', 'Microeconomics', 'Scarcity, demand, supply, elasticity, production, costs, markets, and price determination.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_arts', 'a_commercial'], 0, 50),
('econ-macroeconomics-development', 'Economics', 'Macroeconomics and development', 'National income, money, banking, inflation, trade, public finance, growth, and development.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_arts', 'a_commercial'], 0, 55),
('commerce-trade-documents', 'Commerce', 'Trade and business documents', 'Home trade, foreign trade, retailing, wholesaling, invoices, receipts, and transport.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['commercial', 'technical'], 0, 35),
('commerce-finance-insurance', 'Commerce', 'Finance, banking, and insurance', 'Money, banking, credit, insurance, communication, advertising, and consumer protection.', 'ordinary', array['form_4', 'form_5'], array['commercial', 'technical'], 0, 40),
('accounting-principles', 'Accounting', 'Accounting principles', 'Double entry, source documents, ledgers, trial balance, errors, and control accounts.', 'ordinary', array['form_4', 'form_5'], array['commercial'], 0, 45),
('aaccounting-financial-statements', 'Accounting', 'Advanced accounting', 'Final accounts, partnerships, companies, incomplete records, ratios, budgets, and cash flow.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_commercial'], 0, 55),
('business-enterprise-management', 'Business Studies', 'Enterprise and management', 'Business ownership, objectives, management, marketing, operations, finance, and entrepreneurship.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['commercial', 'technical'], 0, 40),
('abusiness-strategy', 'Business Studies', 'Advanced business management', 'Strategy, human resources, marketing, operations, finance, business environment, and decision making.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_commercial'], 0, 55),
('cs-computer-systems', 'Computer Science', 'Computer systems', 'Hardware, software, data representation, operating systems, networks, security, and databases.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['science', 'technical'], 0, 40),
('cs-programming-algorithms', 'Computer Science', 'Programming and algorithms', 'Problem solving, flowcharts, pseudocode, variables, control structures, arrays, and testing.', 'ordinary', array['form_4', 'form_5'], array['science', 'technical'], 0, 45),
('acs-software-data', 'Computer Science', 'Advanced software and data', 'Algorithms, programming paradigms, databases, computer architecture, networks, and systems analysis.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 55),
('ict-productivity-tools', 'ICT', 'Productivity tools and digital communication', 'Word processing, spreadsheets, presentations, internet, email, collaboration, and digital citizenship.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['science', 'commercial', 'technical'], 0, 35),
('ict-data-web', 'ICT', 'Data, web, and information systems', 'Databases, web concepts, networks, information systems, security, and practical ICT tasks.', 'ordinary', array['form_4', 'form_5'], array['science', 'commercial', 'technical'], 0, 40),
('food-nutrition', 'Food and Nutrition', 'Food science and meal planning', 'Nutrients, digestion, food hygiene, preservation, meal planning, practical cookery, and budgeting.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general'], 0, 40),
('food-science-nutrition', 'Food Science and Nutrition', 'Advanced food science and nutrition', 'Food chemistry, dietetics, meal planning, preservation, hygiene, practical work, and food service.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 50),
('agric-crop-animal', 'Agricultural Science', 'Crop and animal production', 'Soils, crops, pests, livestock, farm tools, management, and agricultural economics.', 'ordinary', array['form_3', 'form_4', 'form_5'], array['general', 'science'], 0, 45),
('aagric-production-economics', 'Agricultural Science', 'Advanced agricultural science', 'Crop physiology, animal production, soil science, farm management, and agricultural economics.', 'advanced', array['lower_sixth', 'upper_sixth'], array['a_science'], 0, 55)
on conflict (id) do update set
  subject = excluded.subject,
  title = excluded.title,
  description = excluded.description,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  question_count = excluded.question_count,
  estimated_minutes = excluded.estimated_minutes;

notify pgrst, 'reload schema';

-- 010_course_document_publish_defaults.sql
-- Make Markdown course documents publish-first and broadly visible by subject.
-- Learner access is still protected by authentication, profile existence, language, and selected subjects.

alter table public.course_documents
alter column status set default 'published';

update public.course_documents
set
  status = 'published',
  class_levels = array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth'],
  series = array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical'],
  updated_at = now()
where status <> 'archived';

notify pgrst, 'reload schema';

-- 011_structural_paper_progress.sql
-- Structural-paper workflow.
-- Removes legacy in-app quiz question rows and tracks learner progress per paper question number.

delete from public.questions;

create table if not exists public.structural_question_progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid not null references public.course_documents(id) on delete cascade,
  question_number integer not null check (question_number > 0),
  status text not null check (status in ('started', 'passed', 'failed')),
  started_at timestamptz,
  completed_at timestamptz,
  duration_seconds integer check (duration_seconds is null or duration_seconds >= 0),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (user_id, document_id, question_number)
);

alter table public.structural_question_progress
add column if not exists started_at timestamptz,
add column if not exists completed_at timestamptz,
add column if not exists duration_seconds integer check (duration_seconds is null or duration_seconds >= 0);

drop trigger if exists structural_question_progress_set_updated_at on public.structural_question_progress;
create trigger structural_question_progress_set_updated_at
before update on public.structural_question_progress
for each row execute function public.set_updated_at();

alter table public.structural_question_progress enable row level security;

drop policy if exists "students manage own structural progress" on public.structural_question_progress;
create policy "students manage own structural progress"
on public.structural_question_progress for all
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "admins read structural progress" on public.structural_question_progress;
create policy "admins read structural progress"
on public.structural_question_progress for select
to authenticated
using (public.is_admin());

create index if not exists structural_progress_user_idx
on public.structural_question_progress (user_id, updated_at desc);

create index if not exists structural_progress_document_idx
on public.structural_question_progress (document_id, question_number);

drop function if exists public.admin_delete_course_document(uuid);
create or replace function public.admin_delete_course_document(document_id uuid)
returns boolean
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  delete from public.course_documents
  where id = document_id;

  if not found then
    raise exception 'course document not found';
  end if;

  perform public.log_admin_action('course_document.delete', 'course_documents', document_id::text, '{}'::jsonb);
  return true;
end;
$$;

revoke all on function public.admin_delete_course_document(uuid) from public;
grant execute on function public.admin_delete_course_document(uuid) to authenticated;
grant select, insert, update, delete on public.structural_question_progress to authenticated;

notify pgrst, 'reload schema';

-- 013_level_leaderboard.sql
-- Level-based learner leaderboard for structural papers.
-- Exposes aggregate progress only: no emails, no auth metadata, no raw answers.

drop function if exists public.list_level_leaderboard();
create or replace function public.list_level_leaderboard()
returns table (
  user_id uuid,
  name text,
  country text,
  region text,
  city text,
  location_verified boolean,
  level text,
  class_level text,
  series text,
  questions_started integer,
  questions_passed integer,
  questions_failed integer,
  pass_rate integer,
  total_duration_seconds integer,
  average_duration_seconds integer,
  study_days integer
)
language sql
security definer
set search_path = public
as $$
  with learner_progress as (
    select
      profile.user_id,
      profile.name,
      profile.country,
      profile.region,
      profile.city,
      profile.location_verified,
      profile.level,
      profile.class_level,
      profile.series,
      count(progress.id)::integer as questions_started,
      count(progress.id) filter (where progress.status = 'passed')::integer as questions_passed,
      count(progress.id) filter (where progress.status = 'failed')::integer as questions_failed,
      coalesce(sum(progress.duration_seconds), 0)::integer as total_duration_seconds,
      coalesce(avg(progress.duration_seconds) filter (where progress.duration_seconds is not null), 0)::integer as average_duration_seconds,
      count(distinct date(coalesce(progress.completed_at, progress.started_at, progress.updated_at)))::integer as study_days
    from public.student_profiles profile
    left join public.structural_question_progress progress on progress.user_id = profile.user_id
    group by
      profile.user_id,
      profile.name,
      profile.country,
      profile.region,
      profile.city,
      profile.location_verified,
      profile.level,
      profile.class_level,
      profile.series
  )
  select
    user_id,
    name,
    country,
    region,
    city,
    location_verified,
    level,
    class_level,
    series,
    questions_started,
    questions_passed,
    questions_failed,
    case
      when questions_started > 0 then round((questions_passed::numeric / questions_started::numeric) * 100)::integer
      else 0
    end as pass_rate,
    total_duration_seconds,
    average_duration_seconds,
    study_days
  from learner_progress
  where questions_started > 0
  order by
    level,
    country,
    region,
    city,
    questions_passed desc,
    pass_rate desc,
    study_days desc,
    total_duration_seconds asc,
    name asc;
$$;

revoke all on function public.list_level_leaderboard() from public;
grant execute on function public.list_level_leaderboard() to authenticated;

notify pgrst, 'reload schema';

-- 017_protected_content_events.sql
-- Audit trail for protected paper views and anti-leak deterrence signals.

create table if not exists public.protected_content_events (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid references public.course_documents(id) on delete cascade,
  event_type text not null check (event_type in ('view', 'copy_blocked', 'print_blocked', 'visibility_hidden')),
  details jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

alter table public.protected_content_events enable row level security;

drop policy if exists "students insert own protected content events" on public.protected_content_events;
create policy "students insert own protected content events"
on public.protected_content_events for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "admins read protected content events" on public.protected_content_events;
create policy "admins read protected content events"
on public.protected_content_events for select
to authenticated
using (public.is_admin());

create index if not exists protected_content_events_user_idx
on public.protected_content_events (user_id, created_at desc);

create index if not exists protected_content_events_document_idx
on public.protected_content_events (document_id, created_at desc);

drop function if exists public.record_protected_content_event(uuid, text, jsonb);
create or replace function public.record_protected_content_event(
  event_document_id uuid,
  event_type text,
  event_details jsonb default '{}'::jsonb
)
returns uuid
language plpgsql
security invoker
set search_path = public
as $$
declare
  event_id uuid;
begin
  if auth.uid() is null then
    raise exception 'authentication required';
  end if;

  insert into public.protected_content_events (user_id, document_id, event_type, details)
  values (auth.uid(), event_document_id, event_type, coalesce(event_details, '{}'::jsonb))
  returning id into event_id;

  return event_id;
end;
$$;

revoke all on function public.record_protected_content_event(uuid, text, jsonb) from public;
grant execute on function public.record_protected_content_event(uuid, text, jsonb) to authenticated;
grant insert on public.protected_content_events to authenticated;
grant select on public.protected_content_events to authenticated;

notify pgrst, 'reload schema';

-- 018_retire_legacy_quiz_api.sql
-- Retire the old MCQ/quiz API from the learner product.
-- Structural papers now power learner practice and progress.

delete from public.questions;

revoke select, insert, update, delete on public.questions from anon, authenticated;
revoke select, insert, update, delete on public.practice_attempts from anon, authenticated;

revoke all on function public.list_allowed_questions() from public;
revoke all on function public.list_allowed_questions() from anon;
revoke all on function public.list_allowed_questions() from authenticated;

revoke all on function public.grade_question_answer(uuid, jsonb) from public;
revoke all on function public.grade_question_answer(uuid, jsonb) from anon;
revoke all on function public.grade_question_answer(uuid, jsonb) from authenticated;

revoke all on function public.admin_list_questions(text) from public;
revoke all on function public.admin_list_questions(text) from anon;
revoke all on function public.admin_list_questions(text) from authenticated;

notify pgrst, 'reload schema';
-- Production hardening for structural-paper-only StudySpark.
-- Run after 000_full_studyspark_setup.sql. It removes retired quiz API access,
-- moves learner progress writes behind an RPC, locks ranking-critical profile
-- changes after activity, and updates admin learner reporting to structural data.

create extension if not exists pgcrypto;

alter table public.student_profiles
add column if not exists profile_locked_at timestamptz,
add column if not exists location_source text not null default 'self_reported'
  check (location_source in ('self_reported', 'browser_geolocation', 'admin_verified')),
add column if not exists verified_country text,
add column if not exists verified_region text,
add column if not exists verified_city text,
add column if not exists verified_location_at timestamptz;

update public.student_profiles
set
  verified_country = case when location_verified then coalesce(verified_country, country) else verified_country end,
  verified_region = case when location_verified then coalesce(verified_region, region) else verified_region end,
  verified_city = case when location_verified then coalesce(verified_city, city) else verified_city end,
  verified_location_at = case when location_verified then coalesce(verified_location_at, location_verified_at, now()) else verified_location_at end,
  location_source = case when location_verified then 'browser_geolocation' else location_source end;

-- Retired MCQ/quiz API: keep legacy objects inaccessible while historical files are cleaned up.
delete from public.questions;
revoke select, insert, update, delete on public.questions from anon, authenticated;
revoke select, insert, update, delete on public.practice_attempts from anon, authenticated;
drop function if exists public.list_allowed_questions();
drop function if exists public.grade_question_answer(uuid, jsonb);
drop function if exists public.admin_list_questions(text);
drop function if exists public.admin_validate_question(
  text, text, text[], text[], text, text, text, text, text, text, integer,
  text[], integer, boolean, text[], text[], text[], text[], integer
);
drop function if exists public.admin_upsert_question(
  uuid, text, text, text[], text[], text, text, text, text, text, text, integer,
  text[], integer, boolean, text[], text[], text[], text[], integer, text, text
);
drop function if exists public.admin_archive_question(uuid);

-- Learners should not directly manufacture leaderboard/progress rows.
revoke insert, update, delete on public.structural_question_progress from anon, authenticated;
grant select on public.structural_question_progress to authenticated;

-- Profile fields control paper access and ranking cohorts, so writes go through
-- update_student_profile() where lock rules can be enforced consistently.
revoke insert, update, delete on public.student_profiles from anon, authenticated;
grant select on public.student_profiles to authenticated;

drop policy if exists "students manage own structural progress" on public.structural_question_progress;
drop policy if exists "students read own structural progress" on public.structural_question_progress;
create policy "students read own structural progress"
on public.structural_question_progress for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "admins read structural progress" on public.structural_question_progress;
create policy "admins read structural progress"
on public.structural_question_progress for select
to authenticated
using (public.is_admin());

drop function if exists public.mark_structural_question_progress(uuid, integer, text);
create or replace function public.mark_structural_question_progress(
  target_document_id uuid,
  target_question_number integer,
  target_status text
)
returns table (
  id uuid,
  document_id uuid,
  question_number integer,
  status text,
  started_at timestamptz,
  completed_at timestamptz,
  duration_seconds integer,
  updated_at timestamptz
)
language plpgsql
security definer
set search_path = public
as $$
declare
  current_user_id uuid := auth.uid();
  existing_progress public.structural_question_progress%rowtype;
  started_value timestamptz;
  completed_value timestamptz;
  duration_value integer;
begin
  if current_user_id is null then
    raise exception 'authentication required';
  end if;

  if target_question_number is null or target_question_number < 1 or target_question_number > 500 then
    raise exception 'invalid question number';
  end if;

  if target_status not in ('started', 'passed', 'failed') then
    raise exception 'invalid progress status';
  end if;

  if not exists (
    select 1
    from public.course_documents document
    join public.student_profiles profile on profile.user_id = current_user_id
    where document.id = target_document_id
      and document.status = 'published'
      and profile.language = document.language
      and profile.class_level = any(document.class_levels)
      and profile.series = any(document.series)
      and document.subject = any(profile.subjects)
  ) then
    raise exception 'paper is not available for this learner profile';
  end if;

  select *
  into existing_progress
  from public.structural_question_progress progress
  where progress.user_id = current_user_id
    and progress.document_id = target_document_id
    and progress.question_number = target_question_number;

  started_value := coalesce(existing_progress.started_at, now());
  completed_value := case when target_status = 'started' then null else now() end;
  duration_value := case
    when completed_value is null then null
    else greatest(1, extract(epoch from (completed_value - started_value))::integer)
  end;

  insert into public.structural_question_progress (
    user_id,
    document_id,
    question_number,
    status,
    started_at,
    completed_at,
    duration_seconds,
    updated_at
  )
  values (
    current_user_id,
    target_document_id,
    target_question_number,
    target_status,
    started_value,
    completed_value,
    duration_value,
    now()
  )
  on conflict (user_id, document_id, question_number) do update set
    status = excluded.status,
    started_at = coalesce(public.structural_question_progress.started_at, excluded.started_at),
    completed_at = excluded.completed_at,
    duration_seconds = excluded.duration_seconds,
    updated_at = now()
  returning
    structural_question_progress.id,
    structural_question_progress.document_id,
    structural_question_progress.question_number,
    structural_question_progress.status,
    structural_question_progress.started_at,
    structural_question_progress.completed_at,
    structural_question_progress.duration_seconds,
    structural_question_progress.updated_at
  into
    id,
    document_id,
    question_number,
    status,
    started_at,
    completed_at,
    duration_seconds,
    updated_at;

  update public.student_profiles
  set profile_locked_at = coalesce(profile_locked_at, now())
  where user_id = current_user_id;

  return next;
end;
$$;

revoke all on function public.mark_structural_question_progress(uuid, integer, text) from public;
grant execute on function public.mark_structural_question_progress(uuid, integer, text) to authenticated;

drop function if exists public.update_student_profile(
  text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
);
create or replace function public.update_student_profile(
  profile_name text,
  profile_language text,
  profile_country text,
  profile_region text,
  profile_city text,
  profile_location_verified boolean,
  profile_location_latitude numeric,
  profile_location_longitude numeric,
  profile_location_verified_at timestamptz,
  profile_level text,
  profile_class_level text,
  profile_series text,
  profile_subjects text[]
)
returns public.student_profiles
language plpgsql
security definer
set search_path = public
as $$
declare
  current_user_id uuid := auth.uid();
  existing_profile public.student_profiles%rowtype;
  saved_profile public.student_profiles%rowtype;
  has_progress boolean;
begin
  if current_user_id is null then
    raise exception 'authentication required';
  end if;

  if trim(coalesce(profile_name, '')) = '' then
    raise exception 'display name is required';
  end if;

  if coalesce(array_length(profile_subjects, 1), 0) = 0 then
    raise exception 'at least one subject is required';
  end if;

  select *
  into existing_profile
  from public.student_profiles
  where user_id = current_user_id;

  select exists (
    select 1 from public.structural_question_progress
    where user_id = current_user_id
  )
  into has_progress;

if existing_profile.user_id is not null and has_progress and (
    existing_profile.country is distinct from profile_country or
    existing_profile.region is distinct from profile_region or
    existing_profile.city is distinct from trim(coalesce(profile_city, ''))
) then
    raise exception 'country, region, and city are locked after progress starts';
end if;

  insert into public.student_profiles (
    user_id,
    name,
    language,
    country,
    region,
    city,
    location_verified,
    location_latitude,
    location_longitude,
    location_verified_at,
    location_source,
    verified_country,
    verified_region,
    verified_city,
    verified_location_at,
    level,
    class_level,
    series,
    subjects
  )
  values (
    current_user_id,
    trim(profile_name),
    profile_language,
    profile_country,
    profile_region,
    trim(coalesce(profile_city, '')),
    coalesce(profile_location_verified, false),
    profile_location_latitude,
    profile_location_longitude,
    profile_location_verified_at,
    case when coalesce(profile_location_verified, false) then 'browser_geolocation' else 'self_reported' end,
    case when coalesce(profile_location_verified, false) then profile_country else null end,
    case when coalesce(profile_location_verified, false) then profile_region else null end,
    case when coalesce(profile_location_verified, false) then trim(coalesce(profile_city, '')) else null end,
    case when coalesce(profile_location_verified, false) then coalesce(profile_location_verified_at, now()) else null end,
    profile_level,
    profile_class_level,
    profile_series,
    profile_subjects
  )
  on conflict (user_id) do update set
    name = excluded.name,
    language = excluded.language,
    country = case when has_progress then public.student_profiles.country else excluded.country end,
    region = case when has_progress then public.student_profiles.region else excluded.region end,
    city = case when has_progress then public.student_profiles.city else excluded.city end,
    location_verified = excluded.location_verified,
    location_latitude = excluded.location_latitude,
    location_longitude = excluded.location_longitude,
    location_verified_at = excluded.location_verified_at,
    location_source = excluded.location_source,
    verified_country = excluded.verified_country,
    verified_region = excluded.verified_region,
    verified_city = excluded.verified_city,
    verified_location_at = excluded.verified_location_at,
    level = case when has_progress then public.student_profiles.level else excluded.level end,
    class_level = case when has_progress then public.student_profiles.class_level else excluded.class_level end,
    series = case when has_progress then public.student_profiles.series else excluded.series end,
    subjects = excluded.subjects,
    updated_at = now()
  returning * into saved_profile;

  return saved_profile;
end;
$$;

revoke all on function public.update_student_profile(
  text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
) from public;
grant execute on function public.update_student_profile(
  text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
) to authenticated;

drop function if exists public.admin_list_learners();
create or replace function public.admin_list_learners()
returns table (
  user_id uuid,
  name text,
  language text,
  level text,
  class_level text,
  series text,
  subjects text[],
  country text,
  region text,
  city text,
  location_verified boolean,
  questions_started bigint,
  questions_passed bigint,
  questions_failed bigint,
  pass_rate numeric,
  average_duration_seconds numeric,
  study_days bigint,
  last_seen timestamptz,
  created_at timestamptz
)
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();
  return query
    select
      profile.user_id,
      profile.name,
      profile.language,
      profile.level,
      profile.class_level,
      profile.series,
      profile.subjects,
      profile.country,
      profile.region,
      profile.city,
      profile.location_verified,
      count(progress.id) as questions_started,
      count(progress.id) filter (where progress.status = 'passed') as questions_passed,
      count(progress.id) filter (where progress.status = 'failed') as questions_failed,
      case
        when count(progress.id) > 0 then
          round((count(progress.id) filter (where progress.status = 'passed'))::numeric / count(progress.id)::numeric * 100, 2)
        else 0
      end as pass_rate,
      coalesce(round(avg(progress.duration_seconds) filter (where progress.duration_seconds is not null), 2), 0) as average_duration_seconds,
      count(distinct date(coalesce(progress.completed_at, progress.started_at, progress.updated_at))) as study_days,
      max(progress.updated_at) as last_seen,
      profile.created_at
    from public.student_profiles profile
    left join public.structural_question_progress progress on progress.user_id = profile.user_id
    group by
      profile.user_id,
      profile.name,
      profile.language,
      profile.level,
      profile.class_level,
      profile.series,
      profile.subjects,
      profile.country,
      profile.region,
      profile.city,
      profile.location_verified,
      profile.created_at
    order by profile.created_at desc;
end;
$$;

revoke all on function public.admin_list_learners() from public;
grant execute on function public.admin_list_learners() to authenticated;

drop function if exists public.list_level_leaderboard();
create or replace function public.list_level_leaderboard()
returns table (
  user_id uuid,
  name text,
  country text,
  region text,
  city text,
  location_verified boolean,
  level text,
  class_level text,
  series text,
  questions_started integer,
  questions_passed integer,
  questions_failed integer,
  pass_rate integer,
  total_duration_seconds integer,
  average_duration_seconds integer,
  study_days integer,
  trust_level text
)
language sql
security definer
set search_path = public
as $$
  with learner_progress as (
    select
      profile.user_id,
      profile.name,
      coalesce(profile.verified_country, profile.country) as country,
      coalesce(profile.verified_region, profile.region) as region,
      coalesce(profile.verified_city, profile.city) as city,
      profile.location_verified,
      profile.level,
      profile.class_level,
      profile.series,
      count(progress.id)::integer as questions_started,
      count(progress.id) filter (where progress.status = 'passed')::integer as questions_passed,
      count(progress.id) filter (where progress.status = 'failed')::integer as questions_failed,
      coalesce(sum(progress.duration_seconds), 0)::integer as total_duration_seconds,
      coalesce(avg(progress.duration_seconds) filter (where progress.duration_seconds is not null), 0)::integer as average_duration_seconds,
      count(distinct date(coalesce(progress.completed_at, progress.started_at, progress.updated_at)))::integer as study_days
    from public.student_profiles profile
    left join public.structural_question_progress progress on progress.user_id = profile.user_id
    group by
      profile.user_id,
      profile.name,
      profile.verified_country,
      profile.country,
      profile.verified_region,
      profile.region,
      profile.verified_city,
      profile.city,
      profile.location_verified,
      profile.level,
      profile.class_level,
      profile.series
  )
  select
    user_id,
    name,
    country,
    region,
    city,
    location_verified,
    level,
    class_level,
    series,
    questions_started,
    questions_passed,
    questions_failed,
    case
      when questions_started > 0 then round((questions_passed::numeric / questions_started::numeric) * 100)::integer
      else 0
    end as pass_rate,
    total_duration_seconds,
    average_duration_seconds,
    study_days,
    case when location_verified then 'verified_location' else 'self_reported_location' end as trust_level
  from learner_progress
  where questions_started > 0
  order by
    level,
    country,
    region,
    city,
    questions_passed desc,
    pass_rate desc,
    study_days desc,
    total_duration_seconds asc,
    name asc;
$$;

revoke all on function public.list_level_leaderboard() from public;
grant execute on function public.list_level_leaderboard() to authenticated;

notify pgrst, 'reload schema';
