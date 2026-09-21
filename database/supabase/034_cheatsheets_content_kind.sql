-- Keep short revision cheatsheets out of the full Courses catalog.
-- They are useful study aids, but they should not be presented as complete
-- Cameroon GCE courses.

alter table public.course_documents
  drop constraint if exists course_documents_content_kind_check;

alter table public.course_documents
  add constraint course_documents_content_kind_check
  check (content_kind in ('course', 'textbook', 'paper', 'cheatsheet'));

delete from public.course_documents duplicate
using public.course_documents keeper
where duplicate.ctid > keeper.ctid
  and duplicate.topic_id = keeper.topic_id
  and duplicate.content_kind = keeper.content_kind
  and duplicate.topic_id like 'cheat-%';

update public.course_documents
set content_kind = 'cheatsheet',
    doc_type = 'cheatsheet',
    updated_at = now()
where topic_id like 'cheat-%';

create index if not exists course_documents_content_kind_idx
on public.course_documents (content_kind, status, subject);

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

  if document_content_kind not in ('course', 'textbook', 'paper', 'cheatsheet') then
    raise exception 'content kind must be course, textbook, paper, or cheatsheet';
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
    markdown_content, content_kind, doc_type, created_by
  )
  values (
    saved_id, document_topic_id, document_subject, document_title, document_language,
    document_level, document_class_levels, document_series, document_status,
    document_markdown_content, document_content_kind,
    case when document_content_kind = 'cheatsheet' then 'cheatsheet' else document_content_kind end,
    auth.uid()
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
    doc_type = excluded.doc_type,
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
