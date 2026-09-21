-- Add Advanced Level cheatsheets so Lower Sixth and Upper Sixth learners have
-- revision cards that match their profile instead of seeing an empty page.

with advanced_cheatsheets(topic_id, subject, title, markdown_content) as (
  values
    ('puremath-mechanics', 'Pure Mathematics with Mechanics', 'Calculus and Mechanics Cheatsheet — A-Level GCE Cameroon', $md$
# Calculus and Mechanics Cheatsheet — A-Level GCE Cameroon

## Differentiation essentials

**Rules:** if \(y=x^n\), then \(\frac{dy}{dx}=nx^{n-1}\). For \(y=uv\), use \(u'v+uv'\). For \(y=\frac{u}{v}\), use \(\frac{u'v-uv'}{v^2}\). For composite functions, use the chain rule.

**Exam traps:** always simplify before differentiating; state stationary points by solving \(\frac{dy}{dx}=0\); classify using the sign change or \(\frac{d^2y}{dx^2}\).

## Integration essentials

**Rules:** \(\int x^n dx=\frac{x^{n+1}}{n+1}+C\), \(n\ne -1\). Definite integrals give area only after checking whether the curve crosses the axis.

**GCE move:** sketch the curve before area questions; split the interval where the function changes sign.

## Kinematics

Use \(v=\frac{ds}{dt}\), \(a=\frac{dv}{dt}\), and \(v\frac{dv}{ds}=a\). If acceleration is constant, use \(v=u+at\), \(s=ut+\frac{1}{2}at^2\), and \(v^2=u^2+2as\).

**Quick check:** units must match: displacement in m, velocity in m s\(^{-1}\), acceleration in m s\(^{-2}\).

## Forces and moments

Resolve forces horizontally and vertically. For equilibrium, \(\sum F_x=0\), \(\sum F_y=0\), and \(\sum M=0\). Moments are force × perpendicular distance.

**Common error:** taking moments with the wrong distance; use perpendicular distance from pivot to line of action.
$md$),
    ('puremath-statistics', 'Pure Mathematics with Statistics', 'Probability and Statistics Cheatsheet — A-Level GCE Cameroon', $md$
# Probability and Statistics Cheatsheet — A-Level GCE Cameroon

## Probability laws

\(P(A')=1-P(A)\). \(P(A\cup B)=P(A)+P(B)-P(A\cap B)\). For independent events, \(P(A\cap B)=P(A)P(B)\). For conditional probability, \(P(A|B)=\frac{P(A\cap B)}{P(B)}\).

## Binomial distribution

Use \(X\sim B(n,p)\) when trials are fixed, independent, have two outcomes, and constant probability. \(P(X=r)=\binom nr p^r(1-p)^{n-r}\). Mean \(=np\), variance \(=np(1-p)\).

## Normal distribution

Standardise with \(Z=\frac{X-\mu}{\sigma}\). Draw the curve, shade the required region, then use tables carefully.

**Trap:** \(P(X>a)\) is the right tail; \(P(a<X<b)\) is the difference of two cumulative probabilities.

## Correlation and regression

Correlation measures strength and direction; regression estimates one variable from another. Do not extrapolate far outside the data range.
$md$),
    ('furthermath-pure', 'Further Mathematics', 'Complex Numbers and Matrices Cheatsheet — A-Level GCE Cameroon', $md$
# Complex Numbers and Matrices Cheatsheet — A-Level GCE Cameroon

## Complex numbers

Write \(z=a+bi\), modulus \(|z|=\sqrt{a^2+b^2}\), argument \(\arg z=\theta\). Polar form is \(z=r(\cos\theta+i\sin\theta)\).

**De Moivre:** \((\cos\theta+i\sin\theta)^n=\cos n\theta+i\sin n\theta\). Use it for powers and roots.

## Matrices

For \(2\times2\) matrices, \(A^{-1}=\frac{1}{ad-bc}\begin{pmatrix}d&-b\\-c&a\end{pmatrix}\), if \(ad-bc\ne0\).

**Trap:** matrix multiplication is not commutative. Usually \(AB\ne BA\).

## Proof and series

For induction: prove base case, assume true for \(n=k\), prove true for \(n=k+1\), conclude.

For series, identify arithmetic, geometric, binomial, or telescoping form before expanding.
$md$),
    ('aphysics-fields-modern', 'Physics', 'Fields, Waves, Electronics Cheatsheet — A-Level GCE Cameroon', $md$
# Fields, Waves, Electronics Cheatsheet — A-Level GCE Cameroon

## Electric and gravitational fields

Field strength is force per unit test quantity. Electric field \(E=\frac{F}{q}\); gravitational field \(g=\frac{F}{m}\). Potential difference is work done per unit charge.

## Oscillations and waves

For SHM, \(a=-\omega^2x\), \(T=\frac{2\pi}{\omega}\). Wave speed \(v=f\lambda\). Superposition explains interference, stationary waves, and diffraction.

## Capacitors

\(Q=CV\), energy \(E=\frac{1}{2}CV^2\). In discharge, voltage and charge fall exponentially.

## Nuclear physics

Mass defect explains nuclear binding energy. Activity \(A=\lambda N\). Half-life means the time for activity or undecayed nuclei to halve.

**Exam habit:** state the law, write the formula, substitute with units, then interpret the answer.
$md$),
    ('achem-organic-physical', 'Chemistry', 'Organic and Physical Chemistry Cheatsheet — A-Level GCE Cameroon', $md$
# Organic and Physical Chemistry Cheatsheet — A-Level GCE Cameroon

## Organic mechanisms

Alkenes undergo electrophilic addition. Haloalkanes undergo nucleophilic substitution. Alcohols oxidise to aldehydes, ketones, or acids depending on structure and conditions.

## Equilibrium

For \(aA+bB\rightleftharpoons cC+dD\), \(K_c=\frac{[C]^c[D]^d}{[A]^a[B]^b}\). Temperature changes affect \(K_c\); concentration and pressure shift position but not \(K_c\) at constant temperature.

## Energetics

\(\Delta H =\) energy broken minus energy formed. Exothermic reactions have negative \(\Delta H\). Use Hess cycles carefully and keep arrows consistent.

## Electrochemistry

Oxidation is loss of electrons; reduction is gain. The more positive electrode potential is reduced. Cell emf \(=E^\circ_{\text{cathode}}-E^\circ_{\text{anode}}\).
$md$),
    ('abio-physiology-genetics', 'Biology', 'Physiology and Genetics Cheatsheet — A-Level GCE Cameroon', $md$
# Physiology and Genetics Cheatsheet — A-Level GCE Cameroon

## Enzymes and metabolism

Enzymes lower activation energy. Rate depends on temperature, pH, substrate concentration, inhibitors, and enzyme concentration. Competitive inhibition affects the active site; non-competitive inhibition affects enzyme shape.

## Coordination

Nerve impulses are electrical along neurons and chemical across synapses. Hormones travel in blood and are slower but longer-lasting.

## Genetics

DNA codes for proteins through transcription and translation. Mutation changes base sequence and may alter amino acid sequence. Use genetic crosses with clear symbols and parental genotypes.

## Ecology

Energy transfer is inefficient between trophic levels. Population change depends on birth rate, death rate, immigration, emigration, competition, predation, and disease.
$md$),
    ('geology-earth-materials', 'Geology', 'Geological Maps and Earth Processes Cheatsheet — A-Level GCE Cameroon', $md$
# Geological Maps and Earth Processes Cheatsheet — A-Level GCE Cameroon

## Minerals and rocks

Igneous rocks form from magma or lava; sedimentary rocks form by compaction and cementation; metamorphic rocks form under heat and pressure.

## Structures

Faults show displacement. Folds form under compression. Dip is the angle of bedding; strike is the compass direction of a horizontal line on the plane.

## Geological maps

Read contours first, then rock boundaries, then structures. V-shaped outcrops often indicate valley relationships. Always connect map evidence to geological history.

## Plate tectonics

Divergent boundaries form new crust; convergent boundaries destroy or thicken crust; transform boundaries slide past each other.
$md$),
    ('acs-software-data', 'Computer Science', 'Algorithms, Databases, Networks Cheatsheet — A-Level GCE Cameroon', $md$
# Algorithms, Databases, Networks Cheatsheet — A-Level GCE Cameroon

## Algorithms

Use sequence, selection, iteration, and modular design. Trace tables expose logic errors. State preconditions, inputs, outputs, and termination.

## Data structures

Arrays give indexed access. Stacks use LIFO; queues use FIFO. Trees support hierarchy; graphs model networks.

## Databases

Normalisation reduces redundancy. Primary keys identify rows; foreign keys link tables. SQL uses `select`, `from`, `where`, `group by`, `having`, and `order by`.

## Networks and security

Know IP addressing, routing, DNS, encryption, authentication, firewalls, malware, phishing, and backup strategy.
$md$),
    ('food-science-nutrition', 'Food Science and Nutrition', 'Advanced Food Science Cheatsheet — A-Level GCE Cameroon', $md$
# Advanced Food Science Cheatsheet — A-Level GCE Cameroon

## Nutrients

Carbohydrates supply energy; proteins support growth and repair; fats provide concentrated energy and fat-soluble vitamins. Vitamins and minerals regulate body processes.

## Food chemistry

Heat causes protein denaturation, starch gelatinisation, sugar caramelisation, and Maillard browning. Use these changes to explain cooking results.

## Meal planning

Consider age, activity, health condition, income, food availability, culture, and balance. Evaluate meals by nutrient adequacy and practical constraints.

## Food safety

Prevent contamination through hygiene, safe temperatures, separation of raw and cooked food, and proper storage.
$md$),
    ('aagric-production-economics', 'Agricultural Science', 'Crop, Animal, Soil and Farm Management Cheatsheet — A-Level GCE Cameroon', $md$
# Crop, Animal, Soil and Farm Management Cheatsheet — A-Level GCE Cameroon

## Crop physiology

Photosynthesis, respiration, transpiration, and mineral uptake determine yield. Limiting factors include light, water, nutrients, pests, disease, and spacing.

## Soil science

Soil texture affects drainage and aeration. Soil pH affects nutrient availability. Maintain fertility with organic manure, fertiliser, crop rotation, and erosion control.

## Animal production

Good production requires breed selection, feeding, housing, disease control, sanitation, and record keeping.

## Farm management

Calculate cost, revenue, profit, depreciation, gross margin, and break-even. Good answers combine biology with economics.
$md$)
)
insert into public.course_documents (
  id,
  topic_id,
  subject,
  title,
  language,
  level,
  class_levels,
  series,
  status,
  markdown_content,
  content_kind,
  doc_type
)
select
  (
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 1, 8) || '-' ||
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 9, 4) || '-' ||
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 13, 4) || '-' ||
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 17, 4) || '-' ||
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 21, 12)
  )::uuid,
  topic_id,
  subject,
  title,
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['a_science']::text[],
  'published',
  markdown_content,
  'cheatsheet',
  'cheatsheet'
