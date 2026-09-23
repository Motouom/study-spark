begin;

-- Free rules: 1 paper per subject, 2 courses per subject, all cheatsheets of
-- one subject only. Premium learners keep access to everything.
drop policy if exists "students read matching published course documents" on public.course_documents;
drop policy if exists "students read unlocked published course documents" on public.course_documents;
create policy "students read unlocked published course documents"
on public.course_documents for select
to authenticated
using (
  status = 'published'
  and exists (
    select 1
    from (
      select
        document.id,
        (
          profile.plan = 'premium'
          and (profile.premium_until is null or profile.premium_until > now())
        ) as premium_active,
        row_number() over (
          partition by document.subject, coalesce(document.content_kind, 'course')
          order by document.title asc, document.id asc
        ) as access_position,
        dense_rank() over (
          partition by coalesce(document.content_kind, 'course')
          order by document.subject asc
        ) as subject_rank,
        coalesce(document.content_kind, 'course') as kind
      from public.course_documents document
      join public.student_profiles profile on profile.user_id = (select auth.uid())
      where document.status = 'published'
        and profile.language = document.language
        and profile.class_level = any(document.class_levels)
        and profile.series = any(document.series)
        and document.subject = any(profile.subjects)
    ) ranked
    where ranked.id = course_documents.id
      and (ranked.premium_active
          or (ranked.kind = 'paper' and ranked.access_position = 1)
          or (ranked.kind = 'course' and ranked.access_position <= 2)
          or (ranked.kind = 'textbook' and ranked.access_position = 1)
          or (ranked.kind = 'cheatsheet' and ranked.subject_rank = 1))
  )
);

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
  content_kind text,
  updated_at timestamptz,
  access_status text,
  is_locked boolean
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
    with matching_documents as (
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
        coalesce(document.content_kind, 'course') as content_kind,
        document.updated_at,
        (
          profile.plan = 'premium'
          and (profile.premium_until is null or profile.premium_until > now())
        ) as premium_active,
        row_number() over (
          partition by document.subject, coalesce(document.content_kind, 'course')
          order by document.title asc, document.id asc
        ) as access_position,
        dense_rank() over (
          partition by coalesce(document.content_kind, 'course')
          order by document.subject asc
        ) as subject_rank,
        coalesce(document.content_kind, 'course') as kind
      from public.course_documents document
      join public.student_profiles profile on profile.user_id = auth.uid()
      where document.status = 'published'
        and profile.language = document.language
        and profile.class_level = any(document.class_levels)
        and profile.series = any(document.series)
        and document.subject = any(profile.subjects)
    )
    select
      document.id,
      document.topic_id,
      document.subject,
      document.title,
      document.language,
      document.level,
      document.class_levels,
      document.series,
      case
        when (document.premium_active
          or (document.kind = 'paper' and document.access_position = 1)
          or (document.kind = 'course' and document.access_position <= 2)
          or (document.kind = 'textbook' and document.access_position = 1)
          or (document.kind = 'cheatsheet' and document.subject_rank = 1))
          then document.markdown_content
        else null::text
      end as markdown_content,
      document.content_kind,
      document.updated_at,
      case
        when document.premium_active then 'premium'
        when (document.premium_active
          or (document.kind = 'paper' and document.access_position = 1)
          or (document.kind = 'course' and document.access_position <= 2)
          or (document.kind = 'textbook' and document.access_position = 1)
          or (document.kind = 'cheatsheet' and document.subject_rank = 1)) then 'free_preview'
        else 'premium_locked'
      end as access_status,
      not (document.premium_active
          or (document.kind = 'paper' and document.access_position = 1)
          or (document.kind = 'course' and document.access_position <= 2)
          or (document.kind = 'textbook' and document.access_position = 1)
          or (document.kind = 'cheatsheet' and document.subject_rank = 1)) as is_locked
    from matching_documents document
    order by document.content_kind asc, document.subject asc, document.access_position asc,
      document.title asc;
end;
$$;

revoke all on function public.list_allowed_course_documents() from public;
grant execute on function public.list_allowed_course_documents() to authenticated;

drop function if exists public.list_allowed_course_documents_meta();
create or replace function public.list_allowed_course_documents_meta()
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
  updated_at timestamptz,
  access_status text,
  is_locked boolean
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
    with matching_documents as (
      select
        document.id,
        document.topic_id,
        document.subject,
        document.title,
        document.language,
        document.level,
        document.class_levels,
        document.series,
        coalesce(document.content_kind, 'course') as content_kind,
        document.updated_at,
        (
          profile.plan = 'premium'
          and (profile.premium_until is null or profile.premium_until > now())
        ) as premium_active,
        row_number() over (
          partition by document.subject, coalesce(document.content_kind, 'course')
          order by document.title asc, document.id asc
        ) as access_position,
        dense_rank() over (
          partition by coalesce(document.content_kind, 'course')
          order by document.subject asc
        ) as subject_rank,
        coalesce(document.content_kind, 'course') as kind
      from public.course_documents document
      join public.student_profiles profile on profile.user_id = auth.uid()
      where document.status = 'published'
        and profile.language = document.language
        and profile.class_level = any(document.class_levels)
        and profile.series = any(document.series)
        and document.subject = any(profile.subjects)
    )
    select
      document.id,
      document.topic_id,
      document.subject,
      document.title,
      document.language,
      document.level,
      document.class_levels,
      document.series,
      null::text as markdown_content,
      document.content_kind,
      document.updated_at,
      case
        when document.premium_active then 'premium'
        when (document.premium_active
          or (document.kind = 'paper' and document.access_position = 1)
          or (document.kind = 'course' and document.access_position <= 2)
          or (document.kind = 'textbook' and document.access_position = 1)
          or (document.kind = 'cheatsheet' and document.subject_rank = 1)) then 'free_preview'
        else 'premium_locked'
      end as access_status,
      not (document.premium_active
          or (document.kind = 'paper' and document.access_position = 1)
          or (document.kind = 'course' and document.access_position <= 2)
          or (document.kind = 'textbook' and document.access_position = 1)
          or (document.kind = 'cheatsheet' and document.subject_rank = 1)) as is_locked
    from matching_documents document
    order by document.content_kind asc, document.subject asc, document.access_position asc,
      document.title asc;
end;
$$;

revoke all on function public.list_allowed_course_documents_meta() from public;
grant execute on function public.list_allowed_course_documents_meta() to authenticated;

notify pgrst, 'reload schema';

commit;