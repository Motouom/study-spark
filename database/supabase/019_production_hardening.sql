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
    existing_profile.city is distinct from trim(coalesce(profile_city, '')) or
    existing_profile.level is distinct from profile_level or
    existing_profile.class_level is distinct from profile_class_level or
    existing_profile.series is distinct from profile_series
  ) then
    raise exception 'country, region, city, level, class, and series are locked after progress starts';
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
