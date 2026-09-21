begin;

-- Cheatsheets used to be inserted with random IDs. The refreshed generators now
-- use deterministic IDs so updates replace existing cards instead of creating
-- duplicate revision sheets.

with stable_cheatsheets as (
  select
    document.id,
    document.topic_id,
    (
      substr(md5('studyspark:' || document.topic_id), 1, 8) || '-' ||
      substr(md5('studyspark:' || document.topic_id), 9, 4) || '-' ||
      substr(md5('studyspark:' || document.topic_id), 13, 4) || '-' ||
      substr(md5('studyspark:' || document.topic_id), 17, 4) || '-' ||
      substr(md5('studyspark:' || document.topic_id), 21, 12)
    )::uuid as stable_id
  from public.course_documents document
  where document.topic_id like 'cheat-%'
)
delete from public.course_documents duplicate
using stable_cheatsheets stable
where duplicate.topic_id = stable.topic_id
  and duplicate.id <> stable.stable_id
  and exists (
    select 1
    from public.course_documents keeper
    where keeper.id = stable.stable_id
  );

update public.course_documents document
set
  id = (
    substr(md5('studyspark:' || document.topic_id), 1, 8) || '-' ||
    substr(md5('studyspark:' || document.topic_id), 9, 4) || '-' ||
    substr(md5('studyspark:' || document.topic_id), 13, 4) || '-' ||
    substr(md5('studyspark:' || document.topic_id), 17, 4) || '-' ||
    substr(md5('studyspark:' || document.topic_id), 21, 12)
  )::uuid,
  content_kind = 'cheatsheet',
  doc_type = 'cheatsheet',
  updated_at = now()
where document.topic_id like 'cheat-%'
  and document.id <> (
    substr(md5('studyspark:' || document.topic_id), 1, 8) || '-' ||
    substr(md5('studyspark:' || document.topic_id), 9, 4) || '-' ||
    substr(md5('studyspark:' || document.topic_id), 13, 4) || '-' ||
    substr(md5('studyspark:' || document.topic_id), 17, 4) || '-' ||
    substr(md5('studyspark:' || document.topic_id), 21, 12)
  )::uuid
  and not exists (
    select 1
    from public.course_documents keeper
    where keeper.id = (
      substr(md5('studyspark:' || document.topic_id), 1, 8) || '-' ||
      substr(md5('studyspark:' || document.topic_id), 9, 4) || '-' ||
      substr(md5('studyspark:' || document.topic_id), 13, 4) || '-' ||
      substr(md5('studyspark:' || document.topic_id), 17, 4) || '-' ||
      substr(md5('studyspark:' || document.topic_id), 21, 12)
    )::uuid
  );

delete from public.course_documents duplicate
using public.course_documents keeper
where duplicate.ctid > keeper.ctid
  and duplicate.topic_id = keeper.topic_id
  and duplicate.content_kind = keeper.content_kind
  and duplicate.topic_id like 'cheat-%';

update public.course_documents
set
  content_kind = 'cheatsheet',
  doc_type = 'cheatsheet',
  updated_at = now()
where topic_id like 'cheat-%';

commit;
