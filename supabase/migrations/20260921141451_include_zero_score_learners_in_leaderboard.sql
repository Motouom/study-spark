-- Include all registered learner profiles in the leaderboard, even before
-- they have study activity. Active learners still rank above zero-score rows.

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
  papers_read integer,
  papers_completed integer,
  study_days integer,
  useful_checkpoints integer,
  score integer,
  questions_started integer,
  questions_passed integer,
  questions_failed integer,
  pass_rate integer,
  total_duration_seconds integer,
  average_duration_seconds integer,
  trust_level text
)
language sql
security definer
set search_path = public
as $$
  with session_totals as (
    select
      sessions.user_id,
      count(distinct sessions.document_id)::integer as papers_read,
      count(distinct sessions.document_id) filter (where sessions.completed)::integer as papers_completed,
      coalesce(sum(sessions.duration_seconds), 0)::integer as total_duration_seconds,
      coalesce(avg(sessions.duration_seconds) filter (where sessions.duration_seconds > 0), 0)::integer as average_duration_seconds,
      count(distinct date(coalesce(sessions.ended_at, sessions.started_at, sessions.updated_at)))::integer as study_days
    from public.paper_study_sessions sessions
    group by sessions.user_id
  ),
  checkpoint_totals as (
    select
      checkpoints.user_id,
      count(*) filter (where checkpoints.checkpoint_type in ('understood', 'review'))::integer as useful_checkpoints
    from public.paper_study_checkpoints checkpoints
    group by checkpoints.user_id
  ),
  question_totals as (
    select
      progress.user_id,
      count(progress.id)::integer as questions_started,
      count(progress.id) filter (where progress.status = 'passed')::integer as questions_passed,
      count(progress.id) filter (where progress.status = 'failed')::integer as questions_failed
    from public.structural_question_progress progress
    group by progress.user_id
  ),
  learner_rows as (
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
      coalesce(session_totals.papers_read, 0)::integer as papers_read,
      coalesce(session_totals.papers_completed, 0)::integer as papers_completed,
      coalesce(session_totals.study_days, 0)::integer as study_days,
      coalesce(checkpoint_totals.useful_checkpoints, 0)::integer as useful_checkpoints,
      coalesce(question_totals.questions_started, 0)::integer as questions_started,
      coalesce(question_totals.questions_passed, 0)::integer as questions_passed,
      coalesce(question_totals.questions_failed, 0)::integer as questions_failed,
      coalesce(session_totals.total_duration_seconds, 0)::integer as total_duration_seconds,
      coalesce(session_totals.average_duration_seconds, 0)::integer as average_duration_seconds,
      case when profile.location_verified then 'verified_location' else 'self_reported_location' end as trust_level
    from public.student_profiles profile
    left join session_totals on session_totals.user_id = profile.user_id
    left join checkpoint_totals on checkpoint_totals.user_id = profile.user_id
    left join question_totals on question_totals.user_id = profile.user_id
  )
  select
    learner_rows.user_id,
    learner_rows.name,
    learner_rows.country,
    learner_rows.region,
    learner_rows.city,
    learner_rows.location_verified,
    learner_rows.level,
    learner_rows.class_level,
    learner_rows.series,
    learner_rows.papers_read,
    learner_rows.papers_completed,
    learner_rows.study_days,
    learner_rows.useful_checkpoints,
    (
      learner_rows.papers_completed * 10 +
      learner_rows.papers_read * 3 +
      learner_rows.useful_checkpoints * 2 +
      learner_rows.study_days * 5
    )::integer as score,
    learner_rows.questions_started,
    learner_rows.questions_passed,
    learner_rows.questions_failed,
    case
      when learner_rows.questions_started > 0
        then round((learner_rows.questions_passed::numeric / learner_rows.questions_started::numeric) * 100)::integer
      else 0
    end as pass_rate,
    learner_rows.total_duration_seconds,
    learner_rows.average_duration_seconds,
    learner_rows.trust_level
  from learner_rows
  order by
    (
      learner_rows.papers_completed * 10 +
      learner_rows.papers_read * 3 +
      learner_rows.useful_checkpoints * 2 +
      learner_rows.study_days * 5
    ) desc,
    learner_rows.questions_passed desc,
    learner_rows.questions_started desc,
    learner_rows.location_verified desc,
    learner_rows.name asc;
$$;

revoke all on function public.list_level_leaderboard() from public;
grant execute on function public.list_level_leaderboard() to authenticated;

notify pgrst, 'reload schema';
