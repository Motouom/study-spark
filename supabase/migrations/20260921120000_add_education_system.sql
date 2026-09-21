-- Add education_system column to student_profiles to support both GCE Anglophone
-- and Francophone (OBC) curriculum paths.
-- This allows the app to filter content, series, and subjects by education system.

alter table public.student_profiles
add column if not exists education_system text default 'gce';

alter table public.student_profiles
drop constraint if exists student_profiles_education_system_check;

alter table public.student_profiles
add constraint student_profiles_education_system_check
check (education_system in ('gce', 'francophone'));

-- Update existing rows: derive education_system from language
update public.student_profiles
set education_system = case
  when language = 'french' then 'francophone'
  else 'gce'
end
where education_system is null;

-- Make education_system non-nullable after backfill
alter table public.student_profiles
alter column education_system set not null;

create or replace function public.update_student_profile(
  profile_name text,
  profile_language text,
  profile_education_system text,
  profile_country text,
  profile_region text,
  profile_city text,
  profile_location_verified boolean,
  profile_location_latitude numeric,
  profile_location_longitude numeric,
  profile_location_verified_at timestamptz,
  profile_level text,
  profile_class_level text,
  profile_series text,
  profile_subjects text[]
)
returns public.student_profiles
language plpgsql
security definer
set search_path = public
as $$
declare
  current_user_id uuid := auth.uid();
  saved_profile public.student_profiles%rowtype;
  normalized_city text := trim(coalesce(profile_city, ''));
begin
  if current_user_id is null then
    raise exception 'authentication required';
  end if;

  if trim(coalesce(profile_name, '')) = '' then
    raise exception 'display name is required';
  end if;

  if profile_language not in ('english', 'french') then
    raise exception 'unsupported study language';
  end if;

  if profile_education_system not in ('gce', 'francophone') then
    raise exception 'unsupported education system';
  end if;

  if coalesce(array_length(profile_subjects, 1), 0) = 0 then
    raise exception 'at least one subject is required';
  end if;

  insert into public.student_profiles (
    user_id,
    name,
    language,
    education_system,
    country,
    region,
    city,
    location_verified,
    location_latitude,
    location_longitude,
    location_verified_at,
    location_source,
    verified_country,
    verified_region,
    verified_city,
    verified_location_at,
    level,
    class_level,
    series,
    subjects
  )
  values (
    current_user_id,
    trim(profile_name),
    profile_language,
    profile_education_system,
    profile_country,
    profile_region,
    normalized_city,
    coalesce(profile_location_verified, false),
    profile_location_latitude,
    profile_location_longitude,
    profile_location_verified_at,
    case when coalesce(profile_location_verified, false) then 'browser_geolocation' else 'self_reported' end,
    case when coalesce(profile_location_verified, false) then profile_country else null end,
    case when coalesce(profile_location_verified, false) then profile_region else null end,
    case when coalesce(profile_location_verified, false) then normalized_city else null end,
    case when coalesce(profile_location_verified, false) then coalesce(profile_location_verified_at, now()) else null end,
    profile_level,
    profile_class_level,
    profile_series,
    profile_subjects
  )
  on conflict (user_id) do update set
    name = excluded.name,
    language = excluded.language,
    education_system = excluded.education_system,
    country = excluded.country,
    region = excluded.region,
    city = excluded.city,
    location_verified = excluded.location_verified,
    location_latitude = excluded.location_latitude,
    location_longitude = excluded.location_longitude,
    location_verified_at = excluded.location_verified_at,
    location_source = excluded.location_source,
    verified_country = excluded.verified_country,
    verified_region = excluded.verified_region,
    verified_city = excluded.verified_city,
    verified_location_at = excluded.verified_location_at,
    level = excluded.level,
    class_level = excluded.class_level,
    series = excluded.series,
    subjects = excluded.subjects,
    updated_at = now()
  returning * into saved_profile;

  return saved_profile;
end;
$$;

-- Compatibility wrapper for already-open browsers running the previous app bundle.
-- New clients call the signature above and send education_system explicitly.
create or replace function public.update_student_profile(
  profile_name text,
  profile_language text,
  profile_country text,
  profile_region text,
  profile_city text,
  profile_location_verified boolean,
  profile_location_latitude numeric,
  profile_location_longitude numeric,
  profile_location_verified_at timestamptz,
  profile_level text,
  profile_class_level text,
  profile_series text,
  profile_subjects text[]
)
returns public.student_profiles
language sql
security definer
set search_path = public
as $$
  select public.update_student_profile(
    profile_name,
    profile_language,
    case when profile_language = 'french' then 'francophone' else 'gce' end,
    profile_country,
    profile_region,
    profile_city,
    profile_location_verified,
    profile_location_latitude,
    profile_location_longitude,
    profile_location_verified_at,
    profile_level,
    profile_class_level,
    profile_series,
    profile_subjects
  );
$$;

-- Re-grant execute permission
revoke all on function public.update_student_profile(
  text, text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
) from public;
grant execute on function public.update_student_profile(
  text, text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
) to authenticated;

revoke all on function public.update_student_profile(
  text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
) from public;
grant execute on function public.update_student_profile(
  text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
) to authenticated;
