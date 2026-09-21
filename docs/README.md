# StudySpark Documentation

This folder contains the working documentation for StudySpark.

## Start Here

- [Architecture documentation](arc42.md): full arc42 architecture reference.
- [Deployment runbook](deployment-runbook.md): Vercel, Supabase, Fapshi, AI, and smoke-test steps.
- [Supabase migration discipline](supabase-migrations.md): database migration inventory, production apply process, verification SQL, and forward-fix guidance.
- [Supabase auth setup](supabase-auth-setup.md): Google OAuth and Supabase redirect configuration.
- [Content and database plan](content-and-database-plan.md): content model and protected delivery direction.

## Documentation Rules

- Keep production secrets out of documentation.
- Keep deployment instructions aligned with `.env.example`.
- Update `arc42.md` when major architecture, data flow, payment, auth, or deployment decisions change.
- Update the runbook whenever deployment, environment variables, or smoke tests change.
