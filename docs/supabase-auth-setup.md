# Supabase auth setup

StudySpark uses Supabase Auth for student sign-in. The Vite app does not need a direct Google client variable when Supabase handles OAuth.

## Vite environment

Create `.env.local` from `.env.example` and fill:

```bash
VITE_SUPABASE_URL=https://ekqlqsyirsakdxonxmis.supabase.co
VITE_SUPABASE_PUBLISHABLE_KEY=your-publishable-key
```

You can find both values in Supabase Dashboard > Project Settings > API. If your dashboard labels the browser-safe key as `anon public`, it can be used as the publishable key.

## Google OAuth

1. Open Google Cloud Console.
2. Go to APIs & Services > Credentials.
3. Create an OAuth client ID.
4. Choose Web application.
5. Add the Supabase callback URL as an authorized redirect URI.

The callback URL is shown in Supabase Dashboard > Authentication > Providers > Google. It usually looks like:

```text
https://ekqlqsyirsakdxonxmis.supabase.co/auth/v1/callback
```

Copy the Google client ID and client secret into Supabase Dashboard > Authentication > Providers > Google, then enable the provider.

Google Cloud should only receive the Supabase callback URL:

```text
https://ekqlqsyirsakdxonxmis.supabase.co/auth/v1/callback
```

## Supabase redirect URLs

In Supabase Dashboard > Authentication > URL Configuration:

- Set the local site URL to `http://127.0.0.1:8082` while developing on the current Vite server.
- Add `http://127.0.0.1:8082/auth/callback` to redirect URLs.
- Set the production site URL to `https://study-spark-237.vercel.app`.
- Add `https://study-spark-237.vercel.app/auth/callback` to redirect URLs.

Supabase should receive the app callback URL:

```text
http://127.0.0.1:8082/auth/callback
https://study-spark-237.vercel.app/auth/callback
```

## Important note

Do not put the Google client secret in Vite. Browser environment variables are public. The secret belongs only inside the Supabase provider settings.

## Database setup

Run these files in Supabase Dashboard > SQL Editor, in this order:

1. `database/supabase/001_studyspark_schema.sql`
2. `database/supabase/002_seed_sample_content.sql`
3. `database/supabase/003_delete_current_user.sql`

The third file enables the Settings > Delete account flow. Without it, the app can still sign in, but account deletion will fail because browser clients cannot directly delete Supabase Auth users.

## Troubleshooting

If Google redirects back to `/dashboard` with this error:

```text
Unable to exchange external code
```

check Supabase Dashboard > Authentication > Providers > Google. The Google client ID and secret saved there must come from the same Google OAuth web client that has this authorized redirect URI:

```text
https://ekqlqsyirsakdxonxmis.supabase.co/auth/v1/callback
```

If you created a new Google secret, paste the new secret into Supabase and save the provider again.
