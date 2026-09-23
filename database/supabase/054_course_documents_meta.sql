begin;

-- Lightweight variant of list_allowed_course_documents() that never returns
-- markdown_content. The app shell, library, and cheatsheets pages only need
-- document metadata (title, subject, access status, kind) — pulling full
-- markdown for every allowed document on those pages is wasteful, especially
-- for Premium learners who have access to the whole corpus.
--
-- The frontend calls this RPC first and falls back to the full RPC if it is
-- missing, so this migration can be applied independently.
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
          partition by coalesce(document.content_kind, 'course')
          order by document.title asc, document.id asc
        ) as access_position
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
        when document.access_position <= 2 then 'free_preview'
        else 'premium_locked'
      end as access_status,
      not (document.premium_active or document.access_position <= 2) as is_locked
    from matching_documents document
    order by document.content_kind asc, document.access_position asc, document.title asc;
end;
$$;

revoke all on function public.list_allowed_course_documents_meta() from public;
grant execute on function public.list_allowed_course_documents_meta() to authenticated;

notify pgrst, 'reload schema';

commit;