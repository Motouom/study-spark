-- Shared rate-limit counters so per-user limits hold across serverless
-- instances (Vercel runs many concurrent/ephemeral instances, so the old
-- in-memory limiter was not enforced globally).
create table if not exists public.rate_limit_hits (
  key text primary key,
  count integer not null default 0,
  reset_at timestamptz not null,
  updated_at timestamptz not null default now()
);

alter table public.rate_limit_hits enable row level security;

-- Atomic fixed-window check. Called with the service role; security definer
-- lets it touch the table regardless of the caller's grants.
create or replace function public.rate_limit_check(
  p_key text,
  p_limit integer,
  p_window_ms integer
)
returns json
language plpgsql
security definer
set search_path = public
as $$
declare
  v_count integer;
  v_reset_at timestamptz;
  v_now timestamptz := now();
  v_allowed boolean;
  v_retry_after integer;
begin
  insert into public.rate_limit_hits (key, count, reset_at, updated_at)
  values (p_key, 1, v_now + (p_window_ms * interval '1 millisecond'), v_now)
  on conflict (key) do update
    set count = case
          when public.rate_limit_hits.reset_at <= v_now then 1
          else public.rate_limit_hits.count + 1
        end,
        reset_at = case
          when public.rate_limit_hits.reset_at <= v_now
            then v_now + (p_window_ms * interval '1 millisecond')
          else public.rate_limit_hits.reset_at
        end,
        updated_at = v_now
  returning count, reset_at into v_count, v_reset_at;

  if v_count > p_limit then
    v_allowed := false;
    v_retry_after := greatest(1, ceil(extract(epoch from (v_reset_at - v_now))))::int;
  else
    v_allowed := true;
    v_retry_after := 0;
  end if;

  return json_build_object('allowed', v_allowed, 'retry_after_seconds', v_retry_after);
end;
$$;

revoke all on public.rate_limit_hits from anon, authenticated;
grant execute on function public.rate_limit_check to service_role;