const fs = require("fs");
const path = require("path");

const O_SERIES = ["general", "science", "arts", "commercial", "technical"];
const O_CLASSES = ["form_3", "form_4", "form_5"];

const SHEETS = [
  {
    subject: "Economics",
    slug: "econ",
    topic: "Basic concepts",
    title: "Basic Economic Concepts Cheatsheet",
    body: `CORE IDEAS
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
2) Name the four factors of production and rewards. [4]`,
  },

  {
    subject: "Economics",
    slug: "econ",
    topic: "Demand and supply",
    title: "Demand & Supply Cheatsheet",
    body: `DEMAND
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
2) Two causes of a demand shift. [income, substitute price]`,
  },

  {
    subject: "Economics",
    slug: "econ",
    topic: "Elasticity",
    title: "Elasticity Cheatsheet",
    body: `FORMULA
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
2) Why tax cigarettes? [inelastic demand → reliable revenue + discourages use]`,
  },

  {
    subject: "Economics",
    slug: "econ",
    topic: "Production and money",
    title: "Production & Money Cheatsheet",
    body: `PRODUCTION
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
2) Two economies of scale for a large brewery. [bulk buying, specialised machines]`,
  },

  {
    subject: "Economics",
    slug: "econ",
    topic: "Trade",
    title: "Trade Cheatsheet",
    body: `KEY TERMS
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
2) 2 visible + 2 invisible Cameroonian exports. [cocoa, oil / banking, transport]`,
  },

  {
    subject: "Commerce",
    slug: "comm",
    topic: "Home trade",
    title: "Home Trade Cheatsheet",
    body: `RETAILERS (sell to consumers)
Small: hawkers, market stalls, kiosks. Large: supermarkets, department stores, online.

WHOLESALER SERVICES (exam favourite — learn 4!)
To retailer: breaking bulk, storage, credit, transport, product information.
To producer: bulk buying, storage, distribution, market information.

CHANNEL
Producer → wholesaler → retailer → consumer.

PRACTICE
1) Four services of a wholesaler to a retailer. [4]
2) Why do small kiosks survive despite supermarkets? [convenience, credit, location]`,
  },

  {
    subject: "Commerce",
    slug: "comm",
    topic: "Business units",
    title: "Business Units Cheatsheet",
    body: `FORMS OF OWNERSHIP
Sole trader: 1 owner, unlimited liability, quick decisions, limited capital.
Partnership: 2–20, more capital/skills, disagreement risk.
Private Ltd: limited liability, shares private. Public Ltd: shares public, huge capital.
Co-operative: members pool resources (cocoa co-ops). Public corporation: state-owned (Camwater, CDC).

CHOICE FACTORS
Capital needed, liability, control, continuity, cost of formation.

PRACTICE
1) 2 advantages + 2 disadvantages of sole trader. [4]
2) Two benefits of a cocoa co-operative. [better prices, shared transport]`,
  },

  {
    subject: "Commerce",
    slug: "comm",
    topic: "Aids to trade",
    title: "Aids to Trade Cheatsheet",
    body: `TRANSPORT
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
2) Principle of indemnity + example. [compensation restores, never exceeds, the loss]`,
  },

  {
    subject: "Commerce",
    slug: "comm",
    topic: "Business documents",
    title: "Business Documents Cheatsheet",
    body: `THE ORDER (memorise!)
1) Enquiry → 2) Quotation → 3) Order → 4) Delivery note → 5) Invoice → 6) Statement → 7) Receipt.
Returns: credit note (seller owes buyer). Undercharge: debit note.

INTERNATIONAL
Indent (order via agent), bill of lading (title to shipped goods), certificate of origin, letter of credit.
FOB = free on board. CIF = cost + insurance + freight.

PRACTICE
1) Arrange: invoice, order, quotation, delivery note, receipt. [quotation→order→delivery note→invoice→receipt]
2) Purpose of a bill of lading. [document of title to goods shipped]`,
  },

  {
    subject: "Computer Science",
    slug: "cs",
    topic: "Data representation",
    title: "Data Representation Cheatsheet",
    body: `BINARY
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
2) AND gate truth table. [00→0, 01→0, 10→0, 11→1]`,
  },

  {
    subject: "Computer Science",
    slug: "cs",
    topic: "Programming and algorithms",
    title: "Programming Cheatsheet",
    body: `ALGORITHM
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
Syntax: breaks grammar → won't run. Logic: runs, wrong answer. Runtime: crash (÷0).
Testing: normal, boundary, erroneous data.

TRACE TABLES (guaranteed marks)
x=1; WHILE x<5: OUTPUT x; x=x+2 → outputs 1, 3 (x ends at 5).

PRACTICE
1) Pseudocode: average of 5 numbers. [sum/5 pattern]
2) Trace: x=1; WHILE x<5: OUTPUT x; x=x+2. [1, 3]`,
  },

  {
    subject: "Computer Science",
    slug: "cs",
    topic: "Databases",
    title: "Databases Cheatsheet",
    body: `STRUCTURE
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
2) Query: students with average > 12. [SELECT * WHERE average > 12]`,
  },

  {
    subject: "Computer Science",
    slug: "cs",
    topic: "Networks and internet",
    title: "Networks & Internet Cheatsheet",
    body: `NETWORKS
LAN: one site (school lab). WAN: across sites (the internet).
Star topology: central switch; one cable failure affects one machine (most common).
Router: connects networks. Switch: connects devices in a LAN.

INTERNET
Internet = network of networks. WWW = a service on it (HTTP/HTTPS).
IP address identifies device. DNS: name (studyspark.cm) → IP.

DANGERS & PROTECTION
Malware, phishing, cyberbullying, identity theft.
Protection: strong passwords, antivirus, firewall, backups, HTTPS, don't click unknown links.

PRACTICE
1) LAN vs WAN — two differences. [2]
2) What does DNS do? [translates domain names to IP addresses]`,
  },

  {
    subject: "ICT",
    slug: "ict",
    topic: "Office applications",
    title: "Office Applications Cheatsheet",
    body: `WORD PROCESSOR
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
2) Two validation checks. [type, range]`,
  },

  {
    subject: "ICT",
    slug: "ict",
    topic: "Internet and safety",
    title: "Internet & Safety Cheatsheet",
    body: `INTERNET
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
2) Two ergonomic measures. [screen at eye level, regular breaks]`,
  },

  {
    subject: "French",
    slug: "fr",
    topic: "Grammaire",
    title: "Grammaire Cheatsheet",
    body: `ACCORDS
Nom-adjectif: genre + nombre (« une maison blanche », « des maisons blanches »).
Pluriels spéciaux: cheval→chevaux, journal→journaux, œil→yeux.
Sujet-verbe: « La fille de mon voisin CHANTE » (la fille chante!).
Participe passé: avec être → s'accorde (« Elle est partie »); avec avoir → s'accorde avec COD avant (« les pommes que j'ai mangées »).

PRONOMS
qui (sujet), que (objet), où (lieu/temps), dont (complément).
Remplacement: « Je donne le livre à Marie » → « Je LE LUI donne ».

PRACTICE
1) Pluriel: un cheval, un journal, un œil. [chevaux, journaux, yeux]
2) Remplacez: « Il parle à ses amis. » [Il leur parle]`,
  },

  {
    subject: "French",
    slug: "fr",
    topic: "Conjugaison",
    title: "Conjugaison Cheatsheet",
    body: `PRÉSENT (1er groupe)
-e, -es, -e, -ons, -ez, -ent.

PASSÉ COMPOSÉ
Auxiliaire (avoir/être) au présent + participe passé.
« J'ai mangé », « Elle est allée ».
Piège: « ils se sont lavé les mains » (COD après → pas d'accord).

IMPARFAIT
Radical du « nous » + -ais, -ais, -ait, -ions, -iez, -aient.
« nous mangions » → « je mangeais ».

FUTUR SIMPLE
Infinitif + -ai, -as, -a, -ons, -ez, -ont.
Irréguliers: être→ser-, avoir→aur-, aller→ir-, faire→fer-, venir→viendr-.

AUTRES
Futur proche: aller + infinitif. Passé récent: venir de + infinitif.
Plus-que-parfait: imparfait de l'auxiliaire + participe passé.

PRACTICE
1) Passé composé: « Elle (aller) au marché. » [Elle est allée]
2) Imparfait: « nous (habiter) » → « j'habitais »`,
  },

  {
    subject: "French",
    slug: "fr",
    topic: "Compréhension et composition",
    title: "Compréhension & Composition Cheatsheet",
    body: `COMPRÉHENSION
Lisez deux fois: sens général, puis avec les questions.
Types: factuelle (dans le texte), vocabulaire en contexte, inférence, ton de l'auteur.
« Avec vos propres mots » → recopier = ZÉRO.

COMPOSITION
Récit: passé (imparfait + passé composé), début→problème→fin.
Descriptif: les cinq sens. Argumentatif: opinion + 3 arguments + exemples + conclusion.

STRUCTURE
Intro accrocheuse → paragraphes de 4-6 phrases (une idée chacun) → conclusion.
Plan de 5 minutes AVANT d'écrire. Relisez: accords + orthographe.

PRACTICE
1) Lettre à votre oncle: votre première journée d'examen. [20]
2) Compréhension: texte sur l'exode rural, 5 questions. [15]`,
  },

  {
    subject: "History",
    slug: "hist",
    topic: "Cameroon before 1884",
    title: "Cameroon Before 1884 Cheatsheet",
    body: `PEOPLES & MIGRATIONS
Bantu migrations: from Nigeria–Cameroon borderlands → Central/Southern Africa (iron + farming).
Groups: Bantu forest (Betis, Fang, Bulu), Semi-Bantu (Bamileke, Tikar, Bamoun), Sudanic (Fulbe, Kanuri), Pygmies (Baka).

KINGDOMS
Bamoun (King Njoya — invented his own script), Kotoko (Logone-Birni), Fulbe lamidates (after Modibo Adama's 19th-c jihad).

TRADE
Trans-Saharan (north): salt, cloth ↔ slaves, ivory. Coastal (from 15th c Portuguese): guns, cloth ↔ palm oil, slaves.

INSTITUTIONS
Chiefdoms, councils of elders, age grades, secret societies (Ngumba, Kwifon).

PRACTICE
1) Name two pre-colonial kingdoms. [Bamoun, Kotoko]
2) Who was Modibo Adama? [Fulbe leader of the 19th-c jihad → lamidates]`,
  },

  {
    subject: "History",
    slug: "hist",
    topic: "Colonial rule",
    title: "Colonial Rule Cheatsheet",
    body: `GERMAN RULE (1884–1916)
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
3) Two features of German rule. [plantations, forced labour]`,
  },

  {
    subject: "History",
    slug: "hist",
    topic: "Independence and reunification",
    title: "Independence & Reunification Cheatsheet",
    body: `UPC (1948)
Ruben Um Nyobé, Ernest Ouandié: immediate independence + reunification. Banned 1955 → maquis.
Um Nyobé killed 1958; Moumié poisoned 1960; Ouandié executed 1971.

DATES (memorise!)
1 Jan 1960: French Cameroon independent (Ahidjo president).
11 Feb 1961: plebiscite — Southern Cameroons votes to join.
1 Oct 1961: FEDERATION (two states).
1972: unitary state (referendum). 1984: Republic of Cameroon.

PRACTICE
1) Why the 1961 plebiscite + result? [UN decolonisation of British Cameroons; South voted to join]
2) Founder of UPC + one demand. [Um Nyobé; immediate independence]`,
  },

  {
    subject: "History",
    slug: "hist",
    topic: "African nationalism",
    title: "African Nationalism Cheatsheet",
    body: `CAUSES (after 1945)
WWII veterans' experience, education, pan-Africanism (5th PAC 1945), economic grievances, weakened empires.

WAVES
Ghana 1957 (first sub-Saharan). 1960: "Year of Africa" (17 states).

LEADERS
Nkrumah (Ghana), Sékou Touré (Guinea — "No" to de Gaulle 1958), Kenyatta (Kenya), Nyerere (Tanzania — Ujamaa), Senghor (Senegal).

APARTHEID
1948–1994. Sharpeville 1960, Soweto 1976, Mandela freed 1990, elections 1994.

PRACTICE
1) Two causes of nationalism post-1945. [veterans, pan-Africanism]
2) Two leaders + countries. [Nkrumah/Ghana, Kenyatta/Kenya]`,
  },

  {
    subject: "History",
    slug: "hist",
    topic: "World wars",
    title: "World Wars Cheatsheet",
    body: `WWI (1914–18)
Causes: MAIN (Militarism, Alliances, Imperialism, Nationalism) + Sarajevo (Franz Ferdinand, June 1914).
Trench warfare. Cameroon campaign: Allies take German Kamerun 1914–16.
Versailles 1919: war guilt, reparations, League of Nations.

WWII (1939–45)
Hitler's expansion → Poland. Holocaust. Turning points: Stalingrad, D-Day.
Atomic bombs: Hiroshima, Nagasaki (Aug 1945). UN founded 1945.

COLD WAR
USA vs USSR. Berlin Wall 1961, Cuban Missile Crisis 1962.
End: Wall falls 1989, USSR dissolves 1991.

PRACTICE
1) Two MAIN causes of WWI. [militarism, alliances]
2) One consequence of Versailles. [German resentment → WWII]
3) Why did the Cold War end in 1991? [USSR dissolution]`,
  },

  {
    subject: "Geography",
    slug: "geo",
    topic: "Landforms",
    title: "Landforms Cheatsheet",
    body: `EARTH & ROCKS
Layers: crust, mantle, core.
Igneous (magma — basalt, granite), sedimentary (layers — limestone, sandstone), metamorphic (changed — marble).
Cameroon Volcanic Line: Mount Cameroon (4,095 m, active), Lake Nyos.

WEATHERING vs EROSION
Weathering: breaks rock IN PLACE (physical, chemical, biological).
Erosion: MOVES material (rivers, wind, waves).
River landforms: V-valleys, waterfalls, meanders, ox-bow lakes, deltas.

PRACTICE
1) Three rock types + one example each. [3]
2) Why does Mount Cameroon exist far from a plate boundary? [intraplate volcanic line]`,
  },

  {
    subject: "Geography",
    slug: "geo",
    topic: "Climate",
    title: "Climate Cheatsheet",
    body: `INSTRUMENTS
Temperature: thermometer. Rain: rain gauge. Wind: anemometer + vane.
Humidity: hygrometer. Pressure: barometer. Stevenson screen shelters them.

CAMEROON'S CLIMATES
North (Sudan/Sahel): ONE wet season May–Sept, hot.
Centre: tropical — two seasons. South: equatorial — heavy rain (Douala ~4,000 mm/yr).
ITCZ controls the seasons. Highlands cooler (Bamenda).

CLIMATE CHANGE
Lake Chad shrinking, irregular rains, delayed planting.
Responses: reforestation, climate-smart agriculture.

PRACTICE
1) Describe Far North climate from a rainfall graph. [one wet season, May–Sept]
2) Two effects of climate change in Cameroon. [delayed planting, floods]`,
  },

  {
    subject: "Geography",
    slug: "geo",
    topic: "Population and settlement",
    title: "Population Cheatsheet",
    body: `DISTRIBUTION
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
2) Site vs situation. [2]`,
  },

  {
    subject: "Geography",
    slug: "geo",
    topic: "Economic activities",
    title: "Economic Activities Cheatsheet",
    body: `AGRICULTURE
Subsistence: plantain, cassava, maize, groundnuts.
Cash crops: cocoa (Centre/South), coffee (West/NW), cotton (North), bananas, palm oil, tea.
Plantations: CDC, SOSUCAM. Problems: low prices, roads, ageing farmers.

INDUSTRY & ENERGY
Manufacturing: Douala, Yaoundé (breweries, cement).
Mining: bauxite (Minim-Martap), iron (Mbalam), gold (East).
Energy: hydro (Sanaga dams, Memve'ele), oil (Rio del Rey).

TRANSPORT & TRADE
Roads dominate; ports: Douala (silting), Kribi (deep-sea), Limbe.
Tourism: Waza, Kribi beaches, Mount Cameroon, Ngondo.

PRACTICE
1) Two factors favouring cocoa in the Centre. [climate, soils]
2) Kribi port: one advantage + one disadvantage. [deep-sea for big ships / costly]`,
  },

  {
    subject: "Geography",
    slug: "geo",
    topic: "Map work",
    title: "Map Work Cheatsheet",
    body: `SCALE
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
2) 6-figure ref: centre of square 2334. [235345 approx]`,
  },

  {
    subject: "Citizenship Education",
    slug: "civ",
    topic: "Rights and duties",
    title: "Rights & Duties Cheatsheet",
    body: `CITIZENSHIP
Legal member of a state: by birth (jus soli/sanguinis), naturalisation, marriage, adoption.

RIGHTS (3 categories)
Civil/political: life, speech, fair trial, vote.
Economic/social: education, health, work.
Cultural/environmental: culture, healthy environment.
Sources: UDHR 1948, African Charter 1981, Cameroon Constitution 1996 (preamble).
Children: CRC 1989 — survival, development, protection, participation.

DUTIES
Obey law, pay taxes, defend nation, protect public property, environment, respect others' rights, vote.

PRACTICE
1) Three categories + one example each. [3]
2) Two duties + explain one. [3]`,
  },

  {
    subject: "Citizenship Education",
    slug: "civ",
    topic: "State institutions",
    title: "State Institutions Cheatsheet",
    body: `THE REPUBLIC
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
3) Two qualities of a free election. [secret ballot, equal suffrage]`,
  },

  {
    subject: "Religious Studies",
    slug: "rel",
    topic: "Old testament",
    title: "Old Testament Cheatsheet",
    body: `STRUCTURE
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
2) Two prophets + one message each. [4]`,
  },

  {
    subject: "Religious Studies",
    slug: "rel",
    topic: "New testament",
    title: "New Testament Cheatsheet",
    body: `GOSPELS
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
2) Events of the Last Supper + importance. [6]`,
  },

  {
    subject: "Religious Studies",
    slug: "rel",
    topic: "Christian life today",
    title: "Christian Life Cheatsheet",
    body: `MORAL APPLICATIONS (teaching → scripture → situation → response)
Marriage/family: Gen 2, Eph 5. Wealth: Mt 6:24, Proverbs.
Justice/poor: Amos 5:24, James 2. Forgiveness: Mt 18.
Corruption: Ex 20, Rom 13 (Cameroonian application!).
Tribalism/unity: Gal 3:28. Creation care: Gen 1:28, Ps 24.
Life: sanctity of life. Alcohol/drugs: temperance.

CHURCH IN CAMEROON
Missions → education + health; ecumenism; interfaith tolerance (Islam, traditional religion).

PRACTICE
1) "Religion has no place in fighting corruption." Discuss + scripture. [10]
2) Christian response to exam malpractice. [5]`,
  },

  {
    subject: "Logic",
    slug: "log",
    topic: "Syllogisms",
    title: "Syllogisms Cheatsheet",
    body: `BASICS
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
3) Test: All M are P; All S are M; ∴ All S are P. [valid]`,
  },

  {
    subject: "Logic",
    slug: "log",
    topic: "Fallacies",
    title: "Fallacies Cheatsheet",
    body: `FORMAL
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
4) If it rains, match cancelled. No rain. ∴ match not cancelled. [denying antecedent — INVALID]`,
  },

  {
    subject: "Agricultural Science",
    slug: "agr",
    topic: "Soils",
    title: "Soils Cheatsheet",
    body: `PROFILE
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
3) Yellowing leaves = which deficiency? [nitrogen]`,
  },

  {
    subject: "Agricultural Science",
    slug: "agr",
    topic: "Crop production",
    title: "Crop Production Cheatsheet",
    body: `PRINCIPLES
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
3) One advantage of vegetative propagation. [true to type, faster]`,
  },

  {
    subject: "Agricultural Science",
    slug: "agr",
    topic: "Animal production",
    title: "Animal Production Cheatsheet",
    body: `POULTRY
Broilers (meat, 6–8 wks) vs layers (eggs, ~20 wks).
Housing: deep litter vs battery. Brooding warmth first weeks.
Feed: starter → grower → layers' mash. Water always clean.
Vaccines: Newcastle, Gumboro. Biosecurity: footbaths, isolate new birds.
Healthy signs: alert, glossy feathers, good intake.

PIGS
Farrowing care; African swine fever: NO vaccine → strict biosecurity.
CATTLE: zebu, tsetse challenge in south; CBPP, trypanosomiasis; dry-season supplementation.
SMALL RUMINANTS: goats/sheep browse+graze; deworm parasites. Fish: tilapia ponds.

PRACTICE
1) Vaccination schedule for broilers. [4]
2) Two biosecurity measures. [footbaths, isolation]
3) Why no vaccine for ASF? [viral — control by biosecurity only]`,
  },

  {
    subject: "Human Biology",
    slug: "hbio",
    topic: "Body systems",
    title: "Body Systems Cheatsheet",
    body: `ORGANISATION
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
2) Elbow joint type + movement. [hinge; flexion/extension]`,
  },

  {
    subject: "Human Biology",
    slug: "hbio",
    topic: "Blood and circulation",
    title: "Blood & Circulation Cheatsheet",
    body: `BLOOD
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
2) Trace: lungs → pulmonary vein → left atrium → left ventricle → aorta → body. [4]`,
  },

  {
    subject: "Human Biology",
    slug: "hbio",
    topic: "Reproduction and health",
    title: "Reproduction & Health Cheatsheet",
    body: `SYSTEMS
Male: testes (sperm + testosterone) → vas deferens. Female: ovaries (ova + oestrogen/progesterone) → oviduct → uterus.

CYCLE
~28 days; ovulation ~day 14; hormones FSH, LH, oestrogen, progesterone.
Fertilisation in oviduct → implantation. Placenta: exchange + hormones + barrier.

HEALTH
Antenatal care; dangers: malaria, anaemia.
Contraception methods. STIs: HIV via blood/sex/mother-to-child — NOT casual contact; testing + prevention.

PRACTICE
1) Draw + label female reproductive system. [5]
2) Three placenta functions. [exchange, barrier, hormones]`,
  },

  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Factor theorem",
    title: "Factor Theorem Cheatsheet",
    body: `THEOREMS
Remainder: f(x) ÷ (x−a) leaves remainder f(a).
Factor: (x−a) is a factor ⟺ f(a) = 0.

CUBIC SOLVING
Find one root by inspection → divide → factorise quadratic.

EXAMPLE
x³−6x²+11x−6=0: x=1 works → (x−1)(x²−5x+6) = (x−1)(x−2)(x−3) → roots 1, 2, 3.

PRACTICE
1) f(x)=x³+ax²−5x+b; factors (x−2), (x+1). Find a, b. [a=−2, b=−2]
2) Solve x³−2x²−5x+6=0. [−2, 1, 3]`,
  },

  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Differentiation",
    title: "Differentiation Cheatsheet",
    body: `STANDARD RESULTS
xⁿ→nxⁿ⁻¹; sin x→cos x; cos x→−sin x; eˣ→eˣ; ln x→1/x.
Chain: dy/dx = dy/du × du/dx. Product: u'v+uv'. Quotient: (u'v−uv')/v².

FIRST PRINCIPLES (expect one!)
f'(x) = lim(h→0) [f(x+h)−f(x)]/h.

APPLICATIONS
Tangent: gradient = f'(a) at x=a. Normal: −1/gradient.
Stationary: dy/dx=0; classify with d²y/dx² (+ = min, − = max).
Rates: dy/dt = dy/dx × dx/dt.

EXAMPLE
y=x³−2x at x=1: dy/dx=3x²−2=1; point (1,−1) → tangent y = x−2.

PRACTICE
1) First principles: f(x)=x². [2x]
2) Max of y=x³−3x on [−2,2]. [2 at x=−1]
3) Normal to y=x²−3x at x=2. [gradient −1/1 → y=−x+?]`,
  },

  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Integration",
    title: "Integration Cheatsheet",
    body: `STANDARD INTEGRALS
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
3) s=t³−6t²: rest when? [t=0, 4; a=12 m/s² at t=4]`,
  },

  {
    subject: "Food and Nutrition",
    slug: "fnut",
    topic: "Nutrients",
    title: "Nutrients Cheatsheet",
    body: `ENERGY VALUES
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
2) Two deficiency diseases + causes. [2]`,
  },

  {
    subject: "Food and Nutrition",
    slug: "fnut",
    topic: "Meal planning",
    title: "Meal Planning Cheatsheet",
    body: `PLANNING FACTORS
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
1) Day's meals for a pregnant woman (limited budget) + justification. [10]
2) Two ways to conserve vitamin C when cooking. [little water, short time]`,
  },

  {
    subject: "Food and Nutrition",
    slug: "fnut",
    topic: "Preservation and hygiene",
    title: "Preservation & Hygiene Cheatsheet",
    body: `SPOILAGE CAUSES
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
3) Cross-contamination + prevention. [4]`,
  },

  {
    subject: "English Literature",
    slug: "lit",
    topic: "Literary terms",
    title: "Literary Terms Cheatsheet",
    body: `PLOT & STRUCTURE
Exposition, rising action, climax, resolution. Foreshadowing, flashback.

CHARACTER & VOICE
Direct/indirect characterisation. Point of view: 1st person, 3rd limited, omniscient.
Tone (speaker's attitude), mood (reader's feeling).

LANGUAGE
Simile (like/as), metaphor (direct), personification, symbolism.
Irony: verbal (says opposite), dramatic (audience knows), situational (outcome opposite).
Soliloquy (alone, thoughts aloud), monologue, dialogue.

FORM
Rhyme, rhythm, stanza, sonnet (14 lines), ballad, free verse, prose, drama.

PRACTICE
1) Define dramatic irony + example. [3]
2) Simile vs metaphor. [2]`,
  },

  {
    subject: "English Literature",
    slug: "lit",
    topic: "Prose and drama",
    title: "Prose & Drama Cheatsheet",
    body: `PROSE QUESTIONS
Character: trait → episode → evidence → significance.
Theme: state → trace through 3 episodes → writer's message.
Setting: describe → effect on events/characters.

DRAMA QUESTIONS
Treat as PERFORMANCE: movement, pauses, staging.
Conflict: who wants what, what blocks, resolution.
Dramatic irony: audience knows what character doesn't.
Know key scenes word-perfectly.

ESSAY FORMULA (all genres)
Intro (text + focus + thesis) → 3-4 paragraphs (POINT → QUOTE → ANALYSIS → LINK) → conclusion.
Present tense about texts. Never narrate without analysing.

PRACTICE
1) One character's development through a novel. [10]
2) "The setting is almost a character." Discuss. [15]`,
  },

  {
    subject: "Accounting",
    slug: "acct",
    topic: "Double entry",
    title: "Double Entry Cheatsheet",
    body: `THE RULES
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
2) State the accounting equation. [1]`,
  },

  {
    subject: "Accounting",
    slug: "acct",
    topic: "Final accounts",
    title: "Final Accounts Cheatsheet",
    body: `INCOME STATEMENT
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
3) Insurance 60,000 incl. 12,000 next year. [charge 48,000; asset 12,000]`,
  },

  {
    subject: "Accounting",
    slug: "acct",
    topic: "Control and reconciliation",
    title: "Control Accounts Cheatsheet",
    body: `CONTROL ACCOUNTS
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
3) Name two errors a trial balance does not reveal. [2]`,
  },

  {
    subject: "Business Studies",
    slug: "biz",
    topic: "Business types",
    title: "Business Types Cheatsheet",
    body: `OWNERSHIP
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
2) Define added value + calculate. [3]`,
  },

  {
    subject: "Business Studies",
    slug: "biz",
    topic: "Marketing",
    title: "Marketing Cheatsheet",
    body: `THE 4Ps
Product: design, branding, life cycle (intro→growth→maturity→decline).
Price: cost-plus, competitive, penetration (low entry), skimming (high launch).
Place: channels — producer→wholesaler→retailer→consumer.
Promotion: advertising, sales promotion (discounts, samples), personal selling, social media.

MARKET RESEARCH
Primary: surveys, interviews, observation. Secondary: reports, statistics.
Segmentation: age, income, location.

PRACTICE
1) Two primary research methods for a new bakery. [5]
2) Life cycle → pricing strategy. [6]`,
  },

  {
    subject: "Business Studies",
    slug: "biz",
    topic: "Finance",
    title: "Business Finance Cheatsheet",
    body: `SOURCES
Internal: retained profit, sale of assets. External: loans, overdraft, trade credit, grants.
Short vs long term. Owners' funds vs borrowed (gearing risk).

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
3) Two internal + two external finance sources. [4]`,
  },

  {
    subject: "Geology",
    slug: "geol",
    topic: "Minerals and rocks",
    title: "Minerals & Rocks Cheatsheet",
    body: `MINERAL ID
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
3) Why coarse vs fine texture? [cooling rate]`,
  },

  {
    subject: "Geology",
    slug: "geol",
    topic: "Volcanism and hazards",
    title: "Volcanism Cheatsheet",
    body: `VOLCANO TYPES
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
2) Why does Mount Cameroon erupt away from boundaries? [intraplate hot line]`,
  },

  {
    subject: "Geology",
    slug: "geol",
    topic: "Economic geology",
    title: "Economic Geology Cheatsheet",
    body: `CAMEROON RESOURCES (learn + locate!)
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
3) How does an index fossil date rock? [short range + wide spread → correlates strata]`,
  },
];

