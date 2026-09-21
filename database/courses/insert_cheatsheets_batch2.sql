begin;

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-econ-basic-concepts', 'Economics', 'Basic Economic Concepts Cheatsheet', 'Quick revision cheatsheet: Basic concepts.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-econ-demand-and-supply', 'Economics', 'Demand & Supply Cheatsheet', 'Quick revision cheatsheet: Demand and supply.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-econ-elasticity', 'Economics', 'Elasticity Cheatsheet', 'Quick revision cheatsheet: Elasticity.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-econ-production-and-money', 'Economics', 'Production & Money Cheatsheet', 'Quick revision cheatsheet: Production and money.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-econ-trade', 'Economics', 'Trade Cheatsheet', 'Quick revision cheatsheet: Trade.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-comm-home-trade', 'Commerce', 'Home Trade Cheatsheet', 'Quick revision cheatsheet: Home trade.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-comm-business-units', 'Commerce', 'Business Units Cheatsheet', 'Quick revision cheatsheet: Business units.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-comm-aids-to-trade', 'Commerce', 'Aids to Trade Cheatsheet', 'Quick revision cheatsheet: Aids to trade.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-comm-business-documents', 'Commerce', 'Business Documents Cheatsheet', 'Quick revision cheatsheet: Business documents.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-cs-data-representation', 'Computer Science', 'Data Representation Cheatsheet', 'Quick revision cheatsheet: Data representation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-cs-programming-and-algorithms', 'Computer Science', 'Programming Cheatsheet', 'Quick revision cheatsheet: Programming and algorithms.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-cs-databases', 'Computer Science', 'Databases Cheatsheet', 'Quick revision cheatsheet: Databases.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-cs-networks-and-internet', 'Computer Science', 'Networks & Internet Cheatsheet', 'Quick revision cheatsheet: Networks and internet.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ict-office-applications', 'ICT', 'Office Applications Cheatsheet', 'Quick revision cheatsheet: Office applications.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-ict-internet-and-safety', 'ICT', 'Internet & Safety Cheatsheet', 'Quick revision cheatsheet: Internet and safety.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-fr-grammaire', 'French', 'Grammaire Cheatsheet', 'Quick revision cheatsheet: Grammaire.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-fr-conjugaison', 'French', 'Conjugaison Cheatsheet', 'Quick revision cheatsheet: Conjugaison.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-fr-compr-hension-et-composition', 'French', 'Compréhension & Composition Cheatsheet', 'Quick revision cheatsheet: Compréhension et composition.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-hist-cameroon-before-1884', 'History', 'Cameroon Before 1884 Cheatsheet', 'Quick revision cheatsheet: Cameroon before 1884.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-hist-colonial-rule', 'History', 'Colonial Rule Cheatsheet', 'Quick revision cheatsheet: Colonial rule.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-hist-independence-and-reunification', 'History', 'Independence & Reunification Cheatsheet', 'Quick revision cheatsheet: Independence and reunification.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-hist-african-nationalism', 'History', 'African Nationalism Cheatsheet', 'Quick revision cheatsheet: African nationalism.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-hist-world-wars', 'History', 'World Wars Cheatsheet', 'Quick revision cheatsheet: World wars.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-geo-landforms', 'Geography', 'Landforms Cheatsheet', 'Quick revision cheatsheet: Landforms.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-geo-climate', 'Geography', 'Climate Cheatsheet', 'Quick revision cheatsheet: Climate.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-geo-population-and-settlement', 'Geography', 'Population Cheatsheet', 'Quick revision cheatsheet: Population and settlement.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-geo-economic-activities', 'Geography', 'Economic Activities Cheatsheet', 'Quick revision cheatsheet: Economic activities.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-geo-map-work', 'Geography', 'Map Work Cheatsheet', 'Quick revision cheatsheet: Map work.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-civ-rights-and-duties', 'Citizenship Education', 'Rights & Duties Cheatsheet', 'Quick revision cheatsheet: Rights and duties.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-civ-state-institutions', 'Citizenship Education', 'State Institutions Cheatsheet', 'Quick revision cheatsheet: State institutions.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-rel-old-testament', 'Religious Studies', 'Old Testament Cheatsheet', 'Quick revision cheatsheet: Old testament.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-rel-new-testament', 'Religious Studies', 'New Testament Cheatsheet', 'Quick revision cheatsheet: New testament.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-rel-christian-life-today', 'Religious Studies', 'Christian Life Cheatsheet', 'Quick revision cheatsheet: Christian life today.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-log-syllogisms', 'Logic', 'Syllogisms Cheatsheet', 'Quick revision cheatsheet: Syllogisms.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-log-fallacies', 'Logic', 'Fallacies Cheatsheet', 'Quick revision cheatsheet: Fallacies.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-agr-soils', 'Agricultural Science', 'Soils Cheatsheet', 'Quick revision cheatsheet: Soils.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-agr-crop-production', 'Agricultural Science', 'Crop Production Cheatsheet', 'Quick revision cheatsheet: Crop production.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-agr-animal-production', 'Agricultural Science', 'Animal Production Cheatsheet', 'Quick revision cheatsheet: Animal production.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-hbio-body-systems', 'Human Biology', 'Body Systems Cheatsheet', 'Quick revision cheatsheet: Body systems.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-hbio-blood-and-circulation', 'Human Biology', 'Blood & Circulation Cheatsheet', 'Quick revision cheatsheet: Blood and circulation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-hbio-reproduction-and-health', 'Human Biology', 'Reproduction & Health Cheatsheet', 'Quick revision cheatsheet: Reproduction and health.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-amath-factor-theorem', 'Additional Mathematics', 'Factor Theorem Cheatsheet', 'Quick revision cheatsheet: Factor theorem.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-amath-differentiation', 'Additional Mathematics', 'Differentiation Cheatsheet', 'Quick revision cheatsheet: Differentiation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-amath-integration', 'Additional Mathematics', 'Integration Cheatsheet', 'Quick revision cheatsheet: Integration.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-fnut-nutrients', 'Food and Nutrition', 'Nutrients Cheatsheet', 'Quick revision cheatsheet: Nutrients.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-fnut-meal-planning', 'Food and Nutrition', 'Meal Planning Cheatsheet', 'Quick revision cheatsheet: Meal planning.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-fnut-preservation-and-hygiene', 'Food and Nutrition', 'Preservation & Hygiene Cheatsheet', 'Quick revision cheatsheet: Preservation and hygiene.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-lit-literary-terms', 'English Literature', 'Literary Terms Cheatsheet', 'Quick revision cheatsheet: Literary terms.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-lit-prose-and-drama', 'English Literature', 'Prose & Drama Cheatsheet', 'Quick revision cheatsheet: Prose and drama.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-acct-double-entry', 'Accounting', 'Double Entry Cheatsheet', 'Quick revision cheatsheet: Double entry.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-acct-final-accounts', 'Accounting', 'Final Accounts Cheatsheet', 'Quick revision cheatsheet: Final accounts.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-acct-control-and-reconciliation', 'Accounting', 'Control Accounts Cheatsheet', 'Quick revision cheatsheet: Control and reconciliation.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-biz-business-types', 'Business Studies', 'Business Types Cheatsheet', 'Quick revision cheatsheet: Business types.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-biz-marketing', 'Business Studies', 'Marketing Cheatsheet', 'Quick revision cheatsheet: Marketing.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-biz-finance', 'Business Studies', 'Business Finance Cheatsheet', 'Quick revision cheatsheet: Finance.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-geol-minerals-and-rocks', 'Geology', 'Minerals & Rocks Cheatsheet', 'Quick revision cheatsheet: Minerals and rocks.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-geol-volcanism-and-hazards', 'Geology', 'Volcanism Cheatsheet', 'Quick revision cheatsheet: Volcanism and hazards.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('cheat-geol-economic-geology', 'Geology', 'Economic Geology Cheatsheet', 'Quick revision cheatsheet: Economic geology.', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 0, 15)
on conflict (id) do update set title = excluded.title, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a03fc713-36b9-cd2b-adf3-ccdb25723ecd'::uuid, 'cheat-econ-basic-concepts', 'Economics', 'Basic Economic Concepts Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Basic Economic Concepts Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Basic concepts** in Economics. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

CORE IDEAS
Scarcity: resources limited, wants unlimited → choice is forced.
Opportunity cost = next best alternative given up.
Factors of production + rewards: land→rent, labour→wages, capital→interest, enterprise→profit.

ECONOMIC SYSTEMS
Free market: prices decide. Command: state decides. Mixed: both (Cameroon = mixed: Camwater state-owned; MTN private).

EXAM TRAPS
Define opportunity cost with an EXAMPLE (student: phone vs laptop fund).
"State" = one line. "Explain" = reason + development.

