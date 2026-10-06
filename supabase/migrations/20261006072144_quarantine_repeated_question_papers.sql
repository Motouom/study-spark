-- Quarantine published papers with repeated question blocks or mismatched level
-- metadata.
--
-- This catches a wider class of generated content issues than whole-document
-- duplicate checks. Some papers are not identical from top to bottom, but most
-- of their question blocks are reused across other published papers, or their
-- title says Advanced Level while the body says Ordinary Level. Those should
-- not stay visible to learners until a reviewed replacement is available.

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
    md5(
      lower(
        regexp_replace(
          regexp_replace(
            block,
            '\s+',
            ' ',
            'g'
          ),
          '^\s*(\*\*)?q[0-9]+\.?\s*(\*\*)?\s*',
          '',
          'i'
        )
      )
    ) as block_hash,
    lower(
      regexp_replace(
        regexp_replace(
          block,
          '\s+',
          ' ',
          'g'
        ),
        '^\s*(\*\*)?q[0-9]+\.?\s*(\*\*)?\s*',
        '',
        'i'
      )
    ) as body
  from published_papers paper
  cross join lateral regexp_split_to_table(paper.markdown_content, E'\\n---\\n') as block
  where block ~* 'q[0-9]+'
),
repeated_block_hashes as (
  select block_hash
  from question_blocks
  where length(body) > 120
  group by block_hash
  having count(distinct id) > 1
),
paper_repeat_scores as (
  select
    block.id,
    count(*) filter (where length(block.body) > 120) as question_block_count,
    count(*) filter (where repeated.block_hash is not null) as repeated_question_block_count
  from question_blocks block
  left join repeated_block_hashes repeated on repeated.block_hash = block.block_hash
  group by block.id
),
quarantine_candidates as (
  select paper.id
  from published_papers paper
  left join paper_repeat_scores score on score.id = paper.id
  where
    paper.markdown_content ilike '%Read original passage%'
    or paper.markdown_content ilike '%Identify the central issue, concept, theme, argument, or language feature%'
    or paper.markdown_content ilike '%Write a developed response with clear paragraphs%'
    or paper.markdown_content ilike '%Evaluate the strength, limitation, moral lesson, historical significance%'
    or (paper.title ilike '%ADVANCED LEVEL%' and paper.markdown_content ilike '%# CAMEROON GCE ORDINARY LEVEL%')
    or (paper.title ilike '%ORDINARY LEVEL%' and paper.markdown_content ilike '%# CAMEROON GCE ADVANCED LEVEL%')
    or (
      score.question_block_count >= 5
      and (
        score.repeated_question_block_count::numeric
        / nullif(score.question_block_count, 0)
      ) >= 0.8
    )
)
update public.course_documents document
set
  status = 'archived',
  review_status = 'changes_requested',
  updated_at = now(),
  change_note = trim(both ' ' from concat_ws(
    ' ',
    nullif(document.change_note, ''),
    '[2026-10-06] Archived automatically because the paper has repeated question blocks, generic generated prompts, or contradictory level metadata. Replace with reviewed unique paper content before publishing again.'
  ))
from quarantine_candidates candidate
where document.id = candidate.id;

notify pgrst, 'reload schema';

commit;
