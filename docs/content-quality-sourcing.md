# StudySpark Content Quality, Review, and Legal Sourcing Process

This process defines how StudySpark sources, reviews, protects, corrects, and publishes educational content for Cameroon learners.

It is a product and operations control. It is not legal advice. When StudySpark uses third-party or official material, get written permission or a documented licensing basis before publication.

## Current Implementation Status

Already implemented:

- `course_documents.status` supports `draft`, `review`, `published`, and `archived`.
- `course_documents` already stores `language`, `level`, `class_levels`, `series`, `subject`, `title`, and protected Markdown content.
- Learners can read only authenticated, profile-matching, published documents through Supabase RLS and `list_allowed_course_documents()`.
- Admin/reviewer roles exist, with reviewers split from admin write permissions.
- Public SEO routes must not expose protected paper Markdown.

Not fully enforced yet:

- Source, permission, reviewer, review date, version, and correction history are not first-class `course_documents` columns yet.
- Current generated structural papers are original StudySpark drafts, but the existing `content/papers/manifest.csv` does not carry full source/reviewer/version metadata.
- Until schema support is added, track those fields in `content/papers/review-register.example.csv` or an equivalent controlled review register.

Do not hide these gaps during launch review. If a piece of content lacks required metadata, keep it in `draft` or `review`.

## Acceptable Content Sources

Use only sources that can be documented and reviewed.

| Source Type                              | Acceptable Use                                                                                                                   | Required Evidence                                                                     |
| ---------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| Original StudySpark-authored drafts      | Practice papers, explanations, courses, cheatsheets, examples, and AI-assisted drafts after human review.                        | Author, generation/review notes, reviewer, version, and date.                         |
| Licensed third-party content             | Past papers, corrections, diagrams, textbook excerpts, school mock papers, or uploaded material where StudySpark has permission. | Written permission, license file, contract, email approval, or contributor agreement. |
| Official/public-domain material          | Official laws, policy documents, curriculum outlines, or public notices when legally reusable.                                   | Source URL, access date, and reuse rationale.                                         |
| Short quotations for teaching/commentary | Brief cited excerpts only when justified by pedagogy, critique, or explanation.                                                  | Source citation, author/owner where known, and reviewer approval.                     |
| User-reported corrections                | Fixes to mistakes in existing StudySpark content.                                                                                | Report ID, reviewer decision, correction version, and changelog entry.                |

Do not publish:

- Scraped PDFs or copied past-question packs without permission.
- Paid app/library content copied from competitors.
- Teacher/school mock papers unless the school or author gives permission.
- Corrections copied from textbooks, marking guides, or websites without permission.
- Screenshots, diagrams, maps, or images without license or original creation proof.
- AI-generated content that has not been checked by a qualified human reviewer.

## Cameroon Legal Sourcing Notes

Cameroon copyright law protects original literary, scientific, technical, photographic, and similar works, and protects the expression of ideas rather than ideas themselves. WIPO Lex publishes Law No. 2000/011 of December 19, 2000 for Cameroon. The law also includes limited exceptions such as private use and short cited quotations for critical, pedagogical, scientific, or information purposes when source and author are mentioned where available.

Practical rule for StudySpark:

- Treat official exam papers, school mock papers, corrections, textbook extracts, diagrams, and third-party explanations as copyright-sensitive unless a reviewer documents otherwise.
- Store citation and permission evidence before publication.
- Prefer original StudySpark-created questions inspired by Cameroon GCE standards rather than copied papers.
- If using short excerpts, keep them short, cite the source, and ensure the excerpt is necessary for the teaching purpose.

References:

- WIPO Lex, Cameroon Law No. 2000/011 of December 19, 2000: https://www.wipo.int/wipolex/en/legislation/details/836
- WIPO Lex French text for the same law: https://www.wipo.int/wipolex/fr/legislation/details/836

## Required Metadata Before Publication

Every published paper, course, cheatsheet, and correction set must have a review-register row with these fields:

| Field                | Required                 | Notes                                                                                           |
| -------------------- | ------------------------ | ----------------------------------------------------------------------------------------------- |
| `content_id`         | Yes                      | Stable database ID, slug, or file path until DB metadata columns exist.                         |
| `title`              | Yes                      | User-facing title.                                                                              |
| `content_kind`       | Yes                      | `paper`, `course`, `cheatsheet`, or `textbook`.                                                 |
| `language`           | Yes                      | `english` or `french`.                                                                          |
| `curriculum_path`    | Yes                      | Examples: `gce_ordinary`, `gce_advanced`, `probatoire`, `baccalaureat`, `brevet`, `cap`, `bep`. |
| `exam`               | Yes                      | Specific exam level, such as `O Level`, `A Level`, `Probatoire`, `Baccalaureat`.                |
| `class_level`        | Yes                      | Examples: `form_5`, `upper_sixth`, `premiere`, `terminale`.                                     |
| `series`             | Yes                      | App series key or French pathway.                                                               |
| `subject`            | Yes                      | Canonical StudySpark subject name.                                                              |
| `year`               | Required when applicable | Use `original` for synthetic/original StudySpark sets with no exam year.                        |
| `source_type`        | Yes                      | `original`, `licensed`, `official_public`, `short_quote`, `user_correction`.                    |
| `source_reference`   | Yes                      | URL, file path, license ID, permission record, or author note.                                  |
| `permission_status`  | Yes                      | `owned`, `licensed`, `permission_pending`, `not_for_publish`, `short_quote_reviewed`.           |
| `review_status`      | Yes                      | `draft`, `subject_review`, `legal_review`, `approved`, `published`, `archived`.                 |
| `reviewer`           | Yes before publish       | Teacher/reviewer name or internal reviewer ID.                                                  |
| `review_date`        | Yes before publish       | ISO date.                                                                                       |
| `quality_checks`     | Yes before publish       | Checklist IDs passed.                                                                           |
| `version`            | Yes                      | Start at `1.0.0`; increment for corrections.                                                    |
| `supersedes_version` | Optional                 | Previous version if this is a correction.                                                       |
| `change_note`        | Required for corrections | Short explanation of what changed.                                                              |

