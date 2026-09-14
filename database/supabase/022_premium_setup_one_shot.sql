-- StudySpark Premium setup only.

-- Run this once when the paper content already exists or when you only need premium gating, learner premium tools, and Fapshi payments.

-- ===== database/supabase/020_premium_paper_access.sql =====
-- Premium paper access gate.
-- Free learners can see all matching paper titles, but can open only the first two.
-- Premium learners can open every matching published paper.

alter table public.student_profiles
add column if not exists plan text not null default 'free';

alter table public.student_profiles
add column if not exists premium_until timestamptz;

alter table public.student_profiles
drop constraint if exists student_profiles_plan_check;

alter table public.student_profiles
add constraint student_profiles_plan_check
check (plan in ('free', 'premium'));

update public.student_profiles
set plan = 'free'
where plan is null or plan not in ('free', 'premium');

drop policy if exists "students read matching published course documents" on public.course_documents;
drop policy if exists "students read unlocked published course documents" on public.course_documents;
create policy "students read unlocked published course documents"
on public.course_documents for select
to authenticated
using (
  status = 'published'
  and exists (
    select 1
    from (
      select
        document.id,
        (
          profile.plan = 'premium'
          and (profile.premium_until is null or profile.premium_until > now())
        ) as premium_active,
        row_number() over (order by document.title asc, document.id asc) as access_position
      from public.course_documents document
      join public.student_profiles profile on profile.user_id = (select auth.uid())
      where document.status = 'published'
        and profile.language = document.language
        and profile.class_level = any(document.class_levels)
        and profile.series = any(document.series)
        and document.subject = any(profile.subjects)
    ) ranked
    where ranked.id = course_documents.id
      and (ranked.premium_active or ranked.access_position <= 2)
  )
);

drop function if exists public.list_allowed_course_documents();
create or replace function public.list_allowed_course_documents()
returns table (
  id uuid,
  topic_id text,
  subject text,
  title text,
  language text,
  level text,
  class_levels text[],
  series text[],
  markdown_content text,
  updated_at timestamptz,
  access_status text,
  is_locked boolean
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
    with matching_documents as (
      select
        document.id,
        document.topic_id,
        document.subject,
        document.title,
        document.language,
        document.level,
        document.class_levels,
        document.series,
        document.markdown_content,
        document.updated_at,
        (
          profile.plan = 'premium'
          and (profile.premium_until is null or profile.premium_until > now())
        ) as premium_active,
        row_number() over (order by document.title asc, document.id asc) as access_position
      from public.course_documents document
      join public.student_profiles profile on profile.user_id = auth.uid()
      where document.status = 'published'
        and profile.language = document.language
        and profile.class_level = any(document.class_levels)
        and profile.series = any(document.series)
        and document.subject = any(profile.subjects)
    )
    select
      document.id,
      document.topic_id,
      document.subject,
      document.title,
      document.language,
      document.level,
      document.class_levels,
      document.series,
      case
        when document.premium_active or document.access_position <= 2
          then document.markdown_content
        else null::text
      end as markdown_content,
      document.updated_at,
      case
        when document.premium_active then 'premium'
        when document.access_position <= 2 then 'free_preview'
        else 'premium_locked'
      end as access_status,
      not (document.premium_active or document.access_position <= 2) as is_locked
    from matching_documents document
    order by document.access_position asc, document.title asc;
end;
$$;

revoke all on function public.list_allowed_course_documents() from public;
grant execute on function public.list_allowed_course_documents() to authenticated;

notify pgrst, 'reload schema';

-- ===== database/supabase/021_premium_features.sql =====
-- Premium learner features: streak freezes and admin plan management.

create table if not exists public.streak_freezes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  freeze_date date not null default current_date,
  created_at timestamptz not null default now(),
  unique (user_id, freeze_date)
);

create index if not exists streak_freezes_user_date_idx
on public.streak_freezes (user_id, freeze_date desc);

alter table public.streak_freezes enable row level security;

drop policy if exists "students read own streak freezes" on public.streak_freezes;
create policy "students read own streak freezes"
on public.streak_freezes for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "admins read streak freezes" on public.streak_freezes;
create policy "admins read streak freezes"
on public.streak_freezes for select
to authenticated
using (public.is_admin());

drop function if exists public.use_streak_freeze(date);
create or replace function public.use_streak_freeze(target_date date default current_date)
returns public.streak_freezes
language plpgsql
security definer
set search_path = public
as $$
declare
  current_user_id uuid := auth.uid();
  current_plan text;
  current_premium_until timestamptz;
  weekly_count integer;
  saved public.streak_freezes%rowtype;
