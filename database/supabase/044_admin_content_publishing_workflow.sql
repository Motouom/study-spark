-- Issue #25: admin content publishing and moderation workflow.
-- Adds review metadata, unpublished state, audit-friendly publishing helpers,
-- and learner content issue reports without exposing protected content publicly.

alter table public.course_documents
  drop constraint if exists course_documents_status_check;

alter table public.course_documents
  add constraint course_documents_status_check
  check (status in ('draft', 'review', 'published', 'unpublished', 'archived'));

alter table public.course_documents
  add column if not exists curriculum_path text not null default 'gce',
  add column if not exists exam text,
  add column if not exists content_year text,
  add column if not exists source_type text not null default 'internal',
  add column if not exists source_reference text,
  add column if not exists permission_status text not null default 'needs_review',
  add column if not exists review_status text not null default 'not_reviewed',
  add column if not exists reviewed_by uuid references auth.users(id) on delete set null,
  add column if not exists reviewed_at timestamptz,
  add column if not exists published_by uuid references auth.users(id) on delete set null,
  add column if not exists published_at timestamptz,
  add column if not exists unpublished_by uuid references auth.users(id) on delete set null,
  add column if not exists unpublished_at timestamptz,
  add column if not exists archived_by uuid references auth.users(id) on delete set null,
  add column if not exists archived_at timestamptz,
  add column if not exists content_version text not null default '1.0.0',
  add column if not exists change_note text;

alter table public.course_documents
  drop constraint if exists course_documents_curriculum_path_check;
alter table public.course_documents
  add constraint course_documents_curriculum_path_check
  check (curriculum_path in ('gce', 'francophone', 'other'));

alter table public.course_documents
  drop constraint if exists course_documents_source_type_check;
alter table public.course_documents
  add constraint course_documents_source_type_check
  check (source_type in ('official_exam', 'licensed_partner', 'teacher_authored', 'internal', 'user_reported', 'other'));

alter table public.course_documents
  drop constraint if exists course_documents_permission_status_check;
alter table public.course_documents
  add constraint course_documents_permission_status_check
  check (permission_status in ('needs_review', 'approved', 'licensed', 'public_domain', 'restricted', 'rejected'));

alter table public.course_documents
  drop constraint if exists course_documents_review_status_check;
alter table public.course_documents
  add constraint course_documents_review_status_check
  check (review_status in ('not_reviewed', 'metadata_reviewed', 'content_reviewed', 'approved', 'changes_requested'));

create index if not exists course_documents_workflow_idx
on public.course_documents (content_kind, status, review_status, subject, updated_at desc);

create table if not exists public.content_issue_reports (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid not null references public.course_documents(id) on delete cascade,
  question_number integer,
  topic_title text,
  issue_type text not null default 'content_error',
  body text not null,
  status text not null default 'open',
  admin_notes text,
  resolved_by uuid references auth.users(id) on delete set null,
  resolved_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint content_issue_reports_status_check
    check (status in ('open', 'reviewing', 'resolved', 'rejected', 'archived')),
  constraint content_issue_reports_issue_type_check
    check (issue_type in ('content_error', 'formatting', 'wrong_metadata', 'missing_solution', 'copyright', 'other')),
  constraint content_issue_reports_body_length_check
    check (length(trim(body)) between 8 and 2000)
);

drop trigger if exists content_issue_reports_set_updated_at on public.content_issue_reports;
create trigger content_issue_reports_set_updated_at
before update on public.content_issue_reports
for each row execute function public.set_updated_at();

alter table public.content_issue_reports enable row level security;

drop policy if exists "learners create own content reports" on public.content_issue_reports;
create policy "learners create own content reports"
on public.content_issue_reports for insert
with check (auth.uid() = user_id);

drop policy if exists "learners read own content reports" on public.content_issue_reports;
create policy "learners read own content reports"
on public.content_issue_reports for select
using (auth.uid() = user_id or public.is_admin());

drop policy if exists "admins manage content reports" on public.content_issue_reports;
create policy "admins manage content reports"
on public.content_issue_reports for all
using (public.is_admin())
with check (public.is_admin());

create index if not exists content_issue_reports_admin_idx
on public.content_issue_reports (status, created_at desc);

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
  document_content_kind text default 'course',
  document_curriculum_path text default 'gce',
  document_exam text default null,
  document_content_year text default null,
  document_source_type text default 'internal',
  document_source_reference text default null,
  document_permission_status text default 'needs_review',
  document_review_status text default 'not_reviewed',
  document_content_version text default '1.0.0',
  document_change_note text default null
)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  saved_id uuid := coalesce(document_id, gen_random_uuid());
  previous_status text;
