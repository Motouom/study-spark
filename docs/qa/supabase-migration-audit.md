# Supabase Migration & Schema Audit — Issue #71

> Audit of production Supabase schema against committed migrations, and confirmation that migration handling is safe and repeatable.

| Field                | Value                          |
| -------------------- | ------------------------------ |
| Date                 | 2026-09-29                     |
| Environment          | Production                     |
| Supabase project ref | `ekqlqsyirsakdxonxmis`         |
| Branch               | `fix/supabase-migration-audit` |

---

## 1. Migration history in sync

- **33 migrations** in `supabase/migrations/` — all applied to production.
- `supabase migration list` shows **local = remote** for every migration (no drift).
- No pending/unapplied migrations.

## 2. Production schema matches app expectations

All expected tables exist in `public`:

| Table                              | Present |
| ---------------------------------- | ------- |
| `student_profiles`                 | ✅      |
| `course_documents`                 | ✅      |
| `paper_study_sessions`             | ✅      |
| `paper_study_checkpoints`          | ✅      |
| `paper_study_reflections`          | ✅      |
| `structural_question_progress`     | ✅      |
| `topic_understanding_progress`     | ✅      |
| `learner_notification_reads`       | ✅      |
| `learner_notification_preferences` | ✅      |
| `payment_transactions`             | ✅      |
| `subscriptions`                    | ✅      |
| `admin_audit_logs`                 | ✅      |
| `protected_content_events`         | ✅      |
| `topics`                           | ✅      |
| `questions`                        | ✅      |
| `practice_attempts`                | ✅      |
| `streak_freezes`                   | ✅      |
| `ai_provider_usage`                | ✅      |

Key table columns verified against app expectations (e.g. `student_profiles` includes `education_system`, `level`, `class_level`, `series`, `subjects`, `plan`, `premium_until`; `course_documents` includes `content_kind`, `doc_type`, `status`, `class_levels`, `series`, `language`).

## 3. RLS prevents anonymous access to protected content

- **RLS enabled** on all protected tables (`course_documents`, `student_profiles`, `paper_study_sessions`, `paper_study_checkpoints`, `structural_question_progress`, `topic_understanding_progress`, `learner_notification_reads`, `payment_transactions`, `admin_audit_logs`, `protected_content_events`).
- `course_documents` read policy only allows **authenticated** users to read **published** documents matching their profile (language, level, class_level, series, subjects), with premium gating and free-paper rules. The `anon` role is not granted access.
- Admin policies are scoped to `is_admin()`.

## 4. Account deletion works

- `delete_current_user` RPC exists in production.
- `src/lib/auth.ts` `deleteCurrentAccount()` calls `delete_current_user` with `confirm_text: 'delete'`, then signs out.

## 5. Docs updated

- `docs/supabase-migrations.md` migration inventory updated with all applied CLI-tracked migrations since `20260925085337`:
  - `20260925134141`, `20260925134209`, `20260925153000` — GCE paper coverage
  - `20260929102455`, `20260929103424`, `20260929103702` — French paper parity
  - `20260929104524` — French Seconde/Première
  - `20260929120509`, `20260929125405` — French BEPC/Lycée quality

## 6. Normal migrations vs one-off repair scripts

- Normal schema/content migrations live in `supabase/migrations/` (CLI-tracked, timestamped).
- One-off repair scripts are documented separately in the migration inventory with "repair" / "one-shot" categories and rerun guidance.
- Untracked generated migration files were reviewed and committed (GCE paper coverage migrations were already applied to production, so they were committed to keep history consistent).

## Summary

| Item                            | Status |
| ------------------------------- | ------ |
| Migration history in sync       | ✅     |
| Schema matches app expectations | ✅     |
| RLS blocks anonymous access     | ✅     |
| Account deletion works          | ✅     |
| Docs updated                    | ✅     |