function sqlStr(value) {
  return "'" + String(value).replace(/'/g, "''") + "'";
}

const topicInserts = [];
const docInserts = [];

for (const sheet of SHEETS) {
  const topicId = `cheat-${sheet.slug}-${sheet.topic
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "")}`;
  topicInserts.push(
    `insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)\n` +
      `values (${sqlStr(topicId)}, ${sqlStr(sheet.subject)}, ${sqlStr(sheet.title)}, ${sqlStr("Quick revision cheatsheet: " + sheet.topic + ".")}, 'ordinary', ` +
      `array[${O_CLASSES.map(sqlStr).join(",")}]::text[], array[${O_SERIES.map(sqlStr).join(",")}]::text[], 0, 15)\n` +
      `on conflict (id) do update set title = excluded.title, updated_at = now();`,
  );
  docInserts.push(
    `insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, doc_type, markdown_content)\n` +
      `values (${sqlStr(topicId)}, ${sqlStr(sheet.subject)}, ${sqlStr(sheet.title)}, ${sqlStr(sheet.subject === "French" ? "french" : "english")}, 'ordinary', ` +
      `array[${O_CLASSES.map(sqlStr).join(",")}]::text[], array[${O_SERIES.map(sqlStr).join(",")}]::text[], 'published', 'cheatsheet', ${sqlStr(sheet.body)});`,
  );
}

const sql = ["begin;", ...topicInserts, ...docInserts, "commit;"].join("\n\n");
fs.writeFileSync(path.join(__dirname, "insert_cheatsheets_batch2.sql"), sql);
console.log(
  `Generated ${topicInserts.length} cheatsheets. SQL size: ${(sql.length / 1024).toFixed(0)} KB`,
);
