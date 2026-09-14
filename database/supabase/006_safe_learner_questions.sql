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
