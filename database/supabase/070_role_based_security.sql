-- Migration 070: Role-based security, privacy, and abuse controls (issue #100)
--
-- Adds a first-class role model (student, teacher, parent, school_admin,
-- content_admin, moderator, platform_admin), user→role assignments, guardian
-- (parent/guardian) links, abuse reporting + moderation, and GDPR-style data
-- export. All access is enforced at the database layer via RLS + security
-- definer RPCs, with audit logging for administrative actions.
--
-- Backward compatibility: the legacy JWT app_metadata.role values
-- (reviewer / admin / super_admin) are mapped onto the new model so existing
-- staff keep working without a data migration:
--   reviewer      -> moderator
--   admin         -> content_admin
--   super_admin   -> platform_admin

-- ─── Role catalogue ──────────────────────────────────────────────────────────

create table if not exists public.app_roles (
  id text primary key,
  label text not null,
  description text not null default '',
  is_staff boolean not null default false,
  rank integer not null default 0
);

alter table public.app_roles enable row level security;

insert into public.app_roles (id, label, description, is_staff, rank) values
  ('student',        'Student',        'Learner with a study profile and progress.', false, 10),
  ('teacher',        'Teacher',        'Educator who can author and review content.', true, 20),
  ('parent',         'Parent / Guardian', 'Guardian linked to one or more students.', false, 30),
  ('school_admin',   'School Admin',   'Administers a school and its linked students.', true, 40),
  ('content_admin',  'Content Admin',  'Writes, publishes, and reviews platform content.', true, 50),
  ('moderator',      'Moderator',      'Reviews abuse reports and moderates community content.', true, 60),
  ('platform_admin', 'Platform Admin', 'Full platform control: roles, settings, plans, data.', true, 100)
on conflict (id) do nothing;

-- Everyone can read the (non-sensitive) role catalogue.
drop policy if exists "roles readable by all" on public.app_roles;
create policy "roles readable by all"
on public.app_roles for select
to authenticated
using (true);

-- ─── User → role assignments ─────────────────────────────────────────────────

create table if not exists public.user_roles (
  user_id uuid not null references auth.users(id) on delete cascade,
  role text not null references public.app_roles(id) on delete cascade,
  school_id uuid,
  granted_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  primary key (user_id, role)
);

alter table public.user_roles enable row level security;

-- Users can read their own role assignments; staff can read all assignments.
drop policy if exists "users read own roles" on public.user_roles;
create policy "users read own roles"
on public.user_roles for select
to authenticated
using (user_id = auth.uid() or public.is_staff());

-- Only platform admins can write role assignments (handled via RPC).
drop policy if exists "deny direct role writes" on public.user_roles;
create policy "deny direct role writes"
on public.user_roles for all
to authenticated
using (false)
with check (false);

-- ─── Guardian (parent/guardian) links ────────────────────────────────────────

create table if not exists public.guardian_links (
  id uuid primary key default gen_random_uuid(),
  guardian_id uuid not null references auth.users(id) on delete cascade,
  student_id uuid not null references auth.users(id) on delete cascade,
  relationship text not null default 'parent',
  status text not null default 'pending',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (guardian_id, student_id)
);

alter table public.guardian_links enable row level security;

-- A guardian can read their own links; a student can read links where they are
-- the student; staff can read all.
drop policy if exists "guardian links read" on public.guardian_links;
create policy "guardian links read"
on public.guardian_links for select
to authenticated
using (
  guardian_id = auth.uid()
  or student_id = auth.uid()
  or public.is_staff()
);

drop policy if exists "deny direct guardian writes" on public.guardian_links;
create policy "deny direct guardian writes"
on public.guardian_links for all
to authenticated
using (false)
with check (false);

-- ─── Abuse reports ───────────────────────────────────────────────────────────

create table if not exists public.abuse_reports (
  id uuid primary key default gen_random_uuid(),
  reporter_id uuid not null references auth.users(id) on delete cascade,
  target_type text not null,
  target_id text not null,
  category text not null,
  description text not null default '',
  status text not null default 'open',
  moderator_notes text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.abuse_reports enable row level security;

-- Reporters can read their own reports; moderators/staff can read all.
drop policy if exists "abuse reports read" on public.abuse_reports;
create policy "abuse reports read"
on public.abuse_reports for select
to authenticated
using (reporter_id = auth.uid() or public.is_staff());

drop policy if exists "deny direct abuse writes" on public.abuse_reports;
create policy "deny direct abuse writes"
on public.abuse_reports for all
to authenticated
using (false)
with check (false);

-- ─── Data export requests ────────────────────────────────────────────────────

create table if not exists public.data_export_requests (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  status text not null default 'requested',
  requested_at timestamptz not null default now(),
  completed_at timestamptz,
  download_url text
);

alter table public.data_export_requests enable row level security;

drop policy if exists "data export read own" on public.data_export_requests;
create policy "data export read own"
on public.data_export_requests for select
to authenticated
using (user_id = auth.uid() or public.is_staff());

drop policy if exists "deny direct export writes" on public.data_export_requests;
create policy "deny direct export writes"
on public.data_export_requests for all
to authenticated
using (false)
with check (false);

-- ─── Role helper functions ───────────────────────────────────────────────────

-- Returns the effective roles for the current user: DB-assigned roles merged
-- with any legacy JWT app_metadata.role (mapped onto the new model). Reading
-- from the DB means role changes take effect immediately, not on JWT refresh.
create or replace function public.current_user_roles()
returns text[]
language plpgsql
stable
security definer
set search_path = public
as $$
declare
  v_roles text[];
  v_legacy text;
begin
  select coalesce(array_agg(role order by role), '{}'::text[])
  into v_roles
  from public.user_roles
  where user_id = auth.uid();

  v_legacy := nullif((auth.jwt() -> 'app_metadata' ->> 'role'), '');
  if v_legacy = 'super_admin' then
    v_roles := array_append(v_roles, 'platform_admin');
  elsif v_legacy = 'admin' then
    v_roles := array_append(v_roles, 'content_admin');
  elsif v_legacy = 'reviewer' then
    v_roles := array_append(v_roles, 'moderator');
  end if;

  return coalesce(
    (select array_agg(distinct r order by r) from unnest(v_roles) as t(r)),
    '{}'::text[]
  );
end;
$$;

create or replace function public.has_role(p_role text)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select p_role = any(public.current_user_roles());
$$;

create or replace function public.has_any_role(p_roles text[])
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1 from unnest(public.current_user_roles()) as r(r)
    where r = any(coalesce(p_roles, '{}'::text[]))
  );
$$;

create or replace function public.is_staff()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.has_any_role(array['teacher','school_admin','content_admin','moderator','platform_admin']);
$$;

create or replace function public.is_platform_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.has_role('platform_admin');
$$;

create or replace function public.is_content_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.has_any_role(array['content_admin','platform_admin']);
$$;

create or replace function public.is_moderator()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.has_any_role(array['moderator','content_admin','platform_admin']);
$$;

create or replace function public.is_school_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.has_any_role(array['school_admin','platform_admin']);
$$;

create or replace function public.assert_role(p_role text)
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if not public.has_role(p_role) then
    raise exception 'role % required for this action', p_role;
  end if;
end;
$$;

create or replace function public.assert_staff()
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if not public.is_staff() then
    raise exception 'staff role required for this action';
  end if;
end;
$$;

create or replace function public.assert_platform_admin()
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if not public.is_platform_admin() then
    raise exception 'platform_admin role required for this action';
  end if;
end;
$$;

-- ─── Backward-compatible admin helpers ───────────────────────────────────────
-- Legacy code calls is_admin() / current_admin_role(). Keep them working by
-- delegating to the new model. current_admin_role() returns the highest-priority
-- staff role for display purposes.

create or replace function public.current_admin_role()
returns text
language sql
stable
security definer
set search_path = public
as $$
  select r
  from unnest(public.current_user_roles()) as t(r)
  join public.app_roles ar on ar.id = t.r
  where ar.is_staff
  order by ar.rank desc
  limit 1;
$$;

create or replace function public.is_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  -- All staff roles (teacher, school_admin, content_admin, moderator,
  -- platform_admin) can read admin data. Writes are gated separately by
  -- assert_content_writer() / assert_super_admin().
  select public.is_staff();
$$;

create or replace function public.is_super_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.is_platform_admin();
$$;

-- ─── Backward-compatible content-writer guards ───────────────────────────────
-- Migration 044 defined these against the legacy role names. Redefine them on
-- the new model so existing content RPCs keep working:
--   assert_content_writer()  -> content_admin or platform_admin
--   assert_super_admin()     -> platform_admin

create or replace function public.assert_content_writer()
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if not public.is_content_admin() then
    raise exception 'content_admin role required for this action';
  end if;
end;
$$;

create or replace function public.assert_super_admin()
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if not public.is_platform_admin() then
    raise exception 'platform_admin role required for this action';
  end if;
end;
$$;

-- ─── Data export (GDPR-style) ────────────────────────────────────────────────

create or replace function public.request_data_export()
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_id uuid;
begin
  insert into public.data_export_requests (user_id, status)
  values (auth.uid(), 'requested')
  returning id into v_id;

  perform public.log_admin_action(
    'data_export.request',
    'data_export_requests',
    v_id::text,
    jsonb_build_object('user_id', auth.uid()::text)
  );

  return v_id;
end;
$$;

-- Returns the current user's own data as a single JSON document. Only ever
-- returns rows belonging to auth.uid().
create or replace function public.get_my_data_export()
returns jsonb
language plpgsql
stable
security definer
set search_path = public
as $$
declare
  v_profile jsonb;
  v_progress jsonb;
  v_payments jsonb;
  v_roles jsonb;
begin
  select to_jsonb(p) into v_profile
  from public.student_profiles p
  where p.user_id = auth.uid();

  select coalesce(jsonb_agg(to_jsonb(x) order by x.updated_at), '[]'::jsonb) into v_progress
  from (
    select id, document_id, question_number, status, started_at, completed_at, updated_at
    from public.structural_question_progress
    where user_id = auth.uid()
  ) x;

  select coalesce(jsonb_agg(to_jsonb(x) order by x.created_at), '[]'::jsonb) into v_payments
  from (
    select id, billing_interval, amount_xaf, status, created_at
    from public.payment_transactions
    where user_id = auth.uid()
  ) x;

  select coalesce(jsonb_agg(to_jsonb(x)), '[]'::jsonb) into v_roles
  from (
    select role, created_at
    from public.user_roles
    where user_id = auth.uid()
  ) x;

  return jsonb_build_object(
    'user_id', auth.uid()::text,
    'email', auth.jwt() ->> 'email',
    'profile', coalesce(v_profile, '{}'::jsonb),
    'structural_progress', coalesce(v_progress, '[]'::jsonb),
    'payments', coalesce(v_payments, '[]'::jsonb),
    'roles', coalesce(v_roles, '[]'::jsonb),
    'exported_at', now()
  );
end;
$$;

-- ─── Abuse reporting ─────────────────────────────────────────────────────────

create or replace function public.submit_abuse_report(
  p_target_type text,
  p_target_id text,
  p_category text,
  p_description text default ''
)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_id uuid;
begin
  if trim(coalesce(p_target_type, '')) = '' or trim(coalesce(p_target_id, '')) = '' then
    raise exception 'target type and id are required';
  end if;
  if trim(coalesce(p_category, '')) = '' then
    raise exception 'category is required';
  end if;

  insert into public.abuse_reports (reporter_id, target_type, target_id, category, description)
  values (auth.uid(), p_target_type, p_target_id, p_category, coalesce(p_description, ''))
  returning id into v_id;

  return v_id;
end;
$$;

create or replace function public.admin_list_abuse_reports(p_status text default null)
returns setof public.abuse_reports
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_staff();
  return query
    select *
    from public.abuse_reports
    where p_status is null or status = p_status
    order by created_at desc;
end;
$$;

create or replace function public.admin_update_abuse_report(
  p_report_id uuid,
  p_status text,
  p_notes text default ''
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  v_old_status text;
begin
  perform public.assert_moderator();

  select status into v_old_status
  from public.abuse_reports
  where id = p_report_id;

  if not found then
    raise exception 'abuse report not found';
  end if;

  update public.abuse_reports
  set status = p_status,
      moderator_notes = coalesce(p_notes, moderator_notes),
      updated_at = now()
  where id = p_report_id;

  perform public.log_admin_action(
    'abuse_report.status_change',
    'abuse_reports',
    p_report_id::text,
    jsonb_build_object('old_status', v_old_status, 'new_status', p_status)
  );
end;
$$;

-- ─── Role administration ─────────────────────────────────────────────────────

create or replace function public.admin_list_roles()
returns setof public.app_roles
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_staff();
  return query select * from public.app_roles order by rank;
end;
$$;

create or replace function public.admin_list_user_roles(p_user_id uuid)
returns setof public.user_roles
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_staff();
  return query
    select *
    from public.user_roles
    where user_id = p_user_id
    order by role;
end;
$$;

create or replace function public.admin_assign_role(
  p_user_id uuid,
  p_role text,
  p_school_id uuid default null
)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_platform_admin();

  if not exists (select 1 from public.app_roles where id = p_role) then
    raise exception 'unknown role';
  end if;
  if not exists (select 1 from auth.users where id = p_user_id) then
    raise exception 'user not found';
  end if;

  insert into public.user_roles (user_id, role, school_id, granted_by)
  values (p_user_id, p_role, p_school_id, auth.uid())
  on conflict (user_id, role) do update
    set school_id = excluded.school_id,
        granted_by = excluded.granted_by;

  perform public.log_admin_action(
    'role.assign',
    'user_roles',
    p_user_id::text,
    jsonb_build_object('role', p_role, 'school_id', p_school_id)
  );
end;
$$;

create or replace function public.admin_remove_role(
  p_user_id uuid,
  p_role text
)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_platform_admin();

  delete from public.user_roles
  where user_id = p_user_id and role = p_role;

  if not found then
    raise exception 'role assignment not found';
  end if;

  perform public.log_admin_action(
    'role.remove',
    'user_roles',
    p_user_id::text,
    jsonb_build_object('role', p_role)
  );
end;
$$;

-- ─── Guardian administration ─────────────────────────────────────────────────

create or replace function public.admin_list_guardian_links()
returns setof public.guardian_links
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_staff();
  return query select * from public.guardian_links order by created_at desc;
end;
$$;

create or replace function public.admin_list_data_export_requests()
returns setof public.data_export_requests
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_staff();
  return query select * from public.data_export_requests order by requested_at desc;
end;
$$;

create or replace function public.admin_link_guardian(
  p_guardian_id uuid,
  p_student_id uuid,
  p_relationship text default 'parent'
)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  perform public.assert_platform_admin();

  insert into public.guardian_links (guardian_id, student_id, relationship, status)
  values (p_guardian_id, p_student_id, coalesce(p_relationship, 'parent'), 'active')
  on conflict (guardian_id, student_id) do update
    set relationship = excluded.relationship,
        status = 'active',
        updated_at = now();

  perform public.log_admin_action(
    'guardian.link',
    'guardian_links',
    p_student_id::text,
    jsonb_build_object('guardian_id', p_guardian_id, 'relationship', p_relationship)
  );
end;
$$;

-- ─── Grants / revokes ────────────────────────────────────────────────────────

revoke all on table public.app_roles from anon, authenticated;
revoke all on table public.user_roles from anon, authenticated;
revoke all on table public.guardian_links from anon, authenticated;
revoke all on table public.abuse_reports from anon, authenticated;
revoke all on table public.data_export_requests from anon, authenticated;

grant select on public.app_roles to authenticated;
grant select on public.user_roles to authenticated;
grant select on public.guardian_links to authenticated;
grant select on public.abuse_reports to authenticated;
grant select on public.data_export_requests to authenticated;

revoke all on function public.current_user_roles() from public;
revoke all on function public.has_role(text) from public;
revoke all on function public.has_any_role(text[]) from public;
revoke all on function public.is_staff() from public;
revoke all on function public.is_platform_admin() from public;
revoke all on function public.is_content_admin() from public;
revoke all on function public.is_moderator() from public;
revoke all on function public.is_school_admin() from public;
revoke all on function public.assert_role(text) from public;
revoke all on function public.assert_staff() from public;
revoke all on function public.assert_platform_admin() from public;
revoke all on function public.request_data_export() from public;
revoke all on function public.get_my_data_export() from public;
revoke all on function public.submit_abuse_report(text, text, text, text) from public;
revoke all on function public.admin_list_abuse_reports(text) from public;
revoke all on function public.admin_update_abuse_report(uuid, text, text) from public;
revoke all on function public.admin_list_roles() from public;
revoke all on function public.admin_list_user_roles(uuid) from public;
revoke all on function public.admin_assign_role(uuid, text, uuid) from public;
revoke all on function public.admin_remove_role(uuid, text) from public;
revoke all on function public.admin_list_guardian_links() from public;
revoke all on function public.admin_link_guardian(uuid, uuid, text) from public;
revoke all on function public.admin_list_data_export_requests() from public;

grant execute on function public.current_user_roles() to authenticated;
grant execute on function public.has_role(text) to authenticated;
grant execute on function public.has_any_role(text[]) to authenticated;
grant execute on function public.is_staff() to authenticated;
grant execute on function public.is_platform_admin() to authenticated;
grant execute on function public.is_content_admin() to authenticated;
grant execute on function public.is_moderator() to authenticated;
grant execute on function public.is_school_admin() to authenticated;
grant execute on function public.assert_role(text) to authenticated;
grant execute on function public.assert_staff() to authenticated;
grant execute on function public.assert_platform_admin() to authenticated;
grant execute on function public.request_data_export() to authenticated;
grant execute on function public.get_my_data_export() to authenticated;
grant execute on function public.submit_abuse_report(text, text, text, text) to authenticated;
grant execute on function public.admin_list_abuse_reports(text) to authenticated;
grant execute on function public.admin_update_abuse_report(uuid, text, text) to authenticated;
grant execute on function public.admin_list_roles() to authenticated;
grant execute on function public.admin_list_user_roles(uuid) to authenticated;
grant execute on function public.admin_assign_role(uuid, text, uuid) to authenticated;
grant execute on function public.admin_remove_role(uuid, text) to authenticated;
grant execute on function public.admin_list_guardian_links() to authenticated;
grant execute on function public.admin_link_guardian(uuid, uuid, text) to authenticated;
grant execute on function public.admin_list_data_export_requests() to authenticated;

notify pgrst, 'reload schema';
