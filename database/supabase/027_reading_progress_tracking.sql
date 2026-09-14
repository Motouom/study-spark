-- Reading-session progress tracking.
-- Replaces question-by-question marking with passive reading sessions,
-- lightweight checkpoints, and learner reflections.

create table if not exists public.paper_study_sessions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid not null references public.course_documents(id) on delete cascade,
  started_at timestamptz not null default now(),
  ended_at timestamptz,
  duration_seconds integer not null default 0 check (duration_seconds >= 0),
  max_scroll_percent integer not null default 0 check (max_scroll_percent between 0 and 100),
  completed boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.paper_study_checkpoints (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid not null references public.course_documents(id) on delete cascade,
  checkpoint_type text not null check (checkpoint_type in ('understood', 'review', 'bookmark')),
  note text,
  scroll_percent integer not null default 0 check (scroll_percent between 0 and 100),
  created_at timestamptz not null default now()
);

create table if not exists public.paper_study_reflections (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid not null references public.course_documents(id) on delete cascade,
  confidence integer not null check (confidence between 1 and 5),
  difficult_parts text,
  add_to_revision boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (user_id, document_id)
);

drop trigger if exists paper_study_sessions_set_updated_at on public.paper_study_sessions;
create trigger paper_study_sessions_set_updated_at
before update on public.paper_study_sessions
for each row execute function public.set_updated_at();

drop trigger if exists paper_study_reflections_set_updated_at on public.paper_study_reflections;
create trigger paper_study_reflections_set_updated_at
before update on public.paper_study_reflections
for each row execute function public.set_updated_at();

alter table public.paper_study_sessions enable row level security;
alter table public.paper_study_checkpoints enable row level security;
alter table public.paper_study_reflections enable row level security;

drop policy if exists "students read own paper study sessions" on public.paper_study_sessions;
create policy "students read own paper study sessions"
on public.paper_study_sessions for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "students insert own paper study sessions" on public.paper_study_sessions;
create policy "students insert own paper study sessions"
on public.paper_study_sessions for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "students update own paper study sessions" on public.paper_study_sessions;
create policy "students update own paper study sessions"
on public.paper_study_sessions for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "students read own paper checkpoints" on public.paper_study_checkpoints;
create policy "students read own paper checkpoints"
on public.paper_study_checkpoints for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "students insert own paper checkpoints" on public.paper_study_checkpoints;
create policy "students insert own paper checkpoints"
on public.paper_study_checkpoints for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "students delete own paper checkpoints" on public.paper_study_checkpoints;
create policy "students delete own paper checkpoints"
on public.paper_study_checkpoints for delete
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "students read own paper reflections" on public.paper_study_reflections;
create policy "students read own paper reflections"
on public.paper_study_reflections for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "students insert own paper reflections" on public.paper_study_reflections;
create policy "students insert own paper reflections"
on public.paper_study_reflections for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "students update own paper reflections" on public.paper_study_reflections;
create policy "students update own paper reflections"
on public.paper_study_reflections for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "admins read paper study sessions" on public.paper_study_sessions;
create policy "admins read paper study sessions"
on public.paper_study_sessions for select
to authenticated
using (public.is_admin());

drop policy if exists "admins read paper checkpoints" on public.paper_study_checkpoints;
create policy "admins read paper checkpoints"
on public.paper_study_checkpoints for select
to authenticated
using (public.is_admin());

drop policy if exists "admins read paper reflections" on public.paper_study_reflections;
create policy "admins read paper reflections"
on public.paper_study_reflections for select
to authenticated
using (public.is_admin());

create index if not exists paper_study_sessions_user_idx
on public.paper_study_sessions (user_id, updated_at desc);

create index if not exists paper_study_sessions_document_idx
on public.paper_study_sessions (document_id, updated_at desc);

create index if not exists paper_study_checkpoints_user_document_idx
on public.paper_study_checkpoints (user_id, document_id, created_at desc);

create index if not exists paper_study_reflections_user_idx
on public.paper_study_reflections (user_id, updated_at desc);

grant select, insert, update on public.paper_study_sessions to authenticated;
grant select, insert, delete on public.paper_study_checkpoints to authenticated;
grant select, insert, update on public.paper_study_reflections to authenticated;

notify pgrst, 'reload schema';
