-- Add timing to structural question progress.
-- Started questions record started_at. Passed/failed questions record completed_at and duration_seconds.

alter table public.structural_question_progress
add column if not exists started_at timestamptz,
add column if not exists completed_at timestamptz,
add column if not exists duration_seconds integer check (duration_seconds is null or duration_seconds >= 0);

update public.structural_question_progress
set
  started_at = coalesce(started_at, created_at),
  completed_at = case
    when status in ('passed', 'failed') then coalesce(completed_at, updated_at)
    else null
  end,
  duration_seconds = case
    when status in ('passed', 'failed') then greatest(
      1,
      extract(epoch from (coalesce(completed_at, updated_at) - coalesce(started_at, created_at)))::integer
    )
    else null
  end
where started_at is null
   or (status in ('passed', 'failed') and (completed_at is null or duration_seconds is null));

notify pgrst, 'reload schema';