begin
  perform public.assert_admin();

  select status into previous_status
  from public.course_documents
  where id = document_id;

  if document_content_kind not in ('course', 'textbook', 'paper', 'cheatsheet') then
    raise exception 'content kind must be course, textbook, paper, or cheatsheet';
  end if;
  if document_status not in ('draft', 'review', 'published', 'unpublished', 'archived') then
    raise exception 'content status must be draft, review, published, unpublished, or archived';
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

  if document_status = 'published' then
    if document_review_status <> 'approved' then
      raise exception 'published content must have approved review status';
    end if;
    if document_permission_status not in ('approved', 'licensed', 'public_domain') then
      raise exception 'published content must have approved, licensed, or public domain permission status';
    end if;
    if trim(coalesce(document_exam, '')) = '' then
      raise exception 'published content requires an exam';
    end if;
    if trim(coalesce(document_content_year, '')) = '' then
      raise exception 'published content requires a year or syllabus version';
    end if;
    if trim(coalesce(document_source_reference, '')) = '' then
      raise exception 'published content requires a source reference';
    end if;
  end if;

  insert into public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, created_by, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    reviewed_by, reviewed_at, published_by, published_at, unpublished_by, unpublished_at,
    archived_by, archived_at, content_version, change_note
  )
  values (
    saved_id, document_topic_id, document_subject, document_title, document_language,
    document_level, document_class_levels, document_series, document_status,
    document_markdown_content, document_content_kind,
    case when document_content_kind = 'cheatsheet' then 'cheatsheet' else document_content_kind end,
    auth.uid(), document_curriculum_path, nullif(trim(coalesce(document_exam, '')), ''),
    nullif(trim(coalesce(document_content_year, '')), ''), document_source_type,
    nullif(trim(coalesce(document_source_reference, '')), ''), document_permission_status,
    document_review_status,
    case when document_review_status in ('content_reviewed', 'approved') then auth.uid() else null end,
    case when document_review_status in ('content_reviewed', 'approved') then now() else null end,
    case when document_status = 'published' then auth.uid() else null end,
    case when document_status = 'published' then now() else null end,
    case when document_status = 'unpublished' then auth.uid() else null end,
    case when document_status = 'unpublished' then now() else null end,
    case when document_status = 'archived' then auth.uid() else null end,
    case when document_status = 'archived' then now() else null end,
    coalesce(nullif(trim(coalesce(document_content_version, '')), ''), '1.0.0'),
    nullif(trim(coalesce(document_change_note, '')), '')
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
    curriculum_path = excluded.curriculum_path,
    exam = excluded.exam,
    content_year = excluded.content_year,
    source_type = excluded.source_type,
    source_reference = excluded.source_reference,
    permission_status = excluded.permission_status,
    review_status = excluded.review_status,
    reviewed_by = case
      when excluded.review_status in ('content_reviewed', 'approved')
        and public.course_documents.review_status is distinct from excluded.review_status
      then auth.uid()
      else public.course_documents.reviewed_by
    end,
    reviewed_at = case
      when excluded.review_status in ('content_reviewed', 'approved')
        and public.course_documents.review_status is distinct from excluded.review_status
      then now()
      else public.course_documents.reviewed_at
    end,
    published_by = case
      when excluded.status = 'published'
        and public.course_documents.status is distinct from 'published'
      then auth.uid()
      else public.course_documents.published_by
    end,
    published_at = case
      when excluded.status = 'published'
        and public.course_documents.status is distinct from 'published'
      then now()
      else public.course_documents.published_at
    end,
    unpublished_by = case
      when excluded.status = 'unpublished'
        and public.course_documents.status is distinct from 'unpublished'
      then auth.uid()
      else public.course_documents.unpublished_by
    end,
    unpublished_at = case
      when excluded.status = 'unpublished'
        and public.course_documents.status is distinct from 'unpublished'
      then now()
      else public.course_documents.unpublished_at
    end,
    archived_by = case
      when excluded.status = 'archived'
        and public.course_documents.status is distinct from 'archived'
      then auth.uid()
      else public.course_documents.archived_by
    end,
    archived_at = case
      when excluded.status = 'archived'
        and public.course_documents.status is distinct from 'archived'
      then now()
      else public.course_documents.archived_at
    end,
    content_version = excluded.content_version,
    change_note = excluded.change_note,
    updated_at = now();

  perform public.log_admin_action(
    case
      when document_id is null then 'course_document.create'
      when previous_status is distinct from document_status then 'course_document.status_change'
      else 'course_document.update'
    end,
    'course_documents',
    saved_id::text,
    jsonb_build_object(
      'title', document_title,
      'status', document_status,
      'previous_status', previous_status,
      'topic_id', document_topic_id,
      'content_kind', document_content_kind,
      'review_status', document_review_status,
      'permission_status', document_permission_status,
      'curriculum_path', document_curriculum_path,
      'exam', document_exam,
      'content_year', document_content_year
    )
  );

  return saved_id;
end;
$$;

create or replace function public.admin_unpublish_course_document(document_id uuid)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  update public.course_documents
  set status = 'unpublished',
      unpublished_by = auth.uid(),
      unpublished_at = now(),
      updated_at = now()
  where id = document_id
    and status <> 'archived';

  perform public.log_admin_action('course_document.unpublish', 'course_documents', document_id::text, '{}'::jsonb);
end;
$$;

create or replace function public.admin_archive_course_document(document_id uuid)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  update public.course_documents
  set status = 'archived',
      archived_by = auth.uid(),
      archived_at = now(),
      updated_at = now()
  where id = document_id;

  perform public.log_admin_action('course_document.archive', 'course_documents', document_id::text, '{}'::jsonb);
end;
$$;

create or replace function public.report_content_issue(
  document_id uuid,
  question_number integer default null,
  topic_title text default null,
  issue_type text default 'content_error',
  issue_body text default null
)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  report_id uuid;
begin
  if auth.uid() is null then
    raise exception 'authentication required';
  end if;
  if not exists (
    select 1
    from public.course_documents document
    where document.id = report_content_issue.document_id
      and document.status = 'published'
  ) then
    raise exception 'document is not available for reporting';
  end if;

  insert into public.content_issue_reports (
    user_id, document_id, question_number, topic_title, issue_type, body
  )
  values (
    auth.uid(),
    report_content_issue.document_id,
    report_content_issue.question_number,
    nullif(trim(coalesce(report_content_issue.topic_title, '')), ''),
    report_content_issue.issue_type,
    trim(coalesce(report_content_issue.issue_body, ''))
  )
  returning id into report_id;

  return report_id;
end;
$$;

create or replace function public.admin_list_content_issue_reports(status_filter text default null)
returns table (
  id uuid,
  user_id uuid,
  document_id uuid,
  document_title text,
  content_kind text,
  subject text,
  question_number integer,
  topic_title text,
  issue_type text,
  body text,
  status text,
  admin_notes text,
  created_at timestamptz,
  updated_at timestamptz
)
language sql
security definer
set search_path = public
as $$
  select
    report.id,
    report.user_id,
    report.document_id,
    document.title as document_title,
    document.content_kind,
    document.subject,
    report.question_number,
    report.topic_title,
    report.issue_type,
    report.body,
    report.status,
    report.admin_notes,
    report.created_at,
    report.updated_at
  from public.content_issue_reports report
  join public.course_documents document on document.id = report.document_id
  where public.is_admin()
    and (status_filter is null or report.status = status_filter)
  order by
    case report.status
      when 'open' then 1
      when 'reviewing' then 2
      when 'resolved' then 3
      else 4
    end,
    report.created_at desc;
$$;

create or replace function public.admin_resolve_content_issue_report(
  report_id uuid,
  next_status text,
  notes text default null
)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  if next_status not in ('open', 'reviewing', 'resolved', 'rejected', 'archived') then
    raise exception 'invalid report status';
  end if;

  update public.content_issue_reports
  set status = next_status,
      admin_notes = nullif(trim(coalesce(notes, '')), ''),
      resolved_by = case when next_status in ('resolved', 'rejected', 'archived') then auth.uid() else null end,
      resolved_at = case when next_status in ('resolved', 'rejected', 'archived') then now() else null end,
      updated_at = now()
  where id = report_id;

  perform public.log_admin_action(
    'content_issue_report.update',
    'content_issue_reports',
    report_id::text,
    jsonb_build_object('status', next_status)
  );
end;
$$;

revoke all on function public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text, text,
  text, text, text, text, text, text, text, text, text
) from public;
revoke all on function public.admin_unpublish_course_document(uuid) from public;
revoke all on function public.report_content_issue(uuid, integer, text, text, text) from public;
revoke all on function public.admin_list_content_issue_reports(text) from public;
revoke all on function public.admin_resolve_content_issue_report(uuid, text, text) from public;

grant execute on function public.admin_upsert_course_document(
  uuid, text, text, text, text, text, text[], text[], text, text, text,
  text, text, text, text, text, text, text, text, text
) to authenticated;
grant execute on function public.admin_unpublish_course_document(uuid) to authenticated;
grant execute on function public.report_content_issue(uuid, integer, text, text, text) to authenticated;
grant execute on function public.admin_list_content_issue_reports(text) to authenticated;
grant execute on function public.admin_resolve_content_issue_report(uuid, text, text) to authenticated;
