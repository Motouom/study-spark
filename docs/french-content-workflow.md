# French Content Workflow

StudySpark supports francophone Cameroon content through the same protected content system used for GCE papers. French content must be added through metadata, not hard-coded routes.

## Required Metadata

Every French paper, course, textbook chapter, or cheatsheet needs:

- `language`: `french`
- `subject`: one of the francophone subject names, for example `Mathématiques`, `Physique-Chimie`, `Français`, or `Histoire-Géographie`
- `level`: `ordinary` for Collège or `advanced` for Lycée
- `class_levels`: `sixieme`, `cinquieme`, `quatrieme`, `troisieme`, `seconde`, `premiere`, or `terminale`
- `series`: `tronc_commun` for Collège, or the Lycée filières such as `a4`, `c`, `d`, `e`, `ti`, `acc`, `cg`, `fig`, or `ses`
- `content_kind`: `paper`, `course`, `textbook`, or `cheatsheet`
- `status`: `draft`, `review`, `published`, or `archived`
- `markdown_content`: formatted protected Markdown content

Until dedicated `exam` and `year` columns exist, include the exam and year/session in the title:

```text
BACCALAURÉAT D — MATHÉMATIQUES — ANALYSE ET DÉRIVATION — 2026
PROBATOIRE C — PHYSIQUE-CHIMIE — ÉLECTRICITÉ — SESSION 2025
BEPC — FRANÇAIS — COMPRÉHENSION DE TEXTE — 2026
```

## Admin Publishing Steps

1. Open the relevant admin content screen: papers, courses, textbooks, or cheatsheets.
2. Choose `Français` as the language before selecting subject, class, or series.
3. Select only francophone classes and filières. The admin form should narrow these options automatically.
4. Use a title that names the exam, subject, topic, and year/session.
5. Paste or upload Markdown content.
6. Preview by saving to a non-production environment where possible.
7. Verify with a learner profile that matches the same language, class, series, and subject.
8. Publish only after the content source and review checklist are complete.

## Learner Visibility Rules

French protected content is visible only when all of these match the learner profile:

- learner language is `french`
- learner class is included in the document `class_levels`
- learner series is included in the document `series`
- learner selected subjects include the document subject
- document status is `published`

This means an English GCE learner will not see French Baccalauréat content, and a Terminale D learner will not see unrelated GCE papers.

## Mobile Display Expectations

French titles can be long. Paper cards must:

- wrap long words and accented titles cleanly
- show enough metadata to distinguish BEPC, Probatoire, and Baccalauréat content
- avoid horizontal scrolling at 360px width
- keep protected-content messaging consistent with English papers

## Seed Strategy

The launch seed should include at least one reviewed paper for each priority French exam path:

- BEPC: Troisième, Tronc Commun
- Probatoire: Première, priority filières A4, C, D, TI
- Baccalauréat: Terminale, priority filières A4, C, D, TI

Migration `048_french_content_workflow_sample.sql` adds a sample Terminale Baccalauréat Mathematics paper for testing the full protected workflow.

## What This Does Not Solve Yet

This workflow does not create official licensed content by itself. Each published paper still needs a trusted source, review status, and permission/licensing decision from the content quality process.
