-- Audit trail for protected paper views and anti-leak deterrence signals.

create table if not exists public.protected_content_events (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  document_id uuid references public.course_documents(id) on delete cascade,
  event_type text not null check (event_type in ('view', 'copy_blocked', 'print_blocked', 'visibility_hidden')),
  details jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

alter table public.protected_content_events enable row level security;

drop policy if exists "students insert own protected content events" on public.protected_content_events;
create policy "students insert own protected content events"
on public.protected_content_events for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "admins read protected content events" on public.protected_content_events;
create policy "admins read protected content events"
on public.protected_content_events for select
to authenticated
using (public.is_admin());

create index if not exists protected_content_events_user_idx
on public.protected_content_events (user_id, created_at desc);

create index if not exists protected_content_events_document_idx
on public.protected_content_events (document_id, created_at desc);

drop function if exists public.record_protected_content_event(uuid, text, jsonb);
create or replace function public.record_protected_content_event(
  event_document_id uuid,
  event_type text,
  event_details jsonb default '{}'::jsonb
)
returns uuid
language plpgsql
security invoker
set search_path = public
as $$
declare
  event_id uuid;
begin
  if auth.uid() is null then
    raise exception 'authentication required';
  end if;

  insert into public.protected_content_events (user_id, document_id, event_type, details)
  values (auth.uid(), event_document_id, event_type, coalesce(event_details, '{}'::jsonb))
  returning id into event_id;

  return event_id;
end;
$$;

revoke all on function public.record_protected_content_event(uuid, text, jsonb) from public;
grant execute on function public.record_protected_content_event(uuid, text, jsonb) to authenticated;
grant insert on public.protected_content_events to authenticated;
grant select on public.protected_content_events to authenticated;

notify pgrst, 'reload schema';
