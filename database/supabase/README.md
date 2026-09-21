# StudySpark Supabase SQL Files

Read `docs/supabase-migrations.md` before running anything in this folder.

This directory contains the legacy ordered StudySpark SQL set. The files are not yet a standard Supabase CLI `supabase/migrations/` history, so applying them manually requires extra care:

- Do not run `000_full_studyspark_setup.sql` on an existing production database.
- Do not run `022_premium_setup_one_shot.sql` if `020_premium_paper_access.sql`, `021_premium_features.sql`, and `023_fapshi_payments.sql` already ran.
- Apply production SQL one reviewed file at a time.
- Prefer future timestamped migrations created with `supabase migration new <name>`.
- Verify production schema with the SQL checks in `docs/supabase-migrations.md`.