begin
  if current_user_id is null then
    raise exception 'authentication required';
  end if;

  select plan, premium_until into current_plan, current_premium_until
  from public.student_profiles
  where user_id = current_user_id;

  if coalesce(current_plan, 'free') <> 'premium'
    or (current_premium_until is not null and current_premium_until <= now()) then
    raise exception 'premium plan required';
  end if;

  if target_date < current_date - 1 or target_date > current_date then
    raise exception 'streak freezes can only be used for today or yesterday';
  end if;

  select count(*) into weekly_count
  from public.streak_freezes
  where user_id = current_user_id
    and freeze_date >= date_trunc('week', target_date)::date
    and freeze_date < (date_trunc('week', target_date)::date + interval '7 days')::date;

  if weekly_count >= 1 then
    raise exception 'weekly streak freeze already used';
  end if;

  insert into public.streak_freezes (user_id, freeze_date)
  values (current_user_id, target_date)
  returning * into saved;

  return saved;
end;
$$;

drop function if exists public.list_my_streak_freezes();
create or replace function public.list_my_streak_freezes()
returns setof public.streak_freezes
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
    select *
    from public.streak_freezes
    where user_id = auth.uid()
    order by freeze_date desc;
end;
$$;

drop function if exists public.admin_set_learner_plan(uuid, text);
create or replace function public.admin_set_learner_plan(learner_user_id uuid, learner_plan text)
returns public.student_profiles
language plpgsql
security definer
set search_path = public
as $$
declare
  saved public.student_profiles%rowtype;
begin
  perform public.assert_admin();

  if learner_plan not in ('free', 'premium') then
    raise exception 'invalid learner plan';
  end if;

  update public.student_profiles
  set plan = learner_plan,
      premium_until = null,
      updated_at = now()
  where user_id = learner_user_id
  returning * into saved;

  if saved.user_id is null then
    raise exception 'learner profile not found';
  end if;

  perform public.log_admin_action(
    'learner.plan.update',
    'student_profiles',
    learner_user_id::text,
    jsonb_build_object('plan', learner_plan)
  );

  return saved;
end;
$$;

drop function if exists public.admin_list_learners();
create or replace function public.admin_list_learners()
returns table (
  user_id uuid,
  name text,
  language text,
  level text,
  class_level text,
  series text,
  subjects text[],
  country text,
  region text,
  city text,
  location_verified boolean,
  plan text,
  questions_started bigint,
  questions_passed bigint,
  questions_failed bigint,
  pass_rate numeric,
  average_duration_seconds numeric,
  study_days bigint,
  last_seen timestamptz,
  created_at timestamptz
)
language plpgsql
stable
security definer
set search_path = public
as $$
begin
  perform public.assert_admin();

  return query
    select
      profile.user_id,
      profile.name,
      profile.language,
      profile.level,
      profile.class_level,
      profile.series,
      profile.subjects,
      profile.country,
      profile.region,
      profile.city,
      profile.location_verified,
      profile.plan,
      count(progress.id) as questions_started,
      count(progress.id) filter (where progress.status = 'passed') as questions_passed,
      count(progress.id) filter (where progress.status = 'failed') as questions_failed,
      coalesce(
        round(
          100.0 * count(progress.id) filter (where progress.status = 'passed')
          / nullif(count(progress.id) filter (where progress.status in ('passed', 'failed')), 0),
          2
        ),
        0
      ) as pass_rate,
      coalesce(avg(progress.duration_seconds) filter (where progress.duration_seconds is not null), 0)
        as average_duration_seconds,
      count(distinct date(coalesce(progress.completed_at, progress.started_at, progress.updated_at)))
        as study_days,
      max(progress.updated_at) as last_seen,
      profile.created_at
    from public.student_profiles profile
    left join public.structural_question_progress progress on progress.user_id = profile.user_id
    group by profile.user_id
    order by profile.created_at desc;
end;
$$;

revoke all on function public.use_streak_freeze(date) from public;
revoke all on function public.list_my_streak_freezes() from public;
revoke all on function public.admin_set_learner_plan(uuid, text) from public;
revoke all on function public.admin_list_learners() from public;

grant execute on function public.use_streak_freeze(date) to authenticated;
grant execute on function public.list_my_streak_freezes() to authenticated;
grant execute on function public.admin_set_learner_plan(uuid, text) to authenticated;
grant execute on function public.admin_list_learners() to authenticated;
grant select on public.streak_freezes to authenticated;

notify pgrst, 'reload schema';

-- ===== database/supabase/023_fapshi_payments.sql =====
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
