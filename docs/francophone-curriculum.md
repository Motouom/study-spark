# StudySpark Francophone Curriculum Model

This document records the first-class Cameroon francophone curriculum model used by StudySpark.
It supports issue #19 and prevents francophone learners from being forced into the anglophone GCE
shape.

## Curriculum Paths

StudySpark currently supports two curriculum paths:

- `gce`: Anglophone GCE path for Form 3, Form 4, Form 5, Lower Sixth, and Upper Sixth.
- `francophone`: Francophone path for Collège and Lycée learners.

The selected path is stored on `student_profiles.education_system` and is used with language,
class level, series, and selected subjects to filter learner content.

## Francophone Levels, Classes, and Exams

Francophone classes are represented independently from GCE classes:

| App ID | Display Label | Cycle | Exam Context |
| --- | --- | --- | --- |
| `sixieme` | Sixième | Collège | School assessment |
| `cinquieme` | Cinquième | Collège | School assessment |
| `quatrieme` | Quatrième | Collège | School assessment |
| `troisieme` | Troisième | Collège | BEPC |
| `seconde` | Seconde | Lycée | School assessment |
| `premiere` | Première | Lycée | Probatoire |
| `terminale` | Terminale | Lycée | Baccalauréat |

In app code, `ordinary` means Collège for francophone learners and `advanced` means Lycée. This is
only an internal compatibility layer so existing filters can continue to work with the shared
`level` column.

## Francophone Series

Supported francophone series are:

- `tronc_commun`: Collège common curriculum for BEPC preparation.
- `a1`, `a2`, `a4`, `abi`: Lycée literary/bilingual tracks.
- `c`, `d`, `e`, `ti`: Lycée scientific and technical tracks.
- `acc`, `cg`, `fig`, `ses`: STT commercial, accounting, fiscal/informatics, and economics tracks.

These are intentionally separate from GCE series such as `science`, `arts`, `commercial`,
`a_science`, and `a_commercial`.

## Subject Filtering

Subject lists are path-aware:

- GCE series resolve only to anglophone/GCE subjects.
- Francophone series resolve only to francophone subjects.
- The combined lookup must not let empty placeholder keys from one path overwrite real subjects in
  the other path.

Learner content access still requires a match on:

- profile language
- profile class level
- profile series
- selected subjects
- document/question publication status

## Database Migration Path

The production-safe migration path is:

1. `045_add_education_system.sql` adds `student_profiles.education_system`, backfills existing
   learners, and updates `update_student_profile`.
2. `047_expand_student_profile_bilingual_constraints.sql` expands profile check constraints to
   include francophone classes and series.
3. Existing anglophone users remain valid because their existing language, class, series, and
   subject values are still accepted.

For Supabase CLI-managed environments, the matching timestamped migrations live in
`supabase/migrations/`.

## Open Content Questions

This ticket models the curriculum structure. It does not claim full official content coverage for
every francophone subject yet.

Before publishing large volumes of francophone papers or corrections, validate:

- official series names and subject weighting with the Cameroon OBC/MINESEC source used by the
  content team;
- whether regional school-level assessments need additional labels beyond "School assessment";
- content licensing and review status for BEPC, Probatoire, and Baccalauréat material.
