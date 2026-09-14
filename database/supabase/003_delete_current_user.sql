drop function if exists public.delete_current_user();
drop function if exists public.delete_current_user(text);

create or replace function public.delete_current_user(confirm_text text)
returns boolean
language plpgsql
security definer
set search_path = auth, public
as $$
declare
  current_user_id uuid := auth.uid();
begin
  if current_user_id is null then
    raise exception 'not authenticated';
  end if;

  if confirm_text <> 'delete' then
    raise exception 'delete confirmation did not match';
  end if;

  delete from auth.users
  where id = current_user_id;

  return true;
end;
$$;

revoke all on function public.delete_current_user(text) from public;
grant execute on function public.delete_current_user(text) to authenticated;

notify pgrst, 'reload schema';
