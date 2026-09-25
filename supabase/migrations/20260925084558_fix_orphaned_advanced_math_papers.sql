-- StudySpark: scope the two orphaned advanced "Mathematics" papers to upper_sixth / a_science.
-- These papers are not in content/papers/manifest.csv (no source file), so the manifest-based
-- repair could not scope them. They are advanced-level papers and must not be visible to
-- ordinary-level learners or non-science series.
begin;

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and subject = 'Mathematics'
  and level = 'advanced'
  and title in (
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 1',
    'CAMEROON GCE ADVANCED LEVEL MATHEMATICS P2 SET 2'
  );

commit;