PRACTICE
1) Define opportunity cost + student example. [3]
2) Name the four factors of production and rewards. [4]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('0692c517-a44d-c84e-4cf5-0fd5d3658a3c'::uuid, 'cheat-econ-demand-and-supply', 'Economics', 'Demand & Supply Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Demand & Supply Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Demand and supply** in Economics. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

DEMAND
Willing AND able to buy at each price. Law: price ↑ → quantity ↓.
Shift factors (curve MOVES): income, substitutes (beef/chicken), complements (cars/fuel), tastes, population.
Price change = movement ALONG the curve only.

SUPPLY
Law: price ↑ → quantity supplied ↑.
Shifts: costs, technology, taxes/subsidies, weather (cocoa harvests), number of firms.

EQUILIBRIUM
D = S. Surplus (price too high) → price falls. Shortage → price rises.
ALWAYS draw labelled diagram: axes (P, Q), curves (D, S), point E.

PRACTICE
1) Fuel price rises → transport supply shifts left → fares? [rise, trips fall]
2) Two causes of a demand shift. [income, substitute price]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('62521417-05fc-279d-ebe3-6c1a608b1fe6'::uuid, 'cheat-econ-elasticity', 'Economics', 'Elasticity Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Elasticity Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Elasticity** in Economics. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

FORMULA
PED = %ΔQ demanded ÷ %ΔP.
Elastic >1: luxuries, substitutes exist → price rise cuts revenue.
Inelastic <1: necessities, no substitutes (salt, fuel) → price rise raises revenue.

DETERMINANTS
Substitutes, necessity, % of income, time.

APPLICATIONS (exam gold)
Government taxes fuel/cigarettes: inelastic → stable revenue.
Bumper harvest can LOWER farm income: food inelastic → prices crash.

PRACTICE
1) 10% price rise, 4% demand fall: PED? [0.4 → inelastic]
2) Why tax cigarettes? [inelastic demand → reliable revenue + discourages use]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('d118331f-17bc-1e86-dba7-345423a6454d'::uuid, 'cheat-econ-production-and-money', 'Economics', 'Production & Money Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Production & Money Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Production and money** in Economics. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

PRODUCTION
Primary (farming, mining) → secondary (manufacturing) → tertiary (services).
Cameroon: primary-heavy. Division of labour ↑ productivity.
Costs: fixed (rent) + variable (materials). Profit = revenue − total cost.
Economies of scale: bulk buying, machines, marketing spread.

MONEY
Functions: medium of exchange, unit of account, store of value, deferred payment.
Barter problems: double coincidence of wants.
Central bank (BEAC): issues CFA franc, controls money supply, banker to government.
Commercial banks: deposits, loans, credit creation.

PRACTICE
1) Four functions of money. [4]
2) Two economies of scale for a large brewery. [bulk buying, specialised machines]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('8915cd28-4034-04ec-0c41-2e4256aac6c5'::uuid, 'cheat-econ-trade', 'Economics', 'Trade Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Trade Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Trade** in Economics. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

KEY TERMS
Visible trade = goods. Invisible = services.
Balance of trade = exports − imports (goods).
Balance of payments = BoT + services + capital flows.
Cameroon exports: cocoa, coffee, bananas, timber, cotton, crude oil.
Imports: machinery, refined fuel, wheat, manufactures.

PROTECTION
Tariffs, quotas → protect infant industries/jobs BUT raise prices, invite retaliation.
Integration: CEMAC, CFA franc zone.

PRACTICE
1) BoT vs BoP. [goods only vs goods+services+capital]
2) 2 visible + 2 invisible Cameroonian exports. [cocoa, oil / banking, transport]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('d7dc95fe-fb7b-668a-dce4-c2e73526e12e'::uuid, 'cheat-comm-home-trade', 'Commerce', 'Home Trade Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Home Trade Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Home trade** in Commerce. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

RETAILERS (sell to consumers)
Small: hawkers, market stalls, kiosks. Large: supermarkets, department stores, online.

WHOLESALER SERVICES (exam favourite — learn 4!)
To retailer: breaking bulk, storage, credit, transport, product information.
To producer: bulk buying, storage, distribution, market information.

CHANNEL
Producer → wholesaler → retailer → consumer.

PRACTICE
1) Four services of a wholesaler to a retailer. [4]
2) Why do small kiosks survive despite supermarkets? [convenience, credit, location]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6789876b-af0b-9f1d-c939-2abef89c14d8'::uuid, 'cheat-comm-business-units', 'Commerce', 'Business Units Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Business Units Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Business units** in Commerce. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

FORMS OF OWNERSHIP
Sole trader: 1 owner, unlimited liability, quick decisions, limited capital.
Partnership: 2–20, more capital/skills, disagreement risk.
Private Ltd: limited liability, shares private. Public Ltd: shares public, huge capital.
Co-operative: members pool resources (cocoa co-ops). Public corporation: state-owned (Camwater, CDC).

CHOICE FACTORS
Capital needed, liability, control, continuity, cost of formation.

PRACTICE
1) 2 advantages + 2 disadvantages of sole trader. [4]
2) Two benefits of a cocoa co-operative. [better prices, shared transport]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('cfcd7eee-ca7e-31cd-306c-9932d0437945'::uuid, 'cheat-comm-aids-to-trade', 'Commerce', 'Aids to Trade Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Aids to Trade Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Aids to trade** in Commerce. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

TRANSPORT
Road (flexible, door-to-door), rail (bulk, cheap), water (cheapest bulk — Douala/Kribi ports), air (fastest, dearest), pipeline (oil).
Warehousing: bonded = hold imports until duty paid.

INSURANCE
Many pay premiums, few compensated. Principles: insurable interest, indemnity (restore not enrich), good faith.
Life assurance ≠ indemnity. Insurable: fire, theft, motor. Not: bad management.

BANKING & PAYMENT
Current/savings accounts, loans, overdrafts.
Mobile money (MTN MoMo, Orange Money): instant payment, no bank branch needed.

ADVERTISING
Radio = widest reach in Cameroon. Informs + persuades; costly, can mislead.

PRACTICE
1) Why ship timber by sea not air? [bulk + cost]
2) Principle of indemnity + example. [compensation restores, never exceeds, the loss]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('c6a44cab-f8d9-8303-7426-715a39d7bf84'::uuid, 'cheat-comm-business-documents', 'Commerce', 'Business Documents Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Business Documents Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Business documents** in Commerce. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

THE ORDER (memorise!)
1) Enquiry → 2) Quotation → 3) Order → 4) Delivery note → 5) Invoice → 6) Statement → 7) Receipt.
Returns: credit note (seller owes buyer). Undercharge: debit note.

INTERNATIONAL
Indent (order via agent), bill of lading (title to shipped goods), certificate of origin, letter of credit.
FOB = free on board. CIF = cost + insurance + freight.

PRACTICE
1) Arrange: invoice, order, quotation, delivery note, receipt. [quotation→order→delivery note→invoice→receipt]
2) Purpose of a bill of lading. [document of title to goods shipped]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e9ebf9fe-a223-4b20-4493-4bdcac31ddf7'::uuid, 'cheat-cs-data-representation', 'Computer Science', 'Data Representation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Data Representation Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Data representation** in Computer Science. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

