-- Structural-paper workflow.
-- Removes legacy in-app quiz question rows and tracks learner progress per paper question number.

delete from public.questions;

create table if not exists public.structural_question_progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid not null references public.course_documents(id) on delete cascade,
  question_number integer not null check (question_number > 0),
  status text not null check (status in ('started', 'passed', 'failed')),
  started_at timestamptz,
  completed_at timestamptz,
  duration_seconds integer check (duration_seconds is null or duration_seconds >= 0),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (user_id, document_id, question_number)
);

alter table public.structural_question_progress
add column if not exists started_at timestamptz,
add column if not exists completed_at timestamptz,
add column if not exists duration_seconds integer check (duration_seconds is null or duration_seconds >= 0);

drop trigger if exists structural_question_progress_set_updated_at on public.structural_question_progress;
create trigger structural_question_progress_set_updated_at
before update on public.structural_question_progress
for each row execute function public.set_updated_at();

alter table public.structural_question_progress enable row level security;

drop policy if exists "students manage own structural progress" on public.structural_question_progress;
create policy "students manage own structural progress"
on public.structural_question_progress for all
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "admins read structural progress" on public.structural_question_progress;
create policy "admins read structural progress"
on public.structural_question_progress for select
to authenticated
using (public.is_admin());

create index if not exists structural_progress_user_idx
on public.structural_question_progress (user_id, updated_at desc);

create index if not exists structural_progress_document_idx
on public.structural_question_progress (document_id, question_number);

drop function if exists public.admin_delete_course_document(uuid);
create or replace function public.admin_delete_course_document(document_id uuid)
returns boolean
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  delete from public.course_documents
  where id = document_id;

  if not found then
    raise exception 'course document not found';
  end if;

  perform public.log_admin_action('course_document.delete', 'course_documents', document_id::text, '{}'::jsonb);
  return true;
end;
$$;

revoke all on function public.admin_delete_course_document(uuid) from public;
grant execute on function public.admin_delete_course_document(uuid) to authenticated;
grant select, insert, update, delete on public.structural_question_progress to authenticated;

notify pgrst, 'reload schema';
