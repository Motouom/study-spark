-- After a learner has progress, keep study-track fields stable but do not
-- reject the whole profile save. This lets harmless settings changes such as
-- display name, language, notification preferences, location verification
-- metadata, and selected subjects save without a 400 response.

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
language plpgsql
security definer
set search_path = public
as $$
declare
  current_user_id uuid := auth.uid();
  saved_profile public.student_profiles%rowtype;
  has_progress boolean;
  normalized_city text := trim(coalesce(profile_city, ''));
begin
  if current_user_id is null then
    raise exception 'authentication required';
  end if;

  if trim(coalesce(profile_name, '')) = '' then
    raise exception 'display name is required';
  end if;

  if coalesce(array_length(profile_subjects, 1), 0) = 0 then
    raise exception 'at least one subject is required';
  end if;

  select exists (
    select 1 from public.structural_question_progress
    where user_id = current_user_id
  )
  into has_progress;

  insert into public.student_profiles (
    user_id,
    name,
    language,
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
    country = case when has_progress then public.student_profiles.country else excluded.country end,
    region = case when has_progress then public.student_profiles.region else excluded.region end,
    city = case when has_progress then public.student_profiles.city else excluded.city end,
    location_verified = excluded.location_verified,
    location_latitude = excluded.location_latitude,
    location_longitude = excluded.location_longitude,
    location_verified_at = excluded.location_verified_at,
    location_source = excluded.location_source,
    verified_country = excluded.verified_country,
    verified_region = excluded.verified_region,
    verified_city = excluded.verified_city,
    verified_location_at = excluded.verified_location_at,
    level = case when has_progress then public.student_profiles.level else excluded.level end,
    class_level = case when has_progress then public.student_profiles.class_level else excluded.class_level end,
    series = case when has_progress then public.student_profiles.series else excluded.series end,
    subjects = excluded.subjects,
    updated_at = now()
  returning * into saved_profile;

  return saved_profile;
end;
$$;

revoke all on function public.update_student_profile(
  text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
) from public;
grant execute on function public.update_student_profile(
  text, text, text, text, text, boolean, numeric, numeric, timestamptz, text, text, text, text[]
) to authenticated;
