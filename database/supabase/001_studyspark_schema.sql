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
