-- Final duplicate-content quarantine for papers with any repeated long question
-- block.
--
-- Earlier cleanup removed exact duplicate papers, duplicate openings, generic
-- generated templates, level mismatches, and papers where most question blocks
-- were repeated. This stricter pass removes any remaining published paper that
-- still shares a long question block with another published paper, so learners
-- do not see repeated questions across different sets.

begin;

with published_papers as (
  select
    id,
    title,
    coalesce(markdown_content, '') as markdown_content
  from public.course_documents
  where status = 'published'
    and coalesce(content_kind, doc_type, 'paper') = 'paper'
),
question_blocks as (
  select
    paper.id,
    md5(regexp_replace(lower(block), '[[:space:]]+', ' ', 'g')) as block_hash,
    regexp_replace(lower(block), '[[:space:]]+', ' ', 'g') as body
  from published_papers paper
  cross join lateral regexp_split_to_table(paper.markdown_content, E'\\n---\\n') as block
  where block ~* 'q[0-9]+'
),
duplicated_blocks as (
  select block_hash
  from question_blocks
  where length(body) > 160
  group by block_hash
  having count(distinct id) > 1
),
quarantine_candidates as (
  select distinct block.id
  from question_blocks block
  join duplicated_blocks duplicate on duplicate.block_hash = block.block_hash
)
update public.course_documents document
set
  status = 'archived',
  review_status = 'changes_requested',
  updated_at = now(),
  change_note = trim(both ' ' from concat_ws(
    ' ',
    nullif(document.change_note, ''),
    '[2026-10-06] Archived automatically because at least one long question block duplicates another published paper. Replace with reviewed unique paper content before publishing again.'
  ))
from quarantine_candidates candidate
where document.id = candidate.id;

notify pgrst, 'reload schema';

commit;
