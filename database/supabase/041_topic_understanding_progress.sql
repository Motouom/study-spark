create table if not exists public.topic_understanding_progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid not null references public.course_documents(id) on delete cascade,
  topic_key text not null,
  topic_title text not null,
  status text not null check (status in ('understood', 'review')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (user_id, document_id, topic_key)
);

drop trigger if exists topic_understanding_progress_set_updated_at on public.topic_understanding_progress;
create trigger topic_understanding_progress_set_updated_at
before update on public.topic_understanding_progress
for each row execute function public.set_updated_at();

alter table public.topic_understanding_progress enable row level security;

drop policy if exists "students read own topic understanding" on public.topic_understanding_progress;
create policy "students read own topic understanding"
on public.topic_understanding_progress for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "students insert own topic understanding" on public.topic_understanding_progress;
create policy "students insert own topic understanding"
on public.topic_understanding_progress for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "students update own topic understanding" on public.topic_understanding_progress;
create policy "students update own topic understanding"
on public.topic_understanding_progress for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "admins read topic understanding" on public.topic_understanding_progress;
create policy "admins read topic understanding"
on public.topic_understanding_progress for select
to authenticated
using (public.is_admin());

create index if not exists topic_understanding_progress_user_document_idx
on public.topic_understanding_progress (user_id, document_id, updated_at desc);

grant select, insert, update on public.topic_understanding_progress to authenticated;

notify pgrst, 'reload schema';
