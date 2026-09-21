-- 031: Distinguish course lessons from digital textbooks.
-- Both live in course_documents; the new content_kind column lets the admin
-- panel offer separate Courses and Textbooks tabs, and the learner app filter
-- the Courses and Textbooks pages independently.

alter table public.course_documents
  add column if not exists content_kind text not null default 'course';

-- Tighten the check on new/updated rows (existing rows keep 'course').
alter table public.course_documents
  drop constraint if exists course_documents_content_kind_check;
alter table public.course_documents
  add constraint course_documents_content_kind_check
  check (content_kind in ('course', 'textbook'));

-- New signature with the content kind parameter.
drop function if exists public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text
);
create or replace function public.admin_upsert_course_document(
  document_id uuid,
  document_topic_id text,
  document_subject text,
  document_title text,
  document_language text,
  document_level text,
  document_class_levels text[],
  document_series text[],
  document_status text,
  document_markdown_content text,
  document_content_kind text default 'course'
)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  saved_id uuid := coalesce(document_id, gen_random_uuid());
begin
  perform public.assert_admin();

  if document_content_kind not in ('course', 'textbook') then
    raise exception 'content kind must be course or textbook';
  end if;
  if not exists (select 1 from public.topics where id = document_topic_id) then
    raise exception 'topic does not exist';
  end if;
  if trim(coalesce(document_title, '')) = '' then
    raise exception 'document title is required';
  end if;
  if length(trim(coalesce(document_markdown_content, ''))) < 20 then
    raise exception 'markdown content is too short';
  end if;
  if coalesce(array_length(document_class_levels, 1), 0) = 0 then
    raise exception 'at least one class level is required';
  end if;
  if coalesce(array_length(document_series, 1), 0) = 0 then
    raise exception 'at least one series is required';
  end if;

  insert into public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, created_by
  )
  values (
    saved_id, document_topic_id, document_subject, document_title, document_language,
    document_level, document_class_levels, document_series, document_status,
    document_markdown_content, document_content_kind, auth.uid()
  )
  on conflict (id) do update set
    topic_id = excluded.topic_id,
    subject = excluded.subject,
    title = excluded.title,
    language = excluded.language,
    level = excluded.level,
    class_levels = excluded.class_levels,
    series = excluded.series,
    status = excluded.status,
    markdown_content = excluded.markdown_content,
    content_kind = excluded.content_kind,
    updated_at = now();

  perform public.log_admin_action(
    case when document_id is null then 'course_document.create' else 'course_document.update' end,
    'course_documents',
    saved_id::text,
    jsonb_build_object(
      'title', document_title,
      'status', document_status,
      'topic_id', document_topic_id,
      'content_kind', document_content_kind
    )
  );

  return saved_id;
end;
$$;

revoke all on function public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text, text
) from public;
grant execute on function public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text, text
) to authenticated;

-- Learner RPC: expose content_kind so the Courses and Textbooks pages can
-- filter independently.
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
  content_kind text,
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
      document.content_kind,
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
