-- StudySpark: repair paper class_levels/series to match content/papers/manifest.csv.

-- The one-shot paper import (build-paper-import-sql.mjs) seeded the first 3 sets of

-- each subject with broad class levels/series. This restores the manifest's per-paper

-- classLevel and series so learners only see papers for their class and series.

begin;

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH MECHANICS P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PURE MATHEMATICS WITH STATISTICS P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ENGLISH LITERATURE P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL SPECIAL BILINGUAL EDUCATION FRENCH P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL RELIGIOUS STUDIES P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PHILOSOPHY P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CITIZENSHIP EDUCATION P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL CHEMISTRY P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL BIOLOGY P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HUMAN BIOLOGY P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science', 'a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science', 'a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science', 'a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science', 'a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science', 'a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL GEOLOGY P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science', 'a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL GEOGRAPHY P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL HISTORY P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL COMPUTER SCIENCE P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FOOD AND NUTRITION P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FOOD SCIENCE AND NUTRITION P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL LOGIC P2 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL AGRICULTURAL SCIENCE P2 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL MATHEMATICS P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ENGLISH LANGUAGE P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ADDITIONAL MATHEMATICS P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science', 'arts', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL FRENCH P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science', 'arts', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL BIOLOGY P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'science']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL CHEMISTRY P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['science', 'commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL ICT P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['science', 'commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL GEOGRAPHY P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['general', 'arts']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL HISTORY P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['general', 'arts']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 4'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 5'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 6'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 1'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 2'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['form_5']::text[],
    series = array['commercial', 'technical']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 3'
  and (class_levels is distinct from array['form_5']::text[] or series is distinct from array['commercial', 'technical']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 4'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 5'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 6'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 7'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 8'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_arts', 'a_commercial']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_arts', 'a_commercial']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

update public.course_documents
set class_levels = array['upper_sixth']::text[],
    series = array['a_science']::text[],
    updated_at = now()
where doc_type = 'paper'
  and title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 3'
  and (class_levels is distinct from array['upper_sixth']::text[] or series is distinct from array['a_science']::text[]);

commit;