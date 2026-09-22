-- Migration 043: Reading-based leaderboard
-- Replaces the retired structural_question_progress ranking with a
-- formula based on paper reading sessions and checkpoints.
--
-- RANKING FORMULA (per learner):
--   papers_completed  = unique documents where best scroll >= 85%  → 10 pts each
--   papers_started    = unique documents read at any depth          →  3 pts each (already counted above if completed)
--   useful_checkpoints= understood/review marks, capped at 3 per   →  2 pts each
--                       unique document to block checkpoint spam
--   study_days        = calendar days with any reading activity     →  5 pts each
--
-- All caps are per unique document so repeating the same action on
-- the same paper does not keep inflating the score.

drop function if exists public.list_level_leaderboard();

create or replace function public.list_level_leaderboard()
returns table (
  user_id         uuid,
  name            text,
  country         text,
  region          text,
  city            text,
  location_verified boolean,
  level           text,
  class_level     text,
  series          text,
  -- Activity columns (kept for UI display)
  papers_read     integer,
  papers_completed integer,
  study_days      integer,
  total_duration_seconds integer,
  useful_checkpoints integer,
  -- Derived score (UI can show this)
  score           integer,
  -- Legacy columns kept so existing TypeScript types don't break
  questions_started  integer,
  questions_passed   integer,
  questions_failed   integer,
  pass_rate          integer,
  average_duration_seconds integer
)
language sql
security definer
set search_path = public
as $$
  with

  -- Best scroll depth per learner per document (prevents duplicate sessions
  -- from the same paper inflating completed counts)
  best_depth as (
    select
      user_id,
      document_id,
      max(max_scroll_percent) as best_scroll,
      max(duration_seconds)   as best_duration,
      min(date(started_at))   as first_read_date
    from public.paper_study_sessions
    group by user_id, document_id
  ),

  -- Per-learner reading aggregates
  reading_agg as (
    select
      user_id,
      count(*)::integer                                         as papers_read,
      count(*) filter (where best_scroll >= 85)::integer        as papers_completed,
      coalesce(sum(best_duration), 0)::integer                  as total_duration_seconds,
      count(distinct date(
        (select min(started_at) from public.paper_study_sessions s2
         where s2.user_id = bd.user_id and s2.document_id = bd.document_id)
      ))::integer                                               as study_days
    from best_depth bd
    group by user_id
  ),

  -- Useful checkpoints per learner, capped at 3 per unique document to
  -- prevent spamming "I understand this" on the same paper
  checkpoint_agg as (
    select
      user_id,
      sum(
        least(
          count(*) filter (where checkpoint_type in ('understood', 'review')),
          3
        )
      )::integer as useful_checkpoints
    from public.paper_study_checkpoints
    where checkpoint_type in ('understood', 'review')
    group by user_id, document_id
  ),

  checkpoint_totals as (
    select
      user_id,
      coalesce(sum(useful_checkpoints), 0)::integer as useful_checkpoints
    from checkpoint_agg
    group by user_id
  ),

  -- Study days from session start dates
  study_day_counts as (
    select
      user_id,
      count(distinct date(started_at))::integer as study_days
    from public.paper_study_sessions
    group by user_id
  ),

  -- Combine with profile
  learner_scores as (
    select
      p.user_id,
      p.name,
      p.country,
      p.region,
      p.city,
      p.location_verified,
      p.level,
      p.class_level,
      p.series,
      coalesce(ra.papers_read, 0)::integer                as papers_read,
      coalesce(ra.papers_completed, 0)::integer           as papers_completed,
      coalesce(sd.study_days, 0)::integer                 as study_days,
      coalesce(ra.total_duration_seconds, 0)::integer     as total_duration_seconds,
      coalesce(ct.useful_checkpoints, 0)::integer         as useful_checkpoints,
      -- Score formula
      (
        coalesce(ra.papers_completed, 0) * 10
        + (coalesce(ra.papers_read, 0) - coalesce(ra.papers_completed, 0)) * 3
        + coalesce(ct.useful_checkpoints, 0) * 2
        + coalesce(sd.study_days, 0) * 5
      )::integer                                          as score
    from public.student_profiles p
    left join reading_agg         ra on ra.user_id = p.user_id
    left join checkpoint_totals   ct on ct.user_id = p.user_id
    left join study_day_counts    sd on sd.user_id = p.user_id
    where coalesce(ra.papers_read, 0) > 0
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
    papers_read,
    papers_completed,
    study_days,
    total_duration_seconds,
    useful_checkpoints,
    score,
    -- Legacy aliases so TypeScript LeaderboardRow type keeps compiling
    papers_read                                   as questions_started,
    papers_completed                              as questions_passed,
    0                                             as questions_failed,
    case
      when papers_read > 0
      then round((papers_completed::numeric / papers_read::numeric) * 100)::integer
      else 0
    end                                           as pass_rate,
    case
      when papers_read > 0
      then (total_duration_seconds / papers_read)::integer
      else 0
    end                                           as average_duration_seconds
  from learner_scores
  order by
    score desc,
    papers_completed desc,
    study_days desc,
    total_duration_seconds asc,
    name asc;
$$;

revoke all on function public.list_level_leaderboard() from public;
grant execute on function public.list_level_leaderboard() to authenticated;

notify pgrst, 'reload schema';
