const fs = require("fs");
const path = require("path");

const O_SERIES = ["general", "science", "arts", "commercial", "technical"];
const A_SERIES = ["a_science", "a_arts", "a_commercial"];
const O_CLASSES = ["form_3", "form_4", "form_5"];
const A_CLASSES = ["lower_sixth", "upper_sixth"];

const SHEETS = [
  // ============ MATHEMATICS (O) ============
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Number and operations",
    title: "Number & Operations Cheatsheet",
    body: `KEY FACTS
BODMAS order: Brackets, Orders, Division/Multiplication (left→right), Addition/Subtraction.
Directed numbers: same signs × ÷ = positive; different signs = negative.
Fractions: add → common denominator; multiply → cancel first; divide → flip second.
Percent change = change ÷ original × 100.
Ratio: total ÷ total parts = one part; multiply by each share's parts.
Standard form: A × 10ⁿ, 1 ≤ A < 10. 45,600 = 4.56 × 10⁴.
Indices: aᵐ×aⁿ=aᵐ⁺ⁿ; aᵐ÷aⁿ=aᵐ⁻ⁿ; (aᵐ)ⁿ=aᵐⁿ; a⁰=1; a⁻ⁿ=1/aⁿ.
Rounding: d.p. = digits after point; s.f. = significant digits from the left.
Speed = distance ÷ time.

EXAM TRAPS
(−2)² = 4 but −2² = −4. (x+4)² ≠ x²+16 — it is x²+8x+16.
0.5⁻¹ = 2 (negative index flips).
Estimate first: 0.048 × 391 ≈ 0.05 × 400 = 20.

PRACTICE
1) Evaluate −8 + 12 ÷ (−4) × (−3). [1]
2) Write 0.0000439 in standard form. [4.39 × 10⁻⁵]
3) Share 40,000 FCFA in ratio 3:5. [15,000 : 25,000]`,
  },

  {
    subject: "Mathematics",
    slug: "math",
    topic: "Algebra and equations",
    title: "Algebra & Equations Cheatsheet",
    body: `KEY FACTS
Expand: (a+b)² = a²+2ab+b²; (a−b)² = a²−2ab+b²; (a+b)(a−b) = a²−b².
Factorise: common factor first; quadratics → two numbers × product, + sum.
Linear eqn: collect x terms one side, numbers other, divide.
Inequality: flip sign when multiplying/dividing by a negative.
Simultaneous: eliminate (add/subtract) or substitute.
Quadratic formula: x = (−b ± √(b²−4ac)) / 2a.
Change of subject: isolate step by step, do the same operation to both sides.

EXAM TRAPS
−2x > 6 → x < −3 (sign flips!).
Check answers in BOTH simultaneous equations.
Factorise fully: 2x²−8x = 2x(x−4), not just (x−4).

PRACTICE
1) Solve 3x + 2y = 21, x − y = 1. [x=23/5 — if ugly, recheck; GCE answers are usually whole]
2) Factorise x² − 5x + 6. [(x−2)(x−3)]
3) Make t the subject: s = ut + ½at². [t = (−u ± √(u²+2as))/a]`,
  },

  {
    subject: "Mathematics",
    slug: "math",
    topic: "Geometry and mensuration",
    title: "Geometry & Mensuration Cheatsheet",
    body: `ANGLE FACTS
Straight line 180°; full turn 360°; vertically opposite equal.
Parallel lines: alternate (Z), corresponding (F), co-interior (C) sum 180°.
Triangle 180°; quadrilateral 360°; polygon sum (n−2)×180°.

CIRCLE THEOREMS (quote by name!)
1) Angle at centre = 2 × angle at circumference (same arc).
2) Angle in semicircle = 90°.
3) Angles in same segment equal.
4) Cyclic quadrilateral: opposite angles sum 180°.
5) Tangent ⊥ radius.

FORMULAS
Trapezium = ½(a+b)h. Circle: A=πr², C=2πr.
Cylinder V=πr²h; Cone V=⅓πr²h; Sphere V=⁴⁄₃πr³, SA=4πr².
1 m² = 10,000 cm²; 1 m³ = 1,000,000 cm³.
Similar: lengths ×k, areas ×k², volumes ×k³.

PRACTICE
1) Pentagon angles x, x+10, x+20, x+30, x+40. Find x. [96]
2) Cone r=7, h=24 (π=22/7): volume? [1232 cm³]
3) Tank r=1.2 m, h=2.5 m: litres? [≈11,300 L]`,
  },

  {
    subject: "Mathematics",
    slug: "math",
    topic: "Trigonometry",
    title: "Trigonometry Cheatsheet",
    body: `KEY FACTS
Pythagoras: a² + b² = c² (right angle only).
SOHCAHTOA: sin=opp/hyp, cos=adj/hyp, tan=opp/adj.
Elevation: looking UP from horizontal. Depression: looking DOWN.
Any triangle: sine rule a/sinA = b/sinB = c/sinC.
Cosine rule: c² = a² + b² − 2ab·cosC.
Area = ½ab·sinC.

EXAM TRAPS
Calculator in DEGREE mode for GCE.
Depression angle from the horizontal, not the vertical.
Ladder problems: height = L·sin θ, distance = L·cos θ.

PRACTICE
1) Ladder 6 m at 70° to ground: height? [6 sin70° ≈ 5.64 m]
2) Tower 40 m, depression 28°: distance of car? [40/tan28° ≈ 75.2 m]
3) a=8, b=5, C=60°: find c. [c²=64+25−40=49 → 7]`,
  },

  {
    subject: "Mathematics",
    slug: "math",
    topic: "Statistics and probability",
    title: "Statistics & Probability Cheatsheet",
    body: `KEY FACTS
Mean = Σfx ÷ Σf (frequency table). Median = middle value. Mode = most frequent.
Range = max − min.
Probability = favourable ÷ total; 0 ≤ P ≤ 1.
P(A and B) independent = P(A)×P(B).
P(A or B) = P(A) + P(B) − P(A and B).
Venn: n(A∪B) = n(A) + n(B) − n(A∩B).

EXAM TRAPS
Draw the fx column — marks are for the table.
Mean of 5 numbers is 12 → total 60; subtract known values for the missing one.
"Neither" = total − n(A∪B).

PRACTICE
1) 60 students: 38 tea, 32 coffee, 12 both. Neither? [60−58=2]
2) Mean of 8,10,14,16,x is 12. x? [12]
3) P(red) = 3/8, P(blue) = 2/8 (independent): P(both)? [6/64 = 3/32]`,
  },

  // ============ ENGLISH (O) ============
  {
    subject: "English Language",
    slug: "eng",
    topic: "Comprehension",
    title: "Comprehension Cheatsheet",
    body: `QUESTION TYPES
Factual → answer is IN the text; find the sentence, answer in your own words.
Vocabulary in context → meaning in THAT sentence, not the dictionary list.
Inference → suggested, not stated; look for clue words (although, despite, only).
Purpose/tone → why did the writer include this? attitude: amused, critical, sympathetic?

RULES
"In your own words" → copying the text = ZERO.
Marks = number of points: 2 marks = 2 distinct ideas.
Answer in complete sentences; never one-word answers.

METHOD
1) Read questions first. 2) Skim passage. 3) Locate each answer.
4) Underline the evidence sentence. 5) Rephrase in your own words.

PRACTICE
"The teacher bore with the noisy class." — bore = tolerated (not drilled).
"Although he had studied for years, the door remained closed." — implies: he failed despite effort.`,
  },

  {
    subject: "English Language",
    slug: "eng",
    topic: "Summary writing",
    title: "Summary Writing Cheatsheet",
    body: `THE 5-STEP METHOD
1) Read the QUESTION first — it defines relevance.
2) Underline sentences that answer it.
3) Delete: examples, repetitions, quotations, statistics, illustrations.
4) Combine points in YOUR OWN words, one or two paragraphs.
5) Count words — over the limit loses marks.

COMPRESSION LANGUAGE
"people who live in villages" → villagers
"in spite of the fact that" → although
"Bamenda, Douala and Yaoundé" → major towns
"no schools, no hospitals and no jobs" → lack of schools, healthcare and jobs

EXAM TRAPS
Do not add opinions or outside knowledge.
Keep the original meaning — no distortion.
Write continuous prose, not numbered notes (unless asked).`,
  },

  {
    subject: "English Language",
    slug: "eng",
    topic: "Grammar essentials",
    title: "Grammar Essentials Cheatsheet",
    body: `CONCORD (agreement)
"The list of items IS on the table." "Neither of the boys WAS present."
"Ten thousand francs IS a lot." "Each/Every/Either/Neither" → singular.
"The team PLAYS well." (collective → usually singular)

TENSES
since + present perfect: "I have lived here since 2019."
when-clause + simple past: "When he arrived, we ate."
present perfect = past with present relevance.

COMMON ERRORS
He sings beautifully (adverb, not adjective).
arrive AT the village; married TO; different FROM.
fewer students (countable) / less water (uncountable).
its (possessive) vs it's (it is). No double negatives.

TRANSFORMATIONS
Passive: "The boy kicked the ball" → "The ball was kicked by the boy."
Indirect: He said, "I am tired" → He said that he WAS tired (tense shifts back).`,
  },

  {
    subject: "English Language",
    slug: "eng",
    topic: "Composition and letters",
    title: "Composition & Letters Cheatsheet",
    body: `THREE TYPES
Narrative: story with beginning → complication → resolution; past tenses; time markers.
Descriptive: five senses; one dominant impression.
Argumentative: position → 3-4 developed reasons → acknowledge other side → firm conclusion.

STRUCTURE THAT SCORES
Intro: question, striking statement, or scene-setting.
Body: 4-6 sentences per paragraph, ONE idea per paragraph.
Conclusion: do not just stop — round off.
Plan 5 minutes before writing.

FORMAL LETTER
Your address (top right) → date → recipient's address → Dear Sir/Madam →
heading/title → body → Yours faithfully (Dear Sir) / Yours sincerely (named) → signature → full name.

INFORMAL LETTER
Address → date → Dear Ada → chatty opening → body → closing line → Yours affectionately / first name.

EXAM TRAPS
Choose the composition type you write BEST, not the easiest-looking.
Composition carries the most marks — give it the most time.`,
  },

  // ============ PHYSICS (O) ============
  {
    subject: "Physics",
    slug: "phys",
    topic: "Measurement",
    title: "Measurement Cheatsheet",
    body: `BASE UNITS
length m, mass kg, time s, temperature K/°C, current A.
Prefixes: k=10³, M=10⁶, m=10⁻³, μ=10⁻⁶. 250 mA = 0.25 A.

INSTRUMENTS
Vernier calipers: 0.01 cm. Micrometer: 0.001 cm. Measuring cylinder: read BOTTOM of meniscus, eye level.
Density = mass ÷ volume. Stone 54 g displaces 20 cm³ → 2.7 g/cm³.

PRECAUTIONS (practical marks!)
Avoid parallax: view perpendicular to scale.
Repeat readings and average.
Zero error: check before use.

PRACTICE
1) Convert 3.5 km to m. [3500 m]
2) State two precautions when measuring with a ruler. [eye perpendicular; avoid zero error]`,
  },

  {
    subject: "Physics",
    slug: "phys",
    topic: "Mechanics",
    title: "Mechanics Cheatsheet",
    body: `KEY EQUATIONS
Speed = distance/time. Acceleration = Δv/t.
SUVAT: v = u + at; s = ut + ½at²; v² = u² + 2as.
F = ma. Weight W = mg (g = 10 m/s² — state it!).
Momentum = mv (conserved in collisions).
Pressure = F/A (Pa). Liquid pressure = ρgh.
Hooke: F = kx (up to limit).

GRAPHS
Distance-time: gradient = speed.
Velocity-time: gradient = acceleration; AREA = distance.

TERMINAL VELOCITY
Falls: drag grows with speed → drag = weight → constant velocity.

PRACTICE
1) 10→30 m/s in 5 s: a? [4 m/s²] distance? [100 m]
2) 250 N on 0.05 m²: pressure? [5000 Pa]
3) Car brakes 25 m/s → 0 in 50 m: a? [−6.25 m/s²]`,
  },

  {
    subject: "Physics",
    slug: "phys",
    topic: "Thermal physics",
    title: "Thermal Physics Cheatsheet",
    body: `KEY FACTS
Temperature = degree of hotness. Heat = energy transferred due to ΔT.
Conduction: particle vibration passed along (metals best).
Convection: hot fluid rises → current.
Radiation: infrared waves; no medium needed; black absorbs best.
Vacuum flask defeats all three.

CALCULATIONS
Q = mcΔθ. Water c = 4200 J/kg°C.
2 kg water +30°C: Q = 2×4200×30 = 252,000 J.
Latent heat: energy at change of state, NO temperature change.
Sweating cools: latent heat of vaporisation.

PRACTICE
1) Why does a metal spoon in hot tea feel hot but plastic does not? [metal conducts]
2) Why do black surfaces absorb more radiation? [better absorbers of IR]`,
  },

  {
    subject: "Physics",
    slug: "phys",
    topic: "Waves and light",
    title: "Waves & Light Cheatsheet",
    body: `WAVE FACTS
v = fλ. Transverse: vibration ⊥ travel (light, water). Longitudinal: along (sound).
Reflection: i = r. Refraction: bends TOWARDS normal entering denser medium.
Diffraction: spreading through gaps/apertures.
Prism: white light → spectrum; red bends least, violet most.

LIGHT
Converging lens: real inverted image of distant object.
Eye focuses by changing lens shape (accommodation).
Total internal reflection: beyond critical angle → optical fibres.

SOUND
Needs a medium (no vacuum). Speed ≈ 340 m/s in air.
Frequency = pitch; amplitude = loudness.
Echo: distance = (speed × time)/2.
Ultrasound > 20,000 Hz: sonar, medical scans.

PRACTICE
1) f=50 Hz, λ=6.8 m: v? [340 m/s]
2) Why can sound not travel through vacuum? [no particles to vibrate]`,
  },

  {
    subject: "Physics",
    slug: "phys",
    topic: "Electricity",
    title: "Electricity Cheatsheet",
    body: `CIRCUIT FACTS
I = Q/t (A = C/s). R = V/I (Ω). Ohm's law: V ∝ I (metal, constant T).
SERIES: same current; voltages add; R = R₁+R₂.
PARALLEL: same voltage; currents add; 1/R = 1/R₁ + 1/R₂.
Power: P = VI = I²R = V²/R. Energy = Pt; 1 kWh = 3.6 MJ.
Fuse: rated slightly above normal current I = P/V.

WORKED EXAMPLES
Two 6 Ω parallel: 1/R = 1/6+1/6 → R = 2 Ω. 12 V across → I = 6 A.
60 W bulb 5 h → 0.3 kWh.

PRACTICE
1) 4 Ω, 6 Ω, 12 Ω parallel: total? [2 Ω]
2) 2 kW iron, 30 min/day, 30 days: kWh? [30 kWh]
3) Why does a small area give high pressure? [P = F/A]`,
  },

  {
    subject: "Physics",
    slug: "phys",
    topic: "Magnetism and induction",
    title: "Magnetism & Induction Cheatsheet",
    body: `MAGNET BASICS
Magnetic materials: iron, steel, cobalt, nickel. Like poles repel.
Electromagnet: coil + core + current; stronger with more turns, more current, soft-iron core.
Uses: relay, electric bell, scrapyard crane.

MOTOR EFFECT
Wire in field + current → force. Fleming's LEFT hand: thuMb=Motion, First=Field, seCond=Current.
Principle of electric motors.

INDUCTION
Moving magnet into coil → induced current. Fleming's RIGHT hand (generators).
Faraday: EMF ∝ rate of change of flux. Lenz: opposes the change.
Transformer: Vs/Vp = Ns/Np. Step-up at power stations cuts transmission losses.

PRACTICE
1) State three ways to strengthen an electromagnet. [more turns, more current, iron core]
2) Why step up voltage for transmission? [lower current → less I²R loss]`,
  },

  {
    subject: "Physics",
    slug: "phys",
    topic: "Radioactivity",
    title: "Radioactivity Cheatsheet",
    body: `RADIATION TYPES
α: helium nucleus; stopped by paper; most ionising.
β: fast electron; stopped by aluminium.
γ: wave; reduced by lead; most penetrating.

HALF-LIFE
Time for half the nuclei to decay.
After 2 half-lives → ¼ remains. After 3 → ⅛.

USES & SAFETY
Uses: tracers, carbon dating, cancer therapy.
Safety: tongs, lead storage, limit exposure time.

PRACTICE
1) Half-life 8 days: fraction after 32 days? [1/16]
2) Which radiation is stopped by paper? [alpha]`,
  },

  // ============ CHEMISTRY (O) ============
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Atomic structure",
    title: "Atomic Structure Cheatsheet",
    body: `KEY FACTS
Atom: nucleus (protons +, neutrons 0) + electrons (−) in shells.
Z = protons. A = protons + neutrons. Isotopes: same Z, different A.
Shell filling: 2, 8, 8. Na (11 e⁻) = 2,8,1. Cl (17) = 2,8,7.

PERIODIC TABLE
Group = same outer electrons → similar reactions.
Group I alkali metals: very reactive, +1 ions; reactivity ↑ down group.
Group VII halogens: −1 ions; reactivity ↓ down group.
Group VIII noble gases: full shells, unreactive.
Periods: metallic → non-metallic left to right.

PRACTICE
1) Electron configuration of Cl (Z=17). [2,8,7]
2) Why are noble gases unreactive? [full outer shells]`,
  },

  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Bonding",
    title: "Bonding Cheatsheet",
    body: `IONIC
Metal loses e⁻ → cation; non-metal gains → anion. Na⁺ + Cl⁻ → NaCl.
Properties: high m.p., conduct when molten/dissolved, usually water-soluble.
Draw dot-and-cross diagrams — easy marks!

COVALENT
Non-metals SHARE electrons: H₂O, CH₄, O₂.
Simple molecules: low m.p./b.p., no conduction.
Giant covalent: diamond (hardest), graphite (conducts — delocalised e⁻ between layers; slippery).

METALLIC
Positive ions in a sea of delocalised electrons → conducts, malleable, high m.p.
Alloys: different-sized atoms → harder to slide → stronger than pure metal.

PRACTICE
1) Why does graphite conduct but diamond not? [graphite has delocalised e⁻ between layers]
2) Why are alloys stronger? [different atom sizes disrupt sliding]`,
  },

  {
    subject: "Chemistry",
    slug: "chem",
    topic: "The mole",
    title: "The Mole Cheatsheet",
    body: `THE FORMULAS
1 mole = 6.02 × 10²³ particles = Ar/Mr in grams.
Moles = mass ÷ Mr.
Gas at RTP: moles = volume ÷ 24 dm³.
Solution: moles = concentration (mol/dm³) × volume (dm³). cm³ → dm³: ÷1000.

MR EXAMPLES
H₂O = 18. H₂SO₄ = 98. CaCO₃ = 100. KOH = 56. NaOH = 40.

TITRATION METHOD (5 steps)
1) Balanced equation. 2) Moles of known solution.
3) Mole ratio → moles of unknown. 4) Concentration = moles ÷ volume.
5) Check units (mol/dm³).

PRACTICE
1) Moles in 9.8 g H₂SO₄? [0.1]
2) 25 cm³ of 0.1 M NaOH neutralises 20 cm³ HCl. [HCl = 0.125 M]
3) Mass of MgO from 4.8 g Mg (2Mg+O₂→2MgO)? [8 g]`,
  },

  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Acids, bases and salts",
    title: "Acids, Bases & Salts Cheatsheet",
    body: `ACIDS (HCl, H₂SO₄, HNO₃)
pH < 7; blue litmus → red.
+ metal → salt + H₂. + carbonate → salt + H₂O + CO₂. + alkali → salt + water.
Strong = fully ionised; weak (ethanoic) = partial.

BASES/ALKALIS (NaOH, KOH, Ca(OH)₂, NH₃ aq)
pH > 7; red litmus → blue.

SALT PREPARATION ROUTES
+ excess metal → filter. + insoluble base → warm, filter.
+ alkali → titration. + carbonate → filter.

SOLUBILITY RULES
Soluble: all Na/K/NH₄ salts; ALL nitrates; chlorides except Ag/Pb; sulfates except Ba/Pb/Ca.
Insoluble: carbonates except Na/K/NH₄.

GAS TESTS
H₂: pop with lit splint. O₂: relights glowing splint.
CO₂: limewater → milky. NH₃: damp red litmus → blue. Cl₂: bleaches damp litmus.

PRACTICE
1) Test + result for CO₂. [limewater milky]
2) Which chlorides are insoluble? [AgCl, PbCl₂]`,
  },

  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Electrolysis",
    title: "Electrolysis Cheatsheet",
    body: `SETUP
Needs molten or dissolved ionic compound + DC supply.
Cathode (−) attracts cations. Anode (+) attracts anions.

SELECTIVE DISCHARGE (solutions)
Cathode: H₂ forms UNLESS metal is less reactive than hydrogen (Cu, Ag deposit).
Anode: halides → halogens; sulfates/nitrates → O₂.

APPLICATIONS
Electroplating: object at cathode, plating metal at anode.
Aluminium: purified bauxite in molten cryolite (lowers m.p.); Al³⁺ → Al at cathode; huge electricity use → smelters near hydro dams.

PRACTICE
1) Molten NaCl electrolysis products? [Na at cathode, Cl₂ at anode]
2) Why cryolite in Al extraction? [lowers melting point → saves energy]`,
  },

  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Metals",
    title: "Metals Cheatsheet",
    body: `REACTIVITY SERIES (memorise!)
K > Na > Ca > Mg > Al > (C) > Zn > Fe > (H) > Cu > Ag > Au

EXTRACTION
Above carbon → electrolysis (Al, Na). Below carbon → reduce with C/CO (Zn, Fe, Cu).
Blast furnace: Fe₂O₃ + coke + limestone; slag removes impurities.

RUSTING
Needs iron + oxygen + water (salt speeds it).
Prevention: paint, oil, galvanise (Zn sacrificial), alloy (stainless).

KEY REACTIONS
Metal + acid → salt + H₂ (only above H in series).
More reactive metal displaces less reactive from its salt.

PRACTICE
1) Why does iron rust faster near the sea? [water + salt present]
2) Can copper displace iron from FeSO₄? [No — Cu is less reactive]`,
  },

  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Organic chemistry intro",
    title: "Organic Chemistry Cheatsheet",
    body: `CRUDE OIL
Fractionating column: refinery gas → petrol → naphtha → kerosene → diesel → bitumen.
Separated by boiling points (fractional distillation).

ALKANES (saturated, C–C)
General: CₙH₂ₙ₊₂. Methane CH₄, ethane C₂H₆.
Complete combustion → CO₂ + H₂O. Incomplete (limited air) → toxic CO.

ALKENES (unsaturated, C=C)
General: CₙH₂ₙ. Ethene C₂H₄.
TEST: decolourises bromine water (red-brown → colourless).

POLYMERS
Ethene → poly(ethene). Plastic pollution + recycling.

PRACTICE
1) Test for unsaturation? [bromine water decolourised]
2) Why is incomplete combustion dangerous? [CO is toxic]`,
  },

  // ============ BIOLOGY (O) ============
  {
    subject: "Biology",
    slug: "bio",
    topic: "Cell biology",
    title: "Cell Biology Cheatsheet",
    body: `CELL PARTS
All cells: membrane (controls entry/exit), cytoplasm (reactions), nucleus (chromosomes/DNA).
Plant extra: cellulose wall (support), chloroplasts (photosynthesis), large vacuole (sap).

SPECIALISED CELLS
Red blood cell: no nucleus, biconcave → carries O₂.
Root hair: long shape → absorption. Sperm: tail → movement.

MOVEMENT
Diffusion: high → low concentration (O₂ into blood).
Osmosis: water through partially permeable membrane, dilute → concentrated.
Active transport: against gradient, uses energy (root hairs absorb ions).

EXAM FAVOURITE
Plant wilts in salty soil: soil more concentrated than cell sap → water leaves by osmosis → cells lose turgor.

PRACTICE
1) Two differences plant vs animal cell. [wall+chloroplasts vs none]
2) Define osmosis exactly. [water moves through a partially permeable membrane from dilute to concentrated solution]`,
  },

  {
    subject: "Biology",
    slug: "bio",
    topic: "Nutrition and digestion",
    title: "Nutrition & Digestion Cheatsheet",
    body: `DIET
Carbs (energy — rice, cassava), proteins (growth — beans, fish), fats (energy — palm oil).
Vitamins: A (vision), C (scurvy), D (rickets). Minerals: iron (anaemia), calcium (bones), iodine (goitre).
Deficiencies: kwashiorkor (protein), marasmus (energy).

CANAL + ENZYMES
Mouth: amylase → maltose. Stomach: HCl + pepsin → protein.
Small intestine: bile emulsifies fat; lipase → fatty acids + glycerol; villi absorb.
Large intestine: water absorption.

ENZYME FACTS
Proteins; specific; speed reactions; best near 37°C; denatured by heat.

PRACTICE
1) Name enzyme for starch + where produced. [amylase; salivary glands/pancreas]
2) Why does chewing help digestion? [increases surface area for enzymes]`,
  },

  {
    subject: "Biology",
    slug: "bio",
    topic: "Transport systems",
    title: "Transport Cheatsheet",
    body: `PLANTS
Xylem: water + minerals UP (transpiration pull). Phloem: food both ways (translocation).
Transpiration faster: wind, heat, low humidity. Stomata open in light.

HUMAN CIRCULATION
Double: right heart → lungs; left heart → body.
Arteries: thick, elastic, high pressure. Veins: valves, low pressure. Capillaries: 1 cell thick — exchange.
Blood: plasma (transport), red cells (O₂), white cells (defence), platelets (clotting).

TRACE (exam favourite)
Lungs → pulmonary vein → left atrium → left ventricle → aorta → arteries → toe.

PRACTICE
1) Why do veins have valves? [prevent backflow at low pressure]
2) What happens when transpiration > uptake? [wilting]`,
  },

  {
    subject: "Biology",
    slug: "bio",
    topic: "Respiration",
    title: "Respiration Cheatsheet",
    body: `AEROBIC
Glucose + O₂ → CO₂ + H₂O + energy (38 ATP). In every cell.

ANAEROBIC
Muscle: glucose → lactic acid (fatigue, oxygen debt).
Yeast: glucose → ethanol + CO₂ (brewing, bread).

BREATHING
Inhale: diaphragm flattens, ribs rise → volume ↑, pressure ↓ → air in.
Exhale: reverse.

ALVEOLI
Thin, moist, huge surface, rich blood supply.

SMOKING
Damages cilia → bronchitis, emphysema, lung cancer.

PRACTICE
1) Why does anaerobic exercise cause pain? [lactic acid builds up]
2) Why is yeast used in bread? [CO₂ raises the dough]`,
  },

  {
    subject: "Biology",
    slug: "bio",
    topic: "Coordination",
    title: "Coordination Cheatsheet",
    body: `NERVOUS
CNS = brain + spinal cord. Reflex arc: receptor → sensory → relay (cord) → motor → effector.
Fast, automatic, protective.
Eye: cornea+lens focus; iris controls pupil; retina (rods/cones).
Hormones: insulin (lowers blood glucose; lack → diabetes), adrenaline (fight/flight), thyroxine.

KIDNEY
Ultrafiltration (Bowman's capsule) → selective reabsorption → urine (urea + excess water/salts).

PRACTICE
1) Draw + label reflex arc. [5 parts]
2) Why is insulin called a hormone? [chemical messenger carried in blood]`,
  },

  {
    subject: "Biology",
    slug: "bio",
    topic: "Reproduction and genetics",
    title: "Reproduction & Genetics Cheatsheet",
    body: `REPRODUCTION
Asexual: one parent, identical (cassava stems, yeast budding).
Sexual: gametes fuse → variation.
Flower: stamens (male: anther+filament), carpel (female: stigma, style, ovary).
Insect-pollinated: colourful, scented. Wind: small, light pollen.
Ovule → seed; ovary → fruit.
Human: ovulation ~day 14; fertilisation in oviduct; placenta exchanges nutrients/O₂/waste.
HIV: blood, sex, mother-to-child — NOT casual contact.

GENETICS
Alleles: dominant (T) vs recessive (t).
Tt × Tt → 1TT:2Tt:1tt = 3 tall : 1 short.
Sex: XX female, XY male — father decides.
Sickle cell: AS carrier healthy; SS disease (common in Cameroon).

PRACTICE
1) Tt × tt offspring? [1Tt:1tt — 50% tall]
2) Why do siblings differ? [meiosis + random fertilisation → variation]`,
  },

  {
    subject: "Biology",
    slug: "bio",
    topic: "Ecology",
    title: "Ecology Cheatsheet",
    body: `KEY TERMS
Habitat, population, community, ecosystem.
Food chain: producer → primary → secondary consumer; decomposers recycle.
Only ~10% energy passes each level → chains rarely exceed 4 links.

CYCLES
Carbon: photosynthesis, respiration, combustion, decomposition.
Water: evaporation, condensation, precipitation.

CAMEROON EXAMPLES
Waza reserve; Congo Basin deforestation; soil erosion after slash-and-burn.

PRACTICE
1) Why are food chains short? [90% energy lost at each level]
2) Role of decomposers? [break dead matter, recycle nutrients]`,
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
  const description = `Quick revision cheatsheet: ${sheet.topic}.`;
  topicInserts.push(
    `insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)\n` +
      `values (${sqlStr(topicId)}, ${sqlStr(sheet.subject)}, ${sqlStr(sheet.title)}, ${sqlStr(description)}, 'ordinary', ` +
      `array[${O_CLASSES.map(sqlStr).join(",")}]::text[], array[${O_SERIES.map(sqlStr).join(",")}]::text[], 0, 15)\n` +
      `on conflict (id) do update set title = excluded.title, updated_at = now();`,
  );
  docInserts.push(
    `insert into public.course_documents (topic_id, subject, title, language, level, class_levels, series, status, doc_type, markdown_content)\n` +
      `values (${sqlStr(topicId)}, ${sqlStr(sheet.subject)}, ${sqlStr(sheet.title)}, 'english', 'ordinary', ` +
      `array[${O_CLASSES.map(sqlStr).join(",")}]::text[], array[${O_SERIES.map(sqlStr).join(",")}]::text[], 'published', 'cheatsheet', ${sqlStr(sheet.body)});`,
  );
}

const sql = ["begin;", ...topicInserts, ...docInserts, "commit;"].join("\n\n");
fs.writeFileSync(path.join(__dirname, "insert_cheatsheets_batch1.sql"), sql);
console.log(
  `Generated ${topicInserts.length} cheatsheets. SQL size: ${(sql.length / 1024).toFixed(0)} KB`,
);
