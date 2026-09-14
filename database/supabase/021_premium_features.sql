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
