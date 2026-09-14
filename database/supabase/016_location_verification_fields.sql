-- Stores browser-permission location verification for learner ranking trust.

alter table public.student_profiles
add column if not exists location_verified boolean not null default false;

alter table public.student_profiles
add column if not exists location_latitude numeric(9, 6);

alter table public.student_profiles
add column if not exists location_longitude numeric(9, 6);

alter table public.student_profiles
add column if not exists location_verified_at timestamptz;

update public.student_profiles
set location_verified = false
where location_verified is null;

notify pgrst, 'reload schema';
