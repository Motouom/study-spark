-- Physics (ordinary): one course per GCE curriculum topic.
-- Replaces the single "Complete O-Level Physics Course" with concise,
-- example-rich topic courses.

begin;

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('phys-measurement', 'Physics', 'Measurement', 'SI units, measuring instruments, accuracy, and density.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('08204279-7f10-4e79-bb5b-c2ea9a59090f'::uuid, 'phys-measurement', 'Physics', 'Measurement', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Measurement

Measurement is where every physics calculation begins. The GCE paper tests your knowledge of SI units, the correct instrument for a job, and calculations such as density. Always write the unit with every answer — a number without a unit earns no mark.

### What you must know

- **SI base units:** Length in metres (m), mass in kilograms (kg), time in seconds (s), electric current in amperes (A), temperature in kelvin (K).
- **Measuring instruments:**
  - Length: metre rule (to 1 mm), vernier calliper (to 0.1 mm), micrometer screw gauge (to 0.01 mm).
  - Volume: measuring cylinder (in cm³ or ml).
  - Mass: beam balance or electronic balance.
  - Time: stopwatch or stopclock.
  - Temperature: thermometer.
- **Accuracy and precision:** Accuracy is how close a measurement is to the true value; precision is how consistent repeated measurements are. Read instruments at eye level to avoid parallax error.
- **Density:** Density = mass ÷ volume, written ρ = m/V. Units: kg/m³ or g/cm³. 1 g/cm³ = 1,000 kg/m³.
- **Volume of irregular solids:** Use a displacement can or measuring cylinder — the rise in water level equals the volume.

### Worked example

**A block has a mass of 240 g and a volume of 80 cm³. Find its density in g/cm³ and in kg/m³.**

Step 1: ρ = m/V = 240 ÷ 80 = **3 g/cm³**.

Step 2: Convert to kg/m³: multiply by 1,000 → 3 × 1,000 = **3,000 kg/m³**.

### Worked example 2

**Which instrument would you use to measure the diameter of a thin wire, and why?**

Step 1: A thin wire is a small length needing high precision.

Step 2: Use a **micrometer screw gauge**, because it measures to 0.01 mm, far more precise than a metre rule.

### Common mistakes to avoid

- Forgetting units or writing the wrong unit (kg instead of g).
- Using a metre rule where a vernier calliper or micrometer is needed.
- Confusing mass (kg) with weight (N) — weight is a force.

### Practice questions

1. Convert 2.5 g/cm³ to kg/m³.
2. A stone is placed in a measuring cylinder containing 40 cm³ of water. The level rises to 55 cm³. Find the volume of the stone.
3. A liquid of mass 150 g occupies 120 cm³. Find its density.
4. Name the instrument used to measure time accurately in a race.

### Answers

1. 2.5 × 1,000 = 2,500 kg/m³.
2. Volume = 55 − 40 = 15 cm³.
3. ρ = 150 ÷ 120 = 1.25 g/cm³.
4. A stopwatch (or stopclock).
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('phys-mechanics', 'Physics', 'Mechanics', 'Motion, forces, Newton''s laws, work, energy, power, pressure, moments, and machines.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('debe8dd1-8b5a-4d4e-9115-47dcac857ea7'::uuid, 'phys-mechanics', 'Physics', 'Mechanics', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Mechanics

Mechanics is the study of motion and the forces that cause it. It is the largest topic in the GCE physics paper. Learn the definitions word-for-word, quote the formula, substitute with units, and check whether your answer makes sense.

### What you must know

- **Motion:**
  - Speed = distance ÷ time. Velocity is speed in a given direction.
  - Acceleration = change in velocity ÷ time, a = (v − u)/t.
  - Distance-time graph: gradient = speed. Velocity-time graph: gradient = acceleration, area under graph = distance.
- **Newton''s laws:**
  - First law: a body stays at rest or moves at constant velocity unless acted on by a resultant force.
  - Second law: F = ma (force = mass × acceleration).
  - Third law: every action has an equal and opposite reaction.
- **Weight:** W = mg, where g ≈ 10 N/kg (or 9.8 N/kg). Weight is a force measured in newtons.
- **Work, energy, power:**
  - Work = force × distance, W = Fd (joules).
  - Kinetic energy = ½mv². Potential energy = mgh.
  - Power = work ÷ time (watts).
- **Pressure:** Pressure = force ÷ area, P = F/A (pascals). Pressure in liquids increases with depth.
- **Moments:** Moment of a force = force × perpendicular distance from the pivot (N m). For equilibrium, clockwise moments = anticlockwise moments.
- **Simple machines:** Mechanical advantage = load ÷ effort. Velocity ratio = distance moved by effort ÷ distance moved by load. Efficiency = (MA ÷ VR) × 100%.

### Worked example

**A car of mass 1,000 kg accelerates from rest to 20 m/s in 10 s. Find (a) the acceleration, (b) the resultant force.**

Step 1 (a): a = (v − u)/t = (20 − 0)/10 = **2 m/s²**.

Step 2 (b): F = ma = 1,000 × 2 = **2,000 N**.

### Worked example 2

**A force of 50 N moves a box 4 m. Calculate the work done.**

Step 1: W = Fd = 50 × 4.

Step 2: W = **200 J**.

### Common mistakes to avoid

- Confusing mass (kg) with weight (N). Weight = mass × g.
- Forgetting to convert units (e.g., minutes to seconds) before calculating.
- Using the wrong graph: gradient of a velocity-time graph is acceleration, not speed.

### Practice questions

1. A cyclist travels 300 m in 20 s. Find the speed.
2. A ball of mass 0.5 kg is dropped from a height of 10 m. Find its potential energy. (g = 10 N/kg)
3. A force of 200 N acts on a 50 kg trolley. Find the acceleration.
4. A pressure of 500 Pa acts on an area of 2 m². Find the force.

### Answers

1. Speed = 300 ÷ 20 = 15 m/s.
2. PE = mgh = 0.5 × 10 × 10 = 50 J.
3. a = F/m = 200 ÷ 50 = 4 m/s².
4. F = P × A = 500 × 2 = 1,000 N.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('phys-thermal-physics', 'Physics', 'Thermal Physics', 'Temperature, expansion, heat transfer, specific heat capacity, and latent heat.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('06db3689-ea73-4947-89b4-f4d7f11e92a3'::uuid, 'phys-thermal-physics', 'Physics', 'Thermal Physics', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Thermal Physics

Thermal physics deals with heat, temperature, and how energy moves from hot to cold. The GCE paper tests heat transfer, expansion, and calculations using specific heat capacity and latent heat. Remember that heat is energy in joules; temperature is a measure of hotness in degrees.

### What you must know

- **Temperature and heat:** Temperature measures how hot a body is (thermometer). Heat is the energy that flows from a hotter to a colder body.
- **Expansion:** Solids, liquids, and gases expand when heated. Solids expand least, gases most. Applications: gaps in railway lines, bimetallic strip in a thermostat, mercury rising in a thermometer.
- **Heat transfer:**
  - Conduction: through solids, by vibrating particles passing energy along. Metals are good conductors.
  - Convection: in liquids and gases, by the movement of hot (less dense) fluid rising and cold fluid sinking.
  - Radiation: by electromagnetic waves, needs no medium. Dark, dull surfaces radiate and absorb best; shiny surfaces reflect.
- **Specific heat capacity:** The energy needed to raise the temperature of 1 kg of a substance by 1 °C. Energy = mass × specific heat capacity × temperature change, Q = mcΔT.
- **Latent heat:** Energy absorbed or released when a substance changes state at constant temperature. Melting and boiling absorb heat; condensing and freezing release it. Latent heat of fusion (solid↔liquid) and vaporisation (liquid↔gas).

### Worked example

**How much heat is needed to raise the temperature of 2 kg of water from 20 °C to 70 °C? (Specific heat capacity of water = 4,200 J/kg°C.)**

Step 1: Identify m = 2 kg, c = 4,200 J/kg°C, ΔT = 70 − 20 = 50 °C.

Step 2: Q = mcΔT = 2 × 4,200 × 50.

Step 3: Q = **420,000 J** (or 420 kJ).

### Worked example 2

**Why does a metal spoon in hot soup feel hotter than a wooden spoon at the same temperature?**

Step 1: Both spoons are at the same temperature.

Step 2: Metal is a good conductor of heat, so it conducts heat from the soup to your hand quickly.

Step 3: Wood is a poor conductor (insulator), so it transfers heat slowly. The metal spoon feels hotter because it conducts heat faster.

### Common mistakes to avoid

- Confusing temperature with heat energy.
- Writing the wrong units: heat in joules, temperature in °C.
- Forgetting that temperature stays constant during a change of state.

### Practice questions

1. Name the three methods of heat transfer.
2. How much heat is needed to raise 0.5 kg of water from 30 °C to 80 °C? (c = 4,200 J/kg°C)
3. Why are cooking pots made of metal but their handles made of wood or plastic?
4. Which surface absorbs radiation best: black dull or white shiny?

### Answers

1. Conduction, convection, and radiation.
2. Q = 0.5 × 4,200 × 50 = 105,000 J.
3. Metal conducts heat well for cooking; wood/plastic are poor conductors so they stay cool to hold.
4. Black dull surfaces absorb radiation best.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('phys-waves', 'Physics', 'Waves', 'Wave properties, reflection, refraction, light, and sound.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('fa1d52bd-3de3-45cd-9370-9591f2df304b'::uuid, 'phys-waves', 'Physics', 'Waves', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Waves

Waves transfer energy without transferring matter. The GCE paper tests wave properties, the wave equation, and the behaviour of light and sound. Draw clear diagrams for reflection and refraction — they carry method marks.

### What you must know

- **Types of waves:**
  - Transverse: particles vibrate at right angles to the direction of travel (light, water waves, ripples).
  - Longitudinal: particles vibrate parallel to the direction of travel (sound). Has compressions and rarefactions.
- **Wave properties:**
  - Wavelength (λ): distance between two successive crests (metres).
  - Frequency (f): number of waves per second (hertz, Hz).
  - Amplitude: maximum displacement from the rest position.
  - Wave speed: v = f × λ.
- **Reflection:** The angle of incidence equals the angle of reflection. Used in mirrors and echoes.
- **Refraction:** Bending of a wave when it changes speed entering a new medium. Light bends towards the normal when entering a denser medium.
- **Light:** Travels in straight lines. Dispersion splits white light into colours (rainbow). Lenses: convex (converging) and concave (diverging).
- **Sound:** Needs a medium; cannot travel in a vacuum. Speed in air ≈ 340 m/s. Echo = reflection of sound. Pitch depends on frequency; loudness depends on amplitude.

### Worked example

**A wave has a frequency of 50 Hz and a wavelength of 4 m. Find its speed.**

Step 1: Use v = f × λ.

Step 2: v = 50 × 4.

Step 3: v = **200 m/s**.

### Worked example 2

**A man stands 170 m from a cliff and claps. He hears the echo after 1 s. Find the speed of sound.**

Step 1: The sound travels to the cliff and back: total distance = 170 × 2 = 340 m.

Step 2: Speed = distance ÷ time = 340 ÷ 1.

Step 3: Speed = **340 m/s**.

### Common mistakes to avoid

- Confusing transverse and longitudinal waves (sound is longitudinal, light is transverse).
- Using the wrong formula: v = fλ, not v = f/λ.
- Forgetting to double the distance in echo calculations.

### Practice questions

1. A wave travels at 300 m/s with a frequency of 100 Hz. Find its wavelength.
2. Name one transverse wave and one longitudinal wave.
3. Why can sound not travel through a vacuum?
4. What happens to light when it passes from air into glass?

### Answers

1. λ = v/f = 300 ÷ 100 = 3 m.
2. Transverse: light (or water waves). Longitudinal: sound.
3. Sound needs a medium (particles) to travel; a vacuum has no particles.
4. It slows down and bends towards the normal (refraction).
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('phys-electricity', 'Physics', 'Electricity', 'Current, voltage, resistance, Ohm''s law, circuits, and electrical power.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('c0285c29-be2d-402d-aec3-e48f59127843'::uuid, 'phys-electricity', 'Physics', 'Electricity', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Electricity

Electricity questions reward clear circuit diagrams and correct use of Ohm''s law. The GCE paper tests current, voltage, resistance, series and parallel circuits, and electrical power. Always state the units: current in amperes, voltage in volts, resistance in ohms.

### What you must know

- **Key quantities:**
  - Current (I): the rate of flow of charge, measured in amperes (A) with an ammeter connected in series.
  - Voltage (V): the energy per unit charge, measured in volts (V) with a voltmeter connected in parallel.
  - Resistance (R): opposition to current, measured in ohms (Ω).
- **Ohm''s law:** V = I × R. Rearrange: I = V/R and R = V/I.
- **Series circuits:** Current is the same everywhere; voltages add up; total resistance = R₁ + R₂ + R₃.
- **Parallel circuits:** Voltage is the same across each branch; currents add up; total resistance is less than the smallest branch resistance.
- **Electrical power:** P = V × I (watts). Also P = I²R and P = V²/R.
- **Energy:** Energy = power × time, E = Pt (joules). Electrical energy is often measured in kilowatt-hours (kWh).

### Worked example

**A resistor of 12 Ω carries a current of 0.5 A. Find the voltage across it.**

Step 1: Use V = I × R.

Step 2: V = 0.5 × 12.

Step 3: V = **6 V**.

### Worked example 2

**Two resistors of 4 Ω and 6 Ω are connected in series. Find the total resistance and the current when connected to a 20 V supply.**

Step 1: Series total: R = 4 + 6 = 10 Ω.

Step 2: Current: I = V/R = 20 ÷ 10.

Step 3: I = **2 A**.

### Worked example 3

**An electric bulb is rated 60 W and works on a 240 V supply. Find the current it draws.**

Step 1: Use P = V × I, so I = P/V.

Step 2: I = 60 ÷ 240.

Step 3: I = **0.25 A**.

### Common mistakes to avoid

- Connecting an ammeter in parallel or a voltmeter in series.
- Adding resistances in parallel like series resistances.
- Using the wrong formula for power (P = VI, not P = V/I).

### Practice questions

1. A current of 2 A flows through a 5 Ω resistor. Find the voltage.
2. A 6 V battery drives a current of 0.5 A through a bulb. Find the resistance of the bulb.
3. Two resistors of 3 Ω and 7 Ω are in series. Find the total resistance.
4. A heater draws 5 A from a 240 V supply. Find its power.

### Answers

1. V = 2 × 5 = 10 V.
2. R = 6 ÷ 0.5 = 12 Ω.
3. R = 3 + 7 = 10 Ω.
4. P = 240 × 5 = 1,200 W.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('phys-magnetism', 'Physics', 'Magnetism and Electromagnetism', 'Magnets, magnetic fields, electromagnets, motors, and electromagnetic induction.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('e90c3dca-2e12-4d24-a176-ff6102991795'::uuid, 'phys-magnetism', 'Physics', 'Magnetism and Electromagnetism', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Magnetism and Electromagnetism

Magnetism links electricity and motion. The GCE paper tests the properties of magnets, magnetic fields, electromagnets, and how electricity can produce motion and vice versa. Draw the field lines correctly — they always run from north to south outside the magnet.

### What you must know

- **Magnets:** A magnet has a north pole and a south pole. Like poles repel; unlike poles attract. A freely suspended magnet points north-south.
- **Magnetic field:** The region around a magnet where its force acts. Field lines run from north to south outside the magnet. The closer the lines, the stronger the field.
- **Magnetic materials:** Iron, steel, cobalt, and nickel are attracted to magnets. Iron is easily magnetised and demagnetised (soft); steel keeps magnetism (hard).
- **Electromagnets:** A coil of wire carrying current produces a magnetic field. Winding the coil around an iron core makes a strong electromagnet. Uses: electric bells, cranes in scrapyards, relays.
- **Electric motor:** A current-carrying conductor in a magnetic field experiences a force (the motor effect). The force direction is given by Fleming''s left-hand rule. The motor converts electrical energy to kinetic energy.
- **Electromagnetic induction:** Moving a conductor in a magnetic field, or changing the field through a coil, induces a voltage. This is how generators work — converting kinetic energy to electrical energy. Fleming''s right-hand rule gives the direction of induced current.

### Worked example

**A student wants to make a strong electromagnet to lift scrap metal. State two ways to increase its strength.**

Step 1: Increase the current flowing through the coil.

Step 2: Increase the number of turns of wire on the coil (and use a soft iron core).

Answer: **Increase the current and increase the number of turns of the coil.**

### Worked example 2

**State the energy change in (a) an electric motor, (b) a generator.**

Step 1 (a): Motor converts electrical energy to kinetic energy.

Step 2 (b): Generator converts kinetic energy to electrical energy.

### Common mistakes to avoid

- Drawing magnetic field lines from south to north outside the magnet (they run north to south).
- Confusing the motor effect (electricity → motion) with electromagnetic induction (motion → electricity).
- Saying "like poles attract" — like poles repel.

### Practice questions

1. State the rule for the force between two north poles placed close together.
2. Name two uses of electromagnets.
3. What happens when a magnet is moved into and out of a coil connected to a galvanometer?
4. Which material is better for the core of an electromagnet: iron or steel?

### Answers

1. They repel each other.
2. Electric bells, scrapyard cranes, relays (any two).
3. A voltage (current) is induced — the galvanometer deflects. This is electromagnetic induction.
4. Iron, because it is easily magnetised and demagnetised.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('phys-atomic-nuclear', 'Physics', 'Atomic and Nuclear Physics', 'Atomic structure, radioactivity, half-life, and uses of radiation.', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('2dc6a90b-b176-4d14-9153-32a2b2bcf036'::uuid, 'phys-atomic-nuclear', 'Physics', 'Atomic and Nuclear Physics', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['science', 'technical']::text[], 'published', '# Atomic and Nuclear Physics

Atomic physics introduces the structure of the atom and radioactivity. The GCE paper tests the particles in an atom, the three types of radiation, and half-life calculations. Learn the properties of alpha, beta, and gamma radiation in a table — they are asked every year.

### What you must know

- **Atomic structure:** An atom has a nucleus (protons and neutrons) surrounded by electrons. Proton: positive, mass 1. Neutron: neutral, mass 1. Electron: negative, almost no mass. Atomic number = number of protons. Mass number = protons + neutrons.
- **Isotopes:** Atoms of the same element with the same number of protons but different numbers of neutrons.
- **Radioactivity:** The spontaneous emission of radiation from an unstable nucleus.
  - Alpha (α): 2 protons + 2 neutrons (a helium nucleus). Stopped by paper. Highly ionising.
  - Beta (β): a fast electron from the nucleus. Stopped by a few mm of aluminium.
  - Gamma (γ): electromagnetic radiation. Stopped by thick lead or concrete. Weakly ionising, most penetrating.
- **Half-life:** The time taken for half the radioactive nuclei to decay. Used to date materials and in medicine.
- **Uses:** Alpha — smoke detectors. Beta — thickness control in paper mills. Gamma — sterilising equipment, treating cancer (radiotherapy), medical imaging.
- **Dangers:** Radiation can damage cells and cause cancer. Protection: distance, shielding, and limiting exposure time.

### Worked example

**A radioactive sample has a half-life of 4 days. A sample starts with 80 g. How much remains after 12 days?**

Step 1: 12 days = 3 half-lives (12 ÷ 4 = 3).

Step 2: After each half-life the mass halves: 80 → 40 → 20 → 10.

Step 3: Remaining mass = **10 g**.

### Worked example 2

**Which type of radiation is stopped by a sheet of paper?**

Step 1: Recall the penetration of each type.

Step 2: Alpha is the least penetrating.

Step 3: Answer: **Alpha radiation**.

### Common mistakes to avoid

- Confusing atomic number with mass number.
- Saying beta particles come from the electron shells (they come from the nucleus).
- Mixing up which radiation is most penetrating (gamma) and most ionising (alpha).

### Practice questions

1. An atom has 11 protons and 12 neutrons. State its atomic number and mass number.
2. Which radiation is deflected towards the negative plate in an electric field?
3. A sample has a half-life of 2 hours. How much of a 64 g sample remains after 6 hours?
4. State one use of gamma radiation in medicine.

### Answers

1. Atomic number = 11, mass number = 23.
2. Alpha (it is positively charged).
3. 6 hours = 3 half-lives: 64 → 32 → 16 → 8 g.
4. Treating cancer (radiotherapy) or sterilising medical equipment.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

update public.course_documents
set status = 'archived', updated_at = now()
where topic_id = 'course-phys-ordinary' and status = 'published';

commit;

notify pgrst, 'reload schema';
