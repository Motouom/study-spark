-- Full Markdown course/question-bank documents.
-- Use this for professionally formatted topic documents that should stay in-app.

create table if not exists public.course_documents (
  id uuid primary key default gen_random_uuid(),
  topic_id text not null references public.topics(id) on delete cascade,
  subject text not null,
  title text not null,
  language text not null check (language in ('english', 'french')),
  level text not null check (level in ('ordinary', 'advanced')),
  class_levels text[] not null default '{}',
  series text[] not null default '{}',
  status text not null default 'draft' check (status in ('draft', 'review', 'published', 'archived')),
  markdown_content text not null,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

drop trigger if exists course_documents_set_updated_at on public.course_documents;
create trigger course_documents_set_updated_at
before update on public.course_documents
for each row execute function public.set_updated_at();

alter table public.course_documents enable row level security;

drop policy if exists "students read matching published course documents" on public.course_documents;
create policy "students read matching published course documents"
on public.course_documents for select
to authenticated
using (
  status = 'published'
  and exists (
    select 1
    from public.student_profiles profile
    where profile.user_id = (select auth.uid())
      and profile.language = course_documents.language
      and profile.class_level = any(course_documents.class_levels)
      and profile.series = any(course_documents.series)
      and course_documents.subject = any(profile.subjects)
  )
);

drop policy if exists "admins manage course documents" on public.course_documents;
create policy "admins manage course documents"
on public.course_documents for all
to authenticated
using (public.is_admin())
with check (public.is_admin());

create index if not exists course_documents_access_idx
on public.course_documents (status, language, subject, topic_id);

drop function if exists public.admin_list_course_documents(text);
create or replace function public.admin_list_course_documents(status_filter text default null)
returns setof public.course_documents
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();
  return query
    select *
    from public.course_documents
    where status_filter is null or status = status_filter
    order by updated_at desc, created_at desc;
end;
$$;

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
  document_markdown_content text
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
    markdown_content, created_by
  )
  values (
    saved_id, document_topic_id, document_subject, document_title, document_language,
    document_level, document_class_levels, document_series, document_status,
    document_markdown_content, auth.uid()
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
    updated_at = now();

  perform public.log_admin_action(
    case when document_id is null then 'course_document.create' else 'course_document.update' end,
    'course_documents',
    saved_id::text,
    jsonb_build_object('title', document_title, 'status', document_status, 'topic_id', document_topic_id)
  );

  return saved_id;
end;
$$;

drop function if exists public.admin_archive_course_document(uuid);
create or replace function public.admin_archive_course_document(document_id uuid)
returns boolean
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  update public.course_documents
  set status = 'archived', updated_at = now()
  where id = document_id;

  if not found then
    raise exception 'course document not found';
  end if;

  perform public.log_admin_action('course_document.archive', 'course_documents', document_id::text, '{}'::jsonb);
  return true;
end;
$$;

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

revoke all on function public.admin_list_course_documents(text) from public;
revoke all on function public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text
) from public;
revoke all on function public.admin_archive_course_document(uuid) from public;
revoke all on function public.list_allowed_course_documents() from public;

grant execute on function public.admin_list_course_documents(text) to authenticated;
grant execute on function public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text
) to authenticated;
grant execute on function public.admin_archive_course_document(uuid) to authenticated;
grant execute on function public.list_allowed_course_documents() to authenticated;

grant select on public.course_documents to authenticated;

notify pgrst, 'reload schema';