BINARY
8 bits = 1 byte; 1024 B = 1 KB; 1024 KB = 1 MB.
Denary→binary: divide by 2, read remainders up. 13 = 1101.
Hex: 1101 = D; used for colours (#FF0000 red), memory addresses.

CHARACTERS
ASCII: 7/8 bits, English. Unicode: all languages (accents é è).

IMAGES & SOUND
Bitmap: pixels; more bits/pixel = more colours = bigger file.
Sound: sample rate (Hz); higher = better quality = bigger file.

LOGIC GATES
AND: 1 only if both 1. OR: 1 if any 1. NOT: inverts.
Truth tables: list ALL input combinations.

PRACTICE
1) 45 in binary + hex. [101101, 2D]
2) AND gate truth table. [00→0, 01→0, 10→0, 11→1]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('f6804951-32d2-b398-9e5c-194d2b9041a1'::uuid, 'cheat-cs-programming-and-algorithms', 'Computer Science', 'Programming Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Programming Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Programming and algorithms** in Computer Science. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

ALGORITHM
Step-by-step solution. Flowchart: oval=start/stop, parallelogram=I/O, rectangle=process, diamond=decision.

PSEUDOCODE ESSENTIALS
SET, OUTPUT, INPUT, IF…THEN…ELSE, FOR i FROM a TO b, WHILE condition.
Arrays: indexed from 0.

LARGEST OF 10 (learn this pattern)
SET largest TO num[1]
FOR i FROM 2 TO 10
  IF num[i] > largest THEN SET largest TO num[i]
OUTPUT largest

ERRORS
Syntax: breaks grammar → won''t run. Logic: runs, wrong answer. Runtime: crash (÷0).
Testing: normal, boundary, erroneous data.

TRACE TABLES (guaranteed marks)
x=1; WHILE x<5: OUTPUT x; x=x+2 → outputs 1, 3 (x ends at 5).

PRACTICE
1) Pseudocode: average of 5 numbers. [sum/5 pattern]
2) Trace: x=1; WHILE x<5: OUTPUT x; x=x+2. [1, 3]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('835467c5-019d-0749-532e-d57d4da69baa'::uuid, 'cheat-cs-databases', 'Computer Science', 'Databases Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Databases Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Databases** in Computer Science. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

STRUCTURE
Table (file) → record (row) → field (column).
Primary key: uniquely identifies a record (student ID).
Foreign key: links tables.

VALIDATION
Type, range, length, presence checks.

OPERATIONS
Query: filter records (SELECT…WHERE). Sort: ascending/descending. Report: formatted output.

PRACTICAL TIPS
Create table → set primary key → query with criteria → report.
Exact criteria and sorted results carry the marks.

PRACTICE
1) Define primary key + example. [2]
2) Query: students with average > 12. [SELECT * WHERE average > 12]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('dc789297-a1d0-1ead-e58a-bfde96ccdc8f'::uuid, 'cheat-cs-networks-and-internet', 'Computer Science', 'Networks & Internet Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Networks & Internet Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Networks and internet** in Computer Science. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

NETWORKS
LAN: one site (school lab). WAN: across sites (the internet).
Star topology: central switch; one cable failure affects one machine (most common).
Router: connects networks. Switch: connects devices in a LAN.

INTERNET
Internet = network of networks. WWW = a service on it (HTTP/HTTPS).
IP address identifies device. DNS: name (studyspark.cm) → IP.

DANGERS & PROTECTION
Malware, phishing, cyberbullying, identity theft.
Protection: strong passwords, antivirus, firewall, backups, HTTPS, don''t click unknown links.

PRACTICE
1) LAN vs WAN — two differences. [2]
2) What does DNS do? [translates domain names to IP addresses]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1559c262-25ae-d6c2-b529-4ce8b515de63'::uuid, 'cheat-ict-office-applications', 'ICT', 'Office Applications Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Office Applications Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Office applications** in ICT. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

WORD PROCESSOR
Formal letters, reports (headings, page numbers, headers/footers), tables, mail merge (master + data source).
Follow the sample EXACTLY — spacing/alignment carry marks.

SPREADSHEET
Formulas start with = : SUM, AVERAGE, MAX, MIN, IF, COUNTIF.
Absolute $A$1 vs relative A1. Charts: bar=compare, line=trend, pie=share.
=AVERAGE(C2:C30).

DATABASE
Table→record→field; primary key; validation; queries (criteria >, <, =, AND, OR); reports.

PRESENTATION
Minimal text (6×6 rule), consistent design, relevant images, rehearse.

PRACTICAL TIPS
Save with the EXACT filename required. Read instructions twice.

PRACTICE
1) Formula to average C2:C30. [=AVERAGE(C2:C30)]
2) Two validation checks. [type, range]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('e1f57f3f-1cca-43ce-acd9-2a09adfccf5c'::uuid, 'cheat-ict-internet-and-safety', 'ICT', 'Internet & Safety Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Internet & Safety Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Internet and safety** in ICT. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

INTERNET
Browser, search engines (keywords, quotes, site:), email (cc/bcc, etiquette), cloud storage (access anywhere + backup; risks: privacy, account security).

HEALTH & SAFETY
Ergonomics: chair, screen at eye level, breaks (eye strain, RSI).
Electrical safety.

SECURITY
Threats: viruses, phishing, hacking, identity theft.
Protection: strong passwords, backups, antivirus, firewall, HTTPS, verify links.

ETHICS
Piracy, plagiarism, digital divide (urban vs rural access), e-waste, netiquette.

PRACTICE
1) Phishing + one defence. [fake messages stealing credentials; verify sender/URL]
2) Two ergonomic measures. [screen at eye level, regular breaks]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a42b4f5e-02a2-1547-6d12-d402773d2b63'::uuid, 'cheat-fr-grammaire', 'French', 'Grammaire Cheatsheet', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Grammaire Cheatsheet

## Objectif de la fiche

Utilise cette fiche pour reviser rapidement **Grammaire** en French. Ce n''est pas un cours complet. C''est une fiche GCE pour retenir les points essentiels, eviter les pieges et s''entrainer avant les sujets complets.

## Points essentiels

ACCORDS
Nom-adjectif: genre + nombre (« une maison blanche », « des maisons blanches »).
Pluriels spéciaux: cheval→chevaux, journal→journaux, œil→yeux.
Sujet-verbe: « La fille de mon voisin CHANTE » (la fille chante!).
Participe passé: avec être → s''accorde (« Elle est partie »); avec avoir → s''accorde avec COD avant (« les pommes que j''ai mangées »).

PRONOMS
qui (sujet), que (objet), où (lieu/temps), dont (complément).
Remplacement: « Je donne le livre à Marie » → « Je LE LUI donne ».

PRACTICE
1) Pluriel: un cheval, un journal, un œil. [chevaux, journaux, yeux]
2) Remplacez: « Il parle à ses amis. » [Il leur parle]

## Comment le GCE peut tester ce point

1. Une question peut demander une definition exacte.
2. Une question peut verifier la grammaire, le vocabulaire ou la methode.
3. Les mauvaises reponses viennent souvent des fautes frequentes.
4. Une bonne reponse est courte, claire et directement liee a la question.

## Methode rapide

- Lis la fiche une fois lentement.
- Cache la fiche et ecris cinq points importants.
- Corrige les mots oublies.
- Transforme un point en question courte.
- Redige une reponse structuree de trois a cinq phrases.

## Pieges frequents

- Traduire mot a mot depuis l''anglais.
- Oublier les accords.
- Confondre le temps verbal demande.
- Donner une reponse trop vague.
- Ne pas respecter le verbe de consigne.

## Verification finale

Tu peux quitter cette fiche lorsque tu peux expliquer le point sans regarder, donner un exemple correct et repondre a une petite question sans hesiter.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ea37c132-6260-6105-1c81-1780c2b9083f'::uuid, 'cheat-fr-conjugaison', 'French', 'Conjugaison Cheatsheet', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Conjugaison Cheatsheet

## Objectif de la fiche

Utilise cette fiche pour reviser rapidement **Conjugaison** en French. Ce n''est pas un cours complet. C''est une fiche GCE pour retenir les points essentiels, eviter les pieges et s''entrainer avant les sujets complets.

## Points essentiels

PRÉSENT (1er groupe)
-e, -es, -e, -ons, -ez, -ent.

PASSÉ COMPOSÉ
Auxiliaire (avoir/être) au présent + participe passé.
« J''ai mangé », « Elle est allée ».
Piège: « ils se sont lavé les mains » (COD après → pas d''accord).

IMPARFAIT
Radical du « nous » + -ais, -ais, -ait, -ions, -iez, -aient.
« nous mangions » → « je mangeais ».

FUTUR SIMPLE
Infinitif + -ai, -as, -a, -ons, -ez, -ont.
Irréguliers: être→ser-, avoir→aur-, aller→ir-, faire→fer-, venir→viendr-.

AUTRES
Futur proche: aller + infinitif. Passé récent: venir de + infinitif.
Plus-que-parfait: imparfait de l''auxiliaire + participe passé.

PRACTICE
1) Passé composé: « Elle (aller) au marché. » [Elle est allée]
2) Imparfait: « nous (habiter) » → « j''habitais »

## Comment le GCE peut tester ce point

1. Une question peut demander une definition exacte.
2. Une question peut verifier la grammaire, le vocabulaire ou la methode.
3. Les mauvaises reponses viennent souvent des fautes frequentes.
4. Une bonne reponse est courte, claire et directement liee a la question.

## Methode rapide

- Lis la fiche une fois lentement.
- Cache la fiche et ecris cinq points importants.
- Corrige les mots oublies.
- Transforme un point en question courte.
- Redige une reponse structuree de trois a cinq phrases.

## Pieges frequents

- Traduire mot a mot depuis l''anglais.
- Oublier les accords.
- Confondre le temps verbal demande.
- Donner une reponse trop vague.
- Ne pas respecter le verbe de consigne.

## Verification finale

