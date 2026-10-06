-- Quarantine published papers whose bodies are duplicates of another paper.
--
-- A previous generated import produced multiple "SET 1/2/3/..." papers where
-- only the title changed while the questions stayed the same. Keeping one copy
-- avoids learner-facing duplicate papers while preserving an audit trail for
-- proper reviewed replacements.

begin;

with normalized_papers as (
  select
    id,
    title,
    md5(
      regexp_replace(
        regexp_replace(
          regexp_replace(
            regexp_replace(
              lower(coalesce(markdown_content, '')),
              'set\s+[0-9]+',
              'set n',
              'gi'
            ),
            's[ée]rie\s+[0-9]+',
            'serie n',
            'gi'
          ),
          'p([12])\s+set\s+n',
          'p\1 set n',
          'gi'
        ),
        '\s+',
        ' ',
        'g'
      )
    ) as normalized_hash
  from public.course_documents
  where status = 'published'
    and coalesce(content_kind, doc_type, 'paper') = 'paper'
),
ranked_duplicates as (
  select
    id,
    row_number() over (
      partition by normalized_hash
      order by
        -- Prefer a reviewed/older-looking Set 1 document as the retained copy.
        case when title ~* '(set|s[ée]rie)\s+1\b' then 0 else 1 end,
        title,
        id
    ) as duplicate_rank,
    count(*) over (partition by normalized_hash) as duplicate_count
  from normalized_papers
)
update public.course_documents document
set
  status = 'archived',
  review_status = 'changes_requested',
  updated_at = now(),
  change_note = trim(both ' ' from concat_ws(
    ' ',
    nullif(document.change_note, ''),
    '[2026-10-06] Archived automatically because this paper body duplicates another published paper. Replace with a reviewed unique paper before publishing again.'
  ))
from ranked_duplicates duplicate
where document.id = duplicate.id
  and duplicate.duplicate_count > 1
  and duplicate.duplicate_rank > 1;

notify pgrst, 'reload schema';

commit;
