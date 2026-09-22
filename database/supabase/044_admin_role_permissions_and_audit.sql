-- Migration 044: Focused admin role permissions and audit logging gaps
--
-- ROLE MATRIX:
--   reviewer     — read-only: list topics, documents, learners, logs
--   admin        — reviewer + write content, resolve issue reports
--   super_admin  — admin + change user plans, change settings
--
-- AUDIT ADDITIONS:
--   - admin_upsert_course_document
--   - admin_unpublish_course_document / admin_archive_course_document / admin_delete_course_document
--   - admin_set_learner_plan
--   - admin_resolve_content_issue_report

-- ─── Role helpers ─────────────────────────────────────────────────────────────

-- Reviewers can read but not write
create or replace function public.assert_content_writer()
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if public.current_admin_role() not in ('admin', 'super_admin') then
    raise exception 'admin or super_admin role required for this action';
  end if;
end;
$$;

-- Only super_admin can change user membership and platform settings
create or replace function public.assert_super_admin()
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if public.current_admin_role() <> 'super_admin' then
    raise exception 'super_admin role required for this action';
  end if;
end;
$$;

revoke all on function public.assert_content_writer() from public;
revoke all on function public.assert_super_admin() from public;
grant execute on function public.assert_content_writer() to authenticated;
grant execute on function public.assert_super_admin() to authenticated;

-- ─── Gate sensitive RPCs by role ─────────────────────────────────────────────
-- Recreate the RPCs that need tighter role checks.

-- admin_set_learner_plan: super_admin only (plan changes affect billing access)
create or replace function public.admin_set_learner_plan(
  learner_user_id uuid,
  learner_plan text
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  old_plan text;
begin
  perform public.assert_super_admin();

  select plan into old_plan
  from public.student_profiles
  where user_id = learner_user_id;

  if not found then
    raise exception 'learner not found';
  end if;

  update public.student_profiles
  set
    plan = learner_plan,
    premium_until = case
      when learner_plan = 'premium' then coalesce(premium_until, now() + interval '30 days')
      else null
    end,
    updated_at = now()
  where user_id = learner_user_id;

  perform public.log_admin_action(
    'learner.plan_change',
    'student_profiles',
    learner_user_id::text,
    jsonb_build_object('old_plan', old_plan, 'new_plan', learner_plan)
  );
end;
$$;

revoke all on function public.admin_set_learner_plan(uuid, text) from public;
grant execute on function public.admin_set_learner_plan(uuid, text) to authenticated;

-- ─── Add audit calls to course document mutations ─────────────────────────────
-- These are already defined elsewhere; we wrap them to add logging.
-- admin_upsert_course_document is defined in a later migration — we add a
-- logging trigger approach here using a statement-level audit wrapper.

-- Course document audit trigger
create or replace function public.tg_audit_course_document_change()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  if not public.is_admin() then
    return new;
  end if;

  if tg_op = 'INSERT' then
    perform public.log_admin_action(
      'document.create',
      'course_documents',
      new.id::text,
      jsonb_build_object(
        'title', new.title,
        'subject', new.subject,
        'status', new.status,
        'language', new.language
      )
    );
  elsif tg_op = 'UPDATE' then
    -- Only log meaningful changes (status, content, title)
    if (new.status is distinct from old.status)
       or (new.title is distinct from old.title)
       or (new.markdown_content is distinct from old.markdown_content) then
      perform public.log_admin_action(
        'document.update',
        'course_documents',
        new.id::text,
        jsonb_build_object(
          'title', new.title,
          'old_status', old.status,
          'new_status', new.status
        )
      );
    end if;
  elsif tg_op = 'DELETE' then
    perform public.log_admin_action(
      'document.delete',
      'course_documents',
      old.id::text,
      jsonb_build_object('title', old.title, 'subject', old.subject)
    );
  end if;

  return coalesce(new, old);
end;
$$;

drop trigger if exists audit_course_document_change on public.course_documents;
create trigger audit_course_document_change
  after insert or update or delete
  on public.course_documents
  for each row
  execute function public.tg_audit_course_document_change();

-- Issue report resolution audit
create or replace function public.tg_audit_issue_report_resolved()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  if not public.is_admin() then
    return new;
  end if;

  if new.status is distinct from old.status then
    perform public.log_admin_action(
      'issue_report.status_change',
      'content_issue_reports',
      new.id::text,
      jsonb_build_object(
        'old_status', old.status,
        'new_status', new.status,
        'admin_notes', new.admin_notes
      )
    );
  end if;

  return new;
end;
$$;

drop trigger if exists audit_issue_report_resolved on public.content_issue_reports;
create trigger audit_issue_report_resolved
  after update
  on public.content_issue_reports
  for each row
  execute function public.tg_audit_issue_report_resolved();

-- ─── Restrict admin read-only RPCs to reviewer+ ───────────────────────────────
-- assert_admin() already covers this for list functions.
-- Confirm list functions still work for reviewer (no change needed — assert_admin
-- already accepts reviewer). Document this is intentional.

-- ─── Explicit deny for audit log inserts from non-RPC path ───────────────────
-- Ensure authenticated users cannot insert directly into admin_audit_logs.
-- RLS already denies by default (only select policy exists), but be explicit.
drop policy if exists "deny direct insert on audit logs" on public.admin_audit_logs;
create policy "deny direct insert on audit logs"
on public.admin_audit_logs for insert
to authenticated
with check (false);

drop policy if exists "deny direct update on audit logs" on public.admin_audit_logs;
create policy "deny direct update on audit logs"
on public.admin_audit_logs for update
to authenticated
using (false);

drop policy if exists "deny direct delete on audit logs" on public.admin_audit_logs;
create policy "deny direct delete on audit logs"
on public.admin_audit_logs for delete
to authenticated
using (false);

notify pgrst, 'reload schema';
