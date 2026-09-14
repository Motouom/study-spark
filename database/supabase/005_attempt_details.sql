alter table public.practice_attempts
add column if not exists question_ids uuid[] not null default '{}';

alter table public.practice_attempts
add column if not exists selected_answers jsonb not null default '[]'::jsonb;

alter table public.practice_attempts
add column if not exists duration_seconds integer not null default 0 check (duration_seconds >= 0);

notify pgrst, 'reload schema';