from advanced_cheatsheets
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  content_kind = excluded.content_kind,
  doc_type = excluded.doc_type,
  updated_at = now();

with advanced_cross_series_cheatsheets(topic_id, subject, title, language, series, markdown_content) as (
  values
    ('econ-microeconomics', 'Economics', 'Microeconomics Cheatsheet — A-Level GCE Cameroon', 'english', array['a_arts', 'a_commercial']::text[], $md$
# Microeconomics Cheatsheet — A-Level GCE Cameroon

## Scarcity and choice

Economics begins with scarce resources and unlimited wants. Every decision has an opportunity cost: the best alternative forgone. In GCE essays, always connect choice to households, firms, government, or Cameroon development examples.

## Demand and supply

Demand slopes downward because lower prices encourage more quantity demanded. Supply slopes upward because higher prices reward producers. Equilibrium occurs where quantity demanded equals quantity supplied.

**Shift vs movement:** a price change causes movement along the curve. Income, population, taste, technology, taxes, subsidies, and input costs shift curves.

## Elasticity

Price elasticity of demand \(PED=\frac{\%\Delta Q_d}{\%\Delta P}\). If \(|PED|>1\), demand is elastic. If \(|PED|<1\), demand is inelastic.

**Exam use:** discuss revenue, tax burden, price controls, and producer decisions using elasticity.

## Production and costs

Short run has at least one fixed factor. Long run has all factors variable. Average cost, marginal cost, total cost, fixed cost, and variable cost must be separated clearly.
$md$),
    ('econ-macroeconomics-development', 'Economics', 'Macroeconomics and Development Cheatsheet — A-Level GCE Cameroon', 'english', array['a_arts', 'a_commercial']::text[], $md$
# Macroeconomics and Development Cheatsheet — A-Level GCE Cameroon

## National income

National income measures output, income, and expenditure. Use GDP, GNP/GNI, real income, nominal income, and per capita income correctly.

**Limitations:** informal sector, subsistence farming, income distribution, externalities, unpaid work, and quality of life.

## Money and banking

Money acts as medium of exchange, store of value, unit of account, and standard of deferred payment. Commercial banks create credit; the central bank regulates money supply and financial stability.

## Inflation and unemployment

Inflation is a sustained rise in general price level. Causes include demand-pull, cost-push, imported inflation, and monetary expansion. Unemployment may be structural, frictional, seasonal, cyclical, or disguised.

## Development

Development is broader than growth. Discuss education, health, infrastructure, industrialisation, agriculture, governance, technology, savings, investment, and trade.
$md$),
    ('aaccounting-financial-statements', 'Accounting', 'Financial Statements Cheatsheet — A-Level GCE Cameroon', 'english', array['a_commercial']::text[], $md$
# Financial Statements Cheatsheet — A-Level GCE Cameroon

## Core principle

Accounting answers three questions: what the business owns, what it owes, and whether it made profit. Keep layouts neat because GCE marks reward format discipline.

## Final accounts

Trading account finds gross profit. Profit and loss account finds net profit. Balance sheet/statement of financial position shows assets, liabilities, and capital.

**Key formulas:** gross profit = sales - cost of goods sold. Net profit = gross profit + income - expenses.

## Adjustments

Treat accruals, prepayments, depreciation, bad debts, provision for doubtful debts, closing stock, drawings, and inventory carefully before final totals.

## Ratios

Use profitability, liquidity, and efficiency ratios to interpret performance. A ratio without interpretation earns weak marks.
$md$),
    ('abusiness-strategy', 'Business Studies', 'Business Management Cheatsheet — A-Level GCE Cameroon', 'english', array['a_commercial']::text[], $md$
# Business Management Cheatsheet — A-Level GCE Cameroon

## Business objectives

Businesses may pursue profit, survival, growth, market share, social responsibility, or service. Explain conflicts between owners, workers, customers, government, and community.

## Management functions

Planning sets direction. Organising allocates resources. Leading motivates people. Controlling compares results with targets and corrects performance.

## Marketing

Use market research, segmentation, targeting, positioning, product, price, place, and promotion. In Cameroon examples, consider income levels, urban/rural access, transport, mobile money, and competition.

## Finance and operations

Match finance source to purpose and time period. Operations decisions cover quality, stock control, capacity, productivity, technology, and location.
$md$),
    ('alit-textual-analysis', 'English Literature', 'Literary Analysis Cheatsheet — A-Level GCE Cameroon', 'english', array['a_arts']::text[], $md$
# Literary Analysis Cheatsheet — A-Level GCE Cameroon

## Close reading

A strong literature answer starts from the text. Quote briefly, explain technique, then connect to theme, character, setting, conflict, or authorial purpose.

## Poetry

Check speaker, tone, imagery, diction, rhythm, structure, sound devices, symbolism, and shifts. Do not list devices; explain their effect.

## Drama and prose

For drama, discuss dialogue, stage action, conflict, irony, and dramatic tension. For prose, discuss narration, point of view, characterisation, plot structure, setting, and style.

## Essay structure

Write a thesis, then paragraphs with claim, evidence, explanation, and link back to the question. Comparison essays need both texts in the same paragraph.
$md$),
    ('special-bilingual-french', 'French', 'Fiche de Révision Français — Advanced Level GCE Cameroun', 'french', array['a_arts', 'a_science', 'a_commercial']::text[], $md$
# Fiche de Révision Français — Advanced Level GCE Cameroun

## Compréhension

Lisez d'abord les questions, puis le texte. Repérez l'idée principale, le ton, les connecteurs logiques, les pronoms de reprise et les mots clés.

## Expression écrite

Une bonne rédaction contient une introduction claire, des paragraphes organisés, des exemples précis et une conclusion qui répond au sujet.

## Grammaire

Maîtrisez les temps, l'accord du participe passé, le discours direct/indirect, la concordance des temps, les pronoms relatifs et les connecteurs.

## Traduction

Traduisez le sens, pas seulement les mots. Respectez le registre, les temps verbaux et les expressions idiomatiques.
$md$)
)
insert into public.course_documents (
  id,
  topic_id,
  subject,
  title,
  language,
  level,
  class_levels,
  series,
  status,
  markdown_content,
  content_kind,
  doc_type
)
select
  (
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 1, 8) || '-' ||
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 9, 4) || '-' ||
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 13, 4) || '-' ||
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 17, 4) || '-' ||
    substr(md5('studyspark:a-level-cheatsheet:' || topic_id), 21, 12)
  )::uuid,
  topic_id,
  subject,
  title,
  language,
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  series,
  'published',
  markdown_content,
  'cheatsheet',
  'cheatsheet'
from advanced_cross_series_cheatsheets
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  content_kind = excluded.content_kind,
  doc_type = excluded.doc_type,
  updated_at = now();

notify pgrst, 'reload schema';
