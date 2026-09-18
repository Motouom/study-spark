-- Distinguish document types: past papers, structured courses, and revision cheatsheets.
alter table public.course_documents
  add column if not exists doc_type text not null default 'paper'
  check (doc_type in ('paper', 'course', 'cheatsheet'));

create index if not exists course_documents_doc_type_idx
on public.course_documents (doc_type, status, subject);
