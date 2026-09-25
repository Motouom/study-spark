module.exports = [
  // ═══════════════════════════════════════════════════════════════════════════
  // PHYSICS — Form 5 (Ordinary Level)
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Physics",
    slug: "phys",
    topic: "Measurement",
    title: "Measurement Cheatsheet",
    estimatedMinutes: 25,
    body: `## Why this topic matters

Measurement is where the GCE Physics paper begins, and it underpins every practical question. Examiners test base units, prefixes, instrument precision, and the precautions that earn practical marks. Getting the units right here protects you across the whole paper.

## Core concepts

### Base units
| Quantity | Unit | Symbol |
|---|---|---|
| Length | metre | m |
| Mass | kilogram | kg |
| Time | second | s |
| Temperature | kelvin / degree Celsius | K / °C |
| Electric current | ampere | A |

### Prefixes
| Prefix | Meaning | Example |
|---|---|---|
| kilo (k) | ×10³ | 1 km = 1000 m |
| mega (M) | ×10⁶ | 1 MHz = 1,000,000 Hz |
| milli (m) | ×10⁻³ | 250 mA = 0.25 A |
| micro (μ) | ×10⁻⁶ | 1 μm = 0.000001 m |

### Measuring instruments
- **Vernier calipers:** measure to 0.01 cm.
- **Micrometer screw gauge:** measure to 0.001 cm (0.01 mm).
- **Measuring cylinder:** read the **bottom of the meniscus** at eye level.
- **Ruler:** measure to 0.1 cm (1 mm).

### Density
$$\\text{Density} = \\frac{\\text{mass}}{\\text{volume}}$$
**Worked example:** a stone of mass 54 g displaces 20 cm³ of water.
\\(\\rho = \\frac{54}{20} = 2.7\\,\\text{g/cm}^3\\).

### Practical precautions (earn marks!)
1. Avoid **parallax error**: view the scale perpendicular to it.
2. **Repeat readings** and average them.
3. Check for **zero error** before using the instrument.
4. Read at eye level.

## Common mistakes & exam traps

- Confusing mass (kg) with weight (N) — weight is a force, \\(W = mg\\).
- Forgetting to convert units before calculating (e.g. cm³ to m³).
- Reading the top of the meniscus instead of the bottom.
- Writing "measure twice" as a precaution without saying why (repeat and average to reduce random error).

## Exam technique

1. Always state the unit with every answer.
2. For density questions, write the formula, substitute, then calculate.
3. When asked for precautions, give specific, practical ones — not vague statements.
4. Convert prefixes early: 250 mA → 0.25 A before any calculation.

## Memory hooks

- **Density:** "Mass over volume — how tightly packed the matter is."
- **kilo, mega, milli, micro:** "King Midas Made Many Mistakes" (k, M, m, μ).

## Quick practice

1. Convert 3.5 km to metres. **[3500 m]**
2. State two precautions when measuring length with a ruler. **[View perpendicular to the scale; check for zero error]**
3. A block has mass 120 g and volume 40 cm³. Find its density. **[3 g/cm³]**
4. What does a micrometer measure to? **[0.001 cm]**`,
  },
  {
    subject: "Physics",
    slug: "phys",
    topic: "Mechanics",
    title: "Mechanics Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Mechanics — motion, forces, energy and pressure — is the biggest single topic on the GCE Ordinary Level Physics paper. It appears in Paper 1 and Paper 2 every year, and the calculations follow a small set of formulas you must know cold.

## Core concepts

### Motion
- Speed \\(= \\frac{\\text{distance}}{\\text{time}}\\).
- Velocity is speed with direction.
- Acceleration \\(= \\frac{\\Delta v}{t}\\).

### The SUVAT equations (constant acceleration)
- \\(v = u + at\\)
- \\(s = ut + \\frac{1}{2}at^2\\)
- \\(v^2 = u^2 + 2as\\)

**Worked example:** a car accelerates from 10 m/s to 30 m/s in 5 s.
\\(a = \\frac{30 - 10}{5} = 4\\,\\text{m/s}^2\\). Distance \\(s = 10(5) + \\frac{1}{2}(4)(25) = 50 + 50 = 100\\) m.

### Forces
- \\(F = ma\\) (Newton's second law).
- Weight \\(W = mg\\), with \\(g = 10\\,\\text{m/s}^2\\) on Earth (state this!).
- **Newton's laws:** (1) a body stays at rest or uniform motion unless acted on by a force; (2) \\(F = ma\\); (3) action and reaction are equal and opposite.
- Momentum \\(= mv\\), conserved in collisions.

### Pressure
- \\(P = \\frac{F}{A}\\) in pascals (Pa).
- Liquid pressure \\(= \\rho gh\\).
- **Worked example:** 250 N on 0.05 m² → \\(P = \\frac{250}{0.05} = 5000\\) Pa.

### Hooke's law
\\(F = kx\\) — extension is proportional to force, up to the elastic limit.

### Graphs
- **Distance–time:** gradient = speed.
- **Velocity–time:** gradient = acceleration; **area under the graph = distance**.

### Terminal velocity
A falling object accelerates until air resistance equals its weight, then falls at constant velocity.

## Common mistakes & exam traps

- Using \\(g = 10\\) without stating it — GCE wants you to say "take g = 10 m/s²".
- Confusing distance and displacement.
- Forgetting that the area under a velocity–time graph is distance (not the gradient).
- Mixing up mass and weight: mass in kg, weight in newtons.

## Exam technique

1. List what you know (u, v, a, s, t) and what you need — then pick the SUVAT equation with those letters.
2. Draw the velocity–time graph for motion questions.
3. State the formula before substituting.
4. Check units: force in N, mass in kg, acceleration in m/s².

## Memory hooks

- **SUVAT:** "v = u + at, s = ut + half a t squared, v squared = u squared + 2as."
- **Pressure:** "Force over area — a sharp knife cuts because the area is tiny."

## Quick practice

1. A car goes 10 → 30 m/s in 5 s. Find the acceleration and distance. **[4 m/s², 100 m]**
2. 250 N acts on 0.05 m². Find the pressure. **[5000 Pa]**
3. A car brakes from 25 m/s to rest in 50 m. Find the deceleration. **[−6.25 m/s²]**
4. What is the weight of a 5 kg mass? **[50 N]**`,
  },
  {
    subject: "Physics",
    slug: "phys",
    topic: "Thermal physics",
    title: "Thermal Physics Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Thermal physics covers heat transfer, temperature, and the energy calculations that appear regularly on the GCE paper. The three methods of heat transfer and the \\(Q = mc\\Delta\\theta\\) calculation are the core of this topic.

## Core concepts

### Temperature and heat
- **Temperature** is the degree of hotness; **heat** is energy transferred because of a temperature difference.
- Heat flows from hot to cold until temperatures equalise.

### The three methods of heat transfer
| Method | How it works | Best example |
|---|---|---|
| Conduction | Particles vibrate and pass energy along | Metal spoon in hot tea |
| Convection | Hot fluid rises, cool fluid sinks — a current | Boiling water, sea breeze |
| Radiation | Infrared waves, no medium needed | Heat from the sun |

- **Conduction:** metals are best (free electrons). Non-metals and air are poor (insulators).
- **Convection:** hot air/water rises because it is less dense.
- **Radiation:** black, dull surfaces absorb and emit best; white, shiny surfaces reflect.
- A **vacuum flask** defeats all three: vacuum stops conduction + convection, silvered walls reflect radiation.

### Heat calculations
$$Q = mc\\Delta\\theta$$
- \\(Q\\) = heat energy (J), \\(m\\) = mass (kg), \\(c\\) = specific heat capacity (J/kg°C), \\(\\Delta\\theta\\) = temperature change (°C).
- Water: \\(c = 4200\\,\\text{J/kg°C}\\).

**Worked example:** heat 2 kg of water from 20°C to 50°C.
\\(Q = 2 \\times 4200 \\times 30 = 252,000\\) J.

### Latent heat
Energy absorbed or released at a **change of state** with **no temperature change**.
- Melting/freezing: latent heat of fusion.
- Boiling/condensing: latent heat of vaporisation.
- Sweating cools you because vaporisation takes in latent heat.

## Common mistakes & exam traps

- Saying "heat rises" — it is the hot **fluid** that rises, not heat.
- Forgetting that radiation needs no medium (it travels through a vacuum).
- Using \\(\\Delta\\theta\\) in °C but mass in grams — convert to kg.
- Confusing latent heat (no temperature change) with \\(Q = mc\\Delta\\theta\\) (temperature change).

## Exam technique

1. For "explain why" questions, name the method of transfer and the mechanism.
2. For calculations, write \\(Q = mc\\Delta\\theta\\), substitute, then compute.
3. Give the reason a metal feels hotter than plastic — conduction, not "it is hotter".
4. State the direction of heat flow in every transfer question.

## Memory hooks

- **Conduction:** "Particles pass the shake along."
- **Convection:** "Hot rises, cool sinks, round and round."
- **Radiation:** "No medium needed — the sun reaches us through space."

## Quick practice

1. Why does a metal spoon in hot tea feel hot but a plastic one does not? **[Metal conducts heat well; plastic is an insulator]**
2. Why do black surfaces absorb more radiation? **[Black, dull surfaces are better absorbers of infrared]**
3. Calculate the heat to raise 2 kg of water from 20°C to 50°C. **[252,000 J]**
4. Why does sweating cool the body? **[Latent heat of vaporisation is taken from the skin]**`,
  },
  {
    subject: "Physics",
    slug: "phys",
    topic: "Waves and light",
    title: "Waves & Light Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Waves and light are a rich source of GCE questions — wave properties, reflection, refraction, lenses, the eye, sound, and the electromagnetic spectrum. The wave equation \\(v = f\\lambda\\) is tested every year.

## Core concepts

### Wave basics
- \\(v = f\\lambda\\) (wave speed = frequency × wavelength).
- **Transverse waves:** vibration perpendicular to travel (light, water waves, all EM waves).
- **Longitudinal waves:** vibration along the direction of travel (sound).
- **Amplitude** = height (loudness/brightness). **Frequency** = waves per second (pitch/colour).

### Reflection and refraction
- Reflection: angle of incidence = angle of reflection (\\(i = r\\)).
- Refraction: light bends **towards** the normal entering a denser medium, **away** entering a rarer medium.
- A prism splits white light into a spectrum — red bends least, violet most.

### Lenses and the eye
- **Converging (convex) lens:** forms a real, inverted image of a distant object.
- The eye focuses by changing the shape of the lens (**accommodation**).
- **Total internal reflection:** beyond the critical angle, light reflects inside the medium — used in optical fibres.

### Sound
- Needs a medium — **no sound in a vacuum**.
- Speed in air ≈ 340 m/s.
- Frequency = pitch; amplitude = loudness.
- **Echo:** distance \\(= \\frac{\\text{speed} \\times \\text{time}}{2}\\).
- Ultrasound (>20,000 Hz): sonar, medical scanning.

### The electromagnetic spectrum
Radio → microwave → infrared → visible → ultraviolet → X-ray → gamma.
- Radio: communication. Infrared: remote controls, heat. UV: sterilisation. X-rays: medical imaging. Gamma: cancer treatment.

## Common mistakes & exam traps

- Saying sound travels through a vacuum — it cannot.
- Confusing transverse and longitudinal (sound is longitudinal, light is transverse).
- For echoes, forgetting to divide by 2 (the sound goes out and back).
- Using the wrong unit: frequency in Hz, wavelength in m, speed in m/s.

## Exam technique

1. Write \\(v = f\\lambda\\) and rearrange before substituting.
2. For echo questions, draw the out-and-back path.
3. For refraction, always draw the normal at the point of incidence.
4. Give the full name of the wave type when asked (e.g. "transverse").

## Memory hooks

- **Transverse:** "Shake the rope up and down."
- **Longitudinal:** "Push the slinky back and forth."
- **EM spectrum order:** "Rabbits Mate In Very Unusual eXpensive Gardens."

## Quick practice

1. A wave has frequency 50 Hz and wavelength 6.8 m. Find its speed. **[340 m/s]**
2. Why can sound not travel through a vacuum? **[No particles to vibrate]**
3. A sound wave returns as an echo after 2 s. How far away is the wall? **[340 m]**
4. Which wave type is sound? **[Longitudinal]**`,
  },
  {
    subject: "Physics",
    slug: "phys",
    topic: "Electricity",
    title: "Electricity Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Electricity is one of the highest-weight topics on the GCE paper. Circuit calculations, Ohm's law, series and parallel combinations, power, and household electricity all appear regularly. The formulas are few but must be applied with care.

## Core concepts

### Basic quantities
- Current \\(I = \\frac{Q}{t}\\) (coulombs per second = amperes).
- Resistance \\(R = \\frac{V}{I}\\) (ohms).
- **Ohm's law:** \\(V \\propto I\\) for a metal conductor at constant temperature.

### Series and parallel circuits
| | Series | Parallel |
|---|---|---|
| Current | Same everywhere | Splits between branches |
| Voltage | Adds up | Same across each branch |
| Resistance | \\(R = R_1 + R_2 + \\cdots\\) | \\(\\frac{1}{R} = \\frac{1}{R_1} + \\frac{1}{R_2} + \\cdots\\) |

**Worked example:** two 6 Ω resistors in parallel.
\\(\\frac{1}{R} = \\frac{1}{6} + \\frac{1}{6} = \\frac{1}{3}\\) → \\(R = 3\\,Ω\\). Wait — \\(\\frac{1}{6}+\\frac{1}{6} = \\frac{2}{6} = \\frac{1}{3}\\), so \\(R = 3\\,Ω\\). With 12 V across, \\(I = \\frac{12}{3} = 4\\) A.

### Power and energy
- \\(P = VI = I^2R = \\frac{V^2}{R}\\).
- Energy \\(E = Pt\\); \\(1\\,\\text{kWh} = 3.6\\,\\text{MJ}\\).

**Worked example:** a 60 W bulb runs for 5 hours. Energy \\(= 0.06 \\times 5 = 0.3\\) kWh.

### Fuses and safety
- A fuse is rated slightly above the normal current: \\(I = \\frac{P}{V}\\).
- **Worked example:** a 2 kW iron on 230 V → \\(I = \\frac{2000}{230} \\approx 8.7\\) A → use a 10 A fuse.

## Common mistakes & exam traps

- Adding parallel resistances like series ones — you must use the reciprocal formula.
- Forgetting that in parallel, the total resistance is **less** than the smallest branch.
- Using \\(P = VI\\) with the wrong units (kW instead of W).
- Confusing the fuse rating with the appliance power.

## Exam technique

1. Redraw the circuit and label each resistor.
2. Simplify parallel groups first, then series.
3. Write the formula, substitute, calculate, and give units.
4. For household questions, convert kW to W before using \\(P = VI\\).

## Memory hooks

- **Series:** "Same current, resistances add."
- **Parallel:** "Same voltage, reciprocals add."
- **Power:** "VI, I squared R, V squared over R."

## Quick practice

1. 4 Ω, 6 Ω and 12 Ω in parallel. Find the total resistance. **[2 Ω]**
2. A 2 kW iron runs 30 minutes a day for 30 days. Find the energy in kWh. **[30 kWh]**
3. Why does a small area give high pressure? **[P = F/A — smaller area, larger pressure]**
4. A 60 W bulb runs for 5 h. Find the energy in kWh. **[0.3 kWh]**`,
  },
  {
    subject: "Physics",
    slug: "phys",
    topic: "Magnetism and induction",
    title: "Magnetism & Induction Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Magnetism, electromagnetism and electromagnetic induction connect the physics of motors, generators and transformers — all of which appear on the GCE paper. The Fleming rules and the transformer equation are the key tested items.

## Core concepts

### Magnets
- Magnetic materials: iron, steel, cobalt, nickel.
- Like poles repel, unlike poles attract.
- An **electromagnet** is a coil of wire around a soft-iron core carrying a current.
- It is stronger with: more turns, more current, a soft-iron core.
- Uses: relay, electric bell, scrapyard crane.

### The motor effect
A wire carrying current in a magnetic field experiences a force.
**Fleming's left-hand rule:** thuMb = Motion, First finger = Field, seCond finger = Current.
This is the principle of the electric motor.

### Electromagnetic induction
Moving a magnet into a coil induces a current (and out of it, a current in the opposite direction).
- **Faraday's law:** induced EMF is proportional to the rate of change of magnetic flux.
- **Lenz's law:** the induced current opposes the change that produced it.
- **Fleming's right-hand rule** applies to generators.

### Transformers
$$\\frac{V_s}{V_p} = \\frac{N_s}{N_p}$$
- Step-up: more secondary turns → higher voltage.
- Step-down: fewer secondary turns → lower voltage.
- Power stations step up voltage for transmission to reduce current, cutting \\(I^2R\\) losses.

## Common mistakes & exam traps

- Using the left-hand rule for generators — generators use the right-hand rule.
- Forgetting that a transformer works on **alternating** current only (it needs a changing flux).
- Saying "more voltage means more loss" — higher voltage means lower current, so less \\(I^2R\\) loss.
- Confusing the direction of the induced current (Lenz's law opposes the change).

## Exam technique

1. State the law/rule before applying it.
2. For transformer calculations, write \\(\\frac{V_s}{V_p} = \\frac{N_s}{N_p}\\) and substitute.
3. For "explain" questions on transmission, mention \\(I^2R\\) loss explicitly.
4. Name the rule you use (left hand for motor, right hand for generator).

## Memory hooks

- **Left hand (motor):** "thuMb = Motion, First = Field, seCond = Current."
- **Step-up:** "More turns, more voltage."

## Quick practice

1. State three ways to strengthen an electromagnet. **[More turns, more current, soft-iron core]**
2. Why step up voltage for transmission? **[Lower current → less I²R loss]**
3. A transformer has 200 primary turns and 1000 secondary turns. Input 230 V. Find the output. **[1150 V]**
4. Which rule applies to a generator? **[Fleming's right-hand rule]**`,
  },
  {
    subject: "Physics",
    slug: "phys",
    topic: "Radioactivity",
    title: "Radioactivity Cheatsheet",
    estimatedMinutes: 25,
    body: `## Why this topic matters

Radioactivity is a compact topic with guaranteed questions on the types of radiation, half-life calculations, and uses/safety. The properties of alpha, beta and gamma are the core knowledge.

## Core concepts

### The three types of radiation
| Type | Nature | Stopped by | Ionising power |
|---|---|---|---|
| Alpha (α) | Helium nucleus (2p + 2n) | Paper | Most ionising |
| Beta (β) | Fast electron | Aluminium | Moderate |
| Gamma (γ) | Electromagnetic wave | Lead (reduced) | Least ionising |

- **Penetration:** alpha < beta < gamma.
- **Ionisation:** alpha > beta > gamma.

### Half-life
The time taken for half the nuclei (or the activity) to decay.
- After 1 half-life: ½ remains. After 2: ¼. After 3: ⅛. After n: \\((\\frac{1}{2})^n\\).

**Worked example:** half-life 8 days, after 32 days (4 half-lives): \\((\\frac{1}{2})^4 = \\frac{1}{16}\\) remains.

### Uses
- Alpha: smoke detectors.
- Beta: thickness control in paper/foil production.
- Gamma: medical tracers, sterilisation, cancer therapy.
- Carbon-14: dating archaeological material.

### Safety precautions
- Use tongs, never bare hands.
- Store in lead-lined containers.
- Limit exposure time; increase distance; use shielding.
- Wear protective clothing.

## Common mistakes & exam traps

- Confusing which radiation is stopped by what (alpha = paper, beta = aluminium, gamma = lead).
- Mixing up ionising and penetrating power (they are opposite).
- Forgetting to divide by 2 repeatedly in half-life problems.
- Saying gamma is "the most dangerous" without context — it is the most penetrating.

## Exam technique

1. For half-life, count the number of half-lives first.
2. Write the fraction as \\((\\frac{1}{2})^n\\).
3. For safety questions, give specific precautions (tongs, lead, distance, time).
4. Match the radiation to its use by its properties.

## Memory hooks

- **Alpha, beta, gamma:** "Alpha is stopped by paper, beta by aluminium, gamma needs lead."
- **Half-life:** "Halve, halve, halve."

## Quick practice

1. Half-life 8 days: what fraction remains after 32 days? **[1/16]**
2. Which radiation is stopped by paper? **[Alpha]**
3. Which radiation is most penetrating? **[Gamma]**
4. Name two uses of gamma radiation. **[Medical tracers, sterilisation]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // CHEMISTRY — Form 5 (Ordinary Level)
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Atomic structure",
    title: "Atomic Structure Cheatsheet",
    estimatedMinutes: 25,
    body: `## Why this topic matters

Atomic structure is the foundation of all chemistry. GCE tests the subatomic particles, electron configuration, isotopes, and the periodic table patterns. It is also the gateway to bonding and the mole.

## Core concepts

### The atom
- **Nucleus:** protons (positive) + neutrons (neutral).
- **Electrons:** negative, arranged in shells around the nucleus.
- \\(Z\\) (atomic number) = number of protons.
- \\(A\\) (mass number) = protons + neutrons.
- **Isotopes:** same \\(Z\\), different \\(A\\) (same element, different neutron number).

### Electron configuration
Shells fill in order: 2, 8, 8.
- Sodium (11 electrons): 2, 8, 1.
- Chlorine (17 electrons): 2, 8, 7.

### The periodic table
- **Group** = same number of outer electrons → similar chemical properties.
- **Group I (alkali metals):** very reactive, form +1 ions; reactivity increases down the group.
- **Group VII (halogens):** form −1 ions; reactivity decreases down the group.
- **Group VIII (noble gases):** full outer shells, unreactive.
- **Periods:** metallic → non-metallic from left to right.

### Ions
- Metals lose electrons → positive ions (cations).
- Non-metals gain electrons → negative ions (anions).
- \\(\\text{Na} \\to \\text{Na}^+ + e^-\\), \\(\\text{Cl} + e^- \\to \\text{Cl}^-\\).

## Common mistakes & exam traps

- Confusing atomic number and mass number.
- Writing the electron configuration of an ion instead of the atom.
- Saying "isotopes have different protons" — they have the same protons, different neutrons.
- Forgetting that the number of electrons equals the number of protons in a neutral atom.

## Exam technique

1. Write \\(Z\\) and \\(A\\) clearly: \\(^{A}_{Z}X\\).
2. For electron configuration, count the electrons first.
3. For periodic table questions, link properties to the outer shell.
4. Give the charge of the ion with its sign (Na⁺, not Na).

## Memory hooks

- **Shells:** "2, 8, 8 — fill them in order."
- **Isotopes:** "Same protons, different neutrons."

## Quick practice

1. Give the electron configuration of chlorine (Z = 17). **[2, 8, 7]**
2. Why are noble gases unreactive? **[Full outer shells]**
3. An atom has 11 protons and 12 neutrons. Give Z and A. **[Z = 11, A = 23]**
4. What ion does magnesium (2, 8, 2) form? **[Mg²⁺]**`,
  },
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Bonding",
    title: "Bonding Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Bonding explains why substances behave the way they do. GCE tests ionic, covalent and metallic bonding, the properties of giant structures, and dot-and-cross diagrams. The properties questions are favourites because they reward precise vocabulary.

## Core concepts

### Ionic bonding
- A metal **loses** electrons → cation; a non-metal **gains** → anion.
- The oppositely charged ions attract → giant ionic lattice.
- \\(\\text{Na}^+ + \\text{Cl}^- \\to \\text{NaCl}\\).
- **Properties:** high melting point, conducts when molten or dissolved, usually soluble in water.
- Draw **dot-and-cross diagrams** — easy marks!

### Covalent bonding
- Non-metals **share** electrons: \\(\\text{H}_2\\text{O}\\), \\(\\text{CH}_4\\), \\(\\text{O}_2\\).
- **Simple molecules:** low melting/boiling points, do not conduct.
- **Giant covalent structures:**
  - **Diamond:** hardest natural substance, does not conduct (all electrons bonded).
  - **Graphite:** conducts (delocalised electrons between layers), slippery (layers slide) — used in pencils and lubricants.

### Metallic bonding
- Positive ions in a "sea" of delocalised electrons.
- **Properties:** conducts electricity and heat, malleable, high melting point.
- **Alloys:** different-sized atoms disrupt the layers, so they are **stronger** than pure metals.

## Common mistakes & exam traps

- Saying ionic compounds "conduct as solids" — they only conduct when molten or dissolved.
- Confusing diamond and graphite conductivity.
- Forgetting that alloys are stronger because the different atom sizes stop layers sliding.
- Drawing dot-and-cross diagrams without showing the outer shells clearly.

## Exam technique

1. For "explain properties" questions, link structure → bonding → property.
2. Draw the dot-and-cross diagram with the outer shell electrons only.
3. Use the correct vocabulary: lattice, delocalised, giant structure, molten.
4. Give two properties with reasons for full marks.

## Memory hooks

- **Ionic:** "Metal gives, non-metal takes."
- **Covalent:** "Non-metals share."
- **Graphite:** "Slides and conducts — layers and delocalised electrons."

## Quick practice

1. Why does graphite conduct but diamond does not? **[Graphite has delocalised electrons between layers]**
2. Why are alloys stronger than pure metals? **[Different atom sizes disrupt sliding layers]**
3. When does an ionic compound conduct electricity? **[When molten or dissolved]**
4. What type of bonding is in methane? **[Covalent]**`,
  },
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "The mole",
    title: "The Mole Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

The mole is the chemist's counting unit and the source of the most calculation marks on the GCE paper. Moles, masses, gas volumes and concentrations all follow from a few formulas. Titration calculations are a near-certainty.

## Core concepts

### The key formulas
- 1 mole \\(= 6.02 \\times 10^{23}\\) particles \\(= A_r\\) or \\(M_r\\) in grams.
- Moles \\(= \\frac{\\text{mass}}{M_r}\\).
- Gas at RTP: moles \\(= \\frac{\\text{volume}}{24\\,\\text{dm}^3}\\).
- Solution: moles \\(= \\text{concentration (mol/dm}^3\\text{)} \\times \\text{volume (dm}^3\\text{)}\\).
- \\(\\text{cm}^3 \\to \\text{dm}^3\\): divide by 1000.

### Relative formula masses to know
| Substance | \\(M_r\\) |
|---|---|
| \\(\\text{H}_2\\text{O}\\) | 18 |
| \\(\\text{H}_2\\text{SO}_4\\) | 98 |
| \\(\\text{CaCO}_3\\) | 100 |
| \\(\\text{KOH}\\) | 56 |
| \\(\\text{NaOH}\\) | 40 |

### The titration method (5 steps)
1. Write the balanced equation.
2. Find the moles of the known solution.
3. Use the mole ratio to find the moles of the unknown.
4. Find the concentration: moles ÷ volume.
5. Check the units (mol/dm³).

**Worked example:** 25 cm³ of 0.1 M NaOH neutralises 20 cm³ of HCl.
1. \\(\\text{NaOH} + \\text{HCl} \\to \\text{NaCl} + \\text{H}_2\\text{O}\\) (1:1 ratio).
2. Moles NaOH \\(= 0.1 \\times \\frac{25}{1000} = 0.0025\\).
3. Moles HCl \\(= 0.0025\\).
4. \\([\\text{HCl}] = \\frac{0.0025}{20/1000} = 0.125\\,\\text{mol/dm}^3\\).

## Common mistakes & exam traps

- Forgetting to convert cm³ to dm³ (divide by 1000).
- Using the wrong mole ratio from the equation.
- Confusing \\(A_r\\) (one atom) with \\(M_r\\) (whole formula).
- Forgetting the units on the final answer.

## Exam technique

1. Write the balanced equation first — the ratio comes from it.
2. Show every step; method marks are generous.
3. Convert all volumes to dm³ before calculating.
4. Check your answer is sensible (concentrations are usually between 0.01 and 2 mol/dm³).

## Memory hooks

- **Moles:** "Mass over Mr."
- **Gas at RTP:** "Volume over 24."
- **Solution:** "Concentration times volume."

## Quick practice

1. How many moles are in 9.8 g of \\(\\text{H}_2\\text{SO}_4\\)? **[0.1 mol]**
2. 25 cm³ of 0.1 M NaOH neutralises 20 cm³ of HCl. Find [HCl]. **[0.125 M]**
3. What mass of MgO forms from 4.8 g of Mg? \\(2\\text{Mg} + \\text{O}_2 \\to 2\\text{MgO}\\). **[8 g]**
4. What volume does 0.5 mol of gas occupy at RTP? **[12 dm³]**`,
  },
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Acids, bases and salts",
    title: "Acids, Bases & Salts Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Acids, bases and salts are a core GCE topic covering pH, neutralisation, salt preparation, solubility rules and gas tests. The salt preparation routes and gas tests are guaranteed marks.

## Core concepts

### Acids
- \\(\\text{pH} < 7\\); blue litmus turns red.
- \\(\\text{HCl}\\), \\(\\text{H}_2\\text{SO}_4\\), \\(\\text{HNO}_3\\).
- **Strong acid:** fully ionised in water (HCl). **Weak acid:** partially ionised (ethanoic acid).
- Reactions:
  - Acid + metal → salt + hydrogen.
  - Acid + carbonate → salt + water + carbon dioxide.
  - Acid + alkali → salt + water (neutralisation).

### Bases and alkalis
- \\(\\text{pH} > 7\\); red litmus turns blue.
- Bases: metal oxides and hydroxides. Alkalis are soluble bases: \\(\\text{NaOH}\\), \\(\\text{KOH}\\), \\(\\text{Ca(OH)}_2\\), aqueous ammonia.

### Salt preparation routes
| Route | Method |
|---|---|
| Acid + excess metal | Add metal until no more reacts, filter |
| Acid + insoluble base | Warm, add base until excess, filter |
| Acid + alkali | Titration (both soluble) |
| Acid + carbonate | Add carbonate until excess, filter |

### Solubility rules
- **Soluble:** all sodium, potassium and ammonium salts; all nitrates; chlorides except silver and lead; sulfates except barium, lead and calcium.
- **Insoluble:** carbonates except sodium, potassium and ammonium.

### Gas tests
| Gas | Test | Result |
|---|---|---|
| \\(\\text{H}_2\\) | Burning splint | Pop |
| \\(\\text{O}_2\\) | Glowing splint | Relights |
| \\(\\text{CO}_2\\) | Limewater | Turns milky |
| \\(\\text{NH}_3\\) | Damp red litmus | Turns blue |
| \\(\\text{Cl}_2\\) | Damp litmus | Bleaches |

## Common mistakes & exam traps

- Saying "acid + metal → salt + water" — it is salt + **hydrogen**.
- Forgetting the filter step in salt preparation.
- Confusing which chlorides/sulfates are insoluble.
- Writing the wrong gas test result.

## Exam technique

1. For salt preparation, name the route and the method steps.
2. For gas tests, give the test AND the result.
3. Write balanced equations for neutralisation.
4. Use the solubility rules to predict precipitates.

## Memory hooks

- **Acid + metal:** "Salt and hydrogen."
- **Acid + carbonate:** "Salt, water and carbon dioxide."
- **Gas tests:** "Hydrogen pops, oxygen relights, CO₂ goes milky."

## Quick practice

1. Give the test and result for carbon dioxide. **[Limewater turns milky]**
2. Which chlorides are insoluble? **[Silver chloride and lead chloride]**
3. Write the equation for HCl + NaOH. **[HCl + NaOH → NaCl + H₂O]**
4. How would you prepare a pure sample of copper(II) sulfate? **[React excess copper(II) oxide with warm sulfuric acid, filter]**`,
  },
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Electrolysis",
    title: "Electrolysis Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Electrolysis is a distinctive GCE topic that tests whether you can predict the products at each electrode. The selective discharge rules and the industrial applications (aluminium extraction, electroplating) are the key tested ideas.

## Core concepts

### The setup
- Electrolysis needs a **molten or dissolved ionic compound** (so ions can move) and a **DC supply**.
- **Cathode (−):** attracts cations (positive ions).
- **Anode (+):** attracts anions (negative ions).

### Selective discharge in solutions
- **Cathode:** hydrogen is produced UNLESS the metal is less reactive than hydrogen (Cu, Ag, Au deposit as metals).
- **Anode:** halide ions → halogen gas; sulfate/nitrate solutions → oxygen.

**Worked example:** electrolysis of molten NaCl.
- Cathode: \\(\\text{Na}^+ + e^- \\to \\text{Na}\\).
- Anode: \\(2\\text{Cl}^- \\to \\text{Cl}_2 + 2e^-\\).

### Applications
- **Electroplating:** the object is the cathode, the plating metal is the anode.
- **Aluminium extraction:** purified bauxite (\\(\\text{Al}_2\\text{O}_3\\)) dissolved in molten **cryolite** (lowers the melting point, saving energy). \\(\\text{Al}^{3+}\\) → Al at the cathode. Huge electricity use → smelters near hydroelectric dams.

## Common mistakes & exam traps

- Saying electrolysis works on any compound — the compound must be molten or dissolved.
- Forgetting that in aqueous solutions, hydrogen is often produced instead of the metal.
- Confusing cathode and anode (cathode = negative, attracts cations).
- Forgetting why cryolite is used (lowers melting point).

## Exam technique

1. Identify the ions present first.
2. Apply the discharge rules at each electrode.
3. Write half-equations with electrons.
4. For industrial questions, link the process to energy use.

## Memory hooks

- **Cathode:** "Cations to the cathode."
- **Anode:** "Anions to the anode."
- **Cryolite:** "Lowers the melting point, saves energy."

## Quick practice

1. What are the products of electrolysing molten NaCl? **[Na at cathode, Cl₂ at anode]**
2. Why is cryolite used in aluminium extraction? **[Lowers the melting point → saves energy]**
3. In electroplating, where is the object placed? **[At the cathode]**
4. What is produced at the cathode when electrolysing copper(II) sulfate solution? **[Copper]**`,
  },
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Metals",
    title: "Metals Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Metals covers the reactivity series, extraction, rusting and displacement reactions — all regular GCE questions. The reactivity series must be memorised, and the extraction method follows directly from it.

## Core concepts

### The reactivity series (memorise!)
$$\\text{K} > \\text{Na} > \\text{Ca} > \\text{Mg} > \\text{Al} > (\\text{C}) > \\text{Zn} > \\text{Fe} > (\\text{H}) > \\text{Cu} > \\text{Ag} > \\text{Au}$$

### Extraction
- **Above carbon** (K, Na, Ca, Mg, Al): extract by **electrolysis**.
- **Below carbon** (Zn, Fe, Cu): extract by **reduction with carbon/carbon monoxide**.
- **Blast furnace:** \\(\\text{Fe}_2\\text{O}_3\\) + coke + limestone. Coke provides carbon monoxide (the reducing agent); limestone removes impurities as slag.

### Rusting
- Needs **iron + oxygen + water**. Salt speeds it up.
- **Prevention:** paint, oil/grease, galvanising (zinc coating — zinc is sacrificial), alloying (stainless steel).

### Key reactions
- Metal + acid → salt + hydrogen (only metals above hydrogen in the series).
- A more reactive metal **displaces** a less reactive metal from its salt solution.
- \\(\\text{Fe} + \\text{CuSO}_4 \\to \\text{FeSO}_4 + \\text{Cu}\\).

## Common mistakes & exam traps

- Writing the reactivity series in the wrong order (K is most reactive, Au least).
- Saying copper can displace iron — it cannot (copper is less reactive).
- Forgetting that rusting needs BOTH oxygen and water.
- Confusing the extraction method for metals above vs below carbon.

## Exam technique

1. Quote the reactivity series when explaining displacement.
2. For rusting, state all three conditions (iron, oxygen, water).
3. For extraction, link the method to the metal's position relative to carbon.
4. Give two prevention methods with reasons.

## Memory hooks

- **Reactivity series:** "Please Stop Calling Me A Careless Zebra, I Think He Can't Swim" — K Na Ca Mg Al (C) Zn Fe (H) Cu Ag Au.

## Quick practice

1. Why does iron rust faster near the sea? **[Salt water speeds up rusting]**
2. Can copper displace iron from iron(II) sulfate? **[No — copper is less reactive]**
3. How is aluminium extracted? **[Electrolysis of molten aluminium oxide]**
4. Name two ways to prevent rusting. **[Paint, galvanising]**`,
  },
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Organic chemistry",
    title: "Organic Chemistry Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Organic chemistry introduces the chemistry of carbon compounds. GCE tests crude oil fractionation, alkanes, alkenes, combustion, and polymers. The alkene test (bromine water) is a guaranteed question.

## Core concepts

### Crude oil
- A mixture of hydrocarbons separated by **fractional distillation** (by boiling point).
- Fractions: refinery gas → petrol → naphtha → kerosene → diesel → bitumen.
- Shorter chains: lower boiling point, more volatile, more flammable.

### Alkanes (saturated)
- General formula: \\(C_nH_{2n+2}\\).
- Methane \\(\\text{CH}_4\\), ethane \\(\\text{C}_2\\text{H}_6\\).
- Only single C–C bonds.
- **Complete combustion:** \\(\\text{CH}_4 + 2\\text{O}_2 \\to \\text{CO}_2 + 2\\text{H}_2\\text{O}\\).
- **Incomplete combustion** (limited oxygen): produces toxic carbon monoxide.

### Alkenes (unsaturated)
- General formula: \\(C_nH_{2n}\\).
- Ethene \\(\\text{C}_2\\text{H}_4\\) — contains a C=C double bond.
- **Test for unsaturation:** shake with bromine water — red-brown → colourless.

### Polymers
- Ethene → poly(ethene) by addition polymerisation.
- Plastics cause pollution; recycle and reduce use.

## Common mistakes & exam traps

- Confusing the alkane and alkene formulas (\\(C_nH_{2n+2}\\) vs \\(C_nH_{2n}\\)).
- Writing incomplete combustion products as just CO — it is CO (toxic), not CO₂.
- Forgetting the bromine water test result (decolourised).
- Saying crude oil is separated by "filtering" — it is fractional distillation.

## Exam technique

1. Write the general formula before naming specific compounds.
2. For combustion, balance the equation carefully.
3. Give the test AND the colour change for unsaturation.
4. Link fraction properties to chain length.

## Memory hooks

- **Alkanes:** "Saturated — single bonds, CnH2n+2."
- **Alkenes:** "Unsaturated — double bond, CnH2n."
- **Bromine water:** "Red-brown to colourless = double bond present."

## Quick practice

1. Give the test for unsaturation. **[Bromine water decolourised]**
2. Why is incomplete combustion dangerous? **[Produces toxic carbon monoxide]**
3. Write the formula of propane. **[C₃H₈]**
4. How is crude oil separated? **[Fractional distillation by boiling point]**`,
  },
  {
    subject: "Chemistry",
    slug: "chem",
    topic: "Rates of reaction",
    title: "Rates of Reaction Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Rates of reaction is a practical-heavy GCE topic. Examiners test the factors that change the rate, how to measure it, and the collision theory explanation. The graph interpretation questions reward clear reasoning.

## Core concepts

### Measuring rate
- Rate \\(= \\frac{\\text{change in quantity}}{\\text{time}}\\).
- Measure: volume of gas produced, loss of mass, change in colour/turbidity, time for a cross to disappear.

### Factors that change the rate
| Factor | Effect | Why (collision theory) |
|---|---|---|
| Concentration | Higher → faster | More particles per volume → more collisions |
| Temperature | Higher → faster | Particles move faster → more energetic collisions |
| Surface area | Smaller pieces → faster | More exposed particles → more collisions |
| Catalyst | Faster | Lowers activation energy |
| Pressure (gases) | Higher → faster | Particles squeezed closer → more collisions |

### Collision theory
Particles must **collide** with **enough energy** (≥ activation energy) and the **correct orientation** to react.

### Catalysts
- Speed up a reaction without being used up.
- Lower the activation energy.
- Biological catalysts are enzymes.

### Graphs
- Steeper gradient = faster rate.
- The line flattens when the reaction stops (one reactant used up).
- A catalyst makes the initial gradient steeper but the final amount is the same.

## Common mistakes & exam traps

- Saying temperature "gives particles more energy" without mentioning collisions.
- Confusing surface area with concentration.
- Forgetting that a catalyst does not change the final yield.
- Reading the graph incorrectly — the rate is the gradient, not the height.

## Exam technique

1. Use collision theory vocabulary: collisions, energy, activation energy, orientation.
2. For graph questions, describe the gradient and what happens at the end.
3. Give the factor, the effect, and the reason for full marks.
4. For "how to measure rate", name the apparatus and what you record.

## Memory hooks

- **Collision theory:** "Collide with enough energy, the right way round."
- **Catalyst:** "Speeds up, not used up."

## Quick practice

1. Why does increasing temperature speed up a reaction? **[More energetic collisions]**
2. Does a catalyst change the final yield? **[No]**
3. Name two ways to measure the rate of a gas-producing reaction. **[Volume of gas, loss of mass]**
4. Why does powdering a solid speed up a reaction? **[Increases surface area → more collisions]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // BIOLOGY — Form 5 (Ordinary Level)
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Biology",
    slug: "bio",
    topic: "Cell biology",
    title: "Cell Biology Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Cell biology is the foundation of the whole GCE Biology syllabus. Cell structure, specialised cells, and the movement of substances (diffusion, osmosis, active transport) appear in nearly every paper.

## Core concepts

### Cell structure
- **All cells:** cell membrane (controls entry/exit), cytoplasm (site of reactions), nucleus (contains chromosomes/DNA).
- **Plant cells extra:** cellulose cell wall (support), chloroplasts (photosynthesis), large permanent vacuole (cell sap).

### Specialised cells
| Cell | Adaptation | Function |
|---|---|---|
| Red blood cell | No nucleus, biconcave shape | Carries oxygen |
| Root hair cell | Long extension | Absorbs water and minerals |
| Sperm cell | Tail | Movement |
| Palisade cell | Many chloroplasts | Photosynthesis |

### Movement of substances
- **Diffusion:** movement from high to low concentration (no energy needed). Example: oxygen into the blood.
- **Osmosis:** movement of **water** through a **partially permeable membrane** from a dilute to a concentrated solution.
- **Active transport:** movement against the concentration gradient, **uses energy**. Example: root hairs absorbing mineral ions.

### The exam favourite
A plant wilts in salty soil: the soil solution is more concentrated than the cell sap → water leaves the cells by osmosis → cells lose turgor → wilting.

## Common mistakes & exam traps

- Defining osmosis as "movement of water from high to low concentration" — it must mention the partially permeable membrane.
- Saying diffusion "uses energy" — it does not.
- Confusing active transport with diffusion (active transport goes against the gradient and needs energy).
- Forgetting plant-specific structures.

## Exam technique

1. Define osmosis exactly: water, partially permeable membrane, dilute → concentrated.
2. For "explain wilting" questions, use the full chain: concentrated soil → water leaves → turgor lost.
3. Give two differences between plant and animal cells with examples.
4. Use the correct vocabulary: turgor, plasmolysis, concentration gradient.

## Memory hooks

- **Osmosis:** "Water through a partially permeable membrane, dilute to concentrated."
- **Diffusion:** "High to low, no energy."
- **Active transport:** "Low to high, needs energy."

## Quick practice

1. Give two differences between plant and animal cells. **[Cell wall + chloroplasts present in plants only]**
2. Define osmosis exactly. **[Water moves through a partially permeable membrane from a dilute to a concentrated solution]**
3. Why does a plant wilt in salty soil? **[Water leaves cells by osmosis → loss of turgor]**
4. Which process needs energy? **[Active transport]**`,
  },
  {
    subject: "Biology",
    slug: "bio",
    topic: "Nutrition and digestion",
    title: "Nutrition & Digestion Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Nutrition and digestion cover the food groups, deficiency diseases, the digestive system, and enzymes — all regular GCE questions. The enzyme facts and the digestive journey are the core knowledge.

## Core concepts

### The food groups
| Nutrient | Function | Sources |
|---|---|---|
| Carbohydrates | Energy | Rice, cassava, maize |
| Proteins | Growth and repair | Beans, fish, meat |
| Fats | Concentrated energy | Palm oil, groundnuts |
| Vitamins | Regulate body processes | Fruits, vegetables |
| Minerals | Various | Meat, milk, iodised salt |

### Vitamins and minerals
- **Vitamin A:** vision (deficiency → night blindness).
- **Vitamin C:** healing, iron absorption (deficiency → scurvy).
- **Vitamin D:** calcium absorption (deficiency → rickets).
- **Iron:** haemoglobin (deficiency → anaemia).
- **Calcium:** bones and teeth.
- **Iodine:** thyroid (deficiency → goitre).
- **Protein deficiency:** kwashiorkor. **Energy deficiency:** marasmus.

### The digestive system
| Part | What happens |
|---|---|
| Mouth | Teeth chew; amylase digests starch → maltose |
| Stomach | HCl + pepsin digest protein |
| Small intestine | Bile emulsifies fat; lipase → fatty acids + glycerol; villi absorb |
| Large intestine | Water absorbed |

### Enzyme facts
- Enzymes are **proteins**.
- They are **specific** (each enzyme acts on one substrate).
- They **speed up** reactions (catalysts).
- Best temperature ≈ 37°C; **denatured** by high heat and extreme pH.

## Common mistakes & exam traps

- Confusing which enzyme digests which food (amylase = starch, protease = protein, lipase = fat).
- Saying enzymes are "killed" by heat — they are **denatured** (active site changes shape).
- Forgetting the role of bile (emulsifies fat — a physical change, not digestion).
- Mixing up deficiency diseases and their causes.

## Exam technique

1. For enzyme questions, use the vocabulary: substrate, active site, denatured, specific.
2. For digestion, trace the food through the system naming each enzyme and product.
3. Give the nutrient, its function, and a source for full marks.
4. For "why does chewing help", mention surface area for enzymes.

## Memory hooks

- **Amylase:** "Starch to maltose."
- **Protease:** "Protein to amino acids."
- **Lipase:** "Fat to fatty acids and glycerol."

## Quick practice

1. Name the enzyme for starch and where it is produced. **[Amylase; salivary glands and pancreas]**
2. Why does chewing help digestion? **[Increases surface area for enzymes]**
3. Which deficiency causes scurvy? **[Vitamin C]**
4. What does bile do? **[Emulsifies fat]**`,
  },
  {
    subject: "Biology",
    slug: "bio",
    topic: "Transport systems",
    title: "Transport Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Transport covers the plant vascular system and the human circulatory system — both guaranteed GCE topics. The blood trace question and the xylem/phloem distinction are favourites.

## Core concepts

### Transport in plants
- **Xylem:** carries water and minerals **up** the plant (transpiration pull).
- **Phloem:** carries food (sugars) **both ways** (translocation).
- **Transpiration** is faster with: wind, heat, low humidity, light.
- Stomata open in light, close in darkness.
- **Wilting** happens when transpiration exceeds water uptake.

### Human circulation
- **Double circulation:** right side of the heart → lungs; left side → body.
- **Arteries:** thick, elastic walls, high pressure, carry blood away from the heart.
- **Veins:** valves, low pressure, carry blood back to the heart.
- **Capillaries:** one cell thick — site of exchange.

### Blood
- **Plasma:** liquid, transports dissolved substances.
- **Red blood cells:** carry oxygen (haemoglobin, no nucleus).
- **White blood cells:** defend against disease.
- **Platelets:** help blood clot.

### The blood trace (exam favourite)
Lungs → pulmonary vein → left atrium → left ventricle → aorta → arteries → capillaries → body → veins → vena cava → right atrium → right ventricle → pulmonary artery → lungs.

## Common mistakes & exam traps

- Confusing xylem and phloem (xylem = water up, phloem = food both ways).
- Saying arteries carry "oxygenated blood" — the pulmonary artery carries deoxygenated blood.
- Forgetting valves are in veins (to prevent backflow at low pressure).
- Mixing up the order of the heart chambers in the trace.

## Exam technique

1. For the blood trace, start and end at the lungs, naming every structure.
2. Give the adaptation AND its function for each blood vessel.
3. For transpiration, list the environmental factors.
4. Use the correct vocabulary: transpiration pull, translocation, double circulation.

## Memory hooks

- **Xylem:** "X = water up."
- **Arteries:** "Away from the heart."
- **Trace:** "Lungs → vein → left atrium → left ventricle → aorta → body."

## Quick practice

1. Why do veins have valves? **[To prevent backflow at low pressure]**
2. What happens when transpiration exceeds water uptake? **[Wilting]**
3. Which vessel carries blood from the heart to the lungs? **[Pulmonary artery]**
4. What does the phloem transport? **[Food (sugars)]**`,
  },
  {
    subject: "Biology",
    slug: "bio",
    topic: "Respiration",
    title: "Respiration Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Respiration is the energy-releasing process that appears in every GCE paper. The aerobic/anaerobic equations, breathing mechanics, and the alveoli adaptations are the core tested items.

## Core concepts

### Aerobic respiration
$$\\text{Glucose} + \\text{O}_2 \\to \\text{CO}_2 + \\text{H}_2\\text{O} + \\text{energy}$$
- Happens in every cell, releasing about 38 ATP per glucose.
- Requires oxygen.

### Anaerobic respiration
- **Muscles:** glucose → lactic acid (causes fatigue and oxygen debt).
- **Yeast:** glucose → ethanol + carbon dioxide (fermentation — used in brewing and bread-making).

### Breathing mechanics
- **Inhale:** diaphragm flattens, ribs move up and out → chest volume increases → pressure decreases → air enters.
- **Exhale:** the reverse.

### The alveoli
Adaptations for gas exchange:
- Thin walls (one cell thick).
- Moist surfaces.
- Huge surface area.
- Rich blood supply.

### Smoking
Damages cilia → bronchitis, emphysema, lung cancer, heart disease.

## Common mistakes & exam traps

- Writing the anaerobic equation with oxygen — anaerobic means WITHOUT oxygen.
- Confusing breathing (ventilation) with respiration (energy release).
- Saying respiration "happens in the lungs" — it happens in every cell.
- Forgetting the products of fermentation (ethanol + CO₂).

## Exam technique

1. Write the word equations for both aerobic and anaerobic respiration.
2. For "why does exercise cause pain", mention lactic acid and oxygen debt.
3. For alveoli, give at least three adaptations.
4. Distinguish clearly between breathing and respiration.

## Memory hooks

- **Aerobic:** "Glucose plus oxygen makes CO₂, water and energy."
- **Anaerobic in muscles:** "Glucose to lactic acid."
- **Yeast:** "Glucose to ethanol and CO₂."

## Quick practice

1. Why does anaerobic exercise cause muscle pain? **[Lactic acid builds up]**
2. Why is yeast used in bread-making? **[CO₂ raises the dough]**
3. Give two adaptations of the alveoli. **[Thin walls, huge surface area]**
4. Write the word equation for aerobic respiration. **[Glucose + oxygen → carbon dioxide + water + energy]**`,
  },
  {
    subject: "Biology",
    slug: "bio",
    topic: "Coordination",
    title: "Coordination Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Coordination covers the nervous system, the reflex arc, the eye, hormones, and the kidney. The reflex arc diagram and the insulin/diabetes link are guaranteed GCE questions.

## Core concepts

### The nervous system
- **CNS** = brain + spinal cord.
- **Reflex arc:** receptor → sensory neurone → relay neurone (spinal cord) → motor neurone → effector.
- Reflexes are fast, automatic and protective.

### The eye
- Cornea and lens focus light.
- Iris controls pupil size.
- Retina contains rods (dim light) and cones (colour).
- **Accommodation:** the lens changes shape to focus near and far objects.

### Hormones
| Hormone | Source | Effect |
|---|---|---|
| Insulin | Pancreas | Lowers blood glucose (lack → diabetes) |
| Adrenaline | Adrenal glands | Fight-or-flight response |
| Thyroxine | Thyroid | Controls metabolic rate |

### The kidney
1. **Ultrafiltration** in the Bowman's capsule.
2. **Selective reabsorption** of glucose, water and salts.
3. Urine = urea + excess water and salts.

## Common mistakes & exam traps

- Drawing the reflex arc with the relay neurone in the brain — it is in the spinal cord.
- Saying hormones act "quickly" — they are slower but longer-lasting than nerves.
- Confusing rods and cones.
- Forgetting the three kidney stages in order.

## Exam technique

1. Draw and label the reflex arc with all five parts.
2. For "why is insulin a hormone", say it is a chemical messenger carried in the blood.
3. Give the source and effect for each hormone.
4. For the kidney, name the three stages in order.

## Memory hooks

- **Reflex arc:** "Receptor, sensory, relay, motor, effector."
- **Insulin:** "Lowers blood glucose."
- **Kidney:** "Filter, reabsorb, excrete."

## Quick practice

1. Draw and label the reflex arc. **[5 parts]**
2. Why is insulin called a hormone? **[A chemical messenger carried in the blood]**
3. What do rods detect? **[Dim light]**
4. Where does ultrafiltration happen? **[Bowman's capsule]**`,
  },
  {
    subject: "Biology",
    slug: "bio",
    topic: "Reproduction and genetics",
    title: "Reproduction & Genetics Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Reproduction and genetics combine the biology of inheritance with human reproduction. Genetic crosses, sex determination, and the sickle-cell example (very relevant in Cameroon) are guaranteed GCE questions.

## Core concepts

### Reproduction
- **Asexual:** one parent, offspring identical (cassava stems, yeast budding).
- **Sexual:** gametes fuse → variation.
- **Flower:** stamens (male: anther + filament), carpel (female: stigma, style, ovary).
- Insect-pollinated: colourful, scented. Wind-pollinated: small, light pollen.
- Ovule → seed; ovary → fruit.
- **Human:** ovulation ≈ day 14; fertilisation in the oviduct; the placenta exchanges nutrients, oxygen and waste.
- **HIV transmission:** blood, sexual contact, mother-to-child — NOT casual contact.

### Genetics
- **Alleles:** dominant (T) vs recessive (t).
- \\(Tt \\times Tt\\) → 1 TT : 2 Tt : 1 tt = 3 tall : 1 short.
- **Sex determination:** XX = female, XY = male — the father decides.
- **Sickle cell:** AS carriers are healthy; SS individuals have the disease (common in Cameroon).

**Worked example:** \\(Tt \\times tt\\).
Gametes: T, t × t, t. Offspring: Tt, Tt, tt, tt → 1 : 1 (50% tall, 50% short).

## Common mistakes & exam traps

- Writing the gametes wrong (each gamete carries ONE allele).
- Forgetting the phenotype ratio (3:1) vs genotype ratio (1:2:1).
- Saying the mother determines the sex of the child — the father's sperm decides.
- Confusing the flower parts (stamen = male, carpel = female).

## Exam technique

1. Draw the Punnett square with gametes clearly labelled.
2. Write the genotype ratio and phenotype ratio separately.
3. For sex determination, show XX and XY.
4. For sickle cell, use the AS/SS notation.

## Memory hooks

- **Gametes:** "One allele each."
- **3:1 ratio:** "Tt × Tt gives 3 dominant, 1 recessive."
- **Sex:** "Father decides — X or Y sperm."

## Quick practice

1. \\(Tt \\times tt\\): give the offspring ratio. **[1 Tt : 1 tt — 50% tall]**
2. Why do siblings differ? **[Meiosis + random fertilisation → variation]**
3. What is the genotype of a person with sickle-cell disease? **[SS]**
4. Where does fertilisation occur in humans? **[Oviduct]**`,
  },
  {
    subject: "Biology",
    slug: "bio",
    topic: "Ecology",
    title: "Ecology Cheatsheet",
    estimatedMinutes: 25,
    body: `## Why this topic matters

Ecology covers ecosystems, food chains, nutrient cycles and environmental issues. GCE loves Cameroon examples — Waza reserve, deforestation, and the energy loss in food chains.

## Core concepts

### Key terms
- **Habitat:** where an organism lives.
- **Population:** all organisms of one species in an area.
- **Community:** all the populations in an area.
- **Ecosystem:** the community + its environment.

### Food chains
Producer → primary consumer → secondary consumer → tertiary consumer.
- **Decomposers** break down dead matter and recycle nutrients.
- Only about **10% of energy** passes to the next level → chains rarely exceed 4 links.

### Cycles
- **Carbon cycle:** photosynthesis, respiration, combustion, decomposition.
- **Water cycle:** evaporation, condensation, precipitation.

### Cameroon examples
- Waza National Park (wildlife).
- Congo Basin deforestation.
- Soil erosion after slash-and-burn farming.

## Common mistakes & exam traps

- Confusing population and community.
- Forgetting decomposers in the food chain diagram.
- Saying energy is "recycled" — energy flows through, matter is recycled.
- Putting the producer at the wrong end of the chain.

## Exam technique

1. Start every food chain with a producer (plant).
2. For "why are food chains short", mention the 90% energy loss at each level.
3. Give the role of decomposers explicitly.
4. Use Cameroon examples when asked for local applications.

## Memory hooks

- **Food chain:** "Producer first, arrows point to the eater."
- **Energy:** "10% passes on, 90% is lost."

## Quick practice

1. Why are food chains short? **[90% of energy is lost at each level]**
2. What is the role of decomposers? **[Break down dead matter and recycle nutrients]**
3. Name two processes in the carbon cycle. **[Photosynthesis, respiration]**
4. Define a population. **[All organisms of one species in an area]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // HUMAN BIOLOGY — Form 5 (Ordinary Level)
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Human Biology",
    slug: "hbio",
    topic: "Body systems",
    title: "Body Systems Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Body systems covers the organisation of the body, the skin, and the skeleton — the foundation topics of Human Biology. GCE tests the functions of the skin and skeleton, joint types, and the levels of organisation.

## Core concepts

### Organisation
Cells → tissues → organs → systems.
**Homeostasis** = maintaining a constant internal environment.

### The skin
- **Epidermis:** outer layer, contains melanin (protects against UV).
- **Dermis:** sweat glands, blood vessels, receptors, fat.
- **Functions:**
  1. Protection (barrier against microbes and UV).
  2. Temperature regulation (sweating, vasodilation/vasoconstriction).
  3. Sensation (touch, pain, heat, cold).
  4. Vitamin D synthesis.

### The skeleton
- **Functions:** support, protection (skull, ribs), movement, blood cell production (bone marrow), mineral storage (calcium).
- **Joints:**
  - Fixed (skull).
  - Slightly movable (spine).
  - Freely movable (synovial): ball-and-socket (shoulder, hip), hinge (elbow, knee).
- **Synovial joint parts:** cartilage (reduces friction), synovial fluid (lubricates), ligaments (bone to bone).
- **Muscles:** work in antagonistic pairs (biceps/triceps).

## Common mistakes & exam traps

- Confusing ligaments (bone to bone) with tendons (muscle to bone).
- Saying the skin's only function is protection.
- Forgetting that the skeleton produces blood cells in the marrow.
- Mixing up joint types.

## Exam technique

1. Give two functions of the skin besides protection.
2. For joints, name the type and the movement it allows.
3. Use the correct vocabulary: antagonistic, synovial, ligament, tendon.
4. For homeostasis, define it precisely.

## Memory hooks

- **Ligament:** "Ligament links bone to bone."
- **Tendon:** "Tendon ties muscle to bone."
- **Antagonistic:** "Biceps bends, triceps straightens."

## Quick practice

1. Give two skin functions besides protection. **[Temperature regulation, sensation]**
2. What type of joint is the elbow? **[Hinge]**
3. What does the skeleton produce in the bone marrow? **[Blood cells]**
4. Define homeostasis. **[Maintaining a constant internal environment]**`,
  },
  {
    subject: "Human Biology",
    slug: "hbio",
    topic: "Blood and circulation",
    title: "Blood & Circulation Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Blood and circulation is a core Human Biology topic. The composition of blood, the heart, blood groups, and the breathing system all appear on the GCE paper.

## Core concepts

### Blood
- **Plasma:** liquid, transports dissolved substances.
- **Red blood cells:** contain haemoglobin, carry oxygen, NO nucleus.
- **White blood cells:** phagocytes (engulf microbes) and lymphocytes (produce antibodies).
- **Platelets:** help blood clot.
- **Blood groups:** O = universal donor, AB = universal recipient.

### The heart
- 4 chambers; the **left ventricle is the thickest** (pumps blood around the whole body).
- **Valves** prevent backflow.
- **SAN (sinoatrial node)** is the pacemaker — the heart is myogenic.
- Cardiac output = stroke volume × heart rate.
- **Coronary arteries** supply the heart muscle; blockage → heart attack (risks: smoking, fat, inactivity).

### The breathing system
Nose (warms/filters) → trachea (cartilage rings) → bronchi → bronchioles → alveoli.
- Alveoli: thin, moist, huge surface area, rich blood supply.
- **Inhale:** diaphragm flattens, ribs rise → pressure falls → air in.

## Common mistakes & exam traps

- Saying the left ventricle is thickest "because it pumps to the lungs" — it pumps to the whole body.
- Confusing the universal donor (O) and recipient (AB).
- Forgetting that red blood cells have no nucleus.
- Mixing up the order of the breathing passages.

## Exam technique

1. For the blood trace, name every structure in order.
2. Give the adaptation and function for each blood component.
3. For the heart, link the ventricle thickness to its job.
4. Use the correct vocabulary: myogenic, cardiac output, coronary.

## Memory hooks

- **Donor/recipient:** "O gives to all, AB takes from all."
- **Left ventricle:** "Thickest — pumps to the whole body."
- **Breathing in:** "Diaphragm down, ribs up, pressure down, air in."

## Quick practice

1. Why is the left ventricle thicker than the right? **[It pumps blood around the whole body]**
2. Trace blood from the lungs to the body. **[Lungs → pulmonary vein → left atrium → left ventricle → aorta → body]**
3. Which blood group is the universal donor? **[O]**
4. What is cardiac output? **[Stroke volume × heart rate]**`,
  },
  {
    subject: "Human Biology",
    slug: "hbio",
    topic: "Reproduction and health",
    title: "Reproduction & Health Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Reproduction and health covers the reproductive systems, the menstrual cycle, pregnancy, and public health issues like STIs. GCE tests the labelled diagrams, the cycle, and the placenta's functions.

## Core concepts

### The male system
- **Testes:** produce sperm and testosterone.
- Sperm travel: testes → vas deferens → urethra.

### The female system
- **Ovaries:** produce ova, oestrogen and progesterone.
- Ova travel: ovary → oviduct → uterus.
- **Menstrual cycle:** ~28 days; ovulation ≈ day 14.
- Hormones: FSH, LH, oestrogen, progesterone.

### Fertilisation and pregnancy
- Fertilisation occurs in the **oviduct**.
- Implantation in the uterus lining.
- **Placenta functions:** exchange of nutrients/oxygen/waste, produces hormones, acts as a barrier.

### Health
- **Antenatal care:** regular check-ups during pregnancy.
- Dangers: malaria, anaemia.
- **Contraception:** barrier (condoms), hormonal (pill), natural methods.
- **STIs:** HIV via blood, sexual contact, mother-to-child — NOT casual contact. Prevention: testing, condoms, faithfulness.

## Common mistakes & exam traps

- Saying fertilisation happens in the uterus — it is in the oviduct.
- Confusing FSH and LH roles.
- Forgetting the placenta is a barrier as well as an exchange surface.
- Saying HIV spreads by casual contact — it does not.

## Exam technique

1. Draw and label the female reproductive system with at least 5 parts.
2. Give three placenta functions.
3. For the cycle, state ovulation day and the hormones involved.
4. For HIV, state the three transmission routes precisely.

## Memory hooks

- **Fertilisation:** "In the oviduct."
- **Placenta:** "Exchange, hormones, barrier."
- **Ovulation:** "Around day 14."

## Quick practice

1. Draw and label the female reproductive system. **[5 parts]**
2. Give three functions of the placenta. **[Exchange, hormones, barrier]**
3. Where does fertilisation occur? **[Oviduct]**
4. Name two ways HIV is transmitted. **[Blood, sexual contact]**`,
  },
  {
    subject: "Human Biology",
    slug: "hbio",
    topic: "Nutrition and disease",
    title: "Nutrition & Disease Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Nutrition and disease links diet to health — a topic with strong Cameroon relevance. GCE tests the food groups, deficiency diseases, and the prevention of common diseases.

## Core concepts

### The food groups
| Nutrient | Function | Deficiency disease |
|---|---|---|
| Carbohydrates | Energy | Marasmus (energy deficiency) |
| Proteins | Growth and repair | Kwashiorkor |
| Fats | Concentrated energy | — |
| Vitamin A | Vision | Night blindness |
| Vitamin C | Healing, iron absorption | Scurvy |
| Vitamin D | Calcium absorption | Rickets |
| Iron | Haemoglobin | Anaemia |
| Iodine | Thyroid function | Goitre |
| Calcium | Bones and teeth | Weak bones |

### Balanced diet
A balanced diet provides the right amounts of all nutrients for age, sex, activity and health status.

### Common diseases
- **Malaria:** caused by Plasmodium, spread by the female Anopheles mosquito. Prevention: bed nets, insecticide, clearing stagnant water.
- **Cholera:** contaminated water/food. Prevention: clean water, hygiene.
- **Diabetes:** inability to control blood glucose. Type 1: no insulin. Type 2: linked to diet and inactivity.
- **Hypertension:** high blood pressure — reduce salt, fat, stress.

## Common mistakes & exam traps

- Confusing kwashiorkor (protein) and marasmus (energy).
- Saying malaria is caused by "dirty water" — it is caused by the Plasmodium parasite spread by mosquitoes.
- Forgetting the vitamin–disease pairings.
- Giving the disease without its cause or prevention.

## Exam technique

1. Give the nutrient, its function, a source, and the deficiency disease.
2. For diseases, state cause, transmission, and prevention.
3. Use Cameroon-relevant examples (malaria, cholera in the rainy season).
4. For "balanced diet", mention the factors that change needs.

## Memory hooks

- **Kwashiorkor:** "Protein — puffy belly."
- **Marasmus:** "Energy — thin and wasted."
- **Malaria:** "Plasmodium, Anopheles mosquito."

## Quick practice

1. Which deficiency causes scurvy? **[Vitamin C]**
2. What causes malaria and how is it spread? **[Plasmodium parasite; female Anopheles mosquito]**
3. Give two ways to prevent cholera. **[Clean water, good hygiene]**
4. What is the deficiency disease for iron? **[Anaemia]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // AGRICULTURAL SCIENCE — Form 5 (Ordinary Level)
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Agricultural Science",
    slug: "agr",
    topic: "Soils",
    title: "Soils Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Soils is a foundation topic in Agricultural Science. GCE tests the soil profile, texture, nutrients, fertilisers, and conservation methods. The soil profile diagram and nutrient deficiency questions are favourites.

## Core concepts

### The soil profile
- **A horizon (topsoil):** organic matter, roots, most fertile.
- **B horizon (subsoil):** less organic matter, accumulates minerals.
- **C horizon:** weathered parent rock.

### Soil texture
- Sand (large particles, drains fast), silt, clay (small particles, holds water).
- **Loam** (balanced mix) is ideal.
- Best pH for most crops: 6–7 (test with an indicator).

### Humus
Decayed organic matter — improves water retention, supplies nutrients, improves structure.

### Plant nutrients
| Nutrient | Role | Deficiency sign |
|---|---|---|
| Nitrogen (N) | Leaf growth | Yellowing leaves |
| Phosphorus (P) | Root growth | Purple leaves |
| Potassium (K) | Fruit/quality | Poor fruit, weak stems |

### Fertilisers
- **Organic** (manure, compost): improves structure, slow release.
- **Inorganic** (NPK, urea): fast, precise.
- Application: broadcasting, banding, top dressing.

### Conservation
Crop rotation, mulching, cover crops, terracing, agroforestry, contour ploughing.
- **Erosion:** water (gullying after deforestation), wind (Sahel region).

## Common mistakes & exam traps

- Confusing the A and B horizons.
- Saying clay drains fast — clay holds water, sand drains.
- Forgetting which nutrient causes which deficiency sign.
- Giving erosion controls without explaining how they work.

## Exam technique

1. Draw and label the soil profile with the three horizons.
2. For nutrients, give the role AND the deficiency sign.
3. For conservation, name the method and how it reduces erosion.
4. Use the correct vocabulary: humus, loam, leaching, topsoil.

## Memory hooks

- **N-P-K:** "Nitrogen for leaves, Phosphorus for roots, Potassium for fruit."
- **Loam:** "The ideal mix of sand, silt and clay."

## Quick practice

1. Draw and label the soil profile. **[3 horizons]**
2. Give two erosion control methods. **[Terracing, mulching]**
3. Yellowing leaves indicate which deficiency? **[Nitrogen]**
4. Why is loam ideal for farming? **[Balanced drainage and water retention]**`,
  },
  {
    subject: "Agricultural Science",
    slug: "agr",
    topic: "Crop production",
    title: "Crop Production Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Crop production covers propagation, nursery practices, major Cameroonian crops, and pest/disease control. GCE tests the propagation methods, cocoa processing, and the cassava mosaic disease cycle.

## Core concepts

### Propagation
- **Sexual (seeds):** maize, cocoa.
- **Vegetative (asexual):** cassava stems, yam setts, plantain suckers, grafting.
- Advantages of vegetative propagation: true to type, faster, no seed dormancy.

### Nursery practices
- Seedbed preparation, pricking out, hardening off.
- **Spacing** prevents competition for light, water and nutrients.
- Weed at 2–3 weeks (maize).
- **Irrigation:** flood, furrow, drip (most efficient).

### Major crops
- **Cocoa:** shade trees needed; pods fermented 5–7 days (turning) then dried — quality determines price.
- **Coffee:** Arabica (highlands), Robusta (lowlands).
- **Cassava:** planted from stems, 9–12 months to harvest, processed to garri (removes cyanide).

### Pests and diseases
- **Fungal:** cocoa black pod (favoured by humidity).
- **Viral:** cassava mosaic (spread by whitefly; control with clean planting material).
- **Control:** cultural (rotation, sanitation), biological, chemical (follow labels, wear protection, respect withdrawal periods).

## Common mistakes & exam traps

- Saying cassava is grown from seeds — it is grown from stem cuttings.
- Forgetting why cocoa is fermented (develops flavour, quality = price).
- Confusing the vector of cassava mosaic (whitefly).
- Giving chemical control without safety precautions.

## Exam technique

1. For propagation, name the method and an example crop.
2. For cocoa, link fermentation/drying to quality and price.
3. For diseases, give the cause, vector, and control.
4. Use the correct vocabulary: sett, sucker, pricking out, hardening off.

## Memory hooks

- **Vegetative:** "Stems, setts, suckers — no seeds."
- **Cassava mosaic:** "Whitefly carries it, clean stems stop it."

## Quick practice

1. Why ferment and dry cocoa properly? **[Quality determines price]**
2. What is the vector of cassava mosaic and how is it controlled? **[Whitefly; clean planting material]**
3. Give one advantage of vegetative propagation. **[True to type, faster]**
4. Which irrigation method is most efficient? **[Drip]**`,
  },
  {
    subject: "Agricultural Science",
    slug: "agr",
    topic: "Animal production",
    title: "Animal Production Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Animal production covers poultry, pigs, cattle and small ruminants. GCE tests broiler/layer management, vaccination, biosecurity, and the African swine fever situation.

## Core concepts

### Poultry
- **Broilers:** raised for meat, ready in 6–8 weeks.
- **Layers:** raised for eggs, start laying ≈ 20 weeks.
- **Housing:** deep litter or battery cages.
- **Brooding:** warmth in the first weeks.
- **Feed:** starter → grower → layers' mash. Clean water always.
- **Vaccines:** Newcastle, Gumboro.
- **Healthy signs:** alert, glossy feathers, good feed intake.

### Pigs
- Farrowing care for sows and piglets.
- **African swine fever (ASF):** NO vaccine → strict biosecurity only.

### Cattle
- Zebu cattle; tsetse fly challenge in the south.
- Diseases: CBPP, trypanosomiasis.
- Dry-season supplementation.

### Small ruminants and fish
- Goats/sheep: browse and graze; deworm against parasites.
- Fish: tilapia in ponds.

### Biosecurity
Footbaths, isolate new birds, control visitors, clean equipment.

## Common mistakes & exam traps

- Confusing broilers and layers.
- Saying ASF has a vaccine — it does not; control is biosecurity.
- Forgetting the brooding requirement for chicks.
- Giving vaccination without the disease names.

## Exam technique

1. For poultry, give the feed stages and vaccination schedule.
2. For biosecurity, give specific measures.
3. For ASF, state clearly that there is no vaccine.
4. Use the correct vocabulary: brooding, deep litter, farrowing, biosecurity.

## Memory hooks

- **Broilers:** "Meat in 6–8 weeks."
- **Layers:** "Eggs from about 20 weeks."
- **ASF:** "No vaccine — biosecurity only."

## Quick practice

1. Give the vaccination schedule for broilers. **[Newcastle, Gumboro]**
2. Give two biosecurity measures. **[Footbaths, isolation of new birds]**
3. Why is there no vaccine for ASF? **[Viral disease — control by biosecurity only]**
4. What is brooding? **[Providing warmth to chicks in the first weeks]**`,
  },
  {
    subject: "Agricultural Science",
    slug: "agr",
    topic: "Farm management",
    title: "Farm Management Cheatsheet",
    estimatedMinutes: 25,
    body: `## Why this topic matters

Farm management covers the business side of agriculture — records, costs, revenue, profit and simple accounts. GCE tests farm records, cost calculations, and the importance of planning.

## Core concepts

### Farm records
- **Inventory:** list of farm assets.
- **Production records:** what was produced.
- **Financial records:** income and expenditure.
- **Importance:** planning, monitoring, decision-making, obtaining credit.

### Costs and revenue
- **Fixed costs:** do not change with output (rent, equipment).
- **Variable costs:** change with output (seeds, feed, fertiliser).
- **Total cost** = fixed + variable.
- **Revenue** = price × quantity sold.
- **Profit** = revenue − total cost.

**Worked example:** a farmer sells 200 bags of maize at 5,000 FCFA each. Revenue = 1,000,000 FCFA. Fixed costs 200,000, variable costs 300,000. Total cost = 500,000. Profit = 500,000 FCFA.

### Farm planning
- Choose crops/animals suited to the land and market.
- Budget for inputs.
- Plan for seasons and risks (drought, pests, price changes).

### Marketing
- Direct sale, cooperatives, middlemen.
- Cooperatives give better prices and shared transport.

## Common mistakes & exam traps

- Confusing fixed and variable costs.
- Forgetting that profit = revenue − total cost (not just revenue).
- Giving records without their purpose.
- Mixing up revenue and profit.

## Exam technique

1. Define each term before calculating.
2. Show the calculation steps clearly.
3. For "why keep records", give at least three reasons.
4. Use the correct vocabulary: fixed cost, variable cost, revenue, profit.

## Memory hooks

- **Profit:** "Revenue minus total cost."
- **Fixed costs:** "Same every month, whatever you produce."

## Quick practice

1. A farmer sells 200 bags at 5,000 FCFA each. Fixed costs 200,000, variable 300,000. Find profit. **[500,000 FCFA]**
2. Give two reasons for keeping farm records. **[Planning, obtaining credit]**
3. Define variable cost with an example. **[Costs that change with output — seeds, feed]**
4. Why do cooperatives help farmers? **[Better prices, shared transport]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // FOOD AND NUTRITION — Form 5 (Ordinary Level)
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Food and Nutrition",
    slug: "fnut",
    topic: "Nutrients",
    title: "Nutrients Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Nutrients is the foundation of Food and Nutrition. GCE tests the energy values, vitamins, minerals, and the effects of deficiency. The energy values (4/4/9) are guaranteed marks.

## Core concepts

### Energy values
- Carbohydrate: 4 kcal/g.
- Protein: 4 kcal/g.
- Fat: 9 kcal/g.

### Vitamins
| Vitamin | Function | Sources | Deficiency |
|---|---|---|---|
| A | Vision | Red palm oil, carrots | Night blindness |
| C | Healing, iron absorption | Citrus, guava | Scurvy |
| D | Calcium absorption | Sunlight, fish | Rickets |
| Folate | Blood cell formation | Green leaves | Anaemia in pregnancy |

### Minerals
- **Iron:** haemoglobin (dark greens, meat) — deficiency: anaemia. Vitamin C aids absorption.
- **Calcium:** bones and teeth (milk, fish).
- **Iodine:** thyroid (iodised salt) — deficiency: goitre.

### Water
6–8 glasses daily — transport, temperature regulation, waste removal.

### Balance
- BMI \\(= \\frac{\\text{kg}}{\\text{m}^2}\\). Healthy range: 18.5–24.9.
- Needs vary with age, sex, activity, pregnancy.

## Common mistakes & exam traps

- Forgetting the energy values (4/4/9).
- Confusing which vitamin prevents which disease.
- Saying vitamin C is stored in the body — it is water-soluble and not stored.
- Giving the deficiency without the source.

## Exam technique

1. Give the vitamin, function, source, and deficiency disease.
2. For energy, state the value per gram.
3. For "balanced diet", mention the factors that change needs.
4. Use the correct vocabulary: water-soluble, fat-soluble, deficiency.

## Memory hooks

- **Energy values:** "4, 4, 9 — carbs, protein, fat."
- **Vitamin A:** "A for eyes."
- **Vitamin D:** "D for bones (with calcium)."

## Quick practice

1. Give the energy value of 1 g of each nutrient. **[4/4/9]**
2. Give two deficiency diseases and their causes. **[Scurvy (vitamin C), rickets (vitamin D)]**
3. What is the healthy BMI range? **[18.5–24.9]**
4. Which mineral prevents goitre? **[Iodine]**`,
  },
  {
    subject: "Food and Nutrition",
    slug: "fnut",
    topic: "Meal planning",
    title: "Meal Planning Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Meal planning tests whether you can apply nutrition knowledge to real families and budgets — a favourite GCE question type. The planning factors and special diets are the core knowledge.

## Core concepts

### Planning factors
Nutritional needs, budget, season, time available, equipment, family size, culture and religion.

### Food groups
- **Energy-giving:** carbohydrates and fats.
- **Body-building:** proteins.
- **Protective:** vitamins and minerals.

### Special diets
| Diet | Key rules |
|---|---|
| Diabetic | Controlled carbohydrates, regular meals |
| Hypertensive | Less than 5 g salt per day, use herbs |
| Pregnant | Extra protein, iron, folate |
| Convalescent | High protein, small frequent meals |

### A balanced Cameroonian example
A small-budget lunch: rice + beans + huckleberry + avocado + water.
- Swaps: seasonal vegetables, dried fish instead of meat.

## Common mistakes & exam traps

- Planning meals without considering the budget.
- Forgetting to justify the choice of foods.
- Giving a diet for one condition but not explaining the rules.
- Ignoring seasonality and local availability.

## Exam technique

1. Plan the day's meals first, then justify each choice.
2. Link every food to a nutrient and its function.
3. For special diets, state the rule AND the reason.
4. Use the correct vocabulary: balanced, protective, energy-giving.

## Memory hooks

- **Planning factors:** "Needs, budget, season, time, equipment, family, culture."
- **Diabetic:** "Controlled carbs, regular meals."

## Quick practice

1. Plan a day's meals for a pregnant woman on a limited budget, with justification. **[10 marks]**
2. Give two ways to conserve vitamin C when cooking. **[Little water, short cooking time]**
3. Name the three food groups. **[Energy-giving, body-building, protective]**
4. What is the salt limit for a hypertensive person? **[Less than 5 g per day]**`,
  },
  {
    subject: "Food and Nutrition",
    slug: "fnut",
    topic: "Preservation and hygiene",
    title: "Preservation & Hygiene Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Preservation and hygiene cover food spoilage, preservation methods, and kitchen safety — all tested on the GCE paper. The danger zone and cross-contamination are the key concepts.

## Core concepts

### Causes of spoilage
Micro-organisms, enzymes, pests, moisture, oxygen.

### Preservation methods
| Method | Example |
|---|---|
| Drying | Fish, mangoes |
| Salting | Fish, meat |
| Smoking | Fish |
| Fermentation | Garri |
| Canning | Fruits, vegetables |
| Freezing | Meat, vegetables |
| Pickling | Vegetables |
| Jam-making | Sugar + acid |

- **Refrigeration SLOWS spoilage; it does not stop it.**

### Kitchen hygiene
- Wash hands before and during cooking.
- Cover cuts; tie back hair.
- **Separate raw and cooked food** (prevent cross-contamination).
- Cool leftovers quickly; reheat thoroughly ONCE.

### The danger zone
5–63 °C — bacteria multiply fastest. Keep hot food hot, cold food cold.

### Food-borne illnesses
- **Salmonella:** undercooked poultry.
- **Cholera:** contaminated water (rainy-season risk in Cameroon).

## Common mistakes & exam traps

- Saying refrigeration "kills bacteria" — it only slows them.
- Confusing the danger zone temperatures.
- Forgetting to separate raw and cooked food.
- Giving preservation methods without examples.

## Exam technique

1. For preservation, give the method, an example, and how it works.
2. For hygiene, give specific practices.
3. State the danger zone range precisely.
4. For illnesses, give the cause and prevention.

## Memory hooks

- **Danger zone:** "5 to 63 — bacteria's happy place."
- **Cross-contamination:** "Raw and cooked never touch."

## Quick practice

1. Give three fish preservation methods with one advantage each. **[Drying, salting, smoking]**
2. Define the danger zone and give one rule. **[5–63 °C; keep hot food hot]**
3. What is cross-contamination and how is it prevented? **[Raw to cooked transfer; separate boards and utensils]**
4. Why does refrigeration not stop spoilage? **[It only slows bacterial growth]**`,
  },
];