## Safe Content Workflow

1. Create content as `draft`.
2. Add a review-register row before any learner-facing upload.
3. Confirm the source is acceptable and permission is documented.
4. Check metadata: language, curriculum path, subject, class/exam, series, year, content kind, and title.
5. Run subject review.
6. Run language review for French and bilingual content.
7. Run legal/source review for any third-party or official material.
8. Move status to `review`.
9. Import or update app content.
10. Verify unpublished/draft content is not visible to learners.
11. Publish only after the register row is `approved`.
12. Smoke test authenticated access and anonymous denial.

## Review Checklist

Use this checklist for each paper, course, and cheatsheet.

Metadata:

- Language matches the learner path.
- Curriculum path is correct for English or French system.
- Exam/class/series are correct.
- Subject name matches the StudySpark canonical subject list.
- Content kind is correct: cheatsheets are not uploaded as courses, and papers are not uploaded as textbooks.
- Year is recorded where applicable.

Source and legal:

- Source type is documented.
- Permission status is acceptable for publication.
- Third-party content has written permission or a documented license.
- Short quotations include source and author where known.
- No copied answer keys, diagrams, or textbook sections are included without permission.
- Public SEO pages do not expose protected content.

Academic quality:

- Questions match Cameroon exam standards and terminology.
- Mark allocations are realistic.
- Topic coverage is adequate for the class/exam.
- Questions are not duplicated within the same set.
- Mathematics, chemistry, physics, and formula-heavy content render correctly.
- French content uses correct accents, exam terms, and pathway labels.
- Corrections/explanations are checked by a qualified reviewer before launch.

Product quality:

- Markdown headings are consistent.
- Question labels use the app-standard `Q1`, `Q2`, `Q3` format.
- Diagrams/tables have text alternatives where possible.
- Protected watermark remains visible but does not block learning.
- Content works on mobile.

Access protection:

- Draft/review rows are not visible to learner accounts.
- Anonymous users cannot fetch protected Markdown.
- Search engines cannot index private learner routes.
- Sitemap includes only public pages.

## Correction and Versioning Process

Do not silently overwrite published content after users report mistakes.

Correction flow:

1. Record the user report with document ID, question/topic, screenshot if available, and reporter context.
2. Move the report to subject review.
3. Reviewer decides: `valid`, `invalid`, `needs_more_context`, or `legal_takedown`.
4. If valid, create a new content version.
5. Update the review register with `version`, `supersedes_version`, and `change_note`.
6. Publish the corrected version.
7. Keep the previous version traceable in Git history, SQL history, or the review register.
8. If the error affects learner progress or scoring, add a release note or support note.

Version rules:

- Patch version, such as `1.0.1`: typo, formatting, small explanation fix.
- Minor version, such as `1.1.0`: changed question wording, marks, answer path, or topic scope.
- Major version, such as `2.0.0`: replaced paper/course content or changed source/licensing basis.

## English and French Curriculum Paths

English path examples:

- GCE Ordinary Level: Form 3, Form 4, Form 5 preparation; O Level papers.
- GCE Advanced Level: Lower Sixth and Upper Sixth preparation; A Level papers.
- Series/track labels should match StudySpark profile keys where possible.

French path examples:

- Premier Cycle and Second Cycle content where StudySpark supports it.
- Probatoire and Baccalaureat content must use French exam labels, French subject names where appropriate, and the correct series/pathway.
- Bilingual content must state whether it is an English-system French subject, French-system subject, or bilingual bridge content.

Do not publish French-path material as English-path GCE content. If StudySpark has not implemented a curriculum path in the app yet, document it as planned content and keep learner-facing status as draft/review.

## Sample Review Records

See `content/papers/review-register.example.csv`.

The sample records intentionally include one English GCE paper and one French-path paper so reviewers can walk through both systems. The French-path row may remain `draft` or `review` until the app fully supports the matching curriculum path.

## Future Database Enforcement

When this process moves from documentation to app enforcement, add a migration that introduces either:

- metadata columns on `course_documents`, or
- a `content_review_records` table linked to documents.

Recommended fields:

- `source_type`
- `source_reference`
- `permission_status`
- `review_status`
- `reviewed_by`
- `reviewed_at`
- `curriculum_path`
- `exam`
- `content_year`
- `content_version`
- `supersedes_document_id`
- `change_note`

The publish RPC should reject `published` unless the content has approved metadata. Until then, reviewers must use the documented review register.