Tu peux quitter cette fiche lorsque tu peux expliquer le point sans regarder, donner un exemple correct et repondre a une petite question sans hesiter.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('16bd4ac8-7efb-c9a7-e9f6-24345fa83452'::uuid, 'cheat-fr-compr-hension-et-composition', 'French', 'Compréhension & Composition Cheatsheet', 'french', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Compréhension & Composition Cheatsheet

## Objectif de la fiche

Utilise cette fiche pour reviser rapidement **Compréhension et composition** en French. Ce n''est pas un cours complet. C''est une fiche GCE pour retenir les points essentiels, eviter les pieges et s''entrainer avant les sujets complets.

## Points essentiels

COMPRÉHENSION
Lisez deux fois: sens général, puis avec les questions.
Types: factuelle (dans le texte), vocabulaire en contexte, inférence, ton de l''auteur.
« Avec vos propres mots » → recopier = ZÉRO.

COMPOSITION
Récit: passé (imparfait + passé composé), début→problème→fin.
Descriptif: les cinq sens. Argumentatif: opinion + 3 arguments + exemples + conclusion.

STRUCTURE
Intro accrocheuse → paragraphes de 4-6 phrases (une idée chacun) → conclusion.
Plan de 5 minutes AVANT d''écrire. Relisez: accords + orthographe.

PRACTICE
1) Lettre à votre oncle: votre première journée d''examen. [20]
2) Compréhension: texte sur l''exode rural, 5 questions. [15]

## Comment le GCE peut tester ce point

1. Une question peut demander une definition exacte.
2. Une question peut verifier la grammaire, le vocabulaire ou la methode.
3. Les mauvaises reponses viennent souvent des fautes frequentes.
4. Une bonne reponse est courte, claire et directement liee a la question.

## Methode rapide

- Lis la fiche une fois lentement.
- Cache la fiche et ecris cinq points importants.
- Corrige les mots oublies.
- Transforme un point en question courte.
- Redige une reponse structuree de trois a cinq phrases.

## Pieges frequents

- Traduire mot a mot depuis l''anglais.
- Oublier les accords.
- Confondre le temps verbal demande.
- Donner une reponse trop vague.
- Ne pas respecter le verbe de consigne.

## Verification finale

Tu peux quitter cette fiche lorsque tu peux expliquer le point sans regarder, donner un exemple correct et repondre a une petite question sans hesiter.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('029053a8-09e4-cd34-a34e-fab82892758a'::uuid, 'cheat-hist-cameroon-before-1884', 'History', 'Cameroon Before 1884 Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Cameroon Before 1884 Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Cameroon before 1884** in History. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

PEOPLES & MIGRATIONS
Bantu migrations: from Nigeria–Cameroon borderlands → Central/Southern Africa (iron + farming).
Groups: Bantu forest (Betis, Fang, Bulu), Semi-Bantu (Bamileke, Tikar, Bamoun), Sudanic (Fulbe, Kanuri), Pygmies (Baka).

KINGDOMS
Bamoun (King Njoya — invented his own script), Kotoko (Logone-Birni), Fulbe lamidates (after Modibo Adama''s 19th-c jihad).

TRADE
Trans-Saharan (north): salt, cloth ↔ slaves, ivory. Coastal (from 15th c Portuguese): guns, cloth ↔ palm oil, slaves.

INSTITUTIONS
Chiefdoms, councils of elders, age grades, secret societies (Ngumba, Kwifon).

PRACTICE
1) Name two pre-colonial kingdoms. [Bamoun, Kotoko]
2) Who was Modibo Adama? [Fulbe leader of the 19th-c jihad → lamidates]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('56d106fa-6d0b-c614-fa6c-914a83ebbf9a'::uuid, 'cheat-hist-colonial-rule', 'History', 'Colonial Rule Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Colonial Rule Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Colonial rule** in History. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

GERMAN RULE (1884–1916)
1884: treaties — King Bell & King Akwa (Douala) with Dr Gustav Nachtigal.
Plantations, railways (Douala–Yaoundé), forced labour, hut tax.
Resistance: Douala Manga Bell executed 1914. Capital: Buea.

PARTITION (1916)
WWI conquest → League of Nations mandate:
France: East 4/5. Britain: West 1/5 (ruled from Nigeria — indirect rule; Northern & Southern separate).

FRENCH RULE
Indigénat, forced labour, cash crops, French schools.

PRACTICE
1) Year + purpose of Berlin Conference. [1884–85; rules for partition]
2) Who signed the 1884 treaties for Germany? [Nachtigal]
3) Two features of German rule. [plantations, forced labour]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('03937717-8243-1005-3d2a-377f173261eb'::uuid, 'cheat-hist-independence-and-reunification', 'History', 'Independence & Reunification Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Independence & Reunification Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Independence and reunification** in History. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

UPC (1948)
Ruben Um Nyobé, Ernest Ouandié: immediate independence + reunification. Banned 1955 → maquis.
Um Nyobé killed 1958; Moumié poisoned 1960; Ouandié executed 1971.

DATES (memorise!)
1 Jan 1960: French Cameroon independent (Ahidjo president).
11 Feb 1961: plebiscite — Southern Cameroons votes to join.
1 Oct 1961: FEDERATION (two states).
1972: unitary state (referendum). 1984: Republic of Cameroon.

PRACTICE
1) Why the 1961 plebiscite + result? [UN decolonisation of British Cameroons; South voted to join]
2) Founder of UPC + one demand. [Um Nyobé; immediate independence]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('3db09a3c-e16d-c152-1467-17b2c4226908'::uuid, 'cheat-hist-african-nationalism', 'History', 'African Nationalism Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# African Nationalism Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **African nationalism** in History. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

CAUSES (after 1945)
WWII veterans'' experience, education, pan-Africanism (5th PAC 1945), economic grievances, weakened empires.

WAVES
Ghana 1957 (first sub-Saharan). 1960: "Year of Africa" (17 states).

LEADERS
Nkrumah (Ghana), Sékou Touré (Guinea — "No" to de Gaulle 1958), Kenyatta (Kenya), Nyerere (Tanzania — Ujamaa), Senghor (Senegal).

APARTHEID
1948–1994. Sharpeville 1960, Soweto 1976, Mandela freed 1990, elections 1994.

PRACTICE
1) Two causes of nationalism post-1945. [veterans, pan-Africanism]
2) Two leaders + countries. [Nkrumah/Ghana, Kenyatta/Kenya]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('48b91af9-4f02-f63b-0310-6d0294c927e7'::uuid, 'cheat-hist-world-wars', 'History', 'World Wars Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# World Wars Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **World wars** in History. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

WWI (1914–18)
Causes: MAIN (Militarism, Alliances, Imperialism, Nationalism) + Sarajevo (Franz Ferdinand, June 1914).
Trench warfare. Cameroon campaign: Allies take German Kamerun 1914–16.
Versailles 1919: war guilt, reparations, League of Nations.

WWII (1939–45)
Hitler''s expansion → Poland. Holocaust. Turning points: Stalingrad, D-Day.
Atomic bombs: Hiroshima, Nagasaki (Aug 1945). UN founded 1945.

COLD WAR
USA vs USSR. Berlin Wall 1961, Cuban Missile Crisis 1962.
End: Wall falls 1989, USSR dissolves 1991.

PRACTICE
1) Two MAIN causes of WWI. [militarism, alliances]
2) One consequence of Versailles. [German resentment → WWII]
3) Why did the Cold War end in 1991? [USSR dissolution]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('a215beee-ebce-2aa4-fcc5-263c4a05de07'::uuid, 'cheat-geo-landforms', 'Geography', 'Landforms Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Landforms Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Landforms** in Geography. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

EARTH & ROCKS
Layers: crust, mantle, core.
Igneous (magma — basalt, granite), sedimentary (layers — limestone, sandstone), metamorphic (changed — marble).
Cameroon Volcanic Line: Mount Cameroon (4,095 m, active), Lake Nyos.

WEATHERING vs EROSION
Weathering: breaks rock IN PLACE (physical, chemical, biological).
Erosion: MOVES material (rivers, wind, waves).
River landforms: V-valleys, waterfalls, meanders, ox-bow lakes, deltas.

PRACTICE
1) Three rock types + one example each. [3]
2) Why does Mount Cameroon exist far from a plate boundary? [intraplate volcanic line]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('577b0aeb-ce58-585a-ecc2-9818b6e08b14'::uuid, 'cheat-geo-climate', 'Geography', 'Climate Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Climate Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Climate** in Geography. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

INSTRUMENTS
Temperature: thermometer. Rain: rain gauge. Wind: anemometer + vane.
Humidity: hygrometer. Pressure: barometer. Stevenson screen shelters them.

CAMEROON''S CLIMATES
North (Sudan/Sahel): ONE wet season May–Sept, hot.
Centre: tropical — two seasons. South: equatorial — heavy rain (Douala ~4,000 mm/yr).
ITCZ controls the seasons. Highlands cooler (Bamenda).

CLIMATE CHANGE
Lake Chad shrinking, irregular rains, delayed planting.
Responses: reforestation, climate-smart agriculture.

PRACTICE
1) Describe Far North climate from a rainfall graph. [one wet season, May–Sept]
2) Two effects of climate change in Cameroon. [delayed planting, floods]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('fc79d84b-510b-91b0-fd1c-c60b95228115'::uuid, 'cheat-geo-population-and-settlement', 'Geography', 'Population Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Population Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Population and settlement** in Geography. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

DISTRIBUTION
Dense: west highlands, Yaoundé, Douala, far north. Sparse: east (forest).
Factors: climate, soils, jobs, history.

TERMS
Birth rate, death rate, fertility, life expectancy, dependency ratio.
Migration: rural-urban exodus (exam favourite).

SETTLEMENT
Nucleated (market/chiefdom), linear (roads), dispersed (farmsteads).
Site = the land itself. Situation = position relative to other places.
Urban problems: slums, traffic, waste, unemployment.

PRACTICE
1) Two causes of rapid urbanisation in Douala. [jobs, services]
2) Site vs situation. [2]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('48d460d7-945c-cae0-156e-998e07b82d00'::uuid, 'cheat-geo-economic-activities', 'Geography', 'Economic Activities Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Economic Activities Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Economic activities** in Geography. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

AGRICULTURE
Subsistence: plantain, cassava, maize, groundnuts.
Cash crops: cocoa (Centre/South), coffee (West/NW), cotton (North), bananas, palm oil, tea.
Plantations: CDC, SOSUCAM. Problems: low prices, roads, ageing farmers.

INDUSTRY & ENERGY
Manufacturing: Douala, Yaoundé (breweries, cement).
Mining: bauxite (Minim-Martap), iron (Mbalam), gold (East).
Energy: hydro (Sanaga dams, Memve''ele), oil (Rio del Rey).

TRANSPORT & TRADE
Roads dominate; ports: Douala (silting), Kribi (deep-sea), Limbe.
Tourism: Waza, Kribi beaches, Mount Cameroon, Ngondo.

PRACTICE
1) Two factors favouring cocoa in the Centre. [climate, soils]
2) Kribi port: one advantage + one disadvantage. [deep-sea for big ships / costly]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('d0602196-74ee-e0f4-2e53-99bc4bdfdc4c'::uuid, 'cheat-geo-map-work', 'Geography', 'Map Work Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Map Work Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Map work** in Geography. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

SCALE
1:50,000 → 1 cm = 500 m. Straight: ruler. Winding: thread/paper strip.

REFERENCES
4-figure: the square. 6-figure: precise (tenths across, then up).
Direction: 16-point compass. Bearings: clockwise from north (000–360°).

RELIEF
Contours: close = steep, wide = gentle. Spot heights, trig points.
Cross-sections show a profile.

DESCRIBING ROUTES
"From the school at 3421, the road runs NE to the bridge at 3623, crossing the river valley."

PRACTICE
1) 7.4 cm road on 1:50,000: real distance? [3.7 km]
2) 6-figure ref: centre of square 2334. [235345 approx]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('69e9c54d-65b8-33c2-f851-521fc0ab81f6'::uuid, 'cheat-civ-rights-and-duties', 'Citizenship Education', 'Rights & Duties Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Rights & Duties Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Rights and duties** in Citizenship Education. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

CITIZENSHIP
Legal member of a state: by birth (jus soli/sanguinis), naturalisation, marriage, adoption.

RIGHTS (3 categories)
Civil/political: life, speech, fair trial, vote.
Economic/social: education, health, work.
Cultural/environmental: culture, healthy environment.
Sources: UDHR 1948, African Charter 1981, Cameroon Constitution 1996 (preamble).
Children: CRC 1989 — survival, development, protection, participation.

DUTIES
Obey law, pay taxes, defend nation, protect public property, environment, respect others'' rights, vote.

PRACTICE
1) Three categories + one example each. [3]
2) Two duties + explain one. [3]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ad5d95c6-4940-68e8-0145-9c35544fcbe1'::uuid, 'cheat-civ-state-institutions', 'Citizenship Education', 'State Institutions Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# State Institutions Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **State institutions** in Citizenship Education. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

