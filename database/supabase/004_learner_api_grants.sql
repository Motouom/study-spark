grant usage on schema public to anon, authenticated;

grant select, insert, update on public.student_profiles to authenticated;
grant select on public.topics to authenticated;
grant select, insert on public.practice_attempts to authenticated;
grant execute on function public.list_allowed_questions() to authenticated;
grant execute on function public.grade_question_answer(uuid, jsonb) to authenticated;
revoke select on public.questions from authenticated;

notify pgrst, 'reload schema';
