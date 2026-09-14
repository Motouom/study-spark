-- Retire the old MCQ/quiz API from the learner product.
-- Structural papers now power learner practice and progress.

delete from public.questions;

revoke select, insert, update, delete on public.questions from anon, authenticated;
revoke select, insert, update, delete on public.practice_attempts from anon, authenticated;

revoke all on function public.list_allowed_questions() from public;
revoke all on function public.list_allowed_questions() from anon;
revoke all on function public.list_allowed_questions() from authenticated;

revoke all on function public.grade_question_answer(uuid, jsonb) from public;
revoke all on function public.grade_question_answer(uuid, jsonb) from anon;
revoke all on function public.grade_question_answer(uuid, jsonb) from authenticated;

revoke all on function public.admin_list_questions(text) from public;
revoke all on function public.admin_list_questions(text) from anon;
revoke all on function public.admin_list_questions(text) from authenticated;

notify pgrst, 'reload schema';
