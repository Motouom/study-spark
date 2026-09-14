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
