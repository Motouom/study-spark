# StudySpark Content Publishing Workflow

This workflow keeps StudySpark content aligned with the learner experience. Admins publish the same protected papers, courses, and cheatsheets that learners open in the app, so every item must be reviewed as it will appear to students.

## Content States

- `draft`: work in progress and not visible to learners.
- `review`: ready for metadata, formatting, academic, and rights review.
- `published`: visible to matching learners through the protected content routes.
- `unpublished`: intentionally removed from learner access but kept for audit/history.
- `archived`: retired content that should not return without a new review.

Only `published` content can appear in learner catalogs. Draft, review, unpublished, and archived items stay out of learner views.

## Required Metadata Before Publishing

Every published item must have:

- Language and curriculum path: English GCE, French francophone, or other.
- Exam or programme: for example GCE O Level, GCE A Level, Probatoire, Baccalaureat.
- Class level, series, subject, and title.
- Year or syllabus version.
- Source type and source reference.
- Permission status marked approved, licensed, or public domain.
- Review status marked approved.
- Content version and change note when updating an existing item.

## Admin Flow

1. Create or edit the content as a draft.
2. Add class, subject, series, language, curriculum path, and exam metadata.
3. Add source and permission details.
4. Use the learner preview before publishing. This preview uses the same protected markdown renderer learners see, including math, chemistry, question labels, and topic controls.
5. Send to review when the content is ready for checking.
6. Mark review status approved only after academic quality, formatting, metadata, and sourcing are checked.
7. Publish only after the item passes validation.
8. Unpublish instead of deleting when content is wrong but should remain auditable.
9. Archive only when the item is retired.

## Learner Reports

Learners can report a content issue from the document screen. Reports include the document, optional question number or topic, issue type, and learner message.

Admins should:

1. Mark a report as reviewing when investigation starts.
2. Correct the affected content as a new reviewed version.
3. Resolve the report with an admin note once the correction is published or rejected.
4. Unpublish content immediately if the issue is serious, unsafe, legally sensitive, or badly misleading.

## What Was Intentionally Not Reintroduced

The removed bulky question-progress panel is not part of this workflow. Question outcomes and topic understanding remain embedded beside the content itself so learner screens do not become long administrative forms.

## Verification

Before merging content workflow changes:

- Test draft to review to published.
- Test unpublish and archive.
- Test missing metadata validation.
- Test learner issue report submission.
- Test admin report review and resolve.
- Run `npm run build`.
