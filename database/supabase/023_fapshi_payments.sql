-- Fapshi-backed Premium subscriptions.

alter table public.student_profiles
add column if not exists premium_until timestamptz;

create table if not exists public.subscriptions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  provider text not null default 'fapshi',
  plan text not null default 'premium',
  billing_interval text not null,
  status text not null default 'pending',
  amount_xaf integer not null,
  current_period_start timestamptz,
  current_period_end timestamptz,
  auto_renew boolean not null default false,
  provider_customer_id text,
  provider_subscription_id text,
  last_payment_transaction_id uuid,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint subscriptions_provider_check check (provider in ('fapshi')),
  constraint subscriptions_plan_check check (plan in ('premium')),
  constraint subscriptions_billing_interval_check check (billing_interval in ('monthly', 'yearly')),
  constraint subscriptions_status_check check (status in ('pending', 'active', 'past_due', 'expired', 'cancelled')),
  constraint subscriptions_amount_check check (amount_xaf >= 100)
);

create table if not exists public.payment_transactions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  subscription_id uuid references public.subscriptions(id) on delete set null,
  provider text not null default 'fapshi',
  provider_transaction_id text,
  external_id text not null unique,
  status text not null default 'created',
  billing_interval text not null,
  amount_xaf integer not null,
  currency text not null default 'XAF',
  checkout_url text,
  provider_financial_transaction_id text,
  provider_payload jsonb not null default '{}'::jsonb,
  verified_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint payment_transactions_provider_check check (provider in ('fapshi')),
  constraint payment_transactions_status_check check (status in ('created', 'pending', 'successful', 'failed', 'expired')),
  constraint payment_transactions_billing_interval_check check (billing_interval in ('monthly', 'yearly')),
  constraint payment_transactions_currency_check check (currency = 'XAF'),
  constraint payment_transactions_amount_check check (amount_xaf >= 100)
);

create unique index if not exists payment_transactions_provider_transaction_id_idx
on public.payment_transactions (provider, provider_transaction_id)
where provider_transaction_id is not null;

create index if not exists payment_transactions_user_created_idx
on public.payment_transactions (user_id, created_at desc);

create index if not exists subscriptions_user_status_idx
on public.subscriptions (user_id, status, current_period_end desc);

drop trigger if exists subscriptions_set_updated_at on public.subscriptions;
create trigger subscriptions_set_updated_at
before update on public.subscriptions
for each row execute function public.set_updated_at();

drop trigger if exists payment_transactions_set_updated_at on public.payment_transactions;
create trigger payment_transactions_set_updated_at
before update on public.payment_transactions
for each row execute function public.set_updated_at();

alter table public.subscriptions enable row level security;
alter table public.payment_transactions enable row level security;

drop policy if exists "students read own subscriptions" on public.subscriptions;
create policy "students read own subscriptions"
on public.subscriptions for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "admins read subscriptions" on public.subscriptions;
create policy "admins read subscriptions"
on public.subscriptions for select
to authenticated
using (public.is_admin());

drop policy if exists "students read own payment transactions" on public.payment_transactions;
create policy "students read own payment transactions"
on public.payment_transactions for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "admins read payment transactions" on public.payment_transactions;
create policy "admins read payment transactions"
on public.payment_transactions for select
to authenticated
using (public.is_admin());

drop function if exists public.refresh_my_subscription_status();
create or replace function public.refresh_my_subscription_status()
returns public.student_profiles
language plpgsql
security definer
set search_path = public
as $$
declare
  current_user_id uuid := auth.uid();
  has_active_subscription boolean;
  latest_end timestamptz;
  saved public.student_profiles%rowtype;
begin
  if current_user_id is null then
    raise exception 'authentication required';
  end if;

  select * into saved from public.student_profiles where user_id = current_user_id;

  select
    bool_or(status = 'active' and current_period_end > now()),
    max(current_period_end) filter (where status = 'active' and current_period_end > now())
  into has_active_subscription, latest_end
  from public.subscriptions
  where user_id = current_user_id;

  update public.student_profiles
  set
    plan = case
      when coalesce(has_active_subscription, false) then 'premium'
      when saved.plan = 'premium' and saved.premium_until is null then 'premium'
      else 'free'
    end,
    premium_until = case
      when coalesce(has_active_subscription, false) then latest_end
      when saved.plan = 'premium' and saved.premium_until is null then null
      else null
    end,
    updated_at = now()
  where user_id = current_user_id
    and (
      (coalesce(has_active_subscription, false) and (plan <> 'premium' or premium_until is distinct from latest_end))
      or (
        not coalesce(has_active_subscription, false)
        and not (saved.plan = 'premium' and saved.premium_until is null)
        and (plan <> 'free' or premium_until is not null)
      )
    )
  returning * into saved;

  if saved.user_id is null then
    select * into saved from public.student_profiles where user_id = current_user_id;
  end if;

  return saved;
end;
$$;

drop function if exists public.list_my_subscription();
create or replace function public.list_my_subscription()
returns table (
  plan text,
  premium_until timestamptz,
  subscription_status text,
  billing_interval text,
  current_period_end timestamptz,
  auto_renew boolean,
  last_payment_status text,
  last_payment_amount_xaf integer,
  last_payment_created_at timestamptz
)
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  if auth.uid() is null then
    raise exception 'authentication required';
  end if;

  return query
    select
      profile.plan,
      profile.premium_until,
      subscription.status,
      subscription.billing_interval,
      subscription.current_period_end,
      subscription.auto_renew,
      payment.status,
      payment.amount_xaf,
      payment.created_at
    from public.student_profiles profile
    left join lateral (
      select *
      from public.subscriptions sub
      where sub.user_id = profile.user_id
      order by sub.created_at desc
      limit 1
    ) subscription on true
    left join lateral (
      select *
      from public.payment_transactions tx
      where tx.user_id = profile.user_id
      order by tx.created_at desc
      limit 1
    ) payment on true
    where profile.user_id = auth.uid();
end;
$$;

revoke all on function public.refresh_my_subscription_status() from public;
revoke all on function public.list_my_subscription() from public;

grant execute on function public.refresh_my_subscription_status() to authenticated;
grant execute on function public.list_my_subscription() to authenticated;
grant select on public.subscriptions to authenticated;
grant select on public.payment_transactions to authenticated;

notify pgrst, 'reload schema';