THE REPUBLIC
Unitary, decentralised, secular, democratic (Constitution 1996).
Executive: President (7 yrs) + PM/government.
Legislative: National Assembly + Senate.
Judicial: courts (Supreme Court, Constitutional Council).
Decentralisation: 10 regions, 360+ councils. Chiefdoms I–III complement.

ELECTIONS
ELECAM organises. Voting age 20. Free & fair: secret ballot, equal suffrage, transparent counting.

OTHER INSTITUTIONS
ANOR (standards), CNPS (social insurance), CONGACAM (anti-corruption), National Human Rights Commission.

CORRUPTION
Abuse of entrusted power for private gain. Fight: refuse bribes, report, integrity.

PRACTICE
1) Two houses of the legislature. [National Assembly, Senate]
2) Separation of powers. [executive/legislative/judicial independent]
3) Two qualities of a free election. [secret ballot, equal suffrage]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('c3f59af2-f93a-c771-e3d0-4de1aba701fb'::uuid, 'cheat-rel-old-testament', 'Religious Studies', 'Old Testament Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Old Testament Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Old testament** in Religious Studies. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

STRUCTURE
OT: Law (Torah), History, Wisdom, Prophets. NT: Gospels, Acts, Epistles, Revelation.

PATRIARCHS
Abraham (covenant Gen 12, 15, 17), Isaac, Jacob (Israel; 12 tribes), Joseph (Egypt).

MOSES
Burning bush call, 10 plagues, Passover, Exodus, Sinai (Ten Commandments — Ex 20).

KINGS
Saul (rejected), David (covenant 2 Sam 7; Psalm 51 repentance), Solomon (temple, decline).
Divided kingdom: Israel (north) / Judah (south).

PROPHETS
Elijah (Carmel — 1 Kgs 18), Amos (justice for poor), Hosea (faithful love), Isaiah (Holy One; messiah), Jeremiah (new covenant — Jer 31).

WISDOM
Psalms (23, 51, 100), Proverbs, Job (suffering), Ecclesiastes.

PRACTICE
1) Covenant with Abraham. [4]
2) Two prophets + one message each. [4]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('5f805040-79ef-e895-1c5f-1b6202eeb07b'::uuid, 'cheat-rel-new-testament', 'Religious Studies', 'New Testament Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# New Testament Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **New testament** in Religious Studies. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

GOSPELS
Matthew: Jewish, teaching. Mark: action, suffering servant. Luke: universal, poor/women, parables. John: signs, "I am".

LIFE OF CHRIST
Annunciation, baptism, temptation, ministry (miracles: nature, healing, exorcism), 12 disciples, transfiguration.

PASSION
Jerusalem entry, Last Supper (Eucharist), Gethsemane, trials, crucifixion (7 words; centurion), burial.
Resurrection: empty tomb, appearances (1 Cor 15 — centrality), ascension, Great Commission (Mt 28).

ACTS & EPISTLES
Pentecost (Spirit; church born). Acts 2:42–47 (fellowship, bread, sharing).
Paul: conversion, journeys, justification by faith (Romans), love (1 Cor 13), fruit of the Spirit (Gal 5).
James: faith + works.

PRACTICE
1) One difference Matthew vs Luke birth narratives. [2]
2) Events of the Last Supper + importance. [6]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('8b4ee741-984d-6a18-8627-d1ce0e5a63b7'::uuid, 'cheat-rel-christian-life-today', 'Religious Studies', 'Christian Life Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Christian Life Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Christian life today** in Religious Studies. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

MORAL APPLICATIONS (teaching → scripture → situation → response)
Marriage/family: Gen 2, Eph 5. Wealth: Mt 6:24, Proverbs.
Justice/poor: Amos 5:24, James 2. Forgiveness: Mt 18.
Corruption: Ex 20, Rom 13 (Cameroonian application!).
Tribalism/unity: Gal 3:28. Creation care: Gen 1:28, Ps 24.
Life: sanctity of life. Alcohol/drugs: temperance.

CHURCH IN CAMEROON
Missions → education + health; ecumenism; interfaith tolerance (Islam, traditional religion).

PRACTICE
1) "Religion has no place in fighting corruption." Discuss + scripture. [10]
2) Christian response to exam malpractice. [5]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('175a1f36-0a5d-5161-345d-ee371509f053'::uuid, 'cheat-log-syllogisms', 'Logic', 'Syllogisms Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Syllogisms Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Syllogisms** in Logic. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

BASICS
Term, proposition (true/false), argument (premises → conclusion).
VALID: conclusion follows. SOUND: valid + true premises.

4 TYPES
A: All S are P. E: No S are P. I: Some S are P. O: Some S are not P.

SYLLOGISM
Major premise + minor premise → conclusion. 3 terms (major, minor, MIDDLE).
Middle term must be distributed at least once.

RULES
No term distributed in conclusion unless in premises.
Two negative premises → nothing. Negative premise → negative conclusion.

VENN TESTING
Two circles (S, P) in a universe; shade for universals; X for particulars; check conclusion.

EXAMPLE
All lawyers are graduates. All judges are lawyers. ∴ All judges are graduates. VALID (middle "lawyers" distributed in major).

PRACTICE
1) Valid vs sound + examples. [4]
2) Type: "Some students are not athletes." [O]
3) Test: All M are P; All S are M; ∴ All S are P. [valid]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('80876d97-2c65-ea0c-266c-9a1ead3f4572'::uuid, 'cheat-log-fallacies', 'Logic', 'Fallacies Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Fallacies Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Fallacies** in Logic. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

FORMAL
Affirming the consequent: If P→Q; Q; ∴ P (INVALID).
Denying the antecedent: If P→Q; ¬P; ∴ ¬Q (INVALID).
Undistributed middle. Illicit major/minor.

INFORMAL (name + quote + one-line why)
Ad hominem: attack the person.
Ad populum: "everyone believes it".
Hasty generalisation: too few cases.
Post hoc: after ≠ because.
False dilemma: only two options?
Equivocation: word meaning shifts.
Begging the question: circular.
Straw man: misrepresent the opponent.
Red herring: divert.

HYPOTHETICAL VALID FORMS
Modus ponens: P→Q; P; ∴ Q. Modus tollens: P→Q; ¬Q; ∴ ¬P.

PRACTICE
1) "You cannot trust his tax argument — he is a dropout." [ad hominem]
2) "Every great leader drank tea; ∴ tea makes leaders." [false cause/hasty]
3) If it rains, match cancelled. Match NOT cancelled. ∴ no rain. [modus tollens — VALID]
4) If it rains, match cancelled. No rain. ∴ match not cancelled. [denying antecedent — INVALID]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('35640cd7-a225-4974-6535-dca778a3bb2f'::uuid, 'cheat-agr-soils', 'Agricultural Science', 'Soils Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Soils Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Soils** in Agricultural Science. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

PROFILE
A topsoil (organic, roots) → B subsoil → C parent rock.
Texture: sand/silt/clay; loam ideal. pH 6–7 best (test with indicator).
Humus: water retention, nutrients, structure.

NUTRIENTS + DEFICIENCY
N → leaves (yellowing). P → roots (purple leaves). K → fruit/quality.

FERTILISERS
Organic (manure, compost): improves structure, slow. Inorganic (NPK, urea): fast, precise.
Application: broadcasting, banding, top dressing.

CONSERVATION
Rotation, mulching, cover crops, terracing, agroforestry, contour ploughing.
Erosion: water (gullying after deforestation), wind (Sahel).

PRACTICE
1) Draw + label soil profile. [4]
2) Two erosion controls. [terracing, mulching]
3) Yellowing leaves = which deficiency? [nitrogen]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('66fbde2e-6039-5eb8-f158-ff58ed2512ce'::uuid, 'cheat-agr-crop-production', 'Agricultural Science', 'Crop Production Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Crop Production Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Crop production** in Agricultural Science. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

PRINCIPLES
Propagation: seeds (maize, cocoa) vs vegetative (cassava stems, yam setts, plantain suckers, grafting).
Nursery: seedbeds, pricking out, hardening off.
Spacing prevents competition. Weed at 2–3 weeks (maize).
Irrigation: flood, furrow, drip (most efficient).

MAJOR CROPS
Cocoa: shade trees, fermentation 5–7 days (turning), drying → quality = price.
Coffee: Arabica (highlands) / Robusta (lowlands).
Cassava: stems, 9–12 months, process to garri (removes cyanide).

PESTS & DISEASES
Fungal: cocoa black pod (humidity). Viral: cassava mosaic (whitefly vector; clean planting material).
Control: cultural (rotation, sanitation), biological, chemical (safety: labels, protection, withdrawal periods).

PRACTICE
1) Why ferment + dry cocoa properly? [quality determines price]
2) Vector of cassava mosaic + control. [whitefly; clean stems]
3) One advantage of vegetative propagation. [true to type, faster]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1ff98283-434a-1b27-eea0-0bafdc91de1a'::uuid, 'cheat-agr-animal-production', 'Agricultural Science', 'Animal Production Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Animal Production Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Animal production** in Agricultural Science. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

