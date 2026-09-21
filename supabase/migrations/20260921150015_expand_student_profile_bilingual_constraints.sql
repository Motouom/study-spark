-- Keep production student profile constraints aligned with the bilingual profile UI.
-- The original schema only accepted anglophone GCE class levels and series, which
-- rejects francophone learners during onboarding/settings saves.

alter table public.student_profiles
  drop constraint if exists student_profiles_language_check,
  drop constraint if exists student_profiles_education_system_check,
  drop constraint if exists student_profiles_level_check,
  drop constraint if exists student_profiles_class_level_check,
  drop constraint if exists student_profiles_series_check;

alter table public.student_profiles
  add constraint student_profiles_language_check
    check (language in ('english', 'french')),
  add constraint student_profiles_education_system_check
    check (education_system in ('gce', 'francophone')),
  add constraint student_profiles_level_check
    check (level in ('ordinary', 'advanced')),
  add constraint student_profiles_class_level_check
    check (
      class_level in (
        'form_3',
        'form_4',
        'form_5',
        'lower_sixth',
        'upper_sixth',
        'sixieme',
        'cinquieme',
        'quatrieme',
        'troisieme',
        'seconde',
        'premiere',
        'terminale'
      )
    ),
  add constraint student_profiles_series_check
    check (
      series in (
        'general',
        'science',
        'arts',
        'commercial',
        'technical',
        'a_science',
        'a_arts',
        'a_commercial',
        'tronc_commun',
        'a1',
        'a2',
        'a4',
        'abi',
        'c',
        'd',
        'e',
        'ti',
        'acc',
        'cg',
        'fig',
        'ses'
      )
    );
