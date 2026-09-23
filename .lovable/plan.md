# Free preview in every study section

## Goal
Free learners can open a real sample before upgrading: one complete item for each matching subject in Papers, Courses, and Revision Sheets.

## Changes
- Replace the full-page Premium block on Courses and Revision Sheets with the normal content lists for free learners.
- Keep one item per subject and section open and clearly marked Free; keep remaining items visibly locked with an upgrade action.
- Add a database migration that ranks access separately by subject and content type, so the first matching paper, course, or revision sheet is returned with full content.
- Keep Premium learners’ access unchanged.
- Verify a free learner can open the free item in each available section and cannot open the locked items.

## Technical details
- Update both full-content and metadata access functions so their lock status is identical.
- Update the direct document access policy to use the same per-subject, per-content-type rule.
- Preserve existing profile matching by language, class, series, and selected subjects.