POULTRY
Broilers (meat, 6–8 wks) vs layers (eggs, ~20 wks).
Housing: deep litter vs battery. Brooding warmth first weeks.
Feed: starter → grower → layers'' mash. Water always clean.
Vaccines: Newcastle, Gumboro. Biosecurity: footbaths, isolate new birds.
Healthy signs: alert, glossy feathers, good intake.

PIGS
Farrowing care; African swine fever: NO vaccine → strict biosecurity.
CATTLE: zebu, tsetse challenge in south; CBPP, trypanosomiasis; dry-season supplementation.
SMALL RUMINANTS: goats/sheep browse+graze; deworm parasites. Fish: tilapia ponds.

PRACTICE
1) Vaccination schedule for broilers. [4]
2) Two biosecurity measures. [footbaths, isolation]
3) Why no vaccine for ASF? [viral — control by biosecurity only]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('9ee6f717-b516-3d4d-d842-6ebf0557ffed'::uuid, 'cheat-hbio-body-systems', 'Human Biology', 'Body Systems Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Body Systems Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Body systems** in Human Biology. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

ORGANISATION
Cells → tissues → organs → systems. Homeostasis = constant internal environment.

SKIN
Epidermis (melanin — UV), dermis (sweat, vessels, receptors), fat.
Functions: protection, temperature (sweat, vasodilation), sensation, vitamin D.

SKELETON
Support, protection (skull, ribs), movement, blood cells (marrow), mineral store (calcium).
Joints: fixed (skull), slightly movable (spine), synovial (ball-and-socket shoulder; hinge elbow).
Cartilage, synovial fluid, ligaments (bone-bone). Muscles: antagonistic pairs (biceps/triceps).

PRACTICE
1) Two skin functions besides protection. [temperature, sensation]
2) Elbow joint type + movement. [hinge; flexion/extension]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('43267fc6-e07a-8e78-30ae-54527982416d'::uuid, 'cheat-hbio-blood-and-circulation', 'Human Biology', 'Blood & Circulation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Blood & Circulation Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Blood and circulation** in Human Biology. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

BLOOD
Plasma (transport), red cells (haemoglobin + O₂; NO nucleus), white cells (phagocytes, lymphocytes), platelets (clotting).
Groups: O universal donor, AB universal recipient.

HEART
4 chambers; left ventricle THICKEST (pumps to whole body).
Valves prevent backflow. SAN = pacemaker (myogenic).
Cardiac output = stroke volume × heart rate.
Coronary arteries supply heart; blockage → heart attack (risks: smoking, fat, inactivity).

BREATHING
Nose (warms/filters) → trachea (rings) → bronchi → alveoli (thin, moist, huge surface).
Inhale: diaphragm flattens, ribs rise → pressure falls → air in.

PRACTICE
1) Why is the left ventricle thicker? [pumps blood around the whole body]
2) Trace: lungs → pulmonary vein → left atrium → left ventricle → aorta → body. [4]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('d0454d0f-f156-274e-a3bd-958c92e1f833'::uuid, 'cheat-hbio-reproduction-and-health', 'Human Biology', 'Reproduction & Health Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Reproduction & Health Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Reproduction and health** in Human Biology. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

SYSTEMS
Male: testes (sperm + testosterone) → vas deferens. Female: ovaries (ova + oestrogen/progesterone) → oviduct → uterus.

CYCLE
~28 days; ovulation ~day 14; hormones FSH, LH, oestrogen, progesterone.
Fertilisation in oviduct → implantation. Placenta: exchange + hormones + barrier.

HEALTH
Antenatal care; dangers: malaria, anaemia.
Contraception methods. STIs: HIV via blood/sex/mother-to-child — NOT casual contact; testing + prevention.

PRACTICE
1) Draw + label female reproductive system. [5]
2) Three placenta functions. [exchange, barrier, hormones]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('9b2f5266-9761-3258-b8de-4036ef1fd101'::uuid, 'cheat-amath-factor-theorem', 'Additional Mathematics', 'Factor Theorem Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Factor Theorem Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Factor theorem** in Additional Mathematics. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

THEOREMS
Remainder: f(x) ÷ (x−a) leaves remainder f(a).
Factor: (x−a) is a factor ⟺ f(a) = 0.

CUBIC SOLVING
Find one root by inspection → divide → factorise quadratic.

EXAMPLE
x³−6x²+11x−6=0: x=1 works → (x−1)(x²−5x+6) = (x−1)(x−2)(x−3) → roots 1, 2, 3.

PRACTICE
1) f(x)=x³+ax²−5x+b; factors (x−2), (x+1). Find a, b. [a=−2, b=−2]
2) Solve x³−2x²−5x+6=0. [−2, 1, 3]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6b6a050e-da49-b457-a6c1-79bdb7fd618e'::uuid, 'cheat-amath-differentiation', 'Additional Mathematics', 'Differentiation Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Differentiation Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Differentiation** in Additional Mathematics. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

STANDARD RESULTS
xⁿ→nxⁿ⁻¹; sin x→cos x; cos x→−sin x; eˣ→eˣ; ln x→1/x.
Chain: dy/dx = dy/du × du/dx. Product: u''v+uv''. Quotient: (u''v−uv'')/v².

