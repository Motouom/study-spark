module.exports = [
  // ═══════════════════════════════════════════════════════════════════════════
  // PHYSICS — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Physics",
    slug: "physics",
    topic: "Mechanics",
    title: "Mechanics Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Mechanics is the largest and most reliable section of the Advanced Physics paper. Kinematics, Newton's laws, momentum, energy and circular motion are tested every year. Master the definitions and the equations, and you secure a large share of the marks.

## Core concepts

### Kinematics
- \\(v = u + at\\), \\(s = ut + \\frac{1}{2}at^2\\), \\(v^2 = u^2 + 2as\\).
- \\(v = \\frac{ds}{dt}\\), \\(a = \\frac{dv}{dt}\\).
- **Projectiles:** horizontal motion at constant velocity; vertical motion under gravity.

### Newton's laws
1. A body stays at rest or uniform motion unless acted on by a resultant force.
2. \\(F = ma\\).
3. Action and reaction are equal and opposite.

### Momentum
- \\(p = mv\\).
- **Conservation of momentum:** total momentum before = total momentum after (no external force).
- **Impulse:** \\(Ft = \\Delta p\\) — the area under a force-time graph.
- **Elastic collision:** kinetic energy conserved. **Inelastic:** not conserved.

### Work, energy and power
- \\(W = Fs\\cos\\theta\\).
- **Kinetic energy:** \\(E_k = \\frac{1}{2}mv^2\\).
- **Gravitational potential energy:** \\(E_p = mgh\\).
- **Power:** \\(P = \\frac{W}{t} = Fv\\).
- **Conservation of energy:** total energy is conserved.

### Circular motion
- \\(v = \\omega r\\).
- **Centripetal acceleration:** \\(a = \\frac{v^2}{r} = \\omega^2 r\\).
- **Centripetal force:** \\(F = \\frac{mv^2}{r} = m\\omega^2 r\\).
- The centripetal force acts **towards the centre**.

### Simple harmonic motion
- \\(a = -\\omega^2 x\\).
- \\(x = A\\cos(\\omega t)\\), \\(v_{max} = \\omega A\\).
- \\(T = 2\\pi\\sqrt{\\frac{m}{k}}\\) (mass-spring), \\(T = 2\\pi\\sqrt{\\frac{l}{g}}\\) (pendulum).

## Common mistakes & exam traps

- Using SUVAT when acceleration is not constant.
- Forgetting that momentum is a vector (direction matters).
- Confusing elastic and inelastic collisions.
- Using the wrong energy formula.
- Forgetting the direction of the centripetal force.

## Exam technique

1. Draw a diagram and label forces.
2. State the principle (conservation of momentum/energy) before applying it.
3. Check units — convert to SI first.
4. For circular motion, identify what provides the centripetal force.

## Memory hooks

- **Energy:** "KE half mv², PE mgh, work Fs."
- **SHM:** "Acceleration proportional to −displacement."

## Quick practice

1. A 2 kg mass moves at 3 m/s. Find its kinetic energy. **[9 J]**
2. A force of 10 N acts for 2 s on a 2 kg body at rest. Find the final velocity. **[10 m/s]**
3. What is the centripetal force on a 1 kg mass at 2 m/s on a 1 m radius? **[4 N]**
4. State the law of conservation of momentum. **[Total momentum is conserved with no external force]**`,
  },
  {
    subject: "Physics",
    slug: "physics",
    topic: "Waves and optics",
    title: "Waves & Optics Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Waves and optics cover wave properties, sound, light, refraction, interference and diffraction. The wave equations and the laws of refraction are tested every year. Interference and diffraction are favourite "explain" questions.

## Core concepts

### Wave basics
- \\(v = f\\lambda\\) (speed = frequency × wavelength).
- \\(T = \\frac{1}{f}\\).
- **Transverse waves:** vibrations perpendicular to travel (light, water).
- **Longitudinal waves:** vibrations parallel to travel (sound).
- **Amplitude:** maximum displacement. **Frequency:** waves per second.

### The wave equation
$$y = A\\sin(\\omega t - kx)$$
where \\(\\omega = 2\\pi f\\) and \\(k = \\frac{2\\pi}{\\lambda}\\).

### Reflection and refraction
- **Law of reflection:** angle of incidence = angle of reflection.
- **Snell's law:** \\(n_1\\sin\\theta_1 = n_2\\sin\\theta_2\\).
- **Refractive index:** \\(n = \\frac{c}{v} = \\frac{\\sin i}{\\sin r}\\).
- **Total internal reflection:** occurs when light goes from denser to rarer medium at an angle greater than the **critical angle** \\(\\sin c = \\frac{1}{n}\\).
- Used in optical fibres.

### Lenses
- **Thin lens equation:** \\(\\frac{1}{f} = \\frac{1}{u} + \\frac{1}{v}\\).
- **Magnification:** \\(m = \\frac{v}{u}\\).
- **Convex lens:** converges; forms real or virtual images.
- **Concave lens:** diverges; always forms virtual images.

### Interference
- **Young's double slit:** \\(\\lambda = \\frac{ax}{D}\\) (fringe spacing).
- Constructive interference: path difference \\(= n\\lambda\\).
- Destructive interference: path difference \\(= (n + \\frac{1}{2})\\lambda\\).
- **Coherent sources:** same frequency and constant phase difference.

### Diffraction
- Spreading of waves past obstacles or through gaps.
- Single slit: central maximum is twice as wide as the others.
- Diffraction grating: \\(d\\sin\\theta = n\\lambda\\).

## Common mistakes & exam traps

- Confusing transverse and longitudinal waves.
- Forgetting that \\(v = f\\lambda\\) needs consistent units.
- Mixing up the sign conventions in the lens equation.
- Using degrees instead of radians in wave equations.
- Forgetting the conditions for total internal reflection.

## Exam technique

1. Write the wave equation and identify the unknowns.
2. For refraction, draw the ray and label the angles.
3. For interference, state the condition (constructive/destructive) before calculating.
4. Check the critical angle condition for TIR.

## Memory hooks

- **v = fλ:** "Speed is frequency times wavelength."
- **TIR:** "Denser to rarer, beyond the critical angle."

## Quick practice

1. A wave has frequency 50 Hz and wavelength 2 m. Find its speed. **[100 m/s]**
2. State Snell's law. **[n₁ sin θ₁ = n₂ sin θ₂]**
3. What is the critical angle for glass of n = 1.5? **[≈41.8°]**
4. For constructive interference, the path difference is... **[nλ]**`,
  },
  {
    subject: "Physics",
    slug: "physics",
    topic: "Electricity and magnetism",
    title: "Electricity & Magnetism Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Electricity and magnetism are a major section of the Advanced Physics paper. Ohm's law, circuits, Kirchhoff's laws, electromagnetic induction and alternating current are all tested. Circuit problems reward systematic working.

## Core concepts

### Basic quantities
- **Current:** \\(I = \\frac{Q}{t}\\) (amperes).
- **Voltage (p.d.):** energy per unit charge (volts).
- **Resistance:** \\(R = \\frac{V}{I}\\) (ohms).
- **Resistivity:** \\(R = \\frac{\\rho l}{A}\\).

### Series and parallel circuits
- **Series:** \\(R_T = R_1 + R_2 + ...\\). Current is the same; voltage divides.
- **Parallel:** \\(\\frac{1}{R_T} = \\frac{1}{R_1} + \\frac{1}{R_2} + ...\\). Voltage is the same; current divides.

### Kirchhoff's laws
1. **Current law:** the sum of currents entering a junction equals the sum leaving.
2. **Voltage law:** the sum of emfs around a closed loop equals the sum of potential drops.

### Power and energy
- \\(P = VI = I^2R = \\frac{V^2}{R}\\).
- \\(E = Pt = VIt\\).

### Electromagnetism
- A current-carrying wire in a magnetic field experiences a force:
  \\(F = BIl\\sin\\theta\\).
- **Fleming's left-hand rule:** thumb = force, first finger = field, second finger = current.

### Electromagnetic induction
- **Faraday's law:** induced emf \\(\\propto\\) rate of change of flux linkage.
- **Lenz's law:** the induced current opposes the change producing it.
- \\(\\mathcal{E} = -N\\frac{d\\Phi}{dt}\\).

### Alternating current
- \\(V_{rms} = \\frac{V_0}{\\sqrt{2}}\\), \\(I_{rms} = \\frac{I_0}{\\sqrt{2}}\\).
- \\(P_{av} = V_{rms}I_{rms}\\).
- **Transformers:** \\(\\frac{V_s}{V_p} = \\frac{N_s}{N_p}\\). Ideal: \\(V_p I_p = V_s I_s\\).

## Common mistakes & exam traps

- Adding parallel resistances like series ones.
- Forgetting to convert units (mA to A, kΩ to Ω).
- Confusing emf and terminal voltage.
- Using peak values instead of rms for AC power.
- Forgetting Lenz's law direction.

## Exam technique

1. Redraw the circuit and label currents and voltages.
2. Simplify series/parallel combinations step by step.
3. Apply Kirchhoff's laws systematically to loops.
4. For AC, use rms values in power calculations.

## Memory hooks

- **Series vs parallel:** "Series adds, parallel reciprocals."
- **Fleming:** "Thumb force, first finger field, second finger current."

## Quick practice

1. Find the total resistance of 4 Ω and 6 Ω in parallel. **[2.4 Ω]**
2. A 12 V, 3 A appliance uses what power? **[36 W]**
3. State Faraday's law. **[Induced emf ∝ rate of change of flux linkage]**
4. If \\(V_0 = 311\\) V, find \\(V_{rms}\\). **[≈220 V]**`,
  },
  {
    subject: "Physics",
    slug: "physics",
    topic: "Modern physics",
    title: "Modern Physics Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Modern physics covers the photoelectric effect, atomic structure, radioactivity and nuclear energy. These topics test your understanding of quantum ideas and nuclear processes. The photoelectric effect and radioactive decay are the most common questions.

## Core concepts

### The photoelectric effect
- Light (photons) can eject electrons from a metal surface.
- \\(E = hf\\), where \\(h = 6.63 \\times 10^{-34}\\) J·s.
- **Work function:** \\(\\phi = hf_0\\) — the minimum energy to eject an electron.
- **Einstein's equation:** \\(hf = \\phi + KE_{max}\\).
- Increasing light **intensity** increases the number of electrons, not their energy.
- Increasing **frequency** increases the electrons' energy.

### Atomic structure
- \\(E = hf\\) for photon energy.
- Electrons occupy discrete energy levels.
- **Excitation:** an electron moves to a higher level.
- **Ionisation:** an electron is removed completely.
- Emission spectra: photons emitted when electrons drop levels.

### Radioactivity
- **Alpha (α):** helium nucleus, \\(\\frac{4}{2}He\\), stopped by paper, highly ionising.
- **Beta (β):** fast electron, stopped by a few mm of aluminium.
- **Gamma (γ):** electromagnetic wave, stopped by thick lead, weakly ionising.

### Radioactive decay
- \\(N = N_0 e^{-\\lambda t}\\).
- **Half-life:** \\(T_{1/2} = \\frac{\\ln 2}{\\lambda}\\).
- **Activity:** \\(A = \\lambda N\\) (becquerels).

### Nuclear energy
- **Fission:** a heavy nucleus splits (uranium-235) — releases energy.
- **Fusion:** light nuclei join (hydrogen → helium) — releases more energy per kg.
- \\(E = mc^2\\) — mass converted to energy.

## Common mistakes & exam traps

- Confusing intensity (number of photons) with frequency (energy per photon).
- Forgetting the work function in the photoelectric equation.
- Mixing up the penetrating powers of α, β, γ.
- Using the wrong half-life formula.
- Forgetting that \\(E = mc^2\\) relates mass and energy.

## Exam technique

1. Write the photoelectric equation and identify each term.
2. For decay, identify \\(N_0\\), \\(\\lambda\\) and \\(t\\) first.
3. Compare α, β, γ by ionising power and penetration.
4. Use \\(E = mc^2\\) with mass in kg.

## Memory hooks

- **Photoelectric:** "hf = φ + KE."
- **Penetration:** "Paper stops α, aluminium stops β, lead stops γ."

## Quick practice

1. State Einstein's photoelectric equation. **[hf = φ + KE_max]**
2. What does increasing light intensity do? **[Increases the number of electrons]**
3. What is the half-life formula? **[T½ = ln 2 / λ]**
4. Which radiation is stopped by paper? **[Alpha]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // CHEMISTRY — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Chemistry",
    slug: "chemistry",
    topic: "Atomic structure and periodicity",
    title: "Atomic Structure & Periodicity Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Atomic structure explains everything else in chemistry — bonding, periodicity, and reactions. You must know the subatomic particles, electron configuration, and how the periodic table is organised. This is the foundation of the whole paper.

## Core concepts

### Subatomic particles
| Particle | Charge | Mass |
|---|---|---|
| Proton | +1 | 1 |
| Neutron | 0 | 1 |
| Electron | −1 | ≈ 1/1840 |

- **Atomic number (Z):** number of protons.
- **Mass number (A):** protons + neutrons.
- **Isotopes:** same protons, different neutrons — same chemical properties, different mass.

### Electron configuration
- Electrons fill orbitals in order of energy: 1s, 2s, 2p, 3s, 3p, 4s, 3d...
- **Aufbau principle:** fill lowest energy first.
- **Hund's rule:** fill orbitals singly before pairing.
- **Pauli exclusion:** max 2 electrons per orbital, opposite spins.
- Example: \\(\\text{Na}\\) (11 e⁻): \\(1s^2 2s^2 2p^6 3s^1\\).

### The periodic table
- **Groups:** columns — elements with the same outer electron configuration.
- **Periods:** rows — the number of the period = highest energy level.
- **Group 1 (alkali metals):** 1 outer electron, very reactive.
- **Group 2 (alkaline earth):** 2 outer electrons.
- **Group 7 (halogens):** 7 outer electrons, reactive non-metals.
- **Group 0 (noble gases):** full outer shell, unreactive.

### Trends across a period
- **Atomic radius:** decreases across (more protons pull electrons in).
- **Ionisation energy:** increases across (harder to remove an electron).
- **Electronegativity:** increases across (stronger attraction for bonding electrons).
- **Down a group:** radius increases, ionisation energy decreases, electronegativity decreases.

### Ionisation energy
- The energy to remove one mole of electrons from one mole of gaseous atoms.
- Successive ionisation energies increase; a big jump shows a new shell.

## Common mistakes & exam traps

- Confusing atomic number and mass number.
- Writing electron configurations in the wrong order (4s before 3d).
- Forgetting that isotopes have the same chemical properties.
- Getting the direction of trends wrong.

## Exam technique

1. Learn the order of orbital filling.
2. For trends, explain WHY (nuclear charge, shielding, distance).
3. Use the periodic table to predict configurations.
4. For ionisation energy, link big jumps to shell changes.

## Memory hooks

- **Filling order:** "1s 2s 2p 3s 3p 4s 3d."
- **Across a period:** "Radius down, ionisation up, electronegativity up."

## Quick practice

1. Write the electron configuration of sodium. **[1s² 2s² 2p⁶ 3s¹]**
2. What are isotopes? **[Same protons, different neutrons]**
3. Does atomic radius increase or decrease across a period? **[Decrease]**
4. Which group is unreactive? **[Group 0]**`,
  },
  {
    subject: "Chemistry",
    slug: "chemistry",
    topic: "Chemical bonding",
    title: "Chemical Bonding Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Bonding explains why substances have the properties they do. Ionic, covalent and metallic bonding, plus intermolecular forces, are tested every year. You must be able to describe bonding and link it to properties like melting point and conductivity.

## Core concepts

### Ionic bonding
- Transfer of electrons between a metal and a non-metal.
- Oppositely charged ions attract (electrostatic attraction).
- Example: NaCl — Na loses 1 e⁻, Cl gains 1 e⁻.
- **Properties:** high melting points, conduct when molten or dissolved, brittle, hard.

### Covalent bonding
- Sharing of electron pairs between non-metals.
- **Single bond:** one shared pair. **Double:** two pairs. **Triple:** three pairs.
- **Dative (coordinate) bond:** both electrons come from one atom.
- **Properties:** low melting points, poor conductors, often gases or liquids.

### Metallic bonding
- A lattice of positive ions in a "sea" of delocalised electrons.
- **Properties:** high melting points, conduct electricity and heat, malleable and ductile.

### Shapes of molecules
- **VSEPR theory:** electron pairs repel to maximise distance.
- 2 bonding pairs → linear (180°).
- 3 bonding pairs → trigonal planar (120°).
- 4 bonding pairs → tetrahedral (109.5°).
- 4 pairs, 1 lone → pyramidal. 4 pairs, 2 lone → bent.

### Electronegativity and polarity
- **Electronegativity:** the ability of an atom to attract bonding electrons.
- Unequal sharing → polar bonds (H–Cl).
- Symmetrical molecules can be non-polar overall (CO₂).

### Intermolecular forces
- **Van der Waals forces:** weak, between all molecules — increase with size.
- **Hydrogen bonding:** strong, between H and N/O/F — explains water's high boiling point.

## Common mistakes & exam traps

- Confusing ionic (transfer) and covalent (share).
- Forgetting that ionic compounds only conduct when molten or dissolved.
- Getting the shape wrong by forgetting lone pairs.
- Confusing intramolecular bonds with intermolecular forces.

## Exam technique

1. Identify the type of elements (metal/non-metal) to choose the bonding.
2. Link bonding to properties explicitly.
3. For shapes, count bonding and lone pairs.
4. Explain hydrogen bonding with a diagram.

## Memory hooks

- **Bonding:** "Ionic transfers, covalent shares, metallic swims."
- **Shapes:** "2 linear, 3 trigonal, 4 tetrahedral."

## Quick practice

1. What type of bonding is in NaCl? **[Ionic]**
2. Why do ionic compounds conduct when molten? **[Ions are free to move]**
3. What shape is CH₄? **[Tetrahedral]**
4. Which intermolecular force explains water's high boiling point? **[Hydrogen bonding]**`,
  },
  {
    subject: "Chemistry",
    slug: "chemistry",
    topic: "Energetics and kinetics",
    title: "Energetics & Kinetics Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Energetics (enthalpy changes) and kinetics (rates of reaction) are core physical chemistry topics. You must calculate enthalpy changes using Hess's law and bond energies, and explain how factors affect reaction rates using collision theory.

## Core concepts

### Enthalpy changes
- \\(\\Delta H\\): heat change at constant pressure.
- **Exothermic:** \\(\\Delta H < 0\\) — heat released (combustion, neutralisation).
- **Endothermic:** \\(\\Delta H > 0\\) — heat absorbed (thermal decomposition).

### Standard enthalpy changes
- **Formation:** forming 1 mole of a compound from its elements.
- **Combustion:** burning 1 mole in oxygen.
- **Neutralisation:** acid + base → 1 mole of water.

### Hess's law
- The enthalpy change of a reaction is independent of the route taken.
- Use enthalpy cycles to find unknown \\(\\Delta H\\).

### Bond energies
$$\\Delta H = \\Sigma(\\text{bonds broken}) - \\Sigma(\\text{bonds formed})$$
- Breaking bonds absorbs energy; forming bonds releases energy.

### Rates of reaction
- **Collision theory:** reactions happen when particles collide with enough energy and the right orientation.
- **Activation energy:** the minimum energy for a reaction.

### Factors affecting rate
- **Concentration/pressure:** more particles → more collisions → faster.
- **Temperature:** more energy → more successful collisions → faster.
- **Surface area:** more exposed particles → faster.
- **Catalyst:** lowers activation energy → faster (not used up).

### Catalysts
- Provide an alternative pathway with lower activation energy.
- Homogeneous: same phase as reactants. Heterogeneous: different phase.

## Common mistakes & exam traps

- Getting the sign of \\(\\Delta H\\) wrong.
- Forgetting to multiply bond energies by the number of bonds.
- Confusing exothermic and endothermic.
- Thinking a catalyst is consumed.
- Forgetting the orientation requirement in collision theory.

## Exam technique

1. Draw the enthalpy cycle for Hess's law questions.
2. For bond energies, list bonds broken and formed separately.
3. Explain rate changes with collision theory (energy AND frequency of collisions).
4. State the activation energy effect of catalysts.

## Memory hooks

- **Bond energy:** "Broken minus formed."
- **Exothermic:** "ΔH negative, heat out."

## Quick practice

1. Is combustion exothermic or endothermic? **[Exothermic]**
2. State Hess's law. **[ΔH is independent of the route]**
3. How does a catalyst speed up a reaction? **[Lowers activation energy]**
4. Why does higher temperature speed up reactions? **[More successful collisions]**`,
  },
  {
    subject: "Chemistry",
    slug: "chemistry",
    topic: "Organic chemistry",
    title: "Organic Chemistry Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Organic chemistry is a large section of the Advanced Chemistry paper. You must know the functional groups, homologous series, isomerism, and the reactions of alkanes, alkenes, alcohols and carboxylic acids. Naming and reaction conditions are frequently tested.

## Core concepts

### Homologous series
| Series | Functional group | Example |
|---|---|---|
| Alkanes | C–C single bonds | methane CH₄ |
| Alkenes | C=C double bond | ethene C₂H₄ |
| Alcohols | –OH | ethanol C₂H₅OH |
| Carboxylic acids | –COOH | ethanoic acid |
| Haloalkanes | –X (Cl, Br) | chloroethane |
| Aldehydes | –CHO | ethanal |
| Ketones | C=O (in chain) | propanone |

### Naming
- Find the longest carbon chain → root (meth, eth, prop, but...).
- Number the chain to give the substituents the lowest numbers.
- Use prefixes (chloro-, methyl-) and suffixes (-ol, -oic acid, -ene).

### Isomerism
- **Structural:** different arrangement of atoms — chain, position, functional group.
- **Geometric (cis/trans):** restricted rotation around C=C.
- **Optical:** mirror images (chiral centres).

### Reactions of alkanes
- Combustion: \\(CH_4 + 2O_2 \\to CO_2 + 2H_2O\\).
- Substitution with halogens (UV light): \\(CH_4 + Cl_2 \\to CH_3Cl + HCl\\).

### Reactions of alkenes
- **Addition reactions** (the C=C opens):
  - Hydrogenation: + H₂ (Ni catalyst).
  - Halogenation: + Br₂ (decolourises bromine water — test for unsaturation).
  - Hydration: + H₂O (steam, H₃PO₄) → alcohol.
  - Addition of HX → haloalkane.
- **Polymerisation:** ethene → poly(ethene).

### Reactions of alcohols
- Combustion.
- Oxidation (K₂Cr₂O₇/H⁺): primary → aldehyde → carboxylic acid; secondary → ketone.
- Dehydration (conc. H₂SO₄): alcohol → alkene.

### Carboxylic acids
- Weak acids: react with bases, metals, carbonates.
- **Esterification:** acid + alcohol → ester + water (conc. H₂SO₄ catalyst).

## Common mistakes & exam traps

- Naming the chain in the wrong direction.
- Forgetting the conditions (UV light, catalyst, heat).
- Confusing addition (alkenes) and substitution (alkanes).
- Not knowing the bromine water test.
- Forgetting the functional group in the name.

## Exam technique

1. Learn the functional groups and their suffixes.
2. For reactions, state the reagent AND the conditions.
3. Name compounds systematically (longest chain, lowest numbers).
4. Use displayed structures to check your answers.

## Memory hooks

- **Alkanes substitute, alkenes add.**
- **Bromine water:** "Decolourises = C=C present."

## Quick practice

1. What is the functional group of an alcohol? **[−OH]**
2. How do you test for a C=C double bond? **[Bromine water decolourises]**
3. Name CH₃CH₂OH. **[Ethanol]**
4. What type of reaction is CH₄ + Cl₂ → CH₃Cl + HCl? **[Substitution]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // BIOLOGY — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Biology",
    slug: "biology",
    topic: "Cell biology",
    title: "Cell Biology Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Cell biology is the foundation of the Advanced Biology paper. Cell structure, organelles, transport across membranes, and cell division are tested every year. You must be able to describe structures and link them to their functions.

## Core concepts

### Prokaryotic vs eukaryotic
- **Prokaryotic:** no nucleus, no membrane-bound organelles, small ribosomes — bacteria.
- **Eukaryotic:** nucleus present, membrane-bound organelles — plants, animals, fungi.

### Organelles and functions
| Organelle | Function |
|---|---|
| Nucleus | Contains DNA, controls the cell |
| Mitochondria | Aerobic respiration — ATP production |
| Ribosomes | Protein synthesis |
| Rough ER | Protein transport (with ribosomes) |
| Golgi apparatus | Modifies and packages proteins |
| Lysosomes | Digestion, breakdown of waste |
| Chloroplasts | Photosynthesis (plants) |
| Cell wall | Support (plants, fungi, bacteria) |
| Vacuole | Storage, support (plants) |

### Cell membranes
- **Fluid mosaic model:** phospholipid bilayer with proteins.
- **Selectively permeable.**
- **Transport:**
  - **Diffusion:** passive, down the concentration gradient.
  - **Osmosis:** diffusion of water through a partially permeable membrane.
  - **Facilitated diffusion:** via carrier/channel proteins, passive.
  - **Active transport:** against the gradient, needs ATP and carrier proteins.

### Cell division
- **Mitosis:** 2 identical daughter cells — growth and repair.
- **Meiosis:** 4 genetically different cells, halved chromosomes — gametes.
- **Stages of mitosis:** prophase, metaphase, anaphase, telophase.

### Enzymes
- Biological catalysts — proteins.
- **Lock and key / induced fit:** substrate fits the active site.
- Affected by temperature and pH — denaturation changes the active site.
- **Optimum temperature:** ~37 °C in humans.

## Common mistakes & exam traps

- Confusing diffusion (passive) with active transport (needs ATP).
- Confusing mitosis and meiosis.
- Forgetting that osmosis is a special case of diffusion.
- Not linking structure to function.
- Confusing prokaryotic and eukaryotic features.

## Exam technique

1. For organelles, always state structure AND function.
2. For transport, state the direction and whether energy is needed.
3. Compare mitosis and meiosis in a table.
4. For enzymes, mention the active site and denaturation.

## Memory hooks

- **Mitosis:** "Same cells, growth and repair."
- **Meiosis:** "Four different, gametes, halved."

## Quick practice

1. Which organelle carries out respiration? **[Mitochondria]**
2. What is osmosis? **[Diffusion of water through a partially permeable membrane]**
3. How many daughter cells does meiosis produce? **[4]**
4. What happens to an enzyme above its optimum temperature? **[It denatures]**`,
  },
  {
    subject: "Biology",
    slug: "biology",
    topic: "Genetics",
    title: "Genetics Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Genetics covers DNA, genes, inheritance and variation. You must understand the structure of DNA, protein synthesis, and how to work genetic crosses. The monohybrid cross is the most reliable calculation on the paper.

## Core concepts

### DNA structure
- **Double helix** of two strands.
- Made of nucleotides: phosphate + sugar (deoxyribose) + base.
- **Base pairing:** A–T, C–G (complementary).
- **Gene:** a section of DNA coding for a protein.
- **Chromosome:** DNA wound around proteins.

### Protein synthesis
1. **Transcription:** DNA → mRNA (in the nucleus).
2. **Translation:** mRNA → protein (at ribosomes).
- **Codon:** 3 bases coding for one amino acid.

### Key terms
- **Allele:** a version of a gene.
- **Genotype:** the genetic makeup (e.g. Tt).
- **Phenotype:** the observable trait (e.g. tall).
- **Dominant:** expressed if present (T). **Recessive:** only expressed when homozygous (tt).
- **Homozygous:** two identical alleles (TT or tt). **Heterozygous:** two different (Tt).

### Monohybrid cross
Cross two heterozygotes (Tt × Tt):
| | T | t |
|---|---|---|
| T | TT | Tt |
| t | Tt | tt |

- Phenotype ratio: **3 : 1** (dominant : recessive).
- Genotype ratio: **1 : 2 : 1** (TT : Tt : tt).

### Sex determination
- Humans: XX = female, XY = male.
- The father's sperm determines the sex.

### Variation
- **Genetic:** from mutations and meiosis (crossing over, independent assortment).
- **Environmental:** from conditions (diet, climate).
- **Mutation:** a change in DNA — can be harmful, beneficial or neutral.

## Common mistakes & exam traps

- Forgetting the base pairing rules (A–T, C–G).
- Confusing genotype and phenotype.
- Getting the 3:1 ratio wrong.
- Forgetting to state the phenotype ratio separately from the genotype ratio.
- Confusing transcription and translation.

## Exam technique

1. Draw the Punnett square and label the gametes.
2. State the genotype ratio AND the phenotype ratio.
3. For "explain" questions, use the terms allele, dominant, recessive.
4. Link DNA structure to protein synthesis.

## Memory hooks

- **Base pairing:** "A with T, C with G."
- **Cross Tt × Tt:** "3:1 phenotype, 1:2:1 genotype."

## Quick practice

1. What pairs with adenine in DNA? **[Thymine]**
2. Cross Tt × Tt. State the phenotype ratio. **[3:1]**
3. What is a genotype? **[The genetic makeup]**
4. Where does transcription happen? **[In the nucleus]**`,
  },
  {
    subject: "Biology",
    slug: "biology",
    topic: "Physiology",
    title: "Physiology Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Physiology covers how the body's systems work — circulation, respiration, digestion, excretion and coordination. You must understand the structures and processes of each system and how they are controlled. This is a large, high-yield section.

## Core concepts

### The circulatory system
- **Heart:** four chambers — right/left atria and ventricles.
- **Double circulation:** pulmonary (heart → lungs) and systemic (heart → body).
- **Blood vessels:** arteries (away, high pressure), veins (to heart, valves), capillaries (exchange).
- **Blood:** plasma, red cells (oxygen), white cells (immunity), platelets (clotting).

### Respiration
- **Aerobic:** \\(C_6H_{12}O_6 + 6O_2 \\to 6CO_2 + 6H_2O + \\text{energy}\\).
- **Anaerobic:** no oxygen — in muscles produces lactic acid; in yeast produces ethanol + CO₂.
- **Gas exchange:** in the alveoli — thin walls, large surface area, good blood supply.
- **Breathing:** diaphragm and intercostal muscles.

### Digestion
- **Enzymes:**
  - Amylase: starch → maltose (saliva, pancreas).
  - Protease: protein → amino acids (stomach, pancreas).
  - Lipase: fats → fatty acids + glycerol (pancreas).
- **Absorption:** in the small intestine (villi increase surface area).
- **Water absorption:** in the large intestine.

### Excretion
- **Kidneys:** filter blood, reabsorb useful substances, produce urine.
- **Nephron:** the functional unit.
- **Liver:** deamination of amino acids → urea.

### Coordination
- **Nervous system:** stimulus → receptor → coordinator → effector → response.
- **Reflex arc:** fast, automatic, spinal cord.
- **Endocrine system:** hormones — insulin (lowers blood glucose), adrenaline (fight or flight).
- **Homeostasis:** maintaining a constant internal environment.

## Common mistakes & exam traps

- Confusing arteries and veins.
- Forgetting the products of anaerobic respiration.
- Mixing up the digestive enzymes and their substrates.
- Not knowing the reflex arc order.
- Confusing nervous and hormonal control.

## Exam technique

1. Learn the equations for aerobic and anaerobic respiration.
2. For each system, know structure → function → control.
3. Use the correct order for the reflex arc.
4. Link homeostasis to specific examples (blood glucose, temperature).

## Memory hooks

- **Reflex arc:** "Stimulus, receptor, coordinator, effector, response."
- **Enzymes:** "Amylase starch, protease protein, lipase fat."

## Quick practice

1. Write the equation for aerobic respiration. **[C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + energy]**
2. What does amylase digest? **[Starch]**
3. Where does most absorption occur? **[Small intestine]**
4. What does insulin do? **[Lowers blood glucose]**`,
  },
  {
    subject: "Biology",
    slug: "biology",
    topic: "Ecology",
    title: "Ecology Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Ecology covers ecosystems, energy flow, nutrient cycles and human impact on the environment. You must understand food chains, pyramids, the carbon and nitrogen cycles, and issues like pollution and conservation. Cameroon examples (rainforest, savanna) score extra marks.

## Core concepts

### Ecosystems
- **Ecosystem:** all the organisms and their environment in an area.
- **Population:** all members of one species in an area.
- **Community:** all the populations in an area.
- **Habitat:** where an organism lives.
- **Niche:** an organism's role and position.

### Feeding relationships
- **Producer:** makes food by photosynthesis (plants).
- **Consumer:** eats other organisms (herbivore, carnivore, omnivore).
- **Decomposer:** breaks down dead matter (bacteria, fungi).
- **Food chain:** producer → primary consumer → secondary consumer → tertiary consumer.
- **Food web:** interconnected food chains.

### Pyramids
- **Pyramid of numbers:** number of organisms at each level.
- **Pyramid of biomass:** mass at each level.
- **Pyramid of energy:** energy at each level — always a pyramid (energy is lost).
- Only about **10%** of energy passes to the next level (rest lost as heat, waste).

### The carbon cycle
- Photosynthesis removes CO₂; respiration and combustion return it.
- Fossil fuels store carbon; burning releases it.

### The nitrogen cycle
- **Nitrogen fixation:** bacteria convert N₂ to nitrates.
- **Decomposition:** decomposers release ammonia.
- **Nitrification:** bacteria convert ammonia to nitrates.
- **Denitrification:** bacteria convert nitrates back to N₂.

### Human impact
- **Pollution:** air (CO₂, SO₂), water (sewage, fertilisers → eutrophication), land.
- **Deforestation:** habitat loss, soil erosion, climate change.
- **Conservation:** protecting habitats, sustainable use, reforestation.

## Common mistakes & exam traps

- Confusing producer, consumer and decomposer.
- Getting the direction of energy flow wrong.
- Forgetting that energy is lost at each level.
- Confusing the processes in the nitrogen cycle.
- Not knowing the causes of eutrophication.

## Exam technique

1. Draw the food chain/web with arrows pointing in the direction of energy flow.
2. For cycles, name the process AND the organism involved.
3. For human impact, give causes, effects and solutions.
4. Use Cameroon examples (rainforest, savanna).

## Memory hooks

- **Energy flow:** "Arrows point to the eater."
- **Nitrogen:** "Fix, decompose, nitrify, denitrify."

## Quick practice

1. What is a producer? **[An organism that makes food by photosynthesis]**
2. What percentage of energy passes to the next level? **[About 10%]**
3. Name two processes in the nitrogen cycle. **[Nitrogen fixation, nitrification]**
4. What causes eutrophication? **[Fertilisers/sewage in water]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // GEOLOGY — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Geology",
    slug: "geology",
    topic: "Minerals and rocks",
    title: "Minerals & Rocks Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Minerals and rocks are the foundation of geology. You must identify common minerals, classify rocks into the three types, and explain the rock cycle. Identification tests and rock formation processes are frequently tested.

## Core concepts

### What is a mineral?
- A naturally occurring, inorganic solid with a definite chemical composition and crystal structure.
- **Properties:** hardness (Mohs scale), cleavage, lustre, colour, streak, density.

### Common minerals
- **Quartz:** SiO₂, hardness 7, glassy.
- **Feldspar:** most common group in the crust.
- **Calcite:** CaCO₃, reacts with dilute acid (fizzes).
- **Mica:** sheets, cleaves into thin flakes.
- **Hematite:** iron ore, reddish streak.
- **Halite:** rock salt, cubic crystals.

### The three rock types
1. **Igneous:** formed from cooled magma/lava.
   - **Intrusive:** slow cooling, large crystals — granite, gabbro.
   - **Extrusive:** fast cooling, small crystals — basalt, rhyolite.
2. **Sedimentary:** formed from deposited and compacted sediments.
   - Clastic: sandstone, shale, conglomerate.
   - Chemical/organic: limestone, chalk, coal.
   - Features: bedding, fossils, ripple marks.
3. **Metamorphic:** changed by heat and pressure.
   - Limestone → marble. Shale → slate. Granite → gneiss.
   - Features: foliation, banding.

### The rock cycle
- Igneous → weathering → sediment → compaction → sedimentary → heat/pressure → metamorphic → melting → magma → igneous.
- Any rock can be weathered to sediment or melted.

## Common mistakes & exam traps

- Confusing intrusive and extrusive igneous rocks.
- Confusing the parent rock with its metamorphic product.
- Forgetting that fossils are only in sedimentary rocks.
- Not knowing the acid test for calcite.

## Exam technique

1. Classify rocks by origin first (cooling, deposition, change).
2. Link crystal size to cooling rate.
3. For metamorphic rocks, state the parent rock.
4. Use identification tests (acid, hardness) when describing minerals.

## Memory hooks

- **Igneous:** "Intrusive slow big, extrusive fast small."
- **Metamorphic pairs:** "Limestone marble, shale slate, granite gneiss."

## Quick practice

1. Which mineral fizzes with dilute acid? **[Calcite]**
2. Is granite intrusive or extrusive? **[Intrusive]**
3. What does shale become under metamorphism? **[Slate]**
4. In which rock type are fossils found? **[Sedimentary]**`,
  },
  {
    subject: "Geology",
    slug: "geology",
    topic: "Plate tectonics",
    title: "Plate Tectonics Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Plate tectonics explains earthquakes, volcanoes, mountain building and the distribution of continents. It is a core topic in geology. You must understand the types of plate boundaries and the features associated with each.

## Core concepts

### The theory
- The lithosphere is broken into plates that move on the asthenosphere.
- **Evidence:** continental fit, fossils across oceans, matching rock sequences, magnetic striping, earthquake distribution.

### Types of plate boundaries
1. **Divergent (constructive):** plates move apart.
   - Mid-ocean ridges, new crust, shallow earthquakes, volcanoes.
   - Example: the Mid-Atlantic Ridge.
2. **Convergent (destructive):** plates collide.
   - **Oceanic–continental:** subduction, deep trenches, volcanic mountain chains (Andes).
   - **Oceanic–oceanic:** island arcs (Japan).
   - **Continental–continental:** collision, mountain building (Himalayas).
3. **Transform (conservative):** plates slide past.
   - Earthquakes, no volcanoes (San Andreas Fault).

### Earthquakes
- Caused by sudden release of stress along faults.
- **Focus:** the point of rupture underground.
- **Epicentre:** the point on the surface above the focus.
- Measured by the **Richter scale** (magnitude) and Mercalli scale (intensity).

### Volcanoes
- Form at divergent and convergent boundaries and hot spots.
- **Composite (strato) volcanoes:** explosive, steep — from subduction.
- **Shield volcanoes:** gentle, runny lava — from hot spots/divergence.
- **Hot spots:** stationary mantle plumes (Hawaii, and possibly Mount Cameroon).

### Cameroon geology
- **Mount Cameroon:** an active volcano on the Cameroon Volcanic Line.
- The line runs from the Atlantic to the Adamawa Plateau.

## Common mistakes & exam traps

- Confusing divergent and convergent boundaries.
- Forgetting which features form at each boundary.
- Confusing focus and epicentre.
- Not knowing the difference between composite and shield volcanoes.

## Exam technique

1. Draw the boundary and label the features.
2. Match features to boundary types systematically.
3. For earthquakes, define focus and epicentre.
4. Use Cameroon examples (Mount Cameroon).

## Memory hooks

- **Divergent:** "Plates apart, ridges and new crust."
- **Convergent:** "Plates together, mountains, trenches, volcanoes."

## Quick practice

1. What forms at a divergent boundary? **[Mid-ocean ridges, new crust]**
2. What is the difference between focus and epicentre? **[Focus is underground; epicentre is on the surface]**
3. Which boundary produces the Himalayas? **[Continental–continental convergence]**
4. What type of volcano is Mount Cameroon? **[An active volcano on the Cameroon Volcanic Line]**`,
  },
  {
    subject: "Geology",
    slug: "geology",
    topic: "Fossils and geological time",
    title: "Fossils & Geological Time Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Fossils and geological time let geologists date rocks and reconstruct Earth's history. You must understand how fossils form, the principles of relative dating, and the geological time scale. Index fossils and the principles of superposition are favourite questions.

## Core concepts

### How fossils form
- **Permineralisation:** minerals fill the pores of buried remains.
- **Moulds and casts:** an impression, then a filled copy.
- **Carbonisation:** organic matter leaves a carbon film.
- **Preservation in amber, ice or tar:** complete preservation.
- **Trace fossils:** footprints, burrows, coprolites.

### Conditions for fossilisation
- Rapid burial, hard parts (shells, bones), low oxygen, stable conditions.

### Principles of relative dating
1. **Superposition:** in undisturbed layers, the oldest is at the bottom.
2. **Original horizontality:** sediments are laid down flat.
3. **Cross-cutting relationships:** a fault or intrusion is younger than the rocks it cuts.
4. **Faunal succession:** fossils succeed each other in a known order.

### Index fossils
- Fossils of organisms that lived for a short time and were widespread.
- Used to correlate rock layers across regions.
- Examples: ammonites, trilobites.

### The geological time scale
- **Eons → Eras → Periods → Epochs.**
- **Phanerozoic eon** (visible life) divided into:
  - **Palaeozoic:** trilobites, first fish, first land plants, first reptiles.
  - **Mesozoic:** dinosaurs, ammonites, first mammals and birds; ends with the K-Pg extinction.
  - **Cenozoic:** mammals dominate, humans appear.

### Absolute dating
- **Radiometric dating:** uses radioactive decay (e.g. carbon-14 for recent, uranium-lead for old).
- Half-life: the time for half the parent atoms to decay.

## Common mistakes & exam traps

- Confusing relative and absolute dating.
- Forgetting the principle of superposition.
- Not knowing which era the dinosaurs belong to.
- Confusing index fossils with ordinary fossils.

## Exam technique

1. State the principle before applying it.
2. For dating, distinguish relative (order) from absolute (numbers).
3. Learn the eras and their key life forms.
4. Explain why index fossils are useful.

## Memory hooks

- **Superposition:** "Oldest at the bottom."
- **Eras:** "Palaeozoic fish, Mesozoic dinosaurs, Cenozoic mammals."

## Quick practice

1. State the principle of superposition. **[In undisturbed layers, the oldest is at the bottom]**
2. What is an index fossil? **[A short-lived, widespread fossil used to date rocks]**
3. In which era did dinosaurs live? **[Mesozoic]**
4. What is radiometric dating? **[Dating using radioactive decay]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // COMPUTER SCIENCE — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Computer Science",
    slug: "computer-science",
    topic: "Data structures",
    title: "Data Structures Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Data structures organise data so programs can store and retrieve it efficiently. Arrays, stacks, queues, linked lists and trees are tested every year. You must know the operations, the advantages, and when to use each structure.

## Core concepts

### Arrays
- A fixed-size collection of elements of the same type, accessed by index.
- **Advantages:** fast access by index, simple.
- **Disadvantages:** fixed size, slow insertion/deletion in the middle.

### Stacks
- **LIFO** (Last In, First Out).
- Operations: **push** (add), **pop** (remove), **peek** (view top).
- Uses: undo operations, function calls, expression evaluation, browser back button.

### Queues
- **FIFO** (First In, First Out).
- Operations: **enqueue** (add to back), **dequeue** (remove from front).
- Uses: print queues, task scheduling, waiting lines.

### Linked lists
- Nodes connected by pointers; each node holds data and a reference to the next.
- **Advantages:** dynamic size, easy insertion/deletion.
- **Disadvantages:** slower access (must traverse), extra memory for pointers.

### Binary trees
- Each node has at most two children.
- **Binary search tree (BST):** left child < parent < right child.
- **Traversals:**
  - **Preorder:** root, left, right.
  - **Inorder:** left, root, right (gives sorted order in a BST).
  - **Postorder:** left, right, root.
- BST search is \\(O(\\log n)\\) if balanced.

### Hash tables
- Store data using a hash function → index.
- Fast lookup \\(O(1)\\) on average.
- **Collisions:** when two keys hash to the same index — resolved by chaining or open addressing.

## Common mistakes & exam traps

- Confusing stack (LIFO) and queue (FIFO).
- Getting the traversal orders wrong.
- Forgetting the BST ordering rule.
- Confusing array access (fast) with linked list access (slow).

## Exam technique

1. State the order (LIFO/FIFO) before describing operations.
2. Give a real-world use for each structure.
3. For traversals, trace the tree carefully.
4. Compare structures by access speed and insertion/deletion.

## Memory hooks

- **Stack vs queue:** "Stack LIFO, queue FIFO."
- **BST:** "Left small, right big."

## Quick practice

1. What does LIFO mean? **[Last In, First Out]**
2. Name two uses of a stack. **[Undo, function calls]**
3. What is the inorder traversal of a BST? **[Left, root, right — sorted order]**
4. Give one advantage of a linked list. **[Dynamic size]**`,
  },
  {
    subject: "Computer Science",
    slug: "computer-science",
    topic: "Algorithms",
    title: "Algorithms Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Algorithms are step-by-step methods for solving problems. Searching and sorting algorithms are tested every year, along with complexity analysis. You must know how each algorithm works, its complexity, and when to use it.

## Core concepts

### Linear search
- Check each element in turn.
- \\(O(n)\\) — works on unsorted data.

### Binary search
- Repeatedly halve a **sorted** list.
- \\(O(\\log n)\\) — much faster, but requires sorted data.

### Bubble sort
- Repeatedly swap adjacent out-of-order elements.
- \\(O(n^2)\\) — simple but slow.

### Insertion sort
- Build the sorted list one element at a time.
- \\(O(n^2)\\) — good for small or nearly sorted lists.

### Merge sort
- Divide the list in half, sort each half, merge.
- \\(O(n \\log n)\\) — fast and stable, but needs extra memory.

### Quick sort
- Pick a pivot, partition around it, recurse.
- \\(O(n \\log n)\\) average, \\(O(n^2)\\) worst case.

### Big O notation
- Describes how time/memory grows with input size \\(n\\).
- \\(O(1)\\): constant. \\(O(\\log n)\\): logarithmic. \\(O(n)\\): linear. \\(O(n \\log n)\\). \\(O(n^2)\\): quadratic.

### Dijkstra's algorithm
- Finds the shortest path in a weighted graph.
- Greedy: always expand the closest unvisited node.

## Common mistakes & exam traps

- Using binary search on unsorted data.
- Confusing the complexities of the sorts.
- Forgetting that merge sort needs extra memory.
- Not knowing the difference between best and worst case.

## Exam technique

1. State the complexity and the data requirement (e.g. sorted).
2. Trace the algorithm step by step for small inputs.
3. Compare algorithms by complexity and use case.
4. For Big O, focus on the dominant term.

## Memory hooks

- **Binary search:** "Halve a sorted list."
- **Complexities:** "Bubble O(n²), merge O(n log n), binary O(log n)."

## Quick practice

1. What is the complexity of binary search? **[O(log n)]**
2. Which sort has O(n log n) average? **[Merge sort or quick sort]**
3. Why can't you binary search an unsorted list? **[It relies on halving a sorted list]**
4. What does Dijkstra's algorithm find? **[The shortest path in a weighted graph]**`,
  },
  {
    subject: "Computer Science",
    slug: "computer-science",
    topic: "Object-oriented programming",
    title: "Object-Oriented Programming Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Object-oriented programming (OOP) is a major topic in Advanced Computer Science. You must understand classes, objects, encapsulation, inheritance and polymorphism, and be able to write and trace simple OOP code.

## Core concepts

### Classes and objects
- **Class:** a blueprint or template.
- **Object:** an instance of a class.
- **Attributes:** data stored in an object.
- **Methods:** functions that operate on an object.

### The four pillars of OOP
1. **Encapsulation:** bundling data and methods; hiding internal details (private attributes, public methods).
2. **Inheritance:** a class inherits attributes and methods from a parent class.
3. **Polymorphism:** the same method name behaves differently in different classes (overriding).
4. **Abstraction:** hiding complexity, showing only essential features.

### Constructors
- A special method that runs when an object is created.
- Initialises the attributes.

### Access modifiers
- **Public:** accessible anywhere.
- **Private:** accessible only within the class.
- **Protected:** accessible within the class and subclasses.

### Example (pseudocode)

    CLASS Animal
        PRIVATE name
        METHOD __init__(name)
            self.name = name
        METHOD speak()
            OUTPUT "Some sound"

    CLASS Dog EXTENDS Animal
        METHOD speak()
            OUTPUT "Woof"

### Relationships
- **Inheritance ("is-a"):** a Dog is an Animal.
- **Composition ("has-a"):** a Car has an Engine.

## Common mistakes & exam traps

- Confusing class and object.
- Forgetting that inheritance is "is-a" and composition is "has-a".
- Not knowing the difference between overriding and overloading.
- Confusing public and private access.

## Exam technique

1. Define class, object, attribute and method precisely.
2. Explain each pillar with an example.
3. For code questions, trace the constructor and method calls.
4. Use "is-a" and "has-a" to describe relationships.

## Memory hooks

- **Pillars:** "Encapsulation, Inheritance, Polymorphism, Abstraction."
- **Class vs object:** "Blueprint vs building."

## Quick practice

1. What is the difference between a class and an object? **[Class is a blueprint; object is an instance]**
2. What is inheritance? **[A class inherits from a parent class]**
3. What does encapsulation mean? **[Hiding internal details]**
4. Is "a Car has an Engine" inheritance or composition? **[Composition]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // FOOD SCIENCE AND NUTRITION — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Food Science and Nutrition",
    slug: "food-science",
    topic: "Nutrients and their functions",
    title: "Nutrients & Their Functions Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Nutrients are the foundation of Food Science and Nutrition. You must know the macronutrients and micronutrients, their functions, sources and deficiency diseases. This knowledge underpins every other topic — meal planning, digestion and food processing.

## Core concepts

### Macronutrients
| Nutrient | Function | Sources | Deficiency |
|---|---|---|---|
| Carbohydrates | Main energy source | Rice, cassava, yams, bread | Weakness, weight loss |
| Proteins | Growth and repair | Meat, fish, beans, eggs | Kwashiorkor, stunting |
| Fats | Energy store, insulation | Oil, butter, nuts | Poor growth, low energy |

### Micronutrients
| Nutrient | Function | Sources | Deficiency |
|---|---|---|---|
| Vitamin A | Vision, immunity | Carrots, palm oil, liver | Night blindness |
| Vitamin C | Wound healing, immunity | Citrus, tomatoes | Scurvy |
| Vitamin D | Calcium absorption, bones | Sunlight, fish oil | Rickets |
| Iron | Haemoglobin, oxygen transport | Meat, spinach, beans | Anaemia |
| Calcium | Bones and teeth | Milk, sardines | Rickets, weak bones |
| Iodine | Thyroid function | Iodised salt, seafood | Goitre |

### Water and fibre
- **Water:** transport, temperature control, digestion.
- **Fibre:** prevents constipation, aids digestion — whole grains, vegetables, fruits.

### Energy balance
- Energy in (food) vs energy out (activity).
- **BMR:** the energy needed at rest.
- Excess energy → stored as fat → obesity.

### Digestion of nutrients
- Carbohydrates → glucose (amylase).
- Proteins → amino acids (protease).
- Fats → fatty acids + glycerol (lipase, bile).

## Common mistakes & exam traps

- Confusing the functions of vitamins.
- Not knowing the deficiency diseases.
- Confusing macronutrients and micronutrients.
- Forgetting that fat-soluble vitamins (A, D, E, K) are stored in the body.

## Exam technique

1. For each nutrient: function, sources, deficiency — all three.
2. Use Cameroon food examples (cassava, palm oil, beans).
3. Link nutrients to their digestion products.
4. For "explain" questions, give the reason behind the function.

## Memory hooks

- **Vitamins:** "A for eyes, C for scurvy, D for bones."
- **Macros:** "Carbs energy, protein repair, fat store."

## Quick practice

1. What is the function of protein? **[Growth and repair]**
2. Which vitamin prevents night blindness? **[Vitamin A]**
3. What causes anaemia? **[Iron deficiency]**
4. Name two sources of calcium. **[Milk, sardines]**`,
  },
  {
    subject: "Food Science and Nutrition",
    slug: "food-science",
    topic: "Food processing and preservation",
    title: "Food Processing & Preservation Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Food processing and preservation keep food safe and extend its shelf life. You must understand the principles of preservation, the methods used, and the reasons why food spoils. This is a core topic with direct practical applications.

## Core concepts

### Why food spoils
- **Microorganisms:** bacteria, moulds, yeasts.
- **Enzymes:** natural reactions continue in food.
- **Conditions for growth:** warmth, moisture, oxygen, food, time.
- Spoilage causes food poisoning and waste.

### Principles of preservation
Remove one or more of the conditions microorganisms need:
1. **Heat** — kills microorganisms (pasteurisation, sterilisation).
2. **Cold** — slows growth (refrigeration, freezing).
3. **Drying** — removes moisture.
4. **Chemicals** — salt, sugar, vinegar, preservatives.
5. **Oxygen removal** — vacuum packing, canning.
6. **Irradiation** — kills microorganisms with radiation.

### Preservation methods
- **Pasteurisation:** heating to ~72 °C for 15 s (milk) — kills pathogens, keeps taste.
- **Sterilisation:** higher heat — kills everything (canned food).
- **Refrigeration:** 0–5 °C — slows bacteria.
- **Freezing:** −18 °C — stops growth.
- **Drying:** removes water — dried fish, fruits.
- **Salting:** draws out water — smoked/salted fish.
- **Sugaring:** jam, preserves.
- **Pickling:** vinegar/acidity.
- **Canning:** heat + sealed container.
- **Smoking:** drying + chemicals + flavour.

### Food additives
- **Preservatives:** extend shelf life.
- **Colourings and flavourings:** improve appearance and taste.
- **Emulsifiers:** keep mixtures stable.
- **Antioxidants:** prevent rancidity.

## Common mistakes & exam traps

- Confusing pasteurisation and sterilisation.
- Forgetting that freezing stops (not kills) bacteria.
- Not linking the method to the principle.
- Confusing preservation with processing.

## Exam technique

1. State the principle (kill, slow, remove, seal) for each method.
2. Give a food example for each method.
3. Explain why food spoils before describing preservation.
4. Distinguish pasteurisation (kills pathogens) from sterilisation (kills everything).

## Memory hooks

- **Spoilage conditions:** "Warmth, moisture, oxygen, food, time."
- **Methods:** "Heat, cold, dry, salt, sugar, seal."

## Quick practice

1. Name three conditions microorganisms need to grow. **[Warmth, moisture, oxygen]**
2. What is the difference between pasteurisation and sterilisation? **[Pasteurisation kills pathogens; sterilisation kills everything]**
3. How does salting preserve food? **[It draws out moisture]**
4. Give two food additives and their purposes. **[Preservatives, colourings]**`,
  },
  {
    subject: "Food Science and Nutrition",
    slug: "food-science",
    topic: "Meal planning and diet",
    title: "Meal Planning & Diet Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Meal planning applies nutrition knowledge to real life. You must understand balanced diets, the factors affecting food choice, and how to plan meals for different groups. Questions often ask you to plan a day's meals or evaluate a diet.

## Core concepts

### A balanced diet
- Contains all nutrients in the right proportions: carbohydrates, proteins, fats, vitamins, minerals, water, fibre.
- Provides enough energy for the individual.

### Factors affecting food choice
- **Age:** children need more protein; elderly need fewer calories.
- **Activity level:** manual workers need more energy.
- **Health:** diabetics limit sugar; anaemia needs iron.
- **Religion and culture:** dietary rules (halal, fasting).
- **Income:** cost of food.
- **Availability:** local produce and seasons.
- **Personal preference:** taste, habit.

### Meal planning principles
- Include foods from all food groups.
- Balance energy intake with activity.
- Vary the meals to avoid boredom.
- Consider the budget and available equipment.
- Plan for the family's needs (age, health, activity).

### Special dietary needs
- **Pregnancy:** extra protein, iron, folic acid, calcium.
- **Infants:** breast milk, then weaning foods.
- **Athletes:** extra carbohydrates and fluids.
- **Diabetics:** controlled sugar, regular meals.
- **Vegetarians:** plant proteins combined (beans + rice).

### Food groups (Cameroon context)
- **Staples:** cassava, yams, plantains, rice, maize.
- **Proteins:** fish, meat, beans, groundnuts.
- **Vegetables and fruits:** for vitamins and minerals.
- **Fats and oils:** palm oil, groundnut oil.
- **Water and drinks.**

## Common mistakes & exam traps

- Planning a meal without all food groups.
- Forgetting the factors affecting food choice.
- Confusing the needs of different groups.
- Not linking the diet to the person's situation.

## Exam technique

1. Define a balanced diet before planning meals.
2. For meal plans, cover all food groups and justify choices.
3. Match the diet to the person (age, health, activity).
4. Use Cameroon foods in your plans.

## Memory hooks

- **Food choice factors:** "Age, activity, health, religion, income, availability, taste."
- **Balanced diet:** "All nutrients, right proportions."

## Quick practice

1. What is a balanced diet? **[All nutrients in the right proportions]**
2. Give three factors affecting food choice. **[Age, income, health]**
3. What extra nutrients does a pregnant woman need? **[Protein, iron, folic acid, calcium]**
4. Why do athletes need extra carbohydrates? **[For energy]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // AGRICULTURAL SCIENCE — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Agricultural Science",
    slug: "agricultural-science",
    topic: "Soil science",
    title: "Soil Science Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Soil is the foundation of agriculture. You must understand soil formation, composition, properties, and how to manage soil fertility. Soil questions are guaranteed on the paper and connect to crop production and conservation.

## Core concepts

### Soil formation
- Weathering of parent rock + organic matter + time + climate + organisms + relief.
- **Soil profile:** horizons — O (organic), A (topsoil), B (subsoil), C (parent material).

### Soil composition
- **Mineral particles:** sand, silt, clay.
- **Organic matter (humus):** decomposed plant and animal material.
- **Water and air:** in the pore spaces.
- **Living organisms:** bacteria, fungi, earthworms.

### Soil texture
- **Sand:** large particles, drains fast, low fertility, easy to work.
- **Clay:** small particles, holds water, fertile but heavy and poorly drained.
- **Loam:** balanced mixture — best for most crops.

### Soil properties
- **Water holding capacity:** clay highest, sand lowest.
- **Drainage:** sand best, clay worst.
- **Aeration:** sand best.
- **pH:** most crops prefer slightly acidic to neutral (6–7).

### Soil fertility and management
- **Fertilisers:** organic (manure, compost) and inorganic (NPK).
- **Crop rotation:** alternating crops to maintain nutrients and break pest cycles.
- **Green manuring:** growing and ploughing in legumes.
- **Mulching:** covering soil to retain moisture and reduce erosion.
- **Liming:** adding lime to reduce acidity.

### Soil erosion and conservation
- **Causes:** water, wind, overgrazing, deforestation, poor tillage.
- **Control:** terracing, contour ploughing, cover crops, windbreaks, reforestation.

## Common mistakes & exam traps

- Confusing sand and clay properties.
- Forgetting the soil profile horizons.
- Not linking erosion control to its cause.
- Confusing organic and inorganic fertilisers.

## Exam technique

1. Compare soil types by particle size, drainage and fertility.
2. For erosion, give causes AND control measures.
3. Link soil management to fertility.
4. Use Cameroon examples (volcanic soils of the West, lateritic soils).

## Memory hooks

- **Texture:** "Sand drains, clay holds, loam balances."
- **Horizons:** "O, A, B, C — top to bottom."

## Quick practice

1. Which soil type holds the most water? **[Clay]**
2. What is loam? **[A balanced mixture of sand, silt and clay]**
3. Give two methods of erosion control. **[Terracing, contour ploughing]**
4. What is crop rotation? **[Alternating crops to maintain fertility]**`,
  },
  {
    subject: "Agricultural Science",
    slug: "agricultural-science",
    topic: "Crop production",
    title: "Crop Production Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Crop production covers the cultivation of food and cash crops. You must understand the factors affecting crop growth, the stages of production, and the major crops of Cameroon. Questions range from "describe the cultivation of X" to "explain the factors affecting yield".

## Core concepts

### Factors affecting crop growth
- **Climate:** rainfall, temperature, sunlight.
- **Soil:** fertility, texture, pH, drainage.
- **Water:** irrigation and drainage.
- **Pests and diseases:** control measures.
- **Management:** planting, weeding, fertilising, harvesting.

### Stages of crop production
1. **Land preparation:** clearing, ploughing, harrowing.
2. **Planting:** correct spacing, depth, time, seed quality.
3. **Crop maintenance:** weeding, fertilising, watering, pest control.
4. **Harvesting:** at the right maturity.
5. **Post-harvest:** drying, storage, marketing.

### Major food crops of Cameroon
- **Roots and tubers:** cassava, yams, cocoyams, sweet potatoes.
- **Cereals:** maize, rice, sorghum, millet.
- **Legumes:** beans, groundnuts, soya.
- **Plantains and bananas.**

### Major cash crops
- **Cocoa:** the main export crop — grown in the Centre, South, South-West.
- **Coffee:** robusta and arabica — West and North-West.
- **Cotton:** North and Far North.
- **Palm oil:** coastal regions.
- **Rubber, bananas, tea.**

### Pests and diseases
- **Pests:** insects (stem borers, aphids), rodents, birds.
- **Diseases:** fungal (blight, rust), viral, bacterial.
- **Control:** cultural (rotation, resistant varieties), chemical (pesticides), biological (natural enemies).

### Post-harvest losses
- Caused by pests, moulds, poor storage.
- Reduced by proper drying, good storage, and processing.

## Common mistakes & exam traps

- Confusing food and cash crops.
- Forgetting the stages of production in order.
- Not knowing the regions where crops are grown.
- Giving pest control without mentioning cultural methods.

## Exam technique

1. For "describe the cultivation", follow the stages in order.
2. For cash crops, state the region and the use.
3. Give cultural AND chemical control methods.
4. Use Cameroon examples throughout.

## Memory hooks

- **Stages:** "Prepare, plant, maintain, harvest, store."
- **Cash crops:** "Cocoa, coffee, cotton, palm oil."

## Quick practice

1. Name two food crops of Cameroon. **[Cassava, maize]**
2. Where is cocoa mainly grown? **[Centre, South, South-West]**
3. Give two stages of crop production. **[Planting, harvesting]**
4. Name two methods of pest control. **[Crop rotation, pesticides]**`,
  },
  {
    subject: "Agricultural Science",
    slug: "agricultural-science",
    topic: "Animal production",
    title: "Animal Production Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Animal production covers the rearing of livestock for food and income. You must understand the types of farm animals, their management, nutrition and health. Questions often ask about the management of a specific animal or the causes and control of diseases.

## Core concepts

### Types of farm animals
- **Ruminants:** cattle, sheep, goats — multi-chambered stomachs, digest cellulose.
- **Non-ruminants:** pigs, poultry — single stomachs.
- **Monogastric:** pigs, poultry, rabbits.

### Animal nutrition
- **Ruminants:** graze on grass, hay, silage.
- **Poultry:** grains, formulated feed.
- **Feed components:** carbohydrates (energy), proteins (growth), vitamins, minerals, water.
- **Concentrates:** high-energy feeds. **Roughage:** high-fibre feeds.

### Animal management
- **Housing:** clean, ventilated, protected from predators and weather.
- **Feeding:** balanced ration, clean water, regular schedule.
- **Breeding:** selecting good stock, controlled mating.
- **Health care:** vaccination, deworming, hygiene.
- **Record keeping:** production, health, finances.

### Common diseases
- **Newcastle disease:** poultry — viral, highly contagious.
- **Rinderpest:** cattle — viral (now eradicated).
- **Foot and mouth disease:** cattle — viral, blisters.
- **Trypanosomiasis:** cattle — transmitted by tsetse fly.
- **Coccidiosis:** poultry — parasitic.
- **Control:** vaccination, quarantine, hygiene, good nutrition, culling.

### Products of farm animals
- Meat, milk, eggs, hides and skins, manure, wool.

### Importance of livestock
- Food (protein), income, manure for crops, draught power, employment.

## Common mistakes & exam traps

- Confusing ruminants and non-ruminants.
- Not knowing the diseases of specific animals.
- Forgetting the control measures.
- Confusing concentrates and roughage.

## Exam technique

1. Classify animals as ruminant/non-ruminant first.
2. For diseases, state the animal, the cause and the control.
3. For management, cover housing, feeding, breeding and health.
4. Link livestock to crop production (manure, draught).

## Memory hooks

- **Ruminants:** "Cattle, sheep, goats — chew the cud."
- **Disease control:** "Vaccinate, quarantine, hygiene, cull."

## Quick practice

1. What is a ruminant? **[An animal with a multi-chambered stomach]**
2. Which disease affects poultry? **[Newcastle disease]**
3. Give two products of farm animals. **[Meat, milk]**
4. What is roughage? **[High-fibre feed]**`,
  },
];
