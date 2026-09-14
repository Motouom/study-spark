-- Lets learners keep seeing published papers they already started,
-- even if their profile/series/subjects are later changed.

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

revoke all on function public.list_allowed_course_documents() from public;
grant execute on function public.list_allowed_course_documents() to authenticated;

notify pgrst, 'reload schema';
