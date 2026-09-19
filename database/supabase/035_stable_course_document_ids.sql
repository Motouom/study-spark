-- Keep seeded course document IDs stable across catalog refreshes.
-- Reading sessions, checkpoints, reflections, and protected-content events all
-- reference course_documents(id). Random IDs make refreshed course rows break
-- those foreign keys and show errors such as:
-- "paper_study_sessions_document_id_fkey".

begin;

alter table public.structural_question_progress
  drop constraint if exists structural_question_progress_document_id_fkey;
alter table public.structural_question_progress
  add constraint structural_question_progress_document_id_fkey
  foreign key (document_id) references public.course_documents(id)
  on update cascade on delete cascade;

alter table public.protected_content_events
  drop constraint if exists protected_content_events_document_id_fkey;
alter table public.protected_content_events
  add constraint protected_content_events_document_id_fkey
  foreign key (document_id) references public.course_documents(id)
  on update cascade on delete cascade;

alter table public.paper_study_sessions
  drop constraint if exists paper_study_sessions_document_id_fkey;
alter table public.paper_study_sessions
  add constraint paper_study_sessions_document_id_fkey
  foreign key (document_id) references public.course_documents(id)
  on update cascade on delete cascade;

alter table public.paper_study_checkpoints
  drop constraint if exists paper_study_checkpoints_document_id_fkey;
alter table public.paper_study_checkpoints
  add constraint paper_study_checkpoints_document_id_fkey
  foreign key (document_id) references public.course_documents(id)
  on update cascade on delete cascade;

alter table public.paper_study_reflections
  drop constraint if exists paper_study_reflections_document_id_fkey;
alter table public.paper_study_reflections
  add constraint paper_study_reflections_document_id_fkey
  foreign key (document_id) references public.course_documents(id)
  on update cascade on delete cascade;

with stable_ids as (
  select
    id as old_id,
    (
      substr(md5('studyspark:' || topic_id), 1, 8) || '-' ||
      substr(md5('studyspark:' || topic_id), 9, 4) || '-' ||
      substr(md5('studyspark:' || topic_id), 13, 4) || '-' ||
      substr(md5('studyspark:' || topic_id), 17, 4) || '-' ||
      substr(md5('studyspark:' || topic_id), 21, 12)
    )::uuid as stable_id
  from public.course_documents
  where content_kind = 'course'
    and topic_id like 'course-%'
)
update public.course_documents document
set id = stable.stable_id,
    updated_at = now()
from stable_ids stable
where document.id = stable.old_id
  and document.id <> stable.stable_id
  and not exists (
    select 1
    from public.course_documents existing
    where existing.id = stable.stable_id
      and existing.id <> document.id
  );

commit;
