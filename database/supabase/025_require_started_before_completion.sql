-- Enforce the question workflow: learners must start a question before marking it passed or failed.

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
  saved_progress public.structural_question_progress%rowtype;
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

  select progress.*
  into existing_progress
  from public.structural_question_progress progress
  where progress.user_id = current_user_id
    and progress.document_id = target_document_id
    and progress.question_number = target_question_number;

  if target_status in ('passed', 'failed') and existing_progress.id is null then
    raise exception 'start the question before marking it passed or failed';
  end if;

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
  on conflict on constraint structural_question_progress_user_id_document_id_question_number_key
  do update set
    status = excluded.status,
    started_at = coalesce(public.structural_question_progress.started_at, excluded.started_at),
    completed_at = excluded.completed_at,
    duration_seconds = excluded.duration_seconds,
    updated_at = now()
  returning public.structural_question_progress.*
  into saved_progress;

  update public.student_profiles profile
  set profile_locked_at = coalesce(profile.profile_locked_at, now())
  where profile.user_id = current_user_id;

  return query
    select
      saved_progress.id,
      saved_progress.document_id,
      saved_progress.question_number,
      saved_progress.status,
      saved_progress.started_at,
      saved_progress.completed_at,
      saved_progress.duration_seconds,
      saved_progress.updated_at;
end;
$$;

revoke all on function public.mark_structural_question_progress(uuid, integer, text) from public;
grant execute on function public.mark_structural_question_progress(uuid, integer, text) to authenticated;

notify pgrst, 'reload schema';
