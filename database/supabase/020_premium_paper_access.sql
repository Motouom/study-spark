-- Premium paper access gate.
-- Free learners can see matching paper titles, but can open only the first paper per subject.
-- Premium learners can open every matching published paper.

alter table public.student_profiles
add column if not exists plan text not null default 'free';

alter table public.student_profiles
add column if not exists premium_until timestamptz;

alter table public.student_profiles
drop constraint if exists student_profiles_plan_check;

alter table public.student_profiles
add constraint student_profiles_plan_check
check (plan in ('free', 'premium'));

update public.student_profiles
set plan = 'free'
where plan is null or plan not in ('free', 'premium');

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
        row_number() over (partition by document.subject order by document.title asc, document.id asc) as access_position
      from public.course_documents document
      join public.student_profiles profile on profile.user_id = (select auth.uid())
      where document.status = 'published'
        and profile.language = document.language
        and profile.class_level = any(document.class_levels)
        and profile.series = any(document.series)
        and document.subject = any(profile.subjects)
    ) ranked
    where ranked.id = course_documents.id
      and (ranked.premium_active or ranked.access_position <= 1)
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
        document.updated_at,
        document.content_kind,
        (
          profile.plan = 'premium'
          and (profile.premium_until is null or profile.premium_until > now())
        ) as premium_active,
        row_number() over (partition by document.content_kind, document.subject order by document.title asc, document.id asc) as access_position
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
        when document.content_kind = 'paper' and (document.premium_active or document.access_position <= 1)
          or (document.content_kind != 'paper' and document.premium_active or document.access_position <= 2)
          then document.markdown_content
        else null::text
      end as markdown_content,
      document.updated_at,
      case
        when document.premium_active then 'premium'
        when document.content_kind = 'paper' and document.access_position <= 1 then 'free_preview'
        when document.access_position <= 2 then 'free_preview'
        else 'premium_locked'
      end as access_status,
      not (document.premium_active
        or (document.content_kind = 'paper' and document.access_position > 1)
        or (document.content_kind != 'paper' and document.access_position > 2)) as is_locked
    from matching_documents document
    order by document.subject, document.access_position asc, document.title asc;
end;
$$;

revoke all on function public.list_allowed_course_documents() from public;
grant execute on function public.list_allowed_course_documents() to authenticated;

notify pgrst, 'reload schema';
