-- 030: Split reviewer (read-only) from admin (read-write).
-- Previously assert_admin() (used by every mutating admin RPC) accepted
-- 'reviewer', so reviewers could delete papers and change learner plans.
-- Reads (RLS policies using is_admin()) keep working for reviewers; writes
-- now require admin or super_admin.

create or replace function public.assert_admin()
returns void
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if public.current_admin_role() not in ('admin', 'super_admin') then
    raise exception 'admin access required';
  end if;
end;
$$;

revoke all on function public.assert_admin() from public;
grant execute on function public.assert_admin() to authenticated;
