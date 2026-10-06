-- Quarantine generated placeholder papers that should never have been
-- published as learner-facing exam papers.
--
-- The generated coverage imports created many documents from repeated
-- templates, including placeholder MCQs ("Sample question", "Option A") and
-- repeated structural stems. Do not delete them here: archiving keeps an audit
-- trail and lets reviewed replacements reuse the same titles later.

begin;

with low_quality_papers as (
  select id
  from public.course_documents
  where status = 'published'
    and coalesce(content_kind, doc_type, 'paper') = 'paper'
    and (
      markdown_content ilike '%Sample question%'
      or markdown_content ilike '%A. Option A%'
      or markdown_content ilike '%B. Option B%'
      or markdown_content ilike '%C. Option C%'
      or markdown_content ilike '%D. Option D%'
      or markdown_content ilike '%detailed examination question covering%'
      or markdown_content ilike '%records readings % in suitable SI units%'
      or markdown_content ilike '%A business records transactions involving cash credit sales purchases returns and depreciation%'
      or markdown_content ilike '%community case involves rights duties elections public property conflict and peaceful participation%'
      or markdown_content ilike '%enterprise case must decide on ownership finance staffing production marketing and ethics%'
      or markdown_content ilike '%trader case in Douala buys on credit stores goods transports them inland%'
      or markdown_content ilike '%school system with learner records must process%'
      or markdown_content ilike '%read original passage a learner writes to a school authority about discipline study habits%'
      or markdown_content ilike '%biological investigation on % compares sample A with sample B%'
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
    '[2026-10-06] Archived automatically because the paper was generated from placeholder or repeated-question templates and must be replaced by reviewed exam content.'
  ))
from low_quality_papers
where document.id = low_quality_papers.id;

notify pgrst, 'reload schema';

commit;
