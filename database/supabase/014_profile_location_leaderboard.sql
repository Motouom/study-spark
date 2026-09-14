-- Adds learner location fields and exposes location-aware leaderboard rows.
-- Run this after the previous StudySpark setup SQL.

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
