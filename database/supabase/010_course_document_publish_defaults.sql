-- Make Markdown course documents publish-first and broadly visible by subject.
-- Learner access is still protected by authentication, profile existence, language, and selected subjects.

alter table public.course_documents
alter column status set default 'published';

update public.course_documents
set
  status = 'published',
  class_levels = array['form_3', 'form_4', 'form_5', 'lower_sixth', 'upper_sixth'],
  series = array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical'],
  updated_at = now()
where status <> 'archived';
