# content and database plan

## product direction

StudySpark should store questions as structured records, not as downloadable exam files. Students register, choose their language, class, and series, then only receive questions that match that profile.

## admin upload recommendation

Use SQL as the source of truth, but do not ask admins to upload by writing SQL manually. Admins should use a controlled dashboard that supports manual entry and CSV or spreadsheet imports. The backend should validate each upload, create drafts, and require review before publication.

## core tables

- `users`: student and admin accounts.
- `student_profiles`: language, level, class, series, and selected subjects.
- `subjects`: canonical subject list.
- `topics`: subject-specific topic catalog.
- `questions`: prompt, type, difficulty, marks, explanation, status, and ownership metadata.
- `question_options`: answer choices for multiple-choice questions.
- `question_access_rules`: allowed classes and series for each question.
- `question_assets`: optional diagrams, audio, or images.
- `attempts`: one student practice session.
- `attempt_answers`: per-question answer and grading result.
- `audit_logs`: immutable admin actions.

## access rules

Question access must be enforced server-side. The frontend can hide locked content, but the API must only return questions where the student's profile matches the question's class, series, subject, language, and publication status.

## content protection

The app can reduce casual copying with disabled text selection, no download endpoints, one-question-at-a-time delivery, randomized order, watermarking, and app-switch detection in test mode. It cannot fully prevent someone from photographing the screen, so leaked content should be made less useful through personalization and limited exposure.

## content quality and sourcing

Content publication must follow [StudySpark Content Quality, Review, and Legal Sourcing Process](content-quality-sourcing.md).

Current implementation note: `course_documents` supports publish status and learner access protection, but source, permission, reviewer, and version metadata are not yet enforced as database columns. Until a metadata migration exists, reviewers must keep a controlled review register and avoid publishing content whose source and review status are unknown.
