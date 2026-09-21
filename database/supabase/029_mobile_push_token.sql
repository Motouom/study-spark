-- Add push notification token storage for the mobile app (Expo push tokens).
alter table public.student_profiles
  add column if not exists expo_push_token text;

-- Students may only write their own token. 019_production_hardening revoked
-- table-level write on student_profiles, so re-grant the single column only:
-- the 001 "update own row" policy still scopes rows to auth.uid(), and this
-- column grant keeps the writable surface to expo_push_token alone (users
-- cannot touch plan/premium_until).
grant update (expo_push_token) on table public.student_profiles to authenticated;
