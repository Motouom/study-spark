-- Quarantine papers that begin with the same questions.
--
-- Some generated papers are not exact duplicates over the whole document, but
-- they present the same opening questions under different set numbers. To a
-- learner, that is still duplicate paper content. Keep only one published copy
-- per subject/opening-question fingerprint until reviewed replacements exist.

begin;

with paper_openings as (
  select
    id,
    title,
    subject,
    md5(
      regexp_replace(
        regexp_replace(
          lower(
            substring(
              markdown_content
              from greatest(1, nullif(strpos(lower(markdown_content), 'section 1'), 0))
              for 950
            )
          ),
          'set\s+[0-9]+|s[ée]rie\s+[0-9]+',
          'set n',
          'gi'
        ),
        '\s+',
        ' ',
        'g'
      )
    ) as opening_hash
  from public.course_documents
  where status = 'published'
    and coalesce(content_kind, doc_type, 'paper') = 'paper'
),
ranked_openings as (
  select
    id,
    row_number() over (
      partition by subject, opening_hash
      order by
        case when title ~* '(set|s[ée]rie)\s+1\b' then 0 else 1 end,
        title,
        id
    ) as duplicate_rank,
    count(*) over (partition by subject, opening_hash) as duplicate_count
  from paper_openings
)
update public.course_documents document
set
  status = 'archived',
  review_status = 'changes_requested',
  updated_at = now(),
  change_note = trim(both ' ' from concat_ws(
    ' ',
    nullif(document.change_note, ''),
    '[2026-10-06] Archived automatically because this paper starts with the same questions as another published paper. Replace with a reviewed unique paper before publishing again.'
  ))
from ranked_openings duplicate
where document.id = duplicate.id
  and duplicate.duplicate_count > 1
  and duplicate.duplicate_rank > 1;

notify pgrst, 'reload schema';

commit;