FIRST PRINCIPLES (expect one!)
f''(x) = lim(h→0) [f(x+h)−f(x)]/h.

APPLICATIONS
Tangent: gradient = f''(a) at x=a. Normal: −1/gradient.
Stationary: dy/dx=0; classify with d²y/dx² (+ = min, − = max).
Rates: dy/dt = dy/dx × dx/dt.

EXAMPLE
y=x³−2x at x=1: dy/dx=3x²−2=1; point (1,−1) → tangent y = x−2.

PRACTICE
1) First principles: f(x)=x². [2x]
2) Max of y=x³−3x on [−2,2]. [2 at x=−1]
3) Normal to y=x²−3x at x=2. [gradient −1/1 → y=−x+?]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('6db6c679-ba5b-b010-958a-6ef840671440'::uuid, 'cheat-amath-integration', 'Additional Mathematics', 'Integration Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Integration Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Integration** in Additional Mathematics. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

STANDARD INTEGRALS
∫xⁿ = xⁿ⁺¹/(n+1)+c. ∫1/x = ln|x|+c. ∫sin = −cos+c. ∫eˣ = eˣ+c.

DEFINITE + AREAS
∫ₐᵇ f(x) dx. Area under curve; between curves: subtract lower.
CHECK: differentiate your answer!

EXAMPLES
∫₀³ x² dx = [x³/3]₀³ = 9.
Area between y=x and y=x²: ∫₀¹ (x−x²) dx = 1/6.

KINEMATICS LINK
v = ds/dt; a = dv/dt. Rest when v=0. Distance = ∫|v|.

PRACTICE
1) ∫₁⁴ (2√x + 3x) dx. [≈51.8]
2) Area between y=x and y=x². [1/6]
3) s=t³−6t²: rest when? [t=0, 4; a=12 m/s² at t=4]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('3cb3ca36-54a9-45b8-aa1f-c8e8c0146bc7'::uuid, 'cheat-fnut-nutrients', 'Food and Nutrition', 'Nutrients Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Nutrients Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Nutrients** in Food and Nutrition. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

ENERGY VALUES
Carb 4 kcal/g. Protein 4 kcal/g. Fat 9 kcal/g.

VITAMINS
A: vision (red palm oil, carrots) — night blindness.
C: healing, iron absorption (citrus, guava) — scurvy.
D: calcium absorption (sun, fish) — rickets. Folate: pregnancy.

MINERALS
Iron (dark greens, meat) — anaemia; vitamin C aids absorption.
Calcium (bones). Iodine (iodised salt) — goitre.

WATER: 6–8 glasses; transport, temperature, wastes.

BALANCE
BMI = kg ÷ m². Healthy 18.5–24.9.
Needs vary: age, sex, activity, pregnancy.

PRACTICE
1) Energy value of 1 g each. [4/4/9]
2) Two deficiency diseases + causes. [2]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('d2cc8af0-3ede-56b7-f181-6dd7ce6c475d'::uuid, 'cheat-fnut-meal-planning', 'Food and Nutrition', 'Meal Planning Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Meal Planning Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Meal planning** in Food and Nutrition. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

PLANNING FACTORS
Nutritional needs, budget, season, time, equipment, family size, culture.

FOOD GROUPS
Energy-giving (carbs/fats), body-building (protein), protective (vitamins/minerals).

SPECIAL DIETS
Diabetic: controlled carbs, regular meals. Hypertensive: <5 g salt, herbs instead.
Pregnant: +protein, iron, folate. Convalescent: high protein, small frequent meals.

CAMEROONIAN EXAMPLE
Balanced lunch (small budget): rice + beans + huckleberry + avocado + water.
Swaps: seasonal vegetables, dried fish for meat.

PRACTICE
1) Day''s meals for a pregnant woman (limited budget) + justification. [10]
2) Two ways to conserve vitamin C when cooking. [little water, short time]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('c02e17a2-7cd2-15e7-4b7e-f374bb7fc8fd'::uuid, 'cheat-fnut-preservation-and-hygiene', 'Food and Nutrition', 'Preservation & Hygiene Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Preservation & Hygiene Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Preservation and hygiene** in Food and Nutrition. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

SPOILAGE CAUSES
Micro-organisms, enzymes, pests, moisture, oxygen.

METHODS
Drying (fish, mangoes), salting, smoking, fermentation (garri), canning, freezing, pickling, jam (sugar+acid).
Refrigeration SLOWS, does not stop.

HYGIENE
Wash hands before + during; cover cuts; tie hair.
Separate raw/cooked (cross-contamination). Cool leftovers fast; reheat thoroughly ONCE.

DANGER ZONE
5–63 °C — bacteria multiply fastest. Keep hot hot, cold cold.

ILLNESSES
Salmonella (undercooked poultry). Cholera (contaminated water — rainy season risk).

PRACTICE
1) Three fish preservation methods + one advantage each. [6]
2) Define danger zone + one rule. [3]
3) Cross-contamination + prevention. [4]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('adea3bbd-1019-cfe1-1d1c-ce0227c44fff'::uuid, 'cheat-lit-literary-terms', 'English Literature', 'Literary Terms Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Literary Terms Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Literary terms** in English Literature. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

PLOT & STRUCTURE
Exposition, rising action, climax, resolution. Foreshadowing, flashback.

CHARACTER & VOICE
Direct/indirect characterisation. Point of view: 1st person, 3rd limited, omniscient.
Tone (speaker''s attitude), mood (reader''s feeling).

LANGUAGE
Simile (like/as), metaphor (direct), personification, symbolism.
Irony: verbal (says opposite), dramatic (audience knows), situational (outcome opposite).
Soliloquy (alone, thoughts aloud), monologue, dialogue.

FORM
Rhyme, rhythm, stanza, sonnet (14 lines), ballad, free verse, prose, drama.

PRACTICE
1) Define dramatic irony + example. [3]
2) Simile vs metaphor. [2]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('41f16ae0-ca95-fd59-b2cd-0c548be5c377'::uuid, 'cheat-lit-prose-and-drama', 'English Literature', 'Prose & Drama Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Prose & Drama Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Prose and drama** in English Literature. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

PROSE QUESTIONS
Character: trait → episode → evidence → significance.
Theme: state → trace through 3 episodes → writer''s message.
Setting: describe → effect on events/characters.

DRAMA QUESTIONS
Treat as PERFORMANCE: movement, pauses, staging.
Conflict: who wants what, what blocks, resolution.
Dramatic irony: audience knows what character doesn''t.
Know key scenes word-perfectly.

ESSAY FORMULA (all genres)
Intro (text + focus + thesis) → 3-4 paragraphs (POINT → QUOTE → ANALYSIS → LINK) → conclusion.
Present tense about texts. Never narrate without analysing.

PRACTICE
1) One character''s development through a novel. [10]
2) "The setting is almost a character." Discuss. [15]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('b4012ef8-fbf9-50fa-ba4a-1e754daf0357'::uuid, 'cheat-acct-double-entry', 'Accounting', 'Double Entry Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Double Entry Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Double entry** in Accounting. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

THE RULES
Debit: assets ↑, expenses ↑, drawings ↑.
Credit: liabilities ↑, capital ↑, income ↑.
Every transaction: two entries, equal amounts.

EXAMPLES
Start with 500,000 cash: Dr Cash / Cr Capital.
Buy motorbike 300,000 cash: Dr Motorbike / Cr Cash.
Credit sale 50,000 to Ada: Dr Ada (debtor) / Cr Sales.

DISCOUNTS
Trade: on invoice, NEVER recorded.
Cash: recorded — discount allowed = expense; received = income.

BOOKS OF PRIME ENTRY
Sales day book, purchases day book, cash book (also ledger), petty cash (imprest), journal (corrections).

PRACTICE
1) Record: goods on credit from Tata 120,000; paid by cheque less 5% cash discount. [5]
2) State the accounting equation. [1]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('36a152c7-0e15-293a-3908-a6c29953aab5'::uuid, 'cheat-acct-final-accounts', 'Accounting', 'Final Accounts Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Final Accounts Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Final accounts** in Accounting. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

INCOME STATEMENT
Sales − returns in → Net sales.
COGS = opening stock + purchases − returns out − closing stock.
Gross profit → + other income − expenses = NET PROFIT.

FINANCIAL POSITION
Non-current assets (− depreciation) + current assets (stock, debtors, prepayments, bank, cash) − current liabilities (creditors, accruals) = NET ASSETS = Capital + profit − drawings.

ADJUSTMENTS
Depreciation: straight line (cost−residual)/years; reducing balance × rate on NBV.
Accrual: owed → ADD expense + liability. Prepayment: paid ahead → SUBTRACT + asset.
Bad debts: expense. Provision: adjust to required %; the CHANGE is the charge.
Rent 240,000 + accrual 40,000 → charge 280,000; liability 40,000.

PRACTICE
1) Machine 1,000,000, residual 100,000, 5 yrs: year-2 depreciation. [180,000]
2) Debtors 500,000 → 4%; next year 600,000 → 5%. Charge? [30,000−20,000=10,000]
3) Insurance 60,000 incl. 12,000 next year. [charge 48,000; asset 12,000]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('203e196a-45ad-6df9-6de1-e6fe6638a659'::uuid, 'cheat-acct-control-and-reconciliation', 'Accounting', 'Control Accounts Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Control Accounts Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Control and reconciliation** in Accounting. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

CONTROL ACCOUNTS
Sales ledger control (debtors) / purchases ledger control (creditors).
Prove ledgers; locate errors. One-sided errors → suspense account.

BANK RECONCILIATION
Compare cash book ↔ bank statement.
Adjust: unpresented cheques, outstanding deposits, standing orders, direct debits, bank charges, errors.
Both sides agree at the CORRECTED balance.

ERRORS THE TRIAL BALANCE MISSES
Omission, commission, principle, original entry, compensating, reversal.

PRACTICE
1) Prepare a sales ledger control account. [8]
2) Reconcile with 3 adjustments. [8]
3) Name two errors a trial balance does not reveal. [2]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('ca264ecd-bf85-ec08-9668-1d9d814884d8'::uuid, 'cheat-biz-business-types', 'Business Studies', 'Business Types Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Business Types Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Business types** in Business Studies. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

OWNERSHIP
Sole trader: unlimited liability, full control, limited capital.
Partnership: 2–20, shared skills, disagreement risk.
Private Ltd: limited liability, private shares. Public Ltd: public shares, regulated.
Franchise: brand + fees. Co-operative: members. Public corporation: state (Camwater, Camtel).

STAKEHOLDERS
Owners, employees, customers, community, government — interests conflict (wages vs profit).

ADDED VALUE
Selling price − cost of bought-in materials.

PRACTICE
1) 2 advantages + 2 disadvantages of sole trader. [4]
2) Define added value + calculate. [3]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('5557c244-810b-0e71-146b-7a6052c2fcd5'::uuid, 'cheat-biz-marketing', 'Business Studies', 'Marketing Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Marketing Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Marketing** in Business Studies. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

THE 4Ps
Product: design, branding, life cycle (intro→growth→maturity→decline).
Price: cost-plus, competitive, penetration (low entry), skimming (high launch).
Place: channels — producer→wholesaler→retailer→consumer.
Promotion: advertising, sales promotion (discounts, samples), personal selling, social media.

MARKET RESEARCH
Primary: surveys, interviews, observation. Secondary: reports, statistics.
Segmentation: age, income, location.

PRACTICE
1) Two primary research methods for a new bakery. [5]
2) Life cycle → pricing strategy. [6]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('0a8213af-43c0-86bc-1db0-9be040103503'::uuid, 'cheat-biz-finance', 'Business Studies', 'Business Finance Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Business Finance Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Finance** in Business Studies. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

SOURCES
Internal: retained profit, sale of assets. External: loans, overdraft, trade credit, grants.
Short vs long term. Owners'' funds vs borrowed (gearing risk).

CASH FLOW
Inflows − outflows = net cash flow. Profit ≠ cash (credit sales, depreciation).
Forecast: predict timing; manage the gap.

BREAK-EVEN
BEP units = fixed costs ÷ (price − variable cost).
Margin of safety = actual sales − BEP.

CALCULATION
Fixed 600,000; price 5,000; variable 3,000 → contribution 2,000 → BEP = 300 units.
At 400 units: safety = 100 units.

PRACTICE
1) Break-even + margin of safety. [5]
2) Purpose of a cash flow forecast. [4]
3) Two internal + two external finance sources. [4]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1de8fdea-e4f2-e663-e4ab-a246a700d4b9'::uuid, 'cheat-geol-minerals-and-rocks', 'Geology', 'Minerals & Rocks Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Minerals & Rocks Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Minerals and rocks** in Geology. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

