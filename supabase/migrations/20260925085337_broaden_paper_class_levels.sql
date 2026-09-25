-- StudySpark: make English papers visible to all classes in their level.
-- The manifest's classLevel column is a label for the paper body; the intended
-- DB scoping (matching cheatsheets and courses) is all classes in the level:
--   ordinary -> form_3, form_4, form_5
--   advanced -> lower_sixth, upper_sixth
-- Series scoping from the manifest is preserved. French papers keep their
-- francophone class scoping (troisieme / premiere / terminale).
begin;

update public.course_documents
set class_levels = array['form_3', 'form_4', 'form_5']::text[],
    updated_at = now()
where doc_type = 'paper'
  and language = 'english'
  and level = 'ordinary';

update public.course_documents
set class_levels = array['lower_sixth', 'upper_sixth']::text[],
    updated_at = now()
where doc_type = 'paper'
  and language = 'english'
  and level = 'advanced';

commit;