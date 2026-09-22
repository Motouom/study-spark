-- Multi-provider AI quota tracking for StudySpark.
-- Tracks daily request counts per provider so the app can fall back
-- when a free-tier provider's daily quota is exhausted.

create table if not exists public.ai_provider_usage (
  id serial primary key,
  provider text not null,
  usage_date date not null default current_date,
  request_count integer not null default 0,
  constraint ai_provider_usage_provider_date unique (provider, usage_date)
);

-- Atomically increment the request count for a provider on the current day.
create or replace function public.increment_ai_usage(provider_name text)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.ai_provider_usage (provider, usage_date, request_count)
  values (provider_name, current_date, 1)
  on conflict (provider, usage_date)
  do update set request_count = public.ai_provider_usage.request_count + 1;
end;
$$;

-- Get today's request count for a provider (returns 0 if no row exists).
create or replace function public.get_ai_usage(provider_name text)
returns integer
language sql
security definer
set search_path = public
as $$
  select coalesce(
    (select request_count
     from public.ai_provider_usage
     where provider = provider_name and usage_date = current_date),
    0
  );
$$;

-- Grant execute to authenticated (server-side service role bypasses RLS anyway).
grant execute on function public.increment_ai_usage(text) to authenticated;
grant execute on function public.get_ai_usage(text) to authenticated;
