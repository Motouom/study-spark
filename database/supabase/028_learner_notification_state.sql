-- Cross-device learner notification state.
-- Stores read state and notification preferences for derived StudySpark notifications.

create table if not exists public.learner_notification_reads (
  user_id uuid not null references auth.users(id) on delete cascade,
  notification_id text not null check (length(trim(notification_id)) > 0),
  read_at timestamptz not null default now(),
  primary key (user_id, notification_id)
);

create table if not exists public.learner_notification_preferences (
  user_id uuid not null references auth.users(id) on delete cascade,
  kind text not null check (kind in ('content', 'progress', 'streak', 'membership')),
  enabled boolean not null default true,
  updated_at timestamptz not null default now(),
  primary key (user_id, kind)
);

drop trigger if exists learner_notification_preferences_set_updated_at
on public.learner_notification_preferences;
create trigger learner_notification_preferences_set_updated_at
before update on public.learner_notification_preferences
for each row execute function public.set_updated_at();

alter table public.learner_notification_reads enable row level security;
alter table public.learner_notification_preferences enable row level security;

drop policy if exists "students read own notification reads"
on public.learner_notification_reads;
create policy "students read own notification reads"
on public.learner_notification_reads for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "students insert own notification reads"
on public.learner_notification_reads;
create policy "students insert own notification reads"
on public.learner_notification_reads for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "students update own notification reads"
on public.learner_notification_reads;
create policy "students update own notification reads"
on public.learner_notification_reads for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "students read own notification preferences"
on public.learner_notification_preferences;
create policy "students read own notification preferences"
on public.learner_notification_preferences for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "students insert own notification preferences"
on public.learner_notification_preferences;
create policy "students insert own notification preferences"
on public.learner_notification_preferences for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "students update own notification preferences"
on public.learner_notification_preferences;
create policy "students update own notification preferences"
on public.learner_notification_preferences for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

create index if not exists learner_notification_reads_user_read_at_idx
on public.learner_notification_reads (user_id, read_at desc);

grant select, insert, update on public.learner_notification_reads to authenticated;
grant select, insert, update on public.learner_notification_preferences to authenticated;

notify pgrst, 'reload schema';