MINERAL ID
Colour, streak, lustre, hardness (Mohs 1–10: talc→diamond), cleavage, density.
Special: magnetite (magnetic), calcite (fizzes in acid).
Rock-formers: quartz, feldspar, mica, olivine, calcite.

IGNEOUS
Intrusive: coarse (slow cool) — granite, gabbro. Extrusive: fine (fast cool) — basalt, pumice.

SEDIMENTARY
Clastic by grain size: conglomerate → sandstone → shale. Chemical: limestone, salt. Organic: coal.
Features: bedding, fossils.

METAMORPHIC
Foliated: shale→slate→schist→gneiss. Non-foliated: limestone→marble, sandstone→quartzite.

PRACTICE
1) Three mineral ID properties. [2]
2) Metamorphic product of shale + limestone. [slate, marble]
3) Why coarse vs fine texture? [cooling rate]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('1100e139-f5de-cb85-98bb-d9e6abdc288f'::uuid, 'cheat-geol-volcanism-and-hazards', 'Geology', 'Volcanism Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Volcanism Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Volcanism and hazards** in Geology. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

VOLCANO TYPES
Shield: gentle, fluid lava. Composite: explosive, layered. Caldera: collapsed.

CAMEROON HAZARDS (exam gold)
Mount Cameroon (4,095 m, active — 1999, 2000 eruptions).
Lake Nyos 1986: CO₂ eruption, 1,700+ deaths → degassing pipes installed.
Lake Monoun 1984.

EARTHQUAKES
Fault movement; P, S, surface waves; Richter/magnitude scales.

PLATE TECTONICS
Divergent (ridges), convergent (subduction), transform (faults).
Cameroon Volcanic Line = INTRAPLATE (not a boundary).

PRACTICE
1) Nyos disaster + one mitigation. [5]
2) Why does Mount Cameroon erupt away from boundaries? [intraplate hot line]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, doc_type, content_kind, markdown_content)
values ('d44ae2e9-423f-1afd-0482-d22e4d0ce86a'::uuid, 'cheat-geol-economic-geology', 'Geology', 'Economic Geology Cheatsheet', 'english', 'ordinary', array['form_3','form_4','form_5']::text[], array['general','science','arts','commercial','technical']::text[], 'published', 'cheatsheet', 'cheatsheet', '# Economic Geology Cheatsheet

## What this sheet is for

Use this cheatsheet for fast revision of **Economic geology** in Geology. It is not a full course lesson. It is a focused GCE revision card for quick recall, exam traps, and short practice before moving into full papers.

## Core facts

CAMEROON RESOURCES (learn + locate!)
Bauxite: Minim-Martap (world-class). Iron: Mbalam, Kribi.
Gold: East Region river gravels (placers). Diamonds: Mobilong.
Limestone: Figuil (cement). Rutile, nickel-cobalt.
Oil/gas: Rio del Rey, Douala basins.

DATING
Relative: superposition, cross-cutting, index fossils.
Absolute: radiometric half-lives (C-14 recent, U ancient).

MINING & DEVELOPMENT
Exploration, investment, jobs ↔ land degradation, water pollution, displacement.
Sustainable mining balances both.

PRACTICE
1) Two metallic minerals + locations. [2]
2) One benefit + one cost of mining. [6]
3) How does an index fossil date rock? [short range + wide spread → correlates strata]

## How examiners usually test this

1. They ask for exact definitions, not loose explanations.
2. They test whether you can choose the correct method quickly.
3. They include traps based on common learner mistakes.
4. They reward answers that are short, accurate, and connected to the question.
5. They may use familiar Cameroon settings such as farms, markets, classrooms, businesses, hospitals, weather, banks, transport, or family budgets.

## Memory anchors

- Read the heading and say the topic aloud before revising.
- Cover the sheet and write five key facts from memory.
- Reopen the sheet and correct missing words, units, formulas, names, or examples.
- Turn one fact into a Paper 1 multiple-choice question.
- Turn another fact into a Paper 2 structured answer.

## Common traps

- Giving an example when the question asks for a definition.
- Writing a long answer when the question asks to state.
- Forgetting units, labels, signs, formula conditions, dates, or keywords.
- Copying a memorised sentence that does not answer the exact question.
- Ignoring words like **not**, **except**, **best**, **main**, **first**, or **most likely**.

## Quick practice routine

1. Spend two minutes reading only the key facts.
2. Spend three minutes answering the practice questions without looking.
3. Spend two minutes checking and rewriting corrections.
4. Spend one minute saying the topic aloud as if teaching a friend.

## Self-check before leaving

You are ready to leave this cheatsheet when you can explain the main facts without looking, answer the practice questions, identify one common trap, and write one clean exam sentence using the correct vocabulary.')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, doc_type = excluded.doc_type, content_kind = excluded.content_kind, markdown_content = excluded.markdown_content, updated_at = now();

commit;